// L2Inserter.bsv - funnel
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

interface L2InserterIfc;
  interface Put#(QABS)  qIn;
  interface Get#(QABS)  qOut;
endinterface

(* synthesize *)
module mkL2Inserter(L2InserterIfc); 

QABS2ABSIfc             funnel         <- mkQABS2ABS;
//ABS2QABS_CIfc             unfunnel       <- mkABS2QABS_C;
ABS2QABSIfc             unfunnel       <- mkABS2QABS;
FIFO#(QABS)             qabsEgressF    <- mkFIFO;
FIFO#(QABS)             qabsIngressF   <- mkFIFO;
FIFOF#(ABS)             absToL2F       <- mkFIFOF;
FIFO#(ABS)              absToQF        <- mkFIFO;
//Reg#(MACAddress)        da             <- mkReg(48'hFF_FF_FF_FF_FF_FF);
Reg#(MACAddress)        da             <- mkReg(48'h00_0A_35_02_76_B3);
Reg#(MACAddress)        sa             <- mkReg(48'h00_0A_35_02_76_B3);
Reg#(Vector#(6, Bit#(8))) daV          <- mkRegU;
Reg#(Vector#(6, Bit#(8))) saV          <- mkRegU;
Reg#(UInt#(4))          index          <- mkReg(0);
Reg#(Bool)              control        <- mkReg(False);
 
mkConnection(toGet(qabsIngressF), funnel.putVector);
mkConnection(funnel.getSerial, toPut(absToL2F));

rule insertL2header(absToL2F.notEmpty && !control);
  index <= (index == 15) ? index : index + 1;
  case(index)
    0              : action daV <= unpack(da); saV <= unpack(sa); endaction
    1,2,3,4,5,6    : action absToQF.enq(tagged ValidNotEOP daV[5]); daV <= rotateR(daV); endaction
    7,8,9,10,11,12 : action absToQF.enq(tagged ValidNotEOP saV[5]); saV <= rotateR(saV); endaction
    13             : absToQF.enq(tagged ValidNotEOP 8'h33);
    14             : action absToQF.enq(tagged ValidNotEOP 8'h33); control <= True;endaction
  endcase
endrule

rule pumpFrame(control);
  let c = absToL2F.first; absToL2F.deq;
//  $display("[%0d]: %m: L2_EGRESS_PAYLOAD: %0x", $time, c);
  absToQF.enq(c);
  if(isEOP(c)) begin
    index <= 0;
    control <= False;
  end
endrule

mkConnection(toGet(absToQF), unfunnel.putSerial);
mkConnection(unfunnel.getVector, toPut(qabsEgressF));

interface qOut = toGet(qabsEgressF);
interface qIn  = toPut(qabsIngressF);

endmodule


