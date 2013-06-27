// MergeRcv.bsv - used to combine frames from FAUs
// Copyright (c) 2013 Atomic Rules LLC - ALL RIGHTS RESERVED
// Written by: Christina Smith 4/8/13

import GetPut     ::*;
import FIFOF      ::*;
import FIFO       ::*;

import DPPDefs    ::*;
import MLDefs     ::*;


interface MergeRcvIfc;
  interface Put#(HexBDG) datagramRcv1;
  interface Get#(HexBDG) datagramSnd;
  interface Put#(HexBDG) datagramRcv2;
endinterface

//(* synthesize *)
module mkMergeRcv(MergeRcvIfc);

FIFO#(HexBDG)   datagramEgressF     <- mkFIFO;
FIFOF#(HexBDG)   datagramIngressF1  <- mkFIFOF;
FIFOF#(HexBDG)   datagramIngressF2  <- mkFIFOF;

rule mergeFrame1(datagramIngressF1.notEmpty || datagramIngressF2.notEmpty);
  if(datagramIngressF1.notEmpty) begin
    let y = datagramIngressF1.first;   // grab HexBDG of frame
    Bool isEOP = y.isEOP;             // check EOP
    datagramEgressF.enq(y);        // enq to FDU
    datagramIngressF1.deq;           // deq the HexBDG
   // if(isEOP) freeF2.deq;           // on EOP, close connection to FDU
  end
  else if(datagramIngressF2.notEmpty) begin
    let y = datagramIngressF2.first;   // grab HexBDG of frame
    Bool isEOP = y.isEOP;             // check EOP
    datagramEgressF.enq(y);        // enq to FDU
    datagramIngressF2.deq;           // deq the HexBDG
  end
endrule

interface datagramRcv2 = toPut(datagramIngressF2);
interface datagramRcv1 = toPut(datagramIngressF1);
interface datagramSnd = toGet(datagramEgressF);

endmodule
