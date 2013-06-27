//
// Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
//
// On Wed Jun 26 17:46:13 CDT 2013
//
// Method conflict info:
// Method: egress_request_get
// Conflict-free: egress_response_put, ingress1_put, ingress2_put, ack_get
// Conflicts: egress_request_get
//
// Method: egress_response_put
// Conflict-free: egress_request_get, ingress1_put, ingress2_put, ack_get
// Conflicts: egress_response_put
//
// Method: ingress1_put
// Conflict-free: egress_request_get, egress_response_put, ingress2_put, ack_get
// Conflicts: ingress1_put
//
// Method: ingress2_put
// Conflict-free: egress_request_get, egress_response_put, ingress1_put, ack_get
// Conflicts: ingress2_put
//
// Method: ack_get
// Conflict-free: egress_request_get,
// 	       egress_response_put,
// 	       ingress1_put,
// 	       ingress2_put
// Conflicts: ack_get
//
//
// Ports:
// Name                         I/O  size props
// egress_request_get             O   134 reg
// RDY_egress_request_get         O     1 reg
// RDY_egress_response_put        O     1 reg
// RDY_ingress1_put               O     1 reg
// RDY_ingress2_put               O     1 reg
// ack_get                        O   134 reg
// RDY_ack_get                    O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// egress_response_put            I   134 reg
// ingress1_put                   I   134 reg
// ingress2_put                   I   134 reg
// EN_egress_response_put         I     1
// EN_ingress1_put                I     1
// EN_ingress2_put                I     1
// EN_egress_request_get          I     1
// EN_ack_get                     I     1
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

