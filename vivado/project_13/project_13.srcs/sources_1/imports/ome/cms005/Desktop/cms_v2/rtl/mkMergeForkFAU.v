//
// Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
//
// On Thu Jun 27 09:43:11 CDT 2013
//
// Method conflict info:
// Method: ingress_request_put
// Conflict-free: ingress_response_get,
// 	       egress1_get,
// 	       egress2_get,
// 	       ack_put,
// 	       free1_put,
// 	       free2_put
// Conflicts: ingress_request_put
//
// Method: ingress_response_get
// Conflict-free: ingress_request_put,
// 	       egress1_get,
// 	       egress2_get,
// 	       ack_put,
// 	       free1_put,
// 	       free2_put
// Conflicts: ingress_response_get
//
// Method: egress1_get
// Conflict-free: ingress_request_put,
// 	       ingress_response_get,
// 	       egress2_get,
// 	       ack_put,
// 	       free1_put,
// 	       free2_put
// Conflicts: egress1_get
//
// Method: egress2_get
// Conflict-free: ingress_request_put,
// 	       ingress_response_get,
// 	       egress1_get,
// 	       ack_put,
// 	       free1_put,
// 	       free2_put
// Conflicts: egress2_get
//
// Method: ack_put
// Conflict-free: ingress_request_put,
// 	       ingress_response_get,
// 	       egress1_get,
// 	       egress2_get,
// 	       free1_put,
// 	       free2_put
// Conflicts: ack_put
//
// Method: free1_put
// Conflict-free: ingress_request_put,
// 	       ingress_response_get,
// 	       egress1_get,
// 	       egress2_get,
// 	       ack_put,
// 	       free2_put
// Conflicts: free1_put
//
// Method: free2_put
// Conflict-free: ingress_request_put,
// 	       ingress_response_get,
// 	       egress1_get,
// 	       egress2_get,
// 	       ack_put,
// 	       free1_put
// Conflicts: free2_put
//
//
// Ports:
// Name                         I/O  size props
// RDY_ingress_request_put        O     1 reg
// ingress_response_get           O   134 reg
// RDY_ingress_response_get       O     1 reg
// egress1_get                    O   134 reg
// RDY_egress1_get                O     1 reg
// egress2_get                    O   134 reg
// RDY_egress2_get                O     1 reg
// RDY_ack_put                    O     1 reg
// RDY_free1_put                  O     1 reg
// RDY_free2_put                  O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// ingress_request_put            I   134 reg
// ack_put                        I   134 reg
// EN_ingress_request_put         I     1
// EN_ack_put                     I     1
// EN_free1_put                   I     1
// EN_free2_put                   I     1
// EN_ingress_response_get        I     1
// EN_egress1_get                 I     1
// EN_egress2_get                 I     1
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

