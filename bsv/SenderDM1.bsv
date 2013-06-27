// Generator.bsv - Generates stream of type Mesg of pseudo-random length with a terminating word tagged with EOP
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import ByteShifter ::*;
import MLDefs     ::*;
import DPPDefs    ::*;

import FIFO       ::*;
import FIFOF      ::*;
import GetPut     ::*;
import LFSR       ::*;
import Vector     ::*;
import ClientServer ::*;
import DefaultValue ::*;

interface SenderDM1Ifc;
  interface Get#(HexBDG) datagram;
  interface Put#(MLMesg) mesg;
endinterface


(* synthesize *)
module mkSenderDM1(SenderDM1Ifc);

// Module-Level Input and Output FIFOs...
FIFO#(MLMesg)           mesgIngressF      <- mkFIFO;     // Message-Level (ML) Inpt to this module
FIFO#(HexBDG)           datagramEgressF   <- mkFIFO;     // Datagram Egress from the module

FIFO#(Tuple2#(UInt#(5), HexByte))  bsEnqF  <- mkFIFO;

// Frame-Composition Coordinating State...
Reg#(FrmCompState)      fcs           <- mkReg(FrmHead); // State variable for the Frame Composition Process   
Reg#(Bool)              madeMeta      <- mkReg(False);   // Aux variable to signal if the Metadata MH/MD has been made
Reg#(UInt#(1))          mhPhase       <- mkReg(0);       // Used to funnel the 24B metadata to a <24B path
Reg#(UInt#(16))         mesgDataLen   <- mkRegU;         // Preserves after dequeue of mesgIngressF
Reg#(UInt#(16))         frameCompCnt  <- mkReg(0);       // Debug value counting compleyely composed frames
FIFOF#(UInt#(16))       fcF           <- mkFIFOF;         // Frame Compoisition FIFO gets a token when a frame is done  

// Frame and Message Header State...
Reg#(Bool)              fhValid       <- mkReg(False);
Reg#(DPPFrameHeader)    fh            <- mkReg(defaultValue);
Reg#(Bool)              mhValid       <- mkReg(False);
Reg#(DPPMessageHeader)  mh            <- mkReg(defaultValue);

// ByteShifter State...
ByteShifter#(16,16,48)  byteShifter   <- mkByteShifter;  // What we compose our frames into
Reg#(UInt#(16))         bytesRemainMD <- mkReg(0);       // How many more Bytes we need to enq this MD
Reg#(Bit#(8))           byteOut       <- mkRegU;         // Debug at output
Reg#(UInt#(16))         bytesDeqd     <- mkReg(0);       // Debug at output
Reg#(UInt#(16))         bytesInFrame  <- mkReg(0);       // Count of bytes put into ByteShifter per frame

Reg#(UInt#(16))         bytesToDeq    <- mkReg(0);       // Number of bytes in ByteShifter that should be removed to reach the end of a frame
Reg#(Bool)              bytesValid    <- mkReg(False);

// Frame Source/Departure Logic
Reg#(UInt#(16))         frameSrcCnt   <- mkReg(0);

Reg#(Bool)              eof           <- mkReg(False);


Reg#(UInt#(16))         bytesToEnqR    <- mkReg(0);


// Functions...
function Bit#(8) addX (Bit#(8) y, Bit#(8) x) = y + x;

function RDMAMeta metaMorpher (MLMeta m);
  RDMAMeta newMeta = defaultValue;
  newMeta.length = m.length;
  newMeta.opcode = m.opcode;
  newMeta.portID = 0;
  return newMeta;
endfunction

// Rules...

// genFH makes a new Frame Header when one is needed.
// By setting fhValid to True after firing, execution of this rule is suppressed
// until fhValid is cleared when the frame composition logic is done with it...
  
UInt#(16) length = truncate(getMeta(mesgIngressF.first).length); // get message length so that we can form correct frame header (is this a ZLM? zero length message) 