module mkMergeForkFDU(CLK,
		      RST_N,

		      EN_egress_request_get,
		      egress_request_get,
		      RDY_egress_request_get,

		      egress_response_put,
		      EN_egress_response_put,
		      RDY_egress_response_put,

		      ingress1_put,
		      EN_ingress1_put,
		      RDY_ingress1_put,

		      ingress2_put,
		      EN_ingress2_put,
		      RDY_ingress2_put,

		      EN_ack_get,
		      ack_get,
		      RDY_ack_get);
  input  CLK;
  input  RST_N;

  // actionvalue method egress_request_get
  input  EN_egress_request_get;
  output [133 : 0] egress_request_get;
  output RDY_egress_request_get;

  // action method egress_response_put
  input  [133 : 0] egress_response_put;
  input  EN_egress_response_put;
  output RDY_egress_response_put;

  // action method ingress1_put
  input  [133 : 0] ingress1_put;
  input  EN_ingress1_put;
  output RDY_ingress1_put;

  // action method ingress2_put
  input  [133 : 0] ingress2_put;
  input  EN_ingress2_put;
  output RDY_ingress2_put;

  // actionvalue method ack_get
  input  EN_ack_get;
  output [133 : 0] ack_get;
  output RDY_ack_get;

  // signals for module outputs
  wire [133 : 0] ack_get, egress_request_get;
  wire RDY_ack_get,
       RDY_egress_request_get,
       RDY_egress_response_put,
       RDY_ingress1_put,
       RDY_ingress2_put;

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

  // ports of submodule datagramEgressF
  wire [133 : 0] datagramEgressF_D_IN, datagramEgressF_D_OUT;
  wire datagramEgressF_CLR,
       datagramEgressF_DEQ,
       datagramEgressF_EMPTY_N,
       datagramEgressF_ENQ,
       datagramEgressF_FULL_N;

  // ports of submodule datagramIngressF1
  wire [133 : 0] datagramIngressF1_D_IN, datagramIngressF1_D_OUT;
  wire datagramIngressF1_CLR,
       datagramIngressF1_DEQ,
       datagramIngressF1_EMPTY_N,
       datagramIngressF1_ENQ,
       datagramIngressF1_FULL_N;

  // ports of submodule datagramIngressF2
  wire [133 : 0] datagramIngressF2_D_IN, datagramIngressF2_D_OUT;
  wire datagramIngressF2_CLR,
       datagramIngressF2_DEQ,
       datagramIngressF2_EMPTY_N,
       datagramIngressF2_ENQ,
       datagramIngressF2_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_pumpAck,
       CAN_FIRE_RL_pumpFrame1,
       CAN_FIRE_RL_pumpFrame2,
       CAN_FIRE_ack_get,
       CAN_FIRE_egress_request_get,
       CAN_FIRE_egress_response_put,
       CAN_FIRE_ingress1_put,
       CAN_FIRE_ingress2_put,
       WILL_FIRE_RL_pumpAck,
       WILL_FIRE_RL_pumpFrame1,
       WILL_FIRE_RL_pumpFrame2,
       WILL_FIRE_ack_get,
       WILL_FIRE_egress_request_get,
       WILL_FIRE_egress_response_put,
       WILL_FIRE_ingress1_put,
       WILL_FIRE_ingress2_put;

  // inputs to muxes for submodule ports
  wire [15 : 0] MUX_frameNum_write_1__VAL_1;
  wire MUX_frameNum_write_1__SEL_1;

  // actionvalue method egress_request_get
  assign egress_request_get = datagramEgressF_D_OUT ;
  assign RDY_egress_request_get = datagramEgressF_EMPTY_N ;
  assign CAN_FIRE_egress_request_get = datagramEgressF_EMPTY_N ;
  assign WILL_FIRE_egress_request_get = EN_egress_request_get ;

  // action method egress_response_put
  assign RDY_egress_response_put = ackIngressF_FULL_N ;
  assign CAN_FIRE_egress_response_put = ackIngressF_FULL_N ;
  assign WILL_FIRE_egress_response_put = EN_egress_response_put ;

  // action method ingress1_put
  assign RDY_ingress1_put = datagramIngressF1_FULL_N ;
  assign CAN_FIRE_ingress1_put = datagramIngressF1_FULL_N ;
  assign WILL_FIRE_ingress1_put = EN_ingress1_put ;

  // action method ingress2_put
  assign RDY_ingress2_put = datagramIngressF2_FULL_N ;
  assign CAN_FIRE_ingress2_put = datagramIngressF2_FULL_N ;
  assign WILL_FIRE_ingress2_put = EN_ingress2_put ;

  // actionvalue method ack_get
  assign ack_get = ackEgressF_D_OUT ;
  assign RDY_ack_get = ackEgressF_EMPTY_N ;
  assign CAN_FIRE_ack_get = ackEgressF_EMPTY_N ;
  assign WILL_FIRE_ack_get = EN_ack_get ;

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

  // submodule datagramEgressF
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramEgressF(.RST(RST_N),
							    .CLK(CLK),
							    .D_IN(datagramEgressF_D_IN),
							    .ENQ(datagramEgressF_ENQ),
							    .DEQ(datagramEgressF_DEQ),
							    .CLR(datagramEgressF_CLR),
							    .D_OUT(datagramEgressF_D_OUT),
							    .FULL_N(datagramEgressF_FULL_N),
							    .EMPTY_N(datagramEgressF_EMPTY_N));

  // submodule datagramIngressF1
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramIngressF1(.RST(RST_N),
							      .CLK(CLK),
							      .D_IN(datagramIngressF1_D_IN),
							      .ENQ(datagramIngressF1_ENQ),
							      .DEQ(datagramIngressF1_DEQ),
							      .CLR(datagramIngressF1_CLR),
							      .D_OUT(datagramIngressF1_D_OUT),
							      .FULL_N(datagramIngressF1_FULL_N),
							      .EMPTY_N(datagramIngressF1_EMPTY_N));

  // submodule datagramIngressF2
  FIFO2 #(.width(32'd134), .guarded(32'd1)) datagramIngressF2(.RST(RST_N),
							      .CLK(CLK),
							      .D_IN(datagramIngressF2_D_IN),
							      .ENQ(datagramIngressF2_ENQ),
							      .DEQ(datagramIngressF2_DEQ),
							      .CLR(datagramIngressF2_CLR),
							      .D_OUT(datagramIngressF2_D_OUT),
							      .FULL_N(datagramIngressF2_FULL_N),
							      .EMPTY_N(datagramIngressF2_EMPTY_N));

  // rule RL_pumpFrame1
  assign CAN_FIRE_RL_pumpFrame1 =
	     datagramIngressF1_EMPTY_N && datagramEgressF_FULL_N && !control ;
  assign WILL_FIRE_RL_pumpFrame1 = CAN_FIRE_RL_pumpFrame1 ;

  // rule RL_pumpFrame2
  assign CAN_FIRE_RL_pumpFrame2 =
	     datagramEgressF_FULL_N && datagramIngressF2_EMPTY_N && control ;
  assign WILL_FIRE_RL_pumpFrame2 = CAN_FIRE_RL_pumpFrame2 ;

  // rule RL_pumpAck
  assign CAN_FIRE_RL_pumpAck = ackEgressF_FULL_N && ackIngressF_EMPTY_N ;
  assign WILL_FIRE_RL_pumpAck = CAN_FIRE_RL_pumpAck ;

  // inputs to muxes for submodule ports
  assign MUX_frameNum_write_1__SEL_1 =
	     WILL_FIRE_RL_pumpFrame2 && datagramIngressF2_D_OUT[0] ;
  assign MUX_frameNum_write_1__VAL_1 = frameNum + 16'd1 ;

  // register control
  assign control_D_IN =
	     WILL_FIRE_RL_pumpFrame1 ?
	       datagramIngressF1_D_OUT[0] :
	       !datagramIngressF2_D_OUT[0] ;
  assign control_EN = WILL_FIRE_RL_pumpFrame1 || WILL_FIRE_RL_pumpFrame2 ;

  // register frameNum
  assign frameNum_D_IN =
	     MUX_frameNum_write_1__SEL_1 ?
	       MUX_frameNum_write_1__VAL_1 :
	       MUX_frameNum_write_1__VAL_1 ;
  assign frameNum_EN =
	     WILL_FIRE_RL_pumpFrame2 && datagramIngressF2_D_OUT[0] ||
	     WILL_FIRE_RL_pumpFrame1 && datagramIngressF1_D_OUT[0] ;

  // submodule ackEgressF
  assign ackEgressF_D_IN = ackIngressF_D_OUT ;
  assign ackEgressF_ENQ = CAN_FIRE_RL_pumpAck ;
  assign ackEgressF_DEQ = EN_ack_get ;
  assign ackEgressF_CLR = 1'b0 ;

  // submodule ackIngressF
  assign ackIngressF_D_IN = egress_response_put ;
  assign ackIngressF_ENQ = EN_egress_response_put ;
  assign ackIngressF_DEQ = CAN_FIRE_RL_pumpAck ;
  assign ackIngressF_CLR = 1'b0 ;

  // submodule datagramEgressF
  assign datagramEgressF_D_IN =
	     WILL_FIRE_RL_pumpFrame2 ?
	       datagramIngressF2_D_OUT :
	       datagramIngressF1_D_OUT ;
  assign datagramEgressF_ENQ =
	     WILL_FIRE_RL_pumpFrame2 || WILL_FIRE_RL_pumpFrame1 ;
  assign datagramEgressF_DEQ = EN_egress_request_get ;
  assign datagramEgressF_CLR = 1'b0 ;

  // submodule datagramIngressF1
  assign datagramIngressF1_D_IN = ingress1_put ;
  assign datagramIngressF1_ENQ = EN_ingress1_put ;
  assign datagramIngressF1_DEQ = CAN_FIRE_RL_pumpFrame1 ;
  assign datagramIngressF1_CLR = 1'b0 ;

  // submodule datagramIngressF2
  assign datagramIngressF2_D_IN = ingress2_put ;
  assign datagramIngressF2_ENQ = EN_ingress2_put ;
  assign datagramIngressF2_DEQ = CAN_FIRE_RL_pumpFrame2 ;
  assign datagramIngressF2_CLR = 1'b0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        control <= `BSV_ASSIGNMENT_DELAY 1'd0;
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
      if (WILL_FIRE_RL_pumpFrame1 && datagramIngressF1_D_OUT[0])
	$display("MergeForkFDU: sent frame %0x", $unsigned(frameNum));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pumpFrame2 && datagramIngressF2_D_OUT[0])
	$display("MergeForkFDU: sent frame %0x", $unsigned(frameNum));
  end
  // synopsys translate_on
endmodule  // mkMergeForkFDU

