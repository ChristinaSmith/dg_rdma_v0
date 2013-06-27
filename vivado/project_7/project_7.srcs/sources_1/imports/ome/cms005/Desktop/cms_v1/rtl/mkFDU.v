//
// Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
//
// On Wed Jun 19 15:57:36 CDT 2013
//
// Method conflict info:
// Method: free_get
// Conflict-free: datagramSnd_put,
// 	       datagramRcv_get,
// 	       frameAck_request_get,
// 	       frameAck_response_put
// Conflicts: free_get
//
// Method: datagramSnd_put
// Conflict-free: free_get,
// 	       datagramRcv_get,
// 	       frameAck_request_get,
// 	       frameAck_response_put
// Conflicts: datagramSnd_put
//
// Method: datagramRcv_get
// Conflict-free: free_get,
// 	       datagramSnd_put,
// 	       frameAck_request_get,
// 	       frameAck_response_put
// Conflicts: datagramRcv_get
//
// Method: frameAck_request_get
// Conflict-free: free_get,
// 	       datagramSnd_put,
// 	       datagramRcv_get,
// 	       frameAck_response_put
// Conflicts: frameAck_request_get
//
// Method: frameAck_response_put
// Conflict-free: free_get,
// 	       datagramSnd_put,
// 	       datagramRcv_get,
// 	       frameAck_request_get
// Conflicts: frameAck_response_put
//
//
// Ports:
// Name                         I/O  size props
// RDY_free_get                   O     1 reg
// RDY_datagramSnd_put            O     1 reg
// datagramRcv_get                O   134 reg
// RDY_datagramRcv_get            O     1 reg
// frameAck_request_get           O    16 reg
// RDY_frameAck_request_get       O     1 reg
// RDY_frameAck_response_put      O     1 reg
// CLK                            I     1 clock
// RST_N                          I     1 reset
// datagramSnd_put                I   134 reg
// frameAck_response_put          I    16 reg
// EN_free_get                    I     1
// EN_datagramSnd_put             I     1
// EN_frameAck_response_put       I     1
// EN_datagramRcv_get             I     1
// EN_frameAck_request_get        I     1
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

