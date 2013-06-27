// MergeForkFDU.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith
// FIXME! Remove L2 header adding logic from merge fork, it is not merging or forking and should be decoupled from the concern of merge-fork
import GetPut     ::*;
import FIFO       ::*;
import FIFOF      ::*;
import Vector     ::*;
import ClientServer ::*;

import DPPDefs    ::*;
import MLDefs     ::*;

interface MergeForkFDUIfc;
  interface Client#(HexBDG, HexBDG) egress;
  interface Put#(HexBDG) ingress1;
  interface Put#(HexBDG) ingress2;
  interface Get#(HexBDG) ack;
endinterface

(* synthesize *)
module mkMergeForkFDU(MergeForkFDUIfc);

FIFOF#(HexBDG)               datagramIngressF1   <- mkFIFOF;
FIFOF#(HexBDG)               datagramIngressF2   <- mkFIFOF;
FIFO#(HexBDG)                datagramEgressF    <- mkFIFO;
FIFO#(HexBDG)                ackIngressF        <- mkFIFO;
FIFO#(HexBDG)                ackEgressF         <- mkFIFO;
//Reg#(Vector#(6, Bit#(8)))    macDst             <- mkReg(reverse(unpack('h000A350276B3)));
//Reg#(Vector#(6, Bit#(8)))    macDst             <- mkReg(reverse(unpack('h000000000000)));
//Reg#(Vector#(6, Bit#(8)))    macDst             <- mkReg(reverse(unpack('hFFFFFFFFFFFF)));
//Reg#(Vector#(6, Bit#(8)))    macSrc             <- mkReg(reverse(unpack('h000A350276B3)));
//Reg#(Vector#(2, Bit#(8)))    ethType            <- mkReg(unpack('h3333));
//Reg#(Bool)                   isDGheader         <- mkReg(True);
Reg#(Bool)                   control            <- mkReg(False);
//Reg#(Bool)                   isAckHeader        <- mkReg(True);
Reg#(UInt#(16))              frameNum           <- mkReg(1); //used for debug display only 
//Reg#(UInt#(16))              headerNum          <- mkReg(1); //used for debug display only 

/*rule pumpHeader(isDGheader && (datagramIngressF1.notEmpty || datagramIngressF2.notEmpty));
  Vector#(12, Bit#(8)) macAddrs = append(macDst, macSrc);
  HexBDG x = HexBDG{data: padHexByte(append(macAddrs, ethType)), nbVal: 16, isEOP: False}; // FIXME! This is totally wrong, there are only 14 valid bytes in an L2 header.
  datagramEgressF.enq(x);
  isDGheader <= False;
  $display("MergeForkFDU: sent L2 header for frame %0x with nbVal %0x", headerNum, x.nbVal);
 // headerNum <= headerNum + 1;
endrule*/

/*rule pumpFrame(!isDGheader);                       // Will need to multiplex multiple FDUs
if(datagramIngressF1.notEmpty) begin  
  let y = datagramIngressF1.first;
    if(y.isEOP) begin
      isDGheader <= True; 
      $display("MergeForkFDU: sent frame %0x", frameNum); 
      frameNum <= frameNum + 1; 
    end
    datagramEgressF.enq(y);
    datagramIngressF1.deq;
end
else if(datagramIngressF2.notEmpty) begin  
  let y = datagramIngressF2.first;
    if(y.isEOP) begin
      isDGheader <= True; 
      $display("MergeForkFDU: sent frame %0x", frameNum); 
      frameNum <= frameNum + 1; 
    end
    datagramEgressF.enq(y);
    datagramIngressF2.deq;
end
endrule*/

rule pumpFrame1(!control); 
  let y = datagramIngressF1.first;
  control <= (/*!isDGheader &&*/ y.isEOP) ? True : False; 
  if(y.isEOP) begin
    $display("MergeForkFDU: sent frame %0x", frameNum); 
    frameNum <= frameNum + 1; 
  //  isDGheader <= True;
  end
  datagramEgressF.enq(y);
  datagramIngressF1.deq;
endrule

rule pumpFrame2(control); 
  let y = datagramIngressF2.first;
  control <= (/*!isDGheader &&*/ y.isEOP) ? False : True; 
  if(y.isEOP) begin
    $display("MergeForkFDU: sent frame %0x", frameNum); 
    frameNum <= frameNum + 1; 
   // isDGheader <= True;
  end
  datagramEgressF.enq(y);
  datagramIngressF2.deq;
endrule

/*rule rmAckHeader(isAckHeader);
  HexBDG l2header = ackIngressF.first;
  ackIngressF.deq;
  isAckHeader <= False;
endrule*/

rule pumpAck/*(!isAckHeader)*/;                        // Ack will always go to AckTracker
  let y = ackIngressF.first;
 // if(y.isEOP)isAckHeader <= True;
  ackEgressF.enq(y);
  ackIngressF.deq;
endrule

interface ingress1 = toPut(datagramIngressF1);
interface ingress2 = toPut(datagramIngressF2);
interface ack = toGet(ackEgressF);
  
interface Client egress;
  interface request = toGet(datagramEgressF); 
  interface response = toPut(ackIngressF); 
endinterface
endmodule
