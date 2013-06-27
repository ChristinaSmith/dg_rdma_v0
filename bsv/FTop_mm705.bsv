// FTop_mm705.bsv - the top level module
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs          ::*; 
import MLProducer      ::*;
import MLConsumer      ::*;
import SenderDM1       ::*;
import Receiver        ::*;
import FDU             ::*;
import FAU             ::*;
import MergeForkFDU    ::*;
import MergeForkFAU    ::*;
import AckTracker      ::*;
import AckAggregatorDM1   ::*;
import HBDG2QABS       ::*;
import ForkSnd         ::*;
import MergeRcv        ::*;
import MergeToWireDM1  ::*;
//import GbeQABS         ::*;

import Clocks          ::*;
import Connectable     ::*;
import FIFO            ::*;
import ClientServer    ::*;
import GetPut          ::*;

module mkFTop_mm705(Empty);

Reg#(Bit#(32)) cycleCount <- mkReg(0);

UInt#(32)  mLength = 8;
//LengthMode lMode   = Incremental; 
LengthMode lMode   = Constant; 
DataMode   dMode   = ZeroOrigin;

// producer1 is the source that we generating in the Generator
// producer2 is the source that we are comparing against in the Checker

////////////// Sender for DM1 ///////////////////
MLProducerIfc      producer1DM1      <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hAA);
SenderDM1Ifc       senderDM1         <- mkSenderDM1;
FDUIfc             fdu1DM1           <- mkFDU;
FDUIfc             fdu2DM1           <- mkFDU;
MergeForkFDUIfc    mfFDUDM1          <- mkMergeForkFDU;
AckTrackerIfc      ackTrackerDM1     <- mkAckTracker;
ForkSndIfc         forkSndDM1        <- mkForkSnd;

////////////// Receiver for DM1 /////////////////
MLProducerIfc      producer2DM1      <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hEE);
MLConsumerIfc      consumerDM1       <- mkMLConsumer;
ReceiverIfc        receiverDM1       <- mkReceiver;
FAUIfc             fau1DM1           <- mkFAU;
FAUIfc             fau2DM1           <- mkFAU;
MergeForkFAUIfc    mfFAUDM1          <- mkMergeForkFAU;
AckAggregatorDM1Ifc   ackAggregatorDM1  <- mkAckAggregatorDM1;
MergeRcvIfc        mergeRcvDM1       <- mkMergeRcv;

////////////// Wire for DM1 /////////////////////
MergeToWireDM1Ifc  mergeWireDM1      <- mkMergeToWireDM1;

HBDG2QABSIfc       hbdg2qabs         <- mkHBDG2QABS;

//GbeQABSIfc         qabsFunnel        <- mkGbeQABS;

////////////// Sender for DM2 ///////////////////
//MLProducerIfc      producer1DM2      <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hAA);
//SenderDM2Ifc       senderDM2         <- mkSenderDM2;
//FDUIfc             fdu1DM2           <- mkFDU;
//FDUIfc             fdu2DM2           <- mkFDU;
//MergeForkFDUIfc    mfFDUDM2          <- mkMergeForkFDU;
//AckTrackerIfc      ackTrackerDM2     <- mkAckTracker;
//ForkSndIfc         forkSndDM2        <- mkForkSnd;

////////////// Receiver for DM2 /////////////////
//MLProducerIfc      producer2DM2      <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hEE);
//MLConsumerIfc      consumerDM2       <- mkMLConsumer;
//ReceiverIfc        receiverDM2       <- mkReceiver;
//FAUIfc             fau1DM2           <- mkFAU;
//FAUIfc             fau2DM2           <- mkFAU;
//MergeForkFAUIfc    mfFAUDM2          <- mkMergeForkFAU;
//AckAggregatorDM2Ifc   ackAggregatorDM2  <- mkAckAggregatorDM2;
//MergeRcvIfc        mergeRcvDM2       <- mkMergeRcv;

////////////// Wire for DM2 /////////////////////
//MergeToWireDM2Ifc     mergeWireDM2      <- mkMergeToWireDM2;


//HBDG2QABSIfc       hbdg2qabs      <- mkHBDG2QABS;

rule countCycles;
  cycleCount <= cycleCount + 1;
  if(cycleCount%100==0)$display("[%0d] simulation cycle:%0d ...", $time, cycleCount);
endrule

rule endSim;
  if(cycleCount == 2000)begin $display("Terminating Simulation..."); $finish; end
endrule

/////////////// Sender for DM1 ///////////////////

// MLProducer (payload source) to Sender
mkConnection(producer1DM1.mesg, senderDM1.mesg);

// Sender to ForkSnd
mkConnection(senderDM1.datagram, forkSndDM1.datagramSnd);

// ForkSnd to FDU#1 Datagram
mkConnection(forkSndDM1.datagramRcv1, fdu1DM1.datagramSnd);

// ForkSnd to FDU#1 free
mkConnection(forkSndDM1.free1, fdu1DM1.free);

// ForkSnd to FDU#2 Datagram
mkConnection(forkSndDM1.datagramRcv2, fdu2DM1.datagramSnd);

// ForkSnd to FDU#2 free
mkConnection(forkSndDM1.free2, fdu2DM1.free);

// FDU#1 to MergeForkFDU
mkConnection(fdu1DM1.datagramRcv, mfFDUDM1.ingress1);

// FDU#2 to MergeForkFDU
mkConnection(fdu2DM1.datagramRcv, mfFDUDM1.ingress2);

// FDU#1 to AckTracker
mkConnection(fdu1DM1.frameAck, ackTrackerDM1.frameAck1);

// FDU#2 to AckTracker
mkConnection(fdu2DM1.frameAck, ackTrackerDM1.frameAck2);

