// FTop_mm705.bsv - the top level module
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs          ::*; 
import MLProducer      ::*;
import MLConsumer      ::*;
import Sender          ::*;
import Receiver        ::*;
import FDU             ::*;
import FAU             ::*;
import MergeForkFDU    ::*;
import MergeForkFAU    ::*;
import AckTracker      ::*;
import AckAggregator   ::*;
import HBDG2QABS       ::*;
import ForkSnd         ::*;
import MergeRcv        ::*;
import MergeToWire     ::*;

import Clocks          ::*;
import Connectable     ::*;
import FIFO            ::*;
import ClientServer    ::*;
import GetPut          ::*;

interface DataMoverIfc;
  interface Get#(HexBDG) egress;
  interface Put#(HexBDG) ingress;
endinterface

module mkDataMover(DataMoverIfc);

UInt#(32)  mLength = 8;
//LengthMode lMode   = Incremental; 
LengthMode lMode   = Constant; 
DataMode   dMode   = ZeroOrigin;

// producer1 is the source that we generating in the Generator
// producer2 is the source that we are comparing against in the Checker

MLProducerIfc      producer1      <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hAA);
MLProducerIfc      producer2      <- mkMLProducer(mLength, lMode, 0, 0, dMode, 8'hEE);
MLConsumerIfc      consumer       <- mkMLConsumer;
SenderIfc          sender         <- mkSender;
ReceiverIfc        receiver       <- mkReceiver;
FDUIfc             fdu1           <- mkFDU;
FDUIfc             fdu2           <- mkFDU;
FAUIfc             fau1           <- mkFAU;
FAUIfc             fau2           <- mkFAU;
MergeForkFDUIfc    mfFDU          <- mkMergeForkFDU;
MergeForkFAUIfc    mfFAU          <- mkMergeForkFAU;
AckTrackerIfc      ackTracker     <- mkAckTracker;
AckAggregatorIfc   ackAggregator  <- mkAckAggregator;
ForkSndIfc         forkSnd        <- mkForkSnd;
MergeRcvIfc        mergeRcv       <- mkMergeRcv;

FIFO#(HexBDG)      datagramEgressF  <- mkFIFO;
FIFO#(HexBDG)      datagramIngressF <- mkFIFO;

// MLProducer (payload source) to Sender
mkConnection(producer1.mesg, sender.mesg);

// Sender to ForkSnd
mkConnection(sender.datagram, forkSnd.datagramSnd);

// ForkSnd to FDU#1 Datagram
mkConnection(forkSnd.datagramRcv1, fdu1.datagramSnd);

// ForkSnd to FDU#1 free
mkConnection(forkSnd.free1, fdu1.free);

// ForkSnd to FDU#2 Datagram
mkConnection(forkSnd.datagramRcv2, fdu2.datagramSnd);

// ForkSnd to FDU#2 free
mkConnection(forkSnd.free2, fdu2.free);

// FDU#1 to MergeForkFDU
mkConnection(fdu1.datagramRcv, mfFDU.ingress1);

// FDU#2 to MergeForkFDU
mkConnection(fdu2.datagramRcv, mfFDU.ingress2);

// FDU#1 to AckTracker
mkConnection(fdu1.frameAck, ackTracker.frameAck1);

// FDU#2 to AckTracker
mkConnection(fdu2.frameAck, ackTracker.frameAck2);

// MergeForkFDU to AckTracker
mkConnection(mfFDU.ack, ackTracker.ackIngress);





// MergeForkFAU to FAU#1 datagram
mkConnection(mfFAU.egress1, fau1.ingress);

// MergeForkFAU to FAU#1 free
mkConnection(mfFAU.free1, fau1.free);

// MergeForkFAU to FAU#2 datagram
mkConnection(mfFAU.egress2, fau2.ingress);

// MergeForkFAU to FAU#2 free
mkConnection(mfFAU.free2, fau2.free);

// AckAggregator to MergeForkFAU
mkConnection(ackAggregator.ackEgress, mfFAU.ack);

// FAU#1 to AckAggregator
mkConnection(fau1.frameAck, ackAggregator.frameAck1);

// FAU#2 to AckAggregator
mkConnection(fau2.frameAck, ackAggregator.frameAck2);

// FAU#1 to MergeRcv 
mkConnection(fau1.egress, mergeRcv.datagramRcv1);

// FAU#2 to MergeRcv 
mkConnection(fau2.egress, mergeRcv.datagramRcv2);

// MergeRcv to Receiver
mkConnection(mergeRcv.datagramSnd, receiver.datagram);

// Receiver to Consumer
mkConnection(receiver.mesg, consumer.mesgReceived);

// Producer (control) to Consumer
mkConnection(consumer.mesgExpected, producer2.mesg);

interface ingress = toPut(datagramIngressF2);
interface egress  = toGet(datagramIngressF2);

endmodule
