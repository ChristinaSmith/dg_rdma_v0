//
// Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
//
// On Sun Jun 23 17:46:55 CDT 2013
//
// Method conflict info:
// Method: qIn_put
// Conflict-free: qOut_get
// Conflicts: qIn_put
//
// Method: qOut_get
// Conflict-free: qIn_put
// Conflicts: qOut_get
//
//
// Ports:
// Name                         I/O  size props
// RDY_qIn_put                    O     1 reg
// qOut_get                       O    40
// RDY_qOut_get                   O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// qIn_put                        I    40
// EN_qIn_put                     I     1
// EN_qOut_get                    I     1
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

module mkL2Inserter(CLK,
		    RST_N,

		    qIn_put,
		    EN_qIn_put,
		    RDY_qIn_put,

		    EN_qOut_get,
		    qOut_get,
		    RDY_qOut_get);
  input  CLK;
  input  RST_N;

  // action method qIn_put
  input  [39 : 0] qIn_put;
  input  EN_qIn_put;
  output RDY_qIn_put;

  // actionvalue method qOut_get
  input  EN_qOut_get;
  output [39 : 0] qOut_get;
  output RDY_qOut_get;

  // signals for module outputs
  wire [39 : 0] qOut_get;
  wire RDY_qIn_put, RDY_qOut_get;

  // register control
  reg control;
  wire control_D_IN, control_EN;

  // register da
  reg [47 : 0] da;
  wire [47 : 0] da_D_IN;
  wire da_EN;

  // register daV
  reg [47 : 0] daV;
  wire [47 : 0] daV_D_IN;
  wire daV_EN;

  // register funnel_ptr
  reg [1 : 0] funnel_ptr;
  wire [1 : 0] funnel_ptr_D_IN;
  wire funnel_ptr_EN;

  // register index
  reg [3 : 0] index;
  wire [3 : 0] index_D_IN;
  wire index_EN;

  // register sa
  reg [47 : 0] sa;
  wire [47 : 0] sa_D_IN;
  wire sa_EN;

  // register saV
  reg [47 : 0] saV;
  wire [47 : 0] saV_D_IN;
  wire saV_EN;

  // register unfunnel_ptr
  reg [1 : 0] unfunnel_ptr;
  wire [1 : 0] unfunnel_ptr_D_IN;
  wire unfunnel_ptr_EN;

  // register unfunnel_sr
  reg [29 : 0] unfunnel_sr;
  wire [29 : 0] unfunnel_sr_D_IN;
  wire unfunnel_sr_EN;

  // ports of submodule absToL2F
  wire [9 : 0] absToL2F_D_IN, absToL2F_D_OUT;
  wire absToL2F_CLR,
       absToL2F_DEQ,
       absToL2F_EMPTY_N,
       absToL2F_ENQ,
       absToL2F_FULL_N;

  // ports of submodule absToQF
  wire [9 : 0] absToQF_D_IN, absToQF_D_OUT;
  wire absToQF_CLR, absToQF_DEQ, absToQF_EMPTY_N, absToQF_ENQ, absToQF_FULL_N;

  // ports of submodule funnel_inF
  wire [39 : 0] funnel_inF_D_IN, funnel_inF_D_OUT;
  wire funnel_inF_CLR,
       funnel_inF_DEQ,
       funnel_inF_EMPTY_N,
       funnel_inF_ENQ,
       funnel_inF_FULL_N;

  // ports of submodule funnel_outF
  wire [9 : 0] funnel_outF_D_IN, funnel_outF_D_OUT;
  wire funnel_outF_CLR,
       funnel_outF_DEQ,
       funnel_outF_EMPTY_N,
       funnel_outF_ENQ,
       funnel_outF_FULL_N;

  // ports of submodule qabsEgressF
  wire [39 : 0] qabsEgressF_D_IN, qabsEgressF_D_OUT;
  wire qabsEgressF_CLR,
       qabsEgressF_DEQ,
       qabsEgressF_EMPTY_N,
       qabsEgressF_ENQ,
       qabsEgressF_FULL_N;

  // ports of submodule qabsIngressF
  wire [39 : 0] qabsIngressF_D_IN, qabsIngressF_D_OUT;
  wire qabsIngressF_CLR,
       qabsIngressF_DEQ,
       qabsIngressF_EMPTY_N,
       qabsIngressF_ENQ,
       qabsIngressF_FULL_N;

  // ports of submodule unfunnel_inF
  wire [9 : 0] unfunnel_inF_D_IN, unfunnel_inF_D_OUT;
  wire unfunnel_inF_CLR,
       unfunnel_inF_DEQ,
       unfunnel_inF_EMPTY_N,
       unfunnel_inF_ENQ,
       unfunnel_inF_FULL_N;

  // ports of submodule unfunnel_outF
  wire [39 : 0] unfunnel_outF_D_IN, unfunnel_outF_D_OUT;
  wire unfunnel_outF_CLR,
       unfunnel_outF_DEQ,
       unfunnel_outF_EMPTY_N,
       unfunnel_outF_ENQ,
       unfunnel_outF_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_funnel_funnel,
       CAN_FIRE_RL_insertL2header,
       CAN_FIRE_RL_mkConnectionGetPut,
       CAN_FIRE_RL_mkConnectionGetPut_1,
       CAN_FIRE_RL_mkConnectionGetPut_2,
       CAN_FIRE_RL_mkConnectionGetPut_3,
       CAN_FIRE_RL_pumpFrame,
       CAN_FIRE_RL_unfunnel_unfunnel,
       CAN_FIRE_qIn_put,
       CAN_FIRE_qOut_get,
       WILL_FIRE_RL_funnel_funnel,
       WILL_FIRE_RL_insertL2header,
       WILL_FIRE_RL_mkConnectionGetPut,
       WILL_FIRE_RL_mkConnectionGetPut_1,
       WILL_FIRE_RL_mkConnectionGetPut_2,
       WILL_FIRE_RL_mkConnectionGetPut_3,
       WILL_FIRE_RL_pumpFrame,
       WILL_FIRE_RL_unfunnel_unfunnel,
       WILL_FIRE_qIn_put,
       WILL_FIRE_qOut_get;

  // inputs to muxes for submodule ports
  reg [9 : 0] MUX_absToQF_enq_1__VAL_1;
  wire [9 : 0] MUX_absToQF_enq_1__VAL_2;
  wire [3 : 0] MUX_index_write_1__VAL_2;
  wire MUX_absToQF_enq_1__SEL_1,
       MUX_control_write_1__SEL_1,
       MUX_control_write_1__SEL_2;

  // remaining internal signals
  reg [63 : 0] v__h11278;
  reg [7 : 0] SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23;
  reg [1 : 0] CASE_absToL2FD_OUT_BITS_9_TO_8_0_absToL2FD_O_ETC__q19,
	      CASE_absToQFD_OUT_BITS_9_TO_8_0_absToQFD_OUT_ETC__q25,
	      CASE_funnel_outFD_OUT_BITS_9_TO_8_0_funnel_ou_ETC__q20,
	      CASE_qIn_put_BITS_19_TO_18_0_qIn_put_BITS_19_T_ETC__q3,
	      CASE_qIn_put_BITS_29_TO_28_0_qIn_put_BITS_29_T_ETC__q2,
	      CASE_qIn_put_BITS_39_TO_38_0_qIn_put_BITS_39_T_ETC__q1,
	      CASE_qIn_put_BITS_9_TO_8_0_qIn_put_BITS_9_TO_8_ETC__q4,
	      CASE_qabsEgressFD_OUT_BITS_19_TO_18_0_qabsEgr_ETC__q7,
	      CASE_qabsEgressFD_OUT_BITS_29_TO_28_0_qabsEgr_ETC__q6,
	      CASE_qabsEgressFD_OUT_BITS_39_TO_38_0_qabsEgr_ETC__q5,
	      CASE_qabsEgressFD_OUT_BITS_9_TO_8_0_qabsEgres_ETC__q8,
	      CASE_qabsIngressFD_OUT_BITS_19_TO_18_0_qabsIn_ETC__q23,
	      CASE_qabsIngressFD_OUT_BITS_29_TO_28_0_qabsIn_ETC__q22,
	      CASE_qabsIngressFD_OUT_BITS_39_TO_38_0_qabsIn_ETC__q21,
	      CASE_qabsIngressFD_OUT_BITS_9_TO_8_0_qabsIngr_ETC__q24,
	      CASE_unfunnel_inFD_OUT_BITS_9_TO_8_0_unfunnel_ETC__q13,
	      CASE_unfunnel_outFD_OUT_BITS_19_TO_18_0_unfun_ETC__q11,
	      CASE_unfunnel_outFD_OUT_BITS_29_TO_28_0_unfun_ETC__q10,
	      CASE_unfunnel_outFD_OUT_BITS_39_TO_38_0_unfun_ETC__q9,
	      CASE_unfunnel_outFD_OUT_BITS_9_TO_8_0_unfunne_ETC__q12,
	      CASE_unfunnel_sr_BITS_19_TO_18_0_unfunnel_sr_B_ETC__q15,
	      CASE_unfunnel_sr_BITS_29_TO_28_0_unfunnel_sr_B_ETC__q26,
	      CASE_unfunnel_sr_BITS_9_TO_8_0_unfunnel_sr_BIT_ETC__q14;
  reg CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q16,
      CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q17,
      CASE_index_1_absToQFFULL_N_2_absToQFFULL_N_3_ETC__q18,
      SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15;
  wire [9 : 0] IF_SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_1_5_ETC___d40,
	       IF_SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_2_2_ETC___d39,
	       IF_unfunnel_inF_first__9_BITS_9_TO_8_0_EQ_0_1__ETC___d87,
	       IF_unfunnel_sr_6_BITS_19_TO_18_7_EQ_0_8_OR_unf_ETC___d67,
	       IF_unfunnel_sr_6_BITS_9_TO_8_8_EQ_0_9_OR_unfun_ETC___d78;

  // action method qIn_put
  assign RDY_qIn_put = qabsIngressF_FULL_N ;
  assign CAN_FIRE_qIn_put = qabsIngressF_FULL_N ;
  assign WILL_FIRE_qIn_put = EN_qIn_put ;

  // actionvalue method qOut_get
  assign qOut_get =
	     { CASE_qabsEgressFD_OUT_BITS_39_TO_38_0_qabsEgr_ETC__q5,
	       qabsEgressF_D_OUT[37:30],
	       CASE_qabsEgressFD_OUT_BITS_29_TO_28_0_qabsEgr_ETC__q6,
	       qabsEgressF_D_OUT[27:20],
	       CASE_qabsEgressFD_OUT_BITS_19_TO_18_0_qabsEgr_ETC__q7,
	       qabsEgressF_D_OUT[17:10],
	       CASE_qabsEgressFD_OUT_BITS_9_TO_8_0_qabsEgres_ETC__q8,
	       qabsEgressF_D_OUT[7:0] } ;
  assign RDY_qOut_get = qabsEgressF_EMPTY_N ;
  assign CAN_FIRE_qOut_get = qabsEgressF_EMPTY_N ;
  assign WILL_FIRE_qOut_get = EN_qOut_get ;

  // submodule absToL2F
  FIFO2 #(.width(32'd10), .guarded(32'd1)) absToL2F(.RST(RST_N),
						    .CLK(CLK),
						    .D_IN(absToL2F_D_IN),
						    .ENQ(absToL2F_ENQ),
						    .DEQ(absToL2F_DEQ),
						    .CLR(absToL2F_CLR),
						    .D_OUT(absToL2F_D_OUT),
						    .FULL_N(absToL2F_FULL_N),
						    .EMPTY_N(absToL2F_EMPTY_N));

  // submodule absToQF
  FIFO2 #(.width(32'd10), .guarded(32'd1)) absToQF(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(absToQF_D_IN),
						   .ENQ(absToQF_ENQ),
						   .DEQ(absToQF_DEQ),
						   .CLR(absToQF_CLR),
						   .D_OUT(absToQF_D_OUT),
						   .FULL_N(absToQF_FULL_N),
						   .EMPTY_N(absToQF_EMPTY_N));

  // submodule funnel_inF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) funnel_inF(.RST(RST_N),
						      .CLK(CLK),
						      .D_IN(funnel_inF_D_IN),
						      .ENQ(funnel_inF_ENQ),
						      .DEQ(funnel_inF_DEQ),
						      .CLR(funnel_inF_CLR),
						      .D_OUT(funnel_inF_D_OUT),
						      .FULL_N(funnel_inF_FULL_N),
						      .EMPTY_N(funnel_inF_EMPTY_N));

  // submodule funnel_outF
  FIFO2 #(.width(32'd10), .guarded(32'd1)) funnel_outF(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(funnel_outF_D_IN),
						       .ENQ(funnel_outF_ENQ),
						       .DEQ(funnel_outF_DEQ),
						       .CLR(funnel_outF_CLR),
						       .D_OUT(funnel_outF_D_OUT),
						       .FULL_N(funnel_outF_FULL_N),
						       .EMPTY_N(funnel_outF_EMPTY_N));

  // submodule qabsEgressF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) qabsEgressF(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(qabsEgressF_D_IN),
						       .ENQ(qabsEgressF_ENQ),
						       .DEQ(qabsEgressF_DEQ),
						       .CLR(qabsEgressF_CLR),
						       .D_OUT(qabsEgressF_D_OUT),
						       .FULL_N(qabsEgressF_FULL_N),
						       .EMPTY_N(qabsEgressF_EMPTY_N));

  // submodule qabsIngressF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) qabsIngressF(.RST(RST_N),
							.CLK(CLK),
							.D_IN(qabsIngressF_D_IN),
							.ENQ(qabsIngressF_ENQ),
							.DEQ(qabsIngressF_DEQ),
							.CLR(qabsIngressF_CLR),
							.D_OUT(qabsIngressF_D_OUT),
							.FULL_N(qabsIngressF_FULL_N),
							.EMPTY_N(qabsIngressF_EMPTY_N));

  // submodule unfunnel_inF
  FIFO2 #(.width(32'd10), .guarded(32'd1)) unfunnel_inF(.RST(RST_N),
							.CLK(CLK),
							.D_IN(unfunnel_inF_D_IN),
							.ENQ(unfunnel_inF_ENQ),
							.DEQ(unfunnel_inF_DEQ),
							.CLR(unfunnel_inF_CLR),
							.D_OUT(unfunnel_inF_D_OUT),
							.FULL_N(unfunnel_inF_FULL_N),
							.EMPTY_N(unfunnel_inF_EMPTY_N));

  // submodule unfunnel_outF
  FIFO2 #(.width(32'd40), .guarded(32'd1)) unfunnel_outF(.RST(RST_N),
							 .CLK(CLK),
							 .D_IN(unfunnel_outF_D_IN),
							 .ENQ(unfunnel_outF_ENQ),
							 .DEQ(unfunnel_outF_DEQ),
							 .CLR(unfunnel_outF_CLR),
							 .D_OUT(unfunnel_outF_D_OUT),
							 .FULL_N(unfunnel_outF_FULL_N),
							 .EMPTY_N(unfunnel_outF_EMPTY_N));

  // rule RL_mkConnectionGetPut
  assign CAN_FIRE_RL_mkConnectionGetPut =
	     qabsIngressF_EMPTY_N && funnel_inF_FULL_N ;
  assign WILL_FIRE_RL_mkConnectionGetPut = CAN_FIRE_RL_mkConnectionGetPut ;

  // rule RL_insertL2header
  assign CAN_FIRE_RL_insertL2header =
	     (index != 4'd13 || absToQF_FULL_N) &&
	     CASE_index_1_absToQFFULL_N_2_absToQFFULL_N_3_ETC__q18 &&
	     absToL2F_EMPTY_N &&
	     !control ;
  assign WILL_FIRE_RL_insertL2header = CAN_FIRE_RL_insertL2header ;

  // rule RL_mkConnectionGetPut_1
  assign CAN_FIRE_RL_mkConnectionGetPut_1 =
	     funnel_outF_EMPTY_N && absToL2F_FULL_N ;
  assign WILL_FIRE_RL_mkConnectionGetPut_1 =
	     CAN_FIRE_RL_mkConnectionGetPut_1 ;

  // rule RL_pumpFrame
  assign CAN_FIRE_RL_pumpFrame =
	     absToQF_FULL_N && absToL2F_EMPTY_N && control ;
  assign WILL_FIRE_RL_pumpFrame = CAN_FIRE_RL_pumpFrame ;

  // rule RL_mkConnectionGetPut_2
  assign CAN_FIRE_RL_mkConnectionGetPut_2 =
	     absToQF_EMPTY_N && unfunnel_inF_FULL_N ;
  assign WILL_FIRE_RL_mkConnectionGetPut_2 =
	     CAN_FIRE_RL_mkConnectionGetPut_2 ;

  // rule RL_mkConnectionGetPut_3
  assign CAN_FIRE_RL_mkConnectionGetPut_3 =
	     unfunnel_outF_EMPTY_N && qabsEgressF_FULL_N ;
  assign WILL_FIRE_RL_mkConnectionGetPut_3 =
	     CAN_FIRE_RL_mkConnectionGetPut_3 ;

  // rule RL_funnel_funnel
  assign CAN_FIRE_RL_funnel_funnel =
	     funnel_inF_EMPTY_N && funnel_outF_FULL_N ;
  assign WILL_FIRE_RL_funnel_funnel = CAN_FIRE_RL_funnel_funnel ;

  // rule RL_unfunnel_unfunnel
  assign CAN_FIRE_RL_unfunnel_unfunnel =
	     unfunnel_inF_EMPTY_N &&
	     (unfunnel_ptr != 2'd3 && unfunnel_inF_D_OUT[9:8] == 2'd0 ||
	      unfunnel_outF_FULL_N) ;
  assign WILL_FIRE_RL_unfunnel_unfunnel = CAN_FIRE_RL_unfunnel_unfunnel ;

  // inputs to muxes for submodule ports
  assign MUX_absToQF_enq_1__SEL_1 =
	     WILL_FIRE_RL_insertL2header &&
	     (index == 4'd1 || index == 4'd2 || index == 4'd3 ||
	      index == 4'd4 ||
	      index == 4'd5 ||
	      index == 4'd6 ||
	      index == 4'd7 ||
	      index == 4'd8 ||
	      index == 4'd9 ||
	      index == 4'd10 ||
	      index == 4'd11 ||
	      index == 4'd12 ||
	      index == 4'd13 ||
	      index == 4'd14) ;
  assign MUX_control_write_1__SEL_1 =
	     WILL_FIRE_RL_insertL2header && index == 4'd14 ;
  assign MUX_control_write_1__SEL_2 =
	     WILL_FIRE_RL_pumpFrame && absToL2F_D_OUT[9:8] != 2'd0 ;
  always@(index or daV or saV)
  begin
    case (index)
      4'd1, 4'd2, 4'd3, 4'd4, 4'd5, 4'd6:
	  MUX_absToQF_enq_1__VAL_1 = { 2'd0, daV[47:40] };
      4'd7, 4'd8, 4'd9, 4'd10, 4'd11, 4'd12:
	  MUX_absToQF_enq_1__VAL_1 = { 2'd0, saV[47:40] };
      default: MUX_absToQF_enq_1__VAL_1 = 10'd51;
    endcase
  end
  assign MUX_absToQF_enq_1__VAL_2 =
	     { CASE_absToL2FD_OUT_BITS_9_TO_8_0_absToL2FD_O_ETC__q19,
	       absToL2F_D_OUT[7:0] } ;
  assign MUX_index_write_1__VAL_2 = (index == 4'd15) ? index : index + 4'd1 ;

  // register control
  assign control_D_IN = MUX_control_write_1__SEL_1 ;
  assign control_EN =
	     WILL_FIRE_RL_insertL2header && index == 4'd14 ||
	     WILL_FIRE_RL_pumpFrame && absToL2F_D_OUT[9:8] != 2'd0 ;

  // register da
  assign da_D_IN = 48'h0 ;
  assign da_EN = 1'b0 ;

  // register daV
  assign daV_D_IN = (index == 4'd0) ? da : { daV[39:0], daV[47:40] } ;
  assign daV_EN =
	     WILL_FIRE_RL_insertL2header &&
	     (index == 4'd0 || index == 4'd1 || index == 4'd2 ||
	      index == 4'd3 ||
	      index == 4'd4 ||
	      index == 4'd5 ||
	      index == 4'd6) ;

  // register funnel_ptr
  assign funnel_ptr_D_IN =
	     SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15 ?
	       funnel_ptr + 2'd1 :
	       2'd0 ;
  assign funnel_ptr_EN = CAN_FIRE_RL_funnel_funnel ;

  // register index
  assign index_D_IN =
	     MUX_control_write_1__SEL_2 ? 4'd0 : MUX_index_write_1__VAL_2 ;
  assign index_EN =
	     WILL_FIRE_RL_pumpFrame && absToL2F_D_OUT[9:8] != 2'd0 ||
	     WILL_FIRE_RL_insertL2header ;

  // register sa
  assign sa_D_IN = 48'h0 ;
  assign sa_EN = 1'b0 ;

  // register saV
  assign saV_D_IN = (index == 4'd0) ? sa : { saV[39:0], saV[47:40] } ;
  assign saV_EN =
	     WILL_FIRE_RL_insertL2header &&
	     (index == 4'd0 || index == 4'd7 || index == 4'd8 ||
	      index == 4'd9 ||
	      index == 4'd10 ||
	      index == 4'd11 ||
	      index == 4'd12) ;

  // register unfunnel_ptr
  assign unfunnel_ptr_D_IN =
	     (unfunnel_inF_D_OUT[9:8] == 2'd0) ? unfunnel_ptr + 2'd1 : 2'd0 ;
  assign unfunnel_ptr_EN = CAN_FIRE_RL_unfunnel_unfunnel ;

  // register unfunnel_sr
  assign unfunnel_sr_D_IN =
	     { IF_unfunnel_sr_6_BITS_19_TO_18_7_EQ_0_8_OR_unf_ETC___d67,
	       IF_unfunnel_sr_6_BITS_9_TO_8_8_EQ_0_9_OR_unfun_ETC___d78,
	       IF_unfunnel_inF_first__9_BITS_9_TO_8_0_EQ_0_1__ETC___d87 } ;
  assign unfunnel_sr_EN = CAN_FIRE_RL_unfunnel_unfunnel ;

  // submodule absToL2F
  assign absToL2F_D_IN =
	     { CASE_funnel_outFD_OUT_BITS_9_TO_8_0_funnel_ou_ETC__q20,
	       funnel_outF_D_OUT[7:0] } ;
  assign absToL2F_ENQ = CAN_FIRE_RL_mkConnectionGetPut_1 ;
  assign absToL2F_DEQ = CAN_FIRE_RL_pumpFrame ;
  assign absToL2F_CLR = 1'b0 ;

  // submodule absToQF
  assign absToQF_D_IN =
	     MUX_absToQF_enq_1__SEL_1 ?
	       MUX_absToQF_enq_1__VAL_1 :
	       MUX_absToQF_enq_1__VAL_2 ;
  assign absToQF_ENQ =
	     WILL_FIRE_RL_insertL2header &&
	     (index == 4'd1 || index == 4'd2 || index == 4'd3 ||
	      index == 4'd4 ||
	      index == 4'd5 ||
	      index == 4'd6 ||
	      index == 4'd7 ||
	      index == 4'd8 ||
	      index == 4'd9 ||
	      index == 4'd10 ||
	      index == 4'd11 ||
	      index == 4'd12 ||
	      index == 4'd13 ||
	      index == 4'd14) ||
	     WILL_FIRE_RL_pumpFrame ;
  assign absToQF_DEQ = CAN_FIRE_RL_mkConnectionGetPut_2 ;
  assign absToQF_CLR = 1'b0 ;

  // submodule funnel_inF
  assign funnel_inF_D_IN =
	     { CASE_qabsIngressFD_OUT_BITS_39_TO_38_0_qabsIn_ETC__q21,
	       qabsIngressF_D_OUT[37:30],
	       CASE_qabsIngressFD_OUT_BITS_29_TO_28_0_qabsIn_ETC__q22,
	       qabsIngressF_D_OUT[27:20],
	       CASE_qabsIngressFD_OUT_BITS_19_TO_18_0_qabsIn_ETC__q23,
	       qabsIngressF_D_OUT[17:10],
	       CASE_qabsIngressFD_OUT_BITS_9_TO_8_0_qabsIngr_ETC__q24,
	       qabsIngressF_D_OUT[7:0] } ;
  assign funnel_inF_ENQ = CAN_FIRE_RL_mkConnectionGetPut ;
  assign funnel_inF_DEQ =
	     WILL_FIRE_RL_funnel_funnel &&
	     (funnel_ptr == 2'd3 ||
	      !SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15) ;
  assign funnel_inF_CLR = 1'b0 ;

  // submodule funnel_outF
  assign funnel_outF_D_IN =
	     SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15 ?
	       { 2'd0,
		 SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23 } :
	       IF_SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_1_5_ETC___d40 ;
  assign funnel_outF_ENQ = CAN_FIRE_RL_funnel_funnel ;
  assign funnel_outF_DEQ = CAN_FIRE_RL_mkConnectionGetPut_1 ;
  assign funnel_outF_CLR = 1'b0 ;

  // submodule qabsEgressF
  assign qabsEgressF_D_IN =
	     { CASE_unfunnel_outFD_OUT_BITS_39_TO_38_0_unfun_ETC__q9,
	       unfunnel_outF_D_OUT[37:30],
	       CASE_unfunnel_outFD_OUT_BITS_29_TO_28_0_unfun_ETC__q10,
	       unfunnel_outF_D_OUT[27:20],
	       CASE_unfunnel_outFD_OUT_BITS_19_TO_18_0_unfun_ETC__q11,
	       unfunnel_outF_D_OUT[17:10],
	       CASE_unfunnel_outFD_OUT_BITS_9_TO_8_0_unfunne_ETC__q12,
	       unfunnel_outF_D_OUT[7:0] } ;
  assign qabsEgressF_ENQ = CAN_FIRE_RL_mkConnectionGetPut_3 ;
  assign qabsEgressF_DEQ = EN_qOut_get ;
  assign qabsEgressF_CLR = 1'b0 ;

  // submodule qabsIngressF
  assign qabsIngressF_D_IN =
	     { CASE_qIn_put_BITS_39_TO_38_0_qIn_put_BITS_39_T_ETC__q1,
	       qIn_put[37:30],
	       CASE_qIn_put_BITS_29_TO_28_0_qIn_put_BITS_29_T_ETC__q2,
	       qIn_put[27:20],
	       CASE_qIn_put_BITS_19_TO_18_0_qIn_put_BITS_19_T_ETC__q3,
	       qIn_put[17:10],
	       CASE_qIn_put_BITS_9_TO_8_0_qIn_put_BITS_9_TO_8_ETC__q4,
	       qIn_put[7:0] } ;
  assign qabsIngressF_ENQ = EN_qIn_put ;
  assign qabsIngressF_DEQ = CAN_FIRE_RL_mkConnectionGetPut ;
  assign qabsIngressF_CLR = 1'b0 ;

  // submodule unfunnel_inF
  assign unfunnel_inF_D_IN =
	     { CASE_absToQFD_OUT_BITS_9_TO_8_0_absToQFD_OUT_ETC__q25,
	       absToQF_D_OUT[7:0] } ;
  assign unfunnel_inF_ENQ = CAN_FIRE_RL_mkConnectionGetPut_2 ;
  assign unfunnel_inF_DEQ = CAN_FIRE_RL_unfunnel_unfunnel ;
  assign unfunnel_inF_CLR = 1'b0 ;

  // submodule unfunnel_outF
  assign unfunnel_outF_D_IN =
	     { IF_unfunnel_inF_first__9_BITS_9_TO_8_0_EQ_0_1__ETC___d87,
	       IF_unfunnel_sr_6_BITS_9_TO_8_8_EQ_0_9_OR_unfun_ETC___d78,
	       IF_unfunnel_sr_6_BITS_19_TO_18_7_EQ_0_8_OR_unf_ETC___d67,
	       CASE_unfunnel_sr_BITS_29_TO_28_0_unfunnel_sr_B_ETC__q26,
	       unfunnel_sr[27:20] } ;
  assign unfunnel_outF_ENQ =
	     WILL_FIRE_RL_unfunnel_unfunnel &&
	     (unfunnel_ptr == 2'd3 || unfunnel_inF_D_OUT[9:8] != 2'd0) ;
  assign unfunnel_outF_DEQ = CAN_FIRE_RL_mkConnectionGetPut_3 ;
  assign unfunnel_outF_CLR = 1'b0 ;

  // remaining internal signals
  assign IF_SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_1_5_ETC___d40 =
	     CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q17 ?
	       { 2'd1,
		 SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23 } :
	       IF_SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_2_2_ETC___d39 ;
  assign IF_SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_2_2_ETC___d39 =
	     { CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q16 ?
		 2'd2 :
		 2'd3,
	       SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23 } ;
  assign IF_unfunnel_inF_first__9_BITS_9_TO_8_0_EQ_0_1__ETC___d87 =
	     { CASE_unfunnel_inFD_OUT_BITS_9_TO_8_0_unfunnel_ETC__q13,
	       unfunnel_inF_D_OUT[7:0] } ;
  assign IF_unfunnel_sr_6_BITS_19_TO_18_7_EQ_0_8_OR_unf_ETC___d67 =
	     { CASE_unfunnel_sr_BITS_19_TO_18_0_unfunnel_sr_B_ETC__q15,
	       unfunnel_sr[17:10] } ;
  assign IF_unfunnel_sr_6_BITS_9_TO_8_8_EQ_0_9_OR_unfun_ETC___d78 =
	     { CASE_unfunnel_sr_BITS_9_TO_8_0_unfunnel_sr_BIT_ETC__q14,
	       unfunnel_sr[7:0] } ;
  always@(qIn_put)
  begin
    case (qIn_put[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_qIn_put_BITS_39_TO_38_0_qIn_put_BITS_39_T_ETC__q1 =
	      qIn_put[39:38];
      2'd3: CASE_qIn_put_BITS_39_TO_38_0_qIn_put_BITS_39_T_ETC__q1 = 2'd3;
    endcase
  end
  always@(qIn_put)
  begin
    case (qIn_put[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_qIn_put_BITS_29_TO_28_0_qIn_put_BITS_29_T_ETC__q2 =
	      qIn_put[29:28];
      2'd3: CASE_qIn_put_BITS_29_TO_28_0_qIn_put_BITS_29_T_ETC__q2 = 2'd3;
    endcase
  end
  always@(qIn_put)
  begin
    case (qIn_put[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_qIn_put_BITS_19_TO_18_0_qIn_put_BITS_19_T_ETC__q3 =
	      qIn_put[19:18];
      2'd3: CASE_qIn_put_BITS_19_TO_18_0_qIn_put_BITS_19_T_ETC__q3 = 2'd3;
    endcase
  end
  always@(qIn_put)
  begin
    case (qIn_put[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_qIn_put_BITS_9_TO_8_0_qIn_put_BITS_9_TO_8_ETC__q4 =
	      qIn_put[9:8];
      2'd3: CASE_qIn_put_BITS_9_TO_8_0_qIn_put_BITS_9_TO_8_ETC__q4 = 2'd3;
    endcase
  end
  always@(qabsEgressF_D_OUT)
  begin
    case (qabsEgressF_D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsEgressFD_OUT_BITS_39_TO_38_0_qabsEgr_ETC__q5 =
	      qabsEgressF_D_OUT[39:38];
      2'd3: CASE_qabsEgressFD_OUT_BITS_39_TO_38_0_qabsEgr_ETC__q5 = 2'd3;
    endcase
  end
  always@(qabsEgressF_D_OUT)
  begin
    case (qabsEgressF_D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsEgressFD_OUT_BITS_29_TO_28_0_qabsEgr_ETC__q6 =
	      qabsEgressF_D_OUT[29:28];
      2'd3: CASE_qabsEgressFD_OUT_BITS_29_TO_28_0_qabsEgr_ETC__q6 = 2'd3;
    endcase
  end
  always@(qabsEgressF_D_OUT)
  begin
    case (qabsEgressF_D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsEgressFD_OUT_BITS_19_TO_18_0_qabsEgr_ETC__q7 =
	      qabsEgressF_D_OUT[19:18];
      2'd3: CASE_qabsEgressFD_OUT_BITS_19_TO_18_0_qabsEgr_ETC__q7 = 2'd3;
    endcase
  end
  always@(qabsEgressF_D_OUT)
  begin
    case (qabsEgressF_D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsEgressFD_OUT_BITS_9_TO_8_0_qabsEgres_ETC__q8 =
	      qabsEgressF_D_OUT[9:8];
      2'd3: CASE_qabsEgressFD_OUT_BITS_9_TO_8_0_qabsEgres_ETC__q8 = 2'd3;
    endcase
  end
  always@(unfunnel_outF_D_OUT)
  begin
    case (unfunnel_outF_D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_outFD_OUT_BITS_39_TO_38_0_unfun_ETC__q9 =
	      unfunnel_outF_D_OUT[39:38];
      2'd3: CASE_unfunnel_outFD_OUT_BITS_39_TO_38_0_unfun_ETC__q9 = 2'd3;
    endcase
  end
  always@(unfunnel_outF_D_OUT)
  begin
    case (unfunnel_outF_D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_outFD_OUT_BITS_29_TO_28_0_unfun_ETC__q10 =
	      unfunnel_outF_D_OUT[29:28];
      2'd3: CASE_unfunnel_outFD_OUT_BITS_29_TO_28_0_unfun_ETC__q10 = 2'd3;
    endcase
  end
  always@(unfunnel_outF_D_OUT)
  begin
    case (unfunnel_outF_D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_outFD_OUT_BITS_19_TO_18_0_unfun_ETC__q11 =
	      unfunnel_outF_D_OUT[19:18];
      2'd3: CASE_unfunnel_outFD_OUT_BITS_19_TO_18_0_unfun_ETC__q11 = 2'd3;
    endcase
  end
  always@(unfunnel_outF_D_OUT)
  begin
    case (unfunnel_outF_D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_outFD_OUT_BITS_9_TO_8_0_unfunne_ETC__q12 =
	      unfunnel_outF_D_OUT[9:8];
      2'd3: CASE_unfunnel_outFD_OUT_BITS_9_TO_8_0_unfunne_ETC__q12 = 2'd3;
    endcase
  end
  always@(funnel_ptr or funnel_inF_D_OUT)
  begin
    case (funnel_ptr)
      2'd0:
	  SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15 =
	      funnel_inF_D_OUT[9:8] == 2'd0;
      2'd1:
	  SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15 =
	      funnel_inF_D_OUT[19:18] == 2'd0;
      2'd2:
	  SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15 =
	      funnel_inF_D_OUT[29:28] == 2'd0;
      2'd3:
	  SEL_ARR_funnel_inF_first_BITS_9_TO_8_EQ_0_funn_ETC___d15 =
	      funnel_inF_D_OUT[39:38] == 2'd0;
    endcase
  end
  always@(unfunnel_inF_D_OUT)
  begin
    case (unfunnel_inF_D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_inFD_OUT_BITS_9_TO_8_0_unfunnel_ETC__q13 =
	      unfunnel_inF_D_OUT[9:8];
      2'd3: CASE_unfunnel_inFD_OUT_BITS_9_TO_8_0_unfunnel_ETC__q13 = 2'd3;
    endcase
  end
  always@(unfunnel_sr)
  begin
    case (unfunnel_sr[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_sr_BITS_9_TO_8_0_unfunnel_sr_BIT_ETC__q14 =
	      unfunnel_sr[9:8];
      2'd3: CASE_unfunnel_sr_BITS_9_TO_8_0_unfunnel_sr_BIT_ETC__q14 = 2'd3;
    endcase
  end
  always@(funnel_ptr or funnel_inF_D_OUT)
  begin
    case (funnel_ptr)
      2'd0:
	  SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23 =
	      funnel_inF_D_OUT[7:0];
      2'd1:
	  SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23 =
	      funnel_inF_D_OUT[17:10];
      2'd2:
	  SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23 =
	      funnel_inF_D_OUT[27:20];
      2'd3:
	  SEL_ARR_funnel_inF_first_BITS_7_TO_0_8_funnel__ETC___d23 =
	      funnel_inF_D_OUT[37:30];
    endcase
  end
  always@(unfunnel_sr)
  begin
    case (unfunnel_sr[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_sr_BITS_19_TO_18_0_unfunnel_sr_B_ETC__q15 =
	      unfunnel_sr[19:18];
      2'd3: CASE_unfunnel_sr_BITS_19_TO_18_0_unfunnel_sr_B_ETC__q15 = 2'd3;
    endcase
  end
  always@(funnel_ptr or funnel_inF_D_OUT)
  begin
    case (funnel_ptr)
      2'd0:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q16 =
	      funnel_inF_D_OUT[9:8] == 2'd2;
      2'd1:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q16 =
	      funnel_inF_D_OUT[19:18] == 2'd2;
      2'd2:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q16 =
	      funnel_inF_D_OUT[29:28] == 2'd2;
      2'd3:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q16 =
	      funnel_inF_D_OUT[39:38] == 2'd2;
    endcase
  end
  always@(funnel_ptr or funnel_inF_D_OUT)
  begin
    case (funnel_ptr)
      2'd0:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q17 =
	      funnel_inF_D_OUT[9:8] == 2'd1;
      2'd1:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q17 =
	      funnel_inF_D_OUT[19:18] == 2'd1;
      2'd2:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q17 =
	      funnel_inF_D_OUT[29:28] == 2'd1;
      2'd3:
	  CASE_funnel_ptr_0_funnel_inFD_OUT_BITS_9_TO_8_ETC__q17 =
	      funnel_inF_D_OUT[39:38] == 2'd1;
    endcase
  end
  always@(index or absToQF_FULL_N)
  begin
    case (index)
      4'd1,
      4'd2,
      4'd3,
      4'd4,
      4'd5,
      4'd6,
      4'd7,
      4'd8,
      4'd9,
      4'd10,
      4'd11,
      4'd12:
	  CASE_index_1_absToQFFULL_N_2_absToQFFULL_N_3_ETC__q18 =
	      absToQF_FULL_N;
      default: CASE_index_1_absToQFFULL_N_2_absToQFFULL_N_3_ETC__q18 =
		   index != 4'd14 || absToQF_FULL_N;
    endcase
  end
  always@(absToL2F_D_OUT)
  begin
    case (absToL2F_D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_absToL2FD_OUT_BITS_9_TO_8_0_absToL2FD_O_ETC__q19 =
	      absToL2F_D_OUT[9:8];
      2'd3: CASE_absToL2FD_OUT_BITS_9_TO_8_0_absToL2FD_O_ETC__q19 = 2'd3;
    endcase
  end
  always@(funnel_outF_D_OUT)
  begin
    case (funnel_outF_D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_funnel_outFD_OUT_BITS_9_TO_8_0_funnel_ou_ETC__q20 =
	      funnel_outF_D_OUT[9:8];
      2'd3: CASE_funnel_outFD_OUT_BITS_9_TO_8_0_funnel_ou_ETC__q20 = 2'd3;
    endcase
  end
  always@(qabsIngressF_D_OUT)
  begin
    case (qabsIngressF_D_OUT[39:38])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsIngressFD_OUT_BITS_39_TO_38_0_qabsIn_ETC__q21 =
	      qabsIngressF_D_OUT[39:38];
      2'd3: CASE_qabsIngressFD_OUT_BITS_39_TO_38_0_qabsIn_ETC__q21 = 2'd3;
    endcase
  end
  always@(qabsIngressF_D_OUT)
  begin
    case (qabsIngressF_D_OUT[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsIngressFD_OUT_BITS_29_TO_28_0_qabsIn_ETC__q22 =
	      qabsIngressF_D_OUT[29:28];
      2'd3: CASE_qabsIngressFD_OUT_BITS_29_TO_28_0_qabsIn_ETC__q22 = 2'd3;
    endcase
  end
  always@(qabsIngressF_D_OUT)
  begin
    case (qabsIngressF_D_OUT[19:18])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsIngressFD_OUT_BITS_19_TO_18_0_qabsIn_ETC__q23 =
	      qabsIngressF_D_OUT[19:18];
      2'd3: CASE_qabsIngressFD_OUT_BITS_19_TO_18_0_qabsIn_ETC__q23 = 2'd3;
    endcase
  end
  always@(qabsIngressF_D_OUT)
  begin
    case (qabsIngressF_D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_qabsIngressFD_OUT_BITS_9_TO_8_0_qabsIngr_ETC__q24 =
	      qabsIngressF_D_OUT[9:8];
      2'd3: CASE_qabsIngressFD_OUT_BITS_9_TO_8_0_qabsIngr_ETC__q24 = 2'd3;
    endcase
  end
  always@(absToQF_D_OUT)
  begin
    case (absToQF_D_OUT[9:8])
      2'd0, 2'd1, 2'd2:
	  CASE_absToQFD_OUT_BITS_9_TO_8_0_absToQFD_OUT_ETC__q25 =
	      absToQF_D_OUT[9:8];
      2'd3: CASE_absToQFD_OUT_BITS_9_TO_8_0_absToQFD_OUT_ETC__q25 = 2'd3;
    endcase
  end
  always@(unfunnel_sr)
  begin
    case (unfunnel_sr[29:28])
      2'd0, 2'd1, 2'd2:
	  CASE_unfunnel_sr_BITS_29_TO_28_0_unfunnel_sr_B_ETC__q26 =
	      unfunnel_sr[29:28];
      2'd3: CASE_unfunnel_sr_BITS_29_TO_28_0_unfunnel_sr_B_ETC__q26 = 2'd3;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        control <= `BSV_ASSIGNMENT_DELAY 1'd0;
	da <= `BSV_ASSIGNMENT_DELAY 48'hFFFFFFFFFFFF;
	funnel_ptr <= `BSV_ASSIGNMENT_DELAY 2'd0;
	index <= `BSV_ASSIGNMENT_DELAY 4'd0;
	sa <= `BSV_ASSIGNMENT_DELAY 48'h000A350276B3;
	unfunnel_ptr <= `BSV_ASSIGNMENT_DELAY 2'd0;
      end
    else
      begin
        if (control_EN) control <= `BSV_ASSIGNMENT_DELAY control_D_IN;
	if (da_EN) da <= `BSV_ASSIGNMENT_DELAY da_D_IN;
	if (funnel_ptr_EN)
	  funnel_ptr <= `BSV_ASSIGNMENT_DELAY funnel_ptr_D_IN;
	if (index_EN) index <= `BSV_ASSIGNMENT_DELAY index_D_IN;
	if (sa_EN) sa <= `BSV_ASSIGNMENT_DELAY sa_D_IN;
	if (unfunnel_ptr_EN)
	  unfunnel_ptr <= `BSV_ASSIGNMENT_DELAY unfunnel_ptr_D_IN;
      end
    if (daV_EN) daV <= `BSV_ASSIGNMENT_DELAY daV_D_IN;
    if (saV_EN) saV <= `BSV_ASSIGNMENT_DELAY saV_D_IN;
    if (unfunnel_sr_EN) unfunnel_sr <= `BSV_ASSIGNMENT_DELAY unfunnel_sr_D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    control = 1'h0;
    da = 48'hAAAAAAAAAAAA;
    daV = 48'hAAAAAAAAAAAA;
    funnel_ptr = 2'h2;
    index = 4'hA;
    sa = 48'hAAAAAAAAAAAA;
    saV = 48'hAAAAAAAAAAAA;
    unfunnel_ptr = 2'h2;
    unfunnel_sr = 30'h2AAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pumpFrame)
	begin
	  v__h11278 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pumpFrame)
	$display("[%0d]: %m: L2_EGRESS_PAYLOAD: %0x",
		 v__h11278,
		 { CASE_absToL2FD_OUT_BITS_9_TO_8_0_absToL2FD_O_ETC__q19,
		   absToL2F_D_OUT[7:0] });
  end
  // synopsys translate_on
endmodule  // mkL2Inserter

