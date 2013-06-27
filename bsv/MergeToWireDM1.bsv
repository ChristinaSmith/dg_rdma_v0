// MergeToWireDM1.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import GetPut     ::*;
import FIFO       ::*;
import FIFOF       ::*;
import Vector     ::*;
import ClientServer ::*;

import DPPDefs    ::*;
import MLDefs     ::*;

interface MergeToWireDM1Ifc;
  interface Server#(HexBDG, HexBDG) ingressSnd;
  interface Client#(HexBDG, HexBDG) ingressRcv;
  interface Client#(HexBDG, HexBDG) egressWire;
endinterface

(* synthesize *)
module mkMergeToWireDM1(MergeToWireDM1Ifc);

FIFOF#(HexBDG)                datagramIngressSndF   <- mkFIFOF;
FIFO#(HexBDG)                 ackIngressSndF        <- mkFIFO;
FIFO#(HexBDG)                 datagramIngressRcvF   <- mkFIFO;
FIFOF#(HexBDG)                ackIngressRcvF        <- mkFIFOF;
FIFO#(HexBDG)                 egressWireOutF        <- mkFIFO;
FIFO#(HexBDG)                 egressWireInF         <- mkFIFO;
Reg#(UInt#(8))                ack                   <- mkReg(?);
Reg#(Bit#(16))                didDM1                <- mkReg('h2042);
Reg#(Bit#(16))                did                   <- mkReg(?);
Reg#(Bool)                    arbiter               <- mkReg(True);
Reg#(Bit#(2))                 header                <- mkReg(0);
Reg#(HexBDG)                  firstSnd              <- mkReg(?);
Reg#(Bool)                    idle                  <- mkReg(True);

// FROM WIRE //

rule grabDID(header == 0);                                    // grabs the did for this frame
  Vector#(10, Bit#(8)) tmp = take(egressWireInF.first.data); 
  DPPFrameHeader x = fromByteVector(tmp);
  did <= x.did;
  ack <= x.ac;
  header <= 1;
endrule

rule forwardDatagram(header == 1 && did == didDM1);           // Datagram from Wire is multiplexed to either Sending or Receiving unit in Data Mover
  HexBDG y;
    y = egressWireInF.first;                                  // In all other cases, just grab the first HexBDG off the FIFO and set it equal to y to be enq'd
  if(ack == 1) begin 
    ackIngressSndF.enq(y); 
    if(y.isEOP) begin egressWireInF.deq; end  // for ack, if it is the EOP, deq WireIn b/c ack datagrams are only two HexBDG's long and will drop out if we do not deq it at EOP
  end
  else if(ack == 0) begin
    datagramIngressRcvF.enq(y);
    egressWireInF.deq;
  end
  if(y.isEOP) begin                    // Must ensure that we move an entire datagram, not just a HexBDG
      header <= 0;                     // tell the holdL2header rule to snatch the L2 header for next frame and save in Reg
  end
endrule

// TO WIRE //

(* descending_urgency = "funnelDatagram, funnelAck, assignArbiter" *)

rule funnelAck(!arbiter);     // Datagram to Wire from Receiving unit
  egressWireOutF.enq(ackIngressRcvF.first);
  ackIngressRcvF.deq;
endrule


rule assignArbiter;

  idle <= ((datagramIngressSndF.notEmpty && !arbiter) || 
           (!ackIngressRcvF.notEmpty && datagramIngressSndF.first.isEOP && arbiter)) ? True : False;

arbiter <= ((idle && ackIngressRcvF.notEmpty && !datagramIngressSndF.notEmpty) ||
              (arbiter && datagramIngressSndF.first.isEOP && ackIngressRcvF.notEmpty)) ? False :
            ((datagramIngressSndF.notEmpty && !ackIngressRcvF.notEmpty && idle) ||
              (datagramIngressSndF.notEmpty && !arbiter) ||
              (arbiter && !datagramIngressSndF.first.isEOP)) ? True : False;  
endrule

rule funnelDatagram(arbiter);   // Datagram to Wire from Sending unit
  egressWireOutF.enq(datagramIngressSndF.first);
  datagramIngressSndF.deq;
endrule


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
