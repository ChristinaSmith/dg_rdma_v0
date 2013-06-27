// Generator.bsv - Generates stream of type Mesg of pseudo-random length with a terminating word tagged with EOP
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED
// Christina Smith

import MLDefs     ::*;

import FIFO       ::*;
import GetPut     ::*;
import LFSR       ::*;
import Vector     ::*;

interface MLProducerIfc;
//  interface GetS#(MLMeta) meta;
//  interface Get#(HexByte) data;
  interface Get#(MLMesg) mesg;
endinterface

//sls: Carefull! you were sending the test scenario in as FormalArgs, not FormalParams
// both work here. See pp 31 of ref guide. As long as you see the difference.

(* synthesize *)
module mkMLProducer#(UInt#(32)  length,
                     LengthMode lMode,
                     UInt#(32)  minL,
                     UInt#(32)  maxL, 
                     DataMode   dMode,
                     Bit#(8)    nukeVal)
                     (MLProducerIfc);

// sls: You had your data pattern as big-endian; we want little endian so we can count more easily...
function Bit#(8) asByte(Integer i) = fromInteger(i);
HexByte initHB = genWith(asByte);

//FIFO#(HexByte)          dataEgressF   <- mkFIFO;
//FIFO#(MLMeta)           metaEgressF   <- mkFIFO;
FIFO#(MLMesg)           mesgEgressF   <- mkFIFO;
FIFO#(UInt#(32))        nextLengthF   <- mkFIFO;
Reg#(UInt#(32))         lengthR       <- mkReg(0);
Reg#(Bit#(8))           opCode        <- mkReg(0);
Reg#(Bit#(8))           dataInitVal   <- mkReg(1);
Reg#(HexByte)           patternV      <- mkReg(initHB);
Reg#(Bool)              seedLFSR      <- mkReg(True);
Reg#(Bool)              first         <- mkReg(True);
Reg#(Bool)              zeroLen       <- mkReg(False);
Reg#(Bit#(9))           minLen        <- mkReg(maxBound);
Reg#(Bit#(9))           maxLen        <- mkReg(minBound);
Reg#(UInt#(32))         countHexByte  <- mkReg(0);
Reg#(Maybe#(UInt#(32))) bytesRemain   <- mkReg(tagged Invalid);
LFSR#(Bit#(32))         lfsr          <- mkLFSR_32;

function Bit#(8) addX (Bit#(8) y, Bit#(8) x) = y + x;

/////////////////////////////// Meta /////////////////////////////////// 

// sls: startLFSR was redundant = !seedLFSR
//  also used to clear action shadowing warning
//  also try to keep a space after the rule name and a predicate; otherwise it looks like a function

rule setupLFSR (seedLFSR);                                     
  seedLFSR  <= False;                                          
  lfsr.seed('h55555555);                                      
endrule

// Based upon our operating mode, this rule is responsible for generating the desired,
// deterministic sequence of message lengths and placing them in nextLengthF...
rule prepLength (!seedLFSR);
  UInt#(32) nextLength = ?;
  case (lMode) 
    Constant: nextLength = length;
    Incremental: begin
      nextLength = (first) ? length : lengthR + 1;
    end
    Random: begin
      UInt#(32) p = unpack(lfsr.value);
      if(p > minL && p < maxL) nextLength = p;
      lfsr.next;
    end
  endcase
  lengthR <= nextLength;
  first <= False;
  if(!first) nextLengthF.enq(lengthR);
endrule

// The generateMeta make a new metadata token once for each data message it describes,
// to accomplish this, it fires when the bytesRemain has become undefined, which could
// be the first time through, when a message has been sent or aborted...
rule generateMeta (!isValid(bytesRemain));
  opCode <= opCode + 1;
//  metaEgressF.enq(MLMeta{opcode:opCode, length:nextLengthF.first}); nextLengthF.deq;
  mesgEgressF.enq(tagged Meta MLMeta{opcode:opCode, length:nextLengthF.first}); nextLengthF.deq;
  bytesRemain <= tagged Valid nextLengthF.first;
  zeroLen <= (nextLengthF.first == 0);
endrule

////////////////////////////////// Data /////////////////////////////////////

//sls: Note that by using isValid(bytesRemain) and its negation, we can clearly
// separate the metadata creation from the message creation. Keep it simple!
// Compare predicate of generateMeta to genData... mutually exclusive by design

//sls: I changed your code so that there is just one rule for generating data;
// my motivation was that it was clearer and more concise

// This function returns the HexByte provided with 0-16 valid bytes unmodified
// If there are fewer than 16 valid Bytes, the invalid octets are "nuked" to nukeVal...
function HexByte nukeBytes(HexByte pat, UInt#(5) val);
  HexByte nbV;
  for (UInt#(5) i=0; i<16; i=i+1) nbV[i] = (i<val) ? pat[i] : nukeVal;  // copy or nuke
  return nbV;
endfunction

rule genData (isValid(bytesRemain));
  UInt#(32) br = fromMaybe(?,bytesRemain);  // br is bytesRemain with Maybe bit stripped
  Bool lastWord = (br<=16);                 // check if this will be our last hex word
  UInt#(5) numBytesValid = (lastWord) ? truncate(br) : 16;
  if(!zeroLen) mesgEgressF.enq(tagged Data nukeBytes(patternV,numBytesValid)); // Enq the properly masked patternV HexWord
  if(lastWord) begin
    case (dMode)
      ZeroOrigin: begin
        patternV <= initHB;
      end
      IncrementalOrigin: begin
        patternV <= map(addX(dataInitVal), initHB);
        dataInitVal <= dataInitVal + 1;
      end
      RollingCount: begin
        patternV <= map(addX(16), patternV);
      end
    endcase
  end 
  else patternV <= map(addX(16), patternV);                // Update rolling count patternV 
  bytesRemain <= (lastWord) ? tagged Invalid : tagged Valid (br-16);
endrule

// TODO: the patternV state variable depends upon:
// a) What the DataMode is
// b) If it is the end of the message or not (lastWord)
// Using a multi-arm if or case is fine here; since we are just changing what we assign
// to one variable

//interface meta = fifoToGetS(metaEgressF);
//interface data = toGet(dataEgressF);
interface mesg = toGet(mesgEgressF);
endmodule
