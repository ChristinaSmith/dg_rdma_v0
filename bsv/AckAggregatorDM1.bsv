// AckTracker.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import GetPut     ::*;
import FIFO       ::*;
import FIFOF      ::*;
import Vector     ::*;
import BRAM       ::*;
import List       ::*;

import Accum      ::*;
import DPPDefs    ::*;
import MLDefs     ::*;

interface AckAggregatorDM1Ifc;
  interface Put#(UInt#(16)) frameAck1;
  interface Put#(UInt#(16)) frameAck2;
  interface Get#(HexBDG) ackEgress;
endinterface

(* synthesize *)
module mkAckAggregatorDM1(AckAggregatorDM1Ifc);

FIFOF#(UInt#(16))             fidIngressF1      <- mkFIFOF;
FIFOF#(UInt#(16))             fidIngressF2      <- mkFIFOF;
FIFO#(HexBDG)                 ackEgressF        <- mkFIFO;
FIFO#(UInt#(16))              numFrmsF          <- mkFIFO;
Reg#(UInt#(16))               fsCnt             <- mkReg(1000);
//Reg#(Bool)                   dropAck       <- mkReg(True);
//Reg#(Bool)                   dropAck2       <- mkReg(True);
// dropAck logic used to test retransmission, should be excluded under normal operating conditions

rule sendAck;
  if(fidIngressF1.notEmpty) begin
  Vector#(10, Bit#(8)) fhV = toByteVector(DPPFrameHeader{did:'h2042,sid:'h1042,fs:fsCnt,as:fidIngressF1.first,ac:1,f:0}); //create ack frame
 // if(!dropAck) begin   
    ackEgressF.enq(HexBDG{data: padHexByte(fhV), nbVal: 10, isEOP: True});         // send ack back to FDU
    fsCnt <= fsCnt + 1;                                                            // increase fid local to FAU
    $display("AckAggregator: ack sent for frame %0x",fidIngressF1.first);
 // end
 // dropAck <= False;                                                                
  fidIngressF1.deq;
  end
else if(fidIngressF2.notEmpty) begin
  Vector#(10, Bit#(8)) fhV = toByteVector(DPPFrameHeader{did:'h2042,sid:'h1042,fs:fsCnt,as:fidIngressF2.first,ac:1,f:0}); //create ack frame
 // if(!dropAck2) begin   
    ackEgressF.enq(HexBDG{data: padHexByte(fhV), nbVal: 10, isEOP: True});         // send ack back to FDU
    fsCnt <= fsCnt + 1;                                                            // increase fid local to FAU
    $display("AckAggregator: ack sent for frame %0x",fidIngressF2.first);
 // end
 // dropAck2 <= False;                                                                
  fidIngressF2.deq;
  end
endrule  

interface frameAck1 = toPut(fidIngressF1);
interface frameAck2 = toPut(fidIngressF2);
interface ackEgress = toGet(ackEgressF);
endmodule
