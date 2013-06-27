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

interface AckTrackerIfc;
  interface Server#(UInt#(16), UInt#(16)) frameAck1;
  interface Server#(UInt#(16), UInt#(16)) frameAck2;
  interface Put#(HexBDG) ackIngress;
endinterface

(* synthesize *)
module mkAckTracker(AckTrackerIfc);

FIFO#(UInt#(16))             fidIngressF1       <- mkFIFO;
FIFO#(UInt#(16))             fidEgressF1        <- mkFIFO;
FIFO#(UInt#(16))             fidIngressF2       <- mkFIFO;
FIFO#(UInt#(16))             fidEgressF2        <- mkFIFO;
FIFO#(HexBDG)                ackIngressF        <- mkFIFO;
FIFO#(UInt#(16))             fidF               <- mkFIFO;

rule getFID;
  HexByte y = ackIngressF.first.data;
  ackIngressF.deq;
  fidF.enq(unpack({pack(y[6]),pack(y[7])}));      // AckStart value (fid being acked)
endrule


rule checkAckFDU1(fidIngressF1.first == fidF.first || fidIngressF2.first == fidF.first);
  $display("AckTracker: ack received for frame %0x", fidF.first);
  if(fidIngressF1.first == fidF.first) begin  
    fidIngressF1.deq;                               // deq fid from FDU fifo
    fidEgressF1.enq(fidF.first);                    // give FDU the fid we acked
    fidF.deq;
  end
  else if(fidIngressF2.first == fidF.first) begin  
    fidIngressF2.deq;                               // deq fid from FDU fifo
    fidEgressF2.enq(fidF.first);                    // give FDU the fid we acked
    fidF.deq;
  end
endrule

interface Server frameAck1;
  interface request = toPut(fidIngressF1);
  interface response = toGet(fidEgressF1); 
endinterface
interface Server frameAck2;
  interface request = toPut(fidIngressF2);
  interface response = toGet(fidEgressF2); 
endinterface
interface ackIngress = toPut(ackIngressF);
endmodule
