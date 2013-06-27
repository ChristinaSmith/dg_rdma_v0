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

interface FDUIfc;
  interface Get#(Bit#(0)) free;  // enq'd when the BRAM is free to accept a frame, used to signal to the dispatch unit that this FDU is free
  interface Put#(HexBDG) datagramSnd;
  interface Get#(HexBDG) datagramRcv;
  interface Client#(UInt#(16), UInt#(16)) frameAck;
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
module mkFDU(FDUIfc);

FIFO#(HexBDG)                datagramIngressF   <- mkFIFO;
FIFO#(HexBDG)                datagramEgressF    <- mkFIFO;
FIFO#(UInt#(16))             fidIngressF        <- mkFIFO;
FIFO#(UInt#(16))             fidEgressF         <- mkFIFO;
FIFO#(UInt#(16))             fidF               <- mkFIFO;
FIFOF#(UInt#(10))            lengthF            <- mkFIFOF1;
FIFOF#(Bit#(0))              readTriggerF       <- mkFIFOF1;
FIFOF#(Bit#(0))              freeF              <- mkFIFOF1;   // holds token indicating that FDU is free to accept new frame
Reg#(UInt#(16))              fid                <- mkReg(0);
Reg#(Bool)                   isOk2Write         <- mkReg(True);
Reg#(Bool)                   grabFID            <- mkReg(True);
Reg#(UInt#(10))              countWrd           <- mkReg(1); 
Reg#(UInt#(10))              countRdReq         <- mkReg(0);
Reg#(UInt#(10))              countRd            <- mkReg(0);
Reg#(UInt#(10))              readAddr           <- mkReg(0);
Reg#(UInt#(10))              writeAddr          <- mkReg(0);
Reg#(Bool)                   sndFIF             <- mkReg(False);
Accumulator2Ifc#(Int#(10))   readCredit         <- mkAccumulator2;
Reg#(UInt#(16))              timeoutVal         <- mkReg(600);
Reg#(UInt#(16))              timeoutCount       <- mkReg(600);
Reg#(Bool)                   retransmit         <- mkReg(False);
Reg#(Bool)                   isRunning          <- mkReg(True);
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
  fid <= unpack({pack(y[4]),pack(y[5])});
  fidF.enq(unpack({pack(y[4]), pack(y[5])}));
  grabFID <= False;
endrule

rule writeBRAM(isOk2Write);                                                  // For every incident Mesg word...
  let y = datagramIngressF.first; datagramIngressF.deq;                      // dequeue the incident Mesg
  Bool isEOP = y.isEOP;                                                      // detect if is an EOP
  bram.portA.request.put(makeRequest(True, writeAddr, y));                   // write the data to BRAM
  readCredit.acc1(1);                                                        // Add one to read credits
  countWrd <= isEOP ? 1 : countWrd + 1;                                      // update our count of message length
  if (isEOP) begin                                                           // as we write the last word...
    lengthF.enq(countWrd);                                                   // enq the length for future use at the read port
    isOk2Write <= False;                                                     // tell this rule to not write for now
    readTriggerF.enq(?);                                                     // tell the read requests to begin
  end                                                                      
  writeAddr <= generateAddr(isEOP, writeAddr);                               // update the Write Address
endrule

rule readReqBRAM(readTriggerF.notEmpty);                                     // When we have a read mesg token... removed 
                                                                             // firstTime register.. it's value is not known at
                                                                             // half throughput occupancy
  HexBDG tmp = ?; 
  bram.portB.request.put(makeRequest(False, readAddr, tmp));                 // issue read request
  if(!retransmit) readCredit.acc2(-1);                                       // Subtract one from read credits only if we are sending the frame for the first time
  Bool isEOP = (countRdReq==lengthF.first-1);                                // determine end of frame
  if(isEOP) readTriggerF.deq;                                                // on last word, stop read requests
  countRdReq <= isEOP ? 0 : countRdReq + 1;                                  // update our read request position
  readAddr <= generateAddr(isEOP, readAddr);                                 // update the Read Address
endrule

rule readBRAM;                                                               // For every read response from BRAM...
  let d <- bram.portB.response.get;                                          // get the data
  Bool isEOP = (countRd == lengthF.first-1);                                 // check if it is an EOP
  countRd <= isEOP ? 0 : countRd + 1;                                        // update our read response position
  datagramEgressF.enq(d);                                                    // send it off
  if(isEOP) begin                                                            // as we read the last word...
    sndFIF <= True;                                                          // signal to send fid to AckTracker because we have sent a frame and are waiting for its ack
    isRunning <= True;                                                       // start retransmission timer
    timeoutCount <= timeoutVal;                                              // reset the timeoutCount to the timeoutVal in the case that the timer did not expire
    retransmit <= False;                                                     // set retransmit to false (whether we are retransmitting or not)
  end
endrule

rule sendFIF(sndFIF);                                                        // give AckTracker frameID in buffer and corresponding fduID
  $display("FDU: sent frame %0x", fid);
  fidEgressF.enq(fidF.first);                                                
  fidF.deq;                                                                  // deq fifo holding fid
  sndFIF <= False;                                                          // only do it once
endrule

rule releaseFrm;                                                             // allow frame buffer to be written over because we have acked the frame
  let y = fidIngressF.first; fidIngressF.deq;                                // get the fID from AckTracker
  if(y == fid) begin                                                         // this will matter when we have mutliple frames in each FDU, but doesnt now since we only have one
    $display("FDU: received ack for frame %0x", fid);
    isOk2Write <= True;                                                      // allow writing into the buffer
    grabFID <= True;                                                         // get the next fid
    lengthF.deq;                                                             // done with the length
    retransmit <= False;                                                     // if we get an ack that matches the FID of the frame in buffer, deq the length of the frame indicating that we are infact done with it
    freeF.enq(?);
  end                                                                        // compare the received fduID to our fduID, then signal buffer to write and get the next fid
endrule

rule timeout(isRunning);                                                    // only decrement the retranmission timeout when we have a frame out, not acked
  timeoutCount <= (timeoutCount == 0) ? timeoutVal : timeoutCount - 1;      // decrement value each cycle we have a frame out
  if(timeoutCount == 0) begin                                               // when it reaches zero, we have timed out
    retransmit <= True;                                                     // signal to retransmit the frame
    readTriggerF.enq(?);
    $display("FDU: timeout detected, retransmitting frame %0x", fid);
    readAddr <= generateAddr(True, readAddr);                               // set readAddr of BRAM to 0 because this is where the frame is, if we double buffer the frames this will need more logic
    isRunning <= False;                                                     // stop the timer, will be started when EOP is detected on output
  end
endrule

interface free = toGet(freeF);                  
interface datagramSnd = toPut(datagramIngressF);//TODO:input FIFO
interface datagramRcv = toGet(datagramEgressF); //TODO: output FIFO
interface Client frameAck;
  interface request = toGet(fidEgressF);
  interface response = toPut(fidIngressF);
endinterface
endmodule
