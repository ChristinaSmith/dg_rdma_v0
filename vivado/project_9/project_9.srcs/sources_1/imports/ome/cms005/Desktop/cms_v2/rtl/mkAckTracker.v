//
// Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
//
// On Sun Jun 23 17:46:46 CDT 2013
//
// Method conflict info:
// Method: frameAck1_request_put
// Conflict-free: frameAck1_response_get,
// 	       frameAck2_request_put,
// 	       frameAck2_response_get,
// 	       ackIngress_put
// Conflicts: frameAck1_request_put
//
// Method: frameAck1_response_get
// Conflict-free: frameAck1_request_put,
// 	       frameAck2_request_put,
// 	       frameAck2_response_get,
// 	       ackIngress_put
// Conflicts: frameAck1_response_get
//
// Method: frameAck2_request_put
// Conflict-free: frameAck1_request_put,
// 	       frameAck1_response_get,
// 	       frameAck2_response_get,
// 	       ackIngress_put
// Conflicts: frameAck2_request_put
//
// Method: frameAck2_response_get
// Conflict-free: frameAck1_request_put,
// 	       frameAck1_response_get,
// 	       frameAck2_request_put,
// 	       ackIngress_put
// Conflicts: frameAck2_response_get
//
// Method: ackIngress_put
// Conflict-free: frameAck1_request_put,
// 	       frameAck1_response_get,
// 	       frameAck2_request_put,
// 	       frameAck2_response_get
// Conflicts: ackIngress_put
//
//
// Ports:
// Name                         I/O  size props
// RDY_frameAck1_request_put      O     1 reg
// frameAck1_response_get         O    16 reg
// RDY_frameAck1_response_get     O     1 reg
// RDY_frameAck2_request_put      O     1 reg
// frameAck2_response_get         O    16 reg
// RDY_frameAck2_response_get     O     1 reg
// RDY_ackIngress_put             O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// frameAck1_request_put          I    16 reg
// frameAck2_request_put          I    16 reg
// ackIngress_put                 I   134 reg
// EN_frameAck1_request_put       I     1
// EN_frameAck2_request_put       I     1
// EN_ackIngress_put              I     1
// EN_frameAck1_response_get      I     1
// EN_frameAck2_response_get      I     1
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