rule genFH (!fhValid);
//  UInt#(16) length = truncate(getMeta(mesgIngressF.first).length); // get message length so that we can form correct frame header (is this a ZLM? zero length message) 
  fh <= DPPFrameHeader {
    did : 16'h2042,      // Destination
    sid : 16'h1042,      // Source
    fs  : (fh.fs + 2),   // Increment the frame-sequence number
    as  : 0,             // Ack Start
    ac  : 0,             // Ack Count
    f   : (length == 0) ? 8'h00 : 8'h01  };      // Frame as at least one message, for ZLM is this 0 or 1? will have meta data TODO
  fhValid <= True;
endrule

// enqFH is always the first enq rule called in the Frame Composition Process...
//rule enqFH (fhValid && fcs==FrmHead && byteShifter.space_available >= 10);
rule enqFH (fhValid && fcs==FrmHead);
   Vector#(10,Bit#(8)) fhV = toByteVector(fh); // Convert fh to a ByteVector
//   byteShifter.enq(10, padHexByte(fhV));       // Enq into ByteShifter
   bsEnqF.enq(tuple2(10, padHexByte(fhV)));
   bytesInFrame <= bytesInFrame + 10;          // Increase bytesInFrame by number of bytes enqued into ByteShifter
   fhValid <= False;                           // Done with Frame Header
   fcs     <= MsgHead;                         // Move on to MsgHead
endrule

// genMH creates the MH that will be enqueued to the ByteShifter...
rule genMH (!mhValid && fcs==MsgHead);
  mesgDataLen <= truncate(getMeta(mesgIngressF.first).length); // Capture the mesgDataLen
  UInt#(16) lengthM = truncate(getMeta(mesgIngressF.first).length); // get message length so that we can form correct frame header (is this a ZLM? zero length message) 
  UInt#(16) bLenMD = (madeMeta) ? mesgDataLen : 8;    // TODO: Big-M message slicing to replace truncate
  //if length is 0 (event), adjust bytes to reflect padding to 16B boundary for next FH, else just take the length
  bytesRemainMD <= bLenMD;       // Update state so that enqMD can operate
  mh <= DPPMessageHeader {       // Update the Message Header structure...
    tid : (!madeMeta) ? mh.tid + 1 : mh.tid,  // Increment the transaction number only once per transaction
    fa  : 32'hFEED_C0DE,         // Flag address
    fv  : 32'hCAFE_BABE,         // Flag value
    nm  : (lengthM == 0) ? 1 : 2, // Number of messages in this transaction (should this be 1 or 0 for ZLM?) TODO
// fields above here same in all messages in the same transaction //
    ms  : (madeMeta) ? 0 : 1,    // Message sequence number UNUSED, can remove !!!!!
    da  : 32'hBEEF_F00D,         // Data address (target write address)
    dl  : bLenMD,                // Length in Bytes of data that follows in MD field
    mt  : (madeMeta) ? 0 : 1,    // Message Type UNUSED, can remove !!!!!!
    tm  : (madeMeta) ? 0 : (lengthM == 0) ? 0 : 1  }; // Trailing message: True if at least one message after this one, if false, check to see if this is a zero length message 
  mhValid <= True;
endrule

// enqMH will file to 24/12=2 cycles to enque a Message Header that has been made valid...
//rule enqMH (mhValid && fcs==MsgHead && byteShifter.space_available >= 12);
rule enqMH (mhValid && fcs==MsgHead);
  Vector#(24, Bit#(8)) mhV = toByteVector(mh);
  Vector#(12, Bit#(8)) mhhV = (mhPhase==0) ? takeAt(0,mhV) : takeAt(12,mhV);
  mhPhase <= (mhPhase==0) ? 1 : 0;
  if (mhPhase==1) begin  // Finished sending the Message Header...
    mhValid <= False;    // Done with Message Header
    fcs     <= MsgData;  // Move on to MsgData
  end
//  byteShifter.enq(12, padHexByte(mhhV));  // Enq into ByteShifter
   bsEnqF.enq(tuple2(12, padHexByte(mhhV)));
   bytesInFrame <= bytesInFrame + 12;          // Increase bytesInFrame by number of bytes enqued into ByteShifter
endrule

// The enqMD rule fires to enqueue to the ByteShifter any MD that follows a MH.
// We try to make it care as little as possible about if MD payload is metadata or data
// But it *does* care about madeMeta to know if it ths the metadata or data MD...

