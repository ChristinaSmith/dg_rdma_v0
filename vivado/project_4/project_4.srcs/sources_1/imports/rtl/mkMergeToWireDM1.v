//
// Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
//
// On Sun Jun 16 16:19:14 CDT 2013
//
// Method conflict info:
// Method: ingressSnd_request_put
// Conflict-free: ingressSnd_response_get,
// 	       ingressRcv_request_get,
// 	       ingressRcv_response_put,
// 	       egressWire_request_get,
// 	       egressWire_response_put
// Conflicts: ingressSnd_request_put
//
// Method: ingressSnd_response_get
// Conflict-free: ingressSnd_request_put,
// 	       ingressRcv_request_get,
// 	       ingressRcv_response_put,
// 	       egressWire_request_get,
// 	       egressWire_response_put
// Conflicts: ingressSnd_response_get
//
// Method: ingressRcv_request_get
// Conflict-free: ingressSnd_request_put,
// 	       ingressSnd_response_get,
// 	       ingressRcv_response_put,
// 	       egressWire_request_get,
// 	       egressWire_response_put
// Conflicts: ingressRcv_request_get
//
// Method: ingressRcv_response_put
// Conflict-free: ingressSnd_request_put,
// 	       ingressSnd_response_get,
// 	       ingressRcv_request_get,
// 	       egressWire_request_get,
// 	       egressWire_response_put
// Conflicts: ingressRcv_response_put
//
// Method: egressWire_request_get
// Conflict-free: ingressSnd_request_put,
// 	       ingressSnd_response_get,
// 	       ingressRcv_request_get,
// 	       ingressRcv_response_put,
// 	       egressWire_response_put
// Conflicts: egressWire_request_get
//
// Method: egressWire_response_put
// Conflict-free: ingressSnd_request_put,
// 	       ingressSnd_response_get,
// 	       ingressRcv_request_get,
// 	       ingressRcv_response_put,
// 	       egressWire_request_get
// Conflicts: egressWire_response_put
//
//
// Ports:
// Name                         I/O  size props
// RDY_ingressSnd_request_put     O     1 reg
// ingressSnd_response_get        O   134 reg
// RDY_ingressSnd_response_get    O     1 reg
// ingressRcv_request_get         O   134 reg
// RDY_ingressRcv_request_get     O     1 reg
// RDY_ingressRcv_response_put    O     1 reg
// egressWire_request_get         O   134 reg
// RDY_egressWire_request_get     O     1 reg
// RDY_egressWire_response_put    O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ingressSnd_request_put         I   134 reg
// ingressRcv_response_put        I   134 reg
// egressWire_response_put        I   134 reg
// EN_ingressSnd_request_put      I     1
// EN_ingressRcv_response_put     I     1
// EN_egressWire_response_put     I     1
// EN_ingressSnd_response_get     I     1
// EN_ingressRcv_request_get      I     1
// EN_egressWire_request_get      I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkMergeToWireDM1(CLK,
			RST_N,

			ingressSnd_request_put,
			EN_ingressSnd_request_put,
			RDY_ingressSnd_request_put,

			EN_ingressSnd_response_get,
			ingressSnd_response_get,
			RDY_ingressSnd_response_get,

			EN_ingressRcv_request_get,
			ingressRcv_request_get,
			RDY_ingressRcv_request_get,

			ingressRcv_response_put,
			EN_ingressRcv_response_put,
			RDY_ingressRcv_response_put,

			EN_egressWire_request_get,
			egressWire_request_get,
			RDY_egressWire_request_get,

			egressWire_response_put,
			EN_egressWire_response_put,
			RDY_egressWire_response_put);
  input  CLK;
  input  RST_N;

  // action method ingressSnd_request_put
  input  [133 : 0] ingressSnd_request_put;
  input  EN_ingressSnd_request_put;
  output RDY_ingressSnd_request_put;

  // actionvalue method ingressSnd_response_get
  input  EN_ingressSnd_response_get;
  output [133 : 0] ingressSnd_response_get;
  output RDY_ingressSnd_response_get;

  // actionvalue method ingressRcv_request_get
  input  EN_ingressRcv_request_get;
  output [133 : 0] ingressRcv_request_get;
  output RDY_ingressRcv_request_get;

  // action method ingressRcv_response_put
  input  [133 : 0] ingressRcv_response_put;
  input  EN_ingressRcv_response_put;
  output RDY_ingressRcv_response_put;

  // actionvalue method egressWire_request_get
  input  EN_egressWire_request_get;
  output [133 : 0] egressWire_request_get;
  output RDY_egressWire_request_get;

  // action method egressWire_response_put
  input  [133 : 0] egressWire_response_put;
  input  EN_egressWire_response_put;
  output RDY_egressWire_response_put;

  // signals for module outputs
  wire [133 : 0] egressWire_request_get,
		 ingressRcv_request_get,
		 ingressSnd_response_get;
  wire RDY_egressWire_request_get,
       RDY_egressWire_response_put,
       RDY_ingressRcv_request_get,
       RDY_ingressRcv_response_put,
       RDY_ingressSnd_request_put,
       RDY_ingressSnd_response_get;

  // register ack
  reg [7 : 0] ack;
  wire [7 : 0] ack_D_IN;
  wire ack_EN;

  // register arbiterOut
  reg arbiterOut;
  wire arbiterOut_D_IN, arbiterOut_EN;

  // register deq
  reg deq;
  wire deq_D_IN, deq_EN;

  // register did
  reg [15 : 0] did;
  wire [15 : 0] did_D_IN;
  wire did_EN;

  // register didDM1
  reg [15 : 0] didDM1;
  wire [15 : 0] didDM1_D_IN;
  wire didDM1_EN;

  // register firstSnd
  reg [133 : 0] firstSnd;
  wire [133 : 0] firstSnd_D_IN;
  wire firstSnd_EN;

  // register header
  reg [1 : 0] header;
  reg [1 : 0] header_D_IN;
  wire header_EN;

  // register headerEnq
  reg headerEnq;
  wire headerEnq_D_IN, headerEnq_EN;

  // ports of submodule ackIngressRcvF
  wire [133 : 0] ackIngressRcvF_D_IN, ackIngressRcvF_D_OUT;
  wire ackIngressRcvF_CLR,
       ackIngressRcvF_DEQ,
       ackIngressRcvF_EMPTY_N,
       ackIngressRcvF_ENQ,
       ackIngressRcvF_FULL_N;

  // ports of submodule ackIngressSndF
  wire [133 : 0] ackIngressSndF_D_IN, ackIngressSndF_D_OUT;
  wire ackIngressSndF_CLR,
       ackIngressSndF_DEQ,
       ackIngressSndF_EMPTY_N,
       ackIngressSndF_ENQ,
       ackIngressSndF_FULL_N;

  // ports of submodule datagramIngressRcvF
  wire [133 : 0] datagramIngressRcvF_D_IN, datagramIngressRcvF_D_OUT;
  wire datagramIngressRcvF_CLR,
       datagramIngressRcvF_DEQ,
       datagramIngressRcvF_EMPTY_N,
       datagramIngressRcvF_ENQ,
       datagramIngressRcvF_FULL_N;

  // ports of submodule datagramIngressSndF
  wire [133 : 0] datagramIngressSndF_D_IN, datagramIngressSndF_D_OUT;
  wire datagramIngressSndF_CLR,
       datagramIngressSndF_DEQ,
       datagramIngressSndF_EMPTY_N,
       datagramIngressSndF_ENQ,
       datagramIngressSndF_FULL_N;

  // ports of submodule egressWireInF
  wire [133 : 0] egressWireInF_D_IN, egressWireInF_D_OUT;
  wire egressWireInF_CLR,
       egressWireInF_DEQ,
       egressWireInF_EMPTY_N,
       egressWireInF_ENQ,
       egressWireInF_FULL_N;

  // ports of submodule egressWireOutF
  wire [133 : 0] egressWireOutF_D_IN, egressWireOutF_D_OUT;
  wire egressWireOutF_CLR,
       egressWireOutF_DEQ,
       egressWireOutF_EMPTY_N,
       egressWireOutF_ENQ,
       egressWireOutF_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_forwardDatagram,
       CAN_FIRE_RL_funnelAck,
       CAN_FIRE_RL_funnelDatagram,
       CAN_FIRE_RL_grabDID,
       CAN_FIRE_RL_holdL2header,
       CAN_FIRE_egressWire_request_get,
       CAN_FIRE_egressWire_response_put,
       CAN_FIRE_ingressRcv_request_get,
       CAN_FIRE_ingressRcv_response_put,
       CAN_FIRE_ingressSnd_request_put,
       CAN_FIRE_ingressSnd_response_get,
       WILL_FIRE_RL_forwardDatagram,
       WILL_FIRE_RL_funnelAck,
       WILL_FIRE_RL_funnelDatagram,
       WILL_FIRE_RL_grabDID,
       WILL_FIRE_RL_holdL2header,
       WILL_FIRE_egressWire_request_get,
       WILL_FIRE_egressWire_response_put,
       WILL_FIRE_ingressRcv_request_get,
       WILL_FIRE_ingressRcv_response_put,
       WILL_FIRE_ingressSnd_request_put,
       WILL_FIRE_ingressSnd_response_get;

  // inputs to muxes for submodule ports
  wire [133 : 0] MUX_ackIngressSndF_enq_1__VAL_1;
  wire MUX_ackIngressSndF_enq_1__SEL_1,
       MUX_arbiterOut_write_1__VAL_1,
       MUX_arbiterOut_write_1__VAL_2,
       MUX_deq_write_1__SEL_1,
       MUX_header_write_1__SEL_1;

  // remaining internal signals
  wire [15 : 0] x__h5995;
  wire IF_ack_5_EQ_1_6_THEN_ackIngressSndF_i_notFull__ETC___d42,
       IF_headerEnq_3_THEN_firstSnd_2_BIT_0_8_ELSE_eg_ETC___d50,
       NOT_ack_5_EQ_0_6_7_OR_datagramIngressRcvF_i_no_ETC___d41,
       _dand1egressWireInF_EN_deq,
       deq_7_AND_IF_headerEnq_3_THEN_NOT_firstSnd_2_B_ETC___d33,
       egressWireInF_first_BITS_13_TO_6_CONCAT_egress_ETC___d10,
       egressWireInF_i_notEmpty_AND_NOT_egressWireInF_ETC___d18;

  // action method ingressSnd_request_put
  assign RDY_ingressSnd_request_put = datagramIngressSndF_FULL_N ;
  assign CAN_FIRE_ingressSnd_request_put = datagramIngressSndF_FULL_N ;
  assign WILL_FIRE_ingressSnd_request_put = EN_ingressSnd_request_put ;

  // actionvalue method ingressSnd_response_get
  assign ingressSnd_response_get = ackIngressSndF_D_OUT ;
  assign RDY_ingressSnd_response_get = ackIngressSndF_EMPTY_N ;
  assign CAN_FIRE_ingressSnd_response_get = ackIngressSndF_EMPTY_N ;
  assign WILL_FIRE_ingressSnd_response_get = EN_ingressSnd_response_get ;

  // actionvalue method ingressRcv_request_get
  assign ingressRcv_request_get = datagramIngressRcvF_D_OUT ;
  assign RDY_ingressRcv_request_get = datagramIngressRcvF_EMPTY_N ;
  assign CAN_FIRE_ingressRcv_request_get = datagramIngressRcvF_EMPTY_N ;
  assign WILL_FIRE_ingressRcv_request_get = EN_ingressRcv_request_get ;

  // action method ingressRcv_response_put
  assign RDY_ingressRcv_response_put = ackIngressRcvF_FULL_N ;
  assign CAN_FIRE_ingressRcv_response_put = ackIngressRcvF_FULL_N ;
  assign WILL_FIRE_ingressRcv_response_put = EN_ingressRcv_response_put ;

  // actionvalue method egressWire_request_get
  assign egressWire_request_get = egressWireOutF_D_OUT ;
  assign RDY_egressWire_request_get = egressWireOutF_EMPTY_N ;
  assign CAN_FIRE_egressWire_request_get = egressWireOutF_EMPTY_N ;
  assign WILL_FIRE_egressWire_request_get = EN_egressWire_request_get ;

  // action method egressWire_response_put
  assign RDY_egressWire_response_put = egressWireInF_FULL_N ;
  assign CAN_FIRE_egressWire_response_put = egressWireInF_FULL_N ;
  assign WILL_FIRE_egressWire_response_put = EN_egressWire_response_put ;

  // submodule ackIngressRcvF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) ackIngressRcvF(.RST(RST_N),
							   .CLK(CLK),
							   .D_IN(ackIngressRcvF_D_IN),
							   .ENQ(ackIngressRcvF_ENQ),
							   .DEQ(ackIngressRcvF_DEQ),
							   .CLR(ackIngressRcvF_CLR),
							   .D_OUT(ackIngressRcvF_D_OUT),
							   .FULL_N(ackIngressRcvF_FULL_N),
							   .EMPTY_N(ackIngressRcvF_EMPTY_N));

  // submodule ackIngressSndF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) ackIngressSndF(.RST(RST_N),
							   .CLK(CLK),
							   .D_IN(ackIngressSndF_D_IN),
							   .ENQ(ackIngressSndF_ENQ),
							   .DEQ(ackIngressSndF_DEQ),
							   .CLR(ackIngressSndF_CLR),
							   .D_OUT(ackIngressSndF_D_OUT),
							   .FULL_N(ackIngressSndF_FULL_N),
							   .EMPTY_N(ackIngressSndF_EMPTY_N));

  // submodule datagramIngressRcvF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramIngressRcvF(.RST(RST_N),
								.CLK(CLK),
								.D_IN(datagramIngressRcvF_D_IN),
								.ENQ(datagramIngressRcvF_ENQ),
								.DEQ(datagramIngressRcvF_DEQ),
								.CLR(datagramIngressRcvF_CLR),
								.D_OUT(datagramIngressRcvF_D_OUT),
								.FULL_N(datagramIngressRcvF_FULL_N),
								.EMPTY_N(datagramIngressRcvF_EMPTY_N));

  // submodule datagramIngressSndF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramIngressSndF(.RST(RST_N),
								.CLK(CLK),
								.D_IN(datagramIngressSndF_D_IN),
								.ENQ(datagramIngressSndF_ENQ),
								.DEQ(datagramIngressSndF_DEQ),
								.CLR(datagramIngressSndF_CLR),
								.D_OUT(datagramIngressSndF_D_OUT),
								.FULL_N(datagramIngressSndF_FULL_N),
								.EMPTY_N(datagramIngressSndF_EMPTY_N));

  // submodule egressWireInF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) egressWireInF(.RST(RST_N),
							  .CLK(CLK),
							  .D_IN(egressWireInF_D_IN),
							  .ENQ(egressWireInF_ENQ),
							  .DEQ(egressWireInF_DEQ),
							  .CLR(egressWireInF_CLR),
							  .D_OUT(egressWireInF_D_OUT),
							  .FULL_N(egressWireInF_FULL_N),
							  .EMPTY_N(egressWireInF_EMPTY_N));

  // submodule egressWireOutF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) egressWireOutF(.RST(RST_N),
							   .CLK(CLK),
							   .D_IN(egressWireOutF_D_IN),
							   .ENQ(egressWireOutF_ENQ),
							   .DEQ(egressWireOutF_DEQ),
							   .CLR(egressWireOutF_CLR),
							   .D_OUT(egressWireOutF_D_OUT),
							   .FULL_N(egressWireOutF_FULL_N),
							   .EMPTY_N(egressWireOutF_EMPTY_N));

  // rule RL_holdL2header
  assign CAN_FIRE_RL_holdL2header = egressWireInF_EMPTY_N && header == 2'd0 ;
  assign WILL_FIRE_RL_holdL2header = CAN_FIRE_RL_holdL2header ;

  // rule RL_grabDID
  assign CAN_FIRE_RL_grabDID =
	     egressWireInF_i_notEmpty_AND_NOT_egressWireInF_ETC___d18 &&
	     header == 2'd1 ;
  assign WILL_FIRE_RL_grabDID = CAN_FIRE_RL_grabDID ;

  // rule RL_forwardDatagram
  assign CAN_FIRE_RL_forwardDatagram =
	     (headerEnq || egressWireInF_EMPTY_N) &&
	     IF_ack_5_EQ_1_6_THEN_ackIngressSndF_i_notFull__ETC___d42 &&
	     header == 2'd2 &&
	     did == didDM1 ;
  assign WILL_FIRE_RL_forwardDatagram = CAN_FIRE_RL_forwardDatagram ;

  // rule RL_funnelAck
  assign CAN_FIRE_RL_funnelAck =
	     egressWireOutF_FULL_N && ackIngressRcvF_EMPTY_N && arbiterOut ;
  assign WILL_FIRE_RL_funnelAck = CAN_FIRE_RL_funnelAck ;

  // rule RL_funnelDatagram
  assign CAN_FIRE_RL_funnelDatagram =
	     egressWireOutF_FULL_N && datagramIngressSndF_EMPTY_N &&
	     !arbiterOut ;
  assign WILL_FIRE_RL_funnelDatagram = CAN_FIRE_RL_funnelDatagram ;

  // inputs to muxes for submodule ports
  assign MUX_ackIngressSndF_enq_1__SEL_1 =
	     WILL_FIRE_RL_forwardDatagram && ack == 8'd1 ;
  assign MUX_deq_write_1__SEL_1 =
	     WILL_FIRE_RL_forwardDatagram && (ack == 8'd1 || ack == 8'd0) ;
  assign MUX_header_write_1__SEL_1 =
	     WILL_FIRE_RL_forwardDatagram &&
	     IF_headerEnq_3_THEN_firstSnd_2_BIT_0_8_ELSE_eg_ETC___d50 ;
  assign MUX_ackIngressSndF_enq_1__VAL_1 =
	     headerEnq ? firstSnd : egressWireInF_D_OUT ;
  assign MUX_arbiterOut_write_1__VAL_1 =
	     !ackIngressRcvF_D_OUT[0] && ackIngressRcvF_EMPTY_N ;
  assign MUX_arbiterOut_write_1__VAL_2 =
	     datagramIngressSndF_D_OUT[0] || !datagramIngressSndF_EMPTY_N ;

  // register ack
  assign ack_D_IN = egressWireInF_D_OUT[77:70] ;
  assign ack_EN = CAN_FIRE_RL_grabDID ;

  // register arbiterOut
  assign arbiterOut_D_IN =
	     WILL_FIRE_RL_funnelAck ?
	       MUX_arbiterOut_write_1__VAL_1 :
	       MUX_arbiterOut_write_1__VAL_2 ;
  assign arbiterOut_EN =
	     WILL_FIRE_RL_funnelAck || WILL_FIRE_RL_funnelDatagram ;

  // register deq
  assign deq_D_IN = !MUX_deq_write_1__SEL_1 ;
  assign deq_EN =
	     WILL_FIRE_RL_forwardDatagram && (ack == 8'd1 || ack == 8'd0) ||
	     WILL_FIRE_RL_grabDID ;

  // register did
  assign did_D_IN =
	     { egressWireInF_D_OUT[13:6], egressWireInF_D_OUT[21:14] } ;
  assign did_EN =
	     egressWireInF_i_notEmpty_AND_NOT_egressWireInF_ETC___d18 &&
	     header == 2'd1 ;

  // register didDM1
  assign didDM1_D_IN = 16'h0 ;
  assign didDM1_EN = 1'b0 ;

  // register firstSnd
  assign firstSnd_D_IN = egressWireInF_D_OUT ;
  assign firstSnd_EN = CAN_FIRE_RL_holdL2header ;

  // register header
  always@(MUX_header_write_1__SEL_1 or
	  WILL_FIRE_RL_holdL2header or WILL_FIRE_RL_grabDID)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_header_write_1__SEL_1: header_D_IN = 2'd0;
      WILL_FIRE_RL_holdL2header: header_D_IN = 2'd1;
      WILL_FIRE_RL_grabDID: header_D_IN = 2'd2;
      default: header_D_IN = 2'b10 /* unspecified value */ ;
    endcase
  end
  assign header_EN =
	     WILL_FIRE_RL_forwardDatagram &&
	     IF_headerEnq_3_THEN_firstSnd_2_BIT_0_8_ELSE_eg_ETC___d50 ||
	     WILL_FIRE_RL_holdL2header ||
	     WILL_FIRE_RL_grabDID ;

  // register headerEnq
  assign headerEnq_D_IN = 1'd0 ;
  assign headerEnq_EN = WILL_FIRE_RL_forwardDatagram && headerEnq ;

  // submodule ackIngressRcvF
  assign ackIngressRcvF_D_IN = ingressRcv_response_put ;
  assign ackIngressRcvF_ENQ = EN_ingressRcv_response_put ;
  assign ackIngressRcvF_DEQ = CAN_FIRE_RL_funnelAck ;
  assign ackIngressRcvF_CLR = 1'b0 ;

  // submodule ackIngressSndF
  assign ackIngressSndF_D_IN =
	     MUX_ackIngressSndF_enq_1__SEL_1 ?
	       MUX_ackIngressSndF_enq_1__VAL_1 :
	       firstSnd ;
  assign ackIngressSndF_ENQ =
	     WILL_FIRE_RL_forwardDatagram && ack == 8'd1 ||
	     WILL_FIRE_RL_grabDID &&
	     egressWireInF_first_BITS_13_TO_6_CONCAT_egress_ETC___d10 &&
	     egressWireInF_D_OUT[77:70] == 8'd1 ;
  assign ackIngressSndF_DEQ = EN_ingressSnd_response_get ;
  assign ackIngressSndF_CLR = 1'b0 ;

  // submodule datagramIngressRcvF
  assign datagramIngressRcvF_D_IN = MUX_ackIngressSndF_enq_1__VAL_1 ;
  assign datagramIngressRcvF_ENQ =
	     WILL_FIRE_RL_forwardDatagram && ack == 8'd0 ;
  assign datagramIngressRcvF_DEQ = EN_ingressRcv_request_get ;
  assign datagramIngressRcvF_CLR = 1'b0 ;

  // submodule datagramIngressSndF
  assign datagramIngressSndF_D_IN = ingressSnd_request_put ;
  assign datagramIngressSndF_ENQ = EN_ingressSnd_request_put ;
  assign datagramIngressSndF_DEQ = CAN_FIRE_RL_funnelDatagram ;
  assign datagramIngressSndF_CLR = 1'b0 ;

  // submodule egressWireInF
  assign egressWireInF_D_IN = egressWire_response_put ;
  assign egressWireInF_ENQ = EN_egressWire_response_put ;
  assign egressWireInF_DEQ =
	     _dand1egressWireInF_EN_deq || WILL_FIRE_RL_holdL2header ;
  assign egressWireInF_CLR = 1'b0 ;

  // submodule egressWireOutF
  assign egressWireOutF_D_IN =
	     WILL_FIRE_RL_funnelAck ?
	       ackIngressRcvF_D_OUT :
	       datagramIngressSndF_D_OUT ;
  assign egressWireOutF_ENQ =
	     WILL_FIRE_RL_funnelAck || WILL_FIRE_RL_funnelDatagram ;
  assign egressWireOutF_DEQ = EN_egressWire_request_get ;
  assign egressWireOutF_CLR = 1'b0 ;

  // remaining internal signals
  assign IF_ack_5_EQ_1_6_THEN_ackIngressSndF_i_notFull__ETC___d42 =
	     (ack == 8'd1) ?
	       ackIngressSndF_FULL_N &&
	       (deq_7_AND_IF_headerEnq_3_THEN_NOT_firstSnd_2_B_ETC___d33 ||
		egressWireInF_EMPTY_N) :
	       NOT_ack_5_EQ_0_6_7_OR_datagramIngressRcvF_i_no_ETC___d41 ;
  assign IF_headerEnq_3_THEN_firstSnd_2_BIT_0_8_ELSE_eg_ETC___d50 =
	     headerEnq ? firstSnd[0] : egressWireInF_D_OUT[0] ;
  assign NOT_ack_5_EQ_0_6_7_OR_datagramIngressRcvF_i_no_ETC___d41 =
	     ack != 8'd0 ||
	     datagramIngressRcvF_FULL_N && (deq || egressWireInF_EMPTY_N) ;
  assign _dand1egressWireInF_EN_deq =
	     WILL_FIRE_RL_forwardDatagram &&
	     (ack == 8'd1 &&
	      (!deq ||
	       IF_headerEnq_3_THEN_firstSnd_2_BIT_0_8_ELSE_eg_ETC___d50) ||
	      ack == 8'd0 && !deq) ;
  assign deq_7_AND_IF_headerEnq_3_THEN_NOT_firstSnd_2_B_ETC___d33 =
	     deq && (headerEnq ? !firstSnd[0] : !egressWireInF_D_OUT[0]) ;
  assign egressWireInF_first_BITS_13_TO_6_CONCAT_egress_ETC___d10 =
	     x__h5995 == didDM1 ;
  assign egressWireInF_i_notEmpty_AND_NOT_egressWireInF_ETC___d18 =
	     egressWireInF_EMPTY_N &&
	     (!egressWireInF_first_BITS_13_TO_6_CONCAT_egress_ETC___d10 ||
	      egressWireInF_D_OUT[77:70] != 8'd1 ||
	      ackIngressSndF_FULL_N) ;
  assign x__h5995 =
	     { egressWireInF_D_OUT[13:6], egressWireInF_D_OUT[21:14] } ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        ack <= `BSV_ASSIGNMENT_DELAY 8'hAA;
	arbiterOut <= `BSV_ASSIGNMENT_DELAY 1'd0;
	deq <= `BSV_ASSIGNMENT_DELAY 1'd1;
	did <= `BSV_ASSIGNMENT_DELAY 16'hAAAA;
	didDM1 <= `BSV_ASSIGNMENT_DELAY 16'h2042;
	firstSnd <= `BSV_ASSIGNMENT_DELAY
	    134'h2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
	header <= `BSV_ASSIGNMENT_DELAY 2'd0;
	headerEnq <= `BSV_ASSIGNMENT_DELAY 1'd1;
      end
    else
      begin
        if (ack_EN) ack <= `BSV_ASSIGNMENT_DELAY ack_D_IN;
	if (arbiterOut_EN)
	  arbiterOut <= `BSV_ASSIGNMENT_DELAY arbiterOut_D_IN;
	if (deq_EN) deq <= `BSV_ASSIGNMENT_DELAY deq_D_IN;
	if (did_EN) did <= `BSV_ASSIGNMENT_DELAY did_D_IN;
	if (didDM1_EN) didDM1 <= `BSV_ASSIGNMENT_DELAY didDM1_D_IN;
	if (firstSnd_EN) firstSnd <= `BSV_ASSIGNMENT_DELAY firstSnd_D_IN;
	if (header_EN) header <= `BSV_ASSIGNMENT_DELAY header_D_IN;
	if (headerEnq_EN) headerEnq <= `BSV_ASSIGNMENT_DELAY headerEnq_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    ack = 8'hAA;
    arbiterOut = 1'h0;
    deq = 1'h0;
    did = 16'hAAAA;
    didDM1 = 16'hAAAA;
    firstSnd = 134'h2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
    header = 2'h2;
    headerEnq = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkMergeToWireDM1