module mkMergeForkFAU(CLK,
		      RST_N,

		      ingress_request_put,
		      EN_ingress_request_put,
		      RDY_ingress_request_put,

		      EN_ingress_response_get,
		      ingress_response_get,
		      RDY_ingress_response_get,

		      EN_egress1_get,
		      egress1_get,
		      RDY_egress1_get,

		      EN_egress2_get,
		      egress2_get,
		      RDY_egress2_get,

		      ack_put,
		      EN_ack_put,
		      RDY_ack_put,

		      EN_free1_put,
		      RDY_free1_put,

		      EN_free2_put,
		      RDY_free2_put);
  input  CLK;
  input  RST_N;

  // action method ingress_request_put
  input  [133 : 0] ingress_request_put;
  input  EN_ingress_request_put;
  output RDY_ingress_request_put;

  // actionvalue method ingress_response_get
  input  EN_ingress_response_get;
  output [133 : 0] ingress_response_get;
  output RDY_ingress_response_get;

  // actionvalue method egress1_get
  input  EN_egress1_get;
  output [133 : 0] egress1_get;
  output RDY_egress1_get;

  // actionvalue method egress2_get
  input  EN_egress2_get;
  output [133 : 0] egress2_get;
  output RDY_egress2_get;

  // action method ack_put
  input  [133 : 0] ack_put;
  input  EN_ack_put;
  output RDY_ack_put;

  // action method free1_put
  input  EN_free1_put;
  output RDY_free1_put;

  // action method free2_put
  input  EN_free2_put;
  output RDY_free2_put;

  // signals for module outputs
  wire [133 : 0] egress1_get, egress2_get, ingress_response_get;
  wire RDY_ack_put,
       RDY_egress1_get,
       RDY_egress2_get,
       RDY_free1_put,
       RDY_free2_put,
       RDY_ingress_request_put,
       RDY_ingress_response_get;

  // register control
  reg control;
  wire control_D_IN, control_EN;

  // register frameNum
  reg [15 : 0] frameNum;
  wire [15 : 0] frameNum_D_IN;
  wire frameNum_EN;

  // ports of submodule ackEgressF
  wire [133 : 0] ackEgressF_D_IN, ackEgressF_D_OUT;
  wire ackEgressF_CLR,
       ackEgressF_DEQ,
       ackEgressF_EMPTY_N,
       ackEgressF_ENQ,
       ackEgressF_FULL_N;

  // ports of submodule ackIngressF
  wire [133 : 0] ackIngressF_D_IN, ackIngressF_D_OUT;
  wire ackIngressF_CLR,
       ackIngressF_DEQ,
       ackIngressF_EMPTY_N,
       ackIngressF_ENQ,
       ackIngressF_FULL_N;

  // ports of submodule datagramEgressF1
  wire [133 : 0] datagramEgressF1_D_IN, datagramEgressF1_D_OUT;
  wire datagramEgressF1_CLR,
       datagramEgressF1_DEQ,
       datagramEgressF1_EMPTY_N,
       datagramEgressF1_ENQ,
       datagramEgressF1_FULL_N;

  // ports of submodule datagramEgressF2
  wire [133 : 0] datagramEgressF2_D_IN, datagramEgressF2_D_OUT;
  wire datagramEgressF2_CLR,
       datagramEgressF2_DEQ,
       datagramEgressF2_EMPTY_N,
       datagramEgressF2_ENQ,
       datagramEgressF2_FULL_N;

  // ports of submodule datagramIngressF
  wire [133 : 0] datagramIngressF_D_IN, datagramIngressF_D_OUT;
  wire datagramIngressF_CLR,
       datagramIngressF_DEQ,
       datagramIngressF_EMPTY_N,
       datagramIngressF_ENQ,
       datagramIngressF_FULL_N;

  // ports of submodule freeF1
  wire freeF1_CLR, freeF1_DEQ, freeF1_EMPTY_N, freeF1_ENQ, freeF1_FULL_N;

  // ports of submodule freeF2
  wire freeF2_CLR, freeF2_DEQ, freeF2_EMPTY_N, freeF2_ENQ, freeF2_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_pumpAck,
       CAN_FIRE_RL_pumpFrame1,
       CAN_FIRE_RL_pumpFrame2,
       CAN_FIRE_ack_put,
       CAN_FIRE_egress1_get,
       CAN_FIRE_egress2_get,
       CAN_FIRE_free1_put,
       CAN_FIRE_free2_put,
       CAN_FIRE_ingress_request_put,
       CAN_FIRE_ingress_response_get,
       WILL_FIRE_RL_pumpAck,
       WILL_FIRE_RL_pumpFrame1,
       WILL_FIRE_RL_pumpFrame2,
       WILL_FIRE_ack_put,
       WILL_FIRE_egress1_get,
       WILL_FIRE_egress2_get,
       WILL_FIRE_free1_put,
       WILL_FIRE_free2_put,
       WILL_FIRE_ingress_request_put,
       WILL_FIRE_ingress_response_get;

  // inputs to muxes for submodule ports
  wire MUX_control_write_1__VAL_1, MUX_control_write_1__VAL_2;

  // remaining internal signals
  wire _dor1frameNum_EN_write;

  // action method ingress_request_put
  assign RDY_ingress_request_put = datagramIngressF_FULL_N ;
  assign CAN_FIRE_ingress_request_put = datagramIngressF_FULL_N ;
  assign WILL_FIRE_ingress_request_put = EN_ingress_request_put ;

  // actionvalue method ingress_response_get
  assign ingress_response_get = ackEgressF_D_OUT ;
  assign RDY_ingress_response_get = ackEgressF_EMPTY_N ;
  assign CAN_FIRE_ingress_response_get = ackEgressF_EMPTY_N ;
  assign WILL_FIRE_ingress_response_get = EN_ingress_response_get ;

  // actionvalue method egress1_get
  assign egress1_get = datagramEgressF1_D_OUT ;
  assign RDY_egress1_get = datagramEgressF1_EMPTY_N ;
  assign CAN_FIRE_egress1_get = datagramEgressF1_EMPTY_N ;
  assign WILL_FIRE_egress1_get = EN_egress1_get ;

  // actionvalue method egress2_get
  assign egress2_get = datagramEgressF2_D_OUT ;
  assign RDY_egress2_get = datagramEgressF2_EMPTY_N ;
  assign CAN_FIRE_egress2_get = datagramEgressF2_EMPTY_N ;
  assign WILL_FIRE_egress2_get = EN_egress2_get ;

  // action method ack_put
  assign RDY_ack_put = ackIngressF_FULL_N ;
  assign CAN_FIRE_ack_put = ackIngressF_FULL_N ;
  assign WILL_FIRE_ack_put = EN_ack_put ;

  // action method free1_put
  assign RDY_free1_put = freeF1_FULL_N ;
  assign CAN_FIRE_free1_put = freeF1_FULL_N ;
  assign WILL_FIRE_free1_put = EN_free1_put ;

  // action method free2_put
  assign RDY_free2_put = freeF2_FULL_N ;
  assign CAN_FIRE_free2_put = freeF2_FULL_N ;
  assign WILL_FIRE_free2_put = EN_free2_put ;

  // submodule ackEgressF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) ackEgressF(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(ackEgressF_D_IN),
						       .ENQ(ackEgressF_ENQ),
						       .DEQ(ackEgressF_DEQ),
						       .CLR(ackEgressF_CLR),
						       .D_OUT(ackEgressF_D_OUT),
						       .FULL_N(ackEgressF_FULL_N),
						       .EMPTY_N(ackEgressF_EMPTY_N));

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

  // submodule datagramEgressF1
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramEgressF1(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(datagramEgressF1_D_IN),
							     .ENQ(datagramEgressF1_ENQ),
							     .DEQ(datagramEgressF1_DEQ),
							     .CLR(datagramEgressF1_CLR),
							     .D_OUT(datagramEgressF1_D_OUT),
							     .FULL_N(datagramEgressF1_FULL_N),
							     .EMPTY_N(datagramEgressF1_EMPTY_N));

  // submodule datagramEgressF2
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramEgressF2(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(datagramEgressF2_D_IN),
							     .ENQ(datagramEgressF2_ENQ),
							     .DEQ(datagramEgressF2_DEQ),
							     .CLR(datagramEgressF2_CLR),
							     .D_OUT(datagramEgressF2_D_OUT),
							     .FULL_N(datagramEgressF2_FULL_N),
							     .EMPTY_N(datagramEgressF2_EMPTY_N));

  // submodule datagramIngressF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramIngressF(.RST(RST_N),
							     .CLK(CLK),
							     .D_IN(datagramIngressF_D_IN),
							     .ENQ(datagramIngressF_ENQ),
							     .DEQ(datagramIngressF_DEQ),
							     .CLR(datagramIngressF_CLR),
							     .D_OUT(datagramIngressF_D_OUT),
							     .FULL_N(datagramIngressF_FULL_N),
							     .EMPTY_N(datagramIngressF_EMPTY_N));

  // submodule freeF1
  FIFO10 #(.guarded(32'd1)) freeF1(.RST(RST_N),
				   .CLK(CLK),
				   .ENQ(freeF1_ENQ),
				   .DEQ(freeF1_DEQ),
				   .CLR(freeF1_CLR),
				   .FULL_N(freeF1_FULL_N),
				   .EMPTY_N(freeF1_EMPTY_N));

  // submodule freeF2
  FIFO10 #(.guarded(32'd1)) freeF2(.RST(RST_N),
				   .CLK(CLK),
				   .ENQ(freeF2_ENQ),
				   .DEQ(freeF2_DEQ),
				   .CLR(freeF2_CLR),
				   .FULL_N(freeF2_FULL_N),
				   .EMPTY_N(freeF2_EMPTY_N));

  // rule RL_pumpFrame1
  assign CAN_FIRE_RL_pumpFrame1 =
	     datagramEgressF1_FULL_N && datagramIngressF_EMPTY_N &&
	     (!datagramIngressF_D_OUT[0] || freeF1_EMPTY_N) &&
	     control ;
  assign WILL_FIRE_RL_pumpFrame1 = CAN_FIRE_RL_pumpFrame1 ;

  // rule RL_pumpFrame2
  assign CAN_FIRE_RL_pumpFrame2 =
	     datagramIngressF_EMPTY_N && datagramEgressF2_FULL_N &&
	     (!datagramIngressF_D_OUT[0] || freeF2_EMPTY_N) &&
	     !control ;
  assign WILL_FIRE_RL_pumpFrame2 = CAN_FIRE_RL_pumpFrame2 ;

  // rule RL_pumpAck
  assign CAN_FIRE_RL_pumpAck = ackEgressF_FULL_N && ackIngressF_EMPTY_N ;
  assign WILL_FIRE_RL_pumpAck = CAN_FIRE_RL_pumpAck ;

  // inputs to muxes for submodule ports
  assign MUX_control_write_1__VAL_1 =
	     (!datagramIngressF_D_OUT[0] || freeF1_EMPTY_N) &&
	     (!datagramIngressF_D_OUT[0] || !freeF2_EMPTY_N) ;
  assign MUX_control_write_1__VAL_2 =
	     datagramIngressF_D_OUT[0] &&
	     (!freeF2_EMPTY_N || freeF1_EMPTY_N) ;

  // register control
  assign control_D_IN =
	     WILL_FIRE_RL_pumpFrame1 ?
	       MUX_control_write_1__VAL_1 :
	       MUX_control_write_1__VAL_2 ;
  assign control_EN = WILL_FIRE_RL_pumpFrame1 || WILL_FIRE_RL_pumpFrame2 ;

  // register frameNum
  assign frameNum_D_IN = frameNum + 16'd1 ;
  assign frameNum_EN = _dor1frameNum_EN_write && datagramIngressF_D_OUT[0] ;

  // submodule ackEgressF
  assign ackEgressF_D_IN = ackIngressF_D_OUT ;
  assign ackEgressF_ENQ = CAN_FIRE_RL_pumpAck ;
  assign ackEgressF_DEQ = EN_ingress_response_get ;
  assign ackEgressF_CLR = 1'b0 ;

  // submodule ackIngressF
  assign ackIngressF_D_IN = ack_put ;
  assign ackIngressF_ENQ = EN_ack_put ;
  assign ackIngressF_DEQ = CAN_FIRE_RL_pumpAck ;
  assign ackIngressF_CLR = 1'b0 ;

  // submodule datagramEgressF1
  assign datagramEgressF1_D_IN = datagramIngressF_D_OUT ;
  assign datagramEgressF1_ENQ = CAN_FIRE_RL_pumpFrame1 ;
  assign datagramEgressF1_DEQ = EN_egress1_get ;
  assign datagramEgressF1_CLR = 1'b0 ;

  // submodule datagramEgressF2
  assign datagramEgressF2_D_IN = datagramIngressF_D_OUT ;
  assign datagramEgressF2_ENQ = CAN_FIRE_RL_pumpFrame2 ;
  assign datagramEgressF2_DEQ = EN_egress2_get ;
  assign datagramEgressF2_CLR = 1'b0 ;

  // submodule datagramIngressF
  assign datagramIngressF_D_IN = ingress_request_put ;
  assign datagramIngressF_ENQ = EN_ingress_request_put ;
  assign datagramIngressF_DEQ =
	     WILL_FIRE_RL_pumpFrame2 || WILL_FIRE_RL_pumpFrame1 ;
  assign datagramIngressF_CLR = 1'b0 ;

  // submodule freeF1
  assign freeF1_ENQ = EN_free1_put ;
  assign freeF1_DEQ = WILL_FIRE_RL_pumpFrame1 && datagramIngressF_D_OUT[0] ;
  assign freeF1_CLR = 1'b0 ;

  // submodule freeF2
  assign freeF2_ENQ = EN_free2_put ;
  assign freeF2_DEQ = WILL_FIRE_RL_pumpFrame2 && datagramIngressF_D_OUT[0] ;
  assign freeF2_CLR = 1'b0 ;

  // remaining internal signals
  assign _dor1frameNum_EN_write =
	     WILL_FIRE_RL_pumpFrame2 || WILL_FIRE_RL_pumpFrame1 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        control <= `BSV_ASSIGNMENT_DELAY 1'd1;
	frameNum <= `BSV_ASSIGNMENT_DELAY 16'd1;
      end
    else
      begin
        if (control_EN) control <= `BSV_ASSIGNMENT_DELAY control_D_IN;
	if (frameNum_EN) frameNum <= `BSV_ASSIGNMENT_DELAY frameNum_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    control = 1'h0;
    frameNum = 16'hAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pumpFrame1 && datagramIngressF_D_OUT[0])
	$display("MergeForkFAU: sent frame %0x", $unsigned(frameNum));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pumpFrame2 && datagramIngressF_D_OUT[0])
	$display("MergeForkFAU: sent frame %0x", $unsigned(frameNum));
  end
  // synopsys translate_on
endmodule  // mkMergeForkFAU

