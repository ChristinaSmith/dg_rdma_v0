// ForkSnd.bsv - used to multiplex frame to free FDU
// Copyright (c) 2013 Atomic Rules LLC - ALL RIGHTS RESERVED
// Written by: Christina Smith 4/8/13

import GetPut     ::*;
import FIFOF      ::*;
import FIFO       ::*;

import DPPDefs    ::*;
import MLDefs     ::*;


interface ForkSndIfc;
  interface Get#(HexBDG) datagramRcv1;
  interface Put#(HexBDG) datagramSnd;
  interface Put#(Bit#(0)) free1;
  interface Get#(HexBDG) datagramRcv2;
  interface Put#(Bit#(0)) free2;
endinterface

//(* synthesize *)
module mkForkSnd(ForkSndIfc);

FIFOF#(Bit#(0)) freeF1              <- mkFIFOF1;
FIFOF#(Bit#(0)) freeF2              <- mkFIFOF1;
FIFO#(HexBDG)   datagramIngressF    <- mkFIFO;
FIFO#(HexBDG)   datagramEgressF1    <- mkFIFO;
FIFO#(HexBDG)   datagramEgressF2    <- mkFIFO;
Reg#(Bool)      control             <- mkReg(True);

rule muxFrame1(/*freeF1.notEmpty && */control);      // when we have an FDU available...
  let y = datagramIngressF.first;   // grab HexBDG of frame
  Bool isEOP = y.isEOP;             // check EOP
  if(freeF1.notEmpty) begin         // check if FDU1 is free
    datagramEgressF1.enq(y);        // enq to FDU
    datagramIngressF.deq;           // deq the HexBDG
    if(isEOP) freeF1.deq;           // on EOP, close connection to FDU
  end
  control <= (isEOP) ? False : (!freeF1.notEmpty) ? False : True;
endrule

rule muxFrame2(/*freeF2.notEmpty &&*/ !control);
  let y = datagramIngressF.first;   // grab HexBDG of frame
  Bool isEOP = y.isEOP;             // check EOP
  if(freeF2.notEmpty) begin         // check if FDU2 is free
    datagramEgressF2.enq(y);        // enq to FDU
    datagramIngressF.deq;           // deq the HexBDG
    if(isEOP) freeF2.deq;           // on EOP, close connection to FDU
  end
  control <= (isEOP) ? True : (!freeF2.notEmpty) ? True : False;
endrule

interface free2 = toPut(freeF2);
interface datagramRcv2 = toGet(datagramEgressF2);
interface free1 = toPut(freeF1);
interface datagramRcv1 = toGet(datagramEgressF1);
interface datagramSnd = toPut(datagramIngressF);

endmodule
