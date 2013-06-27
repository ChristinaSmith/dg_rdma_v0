// QABS2HBDG.bsv - unfunnel 
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs          ::*;  
import DPPDefs         ::*;
import E8023           ::*;

import Clocks          ::*;
import Connectable     ::*;
import FIFO            ::*;
import ClientServer    ::*;
import GetPut          ::*;
import Clocks          ::*;
import XilinxExtra     ::*;
import XilinxCells     ::*;
import Vector          ::*;

interface QABS2HBDGIfc;
  interface Put#(QABS)   qIn;
  interface Get#(HexBDG) hOut;
endinterface

function HexByte convert(Vector#(4, QABS) x);
  HexByte y = ?;
  Vector#(4, ABS) h = x[0];
  Vector#(4, ABS) g = x[1];
  Vector#(4, ABS) i = x[2];
  Vector#(4, ABS) j = x[3];
  Vector#(4, Bit#(8)) a = map(E8023::getData, h);
  Vector#(4, Bit#(8)) b = map(E8023::getData, g);
  Vector#(4, Bit#(8)) c = map(E8023::getData, i);
  Vector#(4, Bit#(8)) d = map(E8023::getData, j);
  Vector#(8, Bit#(8)) e = append(b,a);
  Vector#(8, Bit#(8)) f = append(d,c);
  y = append(f,e);
return y;
endfunction


(* synthesize *)
module mkQABS2HBDG(QABS2HBDGIfc); 

FIFO#(QABS)             qabsIngressF   <- mkFIFO;
FIFO#(HexBDG)           hexbdgEgressF  <- mkFIFO;
Reg#(Vector#(3,QABS))   sr             <- mkRegU;
Reg#(UInt#(2))          ptr            <- mkReg(0);
Reg#(UInt#(5))          nbVal          <- mkReg(0);
Reg#(UInt#(5))          nbValLastR     <- mkReg(0);
Reg#(Bool)              eop            <- mkReg(False);

rule unfunnel;
  QABS qabsIn = qabsIngressF.first;                          // get the first QABS
  qabsIngressF.deq;                                          // deq QABS input                         
  HexBDG hbdgOut = ?; 
  UInt#(5) nbValLast = ?;                                   
  sr <= shiftInAt0(sr, qabsIn);                              // shift in next QABS
  eop <= hasQABSEOP(qabsIn); // determine if an EOP lives in this QABS, will be used to set isEOP for HBDG
  Bool eopTemp = hasQABSEOP(qabsIn);
  ptr <= (eopTemp) ? 0 : ptr + 1;  // set pointer to 0 if we have reached EOP for this QABS or if we are on the 4th QABS
  
  // nbVal Calculation 
  UInt#(5) nbVal1 = case(qabsIn[0]) matches
                      tagged ValidNotEOP .x : return 1;
                      tagged ValidEOP    .x : return 1;
                      tagged EmptyEOP    .x : return 0;
                    endcase;
  UInt#(5) nbVal2 = case(qabsIn[1]) matches
                      tagged ValidNotEOP .x : return 1;
                      tagged ValidEOP    .x : return 1;
                      tagged EmptyEOP    .x : return 0;
                    endcase;
  UInt#(5) nbVal3 = case(qabsIn[2]) matches
                      tagged ValidNotEOP .x : return 1;
                      tagged ValidEOP    .x : return 1;
                      tagged EmptyEOP    .x : return 0;
                    endcase;
  UInt#(5) nbVal4 = case(qabsIn[3]) matches
                      tagged ValidNotEOP .x : return 1;
                      tagged ValidEOP    .x : return 1;
                      tagged EmptyEOP    .x : return 0;
                    endcase;
 
  nbVal <= (ptr == 3 || eopTemp) ? 0 : nbVal + nbVal1 + nbVal2 + nbVal3 + nbVal4;
  nbValLast = nbVal + nbVal1 + nbVal2 + nbVal3 + nbVal4;
  nbValLastR <= (nbValLast == 16) ? 0 : nbValLast;
 
  Vector#(4, QABS) tmp = cons(qabsIn, sr);  // put all four QABS into a vector
   
  // shift Vector if necessary to properly align valid data for EOP
  if(ptr == 2 && eopTemp) begin
    QABS tmp3 = ?;
    tmp3[0] = tagged EmptyEOP;
    tmp3[1] = tagged EmptyEOP;
    tmp3[2] = tagged EmptyEOP;
    tmp3[3] = tagged EmptyEOP;
    tmp = shiftInAt0(tmp, tmp3);
  end
  else if(ptr == 1 && eopTemp) begin
    QABS tmp3 = ?;
    Vector#(4, QABS) tmp1 = ?;
    tmp3[0] = tagged EmptyEOP;
    tmp3[1] = tagged EmptyEOP;
    tmp3[2] = tagged EmptyEOP;
    tmp3[3] = tagged EmptyEOP;
    tmp1 = shiftInAt0(tmp, tmp3);
    tmp =  shiftInAt0(tmp1, tmp3);
  end
  else if(ptr == 0 && eopTemp) begin
    QABS tmp3 = ?;
    Vector#(4, QABS) tmp1 = ?;
    Vector#(4, QABS) tmp2 = ?;
    tmp3[0] = tagged EmptyEOP;
    tmp3[1] = tagged EmptyEOP;
    tmp3[2] = tagged EmptyEOP;
    tmp3[3] = tagged EmptyEOP;
    tmp1 = shiftInAt0(tmp, tmp3);
    tmp2 = shiftInAt0(tmp1, tmp3);
    tmp =  shiftInAt0(tmp2, tmp3);
  end                           
  
  if(ptr == 3 || eopTemp) begin
    HexByte data = convert(tmp);            // use convert function to turn Vector#(4, QABS) to HexByte
    hbdgOut.data = data; 
    hbdgOut.nbVal = (eop) ? nbValLastR : nbValLast; 
    hbdgOut.isEOP = eopTemp; 
    hexbdgEgressF.enq(hbdgOut);             // send datagram out
  end
 
endrule

interface qIn = toPut(qabsIngressF);
interface hOut = toGet(hexbdgEgressF);

endmodule


