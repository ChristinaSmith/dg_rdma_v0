// MergeToWireDM2.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import GetPut     ::*;
import FIFO       ::*;
import FIFOF       ::*;
import Vector     ::*;
import ClientServer ::*;

import DPPDefs    ::*;
import MLDefs     ::*;

interface MergeToWireDM2Ifc;
  interface Server#(HexBDG, HexBDG) ingressSnd;
  interface Client#(HexBDG, HexBDG) ingressRcv;
  interface Server#(HexBDG, HexBDG) egressWire;
endinterface

(* synthesize *)
module mkMergeToWireDM2(MergeToWireDM2Ifc);

FIFOF#(HexBDG)               datagramIngressSndF   <- mkFIFOF;
FIFO#(HexBDG)                ackIngressSndF        <- mkFIFO;
FIFO#(HexBDG)                datagramIngressRcvF   <- mkFIFO;
FIFOF#(HexBDG)               ackIngressRcvF        <- mkFIFOF;
FIFO#(HexBDG)                egressWireOutF        <- mkFIFO;
FIFO#(HexBDG)                egressWireInF         <- mkFIFO;
Reg#(UInt#(8))               ack                   <- mkReg(?);
Reg#(Bit#(16))               did                   <- mkReg(?);
Reg#(Bit#(16))               didDM2                <- mkReg('h2042);
Reg#(Bool)                   arbiterOut            <- mkReg(False);
Reg#(Bit#(2))                header                <- mkReg(0);
Reg#(Bool)                   headerEnq             <- mkReg(True);
Reg#(Bool)                   deq                   <- mkReg(True);
Reg#(HexBDG)                 firstSnd              <- mkReg(?);

// FROM WIRE //

rule holdL2header(header == 0);                                 // Grab the L2 header and save in a Reg, so that we can get access to the FH for did
  firstSnd <= egressWireInF.first;
  egressWireInF.deq;                                        // deq L2 header
  header <= 1;                                        // give forwardDatagram permission to trigger
endrule

rule grabDID(header == 1);                                 // grabs the did for this frame
  Vector#(10, Bit#(8)) tmp = take(egressWireInF.first.data); 
  DPPFrameHeader x = fromByteVector(tmp);
  did <= x.did;
  ack <= x.ac;
  header <= 2;
  deq <= True;
  if(x.did == didDM2 && x.ac == 1) ackIngressSndF.enq(firstSnd);  // if we have an ack, go ahed and send the L2 header, or we will lose it
endrule

rule forwardDatagram(header == 2 && did == didDM2);               // Datagram from Wire is multiplexed to either Sending or Receiving unit in Data Mover
  HexBDG y;
  if(headerEnq) begin                                       // Because we removed the L2 header from FIFO, we need to forward it, 
    y = firstSnd;                                    //  do this by setting y equal to the L2 header we saved in Reg in holdL2header rule
    headerEnq <= (headerEnq) ? False : (y.isEOP) ? True : headerEnq;                               // We only need to do this once each frame
  end                                   // is is true? then flip it. else, is it the end? then flip it, else leave it
  else begin
    y = egressWireInF.first;                          // In all other cases, just grab the first HexBDG off the FIFO and set it equal to y to be enq'd
  end
  if(ack == 1) begin 
    ackIngressSndF.enq(y); 
    if(deq == False || y.isEOP) begin egressWireInF.deq; end // for ack, if it is the EOP, deq WireIn b/c ack datagrams are only two HexBDG's long and will drop out if we do not deq it at EOP
    deq <= False;
  end
  else if(ack == 0) begin
    datagramIngressRcvF.enq(y);
    if(deq == False) begin egressWireInF.deq; end
    deq <= False;
  end
  if(y.isEOP) begin                // Must ensure that we move an entire datagram, not just a HexBDG
      header <= 0;                     // tell the holdL2header rule to snatch the L2 header for next frame and save in Reg
  end
endrule

// TO WIRE // 

rule funnelAck(arbiterOut /*&& ackIngressRcvF.notEmpty*/);     // Datagram to Wire from Receiving unit
  egressWireOutF.enq(ackIngressRcvF.first);
  ackIngressRcvF.deq;
arbiterOut <= (ackIngressRcvF.first.isEOP) ? False : (!ackIngressRcvF.notEmpty) ? False : True;
 // arbiterOut <= (ackIngressRcvF.first.isEOP || !ackIngressRcvF.notEmpty) ? False /*: (!ackIngressRcvF.notEmpty) ? False */: True;// Hold lock until EOP or if ackIngressRcvF doesnt have anything
endrule


rule assignArbiter;
//  if(!ackIngressRcvF.notEmpty) arbiterOut <= False;
arbiterOut <= (!ackIngressRcvF.notEmpty) ? False : True;
endrule 

rule funnelDatagram(!arbiterOut /*&& datagramIngressSndF.notEmpty*/);   // Datagram to Wire from Sending unit
  egressWireOutF.enq(datagramIngressSndF.first);
  datagramIngressSndF.deq;
arbiterOut <= (datagramIngressSndF.first.isEOP) ? True : (!datagramIngressSndF.notEmpty) ? True : False;// Hold lock until EOP or if ackIngressRcvF doesnt
 // arbiterOut <= (datagramIngressSndF.first.isEOP || !datagramIngressSndF.notEmpty) ? True /*: (!datagramIngressSndF.notEmpty) ? True*/ : False;// Hold lock until EOP or if ackIngressRcvF doesnt have anything
endrule


interface Server ingressSnd;
  interface request = toPut(datagramIngressSndF); 
  interface response = toGet(ackIngressSndF); 
endinterface

interface Client ingressRcv;
  interface request = toGet(datagramIngressRcvF); 
  interface response = toPut(ackIngressRcvF); 
endinterface

interface Server egressWire;
  interface request = toPut(egressWireInF); 
  interface response = toGet(egressWireOutF); 
endinterface

endmodule