UInt#(6) bytesToEnq = truncate(min(bytesRemainMD, 16)); // Offer the min of "want" and "can"

//rule enqMD(fcs==MsgData && byteShifter.space_available >= bytesToEnq);
rule enqMD(fcs==MsgData);
  ///////////////////////////////////////////
 // bytesToEnqR <= min(bytesRemainMD, 16);
  ///////////////////////////////////////////


  UInt#(16) len = truncate(getMeta(mesgIngressF.first).length);
  mesgDataLen <= truncate(getMeta(mesgIngressF.first).length); // Capture the mesgDataLen
  // endOfFrame happens if we have madeMeta data and we have less than 16B of data OR if the length of the data is 0
  Bool endOfFrame = (madeMeta && (bytesRemainMD-extend(bytesToEnq)==0)) || (len == 0);
  
  RDMAMeta rMeta = metaMorpher(getMeta(mesgIngressF.first)); // Get and transform the metadata
  // if zero lenght (event), pad to 16B boundary for next frame, else go about normal business
  Vector#(8, Bit#(8)) rMetaV = toByteVector(rMeta); // Put metadata in a vector
 
  HexByte rData = getData(mesgIngressF.first);               // Same for the data  
  HexByte dataToEnq = (!madeMeta) ? padHexByte(rMetaV) : rData;  // Select which meta/mesg
  //altered fcs logic to accomodate for zero length messages (events), could need future work
  fcs <= (!madeMeta) ? (mesgDataLen == 0) ? FrmHead: MsgHead : (endOfFrame) ? FrmHead : MsgData;  // Next State
 // fcs <= (!madeMeta) ?  MsgHead : (endOfFrame) ? FrmHead : MsgData;  // Next State
  // madeMeta begins False, is True on the first enqMD, then remains set through the last enqMD...
  madeMeta <= !endOfFrame;  // madeMeta to remain asserted until all data fragments are sent

  if (endOfFrame) begin
    frameCompCnt <= frameCompCnt + 1;  // Bump Frame Composition Counter
    fcF.enq(bytesInFrame + extend(bytesToEnq)); // Place number of bytesInFrame in fcF
  end

  // Regardless of what kind of MD, do this...
  //byteShifter.enq(truncate(bytesToEnq), dataToEnq);

  ////////////////////////
 // bsEnqF.enq(tuple2(truncate(bytesToEnqR), dataToEnq));
  ////////////////////////////


  bsEnqF.enq(tuple2(truncate(bytesToEnq), dataToEnq));
  bytesInFrame <= (endOfFrame) ? 0 : bytesInFrame + extend(bytesToEnq); 
  bytesRemainMD <= bytesRemainMD - extend(bytesToEnq);
  mesgIngressF.deq;
endrule

rule enqByteShifter(byteShifter.space_available >= extend(tpl_1(bsEnqF.first)));
  byteShifter.enq(tpl_1(bsEnqF.first), tpl_2(bsEnqF.first));
  bsEnqF.deq;
endrule

////////////// Deq ByteShifter //////////////////

rule frameSourceComplete(bytesToDeq == 0);
  bytesToDeq <= fcF.first;
  bytesValid <= True;
  fcF.deq();
  frameSrcCnt <= frameSrcCnt + 1;
  $display("[%0d] Frame Source token %0d dequeued", $time, frameSrcCnt);
endrule



rule frameSourcePump(byteShifter.bytes_available >= 16 || eof);
  HexBDG out = ?;
  eof <= (bytesValid) && (bytesToDeq - bytesDeqd <= 32) && !eof;
  out.data = byteShifter.bytes_out;
  out.nbVal = (eof) ? truncate(bytesToDeq - bytesDeqd) : 16;
  out.isEOP = eof;
  byteShifter.deq(out.nbVal);
 // $display("Bytes on wire: %0x", reverse(out.data));
  bytesDeqd <= (eof) ? 0 : bytesDeqd + 16;
  if(eof)begin
    bytesToDeq <= 0;
    bytesValid <= False;
  end
  datagramEgressF.enq(out);
endrule

interface datagram = toGet(datagramEgressF);
interface mesg = toPut(mesgIngressF);
endmodule
