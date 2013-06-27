// FTop_mm705_toBit.bsv - the top level module
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
import QABS2HBDG       ::*;
import ForkSnd         ::*;
import MergeRcv        ::*;
import MergeToWireDM1  ::*;
import MDIO            ::*;
import GMAC            ::*;
import E8023           ::*;
import HBDG2QABS       ::*;
import QBGMAC          ::*;
import L2Inserter      ::*;
import L2Remover       ::*;

import Clocks          ::*;
import Connectable     ::*;
import FIFO            ::*;
import ClientServer    ::*;
import GetPut          ::*;
import Clocks          ::*;
import XilinxExtra     ::*;
import XilinxCells     ::*;
import Vector          ::*;

interface FTop_mm705Ifc;
  interface Reset                   gmii_rstn;           // GMII Reset driven out to Phy
  interface GMII_RS                 gmii;                // The GMII link RX/TX
  interface Clock                   rxclkBnd;            // GMII Rx Clock (Provided here for BSV interface rules)
  (* always_ready *) method Bit#(8) ledOut;  
endinterface

(* synthesize, default_clock_osc = "sys0_clk", default_reset = "sys0_rstn" *)
module mkFTop_mm705#(Clock sys1_clkp, Clock sys1_clkn,  // 125 MHz Ethernet XO Reference
                     Clock gmii_rx_clk)(FTop_mm705Ifc); // 125 MHz GMII RX Clock from Marvell Phy
//module mkFTop_mm705(FTop_mm705Ifc);

Clock               cc             <- exposeCurrentClock;
Reset               rstndb         <- mkAsyncResetFromCR(16, cc);

Clock               sys1_clki      <- mkClockIBUFDS_GTE2(True, sys1_clkp, sys1_clkn);
Clock               sys1_clk       <- mkClockBUFG(clocked_by sys1_clki);
Reset               sys1_rst       <- mkAsyncReset(1, rstndb, sys1_clk);
IDELAYCTRL          idc            <- mkMYIDELAYCTRL(1);

UInt#(32)  mLength = 8;
LengthMode lMode   = Constant;
DataMode   dMode   = ZeroOrigin;

// producer1 is the source that we generating in the Generator
// producer2 is the source that we are comparing against in the Checker

////////////// Sender for DM1 ///////////////////
MLProducerIfc      producer1DM1      <- mkMLProducer(reset_by rstndb, mLength, lMode, 0, 0, dMode, 8'hAA);
SenderDM1Ifc       senderDM1         <- mkSenderDM1(reset_by rstndb);
FDUIfc             fdu1DM1           <- mkFDU(reset_by rstndb);
FDUIfc             fdu2DM1           <- mkFDU(reset_by rstndb);
MergeForkFDUIfc    mfFDUDM1          <- mkMergeForkFDU(reset_by rstndb);
AckTrackerIfc      ackTrackerDM1     <- mkAckTracker(reset_by rstndb);
ForkSndIfc         forkSndDM1        <- mkForkSnd(reset_by rstndb);

////////////// Receiver for DM1 /////////////////
MLProducerIfc      producer2DM1      <- mkMLProducer(reset_by rstndb, mLength, lMode, 0, 0, dMode, 8'hEE);
MLConsumerIfc      consumerDM1       <- mkMLConsumer(reset_by rstndb);
ReceiverIfc        receiverDM1       <- mkReceiver(reset_by rstndb);
FAUIfc             fau1DM1           <- mkFAU(reset_by rstndb);
FAUIfc             fau2DM1           <- mkFAU(reset_by rstndb);
MergeForkFAUIfc    mfFAUDM1          <- mkMergeForkFAU(reset_by rstndb);
AckAggregatorDM1Ifc   ackAggregatorDM1  <- mkAckAggregatorDM1(reset_by rstndb);
MergeRcvIfc        mergeRcvDM1       <- mkMergeRcv(reset_by rstndb);

////////////// Wire for DM1 /////////////////////
MergeToWireDM1Ifc  mergeWireDM1      <- mkMergeToWireDM1(reset_by rstndb);
HBDG2QABSIfc        hbdg2qabs      <- mkHBDG2QABS(reset_by rstndb);
QABS2HBDGIfc        qabs2hbdg      <- mkQABS2HBDG(reset_by rstndb);
L2InserterIfc       l2header       <- mkL2Inserter(reset_by rstndb);
L2RemoverIfc        l2remover      <- mkL2Remover(reset_by rstndb);
QBGMACIfc           gmac         <- mkQBGMAC(gmii_rx_clk, sys1_clk, sys1_rst);


Reg#(Bit#(32)) cycleCount <- mkReg(0, reset_by rstndb);

rule countCycles;
  cycleCount <= cycleCount + 1;
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
mkConnection(mergeWireDM1.egressWire.request, hbdg2qabs.hIn); // need to fix this

// QABS2HBDG to MergeToWire
mkConnection(qabs2hbdg.hOut, mergeWireDM1.egressWire.response);

// HBDG2QABS to L2Inserter
mkConnection(hbdg2qabs.qOut, l2header.qIn);

// L2Inserter to QBGMAC tx
mkConnection(l2header.qOut, gmac.tx);

// QABS2HBDG to L2Remover
mkConnection(qabs2hbdg.qIn, l2remover. qOut);

// L2Remover to QBGMAC rx
mkConnection(l2remover.qIn, gmac.rx);

// L2Inserter to L2Remover (Debug)
//mkConnection(l2header.qOut, l2remover.qIn);

(* fire_when_enabled, no_implicit_conditions *)
  rule gbe_operate (True);
    gmac.rxOperate();
    gmac.txOperate();
  endrule

method Bit#(8) ledOut;
  Bit#(4) y = truncate(cycleCount >> 28);
  Bit#(8) z = {y, consumerDM1.correctCnt};
//  Bit#(8) z = {y, 15};
  return z;
endmethod

interface Reset     gmii_rstn = sys1_rst;
interface GMII_RS   gmii      = gmac.gmii;
interface Clock     rxclkBnd  = gmac.rxclkBnd;

endmodule