// MergeForkFDU to AckTracker
mkConnection(mfFDUDM1.ack, ackTrackerDM1.ackIngress);

////////////////// Receiver for DM1 ////////////////////

// MergeForkFAU to FAU#1 datagram
mkConnection(mfFAUDM1.egress1, fau1DM1.ingress);

// MergeForkFAU to FAU#1 free
mkConnection(mfFAUDM1.free1, fau1DM1.free);

// MergeForkFAU to FAU#2 datagram
mkConnection(mfFAUDM1.egress2, fau2DM1.ingress);

// MergeForkFAU to FAU#2 free
mkConnection(mfFAUDM1.free2, fau2DM1.free);

// AckAggregator to MergeForkFAU
mkConnection(ackAggregatorDM1.ackEgress, mfFAUDM1.ack);

// FAU#1 to AckAggregator
mkConnection(fau1DM1.frameAck, ackAggregatorDM1.frameAck1);

// FAU#2 to AckAggregator
mkConnection(fau2DM1.frameAck, ackAggregatorDM1.frameAck2);

// FAU#1 to MergeRcv 
mkConnection(fau1DM1.egress, mergeRcvDM1.datagramRcv1);

// FAU#2 to MergeRcv 
mkConnection(fau2DM1.egress, mergeRcvDM1.datagramRcv2);

// MergeRcv to Receiver
mkConnection(mergeRcvDM1.datagramSnd, receiverDM1.datagram);

// Receiver to Consumer
mkConnection(receiverDM1.mesg, consumerDM1.mesgReceived);

// Producer (control) to Consumer
mkConnection(consumerDM1.mesgExpected, producer2DM1.mesg);

/////////////////// WIRE FOR DM1 ///////////////////////

// MergeForkFDU to MergeToWire
mkConnection(mfFDUDM1.egress, mergeWireDM1.ingressSnd);

// MergeForkFAU to MergeToWire
mkConnection(mfFAUDM1.ingress, mergeWireDM1.ingressRcv);

// MergeToWire to HBDG2QABS
mkConnection(mergeWireDM1.egressWire, hbdg2qabs.hbdg);

// HBDG2QABS to GbeQABS
//mkConnection(hbdg2qabs.qabs, qabsFunnel.client);

////////////////// Sender for DM2   ///////////////////

// MLProducer (payload source) to Sender
/*mkConnection(producer1DM2.mesg, senderDM2.mesg);

// Sender to ForkSnd
mkConnection(senderDM2.datagram, forkSndDM2.datagramSnd);

// ForkSnd to FDU#1 Datagram
mkConnection(forkSndDM2.datagramRcv1, fdu1DM2.datagramSnd);

// ForkSnd to FDU#1 free
mkConnection(forkSndDM2.free1, fdu1DM2.free);

// ForkSnd to FDU#2 Datagram
mkConnection(forkSndDM2.datagramRcv2, fdu2DM2.datagramSnd);

// ForkSnd to FDU#2 free
mkConnection(forkSndDM2.free2, fdu2DM2.free);

// FDU#1 to MergeForkFDU
mkConnection(fdu1DM2.datagramRcv, mfFDUDM2.ingress1);

// FDU#2 to MergeForkFDU
mkConnection(fdu2DM2.datagramRcv, mfFDUDM2.ingress2);

// FDU#1 to AckTracker
mkConnection(fdu1DM2.frameAck, ackTrackerDM2.frameAck1);

// FDU#2 to AckTracker
mkConnection(fdu2DM2.frameAck, ackTrackerDM2.frameAck2);

// MergeForkFDU to AckTracker
mkConnection(mfFDUDM2.ack, ackTrackerDM2.ackIngress);

////////////////// Receiver for DM2 ///////////////////

// MergeForkFAU to FAU#1 datagram
mkConnection(mfFAUDM2.egress1, fau1DM2.ingress);

// MergeForkFAU to FAU#1 free
mkConnection(mfFAUDM2.free1, fau1DM2.free);

// MergeForkFAU to FAU#2 datagram
mkConnection(mfFAUDM2.egress2, fau2DM2.ingress);

// MergeForkFAU to FAU#2 free
mkConnection(mfFAUDM2.free2, fau2DM2.free);

// AckAggregator to MergeForkFAU
mkConnection(ackAggregatorDM2.ackEgress, mfFAUDM2.ack);

// FAU#1 to AckAggregator
mkConnection(fau1DM2.frameAck, ackAggregatorDM2.frameAck1);

// FAU#2 to AckAggregator
mkConnection(fau2DM2.frameAck, ackAggregatorDM2.frameAck2);

// FAU#1 to MergeRcv 
mkConnection(fau1DM2.egress, mergeRcvDM2.datagramRcv1);

// FAU#2 to MergeRcv 
mkConnection(fau2DM2.egress, mergeRcvDM2.datagramRcv2);

// MergeRcv to Receiver
mkConnection(mergeRcvDM2.datagramSnd, receiverDM2.datagram);

// Receiver to Consumer
mkConnection(receiverDM2.mesg, consumerDM2.mesgReceived);

// Producer (control) to Consumer
mkConnection(consumerDM2.mesgExpected, producer2DM2.mesg);

/////////////////// WIRE FOR DM2 ///////////////////////

// MergeForkFDU to MergeToWire
mkConnection(mfFDUDM2.egress, mergeWireDM2.ingressSnd);

// MergeForkFAU to MergeToWire
mkConnection(mfFAUDM2.ingress, mergeWireDM2.ingressRcv);

////////////////// Connect DM1 and DM2 //////////////////

mkConnection(mergeWireDM1.egressWire, mergeWireDM2.egressWire);
*/
endmodule
