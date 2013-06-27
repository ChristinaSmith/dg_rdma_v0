// HBDG2QABS.bsv - funnel
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

interface HBDG2QABSIfc;
  interface Put#(HexBDG) hIn;
  interface Get#(QABS)   qOut;
endinterface

(* synthesize *)
module mkHBDG2QABS(HBDG2QABSIfc); 

FIFO#(QABS)             qabsEgressF    <- mkFIFO;
FIFO#(HexBDG)           hexbdgIngressF <- mkFIFO;
Reg#(UInt#(5))          index          <- mkReg(0);
Reg#(UInt#(5))          byteCountR     <- mkReg(0);

rule funnel;
  HexBDG hbdgIn = hexbdgIngressF.first;                                // grab HexBDG in
  Bool eop = hbdgIn.isEOP; 
  UInt#(5) byteCount = ?;
  byteCount = (index == 0) ? hbdgIn.nbVal : byteCountR; 
  QABS out = ?;                                         
  if(index == 12 || byteCount < 4) hexbdgIngressF.deq;    // deq input if we made it through three iterations or if the number
  
  if(byteCount > 4) begin
    out[0] = tagged ValidNotEOP hbdgIn.data[index]; 
    out[1] = tagged ValidNotEOP hbdgIn.data[index + 1]; 
    out[2] = tagged ValidNotEOP hbdgIn.data[index + 2];
    out[3] = tagged ValidNotEOP hbdgIn.data[index + 3];
    byteCount = byteCount - 4;
  end
  else if(byteCount == 4) begin
    out[0] = tagged ValidNotEOP hbdgIn.data[index]; 
    out[1] = tagged ValidNotEOP hbdgIn.data[index + 1]; 
    out[2] = tagged ValidNotEOP hbdgIn.data[index + 2];
    out[3] = (eop) ? tagged ValidEOP hbdgIn.data[index + 3] : tagged ValidNotEOP hbdgIn.data[index + 3];
    byteCount = byteCount - 4;
  end
  else if(byteCount == 3) begin
    out[0] = tagged ValidNotEOP hbdgIn.data[index]; 
    out[1] = tagged ValidNotEOP hbdgIn.data[index + 1]; 
    out[2] = tagged ValidEOP hbdgIn.data[index + 2];
    out[3] = tagged EmptyEOP;
    byteCount = byteCount - 3;
  end
  else if(byteCount == 2) begin
    out[0] = tagged ValidNotEOP hbdgIn.data[index]; 
    out[1] = tagged ValidEOP hbdgIn.data[index + 1]; 
    out[2] = tagged EmptyEOP;
    out[3] = tagged EmptyEOP;
    byteCount = byteCount - 2;
  end
  else if(byteCount == 1) begin
    out[0] = tagged ValidEOP hbdgIn.data[index]; 
    out[1] = tagged EmptyEOP; 
    out[2] = tagged EmptyEOP;
    out[3] = tagged EmptyEOP;
    byteCount = byteCount - 1;
  end
else begin
    out[0] = tagged EmptyEOP; 
    out[1] = tagged EmptyEOP; 
    out[2] = tagged EmptyEOP;
    out[3] = tagged EmptyEOP;
  end

  byteCountR <= byteCount;
  index <= ((index == 12) || (hbdgIn.nbVal - index) < 4) ? 0 : index + 4;
  qabsEgressF.enq(out);
endrule

interface qOut = toGet(qabsEgressF);
interface hIn = toPut(hexbdgIngressF);

endmodule


