// Checker.bsv - Compares two inputs for equality 
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs     ::*;

import GetPut     ::*;
import FIFO       ::*;
import Vector     ::*;
import ClientServer ::*;

interface MLConsumerIfc;
  interface Put#(MLMesg)  mesgExpected;
  interface Put#(MLMesg)  mesgReceived;
  method Bit#(4) correctCnt;
//  interface Put#(HexByte) dataExpected;
//  interface Put#(HexByte) dataReceived;
endinterface

(* synthesize *)
module mkMLConsumer(MLConsumerIfc);

FIFO#(MLMesg)           mesgIngressExpF <- mkFIFO;
FIFO#(MLMesg)           mesgIngressRcvF <- mkFIFO;
FIFO#(MLMeta)           metaIngressExpF <- mkFIFO;
FIFO#(MLMeta)           metaIngressRcvF <- mkFIFO;
FIFO#(HexByte)          dataIngressExpF <- mkFIFO;
FIFO#(HexByte)          dataIngressRcvF <- mkFIFO;
Reg#(Bool)              cmpMetaMatch    <- mkRegU;
Reg#(Bool)              cmpDataMatch    <- mkRegU;
Reg#(UInt#(32))         incorrectMeta   <- mkReg(0);
Reg#(UInt#(32))         incorrectData   <- mkReg(0);
Reg#(UInt#(32))         incorrect       <- mkReg(0);
Reg#(UInt#(32))         correctMeta     <- mkReg(0);
Reg#(UInt#(32))         correctData     <- mkReg(0);
Reg#(UInt#(32))         msgConsumeCnt   <- mkReg(0);
Reg#(Maybe#(UInt#(32))) bytesRemain     <- mkReg(tagged Invalid);

// sls: We need to take exactly one meta per message and then consume
//  the data. We will use the Maybe Type for bytesRemain in a manner similar
//  to MLProducer to accomplish the task...

rule forkMesgExp;
  case (mesgIngressExpF.first) matches
    tagged Meta .m: metaIngressExpF.enq(m);
    tagged Data .d: dataIngressExpF.enq(d);
  endcase
  mesgIngressExpF.deq;
endrule

rule forkMesgRcv;
  case (mesgIngressRcvF.first) matches
    tagged Meta .m: metaIngressRcvF.enq(m);
    tagged Data .d: dataIngressRcvF.enq(d);
  endcase
  mesgIngressRcvF.deq;
endrule 

rule compareMeta (!isValid(bytesRemain));
  MLMeta expd = metaIngressExpF.first;
  MLMeta rcvd = metaIngressRcvF.first;
  UInt#(32) rcvdLen = rcvd.length;

// sls: Note this assignment will also prevent this rule from re-firing until Invald
  bytesRemain <= tagged Valid rcvdLen;

  Bool metaMatch = (expd == rcvd);
  cmpMetaMatch <= metaMatch;

  if(metaMatch) begin 
    $display("[%0d] Meta Matched OK | expected | op: %0x, length: %0x | received | op: %0x, length %0x",
      $time, expd.opcode, expd.length, rcvd.opcode, rcvd.length);
    correctMeta <= correctMeta + 1;
  end else begin
    $display("[%0d] Meta Mismatch Error| expected | op: %0x, length: %0x | received | op: %0x, length %0x",
      $time, expd.opcode, expd.length, rcvd.opcode, rcvd.length);
    incorrectMeta <= incorrectMeta + 1;
  end
endrule

function HexByte nukeBytes(HexByte pat, UInt#(5) val);
  HexByte nbV;
  for (UInt#(5) i=0; i<16; i=i+1) nbV[i] = (i<val) ? pat[i] : 0;  // copy or nuke
  return nbV;
endfunction

rule compareData (isValid(bytesRemain));

  UInt#(32) br = fromMaybe(?,bytesRemain);  // br is bytesRemain with Maybe bit stripped
  Bool lastWord = (br<=16);                 // check if this will be our last hex word
  bytesRemain <= (lastWord) ? tagged Invalid : tagged Valid (br-16);
  Bool zeroLen = (br == 0);  

  if(!zeroLen) begin
    HexByte expd = dataIngressExpF.first;
    HexByte rcvd = dataIngressRcvF.first;
    dataIngressExpF.deq;
    dataIngressRcvF.deq;
  
    // TODO: Make comparison only depend on the valid bytes. In other words,
  // bytes that are not valid can mis-match without any error. Hint: You can
  // use nukeBytes to nuke *both* the expected and received!
    
    UInt#(5) numBytesValid = (lastWord) ? truncate(br) : 16;
    rcvd = nukeBytes(rcvd, numBytesValid);
    expd = nukeBytes(expd, numBytesValid);
    Bool dataMatch = (expd == rcvd);
    cmpDataMatch <= dataMatch;
  
    if(dataMatch) begin
      $display("[%0d] Data Match OK| expected | %0x | received | %0x", $time, expd, rcvd);
      correctData <= correctData + 1;
    end else begin
      $display("[%0d] Data Mismatch Error| expected | %0x | received | %0x", $time, expd, rcvd);
      incorrectData <= incorrectData + 1;
    end

  end

  if (lastWord) begin
    metaIngressExpF.deq;
    metaIngressRcvF.deq;
    msgConsumeCnt <= msgConsumeCnt + 1;
    $display("[%0d] MLConsumer has finished message %0d", $time, msgConsumeCnt);
  end

 endrule

 rule calcIncorrect;
  incorrect <=(incorrectData) | (incorrectMeta);
 endrule

  interface mesgExpected = toPut(mesgIngressExpF);  //create and use correct FIFO here
  interface mesgReceived = toPut(mesgIngressRcvF);
  method Bit#(4) correctCnt = pack(msgConsumeCnt)[3:0];
//  interface dataExpected = toPut(dataIngressExpF);
//  interface dataReceived = toPut(dataIngressRcvF);
endmodule
