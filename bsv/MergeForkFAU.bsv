// MergeForkFAU.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith
// FIXME!! Adding and removing L2 header should not be in the same module that merges and forks!!
import GetPut     ::*;
import FIFO       ::*;
import FIFOF      ::*;
import Vector     ::*;
import ClientServer ::*;

import DPPDefs    ::*;
import MLDefs     ::*;

interface MergeForkFAUIfc;
  interface Server#(HexBDG, HexBDG) ingress;
  interface Get#(HexBDG) egress1;
  interface Get#(HexBDG) egress2;
  interface Put#(HexBDG) ack;
  interface Put#(Bit#(0)) free1;
  interface Put#(Bit#(0)) free2;
endinterface

(* synthesize *)
module mkMergeForkFAU(MergeForkFAUIfc);

FIFO#(HexBDG)                datagramIngressF   <- mkFIFO;
FIFO#(HexBDG)                datagramEgressF1   <- mkFIFO;
FIFO#(HexBDG)                datagramEgressF2   <- mkFIFO;
FIFOF#(Bit#(0))              freeF1             <- mkFIFOF1;
FIFOF#(Bit#(0))              freeF2             <- mkFIFOF1;
FIFOF#(HexBDG)               ackIngressF        <- mkFIFOF;
FIFO#(HexBDG)                ackEgressF         <- mkFIFO;
//Reg#(Vector#(6, Bit#(8)))    macDst             <- mkReg(reverse(unpack('h000A350276B3)));
//Reg#(Vector#(6, Bit#(8)))    macDst             <- mkReg(reverse(unpack('h000000000000)));
//Reg#(Vector#(6, Bit#(8)))    macDst             <- mkReg(reverse(unpack('hFFFFFFFFFFFF)));
//Reg#(Vector#(6, Bit#(8)))    macSrc             <- mkReg(reverse(unpack('h000A350276B3)));
//Reg#(Vector#(2, Bit#(8)))    ethType            <- mkReg(unpack('h3333));
//Reg#(Bool)                   isDGheader         <- mkReg(True);
//Reg#(Bool)                   isAckHeader        <- mkReg(True);
//Reg#(UInt#(16))              headerNum          <- mkReg(1);
Reg#(UInt#(16))              frameNum           <- mkReg(1);
Reg#(Bool)                   control            <- mkReg(True);  // used to switch between FAU1 and FAU2 cleanly

/*rule rmDGheader(isDGheader);
  HexBDG l2header = datagramIngressF.first;
  datagramIngressF.deq;
  isDGheader <= False;
//  $display("MergeForkFAU: removed L2 header for frame %0x", headerNum);
 // headerNum <= headerNum + 1;
endrule*/

rule pumpFrame1(/*!isDGheader && freeF1.notEmpty &&*/ control);      // Will need to multiplex multiple FAUs
  let y = datagramIngressF.first;
  datagramEgressF1.enq(y);
  datagramIngressF.deq;
  if(y.isEOP) begin 
  //  isDGheader <= True; 
    $display("MergeForkFAU: sent frame %0x", frameNum);
    frameNum <= frameNum + 1; 
    freeF1.deq;
    //control <= False;
  end
 // control <= (y.isEOP) ? False : (!freeF1.notEmpty) ? False : True;
 control <= (y.isEOP && !freeF1.notEmpty)  ? False : (y.isEOP && freeF2.notEmpty)? False : True;
endrule

rule pumpFrame2(/*!isDGheader && freeF2.notEmpty && */!control);      // Will need to multiplex multiple FAUs
  let y = datagramIngressF.first;
  datagramEgressF2.enq(y);
  datagramIngressF.deq;
  if(y.isEOP) begin 
  //  isDGheader <= True; 
    $display("MergeForkFAU: sent frame %0x", frameNum);
    frameNum <= frameNum + 1; 
    freeF2.deq;
  //  control <= True;
  end
//  control <= (y.isEOP) ? True : (!freeF2.notEmpty) ? True : False;
control <= (y.isEOP && !freeF2.notEmpty) ?  True : (y.isEOP && freeF1.notEmpty) ? True : False;
endrule

/*rule pumpHeader(isAckHeader && ackIngressF.notEmpty);
  Vector#(12, Bit#(8)) macAddrs = append(macDst, macSrc);
  HexBDG x = HexBDG{data: padHexByte(append(macAddrs, ethType)), nbVal: 16, isEOP: False};  // FIXME! This is totally wrong, there are really only 14 valid bytes in an L2 header. 
  ackEgressF.enq(x);
  isAckHeader <= False;
endrule*/

rule pumpAck/*(!isAckHeader)*/;                        // Ack will always go to AckTracker
  let y = ackIngressF.first;
 // if(y.isEOP)isAckHeader <= True;
  ackEgressF.enq(y);
  ackIngressF.deq;
endrule

interface free1 = toPut(freeF1);
interface free2 = toPut(freeF2);
interface egress1 = toGet(datagramEgressF1);
interface egress2 = toGet(datagramEgressF2);
interface ack = toPut(ackIngressF);
  
interface Server ingress;
  interface request = toPut(datagramIngressF); 
  interface response = toGet(ackEgressF); 
endinterface
endmodule
