// L2Remover.bsv - funnel
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs          ::*;  
import DPPDefs         ::*;
import E8023           ::*;

import Clocks          ::*;
import Connectable     ::*;
import FIFO            ::*;
import FIFOF           ::*;
import ClientServer    ::*;
import GetPut          ::*;
import Clocks          ::*;
import XilinxExtra     ::*;
import XilinxCells     ::*;
import Vector          ::*;

interface L2RemoverIfc;
  interface Put#(QABS)  qIn;
  interface Get#(QABS)  qOut;
endinterface

(* synthesize *)
module mkL2Remover(L2RemoverIfc); 

QABS2ABSIfc             funnel         <- mkQABS2ABS;
//ABS2QABS_CIfc             unfunnel       <- mkABS2QABS_C;
ABS2QABSIfc             unfunnel       <- mkABS2QABS;
FIFO#(QABS)             qabsEgressF    <- mkFIFO;
FIFO#(QABS)             qabsIngressF   <- mkFIFO;
FIFOF#(ABS)             absToL2F       <- mkFIFOF;
FIFO#(ABS)              absToQF        <- mkFIFO;
Reg#(MACAddress)        da             <- mkRegU;
Reg#(MACAddress)        sa             <- mkRegU;
Reg#(EtherType)        ethType        <- mkRegU;
Reg#(Vector#(6, Bit#(8))) daV          <- mkRegU;
Reg#(Vector#(6, Bit#(8))) saV          <- mkRegU;
Reg#(Vector#(6, Bit#(8))) srV          <- mkRegU;
Reg#(UInt#(4))          index          <- mkReg(0);
Reg#(Bool)              control        <- mkReg(False);
Reg#(Bool)              mine        <- mkReg(False);
 
mkConnection(toGet(qabsIngressF), funnel.putVector);
mkConnection(funnel.getSerial, toPut(absToL2F));

rule removeL2header(!control);
  let bs = absToL2F.first; absToL2F.deq;
  Bit#(8) b = E8023::getData(bs);
  srV <= shiftInAt0(srV, b);
  index <= (isEOP(bs)) ? 0 : (index == 13) ? 0 : index + 1;
  case(index)
    5  : da <= pack(shiftInAt0(srV, b));
    11 : action let s = pack(shiftInAt0(srV, b)); sa <= s; endaction
    13 : action ethType <= {pack(srV[0]), b}; control <= True; endaction
  endcase
  Bit#(16) et = {pack(srV[0]),b};
  Bool isForMe = ((da == 48'h00_0A_35_02_76_B3) && (index == 13 && et == 16'h3333));
  mine <= isForMe;
endrule

rule pumpFrame(control);
  let c = absToL2F.first; absToL2F.deq;
 // $display("[%0d]: %m: L2_INGRESS_PAYLOAD: %0x", $time, c);
  if(mine) absToQF.enq(c);
  if(isEOP(c)) control <= False;
endrule

mkConnection(toGet(absToQF), unfunnel.putSerial);
mkConnection(unfunnel.getVector, toPut(qabsEgressF));

interface qOut = toGet(qabsEgressF);
interface qIn  = toPut(qabsIngressF);

endmodule
