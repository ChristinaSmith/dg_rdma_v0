// Generator.bsv - Generates stream of type Mesg of pseudo-random length with a terminating word tagged with EOP
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs     ::*;
import DPPDefs    ::*;
import ByteShifter ::*;

import FIFO       ::*;
import GetPut     ::*;
import LFSR       ::*;
import Vector     ::*;
import ClientServer ::*;
import DefaultValue ::*;

interface ReceiverIfc;
  interface Put#(HexBDG) datagram;
  interface Get#(MLMesg) mesg;
endinterface

(* synthesize *)
module mkReceiver(ReceiverIfc);

// Module-Level Input and Output FIFOs
FIFO#(HexBDG)           datagramIngressF   <- mkFIFO;
FIFO#(MLMesg)           mesgEgressF   <- mkFIFO;

// Frame-Decomposition Coordinating State
Reg#(FrmCompState)      fds           <- mkReg(FrmHead); // State variable for the Frame Composition Process   
Reg#(UInt#(1))          mhPhase       <- mkReg(0);       // Used to funnel the 24B metadata to a <24B path
Reg#(Bool)              madeMeta      <- mkReg(False);   // Aux variable to signal if the Metadata MH/MD has been made

// Frame and Message Header State
FIFO#(UInt#(5))         nbValF        <- mkFIFO;
Reg#(DPPFrameHeader)    fh            <- mkReg(defaultValue);
Reg#(DPPMessageHeader)  mh            <- mkReg(defaultValue);
Reg#(Vector#(12, Bit#(8))) mhFirst    <- mkRegU;

// ByteShifter State
ByteShifter#(16,16,48)  byteShifter   <- mkByteShifter;  // What we compose our frames into
Reg#(UInt#(16))         bytesToDeq    <- mkReg(0);
Reg#(Bool)              bytesValid    <- mkReg(False);


function Bit#(8) addX (Bit#(8) y, Bit#(8) x) = y + x;

function Vector#(vsize, Bit#(8)) stripHexByte (HexByte b);
  Vector#(vsize, Bit#(8)) newVector = ?;
  for(Integer i=0; i<valueof(vsize); i=i+1) newVector[i] = b[i];
  return newVector;
endfunction

function MLMeta metaUnmorpher (RDMAMeta m);
  return MLMeta {length: m.length, opcode: m.opcode};
endfunction
 
///////////////// Enq ByteShifter ////////////////////

rule loadBS(byteShifter.space_available >= extend(datagramIngressF.first.nbVal));
  byteShifter.enq(datagramIngressF.first.nbVal, datagramIngressF.first.data);
  datagramIngressF.deq;

  if(datagramIngressF.first.isEOP) begin nbValF.enq(datagramIngressF.first.nbVal); $display("Receiver");end
endrule

//////////////// Deq ByteShifter /////////////////////

// Deq FrameHeader from ByteShifter, store in state
rule rmFrmHead(fds == FrmHead && byteShifter.bytes_available >= 10);
  HexByte tmpFH = byteShifter.bytes_out;
  Vector#(10,Bit#(8)) x = stripHexByte(tmpFH);
  fh <= fromByteVector(x);
  byteShifter.deq(10);
  fds <= MsgHead; 
  madeMeta <= False;
endrule

// Deq MessageHeader from ByteShifter, store in state
rule rmMsgHead(fds == MsgHead && byteShifter.bytes_available >= 12);
  HexByte tmpMH = byteShifter.bytes_out;
  if(mhPhase == 0) mhFirst <= stripHexByte(tmpMH);
  else begin 
    Vector#(12, Bit#(8)) mhSecond = stripHexByte(tmpMH);
    Vector#(24, Bit#(8)) mhCombined = append(mhFirst,mhSecond);
    DPPMessageHeader x = fromByteVector(mhCombined);
    mh <= x;
    bytesToDeq <= x.dl;
    bytesValid <= True;
  end
  byteShifter.deq(12);
  fds <= (mhPhase == 1) ? MsgData : MsgHead;
  mhPhase <= mhPhase + 1;
endrule

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// TODO: Optimize these three rules if possible!

// Deq Meta data
//rule rmMsgMeta(fds == MsgData && byteShifter.bytes_available >= 8 && bytesToDeq == 8 && bytesValid);
rule rmMsgMeta(fds == MsgData && byteShifter.bytes_available >= truncate(bytesToDeq) && bytesToDeq == 8 && bytesValid && /*added for length 8 messages*/madeMeta == False);
  HexByte tmp = byteShifter.bytes_out;
  Vector#(8, Bit#(8)) x = stripHexByte(tmp);
  RDMAMeta rMeta = fromByteVector(x);
  MLMeta meta = metaUnmorpher(rMeta);
  mesgEgressF.enq(tagged Meta meta);
  byteShifter.deq(8);
  madeMeta <= True;
  bytesValid <= False;
  fds <= (meta.length == 0) ? FrmHead : MsgHead;
  mhPhase <= 0;
  if(meta.length == 0) nbValF.deq;
endrule

// Deq data 16B
//rule rmMsgData16(fds == MsgData && byteShifter.bytes_available >= 16 && bytesValid && bytesToDeq >= 16);
rule rmMsgData16(fds == MsgData && byteShifter.bytes_available >= 16 && bytesValid && bytesToDeq >= 16);
  HexByte tmp = byteShifter.bytes_out;
  mesgEgressF.enq(tagged Data tmp);
  byteShifter.deq(16);
  bytesToDeq <= bytesToDeq - 16;
  UInt#(16) test = bytesToDeq - 16;
  if (test == 0) begin bytesValid <= False; fds <= FrmHead; nbValF.deq;end
endrule

// Deq data less than 16B not Meta
//rule rmMsgDataLT16(fds == MsgData && byteShifter.bytes_available >= truncate(bytesToDeq) && bytesValid && bytesToDeq < 16 && bytesToDeq > 0);
rule rmMsgDataLT16(fds == MsgData && byteShifter.bytes_available >= truncate(bytesToDeq) && bytesValid && bytesToDeq < 16 && bytesToDeq > 0);
  HexByte tmp = byteShifter.bytes_out;
  byteShifter.deq(truncate(bytesToDeq));
  bytesValid <= False;
  mesgEgressF.enq(tagged Data tmp);
  fds <= FrmHead;
  nbValF.deq;
endrule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*rule gobble;
  $display("Bytes on Wire: %0x", reverse(datagramIngressF.first.data));
  datagramIngressF.deq;
  $display("fds: %0x", fds);
  $display("FH: %0x, %0x, %0x, %0x, %0x, %0x", fh.did, fh.sid, fh.fs, fh.as, fh.ac, fh.f);
  $display("MH: %0x, %0x, %0x, %0x, %0x, %0x, %0x, %0x, %0x", mh.tid, mh.fa, mh.fv, mh.nm, mh.ms, mh.da, mh.dl, mh.mt, mh.tm);
endrule*/

interface datagram = toPut(datagramIngressF);
interface mesg = toGet(mesgEgressF);
endmodule
