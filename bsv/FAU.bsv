// Buffer.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import GetPut     ::*;
import FIFO       ::*;
import FIFOF      ::*;
import Vector     ::*;
import BRAM       ::*;

import Accum      ::*;
import DPPDefs    ::*;
import MLDefs     ::*;

interface FAUIfc;
  interface Get#(Bit#(0)) free;  // enq'd when the BRAM is free to accept a frame, used to signal to the dispatch unit that this FAU is free
  interface Put#(HexBDG) ingress;
  interface Get#(HexBDG) egress;
  interface Get#(UInt#(16)) frameAck;
endinterface

function BRAMRequest#(UInt#(10), HexBDG) makeRequest(Bool write, UInt#(10) addr, HexBDG data);
  return BRAMRequest{
                    write: write,
                    responseOnWrite: False,
                    address: addr,
                    datain: data
                    };
endfunction

function UInt#(10) generateAddr(Bool isEOP, UInt#(10) oldAddr);
  Bit#(10) newAddr = pack(oldAddr);
  newAddr[9] = ~newAddr[9];
  newAddr[8:0] = 0;
  return isEOP ? unpack(newAddr) : oldAddr + 1;
endfunction


(* synthesize *)
module mkFAU(FAUIfc);

FIFO#(HexBDG)                datagramIngressF   <- mkFIFO;
FIFO#(HexBDG)                datagramEgressF    <- mkFIFO;
FIFO#(UInt#(16))             fidEgressF         <- mkFIFO;
FIFO#(HexBDG)                ackF               <- mkFIFO;
FIFO#(UInt#(10))             lengthF            <- mkFIFO1;
Reg#(UInt#(10))              countWrd           <- mkReg(1); 
Reg#(UInt#(16))              fid                <- mkReg(0);
Reg#(Bit#(16))               did                <- mkReg(0);
Reg#(Bit#(16))               sid                <- mkReg(0);
Reg#(Bool)                   grabFID            <- mkReg(True);
Reg#(Bool)                   isValFID           <- mkReg(False);
Reg#(UInt#(10))              countRdReq         <- mkReg(0);
Reg#(UInt#(10))              countRd            <- mkReg(0);
Reg#(UInt#(10))              readAddr           <- mkReg(0);
Reg#(UInt#(10))              writeAddr          <- mkReg(0);
Accumulator2Ifc#(Int#(10))   readCredit         <- mkAccumulator2;
FIFOF#(Bit#(0))              freeF              <- mkFIFOF1;   // holds token indicating that FDU is free to accept new frame
Reg#(Bool)                   setFreeInit        <- mkReg(True);

BRAM_Configure cfg = defaultValue;
cfg.memorySize = 1024;
cfg.latency    = 1;
BRAM2Port#(UInt#(10), HexBDG) bram <- mkBRAM2Server(cfg);

rule signalFreeInit(setFreeInit);      // used on reset to signal that FDU is free 
  setFreeInit <= False;
  freeF.enq(?);
endrule

rule getFID(grabFID);
  HexByte y = datagramIngressF.first.data;
  did <= unpack({pack(y[0]), pack(y[1])});
  sid <= unpack({pack(y[2]), pack(y[3])});
  fid <= unpack({pack(y[4]), pack(y[5])});
  isValFID <= (fid != unpack({pack(y[4]), pack(y[5])}));                    // check if fid is the same as the new fid coming in
  grabFID <= False;
endrule

rule writeBRAM(!grabFID);                                                    // For every incident Mesg word...
  let y = datagramIngressF.first; datagramIngressF.deq;                      // dequeue the incident Mesg
  Bool isEOP = y.isEOP;                                                      // detect if is an EOP
  if(isValFID) begin                                                         // only write bram if first time to see fid
    bram.portA.request.put(makeRequest(True, writeAddr, y));                   // write the data to BRAM
    readCredit.acc1(1);                                                        // Add one to read credits
    countWrd <= isEOP ? 1 : countWrd + 1;                                      // update our count of message length
    writeAddr <= generateAddr(isEOP, writeAddr);                               // update the Write Address
    if(isEOP) begin                                                           // at EOP ...
      lengthF.enq(countWrd);                                                   // enq length of message (counted length)
      $display("FAU: frame %0x received", fid);
    end                                                                        // send a token to read port on EOP
  end
  if(isEOP) begin 
    grabFID <= True;                                                          // signal to get next FID from FDU
    fidEgressF.enq(fid);
  end
endrule


rule readReqBRAM(countRdReq < lengthF.first && readCredit > 0);    // When we have a read mesg token...
  HexBDG tmp = ?;
  bram.portB.request.put(makeRequest(False, readAddr, tmp));                   // issue read request
  readCredit.acc2(-1);                                                       // Subtract one from read credits
  Bool isEOP = (countRdReq==lengthF.first-1);                                   // detect EOP on match
  countRdReq <= isEOP ? 0 : countRdReq + 1;                                  // update our read request position
  readAddr <= generateAddr(isEOP, readAddr);                                 // update the Read Address
endrule

rule readBRAM;                                                               // For every read response from BRAM...
  
  let d <- bram.portB.response.get;                                          // get the data
  Bool isEOP = (countRd == lengthF.first-1);                                    // check if it is an EOP
  countRd <= isEOP ? 0 : countRd + 1;                                        // update our read response position
 /* if(prevfid != fid)*/datagramEgressF.enq(d);  // send it off
  if(isEOP) begin 
    lengthF.deq;
    freeF.enq(?);
  end
endrule


interface free = toGet(freeF);
interface ingress = toPut(datagramIngressF);//TODO:input FIFO
interface egress  = toGet(datagramEgressF); //TODO: to be used for ACKS
interface frameAck = toGet(fidEgressF); 

endmodule
