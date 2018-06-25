// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Mon Jun 13 15:34:46 2016
// Host        : E265 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/svo/gtfpga/vc707/vc707_villas_simple/bd/top/ip/top_xbar_6/top_xbar_6_sim_netlist.v
// Design      : top_xbar_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_xbar_6,axis_switch_v1_1_8_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_8_axis_switch,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module top_xbar_6
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2]" *) input [2:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2]" *) output [2:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [31:0] [95:64]" *) input [95:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 S02_AXIS TKEEP [3:0] [11:8]" *) input [11:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2]" *) input [2:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2]" *) output [2:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2]" *) input [2:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [31:0] [95:64]" *) output [95:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [3:0] [11:8]" *) output [11:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2]" *) output [2:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK" *) input s_axi_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_CTRL_ARESETN RST" *) input s_axi_ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [6:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) input [6:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]s_axi_ctrl_rresp;

  wire aclk;
  wire aresetn;
  wire [95:0]m_axis_tdata;
  wire [11:0]m_axis_tkeep;
  wire [2:0]m_axis_tlast;
  wire [2:0]m_axis_tready;
  wire [2:0]m_axis_tvalid;
  wire s_axi_ctrl_aclk;
  wire [6:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [6:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [95:0]s_axis_tdata;
  wire [11:0]s_axis_tkeep;
  wire [2:0]s_axis_tlast;
  wire [2:0]s_axis_tready;
  wire [2:0]s_axis_tvalid;
  wire [8:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [2:0]NLW_inst_arb_done_UNCONNECTED;
  wire [8:0]NLW_inst_arb_id_UNCONNECTED;
  wire [8:0]NLW_inst_arb_last_UNCONNECTED;
  wire [8:0]NLW_inst_arb_req_UNCONNECTED;
  wire [8:0]NLW_inst_arb_user_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [11:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_tuser_UNCONNECTED;
  wire [2:0]NLW_inst_s_decode_err_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "27" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "1" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "2" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "3'b010" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "9'b111111111" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "3'b010" *) 
  (* C_NUM_MI_SLOTS = "3" *) 
  (* C_NUM_SI_SLOTS = "3" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "1" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "30" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "9'b111111111" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "3'b000" *) 
  (* P_TPAYLOAD_WIDTH = "37" *) 
  top_xbar_6_axis_switch_v1_1_8_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[8:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[2:0]),
        .arb_gnt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[8:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[8:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[8:0]),
        .arb_sel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[8:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[2:0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[2:0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[11:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[2:0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest({1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0}),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser({1'b0,1'b0,1'b0}),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(NLW_inst_s_decode_err_UNCONNECTED[2:0]),
        .s_req_suppress({1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_cdc_handshake" *) 
module top_xbar_6_axis_infrastructure_v1_1_0_cdc_handshake
   (src_rcv,
    D,
    E,
    s_axi_ctrl_aclk,
    ctrl_reg,
    src_send,
    aclk);
  output src_rcv;
  output [17:0]D;
  output [0:0]E;
  input s_axi_ctrl_aclk;
  input [29:0]ctrl_reg;
  input src_send;
  input aclk;

  wire [17:0]D;
  wire [0:0]E;
  wire aclk;
  wire [26:15]cdc_handshake_data_out;
  wire [29:0]ctrl_reg;
  wire s_axi_ctrl_aclk;
  wire src_rcv;
  wire src_send;

  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "4" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "30" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_6_xpm_cdc_handshake inst_xpm_cdc_handshake
       (.dest_ack(1'b0),
        .dest_clk(aclk),
        .dest_out({D[17:15],cdc_handshake_data_out,D[14:0]}),
        .dest_req(E),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(ctrl_reg),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_clock_synchronizer" *) 
module top_xbar_6_axis_infrastructure_v1_1_0_clock_synchronizer
   (p_0_in,
    src_in,
    aclk,
    aresetn);
  output p_0_in;
  input src_in;
  input aclk;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire p_0_in;
  wire soft_reset;
  wire src_in;

  LUT2 #(
    .INIT(4'hB)) 
    areset_r_i_1
       (.I0(soft_reset),
        .I1(aresetn),
        .O(p_0_in));
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_6_xpm_cdc_single inst_xpm_cdc_single
       (.dest_clk(aclk),
        .dest_out(soft_reset),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice
   (\s_axis_tready[2] ,
    \gen_AB_reg_slice.payload_a_reg[0]_0 ,
    p_2_out,
    aclk,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ,
    Q,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ,
    m_axis_tready,
    aclken,
    s_axis_tvalid,
    areset_r,
    D);
  output \s_axis_tready[2] ;
  output \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  output [36:0]p_2_out;
  input aclk;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  input [10:0]Q;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  input [0:0]m_axis_tready;
  input aclken;
  input [0:0]s_axis_tvalid;
  input areset_r;
  input [36:0]D;

  wire [36:0]D;
  wire [10:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1_n_0 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_6_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_7_n_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  wire [0:0]m_axis_tready;
  wire [36:0]p_2_out;
  wire [36:0]payload_a;
  wire payload_a_1;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[2] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;
  wire tready_mux__1;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__1 
       (.I0(aclken),
        .I1(\s_axis_tready[2] ),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(sel_wr),
        .O(payload_a_1));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__1 
       (.I0(aclken),
        .I1(\s_axis_tready[2] ),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1 
       (.I0(tready_mux__1),
        .I1(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I2(aclken),
        .I3(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__1 
       (.I0(s_axis_tvalid),
        .I1(\s_axis_tready[2] ),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1__1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(tready_mux__1),
        .I4(\s_axis_tready[2] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__1 
       (.I0(areset_r),
        .I1(Q[10]),
        .O(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2__1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(tready_mux__1),
        .I4(\s_axis_tready[2] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E0E0E0E0E0E)) 
    \gen_AB_reg_slice.state[1]_i_3 
       (.I0(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ),
        .I2(\gen_AB_reg_slice.state[1]_i_6_n_0 ),
        .I3(Q[8]),
        .I4(\gen_AB_reg_slice.state[1]_i_7_n_0 ),
        .I5(\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ),
        .O(tready_mux__1));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_4__1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \gen_AB_reg_slice.state[1]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[9]),
        .I5(m_axis_tready),
        .O(\gen_AB_reg_slice.state[1]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_AB_reg_slice.state[1]_i_7 
       (.I0(Q[7]),
        .I1(Q[6]),
        .O(\gen_AB_reg_slice.state[1]_i_7_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__1_n_0 ),
        .Q(\s_axis_tready[2] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[64]_INST_0_i_2 
       (.I0(payload_b[0]),
        .I1(sel),
        .I2(payload_a[0]),
        .O(p_2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[65]_INST_0_i_2 
       (.I0(payload_b[1]),
        .I1(sel),
        .I2(payload_a[1]),
        .O(p_2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[66]_INST_0_i_2 
       (.I0(payload_b[2]),
        .I1(sel),
        .I2(payload_a[2]),
        .O(p_2_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[67]_INST_0_i_2 
       (.I0(payload_b[3]),
        .I1(sel),
        .I2(payload_a[3]),
        .O(p_2_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[68]_INST_0_i_2 
       (.I0(payload_b[4]),
        .I1(sel),
        .I2(payload_a[4]),
        .O(p_2_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[69]_INST_0_i_2 
       (.I0(payload_b[5]),
        .I1(sel),
        .I2(payload_a[5]),
        .O(p_2_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[70]_INST_0_i_2 
       (.I0(payload_b[6]),
        .I1(sel),
        .I2(payload_a[6]),
        .O(p_2_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[71]_INST_0_i_2 
       (.I0(payload_b[7]),
        .I1(sel),
        .I2(payload_a[7]),
        .O(p_2_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[72]_INST_0_i_2 
       (.I0(payload_b[8]),
        .I1(sel),
        .I2(payload_a[8]),
        .O(p_2_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[73]_INST_0_i_2 
       (.I0(payload_b[9]),
        .I1(sel),
        .I2(payload_a[9]),
        .O(p_2_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[74]_INST_0_i_2 
       (.I0(payload_b[10]),
        .I1(sel),
        .I2(payload_a[10]),
        .O(p_2_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[75]_INST_0_i_2 
       (.I0(payload_b[11]),
        .I1(sel),
        .I2(payload_a[11]),
        .O(p_2_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[76]_INST_0_i_2 
       (.I0(payload_b[12]),
        .I1(sel),
        .I2(payload_a[12]),
        .O(p_2_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[77]_INST_0_i_2 
       (.I0(payload_b[13]),
        .I1(sel),
        .I2(payload_a[13]),
        .O(p_2_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[78]_INST_0_i_2 
       (.I0(payload_b[14]),
        .I1(sel),
        .I2(payload_a[14]),
        .O(p_2_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_2 
       (.I0(payload_b[15]),
        .I1(sel),
        .I2(payload_a[15]),
        .O(p_2_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[80]_INST_0_i_2 
       (.I0(payload_b[16]),
        .I1(sel),
        .I2(payload_a[16]),
        .O(p_2_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[81]_INST_0_i_2 
       (.I0(payload_b[17]),
        .I1(sel),
        .I2(payload_a[17]),
        .O(p_2_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[82]_INST_0_i_2 
       (.I0(payload_b[18]),
        .I1(sel),
        .I2(payload_a[18]),
        .O(p_2_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[83]_INST_0_i_2 
       (.I0(payload_b[19]),
        .I1(sel),
        .I2(payload_a[19]),
        .O(p_2_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[84]_INST_0_i_2 
       (.I0(payload_b[20]),
        .I1(sel),
        .I2(payload_a[20]),
        .O(p_2_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[85]_INST_0_i_2 
       (.I0(payload_b[21]),
        .I1(sel),
        .I2(payload_a[21]),
        .O(p_2_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[86]_INST_0_i_2 
       (.I0(payload_b[22]),
        .I1(sel),
        .I2(payload_a[22]),
        .O(p_2_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[87]_INST_0_i_2 
       (.I0(payload_b[23]),
        .I1(sel),
        .I2(payload_a[23]),
        .O(p_2_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[88]_INST_0_i_2 
       (.I0(payload_b[24]),
        .I1(sel),
        .I2(payload_a[24]),
        .O(p_2_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[89]_INST_0_i_2 
       (.I0(payload_b[25]),
        .I1(sel),
        .I2(payload_a[25]),
        .O(p_2_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[90]_INST_0_i_2 
       (.I0(payload_b[26]),
        .I1(sel),
        .I2(payload_a[26]),
        .O(p_2_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[91]_INST_0_i_2 
       (.I0(payload_b[27]),
        .I1(sel),
        .I2(payload_a[27]),
        .O(p_2_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[92]_INST_0_i_2 
       (.I0(payload_b[28]),
        .I1(sel),
        .I2(payload_a[28]),
        .O(p_2_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[93]_INST_0_i_2 
       (.I0(payload_b[29]),
        .I1(sel),
        .I2(payload_a[29]),
        .O(p_2_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[94]_INST_0_i_2 
       (.I0(payload_b[30]),
        .I1(sel),
        .I2(payload_a[30]),
        .O(p_2_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_3 
       (.I0(payload_b[31]),
        .I1(sel),
        .I2(payload_a[31]),
        .O(p_2_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[10]_INST_0_i_2 
       (.I0(payload_b[34]),
        .I1(sel),
        .I2(payload_a[34]),
        .O(p_2_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[11]_INST_0_i_2 
       (.I0(payload_b[35]),
        .I1(sel),
        .I2(payload_a[35]),
        .O(p_2_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[8]_INST_0_i_2 
       (.I0(payload_b[32]),
        .I1(sel),
        .I2(payload_a[32]),
        .O(p_2_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[9]_INST_0_i_2 
       (.I0(payload_b[33]),
        .I1(sel),
        .I2(payload_a[33]),
        .O(p_2_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[2]_INST_0_i_2 
       (.I0(payload_b[36]),
        .I1(sel),
        .I2(payload_a[36]),
        .O(p_2_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_2
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tvalid,
    \s_axis_tready[1] ,
    aclk,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ,
    Q,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ,
    m_axis_tready,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ,
    p_2_out,
    p_12_out,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ,
    aclken,
    s_axis_tvalid,
    areset_r,
    D);
  output [95:0]m_axis_tdata;
  output [11:0]m_axis_tkeep;
  output [2:0]m_axis_tlast;
  output [2:0]m_axis_tvalid;
  output \s_axis_tready[1] ;
  input aclk;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  input [12:0]Q;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  input [0:0]m_axis_tready;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  input [36:0]p_2_out;
  input [36:0]p_12_out;
  input [1:0]\gen_AB_reg_slice.state_reg[0]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ;
  input aclken;
  input [0:0]s_axis_tvalid;
  input areset_r;
  input [36:0]D;

  wire [36:0]D;
  wire [12:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.sel_rd_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_5_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_6__1_n_0 ;
  wire [1:0]\gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ;
  wire [95:0]m_axis_tdata;
  wire [11:0]m_axis_tkeep;
  wire [2:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [2:0]m_axis_tvalid;
  wire [1:1]mux_tvalid;
  wire [36:0]p_12_out;
  wire [36:0]p_2_out;
  wire [36:0]p_7_out;
  wire [36:0]payload_a;
  wire payload_a_1;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[1] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;
  wire tready_mux__1;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__0 
       (.I0(aclken),
        .I1(\s_axis_tready[1] ),
        .I2(mux_tvalid),
        .I3(sel_wr),
        .O(payload_a_1));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__0 
       (.I0(aclken),
        .I1(\s_axis_tready[1] ),
        .I2(mux_tvalid),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__0 
       (.I0(tready_mux__1),
        .I1(mux_tvalid),
        .I2(aclken),
        .I3(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__0 
       (.I0(\s_axis_tready[1] ),
        .I1(s_axis_tvalid),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1__0 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .I3(tready_mux__1),
        .I4(\s_axis_tready[1] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__0 
       (.I0(areset_r),
        .I1(Q[12]),
        .O(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2__0 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .I3(tready_mux__1),
        .I4(\s_axis_tready[1] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E0E0E0E0E0E)) 
    \gen_AB_reg_slice.state[1]_i_3__0 
       (.I0(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ),
        .I2(\gen_AB_reg_slice.state[1]_i_5_n_0 ),
        .I3(Q[8]),
        .I4(\gen_AB_reg_slice.state[1]_i_6__1_n_0 ),
        .I5(\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ),
        .O(tready_mux__1));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_4__0 
       (.I0(Q[5]),
        .I1(Q[4]),
        .O(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \gen_AB_reg_slice.state[1]_i_5 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[9]),
        .I5(m_axis_tready),
        .O(\gen_AB_reg_slice.state[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_AB_reg_slice.state[1]_i_6__1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\gen_AB_reg_slice.state[1]_i_6__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__0_n_0 ),
        .Q(mux_tvalid),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__0_n_0 ),
        .Q(\s_axis_tready[1] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[0]),
        .I4(p_2_out[0]),
        .I5(p_12_out[0]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[10]),
        .I4(p_2_out[10]),
        .I5(p_12_out[10]),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[11]),
        .I4(p_2_out[11]),
        .I5(p_12_out[11]),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[12]),
        .I4(p_2_out[12]),
        .I5(p_12_out[12]),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[13]),
        .I4(p_2_out[13]),
        .I5(p_12_out[13]),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[14]),
        .I4(p_2_out[14]),
        .I5(p_12_out[14]),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[15]),
        .I4(p_2_out[15]),
        .I5(p_12_out[15]),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[16]),
        .I4(p_2_out[16]),
        .I5(p_12_out[16]),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[17]),
        .I4(p_2_out[17]),
        .I5(p_12_out[17]),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[18]),
        .I4(p_2_out[18]),
        .I5(p_12_out[18]),
        .O(m_axis_tdata[18]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[19]),
        .I4(p_2_out[19]),
        .I5(p_12_out[19]),
        .O(m_axis_tdata[19]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[1]),
        .I4(p_2_out[1]),
        .I5(p_12_out[1]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[20]),
        .I4(p_2_out[20]),
        .I5(p_12_out[20]),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[21]),
        .I4(p_2_out[21]),
        .I5(p_12_out[21]),
        .O(m_axis_tdata[21]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[22]),
        .I4(p_2_out[22]),
        .I5(p_12_out[22]),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[23]),
        .I4(p_2_out[23]),
        .I5(p_12_out[23]),
        .O(m_axis_tdata[23]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[24]),
        .I4(p_2_out[24]),
        .I5(p_12_out[24]),
        .O(m_axis_tdata[24]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[25]),
        .I4(p_2_out[25]),
        .I5(p_12_out[25]),
        .O(m_axis_tdata[25]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[26]),
        .I4(p_2_out[26]),
        .I5(p_12_out[26]),
        .O(m_axis_tdata[26]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[27]),
        .I4(p_2_out[27]),
        .I5(p_12_out[27]),
        .O(m_axis_tdata[27]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[28]),
        .I4(p_2_out[28]),
        .I5(p_12_out[28]),
        .O(m_axis_tdata[28]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[29]),
        .I4(p_2_out[29]),
        .I5(p_12_out[29]),
        .O(m_axis_tdata[29]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[2]),
        .I4(p_2_out[2]),
        .I5(p_12_out[2]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[30]),
        .I4(p_2_out[30]),
        .I5(p_12_out[30]),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[31]),
        .I4(p_2_out[31]),
        .I5(p_12_out[31]),
        .O(m_axis_tdata[31]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[0]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[0]),
        .I5(p_12_out[0]),
        .O(m_axis_tdata[32]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[1]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[1]),
        .I5(p_12_out[1]),
        .O(m_axis_tdata[33]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[2]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[2]),
        .I5(p_12_out[2]),
        .O(m_axis_tdata[34]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[3]),
        .I5(p_12_out[3]),
        .O(m_axis_tdata[35]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[4]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[4]),
        .I5(p_12_out[4]),
        .O(m_axis_tdata[36]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[5]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[5]),
        .I5(p_12_out[5]),
        .O(m_axis_tdata[37]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[6]),
        .I5(p_12_out[6]),
        .O(m_axis_tdata[38]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[7]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[7]),
        .I5(p_12_out[7]),
        .O(m_axis_tdata[39]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[3]),
        .I4(p_2_out[3]),
        .I5(p_12_out[3]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[8]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[8]),
        .I5(p_12_out[8]),
        .O(m_axis_tdata[40]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[9]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[9]),
        .I5(p_12_out[9]),
        .O(m_axis_tdata[41]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[10]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[10]),
        .I5(p_12_out[10]),
        .O(m_axis_tdata[42]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[11]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[11]),
        .I5(p_12_out[11]),
        .O(m_axis_tdata[43]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[12]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[12]),
        .I5(p_12_out[12]),
        .O(m_axis_tdata[44]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[13]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[13]),
        .I5(p_12_out[13]),
        .O(m_axis_tdata[45]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[14]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[14]),
        .I5(p_12_out[14]),
        .O(m_axis_tdata[46]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[15]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[15]),
        .I5(p_12_out[15]),
        .O(m_axis_tdata[47]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[16]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[16]),
        .I5(p_12_out[16]),
        .O(m_axis_tdata[48]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[17]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[17]),
        .I5(p_12_out[17]),
        .O(m_axis_tdata[49]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[4]),
        .I4(p_2_out[4]),
        .I5(p_12_out[4]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[18]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[18]),
        .I5(p_12_out[18]),
        .O(m_axis_tdata[50]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[19]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[19]),
        .I5(p_12_out[19]),
        .O(m_axis_tdata[51]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[20]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[20]),
        .I5(p_12_out[20]),
        .O(m_axis_tdata[52]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[21]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[21]),
        .I5(p_12_out[21]),
        .O(m_axis_tdata[53]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[22]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[22]),
        .I5(p_12_out[22]),
        .O(m_axis_tdata[54]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[23]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[23]),
        .I5(p_12_out[23]),
        .O(m_axis_tdata[55]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[24]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[24]),
        .I5(p_12_out[24]),
        .O(m_axis_tdata[56]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[25]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[25]),
        .I5(p_12_out[25]),
        .O(m_axis_tdata[57]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[26]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[26]),
        .I5(p_12_out[26]),
        .O(m_axis_tdata[58]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[27]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[27]),
        .I5(p_12_out[27]),
        .O(m_axis_tdata[59]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[5]),
        .I4(p_2_out[5]),
        .I5(p_12_out[5]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[28]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[28]),
        .I5(p_12_out[28]),
        .O(m_axis_tdata[60]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[29]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[29]),
        .I5(p_12_out[29]),
        .O(m_axis_tdata[61]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[30]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[30]),
        .I5(p_12_out[30]),
        .O(m_axis_tdata[62]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[31]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[31]),
        .I5(p_12_out[31]),
        .O(m_axis_tdata[63]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[0]),
        .I4(p_2_out[0]),
        .I5(p_12_out[0]),
        .O(m_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[64]_INST_0_i_1 
       (.I0(payload_b[0]),
        .I1(sel),
        .I2(payload_a[0]),
        .O(p_7_out[0]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[1]),
        .I4(p_2_out[1]),
        .I5(p_12_out[1]),
        .O(m_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[65]_INST_0_i_1 
       (.I0(payload_b[1]),
        .I1(sel),
        .I2(payload_a[1]),
        .O(p_7_out[1]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[2]),
        .I4(p_2_out[2]),
        .I5(p_12_out[2]),
        .O(m_axis_tdata[66]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[66]_INST_0_i_1 
       (.I0(payload_b[2]),
        .I1(sel),
        .I2(payload_a[2]),
        .O(p_7_out[2]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[3]),
        .I4(p_2_out[3]),
        .I5(p_12_out[3]),
        .O(m_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[67]_INST_0_i_1 
       (.I0(payload_b[3]),
        .I1(sel),
        .I2(payload_a[3]),
        .O(p_7_out[3]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[4]),
        .I4(p_2_out[4]),
        .I5(p_12_out[4]),
        .O(m_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[68]_INST_0_i_1 
       (.I0(payload_b[4]),
        .I1(sel),
        .I2(payload_a[4]),
        .O(p_7_out[4]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[5]),
        .I4(p_2_out[5]),
        .I5(p_12_out[5]),
        .O(m_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[69]_INST_0_i_1 
       (.I0(payload_b[5]),
        .I1(sel),
        .I2(payload_a[5]),
        .O(p_7_out[5]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[6]),
        .I4(p_2_out[6]),
        .I5(p_12_out[6]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[6]),
        .I4(p_2_out[6]),
        .I5(p_12_out[6]),
        .O(m_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[70]_INST_0_i_1 
       (.I0(payload_b[6]),
        .I1(sel),
        .I2(payload_a[6]),
        .O(p_7_out[6]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[7]),
        .I4(p_2_out[7]),
        .I5(p_12_out[7]),
        .O(m_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[71]_INST_0_i_1 
       (.I0(payload_b[7]),
        .I1(sel),
        .I2(payload_a[7]),
        .O(p_7_out[7]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[8]),
        .I4(p_2_out[8]),
        .I5(p_12_out[8]),
        .O(m_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[72]_INST_0_i_1 
       (.I0(payload_b[8]),
        .I1(sel),
        .I2(payload_a[8]),
        .O(p_7_out[8]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[9]),
        .I4(p_2_out[9]),
        .I5(p_12_out[9]),
        .O(m_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[73]_INST_0_i_1 
       (.I0(payload_b[9]),
        .I1(sel),
        .I2(payload_a[9]),
        .O(p_7_out[9]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[10]),
        .I4(p_2_out[10]),
        .I5(p_12_out[10]),
        .O(m_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[74]_INST_0_i_1 
       (.I0(payload_b[10]),
        .I1(sel),
        .I2(payload_a[10]),
        .O(p_7_out[10]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[11]),
        .I4(p_2_out[11]),
        .I5(p_12_out[11]),
        .O(m_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[75]_INST_0_i_1 
       (.I0(payload_b[11]),
        .I1(sel),
        .I2(payload_a[11]),
        .O(p_7_out[11]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[12]),
        .I4(p_2_out[12]),
        .I5(p_12_out[12]),
        .O(m_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[76]_INST_0_i_1 
       (.I0(payload_b[12]),
        .I1(sel),
        .I2(payload_a[12]),
        .O(p_7_out[12]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[13]),
        .I4(p_2_out[13]),
        .I5(p_12_out[13]),
        .O(m_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[77]_INST_0_i_1 
       (.I0(payload_b[13]),
        .I1(sel),
        .I2(payload_a[13]),
        .O(p_7_out[13]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[14]),
        .I4(p_2_out[14]),
        .I5(p_12_out[14]),
        .O(m_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[78]_INST_0_i_1 
       (.I0(payload_b[14]),
        .I1(sel),
        .I2(payload_a[14]),
        .O(p_7_out[14]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[15]),
        .I4(p_2_out[15]),
        .I5(p_12_out[15]),
        .O(m_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_1 
       (.I0(payload_b[15]),
        .I1(sel),
        .I2(payload_a[15]),
        .O(p_7_out[15]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[7]),
        .I4(p_2_out[7]),
        .I5(p_12_out[7]),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[16]),
        .I4(p_2_out[16]),
        .I5(p_12_out[16]),
        .O(m_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[80]_INST_0_i_1 
       (.I0(payload_b[16]),
        .I1(sel),
        .I2(payload_a[16]),
        .O(p_7_out[16]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[17]),
        .I4(p_2_out[17]),
        .I5(p_12_out[17]),
        .O(m_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[81]_INST_0_i_1 
       (.I0(payload_b[17]),
        .I1(sel),
        .I2(payload_a[17]),
        .O(p_7_out[17]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[18]),
        .I4(p_2_out[18]),
        .I5(p_12_out[18]),
        .O(m_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[82]_INST_0_i_1 
       (.I0(payload_b[18]),
        .I1(sel),
        .I2(payload_a[18]),
        .O(p_7_out[18]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[19]),
        .I4(p_2_out[19]),
        .I5(p_12_out[19]),
        .O(m_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[83]_INST_0_i_1 
       (.I0(payload_b[19]),
        .I1(sel),
        .I2(payload_a[19]),
        .O(p_7_out[19]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[20]),
        .I4(p_2_out[20]),
        .I5(p_12_out[20]),
        .O(m_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[84]_INST_0_i_1 
       (.I0(payload_b[20]),
        .I1(sel),
        .I2(payload_a[20]),
        .O(p_7_out[20]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[21]),
        .I4(p_2_out[21]),
        .I5(p_12_out[21]),
        .O(m_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[85]_INST_0_i_1 
       (.I0(payload_b[21]),
        .I1(sel),
        .I2(payload_a[21]),
        .O(p_7_out[21]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[22]),
        .I4(p_2_out[22]),
        .I5(p_12_out[22]),
        .O(m_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[86]_INST_0_i_1 
       (.I0(payload_b[22]),
        .I1(sel),
        .I2(payload_a[22]),
        .O(p_7_out[22]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[23]),
        .I4(p_2_out[23]),
        .I5(p_12_out[23]),
        .O(m_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[87]_INST_0_i_1 
       (.I0(payload_b[23]),
        .I1(sel),
        .I2(payload_a[23]),
        .O(p_7_out[23]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[24]),
        .I4(p_2_out[24]),
        .I5(p_12_out[24]),
        .O(m_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[88]_INST_0_i_1 
       (.I0(payload_b[24]),
        .I1(sel),
        .I2(payload_a[24]),
        .O(p_7_out[24]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[25]),
        .I4(p_2_out[25]),
        .I5(p_12_out[25]),
        .O(m_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[89]_INST_0_i_1 
       (.I0(payload_b[25]),
        .I1(sel),
        .I2(payload_a[25]),
        .O(p_7_out[25]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[8]),
        .I4(p_2_out[8]),
        .I5(p_12_out[8]),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[26]),
        .I4(p_2_out[26]),
        .I5(p_12_out[26]),
        .O(m_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[90]_INST_0_i_1 
       (.I0(payload_b[26]),
        .I1(sel),
        .I2(payload_a[26]),
        .O(p_7_out[26]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[27]),
        .I4(p_2_out[27]),
        .I5(p_12_out[27]),
        .O(m_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[91]_INST_0_i_1 
       (.I0(payload_b[27]),
        .I1(sel),
        .I2(payload_a[27]),
        .O(p_7_out[27]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[28]),
        .I4(p_2_out[28]),
        .I5(p_12_out[28]),
        .O(m_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[92]_INST_0_i_1 
       (.I0(payload_b[28]),
        .I1(sel),
        .I2(payload_a[28]),
        .O(p_7_out[28]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[29]),
        .I4(p_2_out[29]),
        .I5(p_12_out[29]),
        .O(m_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[93]_INST_0_i_1 
       (.I0(payload_b[29]),
        .I1(sel),
        .I2(payload_a[29]),
        .O(p_7_out[29]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[30]),
        .I4(p_2_out[30]),
        .I5(p_12_out[30]),
        .O(m_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[94]_INST_0_i_1 
       (.I0(payload_b[30]),
        .I1(sel),
        .I2(payload_a[30]),
        .O(p_7_out[30]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[31]),
        .I4(p_2_out[31]),
        .I5(p_12_out[31]),
        .O(m_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_2 
       (.I0(payload_b[31]),
        .I1(sel),
        .I2(payload_a[31]),
        .O(p_7_out[31]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[9]),
        .I4(p_2_out[9]),
        .I5(p_12_out[9]),
        .O(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[32]),
        .I4(p_2_out[32]),
        .I5(p_12_out[32]),
        .O(m_axis_tkeep[0]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[10]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[34]),
        .I4(p_2_out[34]),
        .I5(p_12_out[34]),
        .O(m_axis_tkeep[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[10]_INST_0_i_1 
       (.I0(payload_b[34]),
        .I1(sel),
        .I2(payload_a[34]),
        .O(p_7_out[34]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[11]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[35]),
        .I4(p_2_out[35]),
        .I5(p_12_out[35]),
        .O(m_axis_tkeep[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[11]_INST_0_i_1 
       (.I0(payload_b[35]),
        .I1(sel),
        .I2(payload_a[35]),
        .O(p_7_out[35]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[33]),
        .I4(p_2_out[33]),
        .I5(p_12_out[33]),
        .O(m_axis_tkeep[1]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[34]),
        .I4(p_2_out[34]),
        .I5(p_12_out[34]),
        .O(m_axis_tkeep[2]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[35]),
        .I4(p_2_out[35]),
        .I5(p_12_out[35]),
        .O(m_axis_tkeep[3]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tkeep[4]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[32]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[32]),
        .I5(p_12_out[32]),
        .O(m_axis_tkeep[4]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tkeep[5]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[33]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[33]),
        .I5(p_12_out[33]),
        .O(m_axis_tkeep[5]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tkeep[6]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[34]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[34]),
        .I5(p_12_out[34]),
        .O(m_axis_tkeep[6]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tkeep[7]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[35]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[35]),
        .I5(p_12_out[35]),
        .O(m_axis_tkeep[7]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[8]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[32]),
        .I4(p_2_out[32]),
        .I5(p_12_out[32]),
        .O(m_axis_tkeep[8]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[8]_INST_0_i_1 
       (.I0(payload_b[32]),
        .I1(sel),
        .I2(payload_a[32]),
        .O(p_7_out[32]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tkeep[9]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[33]),
        .I4(p_2_out[33]),
        .I5(p_12_out[33]),
        .O(m_axis_tkeep[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[9]_INST_0_i_1 
       (.I0(payload_b[33]),
        .I1(sel),
        .I2(payload_a[33]),
        .O(p_7_out[33]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(p_7_out[36]),
        .I4(p_2_out[36]),
        .I5(p_12_out[36]),
        .O(m_axis_tlast[0]));
  LUT6 #(
    .INIT(64'h0A8A008A0A800080)) 
    \m_axis_tlast[1]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .I1(p_7_out[36]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(p_2_out[36]),
        .I5(p_12_out[36]),
        .O(m_axis_tlast[1]));
  LUT6 #(
    .INIT(64'h2A0A220228082000)) 
    \m_axis_tlast[2]_INST_0 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(p_7_out[36]),
        .I4(p_2_out[36]),
        .I5(p_12_out[36]),
        .O(m_axis_tlast[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[2]_INST_0_i_1 
       (.I0(payload_b[36]),
        .I1(sel),
        .I2(payload_a[36]),
        .O(p_7_out[36]));
  LUT6 #(
    .INIT(64'h7351624000000000)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(mux_tvalid),
        .I3(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .I5(Q[9]),
        .O(m_axis_tvalid[0]));
  LUT6 #(
    .INIT(64'h3B0B380800000000)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(mux_tvalid),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .I5(Q[10]),
        .O(m_axis_tvalid[1]));
  LUT6 #(
    .INIT(64'h7351624000000000)) 
    \m_axis_tvalid[2]_INST_0 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(mux_tvalid),
        .I3(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .I5(Q[11]),
        .O(m_axis_tvalid[2]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_3
   (\gen_AB_reg_slice.sel_rd_reg_0 ,
    \gen_AB_reg_slice.sel_rd_reg_1 ,
    \s_axis_tready[0] ,
    \gen_AB_reg_slice.payload_a_reg[0]_0 ,
    p_12_out,
    aclk,
    Q,
    m_axis_tready,
    aclken,
    s_axis_tvalid,
    areset_r,
    D);
  output \gen_AB_reg_slice.sel_rd_reg_0 ;
  output \gen_AB_reg_slice.sel_rd_reg_1 ;
  output \s_axis_tready[0] ;
  output \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  output [36:0]p_12_out;
  input aclk;
  input [15:0]Q;
  input [2:0]m_axis_tready;
  input aclken;
  input [0:0]s_axis_tvalid;
  input areset_r;
  input [36:0]D;

  wire [36:0]D;
  wire [15:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.payload_a_reg[0]_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_1 ;
  wire \gen_AB_reg_slice.sel_wr_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_5__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_6__0_n_0 ;
  wire [2:0]m_axis_tready;
  wire [36:0]p_12_out;
  wire [36:0]payload_a;
  wire payload_a_1;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[0] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;
  wire tready_mux__1;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[36]_i_1 
       (.I0(aclken),
        .I1(\s_axis_tready[0] ),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(sel_wr),
        .O(payload_a_1));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(payload_a_1),
        .D(D[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[36]_i_1 
       (.I0(aclken),
        .I1(\s_axis_tready[0] ),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(D[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__1 
       (.I0(tready_mux__1),
        .I1(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I2(aclken),
        .I3(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1 
       (.I0(\s_axis_tready[0] ),
        .I1(s_axis_tvalid),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(tready_mux__1),
        .I4(\s_axis_tready[0] ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(areset_r),
        .I1(Q[15]),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .I3(tready_mux__1),
        .I4(\s_axis_tready[0] ),
        .O(\gen_AB_reg_slice.state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E000E0E0E0E0E0E)) 
    \gen_AB_reg_slice.state[1]_i_3__1 
       (.I0(\gen_AB_reg_slice.state[1]_i_4_n_0 ),
        .I1(\gen_AB_reg_slice.sel_rd_reg_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_5__0_n_0 ),
        .I3(Q[10]),
        .I4(\gen_AB_reg_slice.state[1]_i_6__0_n_0 ),
        .I5(\gen_AB_reg_slice.sel_rd_reg_1 ),
        .O(tready_mux__1));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_AB_reg_slice.state[1]_i_4 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\gen_AB_reg_slice.state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \gen_AB_reg_slice.state[1]_i_5__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[12]),
        .I5(m_axis_tready[0]),
        .O(\gen_AB_reg_slice.state[1]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \gen_AB_reg_slice.state[1]_i_5__1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[13]),
        .I3(m_axis_tready[1]),
        .O(\gen_AB_reg_slice.sel_rd_reg_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gen_AB_reg_slice.state[1]_i_6__0 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\gen_AB_reg_slice.state[1]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_AB_reg_slice.state[1]_i_8 
       (.I0(m_axis_tready[2]),
        .I1(Q[14]),
        .I2(Q[11]),
        .O(\gen_AB_reg_slice.sel_rd_reg_1 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg[0]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2_n_0 ),
        .Q(\s_axis_tready[0] ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[64]_INST_0_i_3 
       (.I0(payload_b[0]),
        .I1(sel),
        .I2(payload_a[0]),
        .O(p_12_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[65]_INST_0_i_3 
       (.I0(payload_b[1]),
        .I1(sel),
        .I2(payload_a[1]),
        .O(p_12_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[66]_INST_0_i_3 
       (.I0(payload_b[2]),
        .I1(sel),
        .I2(payload_a[2]),
        .O(p_12_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[67]_INST_0_i_3 
       (.I0(payload_b[3]),
        .I1(sel),
        .I2(payload_a[3]),
        .O(p_12_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[68]_INST_0_i_3 
       (.I0(payload_b[4]),
        .I1(sel),
        .I2(payload_a[4]),
        .O(p_12_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[69]_INST_0_i_3 
       (.I0(payload_b[5]),
        .I1(sel),
        .I2(payload_a[5]),
        .O(p_12_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[70]_INST_0_i_3 
       (.I0(payload_b[6]),
        .I1(sel),
        .I2(payload_a[6]),
        .O(p_12_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[71]_INST_0_i_3 
       (.I0(payload_b[7]),
        .I1(sel),
        .I2(payload_a[7]),
        .O(p_12_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[72]_INST_0_i_3 
       (.I0(payload_b[8]),
        .I1(sel),
        .I2(payload_a[8]),
        .O(p_12_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[73]_INST_0_i_3 
       (.I0(payload_b[9]),
        .I1(sel),
        .I2(payload_a[9]),
        .O(p_12_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[74]_INST_0_i_3 
       (.I0(payload_b[10]),
        .I1(sel),
        .I2(payload_a[10]),
        .O(p_12_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[75]_INST_0_i_3 
       (.I0(payload_b[11]),
        .I1(sel),
        .I2(payload_a[11]),
        .O(p_12_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[76]_INST_0_i_3 
       (.I0(payload_b[12]),
        .I1(sel),
        .I2(payload_a[12]),
        .O(p_12_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[77]_INST_0_i_3 
       (.I0(payload_b[13]),
        .I1(sel),
        .I2(payload_a[13]),
        .O(p_12_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[78]_INST_0_i_3 
       (.I0(payload_b[14]),
        .I1(sel),
        .I2(payload_a[14]),
        .O(p_12_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_3 
       (.I0(payload_b[15]),
        .I1(sel),
        .I2(payload_a[15]),
        .O(p_12_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[80]_INST_0_i_3 
       (.I0(payload_b[16]),
        .I1(sel),
        .I2(payload_a[16]),
        .O(p_12_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[81]_INST_0_i_3 
       (.I0(payload_b[17]),
        .I1(sel),
        .I2(payload_a[17]),
        .O(p_12_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[82]_INST_0_i_3 
       (.I0(payload_b[18]),
        .I1(sel),
        .I2(payload_a[18]),
        .O(p_12_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[83]_INST_0_i_3 
       (.I0(payload_b[19]),
        .I1(sel),
        .I2(payload_a[19]),
        .O(p_12_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[84]_INST_0_i_3 
       (.I0(payload_b[20]),
        .I1(sel),
        .I2(payload_a[20]),
        .O(p_12_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[85]_INST_0_i_3 
       (.I0(payload_b[21]),
        .I1(sel),
        .I2(payload_a[21]),
        .O(p_12_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[86]_INST_0_i_3 
       (.I0(payload_b[22]),
        .I1(sel),
        .I2(payload_a[22]),
        .O(p_12_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[87]_INST_0_i_3 
       (.I0(payload_b[23]),
        .I1(sel),
        .I2(payload_a[23]),
        .O(p_12_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[88]_INST_0_i_3 
       (.I0(payload_b[24]),
        .I1(sel),
        .I2(payload_a[24]),
        .O(p_12_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[89]_INST_0_i_3 
       (.I0(payload_b[25]),
        .I1(sel),
        .I2(payload_a[25]),
        .O(p_12_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[90]_INST_0_i_3 
       (.I0(payload_b[26]),
        .I1(sel),
        .I2(payload_a[26]),
        .O(p_12_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[91]_INST_0_i_3 
       (.I0(payload_b[27]),
        .I1(sel),
        .I2(payload_a[27]),
        .O(p_12_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[92]_INST_0_i_3 
       (.I0(payload_b[28]),
        .I1(sel),
        .I2(payload_a[28]),
        .O(p_12_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[93]_INST_0_i_3 
       (.I0(payload_b[29]),
        .I1(sel),
        .I2(payload_a[29]),
        .O(p_12_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[94]_INST_0_i_3 
       (.I0(payload_b[30]),
        .I1(sel),
        .I2(payload_a[30]),
        .O(p_12_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_4 
       (.I0(payload_b[31]),
        .I1(sel),
        .I2(payload_a[31]),
        .O(p_12_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[10]_INST_0_i_3 
       (.I0(payload_b[34]),
        .I1(sel),
        .I2(payload_a[34]),
        .O(p_12_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[11]_INST_0_i_3 
       (.I0(payload_b[35]),
        .I1(sel),
        .I2(payload_a[35]),
        .O(p_12_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[8]_INST_0_i_3 
       (.I0(payload_b[32]),
        .I1(sel),
        .I2(payload_a[32]),
        .O(p_12_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[9]_INST_0_i_3 
       (.I0(payload_b[33]),
        .I1(sel),
        .I2(payload_a[33]),
        .O(p_12_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[2]_INST_0_i_3 
       (.I0(payload_b[36]),
        .I1(sel),
        .I2(payload_a[36]),
        .O(p_12_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axi_ctrl_read" *) 
module top_xbar_6_axis_switch_v1_1_8_axi_ctrl_read
   (Q,
    \data_reg[31]_0 ,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rdata,
    \gen_reg[1].reg_data_reg[62] ,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[2].reg_data_reg[94] ,
    \gen_reg[0].reg_data_reg[30] ,
    \gen_reg[0].reg_data_reg[31]_0 ,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    SR,
    s_axi_ctrl_aclk,
    s_axi_ctrl_araddr);
  output [1:0]Q;
  output \data_reg[31]_0 ;
  output [1:0]s_axi_ctrl_rvalid;
  output [31:0]s_axi_ctrl_rdata;
  input [30:0]\gen_reg[1].reg_data_reg[62] ;
  input [31:0]\gen_reg[0].reg_data_reg[31] ;
  input [30:0]\gen_reg[2].reg_data_reg[94] ;
  input [30:0]\gen_reg[0].reg_data_reg[30] ;
  input \gen_reg[0].reg_data_reg[31]_0 ;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [0:0]SR;
  input s_axi_ctrl_aclk;
  input [4:0]s_axi_ctrl_araddr;

  wire [1:0]Q;
  wire [0:0]SR;
  wire \addr_r_reg_n_0_[6] ;
  wire \data[0]_i_1_n_0 ;
  wire \data[0]_i_2_n_0 ;
  wire \data[10]_i_1_n_0 ;
  wire \data[10]_i_2_n_0 ;
  wire \data[11]_i_1_n_0 ;
  wire \data[11]_i_2_n_0 ;
  wire \data[12]_i_1_n_0 ;
  wire \data[12]_i_2_n_0 ;
  wire \data[13]_i_1_n_0 ;
  wire \data[13]_i_2_n_0 ;
  wire \data[14]_i_1_n_0 ;
  wire \data[14]_i_2_n_0 ;
  wire \data[15]_i_1_n_0 ;
  wire \data[15]_i_2_n_0 ;
  wire \data[16]_i_1_n_0 ;
  wire \data[16]_i_2_n_0 ;
  wire \data[17]_i_1_n_0 ;
  wire \data[17]_i_2_n_0 ;
  wire \data[18]_i_1_n_0 ;
  wire \data[18]_i_2_n_0 ;
  wire \data[19]_i_1_n_0 ;
  wire \data[19]_i_2_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[20]_i_1_n_0 ;
  wire \data[20]_i_2_n_0 ;
  wire \data[21]_i_1_n_0 ;
  wire \data[21]_i_2_n_0 ;
  wire \data[22]_i_1_n_0 ;
  wire \data[22]_i_2_n_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[23]_i_2_n_0 ;
  wire \data[24]_i_1_n_0 ;
  wire \data[24]_i_2_n_0 ;
  wire \data[25]_i_1_n_0 ;
  wire \data[25]_i_2_n_0 ;
  wire \data[26]_i_1_n_0 ;
  wire \data[26]_i_2_n_0 ;
  wire \data[27]_i_1_n_0 ;
  wire \data[27]_i_2_n_0 ;
  wire \data[28]_i_1_n_0 ;
  wire \data[28]_i_2_n_0 ;
  wire \data[29]_i_1_n_0 ;
  wire \data[29]_i_2_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[30]_i_1_n_0 ;
  wire \data[30]_i_2_n_0 ;
  wire \data[30]_i_3_n_0 ;
  wire \data[31]_i_1_n_0 ;
  wire \data[31]_i_3_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[8]_i_2_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire \data[9]_i_2_n_0 ;
  wire \data_reg[31]_0 ;
  wire [30:0]\gen_reg[0].reg_data_reg[30] ;
  wire [31:0]\gen_reg[0].reg_data_reg[31] ;
  wire \gen_reg[0].reg_data_reg[31]_0 ;
  wire [30:0]\gen_reg[1].reg_data_reg[62] ;
  wire [30:0]\gen_reg[2].reg_data_reg[94] ;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rvalid;
  wire [3:2]sel0;
  wire [1:0]state;

  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[4]),
        .Q(\addr_r_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[0]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[0]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [0]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [0]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[0]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [0]),
        .I1(\gen_reg[0].reg_data_reg[30] [0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[10]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[10]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [10]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [10]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[10]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [10]),
        .I1(\gen_reg[0].reg_data_reg[30] [10]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[11]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[11]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [11]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [11]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[11]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [11]),
        .I1(\gen_reg[0].reg_data_reg[30] [11]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[12]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[12]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [12]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [12]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[12]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [12]),
        .I1(\gen_reg[0].reg_data_reg[30] [12]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[13]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[13]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [13]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [13]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[13]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [13]),
        .I1(\gen_reg[0].reg_data_reg[30] [13]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[14]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[14]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [14]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [14]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[14]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [14]),
        .I1(\gen_reg[0].reg_data_reg[30] [14]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[15]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[15]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [15]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [15]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[15]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [15]),
        .I1(\gen_reg[0].reg_data_reg[30] [15]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[16]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[16]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [16]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [16]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[16]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [16]),
        .I1(\gen_reg[0].reg_data_reg[30] [16]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[17]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[17]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [17]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [17]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[17]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [17]),
        .I1(\gen_reg[0].reg_data_reg[30] [17]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[18]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[18]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [18]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [18]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[18]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [18]),
        .I1(\gen_reg[0].reg_data_reg[30] [18]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[19]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[19]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [19]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [19]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[19]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [19]),
        .I1(\gen_reg[0].reg_data_reg[30] [19]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[1]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[1]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [1]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [1]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[1]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [1]),
        .I1(\gen_reg[0].reg_data_reg[30] [1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[20]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[20]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [20]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [20]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[20]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [20]),
        .I1(\gen_reg[0].reg_data_reg[30] [20]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[21]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[21]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [21]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [21]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[21]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [21]),
        .I1(\gen_reg[0].reg_data_reg[30] [21]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[22]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[22]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [22]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [22]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[22]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [22]),
        .I1(\gen_reg[0].reg_data_reg[30] [22]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[23]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[23]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [23]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [23]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[23]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [23]),
        .I1(\gen_reg[0].reg_data_reg[30] [23]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[24]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[24]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [24]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [24]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[24]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [24]),
        .I1(\gen_reg[0].reg_data_reg[30] [24]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[25]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[25]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [25]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [25]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[25]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [25]),
        .I1(\gen_reg[0].reg_data_reg[30] [25]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[26]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[26]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [26]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [26]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[26]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [26]),
        .I1(\gen_reg[0].reg_data_reg[30] [26]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[27]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[27]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [27]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [27]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[27]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [27]),
        .I1(\gen_reg[0].reg_data_reg[30] [27]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[28]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[28]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [28]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [28]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[28]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [28]),
        .I1(\gen_reg[0].reg_data_reg[30] [28]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[29]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[29]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [29]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [29]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[29]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [29]),
        .I1(\gen_reg[0].reg_data_reg[30] [29]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[2]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[2]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [2]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [2]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[2]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [2]),
        .I1(\gen_reg[0].reg_data_reg[30] [2]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[30]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[30]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [30]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [30]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[30]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [30]),
        .I1(\gen_reg[0].reg_data_reg[30] [30]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \data[30]_i_3 
       (.I0(Q[0]),
        .I1(sel0[2]),
        .I2(sel0[3]),
        .I3(Q[1]),
        .O(\data[30]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \data[31]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\gen_reg[0].reg_data_reg[31]_0 ),
        .I2(\gen_reg[0].reg_data_reg[31] [31]),
        .I3(\data[31]_i_3_n_0 ),
        .O(\data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data[31]_i_3 
       (.I0(Q[0]),
        .I1(\addr_r_reg_n_0_[6] ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[1]),
        .O(\data[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data[31]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(\data_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[3]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[3]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [3]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [3]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[3]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [3]),
        .I1(\gen_reg[0].reg_data_reg[30] [3]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[4]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[4]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [4]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [4]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[4]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [4]),
        .I1(\gen_reg[0].reg_data_reg[30] [4]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[5]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[5]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [5]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [5]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[5]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [5]),
        .I1(\gen_reg[0].reg_data_reg[30] [5]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[6]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[6]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [6]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [6]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[6]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [6]),
        .I1(\gen_reg[0].reg_data_reg[30] [6]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[7]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[7]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [7]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [7]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[7]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [7]),
        .I1(\gen_reg[0].reg_data_reg[30] [7]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[8]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[8]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [8]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [8]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[8]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [8]),
        .I1(\gen_reg[0].reg_data_reg[30] [8]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA888A888A888)) 
    \data[9]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[9]_i_2_n_0 ),
        .I2(\gen_reg[1].reg_data_reg[62] [9]),
        .I3(\data[30]_i_3_n_0 ),
        .I4(\gen_reg[0].reg_data_reg[31] [9]),
        .I5(\data[31]_i_3_n_0 ),
        .O(\data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A0000000C)) 
    \data[9]_i_2 
       (.I0(\gen_reg[2].reg_data_reg[94] [9]),
        .I1(\gen_reg[0].reg_data_reg[30] [9]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[0]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[10]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[11]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[12]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[13]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[14]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[15]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[16]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[17]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[18]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[19]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[20]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[21]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[22]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[23]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[24]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[25]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[26]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[27]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[28]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[29]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[30]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[31]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[4]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[5]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[6]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[7]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[8]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[9]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \state[0]_i_1 
       (.I0(s_axi_ctrl_arvalid),
        .I1(s_axi_ctrl_rvalid[0]),
        .I2(s_axi_ctrl_rvalid[1]),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \state[1]_i_1 
       (.I0(s_axi_ctrl_rvalid[0]),
        .I1(s_axi_ctrl_rvalid[1]),
        .I2(s_axi_ctrl_rready),
        .O(state[1]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(s_axi_ctrl_rvalid[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(s_axi_ctrl_rvalid[1]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axi_ctrl_top" *) 
module top_xbar_6_axis_switch_v1_1_8_axi_ctrl_top
   (Q,
    \state_reg[0] ,
    s_axi_ctrl_bvalid,
    \gen_mi_mux_in[0].mi_mux_in_reg[3] ,
    \gen_mi_mux_in[1].mi_mux_in_reg[7] ,
    \gen_mi_mux_in[2].mi_mux_in_reg[11] ,
    s_axi_ctrl_rdata,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    SR,
    s_axi_ctrl_aclk,
    s_axi_ctrl_wdata,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    out0);
  output [1:0]Q;
  output [0:0]\state_reg[0] ;
  output [1:0]s_axi_ctrl_bvalid;
  output [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  output [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  output [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  output [31:0]s_axi_ctrl_rdata;
  output \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  output \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  output \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [0:0]SR;
  input s_axi_ctrl_aclk;
  input [31:0]s_axi_ctrl_wdata;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input out0;

  wire [1:0]Q;
  wire [0:0]SR;
  wire [31:0]data_r;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  wire [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  wire [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  wire [31:0]\gen_reg[0].reg_data_reg ;
  wire [30:4]\gen_reg[1].reg_data_reg ;
  wire [30:4]\gen_reg[2].reg_data_reg ;
  wire inst_axi_ctrl_read_n_2;
  wire inst_axi_ctrl_write_n_2;
  wire inst_reg_bank_1_n_65;
  wire inst_reg_bank_1_n_66;
  wire inst_reg_bank_1_n_67;
  wire inst_reg_bank_1_n_68;
  wire inst_reg_bank_1_n_69;
  wire inst_reg_bank_1_n_70;
  wire inst_reg_bank_1_n_71;
  wire inst_reg_bank_1_n_72;
  wire inst_reg_bank_1_n_73;
  wire inst_reg_bank_1_n_74;
  wire inst_reg_bank_1_n_75;
  wire inst_reg_bank_1_n_76;
  wire inst_reg_bank_1_n_77;
  wire inst_reg_bank_1_n_78;
  wire inst_reg_bank_1_n_79;
  wire inst_reg_bank_1_n_80;
  wire inst_reg_bank_1_n_81;
  wire inst_reg_bank_1_n_82;
  wire inst_reg_bank_1_n_83;
  wire inst_reg_bank_1_n_84;
  wire inst_reg_bank_1_n_85;
  wire inst_reg_bank_1_n_86;
  wire inst_reg_bank_1_n_87;
  wire inst_reg_bank_1_n_88;
  wire inst_reg_bank_1_n_89;
  wire inst_reg_bank_1_n_90;
  wire inst_reg_bank_1_n_91;
  wire inst_reg_bank_1_n_92;
  wire out0;
  wire p_1_out;
  wire p_3_out;
  wire p_5_out;
  wire [31:0]rb0_wdata;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [1:0]sel0;
  wire [0:0]\state_reg[0] ;

  top_xbar_6_axis_switch_v1_1_8_axi_ctrl_read inst_axi_ctrl_read
       (.Q(sel0),
        .SR(SR),
        .\data_reg[31]_0 (inst_axi_ctrl_read_n_2),
        .\gen_reg[0].reg_data_reg[30] ({inst_reg_bank_1_n_66,inst_reg_bank_1_n_67,inst_reg_bank_1_n_68,inst_reg_bank_1_n_69,inst_reg_bank_1_n_70,inst_reg_bank_1_n_71,inst_reg_bank_1_n_72,inst_reg_bank_1_n_73,inst_reg_bank_1_n_74,inst_reg_bank_1_n_75,inst_reg_bank_1_n_76,inst_reg_bank_1_n_77,inst_reg_bank_1_n_78,inst_reg_bank_1_n_79,inst_reg_bank_1_n_80,inst_reg_bank_1_n_81,inst_reg_bank_1_n_82,inst_reg_bank_1_n_83,inst_reg_bank_1_n_84,inst_reg_bank_1_n_85,inst_reg_bank_1_n_86,inst_reg_bank_1_n_87,inst_reg_bank_1_n_88,inst_reg_bank_1_n_89,inst_reg_bank_1_n_90,inst_reg_bank_1_n_91,inst_reg_bank_1_n_92,\gen_mi_mux_in[0].mi_mux_in_reg[3] }),
        .\gen_reg[0].reg_data_reg[31] ({\gen_reg[0].reg_data_reg [31:2],\state_reg[0] ,\gen_reg[0].reg_data_reg [0]}),
        .\gen_reg[0].reg_data_reg[31]_0 (inst_reg_bank_1_n_65),
        .\gen_reg[1].reg_data_reg[62] ({\gen_reg[1].reg_data_reg ,\gen_mi_mux_in[1].mi_mux_in_reg[7] }),
        .\gen_reg[2].reg_data_reg[94] ({\gen_reg[2].reg_data_reg ,\gen_mi_mux_in[2].mi_mux_in_reg[11] }),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(Q));
  top_xbar_6_axis_switch_v1_1_8_axi_ctrl_write inst_axi_ctrl_write
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_2),
        .Q(\state_reg[0] ),
        .SR(SR),
        .\gen_reg[0].reg_data_reg[31] (p_5_out),
        .\gen_reg[0].reg_data_reg[31]_0 (data_r),
        .\gen_reg[1].reg_data_reg[63] (p_3_out),
        .\gen_reg[2].reg_data_reg[95] (p_1_out),
        .out0(out0),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid));
  top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32 inst_reg_bank_0
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_2),
        .Q({\gen_reg[0].reg_data_reg [31:2],\state_reg[0] ,\gen_reg[0].reg_data_reg [0]}),
        .SR(SR),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
  top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32__parameterized0 inst_reg_bank_1
       (.D(data_r),
        .E(p_5_out),
        .Q({\gen_reg[1].reg_data_reg ,\gen_mi_mux_in[1].mi_mux_in_reg[7] }),
        .SR(SR),
        .\addr_r_reg[2] (p_3_out),
        .\addr_r_reg[2]_0 (p_1_out),
        .\addr_r_reg[3] (sel0),
        .\addr_r_reg[4] (inst_axi_ctrl_read_n_2),
        .\data_reg[30] ({\gen_reg[2].reg_data_reg ,\gen_mi_mux_in[2].mi_mux_in_reg[11] }),
        .\data_reg[30]_0 ({inst_reg_bank_1_n_66,inst_reg_bank_1_n_67,inst_reg_bank_1_n_68,inst_reg_bank_1_n_69,inst_reg_bank_1_n_70,inst_reg_bank_1_n_71,inst_reg_bank_1_n_72,inst_reg_bank_1_n_73,inst_reg_bank_1_n_74,inst_reg_bank_1_n_75,inst_reg_bank_1_n_76,inst_reg_bank_1_n_77,inst_reg_bank_1_n_78,inst_reg_bank_1_n_79,inst_reg_bank_1_n_80,inst_reg_bank_1_n_81,inst_reg_bank_1_n_82,inst_reg_bank_1_n_83,inst_reg_bank_1_n_84,inst_reg_bank_1_n_85,inst_reg_bank_1_n_86,inst_reg_bank_1_n_87,inst_reg_bank_1_n_88,inst_reg_bank_1_n_89,inst_reg_bank_1_n_90,inst_reg_bank_1_n_91,inst_reg_bank_1_n_92,\gen_mi_mux_in[0].mi_mux_in_reg[3] }),
        .\data_reg[31] (inst_reg_bank_1_n_65),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0] (\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1] (\gen_mi_mux_in[1].mi_mux_en_in_reg[1] ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2] (\gen_mi_mux_in[2].mi_mux_en_in_reg[2] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axi_ctrl_write" *) 
module top_xbar_6_axis_switch_v1_1_8_axi_ctrl_write
   (s_axi_ctrl_bvalid,
    E,
    \gen_reg[2].reg_data_reg[95] ,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[1].reg_data_reg[63] ,
    D,
    \gen_reg[0].reg_data_reg[31]_0 ,
    Q,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    out0,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_awaddr);
  output [1:0]s_axi_ctrl_bvalid;
  output [0:0]E;
  output [0:0]\gen_reg[2].reg_data_reg[95] ;
  output [0:0]\gen_reg[0].reg_data_reg[31] ;
  output [0:0]\gen_reg[1].reg_data_reg[63] ;
  output [31:0]D;
  output [31:0]\gen_reg[0].reg_data_reg[31]_0 ;
  input [0:0]Q;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input out0;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input [4:0]s_axi_ctrl_awaddr;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \gen_reg[0].reg_data[31]_i_3_n_0 ;
  wire [0:0]\gen_reg[0].reg_data_reg[31] ;
  wire [31:0]\gen_reg[0].reg_data_reg[31]_0 ;
  wire [0:0]\gen_reg[1].reg_data_reg[63] ;
  wire [0:0]\gen_reg[2].reg_data_reg[95] ;
  wire out0;
  wire p_0_in;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [2:0]state;
  wire \state_reg_n_0_[2] ;
  wire [3:0]write_addr;

  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[0]),
        .Q(write_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[1]),
        .Q(write_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[2]),
        .Q(write_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[3]),
        .Q(write_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[4]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[0]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [0]),
        .I1(out0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[10]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [10]),
        .I1(out0),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[11]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [11]),
        .I1(out0),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[12]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [12]),
        .I1(out0),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[13]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [13]),
        .I1(out0),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[14]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [14]),
        .I1(out0),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[15]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [15]),
        .I1(out0),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[16]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [16]),
        .I1(out0),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[17]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [17]),
        .I1(out0),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[18]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [18]),
        .I1(out0),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[19]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [19]),
        .I1(out0),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[1]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [1]),
        .I1(out0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[20]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [20]),
        .I1(out0),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[21]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [21]),
        .I1(out0),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[22]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [22]),
        .I1(out0),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[23]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [23]),
        .I1(out0),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[24]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [24]),
        .I1(out0),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[25]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [25]),
        .I1(out0),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[26]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [26]),
        .I1(out0),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[27]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [27]),
        .I1(out0),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[28]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [28]),
        .I1(out0),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[29]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [29]),
        .I1(out0),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[2]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [2]),
        .I1(out0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[30]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [30]),
        .I1(out0),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00FF10)) 
    \gen_reg[0].reg_data[31]_i_1 
       (.I0(\gen_reg[0].reg_data[31]_i_3_n_0 ),
        .I1(p_0_in),
        .I2(s_axi_ctrl_bvalid[0]),
        .I3(out0),
        .I4(write_addr[1]),
        .I5(write_addr[2]),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \gen_reg[0].reg_data[31]_i_1__0 
       (.I0(p_0_in),
        .I1(write_addr[2]),
        .I2(s_axi_ctrl_bvalid[0]),
        .I3(write_addr[1]),
        .I4(write_addr[3]),
        .I5(write_addr[0]),
        .O(\gen_reg[0].reg_data_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[31]_i_2 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [31]),
        .I1(out0),
        .O(D[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_reg[0].reg_data[31]_i_3 
       (.I0(write_addr[0]),
        .I1(write_addr[3]),
        .O(\gen_reg[0].reg_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[3]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [3]),
        .I1(out0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[4]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [4]),
        .I1(out0),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[5]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [5]),
        .I1(out0),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[6]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [6]),
        .I1(out0),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[7]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [7]),
        .I1(out0),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[8]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [8]),
        .I1(out0),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[9]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [9]),
        .I1(out0),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \gen_reg[1].reg_data[63]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(write_addr[3]),
        .I3(write_addr[2]),
        .I4(p_0_in),
        .I5(s_axi_ctrl_bvalid[0]),
        .O(\gen_reg[1].reg_data_reg[63] ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \gen_reg[2].reg_data[95]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[3]),
        .I2(write_addr[1]),
        .I3(write_addr[2]),
        .I4(p_0_in),
        .I5(s_axi_ctrl_bvalid[0]),
        .O(\gen_reg[2].reg_data_reg[95] ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q),
        .I2(s_axi_ctrl_bvalid[0]),
        .I3(s_axi_ctrl_bvalid[1]),
        .I4(s_axi_ctrl_awvalid),
        .I5(s_axi_ctrl_wvalid),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00030044)) 
    \state[1]_i_1 
       (.I0(Q),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_axi_ctrl_bready),
        .I3(s_axi_ctrl_bvalid[0]),
        .I4(s_axi_ctrl_bvalid[1]),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h020C)) 
    \state[2]_i_1 
       (.I0(Q),
        .I1(s_axi_ctrl_bvalid[0]),
        .I2(s_axi_ctrl_bvalid[1]),
        .I3(\state_reg_n_0_[2] ),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(s_axi_ctrl_bvalid[0]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(s_axi_ctrl_bvalid[1]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "27" *) (* C_AXIS_TDATA_WIDTH = "32" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "1" *) (* C_FAMILY = "virtex7" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "2" *) (* C_M_AXIS_BASETDEST_ARRAY = "3'b010" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "9'b111111111" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "3'b010" *) (* C_NUM_MI_SLOTS = "3" *) 
(* C_NUM_SI_SLOTS = "3" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "1" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "30" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_8_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "9'b111111111" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "3'b000" *) (* P_TPAYLOAD_WIDTH = "37" *) 
module top_xbar_6_axis_switch_v1_1_8_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [2:0]s_axis_tvalid;
  output [2:0]s_axis_tready;
  input [95:0]s_axis_tdata;
  input [11:0]s_axis_tstrb;
  input [11:0]s_axis_tkeep;
  input [2:0]s_axis_tlast;
  input [2:0]s_axis_tid;
  input [2:0]s_axis_tdest;
  input [2:0]s_axis_tuser;
  output [2:0]m_axis_tvalid;
  input [2:0]m_axis_tready;
  output [95:0]m_axis_tdata;
  output [11:0]m_axis_tstrb;
  output [11:0]m_axis_tkeep;
  output [2:0]m_axis_tlast;
  output [2:0]m_axis_tid;
  output [2:0]m_axis_tdest;
  output [2:0]m_axis_tuser;
  output [8:0]arb_req;
  output [2:0]arb_done;
  input [8:0]arb_gnt;
  input [5:0]arb_sel;
  output [8:0]arb_last;
  output [8:0]arb_id;
  output [8:0]arb_dest;
  output [8:0]arb_user;
  input [2:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [2:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire [29:0]cdc_handshake_data_out;
  wire cdc_handshake_data_valid;
  wire ctrl_ack;
  wire [29:0]ctrl_reg;
  wire ctrl_req;
  wire ctrl_soft_reset;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[0].axisc_decoder_0_n_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ;
  wire \gen_static_router.s_axi_ctrl_areset_i_1_n_0 ;
  wire [95:0]m_axis_tdata;
  wire \m_axis_tdata[31]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_1_n_0 ;
  wire [11:0]m_axis_tkeep;
  wire [2:0]m_axis_tlast;
  wire [2:0]m_axis_tready;
  wire [2:0]m_axis_tvalid;
  wire mi_enable;
  wire [2:0]mux_tvalid;
  wire p_0_in;
  wire [36:0]p_12_out;
  wire [36:0]p_2_out;
  wire s_axi_ctrl_aclk;
  wire [6:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_areset;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [6:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [95:0]s_axis_tdata;
  wire [11:0]s_axis_tkeep;
  wire [2:0]s_axis_tlast;
  wire [2:0]s_axis_tready;
  wire [2:0]s_axis_tvalid;
  wire [3:0]sel0;
  wire [2:0]si_enable;

  assign arb_dest[8] = \<const0> ;
  assign arb_dest[7] = \<const0> ;
  assign arb_dest[6] = \<const0> ;
  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[2] = \<const0> ;
  assign arb_done[1] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[8] = \<const0> ;
  assign arb_id[7] = \<const0> ;
  assign arb_id[6] = \<const0> ;
  assign arb_id[5] = \<const0> ;
  assign arb_id[4] = \<const0> ;
  assign arb_id[3] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[8] = \<const0> ;
  assign arb_last[7] = \<const0> ;
  assign arb_last[6] = \<const0> ;
  assign arb_last[5] = \<const0> ;
  assign arb_last[4] = \<const0> ;
  assign arb_last[3] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[8] = \<const0> ;
  assign arb_req[7] = \<const0> ;
  assign arb_req[6] = \<const0> ;
  assign arb_req[5] = \<const0> ;
  assign arb_req[4] = \<const0> ;
  assign arb_req[3] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign s_axi_ctrl_awready = s_axi_ctrl_wready;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_decode_err[2] = \<const0> ;
  assign s_decode_err[1] = \<const0> ;
  assign s_decode_err[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  top_xbar_6_axis_switch_v1_1_8_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.D({s_axis_tlast[0],s_axis_tkeep[3:0],s_axis_tdata[31:0]}),
        .Q({si_enable[0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.sel_rd_reg (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_decoder[0].axisc_decoder_0_n_1 ),
        .m_axis_tready(m_axis_tready),
        .mux_tvalid(mux_tvalid[0]),
        .p_12_out(p_12_out),
        .\s_axis_tready[0] (s_axis_tready[0]),
        .s_axis_tvalid(s_axis_tvalid[0]));
  top_xbar_6_axis_switch_v1_1_8_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.D({s_axis_tlast[1],s_axis_tkeep[7:4],s_axis_tdata[63:32]}),
        .Q({si_enable[1],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0[1:0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[0] ({mux_tvalid[2],mux_tvalid[0]}),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] (\m_axis_tdata[95]_INST_0_i_1_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] (\gen_decoder[0].axisc_decoder_0_n_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] (\m_axis_tdata[31]_INST_0_i_1_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 (\m_axis_tdata[63]_INST_0_i_1_n_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .p_12_out(p_12_out),
        .p_2_out(p_2_out),
        .\s_axis_tready[1] (s_axis_tready[1]),
        .s_axis_tvalid(s_axis_tvalid[1]));
  top_xbar_6_axis_switch_v1_1_8_axisc_decoder_1 \gen_decoder[2].axisc_decoder_0 
       (.D({s_axis_tlast[2],s_axis_tkeep[11:8],s_axis_tdata[95:64]}),
        .Q({si_enable[2],mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0[1:0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.payload_a_reg[0] (mux_tvalid[2]),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] (\gen_decoder[0].axisc_decoder_0_n_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axis_tready(m_axis_tready[0]),
        .p_2_out(p_2_out),
        .\s_axis_tready[2] (s_axis_tready[2]),
        .s_axis_tvalid(s_axis_tvalid[2]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[0] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[0]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[10]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[11] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[11]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[12] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[12]),
        .Q(mi_enable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[13]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[14]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[1]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[27] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[27]),
        .Q(si_enable[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[28]),
        .Q(si_enable[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[29] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[29]),
        .Q(si_enable[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[2]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[3] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[3]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[4] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[4]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[5]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[6]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[7] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[7]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[8] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[8]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[9]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ),
        .R(1'b0));
  top_xbar_6_axis_infrastructure_v1_1_0_cdc_handshake \gen_static_router.gen_synch.inst_cdc_handshake 
       (.D({cdc_handshake_data_out[29:27],cdc_handshake_data_out[14:0]}),
        .E(cdc_handshake_data_valid),
        .aclk(aclk),
        .ctrl_reg(ctrl_reg),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_rcv(ctrl_ack),
        .src_send(ctrl_req));
  top_xbar_6_axis_infrastructure_v1_1_0_clock_synchronizer \gen_static_router.gen_synch.inst_rst_synch 
       (.aclk(aclk),
        .aresetn(aresetn),
        .p_0_in(p_0_in),
        .src_in(ctrl_soft_reset));
  top_xbar_6_axis_switch_v1_1_8_static_router \gen_static_router.inst_static_router 
       (.Q({s_axi_ctrl_rvalid,s_axi_ctrl_arready}),
        .SR(s_axi_ctrl_areset),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr[6:2]),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr[6:2]),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bvalid({s_axi_ctrl_bvalid,s_axi_ctrl_wready}),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\src_hsdata_ff_reg[29] (ctrl_reg),
        .src_in(ctrl_soft_reset),
        .src_rcv(ctrl_ack),
        .src_send(ctrl_req));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_static_router.s_axi_ctrl_areset_i_1 
       (.I0(s_axi_ctrl_aresetn),
        .O(\gen_static_router.s_axi_ctrl_areset_i_1_n_0 ));
  FDRE \gen_static_router.s_axi_ctrl_areset_reg 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_static_router.s_axi_ctrl_areset_i_1_n_0 ),
        .Q(s_axi_ctrl_areset),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[31]_INST_0_i_1 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .O(\m_axis_tdata[31]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[63]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(\m_axis_tdata[63]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[95]_INST_0_i_1 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ),
        .O(\m_axis_tdata[95]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_6_axis_switch_v1_1_8_axisc_decoder
   (\gen_AB_reg_slice.sel_rd_reg ,
    \gen_AB_reg_slice.sel_rd_reg_0 ,
    \s_axis_tready[0] ,
    mux_tvalid,
    p_12_out,
    aclk,
    Q,
    m_axis_tready,
    aclken,
    s_axis_tvalid,
    areset_r,
    D);
  output \gen_AB_reg_slice.sel_rd_reg ;
  output \gen_AB_reg_slice.sel_rd_reg_0 ;
  output \s_axis_tready[0] ;
  output [0:0]mux_tvalid;
  output [36:0]p_12_out;
  input aclk;
  input [15:0]Q;
  input [2:0]m_axis_tready;
  input aclken;
  input [0:0]s_axis_tvalid;
  input areset_r;
  input [36:0]D;

  wire [36:0]D;
  wire [15:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.sel_rd_reg ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire [2:0]m_axis_tready;
  wire [0:0]mux_tvalid;
  wire [36:0]p_12_out;
  wire \s_axis_tready[0] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_3 \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.payload_a_reg[0]_0 (mux_tvalid),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_AB_reg_slice.sel_rd_reg ),
        .\gen_AB_reg_slice.sel_rd_reg_1 (\gen_AB_reg_slice.sel_rd_reg_0 ),
        .m_axis_tready(m_axis_tready),
        .p_12_out(p_12_out),
        .\s_axis_tready[0] (\s_axis_tready[0] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_6_axis_switch_v1_1_8_axisc_decoder_0
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tvalid,
    \s_axis_tready[1] ,
    aclk,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ,
    Q,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ,
    m_axis_tready,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ,
    p_2_out,
    p_12_out,
    \gen_AB_reg_slice.state_reg[0] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ,
    aclken,
    s_axis_tvalid,
    areset_r,
    D);
  output [95:0]m_axis_tdata;
  output [11:0]m_axis_tkeep;
  output [2:0]m_axis_tlast;
  output [2:0]m_axis_tvalid;
  output \s_axis_tready[1] ;
  input aclk;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  input [12:0]Q;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  input [0:0]m_axis_tready;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  input [36:0]p_2_out;
  input [36:0]p_12_out;
  input [1:0]\gen_AB_reg_slice.state_reg[0] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ;
  input aclken;
  input [0:0]s_axis_tvalid;
  input areset_r;
  input [36:0]D;

  wire [36:0]D;
  wire [12:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [1:0]\gen_AB_reg_slice.state_reg[0] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ;
  wire [95:0]m_axis_tdata;
  wire [11:0]m_axis_tkeep;
  wire [2:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [2:0]m_axis_tvalid;
  wire [36:0]p_12_out;
  wire [36:0]p_2_out;
  wire \s_axis_tready[1] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_2 \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[10] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_12_out(p_12_out),
        .p_2_out(p_2_out),
        .\s_axis_tready[1] (\s_axis_tready[1] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_6_axis_switch_v1_1_8_axisc_decoder_1
   (\s_axis_tready[2] ,
    \gen_AB_reg_slice.payload_a_reg[0] ,
    p_2_out,
    aclk,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ,
    Q,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ,
    m_axis_tready,
    aclken,
    s_axis_tvalid,
    areset_r,
    D);
  output \s_axis_tready[2] ;
  output [0:0]\gen_AB_reg_slice.payload_a_reg[0] ;
  output [36:0]p_2_out;
  input aclk;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  input [10:0]Q;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  input [0:0]m_axis_tready;
  input aclken;
  input [0:0]s_axis_tvalid;
  input areset_r;
  input [36:0]D;

  wire [36:0]D;
  wire [10:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [0:0]\gen_AB_reg_slice.payload_a_reg[0] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ;
  wire [0:0]m_axis_tready;
  wire [36:0]p_2_out;
  wire \s_axis_tready[2] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.payload_a_reg[0]_0 (\gen_AB_reg_slice.payload_a_reg[0] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[14] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[6] ),
        .m_axis_tready(m_axis_tready),
        .p_2_out(p_2_out),
        .\s_axis_tready[2] (\s_axis_tready[2] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_reg_bank_16x32" *) 
module top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32
   (Q,
    SR,
    E,
    D,
    s_axi_ctrl_aclk);
  output [31:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire s_axi_ctrl_aclk;

  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_reg_bank_16x32" *) 
module top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32__parameterized0
   (\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ,
    Q,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ,
    \data_reg[30] ,
    \data_reg[31] ,
    \data_reg[30]_0 ,
    \addr_r_reg[3] ,
    \addr_r_reg[4] ,
    SR,
    E,
    D,
    s_axi_ctrl_aclk,
    \addr_r_reg[2] ,
    \addr_r_reg[2]_0 );
  output \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  output \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  output [30:0]Q;
  output \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  output [30:0]\data_reg[30] ;
  output \data_reg[31] ;
  output [30:0]\data_reg[30]_0 ;
  input [1:0]\addr_r_reg[3] ;
  input \addr_r_reg[4] ;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;
  input [0:0]\addr_r_reg[2] ;
  input [0:0]\addr_r_reg[2]_0 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [30:0]Q;
  wire [0:0]SR;
  wire [0:0]\addr_r_reg[2] ;
  wire [0:0]\addr_r_reg[2]_0 ;
  wire [1:0]\addr_r_reg[3] ;
  wire \addr_r_reg[4] ;
  wire [30:0]\data_reg[30] ;
  wire [30:0]\data_reg[30]_0 ;
  wire \data_reg[31] ;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  wire \gen_reg[0].reg_data_reg_n_0_[31] ;
  wire [31:31]\gen_reg[1].reg_data_reg ;
  wire [31:31]\gen_reg[2].reg_data_reg ;
  wire s_axi_ctrl_aclk;

  LUT6 #(
    .INIT(64'hFFFCFFFAFFFCFF0A)) 
    \data[31]_i_2 
       (.I0(\gen_reg[0].reg_data_reg_n_0_[31] ),
        .I1(\gen_reg[2].reg_data_reg ),
        .I2(\addr_r_reg[3] [0]),
        .I3(\addr_r_reg[4] ),
        .I4(\addr_r_reg[3] [1]),
        .I5(\gen_reg[1].reg_data_reg ),
        .O(\data_reg[31] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[0].mi_mux_en_in[0]_i_1 
       (.I0(\gen_reg[0].reg_data_reg_n_0_[31] ),
        .O(\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[1].mi_mux_en_in[1]_i_1 
       (.I0(\gen_reg[1].reg_data_reg ),
        .O(\gen_mi_mux_in[1].mi_mux_en_in_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[2].mi_mux_en_in[2]_i_1 
       (.I0(\gen_reg[2].reg_data_reg ),
        .O(\gen_mi_mux_in[2].mi_mux_en_in_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\data_reg[30]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(\data_reg[30]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\data_reg[30]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\data_reg[30]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\data_reg[30]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\data_reg[30]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\data_reg[30]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\data_reg[30]_0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\data_reg[30]_0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\data_reg[30]_0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\data_reg[30]_0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\data_reg[30]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\data_reg[30]_0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\data_reg[30]_0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\data_reg[30]_0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\data_reg[30]_0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(\data_reg[30]_0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(\data_reg[30]_0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(\data_reg[30]_0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(\data_reg[30]_0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(\data_reg[30]_0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(\data_reg[30]_0 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\data_reg[30]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(\data_reg[30]_0 [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[31] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\data_reg[30]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\data_reg[30]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\data_reg[30]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\data_reg[30]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\data_reg[30]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\data_reg[30]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\data_reg[30]_0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[30]),
        .Q(Q[30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[1].reg_data_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[31]),
        .Q(\gen_reg[1].reg_data_reg ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[64] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[0]),
        .Q(\data_reg[30] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[65] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[1]),
        .Q(\data_reg[30] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[66] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[2]),
        .Q(\data_reg[30] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[67] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[3]),
        .Q(\data_reg[30] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[68] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[4]),
        .Q(\data_reg[30] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[69] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[5]),
        .Q(\data_reg[30] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[70] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[6]),
        .Q(\data_reg[30] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[71] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[7]),
        .Q(\data_reg[30] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[72] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[8]),
        .Q(\data_reg[30] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[73] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[9]),
        .Q(\data_reg[30] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[74] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[10]),
        .Q(\data_reg[30] [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[75] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[11]),
        .Q(\data_reg[30] [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[76] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[12]),
        .Q(\data_reg[30] [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[77] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[13]),
        .Q(\data_reg[30] [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[78] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[14]),
        .Q(\data_reg[30] [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[79] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[15]),
        .Q(\data_reg[30] [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[80] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[16]),
        .Q(\data_reg[30] [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[81] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[17]),
        .Q(\data_reg[30] [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[82] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[18]),
        .Q(\data_reg[30] [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[83] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[19]),
        .Q(\data_reg[30] [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[84] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[20]),
        .Q(\data_reg[30] [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[85] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[21]),
        .Q(\data_reg[30] [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[86] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[22]),
        .Q(\data_reg[30] [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[87] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[23]),
        .Q(\data_reg[30] [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[88] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[24]),
        .Q(\data_reg[30] [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[89] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[25]),
        .Q(\data_reg[30] [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[90] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[26]),
        .Q(\data_reg[30] [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[91] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[27]),
        .Q(\data_reg[30] [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[92] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[28]),
        .Q(\data_reg[30] [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[93] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[29]),
        .Q(\data_reg[30] [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[94] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[30]),
        .Q(\data_reg[30] [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[2].reg_data_reg[95] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[31]),
        .Q(\gen_reg[2].reg_data_reg ),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_static_router" *) 
module top_xbar_6_axis_switch_v1_1_8_static_router
   (Q,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_rdata,
    \src_hsdata_ff_reg[29] ,
    src_send,
    src_in,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    SR,
    s_axi_ctrl_aclk,
    src_rcv,
    s_axi_ctrl_wdata,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid);
  output [1:0]Q;
  output [1:0]s_axi_ctrl_bvalid;
  output [31:0]s_axi_ctrl_rdata;
  output [29:0]\src_hsdata_ff_reg[29] ;
  output src_send;
  output src_in;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [0:0]SR;
  input s_axi_ctrl_aclk;
  input src_rcv;
  input [31:0]s_axi_ctrl_wdata;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;

  wire [1:0]Q;
  wire [0:0]SR;
  wire commit_reset;
  wire [3:0]\gen_reg[1].reg_data_reg ;
  wire [3:0]\gen_reg[2].reg_data_reg ;
  wire inst_axi_ctrl_top_n_49;
  wire inst_axi_ctrl_top_n_5;
  wire inst_axi_ctrl_top_n_50;
  wire inst_axi_ctrl_top_n_51;
  wire inst_axi_ctrl_top_n_6;
  wire inst_axi_ctrl_top_n_7;
  wire inst_axi_ctrl_top_n_8;
  wire reg_commit;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [29:0]\src_hsdata_ff_reg[29] ;
  wire src_in;
  wire src_rcv;
  wire src_send;

  top_xbar_6_axis_switch_v1_1_8_axi_ctrl_top inst_axi_ctrl_top
       (.Q(Q),
        .SR(SR),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0] (inst_axi_ctrl_top_n_49),
        .\gen_mi_mux_in[0].mi_mux_in_reg[3] ({inst_axi_ctrl_top_n_5,inst_axi_ctrl_top_n_6,inst_axi_ctrl_top_n_7,inst_axi_ctrl_top_n_8}),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1] (inst_axi_ctrl_top_n_50),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7] (\gen_reg[1].reg_data_reg ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2] (inst_axi_ctrl_top_n_51),
        .\gen_mi_mux_in[2].mi_mux_in_reg[11] (\gen_reg[2].reg_data_reg ),
        .out0(commit_reset),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\state_reg[0] (reg_commit));
  top_xbar_6_axis_switch_v1_1_8_static_router_config inst_start_router_config
       (.D({inst_axi_ctrl_top_n_5,inst_axi_ctrl_top_n_6,inst_axi_ctrl_top_n_7,inst_axi_ctrl_top_n_8}),
        .SR(SR),
        .\gen_reg[0].reg_data_reg[1] (reg_commit),
        .\gen_reg[0].reg_data_reg[31] (inst_axi_ctrl_top_n_49),
        .\gen_reg[1].reg_data_reg[35] (\gen_reg[1].reg_data_reg ),
        .\gen_reg[1].reg_data_reg[63] (inst_axi_ctrl_top_n_50),
        .\gen_reg[2].reg_data_reg[67] (\gen_reg[2].reg_data_reg ),
        .\gen_reg[2].reg_data_reg[95] (inst_axi_ctrl_top_n_51),
        .out0(commit_reset),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .\src_hsdata_ff_reg[29] (\src_hsdata_ff_reg[29] ),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_static_router_config" *) 
module top_xbar_6_axis_switch_v1_1_8_static_router_config
   (src_send,
    src_in,
    \src_hsdata_ff_reg[29] ,
    out0,
    s_axi_ctrl_aclk,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[2].reg_data_reg[95] ,
    SR,
    src_rcv,
    D,
    \gen_reg[1].reg_data_reg[35] ,
    \gen_reg[2].reg_data_reg[67] ,
    \gen_reg[0].reg_data_reg[1] );
  output src_send;
  output src_in;
  output [29:0]\src_hsdata_ff_reg[29] ;
  output out0;
  input s_axi_ctrl_aclk;
  input \gen_reg[0].reg_data_reg[31] ;
  input \gen_reg[1].reg_data_reg[63] ;
  input \gen_reg[2].reg_data_reg[95] ;
  input [0:0]SR;
  input src_rcv;
  input [3:0]D;
  input [3:0]\gen_reg[1].reg_data_reg[35] ;
  input [3:0]\gen_reg[2].reg_data_reg[67] ;
  input [0:0]\gen_reg[0].reg_data_reg[1] ;

  wire [3:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [0:0]SR;
  (* RTL_KEEP = "yes" *) wire ctrl_soft_reset_r0;
  wire ctrl_soft_reset_r_i_1_n_0;
  wire done;
  wire [0:0]\gen_reg[0].reg_data_reg[1] ;
  wire \gen_reg[0].reg_data_reg[31] ;
  wire [3:0]\gen_reg[1].reg_data_reg[35] ;
  wire \gen_reg[1].reg_data_reg[63] ;
  wire [3:0]\gen_reg[2].reg_data_reg[67] ;
  wire \gen_reg[2].reg_data_reg[95] ;
  wire [3:0]\gen_si_mux[0].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[1].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[2].si_mux_r_reg ;
  wire inst_start_router_config_dp_n_31;
  wire [2:0]mi_enable;
  wire [11:0]mi_mux;
  (* RTL_KEEP = "yes" *) wire out0;
  wire s_axi_ctrl_aclk;
  wire [2:0]si_enable;
  wire [29:0]\src_hsdata_ff_reg[29] ;
  wire src_in;
  wire src_rcv;
  wire src_send;
  (* RTL_KEEP = "yes" *) wire start;

  LUT5 #(
    .INIT(32'h44444447)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[1] ),
        .I1(ctrl_soft_reset_r0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(start),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[1] ),
        .I1(ctrl_soft_reset_r0),
        .I2(done),
        .I3(start),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(start),
        .I2(done),
        .I3(ctrl_soft_reset_r0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111010000000100)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(start),
        .I1(ctrl_soft_reset_r0),
        .I2(src_rcv),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(done),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(src_rcv),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(ctrl_soft_reset_r0),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(ctrl_soft_reset_r0),
        .S(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(start),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(out0),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[0]),
        .Q(\src_hsdata_ff_reg[29] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[10]),
        .Q(\src_hsdata_ff_reg[29] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[11]),
        .Q(\src_hsdata_ff_reg[29] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[0]),
        .Q(\src_hsdata_ff_reg[29] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[1]),
        .Q(\src_hsdata_ff_reg[29] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[2]),
        .Q(\src_hsdata_ff_reg[29] [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [0]),
        .Q(\src_hsdata_ff_reg[29] [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [1]),
        .Q(\src_hsdata_ff_reg[29] [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [2]),
        .Q(\src_hsdata_ff_reg[29] [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [3]),
        .Q(\src_hsdata_ff_reg[29] [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [0]),
        .Q(\src_hsdata_ff_reg[29] [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[1]),
        .Q(\src_hsdata_ff_reg[29] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [1]),
        .Q(\src_hsdata_ff_reg[29] [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [2]),
        .Q(\src_hsdata_ff_reg[29] [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [3]),
        .Q(\src_hsdata_ff_reg[29] [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [0]),
        .Q(\src_hsdata_ff_reg[29] [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [1]),
        .Q(\src_hsdata_ff_reg[29] [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [2]),
        .Q(\src_hsdata_ff_reg[29] [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [3]),
        .Q(\src_hsdata_ff_reg[29] [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[0]),
        .Q(\src_hsdata_ff_reg[29] [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[1]),
        .Q(\src_hsdata_ff_reg[29] [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[2]),
        .Q(\src_hsdata_ff_reg[29] [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[2]),
        .Q(\src_hsdata_ff_reg[29] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[3]),
        .Q(\src_hsdata_ff_reg[29] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[4]),
        .Q(\src_hsdata_ff_reg[29] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[5]),
        .Q(\src_hsdata_ff_reg[29] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[6]),
        .Q(\src_hsdata_ff_reg[29] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[7]),
        .Q(\src_hsdata_ff_reg[29] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[8]),
        .Q(\src_hsdata_ff_reg[29] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[9]),
        .Q(\src_hsdata_ff_reg[29] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_req_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_31),
        .Q(src_send),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    ctrl_soft_reset_r_i_1
       (.I0(ctrl_soft_reset_r0),
        .O(ctrl_soft_reset_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_soft_reset_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(ctrl_soft_reset_r_i_1_n_0),
        .Q(src_in),
        .R(1'b0));
  top_xbar_6_axis_switch_v1_1_8_static_router_config_dp inst_start_router_config_dp
       (.D({\gen_si_mux[2].si_mux_r_reg ,\gen_si_mux[1].si_mux_r_reg ,\gen_si_mux[0].si_mux_r_reg ,mi_enable,mi_mux}),
        .ctrl_req_r_reg(inst_start_router_config_dp_n_31),
        .done(done),
        .\gen_reg[0].reg_data_reg[31] (\gen_reg[0].reg_data_reg[31] ),
        .\gen_reg[0].reg_data_reg[3] (D),
        .\gen_reg[1].reg_data_reg[35] (\gen_reg[1].reg_data_reg[35] ),
        .\gen_reg[1].reg_data_reg[63] (\gen_reg[1].reg_data_reg[63] ),
        .\gen_reg[2].reg_data_reg[67] (\gen_reg[2].reg_data_reg[67] ),
        .\gen_reg[2].reg_data_reg[95] (\gen_reg[2].reg_data_reg[95] ),
        .out({\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,start}),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .si_enable(si_enable),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_static_router_config_dp" *) 
module top_xbar_6_axis_switch_v1_1_8_static_router_config_dp
   (si_enable,
    done,
    D,
    ctrl_req_r_reg,
    out,
    s_axi_ctrl_aclk,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[2].reg_data_reg[95] ,
    src_rcv,
    src_send,
    \gen_reg[0].reg_data_reg[3] ,
    \gen_reg[1].reg_data_reg[35] ,
    \gen_reg[2].reg_data_reg[67] );
  output [2:0]si_enable;
  output done;
  output [26:0]D;
  output ctrl_req_r_reg;
  input [2:0]out;
  input s_axi_ctrl_aclk;
  input \gen_reg[0].reg_data_reg[31] ;
  input \gen_reg[1].reg_data_reg[63] ;
  input \gen_reg[2].reg_data_reg[95] ;
  input src_rcv;
  input src_send;
  input [3:0]\gen_reg[0].reg_data_reg[3] ;
  input [3:0]\gen_reg[1].reg_data_reg[35] ;
  input [3:0]\gen_reg[2].reg_data_reg[67] ;

  wire [26:0]D;
  wire ctrl_req_r_reg;
  wire done;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_5_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ;
  wire \gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ;
  wire \gen_reg[0].reg_data_reg[31] ;
  wire [3:0]\gen_reg[0].reg_data_reg[3] ;
  wire [3:0]\gen_reg[1].reg_data_reg[35] ;
  wire \gen_reg[1].reg_data_reg[63] ;
  wire [3:0]\gen_reg[2].reg_data_reg[67] ;
  wire \gen_reg[2].reg_data_reg[95] ;
  wire \gen_si_enable[0].si_enable_r[0]_i_2_n_0 ;
  wire \gen_si_mux[0].si_mux_r[3]_i_1_n_0 ;
  wire \gen_si_mux[1].si_mux_r[7]_i_1_n_0 ;
  wire \gen_si_mux[2].si_mux_r[11]_i_1_n_0 ;
  wire \mi_cntr[0]_i_1_n_0 ;
  wire \mi_cntr[1]_i_1_n_0 ;
  wire [3:0]mi_cntr_reg__0;
  wire [2:0]mi_connectivity;
  wire mi_connectivity1_n_0;
  wire \mi_connectivity[0]_i_1_n_0 ;
  wire \mi_connectivity[2]_i_1_n_0 ;
  wire [2:0]mi_mux_en_in;
  wire [2:0]out;
  wire [3:2]p_0_in;
  wire [4:0]p_0_in_0;
  wire p_32_out;
  wire p_34_out;
  wire p_37_out;
  wire s_axi_ctrl_aclk;
  wire sel;
  wire \selectee[0]_i_1_n_0 ;
  wire \selectee[1]_i_1_n_0 ;
  wire \selectee[2]_i_1_n_0 ;
  wire \selectee[3]_i_1_n_0 ;
  wire [3:0]selector;
  wire selector_enable0_n_0;
  wire [2:0]si_enable;
  wire src_rcv;
  wire src_send;
  wire start_r;
  wire stg1_done;
  wire stg1_done_i_1_n_0;
  wire stg1_reset;
  wire stg1_reset_i_1_n_0;
  wire stg2_done_i_1_n_0;
  wire stg2_reset;

  LUT5 #(
    .INIT(32'h8FFF8888)) 
    ctrl_req_r_i_1
       (.I0(done),
        .I1(out[1]),
        .I2(src_rcv),
        .I3(out[2]),
        .I4(src_send),
        .O(ctrl_req_r_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000000E)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ),
        .I2(\gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ),
        .I3(selector[0]),
        .I4(selector[1]),
        .I5(D[12]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_2 
       (.I0(p_0_in_0[4]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r[0]_i_5_n_0 ),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_3 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(mi_connectivity[0]),
        .I3(p_0_in_0[1]),
        .I4(si_enable[0]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_4 
       (.I0(selector[2]),
        .I1(selector[3]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000222200F00000)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_5 
       (.I0(mi_connectivity[1]),
        .I1(si_enable[1]),
        .I2(mi_connectivity[2]),
        .I3(si_enable[2]),
        .I4(p_0_in_0[1]),
        .I5(p_0_in_0[0]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[0].mi_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ),
        .Q(D[12]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000E00)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ),
        .I2(\gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ),
        .I3(selector[0]),
        .I4(selector[1]),
        .I5(D[13]),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[1].mi_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ),
        .Q(D[13]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000E00)) 
    \gen_mi_enable[2].mi_enable_r[2]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ),
        .I2(\gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ),
        .I3(selector[1]),
        .I4(selector[0]),
        .I5(D[14]),
        .O(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[2].mi_enable_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ),
        .Q(D[14]),
        .R(stg2_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[31] ),
        .Q(mi_mux_en_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[63] ),
        .Q(mi_mux_en_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [0]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [1]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [2]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [3]),
        .Q(D[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[95] ),
        .Q(mi_mux_en_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [1]),
        .Q(D[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \gen_si_enable[0].si_enable_r[0]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(mi_connectivity[0]),
        .I3(p_0_in_0[1]),
        .I4(si_enable[0]),
        .O(p_37_out));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \gen_si_enable[0].si_enable_r[0]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[4]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[0].si_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_37_out),
        .Q(si_enable[0]),
        .R(stg2_reset));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \gen_si_enable[1].si_enable_r[1]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(mi_connectivity[1]),
        .I4(si_enable[1]),
        .O(p_34_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[1].si_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_34_out),
        .Q(si_enable[1]),
        .R(stg2_reset));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \gen_si_enable[2].si_enable_r[2]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(mi_connectivity[2]),
        .I3(p_0_in_0[1]),
        .I4(si_enable[2]),
        .O(p_32_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[2].si_enable_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_32_out),
        .Q(si_enable[2]),
        .R(stg2_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[0].si_mux_r[3]_i_1 
       (.I0(si_enable[0]),
        .O(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[18]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[1].si_mux_r[7]_i_1 
       (.I0(si_enable[1]),
        .O(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[22]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[2].si_mux_r[11]_i_1 
       (.I0(si_enable[2]),
        .O(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[24]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mi_cntr[0]_i_1 
       (.I0(mi_cntr_reg__0[0]),
        .O(\mi_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mi_cntr[1]_i_1 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[0]),
        .O(\mi_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mi_cntr[2]_i_1 
       (.I0(mi_cntr_reg__0[0]),
        .I1(mi_cntr_reg__0[1]),
        .I2(mi_cntr_reg__0[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \mi_cntr[3]_i_1 
       (.I0(mi_cntr_reg__0[0]),
        .I1(mi_cntr_reg__0[1]),
        .I2(mi_cntr_reg__0[3]),
        .I3(mi_cntr_reg__0[2]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mi_cntr[3]_i_2 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[2]),
        .I3(mi_cntr_reg__0[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(\mi_cntr[0]_i_1_n_0 ),
        .Q(mi_cntr_reg__0[0]),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b1)) 
    \mi_cntr_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(\mi_cntr[1]_i_1_n_0 ),
        .Q(mi_cntr_reg__0[1]),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(mi_cntr_reg__0[2]),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(mi_cntr_reg__0[3]),
        .R(stg1_reset));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h2DC3)) 
    mi_connectivity1
       (.I0(mi_cntr_reg__0[0]),
        .I1(mi_cntr_reg__0[2]),
        .I2(mi_cntr_reg__0[3]),
        .I3(mi_cntr_reg__0[1]),
        .O(mi_connectivity1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h5A97)) 
    \mi_connectivity[0]_i_1 
       (.I0(mi_cntr_reg__0[3]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[1]),
        .I3(mi_cntr_reg__0[2]),
        .O(\mi_connectivity[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h5295)) 
    \mi_connectivity[2]_i_1 
       (.I0(mi_cntr_reg__0[3]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[1]),
        .I3(mi_cntr_reg__0[2]),
        .O(\mi_connectivity[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[0]_i_1_n_0 ),
        .Q(mi_connectivity[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_connectivity1_n_0),
        .Q(mi_connectivity[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[2]_i_1_n_0 ),
        .Q(mi_connectivity[2]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[0]_i_1 
       (.I0(D[4]),
        .I1(mi_cntr_reg__0[0]),
        .I2(D[8]),
        .I3(mi_cntr_reg__0[1]),
        .I4(D[0]),
        .O(\selectee[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[1]_i_1 
       (.I0(D[5]),
        .I1(mi_cntr_reg__0[0]),
        .I2(D[9]),
        .I3(mi_cntr_reg__0[1]),
        .I4(D[1]),
        .O(\selectee[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[2]_i_1 
       (.I0(D[6]),
        .I1(mi_cntr_reg__0[0]),
        .I2(D[10]),
        .I3(mi_cntr_reg__0[1]),
        .I4(D[2]),
        .O(\selectee[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[3]_i_1 
       (.I0(D[7]),
        .I1(mi_cntr_reg__0[0]),
        .I2(D[11]),
        .I3(mi_cntr_reg__0[1]),
        .I4(D[3]),
        .O(\selectee[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[0]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[1]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[2]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee[3]_i_1_n_0 ),
        .Q(p_0_in_0[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    selector_enable0
       (.I0(mi_mux_en_in[2]),
        .I1(mi_cntr_reg__0[1]),
        .I2(mi_mux_en_in[1]),
        .I3(mi_cntr_reg__0[0]),
        .I4(mi_mux_en_in[0]),
        .O(selector_enable0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    selector_enable_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(selector_enable0_n_0),
        .Q(p_0_in_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[0]),
        .Q(selector[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[1]),
        .Q(selector[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[2]),
        .Q(selector[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[3]),
        .Q(selector[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(out[0]),
        .Q(start_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    stg1_done_i_1
       (.I0(mi_cntr_reg__0[0]),
        .I1(mi_cntr_reg__0[1]),
        .I2(mi_cntr_reg__0[3]),
        .I3(mi_cntr_reg__0[2]),
        .I4(stg1_reset),
        .O(stg1_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    stg1_done_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_done_i_1_n_0),
        .Q(stg1_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    stg1_reset_i_1
       (.I0(out[0]),
        .I1(start_r),
        .O(stg1_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stg1_reset_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_reset_i_1_n_0),
        .Q(stg1_reset),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    stg2_done_i_1
       (.I0(stg1_done),
        .I1(stg1_reset),
        .O(stg2_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    stg2_done_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg2_done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    stg2_reset_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_reset),
        .Q(stg2_reset),
        .R(1'b0));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "4" *) 
(* VERSION = "0" *) (* WIDTH = "30" *) (* XPM_CDC = "HANDSHAKE" *) 
(* XPM_MODULE = "TRUE" *) 
module top_xbar_6_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [29:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [29:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* XPM_CDC = "HANDSHAKE" *) wire [29:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [29:0]src_hsdata_ff;
  wire [29:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[29:0] = dest_hsdata_ff;
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    dest_req_ext_ff_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req_ff),
        .O(dest_hsdata_en));
  FDRE dest_req_ext_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_hsdata_en),
        .Q(dest_req),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req_ff),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[29]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_6_xpm_cdc_single__parameterized1 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_req_ff));
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_6_xpm_cdc_single__parameterized0 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_CDC = "SINGLE" *) (* XPM_MODULE = "TRUE" *) 
module top_xbar_6_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* ASYNC_REG = "true" *) (* RTL_KEEP = "true" *) (* XPM_CDC = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_CDC = "SINGLE" *) (* XPM_MODULE = "TRUE" *) 
module top_xbar_6_xpm_cdc_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* ASYNC_REG = "true" *) (* RTL_KEEP = "true" *) (* XPM_CDC = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_CDC = "SINGLE" *) (* XPM_MODULE = "TRUE" *) 
module top_xbar_6_xpm_cdc_single__parameterized1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* ASYNC_REG = "true" *) (* RTL_KEEP = "true" *) (* XPM_CDC = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