module mkAckTracker(CLK,
		    RST_N,

		    frameAck1_request_put,
		    EN_frameAck1_request_put,
		    RDY_frameAck1_request_put,

		    EN_frameAck1_response_get,
		    frameAck1_response_get,
		    RDY_frameAck1_response_get,

		    frameAck2_request_put,
		    EN_frameAck2_request_put,
		    RDY_frameAck2_request_put,

		    EN_frameAck2_response_get,
		    frameAck2_response_get,
		    RDY_frameAck2_response_get,

		    ackIngress_put,
		    EN_ackIngress_put,
		    RDY_ackIngress_put);
  input  CLK;
  input  RST_N;

  // action method frameAck1_request_put
  input  [15 : 0] frameAck1_request_put;
  input  EN_frameAck1_request_put;
  output RDY_frameAck1_request_put;

  // actionvalue method frameAck1_response_get
  input  EN_frameAck1_response_get;
  output [15 : 0] frameAck1_response_get;
  output RDY_frameAck1_response_get;

  // action method frameAck2_request_put
  input  [15 : 0] frameAck2_request_put;
  input  EN_frameAck2_request_put;
  output RDY_frameAck2_request_put;

  // actionvalue method frameAck2_response_get
  input  EN_frameAck2_response_get;
  output [15 : 0] frameAck2_response_get;
  output RDY_frameAck2_response_get;

  // action method ackIngress_put
  input  [133 : 0] ackIngress_put;
  input  EN_ackIngress_put;
  output RDY_ackIngress_put;

  // signals for module outputs
  wire [15 : 0] frameAck1_response_get, frameAck2_response_get;
  wire RDY_ackIngress_put,
       RDY_frameAck1_request_put,
       RDY_frameAck1_response_get,
       RDY_frameAck2_request_put,
       RDY_frameAck2_response_get;

  // ports of submodule ackIngressF
  wire [133 : 0] ackIngressF_D_IN, ackIngressF_D_OUT;
  wire ackIngressF_CLR,
       ackIngressF_DEQ,
       ackIngressF_EMPTY_N,
       ackIngressF_ENQ,
       ackIngressF_FULL_N;

  // ports of submodule fidEgressF1
  wire [15 : 0] fidEgressF1_D_IN, fidEgressF1_D_OUT;
  wire fidEgressF1_CLR,
       fidEgressF1_DEQ,
       fidEgressF1_EMPTY_N,
       fidEgressF1_ENQ,
       fidEgressF1_FULL_N;

  // ports of submodule fidEgressF2
  wire [15 : 0] fidEgressF2_D_IN, fidEgressF2_D_OUT;
  wire fidEgressF2_CLR,
       fidEgressF2_DEQ,
       fidEgressF2_EMPTY_N,
       fidEgressF2_ENQ,
       fidEgressF2_FULL_N;

  // ports of submodule fidF
  wire [15 : 0] fidF_D_IN, fidF_D_OUT;
  wire fidF_CLR, fidF_DEQ, fidF_EMPTY_N, fidF_ENQ, fidF_FULL_N;

  // ports of submodule fidIngressF1
  wire [15 : 0] fidIngressF1_D_IN, fidIngressF1_D_OUT;
  wire fidIngressF1_CLR,
       fidIngressF1_DEQ,
       fidIngressF1_EMPTY_N,
       fidIngressF1_ENQ,
       fidIngressF1_FULL_N;

  // ports of submodule fidIngressF2
  wire [15 : 0] fidIngressF2_D_IN, fidIngressF2_D_OUT;
  wire fidIngressF2_CLR,
       fidIngressF2_DEQ,
       fidIngressF2_EMPTY_N,
       fidIngressF2_ENQ,
       fidIngressF2_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_checkAckFDU1,
       CAN_FIRE_RL_getFID,
       CAN_FIRE_ackIngress_put,
       CAN_FIRE_frameAck1_request_put,
       CAN_FIRE_frameAck1_response_get,
       CAN_FIRE_frameAck2_request_put,
       CAN_FIRE_frameAck2_response_get,
       WILL_FIRE_RL_checkAckFDU1,
       WILL_FIRE_RL_getFID,
       WILL_FIRE_ackIngress_put,
       WILL_FIRE_frameAck1_request_put,
       WILL_FIRE_frameAck1_response_get,
       WILL_FIRE_frameAck2_request_put,
       WILL_FIRE_frameAck2_response_get;

  // remaining internal signals
  wire IF_fidIngressF1_first__0_EQ_fidF_first__1_2_TH_ETC___d22,
       fidF_i_notEmpty_AND_fidIngressF1_first__0_EQ_f_ETC___d24,
       fidIngressF1_first__0_EQ_fidF_first__1___d12,
       fidIngressF2_first__6_EQ_fidF_first__1___d17;

  // action method frameAck1_request_put
  assign RDY_frameAck1_request_put = fidIngressF1_FULL_N ;
  assign CAN_FIRE_frameAck1_request_put = fidIngressF1_FULL_N ;
  assign WILL_FIRE_frameAck1_request_put = EN_frameAck1_request_put ;

  // actionvalue method frameAck1_response_get
  assign frameAck1_response_get = fidEgressF1_D_OUT ;
  assign RDY_frameAck1_response_get = fidEgressF1_EMPTY_N ;
  assign CAN_FIRE_frameAck1_response_get = fidEgressF1_EMPTY_N ;
  assign WILL_FIRE_frameAck1_response_get = EN_frameAck1_response_get ;

  // action method frameAck2_request_put
  assign RDY_frameAck2_request_put = fidIngressF2_FULL_N ;
  assign CAN_FIRE_frameAck2_request_put = fidIngressF2_FULL_N ;
  assign WILL_FIRE_frameAck2_request_put = EN_frameAck2_request_put ;

  // actionvalue method frameAck2_response_get
  assign frameAck2_response_get = fidEgressF2_D_OUT ;
  assign RDY_frameAck2_response_get = fidEgressF2_EMPTY_N ;
  assign CAN_FIRE_frameAck2_response_get = fidEgressF2_EMPTY_N ;
  assign WILL_FIRE_frameAck2_response_get = EN_frameAck2_response_get ;

  // action method ackIngress_put
  assign RDY_ackIngress_put = ackIngressF_FULL_N ;
  assign CAN_FIRE_ackIngress_put = ackIngressF_FULL_N ;
  assign WILL_FIRE_ackIngress_put = EN_ackIngress_put ;

  // submodule ackIngressF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) ackIngressF(.RST(RST_N),
							.CLK(CLK),
							.D_IN(ackIngressF_D_IN),
							.ENQ(ackIngressF_ENQ),
							.DEQ(ackIngressF_DEQ),
							.CLR(ackIngressF_CLR),
							.D_OUT(ackIngressF_D_OUT),
							.FULL_N(ackIngressF_FULL_N),
							.EMPTY_N(ackIngressF_EMPTY_N));

  // submodule fidEgressF1
  FIFO2 #(.width(32'd16), .guarded(32'd1)) fidEgressF1(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(fidEgressF1_D_IN),
						       .ENQ(fidEgressF1_ENQ),
						       .DEQ(fidEgressF1_DEQ),
						       .CLR(fidEgressF1_CLR),
						       .D_OUT(fidEgressF1_D_OUT),
						       .FULL_N(fidEgressF1_FULL_N),
						       .EMPTY_N(fidEgressF1_EMPTY_N));

  // submodule fidEgressF2
  FIFO2 #(.width(32'd16), .guarded(32'd1)) fidEgressF2(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(fidEgressF2_D_IN),
						       .ENQ(fidEgressF2_ENQ),
						       .DEQ(fidEgressF2_DEQ),
						       .CLR(fidEgressF2_CLR),
						       .D_OUT(fidEgressF2_D_OUT),
						       .FULL_N(fidEgressF2_FULL_N),
						       .EMPTY_N(fidEgressF2_EMPTY_N));

  // submodule fidF
  FIFO2 #(.width(32'd16), .guarded(32'd1)) fidF(.RST(RST_N),
						.CLK(CLK),
						.D_IN(fidF_D_IN),
						.ENQ(fidF_ENQ),
						.DEQ(fidF_DEQ),
						.CLR(fidF_CLR),
						.D_OUT(fidF_D_OUT),
						.FULL_N(fidF_FULL_N),
						.EMPTY_N(fidF_EMPTY_N));

  // submodule fidIngressF1
  FIFO2 #(.width(32'd16), .guarded(32'd1)) fidIngressF1(.RST(RST_N),
							.CLK(CLK),
							.D_IN(fidIngressF1_D_IN),
							.ENQ(fidIngressF1_ENQ),
							.DEQ(fidIngressF1_DEQ),
							.CLR(fidIngressF1_CLR),
							.D_OUT(fidIngressF1_D_OUT),
							.FULL_N(fidIngressF1_FULL_N),
							.EMPTY_N(fidIngressF1_EMPTY_N));

  // submodule fidIngressF2
  FIFO2 #(.width(32'd16), .guarded(32'd1)) fidIngressF2(.RST(RST_N),
							.CLK(CLK),
							.D_IN(fidIngressF2_D_IN),
							.ENQ(fidIngressF2_ENQ),
							.DEQ(fidIngressF2_DEQ),
							.CLR(fidIngressF2_CLR),
							.D_OUT(fidIngressF2_D_OUT),
							.FULL_N(fidIngressF2_FULL_N),
							.EMPTY_N(fidIngressF2_EMPTY_N));

  // rule RL_getFID
  assign CAN_FIRE_RL_getFID = ackIngressF_EMPTY_N && fidF_FULL_N ;
  assign WILL_FIRE_RL_getFID = CAN_FIRE_RL_getFID ;

  // rule RL_checkAckFDU1
  assign CAN_FIRE_RL_checkAckFDU1 =
	     fidIngressF1_EMPTY_N &&
	     fidF_i_notEmpty_AND_fidIngressF1_first__0_EQ_f_ETC___d24 &&
	     (fidIngressF1_first__0_EQ_fidF_first__1___d12 ||
	      fidIngressF2_first__6_EQ_fidF_first__1___d17) ;
  assign WILL_FIRE_RL_checkAckFDU1 = CAN_FIRE_RL_checkAckFDU1 ;

  // submodule ackIngressF
  assign ackIngressF_D_IN = ackIngress_put ;
  assign ackIngressF_ENQ = EN_ackIngress_put ;
  assign ackIngressF_DEQ = CAN_FIRE_RL_getFID ;
  assign ackIngressF_CLR = 1'b0 ;

  // submodule fidEgressF1
  assign fidEgressF1_D_IN = fidF_D_OUT ;
  assign fidEgressF1_ENQ =
	     WILL_FIRE_RL_checkAckFDU1 &&
	     fidIngressF1_first__0_EQ_fidF_first__1___d12 ;
  assign fidEgressF1_DEQ = EN_frameAck1_response_get ;
  assign fidEgressF1_CLR = 1'b0 ;

  // submodule fidEgressF2
  assign fidEgressF2_D_IN = fidF_D_OUT ;
  assign fidEgressF2_ENQ =
	     WILL_FIRE_RL_checkAckFDU1 &&
	     !fidIngressF1_first__0_EQ_fidF_first__1___d12 &&
	     fidIngressF2_first__6_EQ_fidF_first__1___d17 ;
  assign fidEgressF2_DEQ = EN_frameAck2_response_get ;
  assign fidEgressF2_CLR = 1'b0 ;

  // submodule fidF
  assign fidF_D_IN = { ackIngressF_D_OUT[61:54], ackIngressF_D_OUT[69:62] } ;
  assign fidF_ENQ = CAN_FIRE_RL_getFID ;
  assign fidF_DEQ =
	     fidIngressF1_EMPTY_N &&
	     fidF_i_notEmpty_AND_fidIngressF1_first__0_EQ_f_ETC___d24 &&
	     (fidIngressF1_first__0_EQ_fidF_first__1___d12 ||
	      fidIngressF2_first__6_EQ_fidF_first__1___d17) ;
  assign fidF_CLR = 1'b0 ;

  // submodule fidIngressF1
  assign fidIngressF1_D_IN = frameAck1_request_put ;
  assign fidIngressF1_ENQ = EN_frameAck1_request_put ;
  assign fidIngressF1_DEQ =
	     WILL_FIRE_RL_checkAckFDU1 &&
	     fidIngressF1_first__0_EQ_fidF_first__1___d12 ;
  assign fidIngressF1_CLR = 1'b0 ;

  // submodule fidIngressF2
  assign fidIngressF2_D_IN = frameAck2_request_put ;
  assign fidIngressF2_ENQ = EN_frameAck2_request_put ;
  assign fidIngressF2_DEQ =
	     WILL_FIRE_RL_checkAckFDU1 &&
	     !fidIngressF1_first__0_EQ_fidF_first__1___d12 &&
	     fidIngressF2_first__6_EQ_fidF_first__1___d17 ;
  assign fidIngressF2_CLR = 1'b0 ;

  // remaining internal signals
  assign IF_fidIngressF1_first__0_EQ_fidF_first__1_2_TH_ETC___d22 =
	     fidIngressF1_first__0_EQ_fidF_first__1___d12 ?
	       fidEgressF1_FULL_N :
	       fidIngressF2_EMPTY_N &&
	       (!fidIngressF2_first__6_EQ_fidF_first__1___d17 ||
		fidEgressF2_FULL_N) ;
  assign fidF_i_notEmpty_AND_fidIngressF1_first__0_EQ_f_ETC___d24 =
	     fidF_EMPTY_N &&
	     (fidIngressF1_first__0_EQ_fidF_first__1___d12 ||
	      fidIngressF2_EMPTY_N) &&
	     IF_fidIngressF1_first__0_EQ_fidF_first__1_2_TH_ETC___d22 ;
  assign fidIngressF1_first__0_EQ_fidF_first__1___d12 =
	     fidIngressF1_D_OUT == fidF_D_OUT ;
  assign fidIngressF2_first__6_EQ_fidF_first__1___d17 =
	     fidIngressF2_D_OUT == fidF_D_OUT ;

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_checkAckFDU1)
	$display("AckTracker: ack received for frame %0x",
		 $unsigned(fidF_D_OUT));
  end
  // synopsys translate_on
endmodule  // mkAckTracker