module mkFDU(CLK,
	     RST_N,

	     EN_free_get,
	     RDY_free_get,

	     datagramSnd_put,
	     EN_datagramSnd_put,
	     RDY_datagramSnd_put,

	     EN_datagramRcv_get,
	     datagramRcv_get,
	     RDY_datagramRcv_get,

	     EN_frameAck_request_get,
	     frameAck_request_get,
	     RDY_frameAck_request_get,

	     frameAck_response_put,
	     EN_frameAck_response_put,
	     RDY_frameAck_response_put);
  input  CLK;
  input  RST_N;

  // action method free_get
  input  EN_free_get;
  output RDY_free_get;

  // action method datagramSnd_put
  input  [133 : 0] datagramSnd_put;
  input  EN_datagramSnd_put;
  output RDY_datagramSnd_put;

  // actionvalue method datagramRcv_get
  input  EN_datagramRcv_get;
  output [133 : 0] datagramRcv_get;
  output RDY_datagramRcv_get;

  // actionvalue method frameAck_request_get
  input  EN_frameAck_request_get;
  output [15 : 0] frameAck_request_get;
  output RDY_frameAck_request_get;

  // action method frameAck_response_put
  input  [15 : 0] frameAck_response_put;
  input  EN_frameAck_response_put;
  output RDY_frameAck_response_put;

  // signals for module outputs
  wire [133 : 0] datagramRcv_get;
  wire [15 : 0] frameAck_request_get;
  wire RDY_datagramRcv_get,
       RDY_datagramSnd_put,
       RDY_frameAck_request_get,
       RDY_frameAck_response_put,
       RDY_free_get;

  // inlined wires
  wire bram_serverAdapterA_outData_enqData_whas,
       bram_serverAdapterB_outData_enqData_whas,
       bram_serverAdapterB_outData_outData_whas,
       readCredit_acc_v2_whas;

  // register bram_serverAdapterA_cnt
  reg [2 : 0] bram_serverAdapterA_cnt;
  wire [2 : 0] bram_serverAdapterA_cnt_D_IN;
  wire bram_serverAdapterA_cnt_EN;

  // register bram_serverAdapterA_s1
  reg [1 : 0] bram_serverAdapterA_s1;
  wire [1 : 0] bram_serverAdapterA_s1_D_IN;
  wire bram_serverAdapterA_s1_EN;

  // register bram_serverAdapterB_cnt
  reg [2 : 0] bram_serverAdapterB_cnt;
  wire [2 : 0] bram_serverAdapterB_cnt_D_IN;
  wire bram_serverAdapterB_cnt_EN;

  // register bram_serverAdapterB_s1
  reg [1 : 0] bram_serverAdapterB_s1;
  wire [1 : 0] bram_serverAdapterB_s1_D_IN;
  wire bram_serverAdapterB_s1_EN;

  // register countRd
  reg [9 : 0] countRd;
  wire [9 : 0] countRd_D_IN;
  wire countRd_EN;

  // register countRdReq
  reg [9 : 0] countRdReq;
  wire [9 : 0] countRdReq_D_IN;
  wire countRdReq_EN;

  // register countWrd
  reg [9 : 0] countWrd;
  wire [9 : 0] countWrd_D_IN;
  wire countWrd_EN;

  // register fid
  reg [15 : 0] fid;
  wire [15 : 0] fid_D_IN;
  wire fid_EN;

  // register grabFID
  reg grabFID;
  wire grabFID_D_IN, grabFID_EN;

  // register isOk2Write
  reg isOk2Write;
  wire isOk2Write_D_IN, isOk2Write_EN;

  // register isRunning
  reg isRunning;
  wire isRunning_D_IN, isRunning_EN;

  // register readAddr
  reg [9 : 0] readAddr;
  wire [9 : 0] readAddr_D_IN;
  wire readAddr_EN;

  // register readCredit_value
  reg [9 : 0] readCredit_value;
  wire [9 : 0] readCredit_value_D_IN;
  wire readCredit_value_EN;

  // register retransmit
  reg retransmit;
  wire retransmit_D_IN, retransmit_EN;

  // register setFreeInit
  reg setFreeInit;
  wire setFreeInit_D_IN, setFreeInit_EN;

  // register sndFIF
  reg sndFIF;
  wire sndFIF_D_IN, sndFIF_EN;

  // register timeoutCount
  reg [15 : 0] timeoutCount;
  wire [15 : 0] timeoutCount_D_IN;
  wire timeoutCount_EN;

  // register timeoutVal
  reg [15 : 0] timeoutVal;
  wire [15 : 0] timeoutVal_D_IN;
  wire timeoutVal_EN;

  // register writeAddr
  reg [9 : 0] writeAddr;
  wire [9 : 0] writeAddr_D_IN;
  wire writeAddr_EN;

  // ports of submodule bram_memory
  wire [133 : 0] bram_memory_DIA,
		 bram_memory_DIB,
		 bram_memory_DOA,
		 bram_memory_DOB;
  wire [9 : 0] bram_memory_ADDRA, bram_memory_ADDRB;
  wire bram_memory_ENA, bram_memory_ENB, bram_memory_WEA, bram_memory_WEB;

  // ports of submodule bram_serverAdapterA_outDataCore
  wire [133 : 0] bram_serverAdapterA_outDataCore_D_IN;
  wire bram_serverAdapterA_outDataCore_CLR,
       bram_serverAdapterA_outDataCore_DEQ,
       bram_serverAdapterA_outDataCore_EMPTY_N,
       bram_serverAdapterA_outDataCore_ENQ,
       bram_serverAdapterA_outDataCore_FULL_N;

  // ports of submodule bram_serverAdapterB_outDataCore
  wire [133 : 0] bram_serverAdapterB_outDataCore_D_IN,
		 bram_serverAdapterB_outDataCore_D_OUT;
  wire bram_serverAdapterB_outDataCore_CLR,
       bram_serverAdapterB_outDataCore_DEQ,
       bram_serverAdapterB_outDataCore_EMPTY_N,
       bram_serverAdapterB_outDataCore_ENQ,
       bram_serverAdapterB_outDataCore_FULL_N;

  // ports of submodule datagramEgressF
  wire [133 : 0] datagramEgressF_D_IN, datagramEgressF_D_OUT;
  wire datagramEgressF_CLR,
       datagramEgressF_DEQ,
       datagramEgressF_EMPTY_N,
       datagramEgressF_ENQ,
       datagramEgressF_FULL_N;

  // ports of submodule datagramIngressF
  wire [133 : 0] datagramIngressF_D_IN, datagramIngressF_D_OUT;
  wire datagramIngressF_CLR,
       datagramIngressF_DEQ,
       datagramIngressF_EMPTY_N,
       datagramIngressF_ENQ,
       datagramIngressF_FULL_N;

  // ports of submodule fidEgressF
  wire [15 : 0] fidEgressF_D_IN, fidEgressF_D_OUT;
  wire fidEgressF_CLR,
       fidEgressF_DEQ,
       fidEgressF_EMPTY_N,
       fidEgressF_ENQ,
       fidEgressF_FULL_N;

  // ports of submodule fidF
  wire [15 : 0] fidF_D_IN, fidF_D_OUT;
  wire fidF_CLR, fidF_DEQ, fidF_EMPTY_N, fidF_ENQ, fidF_FULL_N;

  // ports of submodule fidIngressF
  wire [15 : 0] fidIngressF_D_IN, fidIngressF_D_OUT;
  wire fidIngressF_CLR,
       fidIngressF_DEQ,
       fidIngressF_EMPTY_N,
       fidIngressF_ENQ,
       fidIngressF_FULL_N;

  // ports of submodule freeF
  wire freeF_CLR, freeF_DEQ, freeF_EMPTY_N, freeF_ENQ, freeF_FULL_N;

  // ports of submodule lengthF
  wire [9 : 0] lengthF_D_IN, lengthF_D_OUT;
  wire lengthF_CLR, lengthF_DEQ, lengthF_EMPTY_N, lengthF_ENQ, lengthF_FULL_N;

  // ports of submodule readTriggerF
  wire readTriggerF_CLR,
       readTriggerF_DEQ,
       readTriggerF_EMPTY_N,
       readTriggerF_ENQ,
       readTriggerF_FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_bram_serverAdapterA_cnt_finalAdd,
       CAN_FIRE_RL_bram_serverAdapterA_moveToOutFIFO,
       CAN_FIRE_RL_bram_serverAdapterA_outData_deqOnly,
       CAN_FIRE_RL_bram_serverAdapterA_outData_enqAndDeq,
       CAN_FIRE_RL_bram_serverAdapterA_outData_enqOnly,
       CAN_FIRE_RL_bram_serverAdapterA_outData_setFirstCore,
       CAN_FIRE_RL_bram_serverAdapterA_outData_setFirstEnq,
       CAN_FIRE_RL_bram_serverAdapterA_overRun,
       CAN_FIRE_RL_bram_serverAdapterA_s1__dreg_update,
       CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways,
       CAN_FIRE_RL_bram_serverAdapterB_cnt_finalAdd,
       CAN_FIRE_RL_bram_serverAdapterB_moveToOutFIFO,
       CAN_FIRE_RL_bram_serverAdapterB_outData_deqOnly,
       CAN_FIRE_RL_bram_serverAdapterB_outData_enqAndDeq,
       CAN_FIRE_RL_bram_serverAdapterB_outData_enqOnly,
       CAN_FIRE_RL_bram_serverAdapterB_outData_setFirstCore,
       CAN_FIRE_RL_bram_serverAdapterB_outData_setFirstEnq,
       CAN_FIRE_RL_bram_serverAdapterB_overRun,
       CAN_FIRE_RL_bram_serverAdapterB_s1__dreg_update,
       CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways,
       CAN_FIRE_RL_getFID,
       CAN_FIRE_RL_readBRAM,
       CAN_FIRE_RL_readCredit_accumulate,
       CAN_FIRE_RL_readReqBRAM,
       CAN_FIRE_RL_releaseFrm,
       CAN_FIRE_RL_sendFIF,
       CAN_FIRE_RL_signalFreeInit,
       CAN_FIRE_RL_timeout,
       CAN_FIRE_RL_writeBRAM,
       CAN_FIRE_datagramRcv_get,
       CAN_FIRE_datagramSnd_put,
       CAN_FIRE_frameAck_request_get,
       CAN_FIRE_frameAck_response_put,
       CAN_FIRE_free_get,
       WILL_FIRE_RL_bram_serverAdapterA_cnt_finalAdd,
       WILL_FIRE_RL_bram_serverAdapterA_moveToOutFIFO,
       WILL_FIRE_RL_bram_serverAdapterA_outData_deqOnly,
       WILL_FIRE_RL_bram_serverAdapterA_outData_enqAndDeq,
       WILL_FIRE_RL_bram_serverAdapterA_outData_enqOnly,
       WILL_FIRE_RL_bram_serverAdapterA_outData_setFirstCore,
       WILL_FIRE_RL_bram_serverAdapterA_outData_setFirstEnq,
       WILL_FIRE_RL_bram_serverAdapterA_overRun,
       WILL_FIRE_RL_bram_serverAdapterA_s1__dreg_update,
       WILL_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways,
       WILL_FIRE_RL_bram_serverAdapterB_cnt_finalAdd,
       WILL_FIRE_RL_bram_serverAdapterB_moveToOutFIFO,
       WILL_FIRE_RL_bram_serverAdapterB_outData_deqOnly,
       WILL_FIRE_RL_bram_serverAdapterB_outData_enqAndDeq,
       WILL_FIRE_RL_bram_serverAdapterB_outData_enqOnly,
       WILL_FIRE_RL_bram_serverAdapterB_outData_setFirstCore,
       WILL_FIRE_RL_bram_serverAdapterB_outData_setFirstEnq,
       WILL_FIRE_RL_bram_serverAdapterB_overRun,
       WILL_FIRE_RL_bram_serverAdapterB_s1__dreg_update,
       WILL_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways,
       WILL_FIRE_RL_getFID,
       WILL_FIRE_RL_readBRAM,
       WILL_FIRE_RL_readCredit_accumulate,
       WILL_FIRE_RL_readReqBRAM,
       WILL_FIRE_RL_releaseFrm,
       WILL_FIRE_RL_sendFIF,
       WILL_FIRE_RL_signalFreeInit,
       WILL_FIRE_RL_timeout,
       WILL_FIRE_RL_writeBRAM,
       WILL_FIRE_datagramRcv_get,
       WILL_FIRE_datagramSnd_put,
       WILL_FIRE_frameAck_request_get,
       WILL_FIRE_frameAck_response_put,
       WILL_FIRE_free_get;

  // inputs to muxes for submodule ports
  wire [15 : 0] MUX_timeoutCount_write_1__VAL_2;
  wire [9 : 0] MUX_readAddr_write_1__VAL_1, MUX_readAddr_write_1__VAL_2;
  wire MUX_grabFID_write_1__SEL_1,
       MUX_isOk2Write_write_1__SEL_2,
       MUX_isRunning_write_1__SEL_2,
       MUX_retransmit_write_1__SEL_2;

  // remaining internal signals
  wire [9 : 0] lengthF_first__63_MINUS_1___d164;
  wire [2 : 0] bram_serverAdapterB_cnt_4_PLUS_IF_bram_serverA_ETC___d100;
  wire bram_serverAdapterA_cnt_5_SLT_3_40_AND_NOT_dat_ETC___d147,
       countRdReq_62_EQ_lengthF_first__63_MINUS_1_64___d165,
       countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190,
       fidIngressF_first__04_EQ_fid_00___d205;

  // action method free_get
  assign RDY_free_get = freeF_EMPTY_N ;
  assign CAN_FIRE_free_get = freeF_EMPTY_N ;
  assign WILL_FIRE_free_get = EN_free_get ;

  // action method datagramSnd_put
  assign RDY_datagramSnd_put = datagramIngressF_FULL_N ;
  assign CAN_FIRE_datagramSnd_put = datagramIngressF_FULL_N ;
  assign WILL_FIRE_datagramSnd_put = EN_datagramSnd_put ;

  // actionvalue method datagramRcv_get
  assign datagramRcv_get = datagramEgressF_D_OUT ;
  assign RDY_datagramRcv_get = datagramEgressF_EMPTY_N ;
  assign CAN_FIRE_datagramRcv_get = datagramEgressF_EMPTY_N ;
  assign WILL_FIRE_datagramRcv_get = EN_datagramRcv_get ;

  // actionvalue method frameAck_request_get
  assign frameAck_request_get = fidEgressF_D_OUT ;
  assign RDY_frameAck_request_get = fidEgressF_EMPTY_N ;
  assign CAN_FIRE_frameAck_request_get = fidEgressF_EMPTY_N ;
  assign WILL_FIRE_frameAck_request_get = EN_frameAck_request_get ;

  // action method frameAck_response_put
  assign RDY_frameAck_response_put = fidIngressF_FULL_N ;
  assign CAN_FIRE_frameAck_response_put = fidIngressF_FULL_N ;
  assign WILL_FIRE_frameAck_response_put = EN_frameAck_response_put ;

  // submodule bram_memory
  BRAM2 #(.PIPELINED(1'd0),
	  .ADDR_WIDTH(32'd10),
	  .DATA_WIDTH(32'd134),
	  .MEMSIZE(11'd1024)) bram_memory(.CLKA(CLK),
					  .CLKB(CLK),
					  .ADDRA(bram_memory_ADDRA),
					  .ADDRB(bram_memory_ADDRB),
					  .DIA(bram_memory_DIA),
					  .DIB(bram_memory_DIB),
					  .WEA(bram_memory_WEA),
					  .WEB(bram_memory_WEB),
					  .ENA(bram_memory_ENA),
					  .ENB(bram_memory_ENB),
					  .DOA(bram_memory_DOA),
					  .DOB(bram_memory_DOB));

  // submodule bram_serverAdapterA_outDataCore
  SizedFIFO #(.p1width(32'd134),
	      .p2depth(32'd3),
	      .p3cntr_width(32'd1),
	      .guarded(32'd1)) bram_serverAdapterA_outDataCore(.RST(RST_N),
							       .CLK(CLK),
							       .D_IN(bram_serverAdapterA_outDataCore_D_IN),
							       .ENQ(bram_serverAdapterA_outDataCore_ENQ),
							       .DEQ(bram_serverAdapterA_outDataCore_DEQ),
							       .CLR(bram_serverAdapterA_outDataCore_CLR),
							       .D_OUT(),
							       .FULL_N(bram_serverAdapterA_outDataCore_FULL_N),
							       .EMPTY_N(bram_serverAdapterA_outDataCore_EMPTY_N));

  // submodule bram_serverAdapterB_outDataCore
  SizedFIFO #(.p1width(32'd134),
	      .p2depth(32'd3),
	      .p3cntr_width(32'd1),
	      .guarded(32'd1)) bram_serverAdapterB_outDataCore(.RST(RST_N),
							       .CLK(CLK),
							       .D_IN(bram_serverAdapterB_outDataCore_D_IN),
							       .ENQ(bram_serverAdapterB_outDataCore_ENQ),
							       .DEQ(bram_serverAdapterB_outDataCore_DEQ),
							       .CLR(bram_serverAdapterB_outDataCore_CLR),
							       .D_OUT(bram_serverAdapterB_outDataCore_D_OUT),
							       .FULL_N(bram_serverAdapterB_outDataCore_FULL_N),
							       .EMPTY_N(bram_serverAdapterB_outDataCore_EMPTY_N));

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

  // submodule fidEgressF
  FIFO2 #(.width(32'd16), .guarded(32'd1)) fidEgressF(.RST(RST_N),
						      .CLK(CLK),
						      .D_IN(fidEgressF_D_IN),
						      .ENQ(fidEgressF_ENQ),
						      .DEQ(fidEgressF_DEQ),
						      .CLR(fidEgressF_CLR),
						      .D_OUT(fidEgressF_D_OUT),
						      .FULL_N(fidEgressF_FULL_N),
						      .EMPTY_N(fidEgressF_EMPTY_N));

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

  // submodule fidIngressF
  FIFO2 #(.width(32'd16), .guarded(32'd1)) fidIngressF(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(fidIngressF_D_IN),
						       .ENQ(fidIngressF_ENQ),
						       .DEQ(fidIngressF_DEQ),
						       .CLR(fidIngressF_CLR),
						       .D_OUT(fidIngressF_D_OUT),
						       .FULL_N(fidIngressF_FULL_N),
						       .EMPTY_N(fidIngressF_EMPTY_N));

  // submodule freeF
  FIFO10 #(.guarded(32'd1)) freeF(.RST(RST_N),
				  .CLK(CLK),
				  .ENQ(freeF_ENQ),
				  .DEQ(freeF_DEQ),
				  .CLR(freeF_CLR),
				  .FULL_N(freeF_FULL_N),
				  .EMPTY_N(freeF_EMPTY_N));

  // submodule lengthF
  FIFO1 #(.width(32'd10), .guarded(32'd1)) lengthF(.RST(RST_N),
						   .CLK(CLK),
						   .D_IN(lengthF_D_IN),
						   .ENQ(lengthF_ENQ),
						   .DEQ(lengthF_DEQ),
						   .CLR(lengthF_CLR),
						   .D_OUT(lengthF_D_OUT),
						   .FULL_N(lengthF_FULL_N),
						   .EMPTY_N(lengthF_EMPTY_N));

  // submodule readTriggerF
  FIFO10 #(.guarded(32'd1)) readTriggerF(.RST(RST_N),
					 .CLK(CLK),
					 .ENQ(readTriggerF_ENQ),
					 .DEQ(readTriggerF_DEQ),
					 .CLR(readTriggerF_CLR),
					 .FULL_N(readTriggerF_FULL_N),
					 .EMPTY_N(readTriggerF_EMPTY_N));

  // rule RL_signalFreeInit
  assign CAN_FIRE_RL_signalFreeInit = freeF_FULL_N && setFreeInit ;
  assign WILL_FIRE_RL_signalFreeInit = CAN_FIRE_RL_signalFreeInit ;

  // rule RL_readReqBRAM
  assign CAN_FIRE_RL_readReqBRAM =
	     CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways ;
  assign WILL_FIRE_RL_readReqBRAM =
	     CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways ;

  // rule RL_sendFIF
  assign CAN_FIRE_RL_sendFIF = fidEgressF_FULL_N && fidF_EMPTY_N && sndFIF ;
  assign WILL_FIRE_RL_sendFIF = CAN_FIRE_RL_sendFIF ;

  // rule RL_timeout
  assign CAN_FIRE_RL_timeout =
	     (timeoutCount != 16'd0 || readTriggerF_FULL_N) && isRunning ;
  assign WILL_FIRE_RL_timeout =
	     CAN_FIRE_RL_timeout && !WILL_FIRE_RL_readReqBRAM &&
	     !WILL_FIRE_RL_writeBRAM ;

  // rule RL_getFID
  assign CAN_FIRE_RL_getFID =
	     datagramIngressF_EMPTY_N && fidF_FULL_N && grabFID ;
  assign WILL_FIRE_RL_getFID = CAN_FIRE_RL_getFID ;

  // rule RL_writeBRAM
  assign CAN_FIRE_RL_writeBRAM =
	     CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways ;
  assign WILL_FIRE_RL_writeBRAM =
	     CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways ;

  // rule RL_readCredit_accumulate
  assign CAN_FIRE_RL_readCredit_accumulate = 1'd1 ;
  assign WILL_FIRE_RL_readCredit_accumulate = 1'd1 ;

  // rule RL_bram_serverAdapterA_stageReadResponseAlways
  assign CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways =
	     datagramIngressF_EMPTY_N &&
	     bram_serverAdapterA_cnt_5_SLT_3_40_AND_NOT_dat_ETC___d147 &&
	     isOk2Write ;
  assign WILL_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways =
	     CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways ;

  // rule RL_bram_serverAdapterA_moveToOutFIFO
  assign CAN_FIRE_RL_bram_serverAdapterA_moveToOutFIFO =
	     (!bram_serverAdapterA_s1[0] ||
	      bram_serverAdapterA_outDataCore_FULL_N) &&
	     bram_serverAdapterA_s1[1] ;
  assign WILL_FIRE_RL_bram_serverAdapterA_moveToOutFIFO =
	     CAN_FIRE_RL_bram_serverAdapterA_moveToOutFIFO ;

  // rule RL_bram_serverAdapterA_overRun
  assign CAN_FIRE_RL_bram_serverAdapterA_overRun =
	     bram_serverAdapterA_s1[1] &&
	     !bram_serverAdapterA_outDataCore_FULL_N ;
  assign WILL_FIRE_RL_bram_serverAdapterA_overRun =
	     CAN_FIRE_RL_bram_serverAdapterA_overRun ;

  // rule RL_bram_serverAdapterA_outData_setFirstCore
  assign CAN_FIRE_RL_bram_serverAdapterA_outData_setFirstCore =
	     bram_serverAdapterA_outDataCore_EMPTY_N ;
  assign WILL_FIRE_RL_bram_serverAdapterA_outData_setFirstCore =
	     bram_serverAdapterA_outDataCore_EMPTY_N ;

  // rule RL_bram_serverAdapterA_outData_setFirstEnq
  assign CAN_FIRE_RL_bram_serverAdapterA_outData_setFirstEnq =
	     !bram_serverAdapterA_outDataCore_EMPTY_N &&
	     bram_serverAdapterA_outData_enqData_whas ;
  assign WILL_FIRE_RL_bram_serverAdapterA_outData_setFirstEnq =
	     CAN_FIRE_RL_bram_serverAdapterA_outData_setFirstEnq ;

  // rule RL_bram_serverAdapterA_outData_enqOnly
  assign CAN_FIRE_RL_bram_serverAdapterA_outData_enqOnly =
	     bram_serverAdapterA_outDataCore_FULL_N &&
	     bram_serverAdapterA_outData_enqData_whas ;
  assign WILL_FIRE_RL_bram_serverAdapterA_outData_enqOnly =
	     CAN_FIRE_RL_bram_serverAdapterA_outData_enqOnly ;

  // rule RL_bram_serverAdapterA_outData_deqOnly
  assign CAN_FIRE_RL_bram_serverAdapterA_outData_deqOnly = 1'b0 ;
  assign WILL_FIRE_RL_bram_serverAdapterA_outData_deqOnly = 1'b0 ;

  // rule RL_bram_serverAdapterA_outData_enqAndDeq
  assign CAN_FIRE_RL_bram_serverAdapterA_outData_enqAndDeq = 1'b0 ;
  assign WILL_FIRE_RL_bram_serverAdapterA_outData_enqAndDeq = 1'b0 ;

  // rule RL_bram_serverAdapterA_cnt_finalAdd
  assign CAN_FIRE_RL_bram_serverAdapterA_cnt_finalAdd = 1'b0 ;
  assign WILL_FIRE_RL_bram_serverAdapterA_cnt_finalAdd = 1'b0 ;

  // rule RL_bram_serverAdapterA_s1__dreg_update
  assign CAN_FIRE_RL_bram_serverAdapterA_s1__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_bram_serverAdapterA_s1__dreg_update = 1'd1 ;

  // rule RL_bram_serverAdapterB_stageReadResponseAlways
  assign CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways =
	     (bram_serverAdapterB_cnt ^ 3'h4) < 3'd7 && lengthF_EMPTY_N &&
	     (!countRdReq_62_EQ_lengthF_first__63_MINUS_1_64___d165 ||
	      readTriggerF_EMPTY_N) &&
	     readTriggerF_EMPTY_N ;
  assign WILL_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways =
	     CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways ;

  // rule RL_bram_serverAdapterB_moveToOutFIFO
  assign CAN_FIRE_RL_bram_serverAdapterB_moveToOutFIFO =
	     (!bram_serverAdapterB_s1[0] ||
	      bram_serverAdapterB_outDataCore_FULL_N) &&
	     bram_serverAdapterB_s1[1] ;
  assign WILL_FIRE_RL_bram_serverAdapterB_moveToOutFIFO =
	     CAN_FIRE_RL_bram_serverAdapterB_moveToOutFIFO ;

  // rule RL_bram_serverAdapterB_overRun
  assign CAN_FIRE_RL_bram_serverAdapterB_overRun =
	     bram_serverAdapterB_s1[1] &&
	     !bram_serverAdapterB_outDataCore_FULL_N ;
  assign WILL_FIRE_RL_bram_serverAdapterB_overRun =
	     CAN_FIRE_RL_bram_serverAdapterB_overRun ;

  // rule RL_bram_serverAdapterB_outData_setFirstCore
  assign CAN_FIRE_RL_bram_serverAdapterB_outData_setFirstCore =
	     bram_serverAdapterB_outDataCore_EMPTY_N ;
  assign WILL_FIRE_RL_bram_serverAdapterB_outData_setFirstCore =
	     bram_serverAdapterB_outDataCore_EMPTY_N ;

  // rule RL_bram_serverAdapterB_outData_setFirstEnq
  assign CAN_FIRE_RL_bram_serverAdapterB_outData_setFirstEnq =
	     !bram_serverAdapterB_outDataCore_EMPTY_N &&
	     bram_serverAdapterB_outData_enqData_whas ;
  assign WILL_FIRE_RL_bram_serverAdapterB_outData_setFirstEnq =
	     CAN_FIRE_RL_bram_serverAdapterB_outData_setFirstEnq ;

  // rule RL_readBRAM
  assign CAN_FIRE_RL_readBRAM =
	     lengthF_EMPTY_N &&
	     (bram_serverAdapterB_outDataCore_EMPTY_N ||
	      bram_serverAdapterB_outData_enqData_whas) &&
	     bram_serverAdapterB_outData_outData_whas &&
	     datagramEgressF_FULL_N ;
  assign WILL_FIRE_RL_readBRAM = CAN_FIRE_RL_readBRAM ;

  // rule RL_releaseFrm
  assign CAN_FIRE_RL_releaseFrm =
	     fidIngressF_EMPTY_N &&
	     (!fidIngressF_first__04_EQ_fid_00___d205 ||
	      freeF_FULL_N && lengthF_EMPTY_N) ;
  assign WILL_FIRE_RL_releaseFrm =
	     CAN_FIRE_RL_releaseFrm && !WILL_FIRE_RL_getFID &&
	     !WILL_FIRE_RL_signalFreeInit ;

  // rule RL_bram_serverAdapterB_outData_enqOnly
  assign CAN_FIRE_RL_bram_serverAdapterB_outData_enqOnly =
	     bram_serverAdapterB_outDataCore_FULL_N &&
	     !CAN_FIRE_RL_readBRAM &&
	     bram_serverAdapterB_outData_enqData_whas ;
  assign WILL_FIRE_RL_bram_serverAdapterB_outData_enqOnly =
	     CAN_FIRE_RL_bram_serverAdapterB_outData_enqOnly ;

  // rule RL_bram_serverAdapterB_outData_deqOnly
  assign CAN_FIRE_RL_bram_serverAdapterB_outData_deqOnly =
	     bram_serverAdapterB_outDataCore_EMPTY_N &&
	     CAN_FIRE_RL_readBRAM &&
	     !bram_serverAdapterB_outData_enqData_whas ;
  assign WILL_FIRE_RL_bram_serverAdapterB_outData_deqOnly =
	     CAN_FIRE_RL_bram_serverAdapterB_outData_deqOnly ;

  // rule RL_bram_serverAdapterB_outData_enqAndDeq
  assign CAN_FIRE_RL_bram_serverAdapterB_outData_enqAndDeq =
	     bram_serverAdapterB_outDataCore_EMPTY_N &&
	     bram_serverAdapterB_outDataCore_FULL_N &&
	     CAN_FIRE_RL_readBRAM &&
	     bram_serverAdapterB_outData_enqData_whas ;
  assign WILL_FIRE_RL_bram_serverAdapterB_outData_enqAndDeq =
	     CAN_FIRE_RL_bram_serverAdapterB_outData_enqAndDeq ;

  // rule RL_bram_serverAdapterB_cnt_finalAdd
  assign CAN_FIRE_RL_bram_serverAdapterB_cnt_finalAdd =
	     WILL_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways ||
	     CAN_FIRE_RL_readBRAM ;
  assign WILL_FIRE_RL_bram_serverAdapterB_cnt_finalAdd =
	     CAN_FIRE_RL_bram_serverAdapterB_cnt_finalAdd ;

  // rule RL_bram_serverAdapterB_s1__dreg_update
  assign CAN_FIRE_RL_bram_serverAdapterB_s1__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_bram_serverAdapterB_s1__dreg_update = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_grabFID_write_1__SEL_1 =
	     WILL_FIRE_RL_releaseFrm &&
	     fidIngressF_first__04_EQ_fid_00___d205 ;
  assign MUX_isOk2Write_write_1__SEL_2 =
	     WILL_FIRE_RL_writeBRAM && datagramIngressF_D_OUT[0] ;
  assign MUX_isRunning_write_1__SEL_2 =
	     WILL_FIRE_RL_timeout && timeoutCount == 16'd0 ;
  assign MUX_retransmit_write_1__SEL_2 =
	     WILL_FIRE_RL_readBRAM &&
	     countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190 ;
  assign MUX_readAddr_write_1__VAL_1 = { ~readAddr[9], 9'd0 } ;
  assign MUX_readAddr_write_1__VAL_2 =
	     countRdReq_62_EQ_lengthF_first__63_MINUS_1_64___d165 ?
	       { ~readAddr[9], 9'd0 } :
	       readAddr + 10'd1 ;
  assign MUX_timeoutCount_write_1__VAL_2 =
	     (timeoutCount == 16'd0) ? timeoutVal : timeoutCount - 16'd1 ;

  // inlined wires
  assign readCredit_acc_v2_whas = WILL_FIRE_RL_readReqBRAM && !retransmit ;
  assign bram_serverAdapterA_outData_enqData_whas =
	     WILL_FIRE_RL_bram_serverAdapterA_moveToOutFIFO &&
	     bram_serverAdapterA_s1[0] ;
  assign bram_serverAdapterB_outData_enqData_whas =
	     WILL_FIRE_RL_bram_serverAdapterB_moveToOutFIFO &&
	     bram_serverAdapterB_s1[0] ;
  assign bram_serverAdapterB_outData_outData_whas =
	     bram_serverAdapterB_outDataCore_EMPTY_N ||
	     WILL_FIRE_RL_bram_serverAdapterB_outData_setFirstEnq ;

  // register bram_serverAdapterA_cnt
  assign bram_serverAdapterA_cnt_D_IN =
	     bram_serverAdapterA_cnt + 3'd0 + 3'd0 ;
  assign bram_serverAdapterA_cnt_EN = 1'b0 ;

  // register bram_serverAdapterA_s1
  assign bram_serverAdapterA_s1_D_IN =
	     { CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways,
	       1'b0 } ;
  assign bram_serverAdapterA_s1_EN = 1'd1 ;

  // register bram_serverAdapterB_cnt
  assign bram_serverAdapterB_cnt_D_IN =
	     bram_serverAdapterB_cnt_4_PLUS_IF_bram_serverA_ETC___d100 ;
  assign bram_serverAdapterB_cnt_EN =
	     CAN_FIRE_RL_bram_serverAdapterB_cnt_finalAdd ;

  // register bram_serverAdapterB_s1
  assign bram_serverAdapterB_s1_D_IN =
	     { CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways,
	       1'b1 } ;
  assign bram_serverAdapterB_s1_EN = 1'd1 ;

  // register countRd
  assign countRd_D_IN =
	     countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190 ?
	       10'd0 :
	       countRd + 10'd1 ;
  assign countRd_EN = CAN_FIRE_RL_readBRAM ;

  // register countRdReq
  assign countRdReq_D_IN =
	     countRdReq_62_EQ_lengthF_first__63_MINUS_1_64___d165 ?
	       10'd0 :
	       countRdReq + 10'd1 ;
  assign countRdReq_EN =
	     CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways ;

  // register countWrd
  assign countWrd_D_IN =
	     datagramIngressF_D_OUT[0] ? 10'd1 : countWrd + 10'd1 ;
  assign countWrd_EN =
	     CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways ;

  // register fid
  assign fid_D_IN =
	     { datagramIngressF_D_OUT[45:38],
	       datagramIngressF_D_OUT[53:46] } ;
  assign fid_EN = CAN_FIRE_RL_getFID ;

  // register grabFID
  assign grabFID_D_IN = MUX_grabFID_write_1__SEL_1 ;
  assign grabFID_EN =
	     WILL_FIRE_RL_releaseFrm &&
	     fidIngressF_first__04_EQ_fid_00___d205 ||
	     WILL_FIRE_RL_getFID ;

  // register isOk2Write
  assign isOk2Write_D_IN = MUX_grabFID_write_1__SEL_1 ;
  assign isOk2Write_EN =
	     WILL_FIRE_RL_writeBRAM && datagramIngressF_D_OUT[0] ||
	     WILL_FIRE_RL_releaseFrm &&
	     fidIngressF_first__04_EQ_fid_00___d205 ;

  // register isRunning
  assign isRunning_D_IN = MUX_retransmit_write_1__SEL_2 ;
  assign isRunning_EN =
	     WILL_FIRE_RL_readBRAM &&
	     countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190 ||
	     WILL_FIRE_RL_timeout && timeoutCount == 16'd0 ;

  // register readAddr
  assign readAddr_D_IN =
	     MUX_isRunning_write_1__SEL_2 ?
	       MUX_readAddr_write_1__VAL_1 :
	       MUX_readAddr_write_1__VAL_2 ;
  assign readAddr_EN =
	     WILL_FIRE_RL_timeout && timeoutCount == 16'd0 ||
	     WILL_FIRE_RL_readReqBRAM ;

  // register readCredit_value
  assign readCredit_value_D_IN =
	     readCredit_value +
	     (CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways ?
		10'd1 :
		10'd0) +
	     (readCredit_acc_v2_whas ? 10'd1023 : 10'd0) ;
  assign readCredit_value_EN = 1'd1 ;

  // register retransmit
  assign retransmit_D_IN =
	     !MUX_grabFID_write_1__SEL_1 && !MUX_retransmit_write_1__SEL_2 ;
  assign retransmit_EN =
	     WILL_FIRE_RL_readBRAM &&
	     countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190 ||
	     WILL_FIRE_RL_releaseFrm &&
	     fidIngressF_first__04_EQ_fid_00___d205 ||
	     WILL_FIRE_RL_timeout && timeoutCount == 16'd0 ;

  // register setFreeInit
  assign setFreeInit_D_IN = 1'd0 ;
  assign setFreeInit_EN = CAN_FIRE_RL_signalFreeInit ;

  // register sndFIF
  assign sndFIF_D_IN = MUX_retransmit_write_1__SEL_2 ;
  assign sndFIF_EN =
	     WILL_FIRE_RL_readBRAM &&
	     countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190 ||
	     WILL_FIRE_RL_sendFIF ;

  // register timeoutCount
  assign timeoutCount_D_IN =
	     MUX_retransmit_write_1__SEL_2 ?
	       timeoutVal :
	       MUX_timeoutCount_write_1__VAL_2 ;
  assign timeoutCount_EN =
	     WILL_FIRE_RL_readBRAM &&
	     countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190 ||
	     WILL_FIRE_RL_timeout ;

  // register timeoutVal
  assign timeoutVal_D_IN = 16'h0 ;
  assign timeoutVal_EN = 1'b0 ;

  // register writeAddr
  assign writeAddr_D_IN =
	     datagramIngressF_D_OUT[0] ?
	       { ~writeAddr[9], 9'd0 } :
	       writeAddr + 10'd1 ;
  assign writeAddr_EN =
	     CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways ;

  // submodule bram_memory
  assign bram_memory_ADDRA = writeAddr ;
  assign bram_memory_ADDRB = readAddr ;
  assign bram_memory_DIA = datagramIngressF_D_OUT ;
  assign bram_memory_DIB =
	     134'h2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA /* unspecified value */  ;
  assign bram_memory_WEA = 1'd1 ;
  assign bram_memory_WEB = 1'd0 ;
  assign bram_memory_ENA =
	     CAN_FIRE_RL_bram_serverAdapterA_stageReadResponseAlways ;
  assign bram_memory_ENB =
	     CAN_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways ;

  // submodule bram_serverAdapterA_outDataCore
  assign bram_serverAdapterA_outDataCore_D_IN = bram_memory_DOA ;
  assign bram_serverAdapterA_outDataCore_ENQ =
	     WILL_FIRE_RL_bram_serverAdapterA_outData_enqOnly ;
  assign bram_serverAdapterA_outDataCore_DEQ = 1'b0 ;
  assign bram_serverAdapterA_outDataCore_CLR = 1'b0 ;

  // submodule bram_serverAdapterB_outDataCore
  assign bram_serverAdapterB_outDataCore_D_IN = bram_memory_DOB ;
  assign bram_serverAdapterB_outDataCore_ENQ =
	     WILL_FIRE_RL_bram_serverAdapterB_outData_enqAndDeq ||
	     WILL_FIRE_RL_bram_serverAdapterB_outData_enqOnly ;
  assign bram_serverAdapterB_outDataCore_DEQ =
	     WILL_FIRE_RL_bram_serverAdapterB_outData_enqAndDeq ||
	     WILL_FIRE_RL_bram_serverAdapterB_outData_deqOnly ;
  assign bram_serverAdapterB_outDataCore_CLR = 1'b0 ;

  // submodule datagramEgressF
  assign datagramEgressF_D_IN =
	     bram_serverAdapterB_outDataCore_EMPTY_N ?
	       bram_serverAdapterB_outDataCore_D_OUT :
	       bram_memory_DOB ;
  assign datagramEgressF_ENQ =
	     lengthF_EMPTY_N &&
	     (bram_serverAdapterB_outDataCore_EMPTY_N ||
	      bram_serverAdapterB_outData_enqData_whas) &&
	     bram_serverAdapterB_outData_outData_whas &&
	     datagramEgressF_FULL_N ;
  assign datagramEgressF_DEQ = EN_datagramRcv_get ;
  assign datagramEgressF_CLR = 1'b0 ;

  // submodule datagramIngressF
  assign datagramIngressF_D_IN = datagramSnd_put ;
  assign datagramIngressF_ENQ = EN_datagramSnd_put ;
  assign datagramIngressF_DEQ =
	     datagramIngressF_EMPTY_N &&
	     bram_serverAdapterA_cnt_5_SLT_3_40_AND_NOT_dat_ETC___d147 &&
	     isOk2Write ;
  assign datagramIngressF_CLR = 1'b0 ;

  // submodule fidEgressF
  assign fidEgressF_D_IN = fidF_D_OUT ;
  assign fidEgressF_ENQ = CAN_FIRE_RL_sendFIF ;
  assign fidEgressF_DEQ = EN_frameAck_request_get ;
  assign fidEgressF_CLR = 1'b0 ;

  // submodule fidF
  assign fidF_D_IN =
	     { datagramIngressF_D_OUT[45:38],
	       datagramIngressF_D_OUT[53:46] } ;
  assign fidF_ENQ = CAN_FIRE_RL_getFID ;
  assign fidF_DEQ = CAN_FIRE_RL_sendFIF ;
  assign fidF_CLR = 1'b0 ;

  // submodule fidIngressF
  assign fidIngressF_D_IN = frameAck_response_put ;
  assign fidIngressF_ENQ = EN_frameAck_response_put ;
  assign fidIngressF_DEQ = WILL_FIRE_RL_releaseFrm ;
  assign fidIngressF_CLR = 1'b0 ;

  // submodule freeF
  assign freeF_ENQ =
	     WILL_FIRE_RL_releaseFrm &&
	     fidIngressF_first__04_EQ_fid_00___d205 ||
	     WILL_FIRE_RL_signalFreeInit ;
  assign freeF_DEQ = EN_free_get ;
  assign freeF_CLR = 1'b0 ;

  // submodule lengthF
  assign lengthF_D_IN = countWrd ;
  assign lengthF_ENQ = MUX_isOk2Write_write_1__SEL_2 ;
  assign lengthF_DEQ = MUX_grabFID_write_1__SEL_1 ;
  assign lengthF_CLR = 1'b0 ;

  // submodule readTriggerF
  assign readTriggerF_ENQ =
	     WILL_FIRE_RL_writeBRAM && datagramIngressF_D_OUT[0] ||
	     WILL_FIRE_RL_timeout && timeoutCount == 16'd0 ;
  assign readTriggerF_DEQ =
	     WILL_FIRE_RL_readReqBRAM &&
	     countRdReq_62_EQ_lengthF_first__63_MINUS_1_64___d165 ;
  assign readTriggerF_CLR = 1'b0 ;

  // remaining internal signals
  assign bram_serverAdapterA_cnt_5_SLT_3_40_AND_NOT_dat_ETC___d147 =
	     (bram_serverAdapterA_cnt ^ 3'h4) < 3'd7 &&
	     (!datagramIngressF_D_OUT[0] ||
	      lengthF_FULL_N && readTriggerF_FULL_N) ;
  assign bram_serverAdapterB_cnt_4_PLUS_IF_bram_serverA_ETC___d100 =
	     bram_serverAdapterB_cnt +
	     (WILL_FIRE_RL_bram_serverAdapterB_stageReadResponseAlways ?
		3'd1 :
		3'd0) +
	     (CAN_FIRE_RL_readBRAM ? 3'd7 : 3'd0) ;
  assign countRdReq_62_EQ_lengthF_first__63_MINUS_1_64___d165 =
	     countRdReq == lengthF_first__63_MINUS_1___d164 ;
  assign countRd_89_EQ_lengthF_first__63_MINUS_1_64___d190 =
	     countRd == lengthF_first__63_MINUS_1___d164 ;
  assign fidIngressF_first__04_EQ_fid_00___d205 = fidIngressF_D_OUT == fid ;
  assign lengthF_first__63_MINUS_1___d164 = lengthF_D_OUT - 10'd1 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        bram_serverAdapterA_cnt <= `BSV_ASSIGNMENT_DELAY 3'd0;
	bram_serverAdapterA_s1 <= `BSV_ASSIGNMENT_DELAY 2'd0;
	bram_serverAdapterB_cnt <= `BSV_ASSIGNMENT_DELAY 3'd0;
	bram_serverAdapterB_s1 <= `BSV_ASSIGNMENT_DELAY 2'd0;
	countRd <= `BSV_ASSIGNMENT_DELAY 10'd0;
	countRdReq <= `BSV_ASSIGNMENT_DELAY 10'd0;
	countWrd <= `BSV_ASSIGNMENT_DELAY 10'd1;
	fid <= `BSV_ASSIGNMENT_DELAY 16'd0;
	grabFID <= `BSV_ASSIGNMENT_DELAY 1'd1;
	isOk2Write <= `BSV_ASSIGNMENT_DELAY 1'd1;
	isRunning <= `BSV_ASSIGNMENT_DELAY 1'd1;
	readAddr <= `BSV_ASSIGNMENT_DELAY 10'd0;
	readCredit_value <= `BSV_ASSIGNMENT_DELAY 10'd0;
	retransmit <= `BSV_ASSIGNMENT_DELAY 1'd0;
	setFreeInit <= `BSV_ASSIGNMENT_DELAY 1'd1;
	sndFIF <= `BSV_ASSIGNMENT_DELAY 1'd0;
	timeoutCount <= `BSV_ASSIGNMENT_DELAY 16'd100;
	timeoutVal <= `BSV_ASSIGNMENT_DELAY 16'd100;
	writeAddr <= `BSV_ASSIGNMENT_DELAY 10'd0;
      end
    else
      begin
        if (bram_serverAdapterA_cnt_EN)
	  bram_serverAdapterA_cnt <= `BSV_ASSIGNMENT_DELAY
	      bram_serverAdapterA_cnt_D_IN;
	if (bram_serverAdapterA_s1_EN)
	  bram_serverAdapterA_s1 <= `BSV_ASSIGNMENT_DELAY
	      bram_serverAdapterA_s1_D_IN;
	if (bram_serverAdapterB_cnt_EN)
	  bram_serverAdapterB_cnt <= `BSV_ASSIGNMENT_DELAY
	      bram_serverAdapterB_cnt_D_IN;
	if (bram_serverAdapterB_s1_EN)
	  bram_serverAdapterB_s1 <= `BSV_ASSIGNMENT_DELAY
	      bram_serverAdapterB_s1_D_IN;
	if (countRd_EN) countRd <= `BSV_ASSIGNMENT_DELAY countRd_D_IN;
	if (countRdReq_EN)
	  countRdReq <= `BSV_ASSIGNMENT_DELAY countRdReq_D_IN;
	if (countWrd_EN) countWrd <= `BSV_ASSIGNMENT_DELAY countWrd_D_IN;
	if (fid_EN) fid <= `BSV_ASSIGNMENT_DELAY fid_D_IN;
	if (grabFID_EN) grabFID <= `BSV_ASSIGNMENT_DELAY grabFID_D_IN;
	if (isOk2Write_EN)
	  isOk2Write <= `BSV_ASSIGNMENT_DELAY isOk2Write_D_IN;
	if (isRunning_EN) isRunning <= `BSV_ASSIGNMENT_DELAY isRunning_D_IN;
	if (readAddr_EN) readAddr <= `BSV_ASSIGNMENT_DELAY readAddr_D_IN;
	if (readCredit_value_EN)
	  readCredit_value <= `BSV_ASSIGNMENT_DELAY readCredit_value_D_IN;
	if (retransmit_EN)
	  retransmit <= `BSV_ASSIGNMENT_DELAY retransmit_D_IN;
	if (setFreeInit_EN)
	  setFreeInit <= `BSV_ASSIGNMENT_DELAY setFreeInit_D_IN;
	if (sndFIF_EN) sndFIF <= `BSV_ASSIGNMENT_DELAY sndFIF_D_IN;
	if (timeoutCount_EN)
	  timeoutCount <= `BSV_ASSIGNMENT_DELAY timeoutCount_D_IN;
	if (timeoutVal_EN)
	  timeoutVal <= `BSV_ASSIGNMENT_DELAY timeoutVal_D_IN;
	if (writeAddr_EN) writeAddr <= `BSV_ASSIGNMENT_DELAY writeAddr_D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    bram_serverAdapterA_cnt = 3'h2;
    bram_serverAdapterA_s1 = 2'h2;
    bram_serverAdapterB_cnt = 3'h2;
    bram_serverAdapterB_s1 = 2'h2;
    countRd = 10'h2AA;
    countRdReq = 10'h2AA;
    countWrd = 10'h2AA;
    fid = 16'hAAAA;
    grabFID = 1'h0;
    isOk2Write = 1'h0;
    isRunning = 1'h0;
    readAddr = 10'h2AA;
    readCredit_value = 10'h2AA;
    retransmit = 1'h0;
    setFreeInit = 1'h0;
    sndFIF = 1'h0;
    timeoutCount = 16'hAAAA;
    timeoutVal = 16'hAAAA;
    writeAddr = 10'h2AA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_sendFIF)
	$display("FDU: sent frame %0x", $unsigned(fid));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_timeout && timeoutCount == 16'd0)
	$display("FDU: timeout detected, retransmitting frame %0x",
		 $unsigned(fid));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_bram_serverAdapterA_overRun)
	$display("ERROR: %m: mkBRAMSeverAdapter overrun");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_bram_serverAdapterB_overRun)
	$display("ERROR: %m: mkBRAMSeverAdapter overrun");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_releaseFrm && fidIngressF_first__04_EQ_fid_00___d205)
	$display("FDU: received ack for frame %0x", $unsigned(fid));
  end
  // synopsys translate_on
endmodule  // mkFDU

