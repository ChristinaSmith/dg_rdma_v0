// MergeForkFDU.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith
// FIXME! Remove L2 header adding logic from merge fork, it is not merging or forking and should be decoupled from the concern of merge-fork
import GetPut     ::*;
import FIFO       ::*;
import FIFOF       ::*;
import Vector     ::*;
import ClientServer ::*;

import DPPDefs    ::*;
import MLDefs     ::*;

interface MergeToWireIfc;
  interface Server#(HexBDG, HexBDG) ingressSnd;
  interface Client#(HexBDG, HexBDG) ingressRcv;
  interface Client#(HexBDG, HexBDG) egressWire;
endinterface

(* synthesize *)
module mkMergeToWire(MergeToWireIfc);

FIFOF#(HexBDG)                datagramIngressSndF   <- mkFIFOF;
FIFO#(HexBDG)                ackIngressSndF        <- mkFIFO;
FIFO#(HexBDG)                datagramIngressRcvF   <- mkFIFO;
FIFOF#(HexBDG)                ackIngressRcvF        <- mkFIFOF;
FIFO#(HexBDG)                egressWireOutF        <- mkFIFO;
FIFO#(HexBDG)                egressWireInF         <- mkFIFO;

Reg#(Bit#(16))               didSnd                <- mkReg('h2042);
Reg#(Bit#(16))               didRcv                <- mkReg('h1042);

Reg#(Bool)                   arbiterIn             <- mkReg(False);
Reg#(Bool)                   arbiterOut             <- mkReg(False);

// FROM WIRE //

rule forwardDatagram;                               // Datagram from Wire is multiplexed to either Sending or Receiving unit in Data Mover
  let y = egressWireInF.first;
  Vector#(10, Bit#(8)) tmp = take(egressWireInF.first.data);
  DPPFrameHeader x = fromByteVector(tmp);
  if(x.did == didSnd && arbiterIn) begin 
    ackIngressSndF.enq(y); 
    egressWireInF.deq; 
    if(y.isEOP) arbiterIn <= False;                  // Must ensure that we move an entire datagram, not just a HexBDG
  end
  else if(x.did == didRcv && !arbiterIn) begin
    datagramIngressRcvF.enq(y);
    egressWireInF.deq;
    if(y.isEOP) arbiterIn <= True;
  end
endrule

// TO WIRE // This is the complicated one... Round Robin scheduling scheme

rule funnelAck(arbiterOut && ackIngressRcvF.notEmpty);     // Datagram to Wire from Receiving unit
  egressWireOutF.enq(ackIngressRcvF.first);
  ackIngressRcvF.deq;
  if(ackIngressRcvF.first.isEOP) arbiterOut <= False;      // Hold lock until EOP
endrule


rule funnelDatagram(!arbiterOut && datagramIngressSndF.notEmpty);   // Datagram to Wire from Sending unit
  egressWireOutF.enq(datagramIngressSndF.first);
  datagramIngressSndF.deq;
  if(datagramIngressSndF.first.isEOP) arbiterOut <= True;           // Hold lock until EOP
endrule


/*interface Server ingressSnd;
  interface request = toGet(ackIngressSndF); 
  interface response = toPut(datagrammIngressSndF); 
endinterface*/
interface Server ingressSnd;
  interface request = toPut(datagramIngressSndF); 
  interface response = toGet(ackIngressSndF); 
endinterface

interface Client ingressRcv;
  interface request = toGet(datagramIngressRcvF); 
  interface response = toPut(ackIngressRcvF); 
endinterface

interface Client egressWire;
  interface request = toGet(egressWireOutF); 
  interface response = toPut(egressWireInF); 
endinterface

endmodule
