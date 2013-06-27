// DPPDefs.bsv
// Copyright (c) 2012 Atomic Rules LLC - ALL RIGHTS RESERVED

package DPPDefs;

import Connectable     ::*;
import DefaultValue    ::*;
import GetPut          ::*;
import Reserved        ::*;
import TieOff          ::*;
import Vector          ::*;

// The ByteVector typeclass standardizes our way of converting to/from Byte vectors
// The convention we use is that...
//   the 0th Byte has the first "Byte on the wire"
//   the Nth Byte has the last  "Byte on the wire"

// TODO: How to properly apply the provisos Bits#(a,TMul#(n,8)) to toByteVector?

typeclass ByteVector #(type a, numeric type n);
//function Vector#(n,Bit#(8)) toByteVector(a x) = reverse(unpack(pack(x)));
  function Vector#(n,Bit#(8)) toByteVector(a x);
  function a                  fromByteVector(Vector#(n,Bit#(8)) x);
endtypeclass


// DPP Frame Header - 10B total...
typedef struct {
  Bit#(16)  did;   // Destination ID
  Bit#(16)  sid;   // Source ID
  UInt#(16) fs;    // Frame Sequence number (rolling count)
  UInt#(16) as;    // ACKstart (start of ACK sequence)
  UInt#(8)  ac;    // ACKCount (number of ACKs)
  Bit#(8)   f;     // Flags (0==ACK Only Frame; 1==Frame has at least 1 message)
} DPPFrameHeader deriving (Eq, Bits);  

instance DefaultValue#(DPPFrameHeader);
defaultValue =
  DPPFrameHeader {
    did:   0,
    sid:   0,
    fs:    0,
    as:    0,
    ac:    0,
    f:     0
  };
endinstance

instance ByteVector #(DPPFrameHeader, 10);
  function Vector#(10,Bit#(8)) toByteVector (DPPFrameHeader x) = reverse(unpack(pack(x)));
  function DPPFrameHeader fromByteVector (Vector#(10, Bit#(8)) x);
    return DPPFrameHeader {
      did: pack(reverse(takeAt(0, x))),
      sid: pack(reverse(takeAt(2, x))),
      fs:  unpack(pack(reverse(takeAt(4, x)))),
      as:  unpack(pack(reverse(takeAt(6, x)))),
      ac:  unpack(pack(reverse(takeAt(8, x)))),
      f:   pack(reverse(takeAt(9, x)))
    };
  endfunction
endinstance

// DPP Message Header - 24B total...
typedef struct {
  UInt#(32) tid;   // Transaction ID (rolling count)
  UInt#(32) fa;    // Flag Address
  Bit#(32)  fv;    // Flag Value
  UInt#(16) nm;    // Number of Messages in this transaction
  UInt#(16) ms;    // Message Sequence number scoped to this transaction
  UInt#(32) da;    // Data Address where this message should get written
  UInt#(16) dl;    // Data Length in Bytes of data that follows the header
  Bit#(8)   mt;    // Message Type (enum)
  Bit#(8)   tm;    // Trailimg Message (0=last message in frame;1=another message follows)
} DPPMessageHeader deriving (Eq, Bits); 

instance DefaultValue#(DPPMessageHeader);
defaultValue =
  DPPMessageHeader {
    tid:   0,
    fa:    0,
    fv:    0,
    nm:    0,
    ms:    0,
    da:    0,
    dl:    0,
    mt:    0,
    tm:    0
  };
endinstance

instance ByteVector #(DPPMessageHeader, 24);
  function Vector#(24,Bit#(8)) toByteVector (DPPMessageHeader x) = reverse(unpack(pack(x)));
  function DPPMessageHeader fromByteVector (Vector#(24, Bit#(8)) x);
    return DPPMessageHeader {
      tid: unpack(pack(reverse(takeAt(0, x)))),
      fa:  unpack(pack(reverse(takeAt(4, x)))),
      fv:  pack(reverse(takeAt(8, x))),
      nm:  unpack(pack(reverse(takeAt(12, x)))),
      ms:  unpack(pack(reverse(takeAt(14, x)))),
      da:  unpack(pack(reverse(takeAt(16, x)))),
      dl:  unpack(pack(reverse(takeAt(20, x)))),
      mt:  pack(reverse(takeAt(22, x))),
      tm:  pack(reverse(takeAt(23, x)))
    };
  endfunction
endinstance

// RDMA Protocol...

typedef struct {
  UInt#(32)   length;
  Bit#(8)     opcode;
  Bit#(8)     portID;
  Bit#(8)     byte6;
  Bit#(8)     byte7;
} RDMAMeta deriving (Bits, Eq);

instance DefaultValue#(RDMAMeta);
defaultValue = 
  RDMAMeta {
  length:  0,
  opcode:  0,
  portID:  0,
  byte6:   0,
  byte7:   1
};
endinstance

instance ByteVector #(RDMAMeta, 8);
  function Vector#(8,Bit#(8)) toByteVector (RDMAMeta x) = reverse(unpack(pack(x)));
  function RDMAMeta fromByteVector (Vector#(8, Bit#(8)) x);
    return RDMAMeta {
      length: unpack(pack(reverse(takeAt(0,x)))),
      opcode: pack(reverse(takeAt(4,x))),
      portID: pack(reverse(takeAt(5,x))),
      byte6:  pack(reverse(takeAt(6,x))),
      byte7:  pack(reverse(takeAt(7,x)))
    };
  endfunction
endinstance


typedef struct {
  UInt#(16) fid;
  UInt#(4)  fduID;
} FrameInFlight deriving (Bits, Eq);

endpackage: DPPDefs
