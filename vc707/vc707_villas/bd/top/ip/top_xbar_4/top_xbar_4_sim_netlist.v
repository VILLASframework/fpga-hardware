// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Apr  9 15:34:12 2020
// Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_xbar_4/top_xbar_4_sim_netlist.v
// Design      : top_xbar_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_xbar_4,axis_switch_v1_1_18_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_18_axis_switch,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module top_xbar_4
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tdest,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tdest,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, ASSOCIATED_BUSIF M00_AXIS:M01_AXIS:M02_AXIS:M03_AXIS:M04_AXIS:M05_AXIS:M06_AXIS:M07_AXIS:M08_AXIS:M09_AXIS:M10_AXIS:M11_AXIS:M12_AXIS:M13_AXIS:M14_AXIS:M15_AXIS:S00_AXIS:S01_AXIS:S02_AXIS:S03_AXIS:S04_AXIS:S05_AXIS:S06_AXIS:S07_AXIS:S08_AXIS:S09_AXIS:S10_AXIS:S11_AXIS:S12_AXIS:S13_AXIS:S14_AXIS:S15_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TVALID [0:0] [4:4]" *) input [4:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TREADY [0:0] [4:4]" *) output [4:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [31:0] [95:64], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [31:0] [127:96], xilinx.com:interface:axis:1.0 S04_AXIS TDATA [31:0] [159:128]" *) input [159:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 S02_AXIS TKEEP [3:0] [11:8], xilinx.com:interface:axis:1.0 S03_AXIS TKEEP [3:0] [15:12], xilinx.com:interface:axis:1.0 S04_AXIS TKEEP [3:0] [19:16]" *) input [19:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TLAST [0:0] [4:4]" *) input [4:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDEST [2:0] [2:0], xilinx.com:interface:axis:1.0 S01_AXIS TDEST [2:0] [5:3], xilinx.com:interface:axis:1.0 S02_AXIS TDEST [2:0] [8:6], xilinx.com:interface:axis:1.0 S03_AXIS TDEST [2:0] [11:9], xilinx.com:interface:axis:1.0 S04_AXIS TDEST [2:0] [14:12]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S01_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S02_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S03_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME S04_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *) input [14:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TVALID [0:0] [4:4]" *) output [4:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TREADY [0:0] [4:4]" *) input [4:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [31:0] [95:64], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [31:0] [127:96], xilinx.com:interface:axis:1.0 M04_AXIS TDATA [31:0] [159:128]" *) output [159:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [3:0] [11:8], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [3:0] [15:12], xilinx.com:interface:axis:1.0 M04_AXIS TKEEP [3:0] [19:16]" *) output [19:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TLAST [0:0] [4:4]" *) output [4:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDEST [2:0] [2:0], xilinx.com:interface:axis:1.0 M01_AXIS TDEST [2:0] [5:3], xilinx.com:interface:axis:1.0 M02_AXIS TDEST [2:0] [8:6], xilinx.com:interface:axis:1.0 M03_AXIS TDEST [2:0] [11:9], xilinx.com:interface:axis:1.0 M04_AXIS TDEST [2:0] [14:12]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M01_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M02_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M03_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0, XIL_INTERFACENAME M04_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 3, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, LAYERED_METADATA undef, INSERT_VIP 0" *) output [14:0]m_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ACLK, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, ASSOCIATED_BUSIF S_AXI_CTRL, ASSOCIATED_RESET s_axi_ctrl_aresetn, INSERT_VIP 0" *) input s_axi_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_CTRL_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_ctrl_aresetn;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 125000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 4, NUM_WRITE_OUTSTANDING 4, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN top_axi_pcie_0_0_axi_aclk_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [1:0]s_axi_ctrl_rresp;

  wire aclk;
  wire aresetn;
  wire [159:0]m_axis_tdata;
  wire [14:0]m_axis_tdest;
  wire [19:0]m_axis_tkeep;
  wire [4:0]m_axis_tlast;
  wire [4:0]m_axis_tready;
  wire [4:0]m_axis_tvalid;
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
  wire [159:0]s_axis_tdata;
  wire [14:0]s_axis_tdest;
  wire [19:0]s_axis_tkeep;
  wire [4:0]s_axis_tlast;
  wire [4:0]s_axis_tready;
  wire [4:0]s_axis_tvalid;
  wire [74:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [4:0]NLW_inst_arb_done_UNCONNECTED;
  wire [24:0]NLW_inst_arb_id_UNCONNECTED;
  wire [24:0]NLW_inst_arb_last_UNCONNECTED;
  wire [24:0]NLW_inst_arb_req_UNCONNECTED;
  wire [24:0]NLW_inst_arb_user_UNCONNECTED;
  wire [4:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [19:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [4:0]NLW_inst_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_inst_s_decode_err_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "91" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "3" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "1" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "3" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "15'b100011010001000" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "25'b1111111111111111111111111" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "15'b100011010001000" *) 
  (* C_NUM_MI_SLOTS = "5" *) 
  (* C_NUM_SI_SLOTS = "5" *) 
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
  (* LP_CTRL_REG_WIDTH = "50" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "25'b1111111111111111111111111" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "5'b00000" *) 
  (* P_TPAYLOAD_WIDTH = "40" *) 
  top_xbar_4_axis_switch_v1_1_18_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[74:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[4:0]),
        .arb_gnt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[24:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[24:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[24:0]),
        .arb_sel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[24:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[4:0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[19:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[4:0]),
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
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(NLW_inst_s_decode_err_UNCONNECTED[4:0]),
        .s_req_suppress({1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_cdc_handshake" *) 
module top_xbar_4_axis_infrastructure_v1_1_0_cdc_handshake
   (src_rcv,
    D,
    E,
    s_axi_ctrl_aclk,
    ctrl_reg,
    src_send,
    aclk);
  output src_rcv;
  output [29:0]D;
  output [0:0]E;
  input s_axi_ctrl_aclk;
  input [49:0]ctrl_reg;
  input src_send;
  input aclk;

  wire [29:0]D;
  wire [0:0]E;
  wire aclk;
  wire [49:0]ctrl_reg;
  wire [44:25]\gen_static_router.gen_synch.cdc_handshake_data_out ;
  wire s_axi_ctrl_aclk;
  wire src_rcv;
  wire src_send;

  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "4" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "50" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_handshake inst_xpm_cdc_handshake
       (.dest_ack(1'b0),
        .dest_clk(aclk),
        .dest_out({D[29:25],\gen_static_router.gen_synch.cdc_handshake_data_out ,D[24:0]}),
        .dest_req(E),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(ctrl_reg),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_clock_synchronizer" *) 
module top_xbar_4_axis_infrastructure_v1_1_0_clock_synchronizer
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
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_single__3 inst_xpm_cdc_single
       (.dest_clk(aclk),
        .dest_out(soft_reset),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_18_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tdest,
    m_axis_tvalid,
    \gen_AB_reg_slice.state_reg[1]_0 ,
    aclk,
    m_axis_tdest_5_sp_1,
    m_axis_tdata_32_sp_1,
    \m_axis_tdest[5]_0 ,
    m_axis_tdata_33_sp_1,
    m_axis_tdata_34_sp_1,
    m_axis_tdata_35_sp_1,
    m_axis_tdata_36_sp_1,
    m_axis_tdata_37_sp_1,
    m_axis_tdata_38_sp_1,
    m_axis_tdata_39_sp_1,
    m_axis_tdata_40_sp_1,
    m_axis_tdata_41_sp_1,
    m_axis_tdata_42_sp_1,
    m_axis_tdata_43_sp_1,
    m_axis_tdata_44_sp_1,
    m_axis_tdata_45_sp_1,
    m_axis_tdata_46_sp_1,
    m_axis_tdata_47_sp_1,
    m_axis_tdata_48_sp_1,
    m_axis_tdata_49_sp_1,
    m_axis_tdata_50_sp_1,
    m_axis_tdata_51_sp_1,
    m_axis_tdata_52_sp_1,
    m_axis_tdata_53_sp_1,
    m_axis_tdata_54_sp_1,
    m_axis_tdata_55_sp_1,
    m_axis_tdata_56_sp_1,
    m_axis_tdata_57_sp_1,
    m_axis_tdata_58_sp_1,
    m_axis_tdata_59_sp_1,
    m_axis_tdata_60_sp_1,
    m_axis_tdata_61_sp_1,
    m_axis_tdata_62_sp_1,
    m_axis_tdata_63_sp_1,
    m_axis_tkeep_4_sp_1,
    m_axis_tkeep_5_sp_1,
    m_axis_tkeep_6_sp_1,
    m_axis_tkeep_7_sp_1,
    m_axis_tlast_1_sp_1,
    m_axis_tdest_3_sp_1,
    m_axis_tdest_4_sp_1,
    \m_axis_tdest[5]_1 ,
    m_axis_tvalid_1_sp_1,
    Q,
    m_axis_tready,
    m_axis_tdest_8_sp_1,
    m_axis_tdata_64_sp_1,
    \m_axis_tdest[8]_0 ,
    m_axis_tdata_65_sp_1,
    m_axis_tdata_66_sp_1,
    m_axis_tdata_67_sp_1,
    m_axis_tdata_68_sp_1,
    m_axis_tdata_69_sp_1,
    m_axis_tdata_70_sp_1,
    m_axis_tdata_71_sp_1,
    m_axis_tdata_72_sp_1,
    m_axis_tdata_73_sp_1,
    m_axis_tdata_74_sp_1,
    m_axis_tdata_75_sp_1,
    m_axis_tdata_76_sp_1,
    m_axis_tdata_77_sp_1,
    m_axis_tdata_78_sp_1,
    m_axis_tdata_79_sp_1,
    m_axis_tdata_80_sp_1,
    m_axis_tdata_81_sp_1,
    m_axis_tdata_82_sp_1,
    m_axis_tdata_83_sp_1,
    m_axis_tdata_84_sp_1,
    m_axis_tdata_85_sp_1,
    m_axis_tdata_86_sp_1,
    m_axis_tdata_87_sp_1,
    m_axis_tdata_88_sp_1,
    m_axis_tdata_89_sp_1,
    m_axis_tdata_90_sp_1,
    m_axis_tdata_91_sp_1,
    m_axis_tdata_92_sp_1,
    m_axis_tdata_93_sp_1,
    m_axis_tdata_94_sp_1,
    m_axis_tdata_95_sp_1,
    m_axis_tkeep_8_sp_1,
    m_axis_tkeep_9_sp_1,
    m_axis_tkeep_10_sp_1,
    m_axis_tkeep_11_sp_1,
    m_axis_tlast_2_sp_1,
    m_axis_tdest_6_sp_1,
    m_axis_tdest_7_sp_1,
    \m_axis_tdest[8]_1 ,
    m_axis_tvalid_2_sp_1,
    m_axis_tdest_2_sp_1,
    m_axis_tdata_0_sp_1,
    \m_axis_tdest[2]_0 ,
    m_axis_tdata_1_sp_1,
    m_axis_tdata_2_sp_1,
    m_axis_tdata_3_sp_1,
    m_axis_tdata_4_sp_1,
    m_axis_tdata_5_sp_1,
    m_axis_tdata_6_sp_1,
    m_axis_tdata_7_sp_1,
    m_axis_tdata_8_sp_1,
    m_axis_tdata_9_sp_1,
    m_axis_tdata_10_sp_1,
    m_axis_tdata_11_sp_1,
    m_axis_tdata_12_sp_1,
    m_axis_tdata_13_sp_1,
    m_axis_tdata_14_sp_1,
    m_axis_tdata_15_sp_1,
    m_axis_tdata_16_sp_1,
    m_axis_tdata_17_sp_1,
    m_axis_tdata_18_sp_1,
    m_axis_tdata_19_sp_1,
    m_axis_tdata_20_sp_1,
    m_axis_tdata_21_sp_1,
    m_axis_tdata_22_sp_1,
    m_axis_tdata_23_sp_1,
    m_axis_tdata_24_sp_1,
    m_axis_tdata_25_sp_1,
    m_axis_tdata_26_sp_1,
    m_axis_tdata_27_sp_1,
    m_axis_tdata_28_sp_1,
    m_axis_tdata_29_sp_1,
    m_axis_tdata_30_sp_1,
    m_axis_tdata_31_sp_1,
    m_axis_tkeep_0_sp_1,
    m_axis_tkeep_1_sp_1,
    m_axis_tkeep_2_sp_1,
    m_axis_tkeep_3_sp_1,
    m_axis_tlast_0_sp_1,
    m_axis_tdest_0_sp_1,
    m_axis_tdest_1_sp_1,
    \m_axis_tdest[2]_1 ,
    m_axis_tvalid_0_sp_1,
    m_axis_tdest_11_sp_1,
    m_axis_tdata_96_sp_1,
    \m_axis_tdest[11]_0 ,
    m_axis_tdata_97_sp_1,
    m_axis_tdata_98_sp_1,
    m_axis_tdata_99_sp_1,
    m_axis_tdata_100_sp_1,
    m_axis_tdata_101_sp_1,
    m_axis_tdata_102_sp_1,
    m_axis_tdata_103_sp_1,
    m_axis_tdata_104_sp_1,
    m_axis_tdata_105_sp_1,
    m_axis_tdata_106_sp_1,
    m_axis_tdata_107_sp_1,
    m_axis_tdata_108_sp_1,
    m_axis_tdata_109_sp_1,
    m_axis_tdata_110_sp_1,
    m_axis_tdata_111_sp_1,
    m_axis_tdata_112_sp_1,
    m_axis_tdata_113_sp_1,
    m_axis_tdata_114_sp_1,
    m_axis_tdata_115_sp_1,
    m_axis_tdata_116_sp_1,
    m_axis_tdata_117_sp_1,
    m_axis_tdata_118_sp_1,
    m_axis_tdata_119_sp_1,
    m_axis_tdata_120_sp_1,
    m_axis_tdata_121_sp_1,
    m_axis_tdata_122_sp_1,
    m_axis_tdata_123_sp_1,
    m_axis_tdata_124_sp_1,
    m_axis_tdata_125_sp_1,
    m_axis_tdata_126_sp_1,
    m_axis_tdata_127_sp_1,
    m_axis_tkeep_12_sp_1,
    m_axis_tkeep_13_sp_1,
    m_axis_tkeep_14_sp_1,
    m_axis_tkeep_15_sp_1,
    m_axis_tlast_3_sp_1,
    m_axis_tdest_9_sp_1,
    m_axis_tdest_10_sp_1,
    \m_axis_tdest[11]_1 ,
    m_axis_tvalid_3_sp_1,
    m_axis_tdest_14_sp_1,
    m_axis_tdata_128_sp_1,
    \m_axis_tdest[14]_0 ,
    m_axis_tdata_129_sp_1,
    m_axis_tdata_130_sp_1,
    m_axis_tdata_131_sp_1,
    m_axis_tdata_132_sp_1,
    m_axis_tdata_133_sp_1,
    m_axis_tdata_134_sp_1,
    m_axis_tdata_135_sp_1,
    m_axis_tdata_136_sp_1,
    m_axis_tdata_137_sp_1,
    m_axis_tdata_138_sp_1,
    m_axis_tdata_139_sp_1,
    m_axis_tdata_140_sp_1,
    m_axis_tdata_141_sp_1,
    m_axis_tdata_142_sp_1,
    m_axis_tdata_143_sp_1,
    m_axis_tdata_144_sp_1,
    m_axis_tdata_145_sp_1,
    m_axis_tdata_146_sp_1,
    m_axis_tdata_147_sp_1,
    m_axis_tdata_148_sp_1,
    m_axis_tdata_149_sp_1,
    m_axis_tdata_150_sp_1,
    m_axis_tdata_151_sp_1,
    m_axis_tdata_152_sp_1,
    m_axis_tdata_153_sp_1,
    m_axis_tdata_154_sp_1,
    m_axis_tdata_155_sp_1,
    m_axis_tdata_156_sp_1,
    m_axis_tdata_157_sp_1,
    m_axis_tdata_158_sp_1,
    m_axis_tdata_159_sp_1,
    m_axis_tkeep_16_sp_1,
    m_axis_tkeep_17_sp_1,
    m_axis_tkeep_18_sp_1,
    m_axis_tkeep_19_sp_1,
    m_axis_tlast_4_sp_1,
    m_axis_tdest_12_sp_1,
    m_axis_tdest_13_sp_1,
    \m_axis_tdest[14]_1 ,
    m_axis_tvalid_4_sp_1,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output [159:0]m_axis_tdata;
  output [19:0]m_axis_tkeep;
  output [4:0]m_axis_tlast;
  output [14:0]m_axis_tdest;
  output [4:0]m_axis_tvalid;
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  input aclk;
  input m_axis_tdest_5_sp_1;
  input m_axis_tdata_32_sp_1;
  input \m_axis_tdest[5]_0 ;
  input m_axis_tdata_33_sp_1;
  input m_axis_tdata_34_sp_1;
  input m_axis_tdata_35_sp_1;
  input m_axis_tdata_36_sp_1;
  input m_axis_tdata_37_sp_1;
  input m_axis_tdata_38_sp_1;
  input m_axis_tdata_39_sp_1;
  input m_axis_tdata_40_sp_1;
  input m_axis_tdata_41_sp_1;
  input m_axis_tdata_42_sp_1;
  input m_axis_tdata_43_sp_1;
  input m_axis_tdata_44_sp_1;
  input m_axis_tdata_45_sp_1;
  input m_axis_tdata_46_sp_1;
  input m_axis_tdata_47_sp_1;
  input m_axis_tdata_48_sp_1;
  input m_axis_tdata_49_sp_1;
  input m_axis_tdata_50_sp_1;
  input m_axis_tdata_51_sp_1;
  input m_axis_tdata_52_sp_1;
  input m_axis_tdata_53_sp_1;
  input m_axis_tdata_54_sp_1;
  input m_axis_tdata_55_sp_1;
  input m_axis_tdata_56_sp_1;
  input m_axis_tdata_57_sp_1;
  input m_axis_tdata_58_sp_1;
  input m_axis_tdata_59_sp_1;
  input m_axis_tdata_60_sp_1;
  input m_axis_tdata_61_sp_1;
  input m_axis_tdata_62_sp_1;
  input m_axis_tdata_63_sp_1;
  input m_axis_tkeep_4_sp_1;
  input m_axis_tkeep_5_sp_1;
  input m_axis_tkeep_6_sp_1;
  input m_axis_tkeep_7_sp_1;
  input m_axis_tlast_1_sp_1;
  input m_axis_tdest_3_sp_1;
  input m_axis_tdest_4_sp_1;
  input \m_axis_tdest[5]_1 ;
  input m_axis_tvalid_1_sp_1;
  input [25:0]Q;
  input [4:0]m_axis_tready;
  input m_axis_tdest_8_sp_1;
  input m_axis_tdata_64_sp_1;
  input \m_axis_tdest[8]_0 ;
  input m_axis_tdata_65_sp_1;
  input m_axis_tdata_66_sp_1;
  input m_axis_tdata_67_sp_1;
  input m_axis_tdata_68_sp_1;
  input m_axis_tdata_69_sp_1;
  input m_axis_tdata_70_sp_1;
  input m_axis_tdata_71_sp_1;
  input m_axis_tdata_72_sp_1;
  input m_axis_tdata_73_sp_1;
  input m_axis_tdata_74_sp_1;
  input m_axis_tdata_75_sp_1;
  input m_axis_tdata_76_sp_1;
  input m_axis_tdata_77_sp_1;
  input m_axis_tdata_78_sp_1;
  input m_axis_tdata_79_sp_1;
  input m_axis_tdata_80_sp_1;
  input m_axis_tdata_81_sp_1;
  input m_axis_tdata_82_sp_1;
  input m_axis_tdata_83_sp_1;
  input m_axis_tdata_84_sp_1;
  input m_axis_tdata_85_sp_1;
  input m_axis_tdata_86_sp_1;
  input m_axis_tdata_87_sp_1;
  input m_axis_tdata_88_sp_1;
  input m_axis_tdata_89_sp_1;
  input m_axis_tdata_90_sp_1;
  input m_axis_tdata_91_sp_1;
  input m_axis_tdata_92_sp_1;
  input m_axis_tdata_93_sp_1;
  input m_axis_tdata_94_sp_1;
  input m_axis_tdata_95_sp_1;
  input m_axis_tkeep_8_sp_1;
  input m_axis_tkeep_9_sp_1;
  input m_axis_tkeep_10_sp_1;
  input m_axis_tkeep_11_sp_1;
  input m_axis_tlast_2_sp_1;
  input m_axis_tdest_6_sp_1;
  input m_axis_tdest_7_sp_1;
  input \m_axis_tdest[8]_1 ;
  input m_axis_tvalid_2_sp_1;
  input m_axis_tdest_2_sp_1;
  input m_axis_tdata_0_sp_1;
  input \m_axis_tdest[2]_0 ;
  input m_axis_tdata_1_sp_1;
  input m_axis_tdata_2_sp_1;
  input m_axis_tdata_3_sp_1;
  input m_axis_tdata_4_sp_1;
  input m_axis_tdata_5_sp_1;
  input m_axis_tdata_6_sp_1;
  input m_axis_tdata_7_sp_1;
  input m_axis_tdata_8_sp_1;
  input m_axis_tdata_9_sp_1;
  input m_axis_tdata_10_sp_1;
  input m_axis_tdata_11_sp_1;
  input m_axis_tdata_12_sp_1;
  input m_axis_tdata_13_sp_1;
  input m_axis_tdata_14_sp_1;
  input m_axis_tdata_15_sp_1;
  input m_axis_tdata_16_sp_1;
  input m_axis_tdata_17_sp_1;
  input m_axis_tdata_18_sp_1;
  input m_axis_tdata_19_sp_1;
  input m_axis_tdata_20_sp_1;
  input m_axis_tdata_21_sp_1;
  input m_axis_tdata_22_sp_1;
  input m_axis_tdata_23_sp_1;
  input m_axis_tdata_24_sp_1;
  input m_axis_tdata_25_sp_1;
  input m_axis_tdata_26_sp_1;
  input m_axis_tdata_27_sp_1;
  input m_axis_tdata_28_sp_1;
  input m_axis_tdata_29_sp_1;
  input m_axis_tdata_30_sp_1;
  input m_axis_tdata_31_sp_1;
  input m_axis_tkeep_0_sp_1;
  input m_axis_tkeep_1_sp_1;
  input m_axis_tkeep_2_sp_1;
  input m_axis_tkeep_3_sp_1;
  input m_axis_tlast_0_sp_1;
  input m_axis_tdest_0_sp_1;
  input m_axis_tdest_1_sp_1;
  input \m_axis_tdest[2]_1 ;
  input m_axis_tvalid_0_sp_1;
  input m_axis_tdest_11_sp_1;
  input m_axis_tdata_96_sp_1;
  input \m_axis_tdest[11]_0 ;
  input m_axis_tdata_97_sp_1;
  input m_axis_tdata_98_sp_1;
  input m_axis_tdata_99_sp_1;
  input m_axis_tdata_100_sp_1;
  input m_axis_tdata_101_sp_1;
  input m_axis_tdata_102_sp_1;
  input m_axis_tdata_103_sp_1;
  input m_axis_tdata_104_sp_1;
  input m_axis_tdata_105_sp_1;
  input m_axis_tdata_106_sp_1;
  input m_axis_tdata_107_sp_1;
  input m_axis_tdata_108_sp_1;
  input m_axis_tdata_109_sp_1;
  input m_axis_tdata_110_sp_1;
  input m_axis_tdata_111_sp_1;
  input m_axis_tdata_112_sp_1;
  input m_axis_tdata_113_sp_1;
  input m_axis_tdata_114_sp_1;
  input m_axis_tdata_115_sp_1;
  input m_axis_tdata_116_sp_1;
  input m_axis_tdata_117_sp_1;
  input m_axis_tdata_118_sp_1;
  input m_axis_tdata_119_sp_1;
  input m_axis_tdata_120_sp_1;
  input m_axis_tdata_121_sp_1;
  input m_axis_tdata_122_sp_1;
  input m_axis_tdata_123_sp_1;
  input m_axis_tdata_124_sp_1;
  input m_axis_tdata_125_sp_1;
  input m_axis_tdata_126_sp_1;
  input m_axis_tdata_127_sp_1;
  input m_axis_tkeep_12_sp_1;
  input m_axis_tkeep_13_sp_1;
  input m_axis_tkeep_14_sp_1;
  input m_axis_tkeep_15_sp_1;
  input m_axis_tlast_3_sp_1;
  input m_axis_tdest_9_sp_1;
  input m_axis_tdest_10_sp_1;
  input \m_axis_tdest[11]_1 ;
  input m_axis_tvalid_3_sp_1;
  input m_axis_tdest_14_sp_1;
  input m_axis_tdata_128_sp_1;
  input \m_axis_tdest[14]_0 ;
  input m_axis_tdata_129_sp_1;
  input m_axis_tdata_130_sp_1;
  input m_axis_tdata_131_sp_1;
  input m_axis_tdata_132_sp_1;
  input m_axis_tdata_133_sp_1;
  input m_axis_tdata_134_sp_1;
  input m_axis_tdata_135_sp_1;
  input m_axis_tdata_136_sp_1;
  input m_axis_tdata_137_sp_1;
  input m_axis_tdata_138_sp_1;
  input m_axis_tdata_139_sp_1;
  input m_axis_tdata_140_sp_1;
  input m_axis_tdata_141_sp_1;
  input m_axis_tdata_142_sp_1;
  input m_axis_tdata_143_sp_1;
  input m_axis_tdata_144_sp_1;
  input m_axis_tdata_145_sp_1;
  input m_axis_tdata_146_sp_1;
  input m_axis_tdata_147_sp_1;
  input m_axis_tdata_148_sp_1;
  input m_axis_tdata_149_sp_1;
  input m_axis_tdata_150_sp_1;
  input m_axis_tdata_151_sp_1;
  input m_axis_tdata_152_sp_1;
  input m_axis_tdata_153_sp_1;
  input m_axis_tdata_154_sp_1;
  input m_axis_tdata_155_sp_1;
  input m_axis_tdata_156_sp_1;
  input m_axis_tdata_157_sp_1;
  input m_axis_tdata_158_sp_1;
  input m_axis_tdata_159_sp_1;
  input m_axis_tkeep_16_sp_1;
  input m_axis_tkeep_17_sp_1;
  input m_axis_tkeep_18_sp_1;
  input m_axis_tkeep_19_sp_1;
  input m_axis_tlast_4_sp_1;
  input m_axis_tdest_12_sp_1;
  input m_axis_tdest_13_sp_1;
  input \m_axis_tdest[14]_1 ;
  input m_axis_tvalid_4_sp_1;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [25:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [20:20]dec_tready;
  wire [39:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_1 ;
  wire [39:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_5_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_7_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_8__0_n_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_static_routing.tready_mux__3 ;
  wire [159:0]m_axis_tdata;
  wire m_axis_tdata_0_sn_1;
  wire m_axis_tdata_100_sn_1;
  wire m_axis_tdata_101_sn_1;
  wire m_axis_tdata_102_sn_1;
  wire m_axis_tdata_103_sn_1;
  wire m_axis_tdata_104_sn_1;
  wire m_axis_tdata_105_sn_1;
  wire m_axis_tdata_106_sn_1;
  wire m_axis_tdata_107_sn_1;
  wire m_axis_tdata_108_sn_1;
  wire m_axis_tdata_109_sn_1;
  wire m_axis_tdata_10_sn_1;
  wire m_axis_tdata_110_sn_1;
  wire m_axis_tdata_111_sn_1;
  wire m_axis_tdata_112_sn_1;
  wire m_axis_tdata_113_sn_1;
  wire m_axis_tdata_114_sn_1;
  wire m_axis_tdata_115_sn_1;
  wire m_axis_tdata_116_sn_1;
  wire m_axis_tdata_117_sn_1;
  wire m_axis_tdata_118_sn_1;
  wire m_axis_tdata_119_sn_1;
  wire m_axis_tdata_11_sn_1;
  wire m_axis_tdata_120_sn_1;
  wire m_axis_tdata_121_sn_1;
  wire m_axis_tdata_122_sn_1;
  wire m_axis_tdata_123_sn_1;
  wire m_axis_tdata_124_sn_1;
  wire m_axis_tdata_125_sn_1;
  wire m_axis_tdata_126_sn_1;
  wire m_axis_tdata_127_sn_1;
  wire m_axis_tdata_128_sn_1;
  wire m_axis_tdata_129_sn_1;
  wire m_axis_tdata_12_sn_1;
  wire m_axis_tdata_130_sn_1;
  wire m_axis_tdata_131_sn_1;
  wire m_axis_tdata_132_sn_1;
  wire m_axis_tdata_133_sn_1;
  wire m_axis_tdata_134_sn_1;
  wire m_axis_tdata_135_sn_1;
  wire m_axis_tdata_136_sn_1;
  wire m_axis_tdata_137_sn_1;
  wire m_axis_tdata_138_sn_1;
  wire m_axis_tdata_139_sn_1;
  wire m_axis_tdata_13_sn_1;
  wire m_axis_tdata_140_sn_1;
  wire m_axis_tdata_141_sn_1;
  wire m_axis_tdata_142_sn_1;
  wire m_axis_tdata_143_sn_1;
  wire m_axis_tdata_144_sn_1;
  wire m_axis_tdata_145_sn_1;
  wire m_axis_tdata_146_sn_1;
  wire m_axis_tdata_147_sn_1;
  wire m_axis_tdata_148_sn_1;
  wire m_axis_tdata_149_sn_1;
  wire m_axis_tdata_14_sn_1;
  wire m_axis_tdata_150_sn_1;
  wire m_axis_tdata_151_sn_1;
  wire m_axis_tdata_152_sn_1;
  wire m_axis_tdata_153_sn_1;
  wire m_axis_tdata_154_sn_1;
  wire m_axis_tdata_155_sn_1;
  wire m_axis_tdata_156_sn_1;
  wire m_axis_tdata_157_sn_1;
  wire m_axis_tdata_158_sn_1;
  wire m_axis_tdata_159_sn_1;
  wire m_axis_tdata_15_sn_1;
  wire m_axis_tdata_16_sn_1;
  wire m_axis_tdata_17_sn_1;
  wire m_axis_tdata_18_sn_1;
  wire m_axis_tdata_19_sn_1;
  wire m_axis_tdata_1_sn_1;
  wire m_axis_tdata_20_sn_1;
  wire m_axis_tdata_21_sn_1;
  wire m_axis_tdata_22_sn_1;
  wire m_axis_tdata_23_sn_1;
  wire m_axis_tdata_24_sn_1;
  wire m_axis_tdata_25_sn_1;
  wire m_axis_tdata_26_sn_1;
  wire m_axis_tdata_27_sn_1;
  wire m_axis_tdata_28_sn_1;
  wire m_axis_tdata_29_sn_1;
  wire m_axis_tdata_2_sn_1;
  wire m_axis_tdata_30_sn_1;
  wire m_axis_tdata_31_sn_1;
  wire m_axis_tdata_32_sn_1;
  wire m_axis_tdata_33_sn_1;
  wire m_axis_tdata_34_sn_1;
  wire m_axis_tdata_35_sn_1;
  wire m_axis_tdata_36_sn_1;
  wire m_axis_tdata_37_sn_1;
  wire m_axis_tdata_38_sn_1;
  wire m_axis_tdata_39_sn_1;
  wire m_axis_tdata_3_sn_1;
  wire m_axis_tdata_40_sn_1;
  wire m_axis_tdata_41_sn_1;
  wire m_axis_tdata_42_sn_1;
  wire m_axis_tdata_43_sn_1;
  wire m_axis_tdata_44_sn_1;
  wire m_axis_tdata_45_sn_1;
  wire m_axis_tdata_46_sn_1;
  wire m_axis_tdata_47_sn_1;
  wire m_axis_tdata_48_sn_1;
  wire m_axis_tdata_49_sn_1;
  wire m_axis_tdata_4_sn_1;
  wire m_axis_tdata_50_sn_1;
  wire m_axis_tdata_51_sn_1;
  wire m_axis_tdata_52_sn_1;
  wire m_axis_tdata_53_sn_1;
  wire m_axis_tdata_54_sn_1;
  wire m_axis_tdata_55_sn_1;
  wire m_axis_tdata_56_sn_1;
  wire m_axis_tdata_57_sn_1;
  wire m_axis_tdata_58_sn_1;
  wire m_axis_tdata_59_sn_1;
  wire m_axis_tdata_5_sn_1;
  wire m_axis_tdata_60_sn_1;
  wire m_axis_tdata_61_sn_1;
  wire m_axis_tdata_62_sn_1;
  wire m_axis_tdata_63_sn_1;
  wire m_axis_tdata_64_sn_1;
  wire m_axis_tdata_65_sn_1;
  wire m_axis_tdata_66_sn_1;
  wire m_axis_tdata_67_sn_1;
  wire m_axis_tdata_68_sn_1;
  wire m_axis_tdata_69_sn_1;
  wire m_axis_tdata_6_sn_1;
  wire m_axis_tdata_70_sn_1;
  wire m_axis_tdata_71_sn_1;
  wire m_axis_tdata_72_sn_1;
  wire m_axis_tdata_73_sn_1;
  wire m_axis_tdata_74_sn_1;
  wire m_axis_tdata_75_sn_1;
  wire m_axis_tdata_76_sn_1;
  wire m_axis_tdata_77_sn_1;
  wire m_axis_tdata_78_sn_1;
  wire m_axis_tdata_79_sn_1;
  wire m_axis_tdata_7_sn_1;
  wire m_axis_tdata_80_sn_1;
  wire m_axis_tdata_81_sn_1;
  wire m_axis_tdata_82_sn_1;
  wire m_axis_tdata_83_sn_1;
  wire m_axis_tdata_84_sn_1;
  wire m_axis_tdata_85_sn_1;
  wire m_axis_tdata_86_sn_1;
  wire m_axis_tdata_87_sn_1;
  wire m_axis_tdata_88_sn_1;
  wire m_axis_tdata_89_sn_1;
  wire m_axis_tdata_8_sn_1;
  wire m_axis_tdata_90_sn_1;
  wire m_axis_tdata_91_sn_1;
  wire m_axis_tdata_92_sn_1;
  wire m_axis_tdata_93_sn_1;
  wire m_axis_tdata_94_sn_1;
  wire m_axis_tdata_95_sn_1;
  wire m_axis_tdata_96_sn_1;
  wire m_axis_tdata_97_sn_1;
  wire m_axis_tdata_98_sn_1;
  wire m_axis_tdata_99_sn_1;
  wire m_axis_tdata_9_sn_1;
  wire [14:0]m_axis_tdest;
  wire \m_axis_tdest[11]_0 ;
  wire \m_axis_tdest[11]_1 ;
  wire \m_axis_tdest[14]_0 ;
  wire \m_axis_tdest[14]_1 ;
  wire \m_axis_tdest[2]_0 ;
  wire \m_axis_tdest[2]_1 ;
  wire \m_axis_tdest[5]_0 ;
  wire \m_axis_tdest[5]_1 ;
  wire \m_axis_tdest[8]_0 ;
  wire \m_axis_tdest[8]_1 ;
  wire m_axis_tdest_0_sn_1;
  wire m_axis_tdest_10_sn_1;
  wire m_axis_tdest_11_sn_1;
  wire m_axis_tdest_12_sn_1;
  wire m_axis_tdest_13_sn_1;
  wire m_axis_tdest_14_sn_1;
  wire m_axis_tdest_1_sn_1;
  wire m_axis_tdest_2_sn_1;
  wire m_axis_tdest_3_sn_1;
  wire m_axis_tdest_4_sn_1;
  wire m_axis_tdest_5_sn_1;
  wire m_axis_tdest_6_sn_1;
  wire m_axis_tdest_7_sn_1;
  wire m_axis_tdest_8_sn_1;
  wire m_axis_tdest_9_sn_1;
  wire [19:0]m_axis_tkeep;
  wire m_axis_tkeep_0_sn_1;
  wire m_axis_tkeep_10_sn_1;
  wire m_axis_tkeep_11_sn_1;
  wire m_axis_tkeep_12_sn_1;
  wire m_axis_tkeep_13_sn_1;
  wire m_axis_tkeep_14_sn_1;
  wire m_axis_tkeep_15_sn_1;
  wire m_axis_tkeep_16_sn_1;
  wire m_axis_tkeep_17_sn_1;
  wire m_axis_tkeep_18_sn_1;
  wire m_axis_tkeep_19_sn_1;
  wire m_axis_tkeep_1_sn_1;
  wire m_axis_tkeep_2_sn_1;
  wire m_axis_tkeep_3_sn_1;
  wire m_axis_tkeep_4_sn_1;
  wire m_axis_tkeep_5_sn_1;
  wire m_axis_tkeep_6_sn_1;
  wire m_axis_tkeep_7_sn_1;
  wire m_axis_tkeep_8_sn_1;
  wire m_axis_tkeep_9_sn_1;
  wire [4:0]m_axis_tlast;
  wire m_axis_tlast_0_sn_1;
  wire m_axis_tlast_1_sn_1;
  wire m_axis_tlast_2_sn_1;
  wire m_axis_tlast_3_sn_1;
  wire m_axis_tlast_4_sn_1;
  wire [4:0]m_axis_tready;
  wire [4:0]m_axis_tvalid;
  wire m_axis_tvalid_0_sn_1;
  wire m_axis_tvalid_1_sn_1;
  wire m_axis_tvalid_2_sn_1;
  wire m_axis_tvalid_3_sn_1;
  wire m_axis_tvalid_4_sn_1;
  wire [4:4]mux_tvalid;
  wire [0:0]s_axis_tvalid;

  assign m_axis_tdata_0_sn_1 = m_axis_tdata_0_sp_1;
  assign m_axis_tdata_100_sn_1 = m_axis_tdata_100_sp_1;
  assign m_axis_tdata_101_sn_1 = m_axis_tdata_101_sp_1;
  assign m_axis_tdata_102_sn_1 = m_axis_tdata_102_sp_1;
  assign m_axis_tdata_103_sn_1 = m_axis_tdata_103_sp_1;
  assign m_axis_tdata_104_sn_1 = m_axis_tdata_104_sp_1;
  assign m_axis_tdata_105_sn_1 = m_axis_tdata_105_sp_1;
  assign m_axis_tdata_106_sn_1 = m_axis_tdata_106_sp_1;
  assign m_axis_tdata_107_sn_1 = m_axis_tdata_107_sp_1;
  assign m_axis_tdata_108_sn_1 = m_axis_tdata_108_sp_1;
  assign m_axis_tdata_109_sn_1 = m_axis_tdata_109_sp_1;
  assign m_axis_tdata_10_sn_1 = m_axis_tdata_10_sp_1;
  assign m_axis_tdata_110_sn_1 = m_axis_tdata_110_sp_1;
  assign m_axis_tdata_111_sn_1 = m_axis_tdata_111_sp_1;
  assign m_axis_tdata_112_sn_1 = m_axis_tdata_112_sp_1;
  assign m_axis_tdata_113_sn_1 = m_axis_tdata_113_sp_1;
  assign m_axis_tdata_114_sn_1 = m_axis_tdata_114_sp_1;
  assign m_axis_tdata_115_sn_1 = m_axis_tdata_115_sp_1;
  assign m_axis_tdata_116_sn_1 = m_axis_tdata_116_sp_1;
  assign m_axis_tdata_117_sn_1 = m_axis_tdata_117_sp_1;
  assign m_axis_tdata_118_sn_1 = m_axis_tdata_118_sp_1;
  assign m_axis_tdata_119_sn_1 = m_axis_tdata_119_sp_1;
  assign m_axis_tdata_11_sn_1 = m_axis_tdata_11_sp_1;
  assign m_axis_tdata_120_sn_1 = m_axis_tdata_120_sp_1;
  assign m_axis_tdata_121_sn_1 = m_axis_tdata_121_sp_1;
  assign m_axis_tdata_122_sn_1 = m_axis_tdata_122_sp_1;
  assign m_axis_tdata_123_sn_1 = m_axis_tdata_123_sp_1;
  assign m_axis_tdata_124_sn_1 = m_axis_tdata_124_sp_1;
  assign m_axis_tdata_125_sn_1 = m_axis_tdata_125_sp_1;
  assign m_axis_tdata_126_sn_1 = m_axis_tdata_126_sp_1;
  assign m_axis_tdata_127_sn_1 = m_axis_tdata_127_sp_1;
  assign m_axis_tdata_128_sn_1 = m_axis_tdata_128_sp_1;
  assign m_axis_tdata_129_sn_1 = m_axis_tdata_129_sp_1;
  assign m_axis_tdata_12_sn_1 = m_axis_tdata_12_sp_1;
  assign m_axis_tdata_130_sn_1 = m_axis_tdata_130_sp_1;
  assign m_axis_tdata_131_sn_1 = m_axis_tdata_131_sp_1;
  assign m_axis_tdata_132_sn_1 = m_axis_tdata_132_sp_1;
  assign m_axis_tdata_133_sn_1 = m_axis_tdata_133_sp_1;
  assign m_axis_tdata_134_sn_1 = m_axis_tdata_134_sp_1;
  assign m_axis_tdata_135_sn_1 = m_axis_tdata_135_sp_1;
  assign m_axis_tdata_136_sn_1 = m_axis_tdata_136_sp_1;
  assign m_axis_tdata_137_sn_1 = m_axis_tdata_137_sp_1;
  assign m_axis_tdata_138_sn_1 = m_axis_tdata_138_sp_1;
  assign m_axis_tdata_139_sn_1 = m_axis_tdata_139_sp_1;
  assign m_axis_tdata_13_sn_1 = m_axis_tdata_13_sp_1;
  assign m_axis_tdata_140_sn_1 = m_axis_tdata_140_sp_1;
  assign m_axis_tdata_141_sn_1 = m_axis_tdata_141_sp_1;
  assign m_axis_tdata_142_sn_1 = m_axis_tdata_142_sp_1;
  assign m_axis_tdata_143_sn_1 = m_axis_tdata_143_sp_1;
  assign m_axis_tdata_144_sn_1 = m_axis_tdata_144_sp_1;
  assign m_axis_tdata_145_sn_1 = m_axis_tdata_145_sp_1;
  assign m_axis_tdata_146_sn_1 = m_axis_tdata_146_sp_1;
  assign m_axis_tdata_147_sn_1 = m_axis_tdata_147_sp_1;
  assign m_axis_tdata_148_sn_1 = m_axis_tdata_148_sp_1;
  assign m_axis_tdata_149_sn_1 = m_axis_tdata_149_sp_1;
  assign m_axis_tdata_14_sn_1 = m_axis_tdata_14_sp_1;
  assign m_axis_tdata_150_sn_1 = m_axis_tdata_150_sp_1;
  assign m_axis_tdata_151_sn_1 = m_axis_tdata_151_sp_1;
  assign m_axis_tdata_152_sn_1 = m_axis_tdata_152_sp_1;
  assign m_axis_tdata_153_sn_1 = m_axis_tdata_153_sp_1;
  assign m_axis_tdata_154_sn_1 = m_axis_tdata_154_sp_1;
  assign m_axis_tdata_155_sn_1 = m_axis_tdata_155_sp_1;
  assign m_axis_tdata_156_sn_1 = m_axis_tdata_156_sp_1;
  assign m_axis_tdata_157_sn_1 = m_axis_tdata_157_sp_1;
  assign m_axis_tdata_158_sn_1 = m_axis_tdata_158_sp_1;
  assign m_axis_tdata_159_sn_1 = m_axis_tdata_159_sp_1;
  assign m_axis_tdata_15_sn_1 = m_axis_tdata_15_sp_1;
  assign m_axis_tdata_16_sn_1 = m_axis_tdata_16_sp_1;
  assign m_axis_tdata_17_sn_1 = m_axis_tdata_17_sp_1;
  assign m_axis_tdata_18_sn_1 = m_axis_tdata_18_sp_1;
  assign m_axis_tdata_19_sn_1 = m_axis_tdata_19_sp_1;
  assign m_axis_tdata_1_sn_1 = m_axis_tdata_1_sp_1;
  assign m_axis_tdata_20_sn_1 = m_axis_tdata_20_sp_1;
  assign m_axis_tdata_21_sn_1 = m_axis_tdata_21_sp_1;
  assign m_axis_tdata_22_sn_1 = m_axis_tdata_22_sp_1;
  assign m_axis_tdata_23_sn_1 = m_axis_tdata_23_sp_1;
  assign m_axis_tdata_24_sn_1 = m_axis_tdata_24_sp_1;
  assign m_axis_tdata_25_sn_1 = m_axis_tdata_25_sp_1;
  assign m_axis_tdata_26_sn_1 = m_axis_tdata_26_sp_1;
  assign m_axis_tdata_27_sn_1 = m_axis_tdata_27_sp_1;
  assign m_axis_tdata_28_sn_1 = m_axis_tdata_28_sp_1;
  assign m_axis_tdata_29_sn_1 = m_axis_tdata_29_sp_1;
  assign m_axis_tdata_2_sn_1 = m_axis_tdata_2_sp_1;
  assign m_axis_tdata_30_sn_1 = m_axis_tdata_30_sp_1;
  assign m_axis_tdata_31_sn_1 = m_axis_tdata_31_sp_1;
  assign m_axis_tdata_32_sn_1 = m_axis_tdata_32_sp_1;
  assign m_axis_tdata_33_sn_1 = m_axis_tdata_33_sp_1;
  assign m_axis_tdata_34_sn_1 = m_axis_tdata_34_sp_1;
  assign m_axis_tdata_35_sn_1 = m_axis_tdata_35_sp_1;
  assign m_axis_tdata_36_sn_1 = m_axis_tdata_36_sp_1;
  assign m_axis_tdata_37_sn_1 = m_axis_tdata_37_sp_1;
  assign m_axis_tdata_38_sn_1 = m_axis_tdata_38_sp_1;
  assign m_axis_tdata_39_sn_1 = m_axis_tdata_39_sp_1;
  assign m_axis_tdata_3_sn_1 = m_axis_tdata_3_sp_1;
  assign m_axis_tdata_40_sn_1 = m_axis_tdata_40_sp_1;
  assign m_axis_tdata_41_sn_1 = m_axis_tdata_41_sp_1;
  assign m_axis_tdata_42_sn_1 = m_axis_tdata_42_sp_1;
  assign m_axis_tdata_43_sn_1 = m_axis_tdata_43_sp_1;
  assign m_axis_tdata_44_sn_1 = m_axis_tdata_44_sp_1;
  assign m_axis_tdata_45_sn_1 = m_axis_tdata_45_sp_1;
  assign m_axis_tdata_46_sn_1 = m_axis_tdata_46_sp_1;
  assign m_axis_tdata_47_sn_1 = m_axis_tdata_47_sp_1;
  assign m_axis_tdata_48_sn_1 = m_axis_tdata_48_sp_1;
  assign m_axis_tdata_49_sn_1 = m_axis_tdata_49_sp_1;
  assign m_axis_tdata_4_sn_1 = m_axis_tdata_4_sp_1;
  assign m_axis_tdata_50_sn_1 = m_axis_tdata_50_sp_1;
  assign m_axis_tdata_51_sn_1 = m_axis_tdata_51_sp_1;
  assign m_axis_tdata_52_sn_1 = m_axis_tdata_52_sp_1;
  assign m_axis_tdata_53_sn_1 = m_axis_tdata_53_sp_1;
  assign m_axis_tdata_54_sn_1 = m_axis_tdata_54_sp_1;
  assign m_axis_tdata_55_sn_1 = m_axis_tdata_55_sp_1;
  assign m_axis_tdata_56_sn_1 = m_axis_tdata_56_sp_1;
  assign m_axis_tdata_57_sn_1 = m_axis_tdata_57_sp_1;
  assign m_axis_tdata_58_sn_1 = m_axis_tdata_58_sp_1;
  assign m_axis_tdata_59_sn_1 = m_axis_tdata_59_sp_1;
  assign m_axis_tdata_5_sn_1 = m_axis_tdata_5_sp_1;
  assign m_axis_tdata_60_sn_1 = m_axis_tdata_60_sp_1;
  assign m_axis_tdata_61_sn_1 = m_axis_tdata_61_sp_1;
  assign m_axis_tdata_62_sn_1 = m_axis_tdata_62_sp_1;
  assign m_axis_tdata_63_sn_1 = m_axis_tdata_63_sp_1;
  assign m_axis_tdata_64_sn_1 = m_axis_tdata_64_sp_1;
  assign m_axis_tdata_65_sn_1 = m_axis_tdata_65_sp_1;
  assign m_axis_tdata_66_sn_1 = m_axis_tdata_66_sp_1;
  assign m_axis_tdata_67_sn_1 = m_axis_tdata_67_sp_1;
  assign m_axis_tdata_68_sn_1 = m_axis_tdata_68_sp_1;
  assign m_axis_tdata_69_sn_1 = m_axis_tdata_69_sp_1;
  assign m_axis_tdata_6_sn_1 = m_axis_tdata_6_sp_1;
  assign m_axis_tdata_70_sn_1 = m_axis_tdata_70_sp_1;
  assign m_axis_tdata_71_sn_1 = m_axis_tdata_71_sp_1;
  assign m_axis_tdata_72_sn_1 = m_axis_tdata_72_sp_1;
  assign m_axis_tdata_73_sn_1 = m_axis_tdata_73_sp_1;
  assign m_axis_tdata_74_sn_1 = m_axis_tdata_74_sp_1;
  assign m_axis_tdata_75_sn_1 = m_axis_tdata_75_sp_1;
  assign m_axis_tdata_76_sn_1 = m_axis_tdata_76_sp_1;
  assign m_axis_tdata_77_sn_1 = m_axis_tdata_77_sp_1;
  assign m_axis_tdata_78_sn_1 = m_axis_tdata_78_sp_1;
  assign m_axis_tdata_79_sn_1 = m_axis_tdata_79_sp_1;
  assign m_axis_tdata_7_sn_1 = m_axis_tdata_7_sp_1;
  assign m_axis_tdata_80_sn_1 = m_axis_tdata_80_sp_1;
  assign m_axis_tdata_81_sn_1 = m_axis_tdata_81_sp_1;
  assign m_axis_tdata_82_sn_1 = m_axis_tdata_82_sp_1;
  assign m_axis_tdata_83_sn_1 = m_axis_tdata_83_sp_1;
  assign m_axis_tdata_84_sn_1 = m_axis_tdata_84_sp_1;
  assign m_axis_tdata_85_sn_1 = m_axis_tdata_85_sp_1;
  assign m_axis_tdata_86_sn_1 = m_axis_tdata_86_sp_1;
  assign m_axis_tdata_87_sn_1 = m_axis_tdata_87_sp_1;
  assign m_axis_tdata_88_sn_1 = m_axis_tdata_88_sp_1;
  assign m_axis_tdata_89_sn_1 = m_axis_tdata_89_sp_1;
  assign m_axis_tdata_8_sn_1 = m_axis_tdata_8_sp_1;
  assign m_axis_tdata_90_sn_1 = m_axis_tdata_90_sp_1;
  assign m_axis_tdata_91_sn_1 = m_axis_tdata_91_sp_1;
  assign m_axis_tdata_92_sn_1 = m_axis_tdata_92_sp_1;
  assign m_axis_tdata_93_sn_1 = m_axis_tdata_93_sp_1;
  assign m_axis_tdata_94_sn_1 = m_axis_tdata_94_sp_1;
  assign m_axis_tdata_95_sn_1 = m_axis_tdata_95_sp_1;
  assign m_axis_tdata_96_sn_1 = m_axis_tdata_96_sp_1;
  assign m_axis_tdata_97_sn_1 = m_axis_tdata_97_sp_1;
  assign m_axis_tdata_98_sn_1 = m_axis_tdata_98_sp_1;
  assign m_axis_tdata_99_sn_1 = m_axis_tdata_99_sp_1;
  assign m_axis_tdata_9_sn_1 = m_axis_tdata_9_sp_1;
  assign m_axis_tdest_0_sn_1 = m_axis_tdest_0_sp_1;
  assign m_axis_tdest_10_sn_1 = m_axis_tdest_10_sp_1;
  assign m_axis_tdest_11_sn_1 = m_axis_tdest_11_sp_1;
  assign m_axis_tdest_12_sn_1 = m_axis_tdest_12_sp_1;
  assign m_axis_tdest_13_sn_1 = m_axis_tdest_13_sp_1;
  assign m_axis_tdest_14_sn_1 = m_axis_tdest_14_sp_1;
  assign m_axis_tdest_1_sn_1 = m_axis_tdest_1_sp_1;
  assign m_axis_tdest_2_sn_1 = m_axis_tdest_2_sp_1;
  assign m_axis_tdest_3_sn_1 = m_axis_tdest_3_sp_1;
  assign m_axis_tdest_4_sn_1 = m_axis_tdest_4_sp_1;
  assign m_axis_tdest_5_sn_1 = m_axis_tdest_5_sp_1;
  assign m_axis_tdest_6_sn_1 = m_axis_tdest_6_sp_1;
  assign m_axis_tdest_7_sn_1 = m_axis_tdest_7_sp_1;
  assign m_axis_tdest_8_sn_1 = m_axis_tdest_8_sp_1;
  assign m_axis_tdest_9_sn_1 = m_axis_tdest_9_sp_1;
  assign m_axis_tkeep_0_sn_1 = m_axis_tkeep_0_sp_1;
  assign m_axis_tkeep_10_sn_1 = m_axis_tkeep_10_sp_1;
  assign m_axis_tkeep_11_sn_1 = m_axis_tkeep_11_sp_1;
  assign m_axis_tkeep_12_sn_1 = m_axis_tkeep_12_sp_1;
  assign m_axis_tkeep_13_sn_1 = m_axis_tkeep_13_sp_1;
  assign m_axis_tkeep_14_sn_1 = m_axis_tkeep_14_sp_1;
  assign m_axis_tkeep_15_sn_1 = m_axis_tkeep_15_sp_1;
  assign m_axis_tkeep_16_sn_1 = m_axis_tkeep_16_sp_1;
  assign m_axis_tkeep_17_sn_1 = m_axis_tkeep_17_sp_1;
  assign m_axis_tkeep_18_sn_1 = m_axis_tkeep_18_sp_1;
  assign m_axis_tkeep_19_sn_1 = m_axis_tkeep_19_sp_1;
  assign m_axis_tkeep_1_sn_1 = m_axis_tkeep_1_sp_1;
  assign m_axis_tkeep_2_sn_1 = m_axis_tkeep_2_sp_1;
  assign m_axis_tkeep_3_sn_1 = m_axis_tkeep_3_sp_1;
  assign m_axis_tkeep_4_sn_1 = m_axis_tkeep_4_sp_1;
  assign m_axis_tkeep_5_sn_1 = m_axis_tkeep_5_sp_1;
  assign m_axis_tkeep_6_sn_1 = m_axis_tkeep_6_sp_1;
  assign m_axis_tkeep_7_sn_1 = m_axis_tkeep_7_sp_1;
  assign m_axis_tkeep_8_sn_1 = m_axis_tkeep_8_sp_1;
  assign m_axis_tkeep_9_sn_1 = m_axis_tkeep_9_sp_1;
  assign m_axis_tlast_0_sn_1 = m_axis_tlast_0_sp_1;
  assign m_axis_tlast_1_sn_1 = m_axis_tlast_1_sp_1;
  assign m_axis_tlast_2_sn_1 = m_axis_tlast_2_sp_1;
  assign m_axis_tlast_3_sn_1 = m_axis_tlast_3_sp_1;
  assign m_axis_tlast_4_sn_1 = m_axis_tlast_4_sp_1;
  assign m_axis_tvalid_0_sn_1 = m_axis_tvalid_0_sp_1;
  assign m_axis_tvalid_1_sn_1 = m_axis_tvalid_1_sp_1;
  assign m_axis_tvalid_2_sn_1 = m_axis_tvalid_2_sp_1;
  assign m_axis_tvalid_3_sn_1 = m_axis_tvalid_3_sp_1;
  assign m_axis_tvalid_4_sn_1 = m_axis_tvalid_4_sp_1;
  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[39]_i_1__3 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a_1 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[39]_i_1__3 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_b [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_b [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_b [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_b [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_b [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_b [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_b [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_b [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_b [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_b [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_b [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_b [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_b [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_b [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1 
       (.I0(\gen_static_routing.tready_mux__3 ),
        .I1(mux_tvalid),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__3 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(aclken),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__3_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1__3 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__3 
       (.I0(areset_r),
        .I1(Q[25]),
        .O(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2__3 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \gen_AB_reg_slice.state[1]_i_3 
       (.I0(\gen_AB_reg_slice.state[1]_i_4_n_0 ),
        .I1(\gen_AB_reg_slice.state[1]_i_5_n_0 ),
        .I2(dec_tready),
        .I3(\gen_AB_reg_slice.state[1]_i_7_n_0 ),
        .I4(\gen_AB_reg_slice.state[1]_i_8__0_n_0 ),
        .O(\gen_static_routing.tready_mux__3 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \gen_AB_reg_slice.state[1]_i_4 
       (.I0(Q[18]),
        .I1(Q[16]),
        .I2(Q[17]),
        .I3(Q[19]),
        .I4(Q[24]),
        .I5(m_axis_tready[4]),
        .O(\gen_AB_reg_slice.state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \gen_AB_reg_slice.state[1]_i_5 
       (.I0(Q[14]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(Q[15]),
        .I4(Q[23]),
        .I5(m_axis_tready[3]),
        .O(\gen_AB_reg_slice.state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \gen_AB_reg_slice.state[1]_i_6 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[20]),
        .I5(m_axis_tready[0]),
        .O(dec_tready));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \gen_AB_reg_slice.state[1]_i_7 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[21]),
        .I5(m_axis_tready[1]),
        .O(\gen_AB_reg_slice.state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \gen_AB_reg_slice.state[1]_i_8__0 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[11]),
        .I4(Q[22]),
        .I5(m_axis_tready[2]),
        .O(\gen_AB_reg_slice.state[1]_i_8__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__3_n_0 ),
        .Q(mux_tvalid),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__3_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_0_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_100_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[100]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_101_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[101]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_102_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[102]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_103_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[103]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_104_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[104]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_105_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[105]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_106_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[106]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_107_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[107]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_108_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[108]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_109_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[109]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_10_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_110_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[110]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_111_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[111]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_112_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[112]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_113_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[113]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_114_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[114]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_115_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[115]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_116_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[116]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_117_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[117]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_118_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[118]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_119_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[119]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_11_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_120_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[120]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_121_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[121]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_122_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[122]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_123_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[123]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_124_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[124]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_125_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[125]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_126_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[126]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_127_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[127]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_128_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[128]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[129]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_129_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[129]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_12_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[130]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_130_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[130]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[131]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_131_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[131]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[132]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_132_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[132]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[133]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_133_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[133]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[134]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_134_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[134]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[135]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_135_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[135]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[136]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_136_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[136]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[137]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_137_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[137]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[138]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_138_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[138]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[139]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_139_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[139]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_13_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[140]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_140_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[140]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[141]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_141_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[141]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[142]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_142_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[142]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[143]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_143_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[143]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_144_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[144]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[145]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_145_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[145]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[146]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_146_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[146]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[147]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_147_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[147]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[148]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_148_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[148]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[149]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_149_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[149]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_14_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[150]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_150_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[150]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[151]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_151_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[151]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[152]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_152_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[152]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[153]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_153_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[153]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[154]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_154_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[154]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[155]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_155_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[155]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[156]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_156_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[156]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[157]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_157_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[157]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[158]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_158_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[158]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[159]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdata_159_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdata[159]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_15_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_16_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_17_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_18_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[18]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_19_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[19]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_1_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_20_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_21_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[21]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_22_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_23_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[23]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_24_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[24]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_25_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[25]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_26_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[26]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_27_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[27]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_28_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[28]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_29_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[29]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_2_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_30_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_31_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[31]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_32_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[32]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_33_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[33]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_34_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[34]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_35_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[35]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_36_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[36]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_37_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[37]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_38_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[38]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_39_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[39]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_3_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_40_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[40]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_41_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[41]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_42_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[42]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_43_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[43]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_44_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[44]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_45_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[45]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_46_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[46]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_47_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[47]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_48_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[48]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_49_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[49]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_4_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_50_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[50]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_51_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[51]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_52_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[52]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_53_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[53]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_54_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[54]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_55_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[55]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_56_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[56]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_57_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[57]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_58_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[58]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_59_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[59]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_5_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_60_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[60]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_61_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[61]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_62_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[62]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdata_63_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdata[63]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_64_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[64]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_65_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[65]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_66_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[66]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_67_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[67]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_68_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[68]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_69_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[69]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_6_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_70_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[70]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_71_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[71]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_72_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[72]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_73_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[73]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_74_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[74]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_75_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[75]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_76_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[76]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_77_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[77]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_78_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[78]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_79_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[79]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_7_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_80_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[80]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_81_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[81]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_82_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[82]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_83_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[83]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_84_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[84]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_85_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[85]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_86_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[86]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_87_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[87]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_88_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[88]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_89_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[89]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_8_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_90_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[90]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_91_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[91]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_92_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[92]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_93_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[93]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_94_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[94]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdata_95_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdata[95]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_96_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[96]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_97_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[97]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_98_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[98]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdata_99_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdata[99]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdata_9_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdest_0_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdest[0]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdest_10_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdest[10]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(\m_axis_tdest[11]_1 ),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdest[11]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[12]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdest_12_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdest[12]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[13]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tdest_13_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdest[13]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[14]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(\m_axis_tdest[14]_1 ),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tdest[14]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tdest_1_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdest[1]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(\m_axis_tdest[2]_1 ),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tdest[2]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdest_3_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdest[3]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tdest_4_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdest[4]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(\m_axis_tdest[5]_1 ),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tdest[5]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdest_6_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdest[6]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tdest_7_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdest[7]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(\m_axis_tdest[8]_1 ),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tdest[8]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tdest[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tdest_9_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tdest[9]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tkeep_0_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tkeep[0]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[10]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tkeep_10_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tkeep[10]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[11]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tkeep_11_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tkeep[11]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[12]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tkeep_12_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tkeep[12]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[13]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tkeep_13_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tkeep[13]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[14]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tkeep_14_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tkeep[14]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[15]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tkeep_15_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tkeep[15]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[16]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tkeep_16_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tkeep[16]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[17]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tkeep_17_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tkeep[17]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[18]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tkeep_18_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tkeep[18]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[19]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tkeep_19_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tkeep[19]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tkeep_1_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tkeep[1]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tkeep_2_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tkeep[2]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tkeep_3_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tkeep[3]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tkeep_4_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tkeep[4]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[5]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tkeep_5_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tkeep[5]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[6]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tkeep_6_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tkeep[6]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[7]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tkeep_7_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tkeep[7]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[8]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tkeep_8_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tkeep[8]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tkeep[9]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tkeep_9_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tkeep[9]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .I3(m_axis_tdest_2_sn_1),
        .I4(m_axis_tlast_0_sn_1),
        .I5(\m_axis_tdest[2]_0 ),
        .O(m_axis_tlast[0]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tlast[1]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .I3(m_axis_tdest_5_sn_1),
        .I4(m_axis_tlast_1_sn_1),
        .I5(\m_axis_tdest[5]_0 ),
        .O(m_axis_tlast[1]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tlast[2]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .I3(m_axis_tdest_8_sn_1),
        .I4(m_axis_tlast_2_sn_1),
        .I5(\m_axis_tdest[8]_0 ),
        .O(m_axis_tlast[2]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tlast[3]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .I3(m_axis_tdest_11_sn_1),
        .I4(m_axis_tlast_3_sn_1),
        .I5(\m_axis_tdest[11]_0 ),
        .O(m_axis_tlast[3]));
  LUT6 #(
    .INIT(64'hFFFFB800B800B800)) 
    \m_axis_tlast[4]_INST_0 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .I3(m_axis_tdest_14_sn_1),
        .I4(m_axis_tlast_4_sn_1),
        .I5(\m_axis_tdest[14]_0 ),
        .O(m_axis_tlast[4]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(mux_tvalid),
        .I1(m_axis_tvalid_0_sn_1),
        .I2(Q[20]),
        .I3(Q[2]),
        .O(m_axis_tvalid[0]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(mux_tvalid),
        .I1(m_axis_tvalid_1_sn_1),
        .I2(Q[21]),
        .I3(Q[6]),
        .O(m_axis_tvalid[1]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \m_axis_tvalid[2]_INST_0 
       (.I0(mux_tvalid),
        .I1(m_axis_tvalid_2_sn_1),
        .I2(Q[22]),
        .I3(Q[10]),
        .O(m_axis_tvalid[2]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \m_axis_tvalid[3]_INST_0 
       (.I0(mux_tvalid),
        .I1(m_axis_tvalid_3_sn_1),
        .I2(Q[23]),
        .I3(Q[14]),
        .O(m_axis_tvalid[3]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \m_axis_tvalid[4]_INST_0 
       (.I0(mux_tvalid),
        .I1(m_axis_tvalid_4_sn_1),
        .I2(Q[24]),
        .I3(Q[18]),
        .O(m_axis_tvalid[4]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_18_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_4
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    p_7_out,
    aclk,
    \gen_AB_reg_slice.sel_rd_reg_0 ,
    Q,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output [39:0]p_7_out;
  input aclk;
  input \gen_AB_reg_slice.sel_rd_reg_0 ;
  input [22:0]Q;
  input [3:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [22:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [39:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_1 ;
  wire [39:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_5__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_7__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_8_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_9_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_static_routing.tready_mux__3 ;
  wire [3:0]m_axis_tready;
  wire [39:0]p_7_out;
  wire [0:0]s_axis_tvalid;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[39]_i_1__2 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a_1 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[39]_i_1__2 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_b [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_b [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_b [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_b [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_b [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_b [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_b [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_b [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_b [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_b [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_b [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_b [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_b [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_b [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__1 
       (.I0(\gen_static_routing.tready_mux__3 ),
        .I1(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__2 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(aclken),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__2_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1__2 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__2 
       (.I0(areset_r),
        .I1(Q[22]),
        .O(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2__2 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \gen_AB_reg_slice.state[1]_i_3__1 
       (.I0(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ),
        .I1(\gen_AB_reg_slice.state[1]_i_5__1_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_reg_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_7__3_n_0 ),
        .I4(\gen_AB_reg_slice.state[1]_i_8_n_0 ),
        .I5(\gen_AB_reg_slice.state[1]_i_9_n_0 ),
        .O(\gen_static_routing.tready_mux__3 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__1 
       (.I0(Q[16]),
        .I1(m_axis_tready[3]),
        .I2(Q[21]),
        .I3(Q[17]),
        .I4(Q[15]),
        .I5(Q[14]),
        .O(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \gen_AB_reg_slice.state[1]_i_5__1 
       (.I0(Q[12]),
        .I1(m_axis_tready[2]),
        .I2(Q[20]),
        .I3(Q[13]),
        .I4(Q[11]),
        .I5(Q[10]),
        .O(\gen_AB_reg_slice.state[1]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_AB_reg_slice.state[1]_i_7__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gen_AB_reg_slice.state[1]_i_7__3_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \gen_AB_reg_slice.state[1]_i_8 
       (.I0(Q[4]),
        .I1(m_axis_tready[0]),
        .I2(Q[18]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\gen_AB_reg_slice.state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \gen_AB_reg_slice.state[1]_i_9 
       (.I0(Q[8]),
        .I1(m_axis_tready[1]),
        .I2(Q[19]),
        .I3(Q[9]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(\gen_AB_reg_slice.state[1]_i_9_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__2_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[0]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__2_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[128]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .O(p_7_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[129]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .O(p_7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[130]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .O(p_7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[131]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .O(p_7_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[132]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .O(p_7_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[133]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .O(p_7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[134]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .O(p_7_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[135]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .O(p_7_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[136]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .O(p_7_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[137]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .O(p_7_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[138]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .O(p_7_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[139]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .O(p_7_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[140]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .O(p_7_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[141]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .O(p_7_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[142]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .O(p_7_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .O(p_7_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[144]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .O(p_7_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[145]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .O(p_7_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[146]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .O(p_7_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[147]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .O(p_7_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[148]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .O(p_7_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[149]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .O(p_7_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[150]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .O(p_7_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[151]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .O(p_7_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[152]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .O(p_7_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[153]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .O(p_7_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[154]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .O(p_7_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[155]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .O(p_7_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[156]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .O(p_7_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[157]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .O(p_7_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[158]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .O(p_7_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .O(p_7_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[12]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .O(p_7_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[13]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .O(p_7_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[14]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .O(p_7_out[39]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[16]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .O(p_7_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[17]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .O(p_7_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[18]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .O(p_7_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[19]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .O(p_7_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[4]_INST_0_i_3 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .O(p_7_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_18_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_5
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    p_12_out,
    aclk,
    \gen_AB_reg_slice.sel_rd_reg_0 ,
    Q,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output [39:0]p_12_out;
  input aclk;
  input \gen_AB_reg_slice.sel_rd_reg_0 ;
  input [22:0]Q;
  input [3:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [22:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [39:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_1 ;
  wire [39:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_5__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_6__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_7__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_8__2_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_static_routing.tready_mux__3 ;
  wire [3:0]m_axis_tready;
  wire [39:0]p_12_out;
  wire [0:0]s_axis_tvalid;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[39]_i_1__1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a_1 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[39]_i_1__1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_b [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_b [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_b [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_b [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_b [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_b [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_b [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_b [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_b [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_b [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_b [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_b [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_b [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_b [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__2 
       (.I0(\gen_static_routing.tready_mux__3 ),
        .I1(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__2_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(aclken),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1__1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__1 
       (.I0(areset_r),
        .I1(Q[22]),
        .O(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2__1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \gen_AB_reg_slice.state[1]_i_3__2 
       (.I0(\gen_AB_reg_slice.state[1]_i_4__2_n_0 ),
        .I1(\gen_AB_reg_slice.state[1]_i_5__2_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_reg_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_6__3_n_0 ),
        .I4(\gen_AB_reg_slice.state[1]_i_7__1_n_0 ),
        .I5(\gen_AB_reg_slice.state[1]_i_8__2_n_0 ),
        .O(\gen_static_routing.tready_mux__3 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__2 
       (.I0(Q[16]),
        .I1(m_axis_tready[3]),
        .I2(Q[21]),
        .I3(Q[17]),
        .I4(Q[14]),
        .I5(Q[15]),
        .O(\gen_AB_reg_slice.state[1]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_5__2 
       (.I0(Q[12]),
        .I1(m_axis_tready[2]),
        .I2(Q[20]),
        .I3(Q[13]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\gen_AB_reg_slice.state[1]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_6__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gen_AB_reg_slice.state[1]_i_6__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_7__1 
       (.I0(Q[4]),
        .I1(m_axis_tready[0]),
        .I2(Q[18]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\gen_AB_reg_slice.state[1]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_8__2 
       (.I0(Q[8]),
        .I1(m_axis_tready[1]),
        .I2(Q[19]),
        .I3(Q[9]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\gen_AB_reg_slice.state[1]_i_8__2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[0]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[128]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .O(p_12_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[129]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .O(p_12_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[130]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .O(p_12_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[131]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .O(p_12_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[132]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .O(p_12_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[133]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .O(p_12_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[134]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .O(p_12_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[135]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .O(p_12_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[136]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .O(p_12_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[137]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .O(p_12_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[138]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .O(p_12_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[139]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .O(p_12_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[140]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .O(p_12_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[141]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .O(p_12_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[142]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .O(p_12_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .O(p_12_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[144]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .O(p_12_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[145]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .O(p_12_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[146]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .O(p_12_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[147]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .O(p_12_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[148]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .O(p_12_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[149]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .O(p_12_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[150]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .O(p_12_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[151]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .O(p_12_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[152]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .O(p_12_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[153]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .O(p_12_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[154]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .O(p_12_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[155]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .O(p_12_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[156]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .O(p_12_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[157]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .O(p_12_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[158]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .O(p_12_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_7 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .O(p_12_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[12]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .O(p_12_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[13]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .O(p_12_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[14]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .O(p_12_out[39]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[16]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .O(p_12_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[17]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .O(p_12_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[18]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .O(p_12_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[19]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .O(p_12_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[4]_INST_0_i_5 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .O(p_12_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_18_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_6
   (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ,
    \gen_AB_reg_slice.state_reg[0]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ,
    \gen_AB_reg_slice.state_reg[0]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ,
    \gen_AB_reg_slice.state_reg[0]_4 ,
    \gen_AB_reg_slice.state_reg[1]_0 ,
    aclk,
    p_7_out,
    Q,
    p_22_out,
    p_12_out,
    \m_axis_tvalid[4] ,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_4 ;
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  input aclk;
  input [39:0]p_7_out;
  input [25:0]Q;
  input [39:0]p_22_out;
  input [39:0]p_12_out;
  input [2:0]\m_axis_tvalid[4] ;
  input [4:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [25:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [39:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_1 ;
  wire [39:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_5__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_6__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_7__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_8__3_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg[0]_2 ;
  wire \gen_AB_reg_slice.state_reg[0]_3 ;
  wire \gen_AB_reg_slice.state_reg[0]_4 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  wire \gen_static_routing.tready_mux__3 ;
  wire [4:0]m_axis_tready;
  wire [2:0]\m_axis_tvalid[4] ;
  wire [1:1]mux_tvalid;
  wire [39:0]p_12_out;
  wire [39:0]p_17_out;
  wire [39:0]p_22_out;
  wire [39:0]p_7_out;
  wire [0:0]s_axis_tvalid;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[39]_i_1__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a_1 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[39]_i_1__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(mux_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_b [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_b [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_b [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_b [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_b [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_b [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_b [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_b [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_b [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_b [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_b [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_b [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_b [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_b [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__3 
       (.I0(\gen_static_routing.tready_mux__3 ),
        .I1(mux_tvalid),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__3_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__0 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(aclken),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1__0 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__0 
       (.I0(areset_r),
        .I1(Q[25]),
        .O(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2__0 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(mux_tvalid),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \gen_AB_reg_slice.state[1]_i_3__3 
       (.I0(\gen_AB_reg_slice.state[1]_i_4__3_n_0 ),
        .I1(\gen_AB_reg_slice.state[1]_i_5__3_n_0 ),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .I3(\gen_AB_reg_slice.state[1]_i_6__2_n_0 ),
        .I4(\gen_AB_reg_slice.state[1]_i_7__2_n_0 ),
        .I5(\gen_AB_reg_slice.state[1]_i_8__3_n_0 ),
        .O(\gen_static_routing.tready_mux__3 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__3 
       (.I0(Q[18]),
        .I1(m_axis_tready[4]),
        .I2(Q[24]),
        .I3(Q[19]),
        .I4(Q[17]),
        .I5(Q[16]),
        .O(\gen_AB_reg_slice.state[1]_i_4__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_5__3 
       (.I0(Q[14]),
        .I1(m_axis_tready[3]),
        .I2(Q[23]),
        .I3(Q[15]),
        .I4(Q[13]),
        .I5(Q[12]),
        .O(\gen_AB_reg_slice.state[1]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \gen_AB_reg_slice.state[1]_i_6__1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[20]),
        .I3(m_axis_tready[0]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_6__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\gen_AB_reg_slice.state[1]_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_7__2 
       (.I0(Q[6]),
        .I1(m_axis_tready[1]),
        .I2(Q[21]),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\gen_AB_reg_slice.state[1]_i_7__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \gen_AB_reg_slice.state[1]_i_8__3 
       (.I0(Q[10]),
        .I1(m_axis_tready[2]),
        .I2(Q[22]),
        .I3(Q[11]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(\gen_AB_reg_slice.state[1]_i_8__3_n_0 ));
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
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[0]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_7_out[0]),
        .I2(p_22_out[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[0]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[100]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_7_out[4]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[4]),
        .I5(p_12_out[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[101]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_7_out[5]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[5]),
        .I5(p_12_out[5]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[102]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_7_out[6]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[6]),
        .I5(p_12_out[6]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[103]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_7_out[7]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[7]),
        .I5(p_12_out[7]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[104]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_7_out[8]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[8]),
        .I5(p_12_out[8]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[105]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_7_out[9]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[9]),
        .I5(p_12_out[9]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[106]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_7_out[10]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[10]),
        .I5(p_12_out[10]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[107]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_7_out[11]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[11]),
        .I5(p_12_out[11]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[108]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_7_out[12]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[12]),
        .I5(p_12_out[12]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[109]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_7_out[13]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[13]),
        .I5(p_12_out[13]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[10]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_7_out[10]),
        .I2(p_22_out[10]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[10]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[110]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_7_out[14]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[14]),
        .I5(p_12_out[14]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[111]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_7_out[15]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[15]),
        .I5(p_12_out[15]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[112]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_7_out[16]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[16]),
        .I5(p_12_out[16]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[113]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_7_out[17]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[17]),
        .I5(p_12_out[17]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[114]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_7_out[18]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[18]),
        .I5(p_12_out[18]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[115]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_7_out[19]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[19]),
        .I5(p_12_out[19]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[116]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_7_out[20]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[20]),
        .I5(p_12_out[20]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[117]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_7_out[21]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[21]),
        .I5(p_12_out[21]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[118]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_7_out[22]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[22]),
        .I5(p_12_out[22]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[119]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_7_out[23]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[23]),
        .I5(p_12_out[23]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[11]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_7_out[11]),
        .I2(p_22_out[11]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[11]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[120]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_7_out[24]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[24]),
        .I5(p_12_out[24]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[121]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_7_out[25]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[25]),
        .I5(p_12_out[25]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[122]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_7_out[26]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[26]),
        .I5(p_12_out[26]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[123]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_7_out[27]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[27]),
        .I5(p_12_out[27]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[124]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_7_out[28]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[28]),
        .I5(p_12_out[28]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[125]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_7_out[29]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[29]),
        .I5(p_12_out[29]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[126]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_7_out[30]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[30]),
        .I5(p_12_out[30]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[127]_INST_0_i_2 
       (.I0(p_17_out[31]),
        .I1(p_7_out[31]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[31]),
        .I5(p_12_out[31]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[128]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_7_out[0]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[0]),
        .I5(p_12_out[0]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[128]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .O(p_17_out[0]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[129]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_7_out[1]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[1]),
        .I5(p_12_out[1]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[129]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .O(p_17_out[1]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[12]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_7_out[12]),
        .I2(p_22_out[12]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[12]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[130]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_7_out[2]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[2]),
        .I5(p_12_out[2]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[130]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .O(p_17_out[2]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[131]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_7_out[3]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[3]),
        .I5(p_12_out[3]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[131]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .O(p_17_out[3]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[132]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_7_out[4]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[4]),
        .I5(p_12_out[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[132]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .O(p_17_out[4]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[133]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_7_out[5]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[5]),
        .I5(p_12_out[5]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[133]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .O(p_17_out[5]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[134]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_7_out[6]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[6]),
        .I5(p_12_out[6]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[134]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .O(p_17_out[6]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[135]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_7_out[7]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[7]),
        .I5(p_12_out[7]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[135]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .O(p_17_out[7]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[136]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_7_out[8]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[8]),
        .I5(p_12_out[8]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[136]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .O(p_17_out[8]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[137]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_7_out[9]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[9]),
        .I5(p_12_out[9]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[137]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .O(p_17_out[9]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[138]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_7_out[10]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[10]),
        .I5(p_12_out[10]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[138]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .O(p_17_out[10]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[139]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_7_out[11]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[11]),
        .I5(p_12_out[11]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[139]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .O(p_17_out[11]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[13]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_7_out[13]),
        .I2(p_22_out[13]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[13]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[140]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_7_out[12]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[12]),
        .I5(p_12_out[12]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[140]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .O(p_17_out[12]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[141]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_7_out[13]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[13]),
        .I5(p_12_out[13]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[141]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .O(p_17_out[13]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[142]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_7_out[14]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[14]),
        .I5(p_12_out[14]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[142]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .O(p_17_out[14]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[143]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_7_out[15]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[15]),
        .I5(p_12_out[15]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .O(p_17_out[15]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[144]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_7_out[16]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[16]),
        .I5(p_12_out[16]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[144]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .O(p_17_out[16]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[145]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_7_out[17]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[17]),
        .I5(p_12_out[17]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[145]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .O(p_17_out[17]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[146]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_7_out[18]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[18]),
        .I5(p_12_out[18]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[146]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .O(p_17_out[18]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[147]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_7_out[19]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[19]),
        .I5(p_12_out[19]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[147]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .O(p_17_out[19]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[148]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_7_out[20]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[20]),
        .I5(p_12_out[20]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[148]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .O(p_17_out[20]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[149]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_7_out[21]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[21]),
        .I5(p_12_out[21]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[149]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .O(p_17_out[21]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[14]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_7_out[14]),
        .I2(p_22_out[14]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[14]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[150]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_7_out[22]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[22]),
        .I5(p_12_out[22]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[150]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .O(p_17_out[22]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[151]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_7_out[23]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[23]),
        .I5(p_12_out[23]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[151]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .O(p_17_out[23]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[152]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_7_out[24]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[24]),
        .I5(p_12_out[24]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[152]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .O(p_17_out[24]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[153]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_7_out[25]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[25]),
        .I5(p_12_out[25]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[153]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .O(p_17_out[25]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[154]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_7_out[26]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[26]),
        .I5(p_12_out[26]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[154]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .O(p_17_out[26]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[155]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_7_out[27]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[27]),
        .I5(p_12_out[27]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[155]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .O(p_17_out[27]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[156]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_7_out[28]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[28]),
        .I5(p_12_out[28]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[156]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .O(p_17_out[28]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[157]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_7_out[29]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[29]),
        .I5(p_12_out[29]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[157]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .O(p_17_out[29]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[158]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_7_out[30]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[30]),
        .I5(p_12_out[30]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[158]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .O(p_17_out[30]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[159]_INST_0_i_2 
       (.I0(p_17_out[31]),
        .I1(p_7_out[31]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[31]),
        .I5(p_12_out[31]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .O(p_17_out[31]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[15]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_7_out[15]),
        .I2(p_22_out[15]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[15]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[16]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_7_out[16]),
        .I2(p_22_out[16]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[16]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[17]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_7_out[17]),
        .I2(p_22_out[17]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[17]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[18]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_7_out[18]),
        .I2(p_22_out[18]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[18]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[19]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_7_out[19]),
        .I2(p_22_out[19]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[19]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[1]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_7_out[1]),
        .I2(p_22_out[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[1]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[20]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_7_out[20]),
        .I2(p_22_out[20]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[20]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[21]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_7_out[21]),
        .I2(p_22_out[21]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[21]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[22]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_7_out[22]),
        .I2(p_22_out[22]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[22]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[23]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_7_out[23]),
        .I2(p_22_out[23]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[23]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[24]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_7_out[24]),
        .I2(p_22_out[24]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[24]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[25]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_7_out[25]),
        .I2(p_22_out[25]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[25]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[26]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_7_out[26]),
        .I2(p_22_out[26]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[26]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[27]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_7_out[27]),
        .I2(p_22_out[27]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[27]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[28]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_7_out[28]),
        .I2(p_22_out[28]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[28]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[29]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_7_out[29]),
        .I2(p_22_out[29]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[29]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[2]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_7_out[2]),
        .I2(p_22_out[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[2]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[30]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_7_out[30]),
        .I2(p_22_out[30]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[30]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[31]_INST_0_i_2 
       (.I0(p_17_out[31]),
        .I1(p_7_out[31]),
        .I2(p_22_out[31]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[31]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[32]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_7_out[0]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[0]),
        .I5(p_12_out[0]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[33]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_7_out[1]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[1]),
        .I5(p_12_out[1]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[34]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_7_out[2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[2]),
        .I5(p_12_out[2]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[35]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_7_out[3]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[3]),
        .I5(p_12_out[3]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[36]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_7_out[4]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[4]),
        .I5(p_12_out[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[37]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_7_out[5]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[5]),
        .I5(p_12_out[5]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[38]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_7_out[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[6]),
        .I5(p_12_out[6]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[39]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_7_out[7]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[7]),
        .I5(p_12_out[7]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[3]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_7_out[3]),
        .I2(p_22_out[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[3]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[40]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_7_out[8]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[8]),
        .I5(p_12_out[8]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[41]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_7_out[9]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[9]),
        .I5(p_12_out[9]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[42]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_7_out[10]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[10]),
        .I5(p_12_out[10]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[43]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_7_out[11]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[11]),
        .I5(p_12_out[11]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[44]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_7_out[12]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[12]),
        .I5(p_12_out[12]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[45]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_7_out[13]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[13]),
        .I5(p_12_out[13]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[46]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_7_out[14]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[14]),
        .I5(p_12_out[14]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[47]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_7_out[15]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[15]),
        .I5(p_12_out[15]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[48]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_7_out[16]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[16]),
        .I5(p_12_out[16]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[49]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_7_out[17]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[17]),
        .I5(p_12_out[17]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[4]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_7_out[4]),
        .I2(p_22_out[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[50]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_7_out[18]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[18]),
        .I5(p_12_out[18]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[51]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_7_out[19]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[19]),
        .I5(p_12_out[19]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[52]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_7_out[20]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[20]),
        .I5(p_12_out[20]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[53]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_7_out[21]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[21]),
        .I5(p_12_out[21]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[54]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_7_out[22]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[22]),
        .I5(p_12_out[22]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[55]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_7_out[23]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[23]),
        .I5(p_12_out[23]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[56]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_7_out[24]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[24]),
        .I5(p_12_out[24]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[57]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_7_out[25]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[25]),
        .I5(p_12_out[25]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[58]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_7_out[26]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[26]),
        .I5(p_12_out[26]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[59]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_7_out[27]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[27]),
        .I5(p_12_out[27]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[5]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_7_out[5]),
        .I2(p_22_out[5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[5]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[60]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_7_out[28]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[28]),
        .I5(p_12_out[28]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[61]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_7_out[29]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[29]),
        .I5(p_12_out[29]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[62]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_7_out[30]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[30]),
        .I5(p_12_out[30]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[63]_INST_0_i_2 
       (.I0(p_17_out[31]),
        .I1(p_7_out[31]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[31]),
        .I5(p_12_out[31]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[64]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_7_out[0]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[0]),
        .I5(p_12_out[0]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[65]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_7_out[1]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[1]),
        .I5(p_12_out[1]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[66]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_7_out[2]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[2]),
        .I5(p_12_out[2]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[67]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_7_out[3]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[3]),
        .I5(p_12_out[3]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[68]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_7_out[4]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[4]),
        .I5(p_12_out[4]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[69]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_7_out[5]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[5]),
        .I5(p_12_out[5]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[6]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_7_out[6]),
        .I2(p_22_out[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[6]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[70]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_7_out[6]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[6]),
        .I5(p_12_out[6]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[71]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_7_out[7]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[7]),
        .I5(p_12_out[7]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[72]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_7_out[8]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[8]),
        .I5(p_12_out[8]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[73]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_7_out[9]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[9]),
        .I5(p_12_out[9]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[74]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_7_out[10]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[10]),
        .I5(p_12_out[10]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[75]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_7_out[11]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[11]),
        .I5(p_12_out[11]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[76]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_7_out[12]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[12]),
        .I5(p_12_out[12]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[77]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_7_out[13]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[13]),
        .I5(p_12_out[13]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[78]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_7_out[14]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[14]),
        .I5(p_12_out[14]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[79]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_7_out[15]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[15]),
        .I5(p_12_out[15]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[7]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_7_out[7]),
        .I2(p_22_out[7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[7]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[80]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_7_out[16]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[16]),
        .I5(p_12_out[16]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[81]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_7_out[17]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[17]),
        .I5(p_12_out[17]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[82]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_7_out[18]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[18]),
        .I5(p_12_out[18]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[83]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_7_out[19]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[19]),
        .I5(p_12_out[19]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[84]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_7_out[20]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[20]),
        .I5(p_12_out[20]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[85]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_7_out[21]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[21]),
        .I5(p_12_out[21]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[86]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_7_out[22]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[22]),
        .I5(p_12_out[22]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[87]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_7_out[23]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[23]),
        .I5(p_12_out[23]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[88]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_7_out[24]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[24]),
        .I5(p_12_out[24]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[89]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_7_out[25]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[25]),
        .I5(p_12_out[25]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[8]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_7_out[8]),
        .I2(p_22_out[8]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[8]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[90]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_7_out[26]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[26]),
        .I5(p_12_out[26]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[91]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_7_out[27]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[27]),
        .I5(p_12_out[27]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[92]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_7_out[28]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[28]),
        .I5(p_12_out[28]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[93]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_7_out[29]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[29]),
        .I5(p_12_out[29]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[94]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_7_out[30]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[30]),
        .I5(p_12_out[30]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[95]_INST_0_i_2 
       (.I0(p_17_out[31]),
        .I1(p_7_out[31]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[31]),
        .I5(p_12_out[31]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[96]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_7_out[0]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[0]),
        .I5(p_12_out[0]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[97]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_7_out[1]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[1]),
        .I5(p_12_out[1]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[98]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_7_out[2]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[2]),
        .I5(p_12_out[2]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdata[99]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_7_out[3]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[3]),
        .I5(p_12_out[3]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdata[9]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_7_out[9]),
        .I2(p_22_out[9]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[9]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdest[0]_INST_0_i_1 
       (.I0(p_17_out[37]),
        .I1(p_7_out[37]),
        .I2(p_22_out[37]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[37]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[10]_INST_0_i_1 
       (.I0(p_17_out[38]),
        .I1(p_7_out[38]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[38]),
        .I5(p_12_out[38]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[11]_INST_0_i_1 
       (.I0(p_17_out[39]),
        .I1(p_7_out[39]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[39]),
        .I5(p_12_out[39]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[12]_INST_0_i_1 
       (.I0(p_17_out[37]),
        .I1(p_7_out[37]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[37]),
        .I5(p_12_out[37]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[12]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .O(p_17_out[37]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[13]_INST_0_i_1 
       (.I0(p_17_out[38]),
        .I1(p_7_out[38]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[38]),
        .I5(p_12_out[38]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[13]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .O(p_17_out[38]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[14]_INST_0_i_1 
       (.I0(p_17_out[39]),
        .I1(p_7_out[39]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[39]),
        .I5(p_12_out[39]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[14]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .O(p_17_out[39]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdest[1]_INST_0_i_1 
       (.I0(p_17_out[38]),
        .I1(p_7_out[38]),
        .I2(p_22_out[38]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[38]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tdest[2]_INST_0_i_1 
       (.I0(p_17_out[39]),
        .I1(p_7_out[39]),
        .I2(p_22_out[39]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[39]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[3]_INST_0_i_1 
       (.I0(p_17_out[37]),
        .I1(p_7_out[37]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[37]),
        .I5(p_12_out[37]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[4]_INST_0_i_1 
       (.I0(p_17_out[38]),
        .I1(p_7_out[38]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[38]),
        .I5(p_12_out[38]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[5]_INST_0_i_1 
       (.I0(p_17_out[39]),
        .I1(p_7_out[39]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[39]),
        .I5(p_12_out[39]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[6]_INST_0_i_1 
       (.I0(p_17_out[37]),
        .I1(p_7_out[37]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[37]),
        .I5(p_12_out[37]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[7]_INST_0_i_1 
       (.I0(p_17_out[38]),
        .I1(p_7_out[38]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[38]),
        .I5(p_12_out[38]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[8]_INST_0_i_1 
       (.I0(p_17_out[39]),
        .I1(p_7_out[39]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[39]),
        .I5(p_12_out[39]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tdest[9]_INST_0_i_1 
       (.I0(p_17_out[37]),
        .I1(p_7_out[37]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[37]),
        .I5(p_12_out[37]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tkeep[0]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_7_out[32]),
        .I2(p_22_out[32]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[32]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[10]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_7_out[34]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[34]),
        .I5(p_12_out[34]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[11]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_7_out[35]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[35]),
        .I5(p_12_out[35]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[12]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_7_out[32]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[32]),
        .I5(p_12_out[32]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[13]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_7_out[33]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[33]),
        .I5(p_12_out[33]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[14]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_7_out[34]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[34]),
        .I5(p_12_out[34]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[15]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_7_out[35]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[35]),
        .I5(p_12_out[35]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[16]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_7_out[32]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[32]),
        .I5(p_12_out[32]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[16]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .O(p_17_out[32]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[17]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_7_out[33]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[33]),
        .I5(p_12_out[33]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[17]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .O(p_17_out[33]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[18]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_7_out[34]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[34]),
        .I5(p_12_out[34]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[18]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .O(p_17_out[34]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[19]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_7_out[35]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[35]),
        .I5(p_12_out[35]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[19]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .O(p_17_out[35]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tkeep[1]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_7_out[33]),
        .I2(p_22_out[33]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[33]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tkeep[2]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_7_out[34]),
        .I2(p_22_out[34]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[34]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tkeep[3]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_7_out[35]),
        .I2(p_22_out[35]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[35]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[4]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_7_out[32]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[32]),
        .I5(p_12_out[32]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[5]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_7_out[33]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[33]),
        .I5(p_12_out[33]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[6]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_7_out[34]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[34]),
        .I5(p_12_out[34]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[7]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_7_out[35]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[35]),
        .I5(p_12_out[35]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[8]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_7_out[32]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[32]),
        .I5(p_12_out[32]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tkeep[9]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_7_out[33]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[33]),
        .I5(p_12_out[33]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tlast[0]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_7_out[36]),
        .I2(p_22_out[36]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(p_12_out[36]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tlast[1]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_7_out[36]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(p_22_out[36]),
        .I5(p_12_out[36]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tlast[2]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_7_out[36]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(p_22_out[36]),
        .I5(p_12_out[36]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tlast[3]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_7_out[36]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(p_22_out[36]),
        .I5(p_12_out[36]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tlast[4]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_7_out[36]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(p_22_out[36]),
        .I5(p_12_out[36]),
        .O(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[4]_INST_0_i_2 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .O(p_17_out[36]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\m_axis_tvalid[4] [2]),
        .I2(\m_axis_tvalid[4] [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\m_axis_tvalid[4] [1]),
        .O(\gen_AB_reg_slice.state_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tvalid[1]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\m_axis_tvalid[4] [2]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(\m_axis_tvalid[4] [0]),
        .I5(\m_axis_tvalid[4] [1]),
        .O(\gen_AB_reg_slice.state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tvalid[2]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\m_axis_tvalid[4] [2]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(\m_axis_tvalid[4] [0]),
        .I5(\m_axis_tvalid[4] [1]),
        .O(\gen_AB_reg_slice.state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tvalid[3]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\m_axis_tvalid[4] [2]),
        .I2(Q[13]),
        .I3(Q[12]),
        .I4(\m_axis_tvalid[4] [0]),
        .I5(\m_axis_tvalid[4] [1]),
        .O(\gen_AB_reg_slice.state_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \m_axis_tvalid[4]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\m_axis_tvalid[4] [2]),
        .I2(Q[17]),
        .I3(Q[16]),
        .I4(\m_axis_tvalid[4] [0]),
        .I5(\m_axis_tvalid[4] [1]),
        .O(\gen_AB_reg_slice.state_reg[0]_4 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_18_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_7
   (\gen_AB_reg_slice.state_reg[1]_0 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    p_22_out,
    aclk,
    \gen_AB_reg_slice.sel_rd_reg_0 ,
    Q,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1]_0 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output [39:0]p_22_out;
  input aclk;
  input \gen_AB_reg_slice.sel_rd_reg_0 ;
  input [22:0]Q;
  input [3:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [22:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [39:0]\gen_AB_reg_slice.payload_a ;
  wire \gen_AB_reg_slice.payload_a_1 ;
  wire [39:0]\gen_AB_reg_slice.payload_b ;
  wire \gen_AB_reg_slice.payload_b_0 ;
  wire \gen_AB_reg_slice.sel ;
  wire \gen_AB_reg_slice.sel_rd_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_wr ;
  wire \gen_AB_reg_slice.sel_wr_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_5__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_6__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_7__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_8__1_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[1]_0 ;
  wire \gen_static_routing.tready_mux__3 ;
  wire [3:0]m_axis_tready;
  wire [39:0]p_22_out;
  wire [0:0]s_axis_tvalid;

  LUT4 #(
    .INIT(16'h008A)) 
    \gen_AB_reg_slice.payload_a[39]_i_1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_a_1 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_a [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_a [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_a [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_a [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_a [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_a [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_a [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_a [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_a [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_a [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_a [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_a [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_a [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_a [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_a [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_a [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_a [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_a [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_a [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_a [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_a [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_a [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_a [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_a [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_a [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_a [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_a [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_a [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_a [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_a [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_a [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_a [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_a [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_a [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_a [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_a [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_a [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_a [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_a [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a_1 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_a [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8A00)) 
    \gen_AB_reg_slice.payload_b[39]_i_1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.payload_b_0 ));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[0]),
        .Q(\gen_AB_reg_slice.payload_b [0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[10]),
        .Q(\gen_AB_reg_slice.payload_b [10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[11]),
        .Q(\gen_AB_reg_slice.payload_b [11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[12]),
        .Q(\gen_AB_reg_slice.payload_b [12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[13]),
        .Q(\gen_AB_reg_slice.payload_b [13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[14]),
        .Q(\gen_AB_reg_slice.payload_b [14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[15]),
        .Q(\gen_AB_reg_slice.payload_b [15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[16]),
        .Q(\gen_AB_reg_slice.payload_b [16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[17]),
        .Q(\gen_AB_reg_slice.payload_b [17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[18]),
        .Q(\gen_AB_reg_slice.payload_b [18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[19]),
        .Q(\gen_AB_reg_slice.payload_b [19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[1]),
        .Q(\gen_AB_reg_slice.payload_b [1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[20]),
        .Q(\gen_AB_reg_slice.payload_b [20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[21]),
        .Q(\gen_AB_reg_slice.payload_b [21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[22]),
        .Q(\gen_AB_reg_slice.payload_b [22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[23]),
        .Q(\gen_AB_reg_slice.payload_b [23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[24]),
        .Q(\gen_AB_reg_slice.payload_b [24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[25]),
        .Q(\gen_AB_reg_slice.payload_b [25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[26]),
        .Q(\gen_AB_reg_slice.payload_b [26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[27]),
        .Q(\gen_AB_reg_slice.payload_b [27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[28]),
        .Q(\gen_AB_reg_slice.payload_b [28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[29]),
        .Q(\gen_AB_reg_slice.payload_b [29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[2]),
        .Q(\gen_AB_reg_slice.payload_b [2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[30]),
        .Q(\gen_AB_reg_slice.payload_b [30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[31]),
        .Q(\gen_AB_reg_slice.payload_b [31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[32]),
        .Q(\gen_AB_reg_slice.payload_b [32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[33]),
        .Q(\gen_AB_reg_slice.payload_b [33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[34]),
        .Q(\gen_AB_reg_slice.payload_b [34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[35]),
        .Q(\gen_AB_reg_slice.payload_b [35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[36]),
        .Q(\gen_AB_reg_slice.payload_b [36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[37] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[37]),
        .Q(\gen_AB_reg_slice.payload_b [37]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[38] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[38]),
        .Q(\gen_AB_reg_slice.payload_b [38]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[39] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[39]),
        .Q(\gen_AB_reg_slice.payload_b [39]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[3]),
        .Q(\gen_AB_reg_slice.payload_b [3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[4]),
        .Q(\gen_AB_reg_slice.payload_b [4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[5]),
        .Q(\gen_AB_reg_slice.payload_b [5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[6]),
        .Q(\gen_AB_reg_slice.payload_b [6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[7]),
        .Q(\gen_AB_reg_slice.payload_b [7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[8]),
        .Q(\gen_AB_reg_slice.payload_b [8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_b_0 ),
        .D(D[9]),
        .Q(\gen_AB_reg_slice.payload_b [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_rd_i_1__0 
       (.I0(\gen_static_routing.tready_mux__3 ),
        .I1(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I2(aclken),
        .I3(\gen_AB_reg_slice.sel ),
        .O(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.sel ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1 
       (.I0(\gen_AB_reg_slice.state_reg[1]_0 ),
        .I1(aclken),
        .I2(s_axis_tvalid),
        .I3(\gen_AB_reg_slice.sel_wr ),
        .O(\gen_AB_reg_slice.sel_wr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.sel_wr ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hD8F8F0F0)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(areset_r),
        .I1(Q[22]),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7FAA0A)) 
    \gen_AB_reg_slice.state[1]_i_2 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(\gen_static_routing.tready_mux__3 ),
        .I4(\gen_AB_reg_slice.state_reg[1]_0 ),
        .O(\gen_AB_reg_slice.state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \gen_AB_reg_slice.state[1]_i_3__0 
       (.I0(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ),
        .I1(\gen_AB_reg_slice.state[1]_i_5__0_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_reg_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_6__0_n_0 ),
        .I4(\gen_AB_reg_slice.state[1]_i_7__0_n_0 ),
        .I5(\gen_AB_reg_slice.state[1]_i_8__1_n_0 ),
        .O(\gen_static_routing.tready_mux__3 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_AB_reg_slice.state[1]_i_4__0 
       (.I0(Q[16]),
        .I1(m_axis_tready[3]),
        .I2(Q[21]),
        .I3(Q[17]),
        .I4(Q[15]),
        .I5(Q[14]),
        .O(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_AB_reg_slice.state[1]_i_5__0 
       (.I0(Q[12]),
        .I1(m_axis_tready[2]),
        .I2(Q[20]),
        .I3(Q[13]),
        .I4(Q[11]),
        .I5(Q[10]),
        .O(\gen_AB_reg_slice.state[1]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_AB_reg_slice.state[1]_i_6__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gen_AB_reg_slice.state[1]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_AB_reg_slice.state[1]_i_7__0 
       (.I0(Q[4]),
        .I1(m_axis_tready[0]),
        .I2(Q[18]),
        .I3(Q[5]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\gen_AB_reg_slice.state[1]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \gen_AB_reg_slice.state[1]_i_8__1 
       (.I0(Q[8]),
        .I1(m_axis_tready[1]),
        .I2(Q[19]),
        .I3(Q[9]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(\gen_AB_reg_slice.state[1]_i_8__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[0]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2_n_0 ),
        .Q(\gen_AB_reg_slice.state_reg[1]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[128]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [0]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [0]),
        .O(p_22_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[129]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [1]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [1]),
        .O(p_22_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[130]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [2]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [2]),
        .O(p_22_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[131]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [3]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [3]),
        .O(p_22_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[132]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [4]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [4]),
        .O(p_22_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[133]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [5]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [5]),
        .O(p_22_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[134]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [6]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [6]),
        .O(p_22_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[135]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [7]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [7]),
        .O(p_22_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[136]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [8]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [8]),
        .O(p_22_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[137]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [9]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [9]),
        .O(p_22_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[138]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [10]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [10]),
        .O(p_22_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[139]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [11]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [11]),
        .O(p_22_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[140]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [12]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [12]),
        .O(p_22_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[141]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [13]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [13]),
        .O(p_22_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[142]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [14]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [14]),
        .O(p_22_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [15]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [15]),
        .O(p_22_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[144]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [16]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [16]),
        .O(p_22_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[145]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [17]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [17]),
        .O(p_22_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[146]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [18]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [18]),
        .O(p_22_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[147]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [19]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [19]),
        .O(p_22_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[148]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [20]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [20]),
        .O(p_22_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[149]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [21]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [21]),
        .O(p_22_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[150]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [22]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [22]),
        .O(p_22_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[151]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [23]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [23]),
        .O(p_22_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[152]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [24]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [24]),
        .O(p_22_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[153]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [25]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [25]),
        .O(p_22_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[154]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [26]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [26]),
        .O(p_22_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[155]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [27]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [27]),
        .O(p_22_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[156]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [28]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [28]),
        .O(p_22_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[157]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [29]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [29]),
        .O(p_22_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[158]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [30]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [30]),
        .O(p_22_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_6 
       (.I0(\gen_AB_reg_slice.payload_b [31]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [31]),
        .O(p_22_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[12]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [37]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [37]),
        .O(p_22_out[37]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[13]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [38]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [38]),
        .O(p_22_out[38]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdest[14]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [39]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [39]),
        .O(p_22_out[39]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[16]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [32]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [32]),
        .O(p_22_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[17]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [33]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [33]),
        .O(p_22_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[18]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [34]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [34]),
        .O(p_22_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tkeep[19]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [35]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [35]),
        .O(p_22_out[35]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tlast[4]_INST_0_i_4 
       (.I0(\gen_AB_reg_slice.payload_b [36]),
        .I1(\gen_AB_reg_slice.sel ),
        .I2(\gen_AB_reg_slice.payload_a [36]),
        .O(p_22_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axi_ctrl_read" *) 
module top_xbar_4_axis_switch_v1_1_18_axi_ctrl_read
   (\addr_r_reg[3]_0 ,
    s_axi_ctrl_rdata,
    out0,
    Q,
    \data_reg[31]_0 ,
    \data_reg[0]_0 ,
    \data_reg[1]_0 ,
    \data_reg[2]_0 ,
    \data_reg[3]_0 ,
    \data_reg[4]_0 ,
    \data_reg[5]_0 ,
    \data_reg[6]_0 ,
    \data_reg[7]_0 ,
    \data_reg[8]_0 ,
    \data_reg[9]_0 ,
    \data_reg[10]_0 ,
    \data_reg[11]_0 ,
    \data_reg[12]_0 ,
    \data_reg[13]_0 ,
    \data_reg[14]_0 ,
    \data_reg[15]_0 ,
    \data_reg[16]_0 ,
    \data_reg[17]_0 ,
    \data_reg[18]_0 ,
    \data_reg[19]_0 ,
    \data_reg[20]_0 ,
    \data_reg[21]_0 ,
    \data_reg[22]_0 ,
    \data_reg[23]_0 ,
    \data_reg[24]_0 ,
    \data_reg[25]_0 ,
    \data_reg[26]_0 ,
    \data_reg[27]_0 ,
    \data_reg[28]_0 ,
    \data_reg[29]_0 ,
    \data_reg[30]_0 ,
    \data_reg[31]_1 ,
    \data_reg[31]_2 ,
    \data[31]_i_3_0 ,
    \data[31]_i_3_1 ,
    s_axi_ctrl_araddr,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready);
  output [1:0]\addr_r_reg[3]_0 ;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]out0;
  input [31:0]Q;
  input [31:0]\data_reg[31]_0 ;
  input \data_reg[0]_0 ;
  input \data_reg[1]_0 ;
  input \data_reg[2]_0 ;
  input \data_reg[3]_0 ;
  input \data_reg[4]_0 ;
  input \data_reg[5]_0 ;
  input \data_reg[6]_0 ;
  input \data_reg[7]_0 ;
  input \data_reg[8]_0 ;
  input \data_reg[9]_0 ;
  input \data_reg[10]_0 ;
  input \data_reg[11]_0 ;
  input \data_reg[12]_0 ;
  input \data_reg[13]_0 ;
  input \data_reg[14]_0 ;
  input \data_reg[15]_0 ;
  input \data_reg[16]_0 ;
  input \data_reg[17]_0 ;
  input \data_reg[18]_0 ;
  input \data_reg[19]_0 ;
  input \data_reg[20]_0 ;
  input \data_reg[21]_0 ;
  input \data_reg[22]_0 ;
  input \data_reg[23]_0 ;
  input \data_reg[24]_0 ;
  input \data_reg[25]_0 ;
  input \data_reg[26]_0 ;
  input \data_reg[27]_0 ;
  input \data_reg[28]_0 ;
  input \data_reg[29]_0 ;
  input \data_reg[30]_0 ;
  input [0:0]\data_reg[31]_1 ;
  input [0:0]\data_reg[31]_2 ;
  input [0:0]\data[31]_i_3_0 ;
  input [0:0]\data[31]_i_3_1 ;
  input [4:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [1:0]\addr_r_reg[3]_0 ;
  wire \addr_r_reg_n_0_[6] ;
  wire \data[0]_i_1_n_0 ;
  wire \data[10]_i_1_n_0 ;
  wire \data[11]_i_1_n_0 ;
  wire \data[12]_i_1_n_0 ;
  wire \data[13]_i_1_n_0 ;
  wire \data[14]_i_1_n_0 ;
  wire \data[15]_i_1_n_0 ;
  wire \data[16]_i_1_n_0 ;
  wire \data[17]_i_1_n_0 ;
  wire \data[18]_i_1_n_0 ;
  wire \data[19]_i_1_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[20]_i_1_n_0 ;
  wire \data[21]_i_1_n_0 ;
  wire \data[22]_i_1_n_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[24]_i_1_n_0 ;
  wire \data[25]_i_1_n_0 ;
  wire \data[26]_i_1_n_0 ;
  wire \data[27]_i_1_n_0 ;
  wire \data[28]_i_1_n_0 ;
  wire \data[29]_i_1_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[30]_i_1_n_0 ;
  wire \data[30]_i_2_n_0 ;
  wire \data[30]_i_4_n_0 ;
  wire \data[31]_i_1_n_0 ;
  wire \data[31]_i_2_n_0 ;
  wire [0:0]\data[31]_i_3_0 ;
  wire [0:0]\data[31]_i_3_1 ;
  wire \data[31]_i_3_n_0 ;
  wire \data[31]_i_4_n_0 ;
  wire \data[31]_i_5_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire \data_reg[0]_0 ;
  wire \data_reg[10]_0 ;
  wire \data_reg[11]_0 ;
  wire \data_reg[12]_0 ;
  wire \data_reg[13]_0 ;
  wire \data_reg[14]_0 ;
  wire \data_reg[15]_0 ;
  wire \data_reg[16]_0 ;
  wire \data_reg[17]_0 ;
  wire \data_reg[18]_0 ;
  wire \data_reg[19]_0 ;
  wire \data_reg[1]_0 ;
  wire \data_reg[20]_0 ;
  wire \data_reg[21]_0 ;
  wire \data_reg[22]_0 ;
  wire \data_reg[23]_0 ;
  wire \data_reg[24]_0 ;
  wire \data_reg[25]_0 ;
  wire \data_reg[26]_0 ;
  wire \data_reg[27]_0 ;
  wire \data_reg[28]_0 ;
  wire \data_reg[29]_0 ;
  wire \data_reg[2]_0 ;
  wire \data_reg[30]_0 ;
  wire [31:0]\data_reg[31]_0 ;
  wire [0:0]\data_reg[31]_1 ;
  wire [0:0]\data_reg[31]_2 ;
  wire \data_reg[3]_0 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[6]_0 ;
  wire \data_reg[7]_0 ;
  wire \data_reg[8]_0 ;
  wire \data_reg[9]_0 ;
  wire [1:0]out0;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [3:2]sel0;

  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(s_axi_ctrl_arvalid),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axi_ctrl_rready),
        .I3(out0[1]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(s_axi_ctrl_arvalid),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(out0[0]),
        .I1(s_axi_ctrl_rready),
        .I2(out0[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SM_READ:010,SM_RESP:100,SM_IDLE:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "SM_READ:010,SM_RESP:100,SM_IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(out0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_READ:010,SM_RESP:100,SM_IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(out0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[0]),
        .Q(\addr_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[1]),
        .Q(\addr_r_reg[3]_0 [1]),
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
    .INIT(64'hFFFFF888F888F888)) 
    \data[0]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[0]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [0]),
        .I4(\data_reg[0]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[10]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[10]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [10]),
        .I4(\data_reg[10]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[11]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[11]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [11]),
        .I4(\data_reg[11]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[12]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[12]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [12]),
        .I4(\data_reg[12]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[13]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[13]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [13]),
        .I4(\data_reg[13]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[14]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[14]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [14]),
        .I4(\data_reg[14]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[15]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[15]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [15]),
        .I4(\data_reg[15]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[16]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[16]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [16]),
        .I4(\data_reg[16]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[17]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[17]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [17]),
        .I4(\data_reg[17]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[18]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[18]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [18]),
        .I4(\data_reg[18]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[19]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[19]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [19]),
        .I4(\data_reg[19]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[1]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [1]),
        .I4(\data_reg[1]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[20]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[20]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [20]),
        .I4(\data_reg[20]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[21]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[21]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [21]),
        .I4(\data_reg[21]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[22]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[22]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [22]),
        .I4(\data_reg[22]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[23]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[23]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [23]),
        .I4(\data_reg[23]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[24]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[24]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [24]),
        .I4(\data_reg[24]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[25]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[25]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [25]),
        .I4(\data_reg[25]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[26]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[26]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [26]),
        .I4(\data_reg[26]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[27]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[27]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [27]),
        .I4(\data_reg[27]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[28]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[28]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [28]),
        .I4(\data_reg[28]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[29]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[29]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [29]),
        .I4(\data_reg[29]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[2]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [2]),
        .I4(\data_reg[2]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[30]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[30]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [30]),
        .I4(\data_reg[30]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \data[30]_i_2 
       (.I0(\addr_r_reg[3]_0 [1]),
        .I1(\addr_r_reg[3]_0 [0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\addr_r_reg_n_0_[6] ),
        .O(\data[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \data[30]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(\addr_r_reg_n_0_[6] ),
        .O(\data[30]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \data[31]_i_1 
       (.I0(\addr_r_reg_n_0_[6] ),
        .I1(\data[31]_i_2_n_0 ),
        .I2(\data[31]_i_3_n_0 ),
        .I3(Q[31]),
        .I4(\data[31]_i_4_n_0 ),
        .O(\data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAFAAAEAA)) 
    \data[31]_i_2 
       (.I0(sel0[3]),
        .I1(\data_reg[31]_0 [31]),
        .I2(\addr_r_reg[3]_0 [1]),
        .I3(sel0[2]),
        .I4(\addr_r_reg[3]_0 [0]),
        .O(\data[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF0C0000FFA0)) 
    \data[31]_i_3 
       (.I0(\data_reg[31]_1 ),
        .I1(\data_reg[31]_2 ),
        .I2(\addr_r_reg[3]_0 [0]),
        .I3(\data[31]_i_5_n_0 ),
        .I4(sel0[2]),
        .I5(\addr_r_reg[3]_0 [1]),
        .O(\data[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \data[31]_i_4 
       (.I0(\addr_r_reg[3]_0 [1]),
        .I1(\addr_r_reg[3]_0 [0]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(\addr_r_reg_n_0_[6] ),
        .O(\data[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFA00AAEE)) 
    \data[31]_i_5 
       (.I0(sel0[2]),
        .I1(\data[31]_i_3_0 ),
        .I2(\data[31]_i_3_1 ),
        .I3(\addr_r_reg[3]_0 [1]),
        .I4(\addr_r_reg[3]_0 [0]),
        .O(\data[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[3]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[3]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [3]),
        .I4(\data_reg[3]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[4]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [4]),
        .I4(\data_reg[4]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[5]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [5]),
        .I4(\data_reg[5]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[6]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [6]),
        .I4(\data_reg[6]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[7]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[7]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [7]),
        .I4(\data_reg[7]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[8]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[8]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [8]),
        .I4(\data_reg[8]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \data[9]_i_1 
       (.I0(\data[31]_i_4_n_0 ),
        .I1(Q[9]),
        .I2(\data[30]_i_2_n_0 ),
        .I3(\data_reg[31]_0 [9]),
        .I4(\data_reg[9]_0 ),
        .I5(\data[30]_i_4_n_0 ),
        .O(\data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[0]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[10]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[11]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[12]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[13]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[14]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[15]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[16]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[17]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[18]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[19]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[20]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[21]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[22]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[23]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[24]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[25]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[26]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[27]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[28]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[29]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[30]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[31]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[4]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[5]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[6]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[7]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[8]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(out0[0]),
        .D(\data[9]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axi_ctrl_top" *) 
module top_xbar_4_axis_switch_v1_1_18_axi_ctrl_top
   (\gen_reg[0].reg_data_reg[31] ,
    Q,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[1].reg_data_reg[35] ,
    \gen_reg[2].reg_data_reg[95] ,
    \gen_reg[2].reg_data_reg[67] ,
    \gen_reg[3].reg_data_reg[127] ,
    \gen_reg[3].reg_data_reg[99] ,
    \gen_reg[4].reg_data_reg[159] ,
    \gen_reg[4].reg_data_reg[131] ,
    \gen_reg[0].reg_data_reg[1] ,
    \state_reg[1] ,
    s_axi_ctrl_rdata,
    \FSM_onehot_state_reg[2] ,
    s_axi_ctrl_bready,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_awvalid,
    \gen_reg[0].reg_data_reg[0] ,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready);
  output \gen_reg[0].reg_data_reg[31] ;
  output [3:0]Q;
  output \gen_reg[1].reg_data_reg[63] ;
  output [3:0]\gen_reg[1].reg_data_reg[35] ;
  output \gen_reg[2].reg_data_reg[95] ;
  output [3:0]\gen_reg[2].reg_data_reg[67] ;
  output \gen_reg[3].reg_data_reg[127] ;
  output [3:0]\gen_reg[3].reg_data_reg[99] ;
  output \gen_reg[4].reg_data_reg[159] ;
  output [3:0]\gen_reg[4].reg_data_reg[131] ;
  output [0:0]\gen_reg[0].reg_data_reg[1] ;
  output [1:0]\state_reg[1] ;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]\FSM_onehot_state_reg[2] ;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_awvalid;
  input [0:0]\gen_reg[0].reg_data_reg[0] ;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;

  wire [1:0]\FSM_onehot_state_reg[2] ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [31:0]data_r;
  wire [31:0]\gen_reg[0].reg_data_reg ;
  wire [0:0]\gen_reg[0].reg_data_reg[0] ;
  wire [0:0]\gen_reg[0].reg_data_reg[1] ;
  wire \gen_reg[0].reg_data_reg_31_sn_1 ;
  wire [31:31]\gen_reg[0].reg_data_reg__0 ;
  wire [31:31]\gen_reg[1].reg_data_reg ;
  wire [3:0]\gen_reg[1].reg_data_reg[35] ;
  wire \gen_reg[1].reg_data_reg[63] ;
  wire [31:31]\gen_reg[2].reg_data_reg ;
  wire [3:0]\gen_reg[2].reg_data_reg[67] ;
  wire \gen_reg[2].reg_data_reg[95] ;
  wire [31:31]\gen_reg[3].reg_data_reg ;
  wire \gen_reg[3].reg_data_reg[127] ;
  wire [3:0]\gen_reg[3].reg_data_reg[99] ;
  wire [31:4]\gen_reg[4].reg_data_reg ;
  wire [3:0]\gen_reg[4].reg_data_reg[131] ;
  wire \gen_reg[4].reg_data_reg[159] ;
  wire inst_axi_ctrl_write_n_2;
  wire inst_axi_ctrl_write_n_3;
  wire inst_reg_bank_1_n_57;
  wire inst_reg_bank_1_n_58;
  wire inst_reg_bank_1_n_59;
  wire inst_reg_bank_1_n_60;
  wire inst_reg_bank_1_n_61;
  wire inst_reg_bank_1_n_62;
  wire inst_reg_bank_1_n_63;
  wire inst_reg_bank_1_n_64;
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
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire [31:0]rb0_wdata;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [1:0]sel0;
  wire [1:0]\state_reg[1] ;

  assign \gen_reg[0].reg_data_reg[31]  = \gen_reg[0].reg_data_reg_31_sn_1 ;
  top_xbar_4_axis_switch_v1_1_18_axi_ctrl_read inst_axi_ctrl_read
       (.Q({\gen_reg[0].reg_data_reg [31:2],\gen_reg[0].reg_data_reg[1] ,\gen_reg[0].reg_data_reg [0]}),
        .SR(SR),
        .\addr_r_reg[3]_0 (sel0),
        .\data[31]_i_3_0 (\gen_reg[0].reg_data_reg__0 ),
        .\data[31]_i_3_1 (\gen_reg[3].reg_data_reg ),
        .\data_reg[0]_0 (inst_reg_bank_1_n_57),
        .\data_reg[10]_0 (inst_reg_bank_1_n_67),
        .\data_reg[11]_0 (inst_reg_bank_1_n_68),
        .\data_reg[12]_0 (inst_reg_bank_1_n_69),
        .\data_reg[13]_0 (inst_reg_bank_1_n_70),
        .\data_reg[14]_0 (inst_reg_bank_1_n_71),
        .\data_reg[15]_0 (inst_reg_bank_1_n_72),
        .\data_reg[16]_0 (inst_reg_bank_1_n_73),
        .\data_reg[17]_0 (inst_reg_bank_1_n_74),
        .\data_reg[18]_0 (inst_reg_bank_1_n_75),
        .\data_reg[19]_0 (inst_reg_bank_1_n_76),
        .\data_reg[1]_0 (inst_reg_bank_1_n_58),
        .\data_reg[20]_0 (inst_reg_bank_1_n_77),
        .\data_reg[21]_0 (inst_reg_bank_1_n_78),
        .\data_reg[22]_0 (inst_reg_bank_1_n_79),
        .\data_reg[23]_0 (inst_reg_bank_1_n_80),
        .\data_reg[24]_0 (inst_reg_bank_1_n_81),
        .\data_reg[25]_0 (inst_reg_bank_1_n_82),
        .\data_reg[26]_0 (inst_reg_bank_1_n_83),
        .\data_reg[27]_0 (inst_reg_bank_1_n_84),
        .\data_reg[28]_0 (inst_reg_bank_1_n_85),
        .\data_reg[29]_0 (inst_reg_bank_1_n_86),
        .\data_reg[2]_0 (inst_reg_bank_1_n_59),
        .\data_reg[30]_0 (inst_reg_bank_1_n_87),
        .\data_reg[31]_0 ({\gen_reg[4].reg_data_reg ,\gen_reg[4].reg_data_reg[131] }),
        .\data_reg[31]_1 (\gen_reg[1].reg_data_reg ),
        .\data_reg[31]_2 (\gen_reg[2].reg_data_reg ),
        .\data_reg[3]_0 (inst_reg_bank_1_n_60),
        .\data_reg[4]_0 (inst_reg_bank_1_n_61),
        .\data_reg[5]_0 (inst_reg_bank_1_n_62),
        .\data_reg[6]_0 (inst_reg_bank_1_n_63),
        .\data_reg[7]_0 (inst_reg_bank_1_n_64),
        .\data_reg[8]_0 (inst_reg_bank_1_n_65),
        .\data_reg[9]_0 (inst_reg_bank_1_n_66),
        .out0(\FSM_onehot_state_reg[2] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready));
  top_xbar_4_axis_switch_v1_1_18_axi_ctrl_write inst_axi_ctrl_write
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_2),
        .Q(\gen_reg[0].reg_data_reg[1] ),
        .SR(SR),
        .\addr_r_reg[2]_0 (p_3_in),
        .\addr_r_reg[2]_1 (p_2_in),
        .\addr_r_reg[2]_2 (p_1_in),
        .\addr_r_reg[4]_0 (p_0_in),
        .\data_r_reg[31]_0 (data_r),
        .\gen_reg[0].reg_data_reg[0] (\gen_reg[0].reg_data_reg[0] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\state_reg[0]_0 (inst_axi_ctrl_write_n_3),
        .\state_reg[1]_0 (\state_reg[1] ));
  top_xbar_4_axis_switch_v1_1_18_reg_bank_16x32 inst_reg_bank_0
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_2),
        .Q({\gen_reg[0].reg_data_reg [31:2],\gen_reg[0].reg_data_reg[1] ,\gen_reg[0].reg_data_reg [0]}),
        .SR(SR),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
  top_xbar_4_axis_switch_v1_1_18_reg_bank_16x32__parameterized0 inst_reg_bank_1
       (.D(data_r),
        .E(inst_axi_ctrl_write_n_3),
        .Q({\gen_reg[0].reg_data_reg__0 ,Q}),
        .SR(SR),
        .\data_reg[0] (sel0),
        .\gen_reg[0].reg_data_reg[31]_0 (\gen_reg[0].reg_data_reg_31_sn_1 ),
        .\gen_reg[1].reg_data_reg[32]_0 (inst_reg_bank_1_n_57),
        .\gen_reg[1].reg_data_reg[33]_0 (inst_reg_bank_1_n_58),
        .\gen_reg[1].reg_data_reg[34]_0 (inst_reg_bank_1_n_59),
        .\gen_reg[1].reg_data_reg[35]_0 (inst_reg_bank_1_n_60),
        .\gen_reg[1].reg_data_reg[36]_0 (inst_reg_bank_1_n_61),
        .\gen_reg[1].reg_data_reg[37]_0 (inst_reg_bank_1_n_62),
        .\gen_reg[1].reg_data_reg[38]_0 (inst_reg_bank_1_n_63),
        .\gen_reg[1].reg_data_reg[39]_0 (inst_reg_bank_1_n_64),
        .\gen_reg[1].reg_data_reg[40]_0 (inst_reg_bank_1_n_65),
        .\gen_reg[1].reg_data_reg[41]_0 (inst_reg_bank_1_n_66),
        .\gen_reg[1].reg_data_reg[42]_0 (inst_reg_bank_1_n_67),
        .\gen_reg[1].reg_data_reg[43]_0 (inst_reg_bank_1_n_68),
        .\gen_reg[1].reg_data_reg[44]_0 (inst_reg_bank_1_n_69),
        .\gen_reg[1].reg_data_reg[45]_0 (inst_reg_bank_1_n_70),
        .\gen_reg[1].reg_data_reg[46]_0 (inst_reg_bank_1_n_71),
        .\gen_reg[1].reg_data_reg[47]_0 (inst_reg_bank_1_n_72),
        .\gen_reg[1].reg_data_reg[48]_0 (inst_reg_bank_1_n_73),
        .\gen_reg[1].reg_data_reg[49]_0 (inst_reg_bank_1_n_74),
        .\gen_reg[1].reg_data_reg[50]_0 (inst_reg_bank_1_n_75),
        .\gen_reg[1].reg_data_reg[51]_0 (inst_reg_bank_1_n_76),
        .\gen_reg[1].reg_data_reg[52]_0 (inst_reg_bank_1_n_77),
        .\gen_reg[1].reg_data_reg[53]_0 (inst_reg_bank_1_n_78),
        .\gen_reg[1].reg_data_reg[54]_0 (inst_reg_bank_1_n_79),
        .\gen_reg[1].reg_data_reg[55]_0 (inst_reg_bank_1_n_80),
        .\gen_reg[1].reg_data_reg[56]_0 (inst_reg_bank_1_n_81),
        .\gen_reg[1].reg_data_reg[57]_0 (inst_reg_bank_1_n_82),
        .\gen_reg[1].reg_data_reg[58]_0 (inst_reg_bank_1_n_83),
        .\gen_reg[1].reg_data_reg[59]_0 (inst_reg_bank_1_n_84),
        .\gen_reg[1].reg_data_reg[60]_0 (inst_reg_bank_1_n_85),
        .\gen_reg[1].reg_data_reg[61]_0 (inst_reg_bank_1_n_86),
        .\gen_reg[1].reg_data_reg[62]_0 (inst_reg_bank_1_n_87),
        .\gen_reg[1].reg_data_reg[63]_0 (\gen_reg[1].reg_data_reg[63] ),
        .\gen_reg[1].reg_data_reg[63]_1 ({\gen_reg[1].reg_data_reg ,\gen_reg[1].reg_data_reg[35] }),
        .\gen_reg[1].reg_data_reg[63]_2 (p_3_in),
        .\gen_reg[2].reg_data_reg[95]_0 (\gen_reg[2].reg_data_reg[95] ),
        .\gen_reg[2].reg_data_reg[95]_1 ({\gen_reg[2].reg_data_reg ,\gen_reg[2].reg_data_reg[67] }),
        .\gen_reg[2].reg_data_reg[95]_2 (p_2_in),
        .\gen_reg[3].reg_data_reg[127]_0 (\gen_reg[3].reg_data_reg[127] ),
        .\gen_reg[3].reg_data_reg[127]_1 ({\gen_reg[3].reg_data_reg ,\gen_reg[3].reg_data_reg[99] }),
        .\gen_reg[3].reg_data_reg[127]_2 (p_1_in),
        .\gen_reg[4].reg_data_reg[159]_0 (\gen_reg[4].reg_data_reg[159] ),
        .\gen_reg[4].reg_data_reg[159]_1 ({\gen_reg[4].reg_data_reg ,\gen_reg[4].reg_data_reg[131] }),
        .\gen_reg[4].reg_data_reg[159]_2 (p_0_in),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axi_ctrl_write" *) 
module top_xbar_4_axis_switch_v1_1_18_axi_ctrl_write
   (\state_reg[1]_0 ,
    E,
    \state_reg[0]_0 ,
    \addr_r_reg[4]_0 ,
    \addr_r_reg[2]_0 ,
    \addr_r_reg[2]_1 ,
    \addr_r_reg[2]_2 ,
    D,
    \data_r_reg[31]_0 ,
    Q,
    s_axi_ctrl_bready,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_awvalid,
    \gen_reg[0].reg_data_reg[0] ,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    SR,
    s_axi_ctrl_awaddr);
  output [1:0]\state_reg[1]_0 ;
  output [0:0]E;
  output [0:0]\state_reg[0]_0 ;
  output [0:0]\addr_r_reg[4]_0 ;
  output [0:0]\addr_r_reg[2]_0 ;
  output [0:0]\addr_r_reg[2]_1 ;
  output [0:0]\addr_r_reg[2]_2 ;
  output [31:0]D;
  output [31:0]\data_r_reg[31]_0 ;
  input [0:0]Q;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_awvalid;
  input [0:0]\gen_reg[0].reg_data_reg[0] ;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input [0:0]SR;
  input [4:0]s_axi_ctrl_awaddr;

  wire [31:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]\addr_r_reg[2]_0 ;
  wire [0:0]\addr_r_reg[2]_1 ;
  wire [0:0]\addr_r_reg[2]_2 ;
  wire [0:0]\addr_r_reg[4]_0 ;
  wire [31:0]\data_r_reg[31]_0 ;
  wire \gen_reg[0].reg_data[31]_i_3_n_0 ;
  wire [0:0]\gen_reg[0].reg_data_reg[0] ;
  wire p_0_in;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [2:0]state;
  wire [0:0]\state_reg[0]_0 ;
  wire [1:0]\state_reg[1]_0 ;
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
        .Q(\data_r_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\data_r_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\data_r_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\data_r_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\data_r_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\data_r_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\data_r_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\data_r_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\data_r_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\data_r_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\data_r_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\data_r_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\data_r_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\data_r_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\data_r_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\data_r_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\data_r_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\data_r_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\data_r_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\data_r_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\data_r_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\data_r_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\data_r_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\data_r_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\data_r_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\data_r_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\data_r_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\data_r_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\data_r_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\data_r_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\data_r_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\data_r_reg[31]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[0]_i_1 
       (.I0(\data_r_reg[31]_0 [0]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[10]_i_1 
       (.I0(\data_r_reg[31]_0 [10]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[11]_i_1 
       (.I0(\data_r_reg[31]_0 [11]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[12]_i_1 
       (.I0(\data_r_reg[31]_0 [12]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[13]_i_1 
       (.I0(\data_r_reg[31]_0 [13]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[14]_i_1 
       (.I0(\data_r_reg[31]_0 [14]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[15]_i_1 
       (.I0(\data_r_reg[31]_0 [15]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[16]_i_1 
       (.I0(\data_r_reg[31]_0 [16]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[17]_i_1 
       (.I0(\data_r_reg[31]_0 [17]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[18]_i_1 
       (.I0(\data_r_reg[31]_0 [18]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[19]_i_1 
       (.I0(\data_r_reg[31]_0 [19]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[1]_i_1 
       (.I0(\data_r_reg[31]_0 [1]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[20]_i_1 
       (.I0(\data_r_reg[31]_0 [20]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[21]_i_1 
       (.I0(\data_r_reg[31]_0 [21]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[22]_i_1 
       (.I0(\data_r_reg[31]_0 [22]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[23]_i_1 
       (.I0(\data_r_reg[31]_0 [23]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[24]_i_1 
       (.I0(\data_r_reg[31]_0 [24]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[25]_i_1 
       (.I0(\data_r_reg[31]_0 [25]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[26]_i_1 
       (.I0(\data_r_reg[31]_0 [26]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[27]_i_1 
       (.I0(\data_r_reg[31]_0 [27]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[28]_i_1 
       (.I0(\data_r_reg[31]_0 [28]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[29]_i_1 
       (.I0(\data_r_reg[31]_0 [29]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[2]_i_1 
       (.I0(\data_r_reg[31]_0 [2]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[30]_i_1 
       (.I0(\data_r_reg[31]_0 [30]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    \gen_reg[0].reg_data[31]_i_1 
       (.I0(\state_reg[1]_0 [0]),
        .I1(p_0_in),
        .I2(\gen_reg[0].reg_data_reg[0] ),
        .I3(\gen_reg[0].reg_data[31]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \gen_reg[0].reg_data[31]_i_1__0 
       (.I0(\state_reg[1]_0 [0]),
        .I1(p_0_in),
        .I2(write_addr[3]),
        .I3(write_addr[0]),
        .I4(write_addr[1]),
        .I5(write_addr[2]),
        .O(\state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[31]_i_2 
       (.I0(\data_r_reg[31]_0 [31]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \gen_reg[0].reg_data[31]_i_3 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(write_addr[3]),
        .I3(\gen_reg[0].reg_data_reg[0] ),
        .I4(write_addr[2]),
        .O(\gen_reg[0].reg_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[3]_i_1 
       (.I0(\data_r_reg[31]_0 [3]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[4]_i_1 
       (.I0(\data_r_reg[31]_0 [4]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[5]_i_1 
       (.I0(\data_r_reg[31]_0 [5]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[6]_i_1 
       (.I0(\data_r_reg[31]_0 [6]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[7]_i_1 
       (.I0(\data_r_reg[31]_0 [7]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[8]_i_1 
       (.I0(\data_r_reg[31]_0 [8]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[9]_i_1 
       (.I0(\data_r_reg[31]_0 [9]),
        .I1(\gen_reg[0].reg_data_reg[0] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \gen_reg[1].reg_data[63]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(write_addr[2]),
        .I3(write_addr[3]),
        .I4(p_0_in),
        .I5(\state_reg[1]_0 [0]),
        .O(\addr_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \gen_reg[2].reg_data[95]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(write_addr[2]),
        .I3(write_addr[3]),
        .I4(p_0_in),
        .I5(\state_reg[1]_0 [0]),
        .O(\addr_r_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \gen_reg[3].reg_data[127]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(write_addr[2]),
        .I3(write_addr[3]),
        .I4(p_0_in),
        .I5(\state_reg[1]_0 [0]),
        .O(\addr_r_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \gen_reg[4].reg_data[159]_i_1 
       (.I0(write_addr[2]),
        .I1(\state_reg[1]_0 [0]),
        .I2(p_0_in),
        .I3(write_addr[3]),
        .I4(write_addr[0]),
        .I5(write_addr[1]),
        .O(\addr_r_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \state[0]_i_1 
       (.I0(s_axi_ctrl_wvalid),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg[1]_0 [0]),
        .I3(\state_reg[1]_0 [1]),
        .I4(Q),
        .I5(s_axi_ctrl_awvalid),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00030044)) 
    \state[1]_i_1 
       (.I0(Q),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_axi_ctrl_bready),
        .I3(\state_reg[1]_0 [0]),
        .I4(\state_reg[1]_0 [1]),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h020C)) 
    \state[2]_i_1 
       (.I0(Q),
        .I1(\state_reg[1]_0 [0]),
        .I2(\state_reg[1]_0 [1]),
        .I3(\state_reg_n_0_[2] ),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(\state_reg[1]_0 [0]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg[1]_0 [1]),
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
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "91" *) (* C_AXIS_TDATA_WIDTH = "32" *) 
(* C_AXIS_TDEST_WIDTH = "3" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "1" *) (* C_FAMILY = "virtex7" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "3" *) (* C_M_AXIS_BASETDEST_ARRAY = "15'b100011010001000" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "25'b1111111111111111111111111" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "15'b100011010001000" *) (* C_NUM_MI_SLOTS = "5" *) 
(* C_NUM_SI_SLOTS = "5" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "1" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "50" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* ORIG_REF_NAME = "axis_switch_v1_1_18_axis_switch" *) (* P_DECODER_CONNECTIVITY_ARRAY = "25'b1111111111111111111111111" *) 
(* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "5'b00000" *) (* P_TPAYLOAD_WIDTH = "40" *) 
module top_xbar_4_axis_switch_v1_1_18_axis_switch
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
  input [4:0]s_axis_tvalid;
  output [4:0]s_axis_tready;
  input [159:0]s_axis_tdata;
  input [19:0]s_axis_tstrb;
  input [19:0]s_axis_tkeep;
  input [4:0]s_axis_tlast;
  input [4:0]s_axis_tid;
  input [14:0]s_axis_tdest;
  input [4:0]s_axis_tuser;
  output [4:0]m_axis_tvalid;
  input [4:0]m_axis_tready;
  output [159:0]m_axis_tdata;
  output [19:0]m_axis_tstrb;
  output [19:0]m_axis_tkeep;
  output [4:0]m_axis_tlast;
  output [4:0]m_axis_tid;
  output [14:0]m_axis_tdest;
  output [4:0]m_axis_tuser;
  output [24:0]arb_req;
  output [4:0]arb_done;
  input [24:0]arb_gnt;
  input [14:0]arb_sel;
  output [24:0]arb_last;
  output [24:0]arb_id;
  output [74:0]arb_dest;
  output [24:0]arb_user;
  input [4:0]s_req_suppress;
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
  output [4:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire \gen_decoder[1].axisc_decoder_0_n_0 ;
  wire \gen_decoder[1].axisc_decoder_0_n_1 ;
  wire \gen_decoder[1].axisc_decoder_0_n_10 ;
  wire \gen_decoder[1].axisc_decoder_0_n_100 ;
  wire \gen_decoder[1].axisc_decoder_0_n_101 ;
  wire \gen_decoder[1].axisc_decoder_0_n_102 ;
  wire \gen_decoder[1].axisc_decoder_0_n_103 ;
  wire \gen_decoder[1].axisc_decoder_0_n_104 ;
  wire \gen_decoder[1].axisc_decoder_0_n_105 ;
  wire \gen_decoder[1].axisc_decoder_0_n_106 ;
  wire \gen_decoder[1].axisc_decoder_0_n_107 ;
  wire \gen_decoder[1].axisc_decoder_0_n_108 ;
  wire \gen_decoder[1].axisc_decoder_0_n_109 ;
  wire \gen_decoder[1].axisc_decoder_0_n_11 ;
  wire \gen_decoder[1].axisc_decoder_0_n_110 ;
  wire \gen_decoder[1].axisc_decoder_0_n_111 ;
  wire \gen_decoder[1].axisc_decoder_0_n_112 ;
  wire \gen_decoder[1].axisc_decoder_0_n_113 ;
  wire \gen_decoder[1].axisc_decoder_0_n_114 ;
  wire \gen_decoder[1].axisc_decoder_0_n_115 ;
  wire \gen_decoder[1].axisc_decoder_0_n_116 ;
  wire \gen_decoder[1].axisc_decoder_0_n_117 ;
  wire \gen_decoder[1].axisc_decoder_0_n_118 ;
  wire \gen_decoder[1].axisc_decoder_0_n_119 ;
  wire \gen_decoder[1].axisc_decoder_0_n_12 ;
  wire \gen_decoder[1].axisc_decoder_0_n_120 ;
  wire \gen_decoder[1].axisc_decoder_0_n_121 ;
  wire \gen_decoder[1].axisc_decoder_0_n_122 ;
  wire \gen_decoder[1].axisc_decoder_0_n_123 ;
  wire \gen_decoder[1].axisc_decoder_0_n_124 ;
  wire \gen_decoder[1].axisc_decoder_0_n_125 ;
  wire \gen_decoder[1].axisc_decoder_0_n_126 ;
  wire \gen_decoder[1].axisc_decoder_0_n_127 ;
  wire \gen_decoder[1].axisc_decoder_0_n_128 ;
  wire \gen_decoder[1].axisc_decoder_0_n_129 ;
  wire \gen_decoder[1].axisc_decoder_0_n_13 ;
  wire \gen_decoder[1].axisc_decoder_0_n_130 ;
  wire \gen_decoder[1].axisc_decoder_0_n_131 ;
  wire \gen_decoder[1].axisc_decoder_0_n_132 ;
  wire \gen_decoder[1].axisc_decoder_0_n_133 ;
  wire \gen_decoder[1].axisc_decoder_0_n_134 ;
  wire \gen_decoder[1].axisc_decoder_0_n_135 ;
  wire \gen_decoder[1].axisc_decoder_0_n_136 ;
  wire \gen_decoder[1].axisc_decoder_0_n_137 ;
  wire \gen_decoder[1].axisc_decoder_0_n_138 ;
  wire \gen_decoder[1].axisc_decoder_0_n_139 ;
  wire \gen_decoder[1].axisc_decoder_0_n_14 ;
  wire \gen_decoder[1].axisc_decoder_0_n_140 ;
  wire \gen_decoder[1].axisc_decoder_0_n_141 ;
  wire \gen_decoder[1].axisc_decoder_0_n_142 ;
  wire \gen_decoder[1].axisc_decoder_0_n_143 ;
  wire \gen_decoder[1].axisc_decoder_0_n_144 ;
  wire \gen_decoder[1].axisc_decoder_0_n_145 ;
  wire \gen_decoder[1].axisc_decoder_0_n_146 ;
  wire \gen_decoder[1].axisc_decoder_0_n_147 ;
  wire \gen_decoder[1].axisc_decoder_0_n_148 ;
  wire \gen_decoder[1].axisc_decoder_0_n_149 ;
  wire \gen_decoder[1].axisc_decoder_0_n_15 ;
  wire \gen_decoder[1].axisc_decoder_0_n_150 ;
  wire \gen_decoder[1].axisc_decoder_0_n_151 ;
  wire \gen_decoder[1].axisc_decoder_0_n_152 ;
  wire \gen_decoder[1].axisc_decoder_0_n_153 ;
  wire \gen_decoder[1].axisc_decoder_0_n_154 ;
  wire \gen_decoder[1].axisc_decoder_0_n_155 ;
  wire \gen_decoder[1].axisc_decoder_0_n_156 ;
  wire \gen_decoder[1].axisc_decoder_0_n_157 ;
  wire \gen_decoder[1].axisc_decoder_0_n_158 ;
  wire \gen_decoder[1].axisc_decoder_0_n_159 ;
  wire \gen_decoder[1].axisc_decoder_0_n_16 ;
  wire \gen_decoder[1].axisc_decoder_0_n_160 ;
  wire \gen_decoder[1].axisc_decoder_0_n_161 ;
  wire \gen_decoder[1].axisc_decoder_0_n_162 ;
  wire \gen_decoder[1].axisc_decoder_0_n_163 ;
  wire \gen_decoder[1].axisc_decoder_0_n_164 ;
  wire \gen_decoder[1].axisc_decoder_0_n_165 ;
  wire \gen_decoder[1].axisc_decoder_0_n_166 ;
  wire \gen_decoder[1].axisc_decoder_0_n_167 ;
  wire \gen_decoder[1].axisc_decoder_0_n_168 ;
  wire \gen_decoder[1].axisc_decoder_0_n_169 ;
  wire \gen_decoder[1].axisc_decoder_0_n_17 ;
  wire \gen_decoder[1].axisc_decoder_0_n_170 ;
  wire \gen_decoder[1].axisc_decoder_0_n_171 ;
  wire \gen_decoder[1].axisc_decoder_0_n_172 ;
  wire \gen_decoder[1].axisc_decoder_0_n_173 ;
  wire \gen_decoder[1].axisc_decoder_0_n_174 ;
  wire \gen_decoder[1].axisc_decoder_0_n_175 ;
  wire \gen_decoder[1].axisc_decoder_0_n_176 ;
  wire \gen_decoder[1].axisc_decoder_0_n_177 ;
  wire \gen_decoder[1].axisc_decoder_0_n_178 ;
  wire \gen_decoder[1].axisc_decoder_0_n_179 ;
  wire \gen_decoder[1].axisc_decoder_0_n_18 ;
  wire \gen_decoder[1].axisc_decoder_0_n_180 ;
  wire \gen_decoder[1].axisc_decoder_0_n_181 ;
  wire \gen_decoder[1].axisc_decoder_0_n_182 ;
  wire \gen_decoder[1].axisc_decoder_0_n_183 ;
  wire \gen_decoder[1].axisc_decoder_0_n_184 ;
  wire \gen_decoder[1].axisc_decoder_0_n_185 ;
  wire \gen_decoder[1].axisc_decoder_0_n_186 ;
  wire \gen_decoder[1].axisc_decoder_0_n_187 ;
  wire \gen_decoder[1].axisc_decoder_0_n_188 ;
  wire \gen_decoder[1].axisc_decoder_0_n_189 ;
  wire \gen_decoder[1].axisc_decoder_0_n_19 ;
  wire \gen_decoder[1].axisc_decoder_0_n_190 ;
  wire \gen_decoder[1].axisc_decoder_0_n_191 ;
  wire \gen_decoder[1].axisc_decoder_0_n_192 ;
  wire \gen_decoder[1].axisc_decoder_0_n_193 ;
  wire \gen_decoder[1].axisc_decoder_0_n_194 ;
  wire \gen_decoder[1].axisc_decoder_0_n_195 ;
  wire \gen_decoder[1].axisc_decoder_0_n_196 ;
  wire \gen_decoder[1].axisc_decoder_0_n_197 ;
  wire \gen_decoder[1].axisc_decoder_0_n_198 ;
  wire \gen_decoder[1].axisc_decoder_0_n_199 ;
  wire \gen_decoder[1].axisc_decoder_0_n_2 ;
  wire \gen_decoder[1].axisc_decoder_0_n_20 ;
  wire \gen_decoder[1].axisc_decoder_0_n_200 ;
  wire \gen_decoder[1].axisc_decoder_0_n_201 ;
  wire \gen_decoder[1].axisc_decoder_0_n_202 ;
  wire \gen_decoder[1].axisc_decoder_0_n_203 ;
  wire \gen_decoder[1].axisc_decoder_0_n_204 ;
  wire \gen_decoder[1].axisc_decoder_0_n_205 ;
  wire \gen_decoder[1].axisc_decoder_0_n_21 ;
  wire \gen_decoder[1].axisc_decoder_0_n_22 ;
  wire \gen_decoder[1].axisc_decoder_0_n_23 ;
  wire \gen_decoder[1].axisc_decoder_0_n_24 ;
  wire \gen_decoder[1].axisc_decoder_0_n_25 ;
  wire \gen_decoder[1].axisc_decoder_0_n_26 ;
  wire \gen_decoder[1].axisc_decoder_0_n_27 ;
  wire \gen_decoder[1].axisc_decoder_0_n_28 ;
  wire \gen_decoder[1].axisc_decoder_0_n_29 ;
  wire \gen_decoder[1].axisc_decoder_0_n_3 ;
  wire \gen_decoder[1].axisc_decoder_0_n_30 ;
  wire \gen_decoder[1].axisc_decoder_0_n_31 ;
  wire \gen_decoder[1].axisc_decoder_0_n_32 ;
  wire \gen_decoder[1].axisc_decoder_0_n_33 ;
  wire \gen_decoder[1].axisc_decoder_0_n_34 ;
  wire \gen_decoder[1].axisc_decoder_0_n_35 ;
  wire \gen_decoder[1].axisc_decoder_0_n_36 ;
  wire \gen_decoder[1].axisc_decoder_0_n_37 ;
  wire \gen_decoder[1].axisc_decoder_0_n_38 ;
  wire \gen_decoder[1].axisc_decoder_0_n_39 ;
  wire \gen_decoder[1].axisc_decoder_0_n_4 ;
  wire \gen_decoder[1].axisc_decoder_0_n_40 ;
  wire \gen_decoder[1].axisc_decoder_0_n_41 ;
  wire \gen_decoder[1].axisc_decoder_0_n_42 ;
  wire \gen_decoder[1].axisc_decoder_0_n_43 ;
  wire \gen_decoder[1].axisc_decoder_0_n_44 ;
  wire \gen_decoder[1].axisc_decoder_0_n_45 ;
  wire \gen_decoder[1].axisc_decoder_0_n_46 ;
  wire \gen_decoder[1].axisc_decoder_0_n_47 ;
  wire \gen_decoder[1].axisc_decoder_0_n_48 ;
  wire \gen_decoder[1].axisc_decoder_0_n_49 ;
  wire \gen_decoder[1].axisc_decoder_0_n_5 ;
  wire \gen_decoder[1].axisc_decoder_0_n_50 ;
  wire \gen_decoder[1].axisc_decoder_0_n_51 ;
  wire \gen_decoder[1].axisc_decoder_0_n_52 ;
  wire \gen_decoder[1].axisc_decoder_0_n_53 ;
  wire \gen_decoder[1].axisc_decoder_0_n_54 ;
  wire \gen_decoder[1].axisc_decoder_0_n_55 ;
  wire \gen_decoder[1].axisc_decoder_0_n_56 ;
  wire \gen_decoder[1].axisc_decoder_0_n_57 ;
  wire \gen_decoder[1].axisc_decoder_0_n_58 ;
  wire \gen_decoder[1].axisc_decoder_0_n_59 ;
  wire \gen_decoder[1].axisc_decoder_0_n_6 ;
  wire \gen_decoder[1].axisc_decoder_0_n_60 ;
  wire \gen_decoder[1].axisc_decoder_0_n_61 ;
  wire \gen_decoder[1].axisc_decoder_0_n_62 ;
  wire \gen_decoder[1].axisc_decoder_0_n_63 ;
  wire \gen_decoder[1].axisc_decoder_0_n_64 ;
  wire \gen_decoder[1].axisc_decoder_0_n_65 ;
  wire \gen_decoder[1].axisc_decoder_0_n_66 ;
  wire \gen_decoder[1].axisc_decoder_0_n_67 ;
  wire \gen_decoder[1].axisc_decoder_0_n_68 ;
  wire \gen_decoder[1].axisc_decoder_0_n_69 ;
  wire \gen_decoder[1].axisc_decoder_0_n_7 ;
  wire \gen_decoder[1].axisc_decoder_0_n_70 ;
  wire \gen_decoder[1].axisc_decoder_0_n_71 ;
  wire \gen_decoder[1].axisc_decoder_0_n_72 ;
  wire \gen_decoder[1].axisc_decoder_0_n_73 ;
  wire \gen_decoder[1].axisc_decoder_0_n_74 ;
  wire \gen_decoder[1].axisc_decoder_0_n_75 ;
  wire \gen_decoder[1].axisc_decoder_0_n_76 ;
  wire \gen_decoder[1].axisc_decoder_0_n_77 ;
  wire \gen_decoder[1].axisc_decoder_0_n_78 ;
  wire \gen_decoder[1].axisc_decoder_0_n_79 ;
  wire \gen_decoder[1].axisc_decoder_0_n_8 ;
  wire \gen_decoder[1].axisc_decoder_0_n_80 ;
  wire \gen_decoder[1].axisc_decoder_0_n_81 ;
  wire \gen_decoder[1].axisc_decoder_0_n_82 ;
  wire \gen_decoder[1].axisc_decoder_0_n_83 ;
  wire \gen_decoder[1].axisc_decoder_0_n_84 ;
  wire \gen_decoder[1].axisc_decoder_0_n_85 ;
  wire \gen_decoder[1].axisc_decoder_0_n_86 ;
  wire \gen_decoder[1].axisc_decoder_0_n_87 ;
  wire \gen_decoder[1].axisc_decoder_0_n_88 ;
  wire \gen_decoder[1].axisc_decoder_0_n_89 ;
  wire \gen_decoder[1].axisc_decoder_0_n_9 ;
  wire \gen_decoder[1].axisc_decoder_0_n_90 ;
  wire \gen_decoder[1].axisc_decoder_0_n_91 ;
  wire \gen_decoder[1].axisc_decoder_0_n_92 ;
  wire \gen_decoder[1].axisc_decoder_0_n_93 ;
  wire \gen_decoder[1].axisc_decoder_0_n_94 ;
  wire \gen_decoder[1].axisc_decoder_0_n_95 ;
  wire \gen_decoder[1].axisc_decoder_0_n_96 ;
  wire \gen_decoder[1].axisc_decoder_0_n_97 ;
  wire \gen_decoder[1].axisc_decoder_0_n_98 ;
  wire \gen_decoder[1].axisc_decoder_0_n_99 ;
  wire \gen_static_router.ctrl_ack ;
  wire [49:0]\gen_static_router.ctrl_reg ;
  wire \gen_static_router.ctrl_req ;
  wire \gen_static_router.ctrl_soft_reset ;
  wire [49:0]\gen_static_router.gen_synch.cdc_handshake_data_out ;
  wire \gen_static_router.gen_synch.cdc_handshake_data_valid ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ;
  wire \gen_static_router.s_axi_ctrl_areset ;
  wire \gen_static_router.s_axi_ctrl_areset_i_1_n_0 ;
  wire [159:0]m_axis_tdata;
  wire \m_axis_tdata[127]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_0 ;
  wire [14:0]m_axis_tdest;
  wire [19:0]m_axis_tkeep;
  wire [4:0]m_axis_tlast;
  wire [4:0]m_axis_tready;
  wire [4:0]m_axis_tvalid;
  wire mi_enable;
  wire [3:0]mux_tvalid;
  wire p_0_in;
  wire [39:0]p_12_out;
  wire [39:0]p_22_out;
  wire [39:0]p_7_out;
  wire s_axi_ctrl_aclk;
  wire [6:0]s_axi_ctrl_araddr;
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
  wire [159:0]s_axis_tdata;
  wire [14:0]s_axis_tdest;
  wire [19:0]s_axis_tkeep;
  wire [4:0]s_axis_tlast;
  wire [4:0]s_axis_tready;
  wire [4:0]s_axis_tvalid;
  wire [3:0]sel0;
  wire [4:0]si_enable;

  assign arb_dest[74] = \<const0> ;
  assign arb_dest[73] = \<const0> ;
  assign arb_dest[72] = \<const0> ;
  assign arb_dest[71] = \<const0> ;
  assign arb_dest[70] = \<const0> ;
  assign arb_dest[69] = \<const0> ;
  assign arb_dest[68] = \<const0> ;
  assign arb_dest[67] = \<const0> ;
  assign arb_dest[66] = \<const0> ;
  assign arb_dest[65] = \<const0> ;
  assign arb_dest[64] = \<const0> ;
  assign arb_dest[63] = \<const0> ;
  assign arb_dest[62] = \<const0> ;
  assign arb_dest[61] = \<const0> ;
  assign arb_dest[60] = \<const0> ;
  assign arb_dest[59] = \<const0> ;
  assign arb_dest[58] = \<const0> ;
  assign arb_dest[57] = \<const0> ;
  assign arb_dest[56] = \<const0> ;
  assign arb_dest[55] = \<const0> ;
  assign arb_dest[54] = \<const0> ;
  assign arb_dest[53] = \<const0> ;
  assign arb_dest[52] = \<const0> ;
  assign arb_dest[51] = \<const0> ;
  assign arb_dest[50] = \<const0> ;
  assign arb_dest[49] = \<const0> ;
  assign arb_dest[48] = \<const0> ;
  assign arb_dest[47] = \<const0> ;
  assign arb_dest[46] = \<const0> ;
  assign arb_dest[45] = \<const0> ;
  assign arb_dest[44] = \<const0> ;
  assign arb_dest[43] = \<const0> ;
  assign arb_dest[42] = \<const0> ;
  assign arb_dest[41] = \<const0> ;
  assign arb_dest[40] = \<const0> ;
  assign arb_dest[39] = \<const0> ;
  assign arb_dest[38] = \<const0> ;
  assign arb_dest[37] = \<const0> ;
  assign arb_dest[36] = \<const0> ;
  assign arb_dest[35] = \<const0> ;
  assign arb_dest[34] = \<const0> ;
  assign arb_dest[33] = \<const0> ;
  assign arb_dest[32] = \<const0> ;
  assign arb_dest[31] = \<const0> ;
  assign arb_dest[30] = \<const0> ;
  assign arb_dest[29] = \<const0> ;
  assign arb_dest[28] = \<const0> ;
  assign arb_dest[27] = \<const0> ;
  assign arb_dest[26] = \<const0> ;
  assign arb_dest[25] = \<const0> ;
  assign arb_dest[24] = \<const0> ;
  assign arb_dest[23] = \<const0> ;
  assign arb_dest[22] = \<const0> ;
  assign arb_dest[21] = \<const0> ;
  assign arb_dest[20] = \<const0> ;
  assign arb_dest[19] = \<const0> ;
  assign arb_dest[18] = \<const0> ;
  assign arb_dest[17] = \<const0> ;
  assign arb_dest[16] = \<const0> ;
  assign arb_dest[15] = \<const0> ;
  assign arb_dest[14] = \<const0> ;
  assign arb_dest[13] = \<const0> ;
  assign arb_dest[12] = \<const0> ;
  assign arb_dest[11] = \<const0> ;
  assign arb_dest[10] = \<const0> ;
  assign arb_dest[9] = \<const0> ;
  assign arb_dest[8] = \<const0> ;
  assign arb_dest[7] = \<const0> ;
  assign arb_dest[6] = \<const0> ;
  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[4] = \<const0> ;
  assign arb_done[3] = \<const0> ;
  assign arb_done[2] = \<const0> ;
  assign arb_done[1] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[24] = \<const0> ;
  assign arb_id[23] = \<const0> ;
  assign arb_id[22] = \<const0> ;
  assign arb_id[21] = \<const0> ;
  assign arb_id[20] = \<const0> ;
  assign arb_id[19] = \<const0> ;
  assign arb_id[18] = \<const0> ;
  assign arb_id[17] = \<const0> ;
  assign arb_id[16] = \<const0> ;
  assign arb_id[15] = \<const0> ;
  assign arb_id[14] = \<const0> ;
  assign arb_id[13] = \<const0> ;
  assign arb_id[12] = \<const0> ;
  assign arb_id[11] = \<const0> ;
  assign arb_id[10] = \<const0> ;
  assign arb_id[9] = \<const0> ;
  assign arb_id[8] = \<const0> ;
  assign arb_id[7] = \<const0> ;
  assign arb_id[6] = \<const0> ;
  assign arb_id[5] = \<const0> ;
  assign arb_id[4] = \<const0> ;
  assign arb_id[3] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[24] = \<const0> ;
  assign arb_last[23] = \<const0> ;
  assign arb_last[22] = \<const0> ;
  assign arb_last[21] = \<const0> ;
  assign arb_last[20] = \<const0> ;
  assign arb_last[19] = \<const0> ;
  assign arb_last[18] = \<const0> ;
  assign arb_last[17] = \<const0> ;
  assign arb_last[16] = \<const0> ;
  assign arb_last[15] = \<const0> ;
  assign arb_last[14] = \<const0> ;
  assign arb_last[13] = \<const0> ;
  assign arb_last[12] = \<const0> ;
  assign arb_last[11] = \<const0> ;
  assign arb_last[10] = \<const0> ;
  assign arb_last[9] = \<const0> ;
  assign arb_last[8] = \<const0> ;
  assign arb_last[7] = \<const0> ;
  assign arb_last[6] = \<const0> ;
  assign arb_last[5] = \<const0> ;
  assign arb_last[4] = \<const0> ;
  assign arb_last[3] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[24] = \<const0> ;
  assign arb_req[23] = \<const0> ;
  assign arb_req[22] = \<const0> ;
  assign arb_req[21] = \<const0> ;
  assign arb_req[20] = \<const0> ;
  assign arb_req[19] = \<const0> ;
  assign arb_req[18] = \<const0> ;
  assign arb_req[17] = \<const0> ;
  assign arb_req[16] = \<const0> ;
  assign arb_req[15] = \<const0> ;
  assign arb_req[14] = \<const0> ;
  assign arb_req[13] = \<const0> ;
  assign arb_req[12] = \<const0> ;
  assign arb_req[11] = \<const0> ;
  assign arb_req[10] = \<const0> ;
  assign arb_req[9] = \<const0> ;
  assign arb_req[8] = \<const0> ;
  assign arb_req[7] = \<const0> ;
  assign arb_req[6] = \<const0> ;
  assign arb_req[5] = \<const0> ;
  assign arb_req[4] = \<const0> ;
  assign arb_req[3] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[24] = \<const0> ;
  assign arb_user[23] = \<const0> ;
  assign arb_user[22] = \<const0> ;
  assign arb_user[21] = \<const0> ;
  assign arb_user[20] = \<const0> ;
  assign arb_user[19] = \<const0> ;
  assign arb_user[18] = \<const0> ;
  assign arb_user[17] = \<const0> ;
  assign arb_user[16] = \<const0> ;
  assign arb_user[15] = \<const0> ;
  assign arb_user[14] = \<const0> ;
  assign arb_user[13] = \<const0> ;
  assign arb_user[12] = \<const0> ;
  assign arb_user[11] = \<const0> ;
  assign arb_user[10] = \<const0> ;
  assign arb_user[9] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[19] = \<const0> ;
  assign m_axis_tstrb[18] = \<const0> ;
  assign m_axis_tstrb[17] = \<const0> ;
  assign m_axis_tstrb[16] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
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
  assign m_axis_tuser[4] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign s_axi_ctrl_awready = s_axi_ctrl_wready;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_decode_err[4] = \<const0> ;
  assign s_decode_err[3] = \<const0> ;
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
  top_xbar_4_axis_switch_v1_1_18_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.D({s_axis_tdest[2:0],s_axis_tlast[0],s_axis_tkeep[3:0],s_axis_tdata[31:0]}),
        .Q({si_enable[0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.sel_rd_reg (\gen_decoder[1].axisc_decoder_0_n_41 ),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[0]),
        .m_axis_tready(m_axis_tready[4:1]),
        .mux_tvalid(mux_tvalid[0]),
        .p_22_out(p_22_out),
        .s_axis_tvalid(s_axis_tvalid[0]));
  top_xbar_4_axis_switch_v1_1_18_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.D({s_axis_tdest[5:3],s_axis_tlast[1],s_axis_tkeep[7:4],s_axis_tdata[63:32]}),
        .Q({si_enable[1],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[0] (\gen_decoder[1].axisc_decoder_0_n_40 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_82 ),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_decoder[1].axisc_decoder_0_n_123 ),
        .\gen_AB_reg_slice.state_reg[0]_2 (\gen_decoder[1].axisc_decoder_0_n_164 ),
        .\gen_AB_reg_slice.state_reg[0]_3 (\gen_decoder[1].axisc_decoder_0_n_205 ),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[1]),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] (\gen_decoder[1].axisc_decoder_0_n_124 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 (\gen_decoder[1].axisc_decoder_0_n_125 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 (\gen_decoder[1].axisc_decoder_0_n_126 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 (\gen_decoder[1].axisc_decoder_0_n_135 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 (\gen_decoder[1].axisc_decoder_0_n_136 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 (\gen_decoder[1].axisc_decoder_0_n_137 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 (\gen_decoder[1].axisc_decoder_0_n_138 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 (\gen_decoder[1].axisc_decoder_0_n_139 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 (\gen_decoder[1].axisc_decoder_0_n_140 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 (\gen_decoder[1].axisc_decoder_0_n_141 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 (\gen_decoder[1].axisc_decoder_0_n_142 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 (\gen_decoder[1].axisc_decoder_0_n_143 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 (\gen_decoder[1].axisc_decoder_0_n_144 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 (\gen_decoder[1].axisc_decoder_0_n_127 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 (\gen_decoder[1].axisc_decoder_0_n_145 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 (\gen_decoder[1].axisc_decoder_0_n_146 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 (\gen_decoder[1].axisc_decoder_0_n_147 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 (\gen_decoder[1].axisc_decoder_0_n_148 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 (\gen_decoder[1].axisc_decoder_0_n_149 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 (\gen_decoder[1].axisc_decoder_0_n_150 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 (\gen_decoder[1].axisc_decoder_0_n_151 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 (\gen_decoder[1].axisc_decoder_0_n_152 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 (\gen_decoder[1].axisc_decoder_0_n_153 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 (\gen_decoder[1].axisc_decoder_0_n_154 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 (\gen_decoder[1].axisc_decoder_0_n_128 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 (\gen_decoder[1].axisc_decoder_0_n_155 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 (\gen_decoder[1].axisc_decoder_0_n_156 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 (\gen_decoder[1].axisc_decoder_0_n_157 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 (\gen_decoder[1].axisc_decoder_0_n_158 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 (\gen_decoder[1].axisc_decoder_0_n_159 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 (\gen_decoder[1].axisc_decoder_0_n_160 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 (\gen_decoder[1].axisc_decoder_0_n_161 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 (\gen_decoder[1].axisc_decoder_0_n_162 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 (\gen_decoder[1].axisc_decoder_0_n_163 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 (\gen_decoder[1].axisc_decoder_0_n_129 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 (\gen_decoder[1].axisc_decoder_0_n_130 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 (\gen_decoder[1].axisc_decoder_0_n_131 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 (\gen_decoder[1].axisc_decoder_0_n_132 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 (\gen_decoder[1].axisc_decoder_0_n_133 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 (\gen_decoder[1].axisc_decoder_0_n_134 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] (\gen_decoder[1].axisc_decoder_0_n_165 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 (\gen_decoder[1].axisc_decoder_0_n_166 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 (\gen_decoder[1].axisc_decoder_0_n_167 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 (\gen_decoder[1].axisc_decoder_0_n_176 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 (\gen_decoder[1].axisc_decoder_0_n_177 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 (\gen_decoder[1].axisc_decoder_0_n_178 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 (\gen_decoder[1].axisc_decoder_0_n_179 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 (\gen_decoder[1].axisc_decoder_0_n_180 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 (\gen_decoder[1].axisc_decoder_0_n_181 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 (\gen_decoder[1].axisc_decoder_0_n_182 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 (\gen_decoder[1].axisc_decoder_0_n_183 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 (\gen_decoder[1].axisc_decoder_0_n_184 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 (\gen_decoder[1].axisc_decoder_0_n_185 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 (\gen_decoder[1].axisc_decoder_0_n_168 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 (\gen_decoder[1].axisc_decoder_0_n_186 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 (\gen_decoder[1].axisc_decoder_0_n_187 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 (\gen_decoder[1].axisc_decoder_0_n_188 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 (\gen_decoder[1].axisc_decoder_0_n_189 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 (\gen_decoder[1].axisc_decoder_0_n_190 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 (\gen_decoder[1].axisc_decoder_0_n_191 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 (\gen_decoder[1].axisc_decoder_0_n_192 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 (\gen_decoder[1].axisc_decoder_0_n_193 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 (\gen_decoder[1].axisc_decoder_0_n_194 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 (\gen_decoder[1].axisc_decoder_0_n_195 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 (\gen_decoder[1].axisc_decoder_0_n_169 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 (\gen_decoder[1].axisc_decoder_0_n_196 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 (\gen_decoder[1].axisc_decoder_0_n_197 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 (\gen_decoder[1].axisc_decoder_0_n_198 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 (\gen_decoder[1].axisc_decoder_0_n_199 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 (\gen_decoder[1].axisc_decoder_0_n_200 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 (\gen_decoder[1].axisc_decoder_0_n_201 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 (\gen_decoder[1].axisc_decoder_0_n_202 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 (\gen_decoder[1].axisc_decoder_0_n_203 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 (\gen_decoder[1].axisc_decoder_0_n_204 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 (\gen_decoder[1].axisc_decoder_0_n_170 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 (\gen_decoder[1].axisc_decoder_0_n_171 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 (\gen_decoder[1].axisc_decoder_0_n_172 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 (\gen_decoder[1].axisc_decoder_0_n_173 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 (\gen_decoder[1].axisc_decoder_0_n_174 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 (\gen_decoder[1].axisc_decoder_0_n_175 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] (\gen_decoder[1].axisc_decoder_0_n_83 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 (\gen_decoder[1].axisc_decoder_0_n_84 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 (\gen_decoder[1].axisc_decoder_0_n_85 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 (\gen_decoder[1].axisc_decoder_0_n_94 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 (\gen_decoder[1].axisc_decoder_0_n_95 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 (\gen_decoder[1].axisc_decoder_0_n_96 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 (\gen_decoder[1].axisc_decoder_0_n_97 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 (\gen_decoder[1].axisc_decoder_0_n_98 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 (\gen_decoder[1].axisc_decoder_0_n_99 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 (\gen_decoder[1].axisc_decoder_0_n_100 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 (\gen_decoder[1].axisc_decoder_0_n_101 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 (\gen_decoder[1].axisc_decoder_0_n_102 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 (\gen_decoder[1].axisc_decoder_0_n_103 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 (\gen_decoder[1].axisc_decoder_0_n_86 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 (\gen_decoder[1].axisc_decoder_0_n_104 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 (\gen_decoder[1].axisc_decoder_0_n_105 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 (\gen_decoder[1].axisc_decoder_0_n_106 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 (\gen_decoder[1].axisc_decoder_0_n_107 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 (\gen_decoder[1].axisc_decoder_0_n_108 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 (\gen_decoder[1].axisc_decoder_0_n_109 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 (\gen_decoder[1].axisc_decoder_0_n_110 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 (\gen_decoder[1].axisc_decoder_0_n_111 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 (\gen_decoder[1].axisc_decoder_0_n_112 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 (\gen_decoder[1].axisc_decoder_0_n_113 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 (\gen_decoder[1].axisc_decoder_0_n_87 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 (\gen_decoder[1].axisc_decoder_0_n_114 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 (\gen_decoder[1].axisc_decoder_0_n_115 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 (\gen_decoder[1].axisc_decoder_0_n_116 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 (\gen_decoder[1].axisc_decoder_0_n_117 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 (\gen_decoder[1].axisc_decoder_0_n_118 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 (\gen_decoder[1].axisc_decoder_0_n_119 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 (\gen_decoder[1].axisc_decoder_0_n_120 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 (\gen_decoder[1].axisc_decoder_0_n_121 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 (\gen_decoder[1].axisc_decoder_0_n_122 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 (\gen_decoder[1].axisc_decoder_0_n_88 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 (\gen_decoder[1].axisc_decoder_0_n_89 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 (\gen_decoder[1].axisc_decoder_0_n_90 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 (\gen_decoder[1].axisc_decoder_0_n_91 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 (\gen_decoder[1].axisc_decoder_0_n_92 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 (\gen_decoder[1].axisc_decoder_0_n_93 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] (\gen_decoder[1].axisc_decoder_0_n_41 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] (\gen_decoder[1].axisc_decoder_0_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 (\gen_decoder[1].axisc_decoder_0_n_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 (\gen_decoder[1].axisc_decoder_0_n_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 (\gen_decoder[1].axisc_decoder_0_n_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 (\gen_decoder[1].axisc_decoder_0_n_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 (\gen_decoder[1].axisc_decoder_0_n_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 (\gen_decoder[1].axisc_decoder_0_n_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 (\gen_decoder[1].axisc_decoder_0_n_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 (\gen_decoder[1].axisc_decoder_0_n_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 (\gen_decoder[1].axisc_decoder_0_n_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 (\gen_decoder[1].axisc_decoder_0_n_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 (\gen_decoder[1].axisc_decoder_0_n_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 (\gen_decoder[1].axisc_decoder_0_n_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 (\gen_decoder[1].axisc_decoder_0_n_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 (\gen_decoder[1].axisc_decoder_0_n_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 (\gen_decoder[1].axisc_decoder_0_n_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 (\gen_decoder[1].axisc_decoder_0_n_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 (\gen_decoder[1].axisc_decoder_0_n_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 (\gen_decoder[1].axisc_decoder_0_n_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 (\gen_decoder[1].axisc_decoder_0_n_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 (\gen_decoder[1].axisc_decoder_0_n_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 (\gen_decoder[1].axisc_decoder_0_n_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 (\gen_decoder[1].axisc_decoder_0_n_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 (\gen_decoder[1].axisc_decoder_0_n_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 (\gen_decoder[1].axisc_decoder_0_n_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 (\gen_decoder[1].axisc_decoder_0_n_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 (\gen_decoder[1].axisc_decoder_0_n_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 (\gen_decoder[1].axisc_decoder_0_n_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 (\gen_decoder[1].axisc_decoder_0_n_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 (\gen_decoder[1].axisc_decoder_0_n_36 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 (\gen_decoder[1].axisc_decoder_0_n_37 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 (\gen_decoder[1].axisc_decoder_0_n_38 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 (\gen_decoder[1].axisc_decoder_0_n_39 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 (\gen_decoder[1].axisc_decoder_0_n_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 (\gen_decoder[1].axisc_decoder_0_n_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 (\gen_decoder[1].axisc_decoder_0_n_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 (\gen_decoder[1].axisc_decoder_0_n_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 (\gen_decoder[1].axisc_decoder_0_n_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 (\gen_decoder[1].axisc_decoder_0_n_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] (\gen_decoder[1].axisc_decoder_0_n_42 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 (\gen_decoder[1].axisc_decoder_0_n_43 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 (\gen_decoder[1].axisc_decoder_0_n_44 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 (\gen_decoder[1].axisc_decoder_0_n_53 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 (\gen_decoder[1].axisc_decoder_0_n_54 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 (\gen_decoder[1].axisc_decoder_0_n_55 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 (\gen_decoder[1].axisc_decoder_0_n_56 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 (\gen_decoder[1].axisc_decoder_0_n_57 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 (\gen_decoder[1].axisc_decoder_0_n_58 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 (\gen_decoder[1].axisc_decoder_0_n_59 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 (\gen_decoder[1].axisc_decoder_0_n_60 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 (\gen_decoder[1].axisc_decoder_0_n_61 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 (\gen_decoder[1].axisc_decoder_0_n_62 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 (\gen_decoder[1].axisc_decoder_0_n_45 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 (\gen_decoder[1].axisc_decoder_0_n_63 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 (\gen_decoder[1].axisc_decoder_0_n_64 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 (\gen_decoder[1].axisc_decoder_0_n_65 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 (\gen_decoder[1].axisc_decoder_0_n_66 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 (\gen_decoder[1].axisc_decoder_0_n_67 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 (\gen_decoder[1].axisc_decoder_0_n_68 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 (\gen_decoder[1].axisc_decoder_0_n_69 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 (\gen_decoder[1].axisc_decoder_0_n_70 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 (\gen_decoder[1].axisc_decoder_0_n_71 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 (\gen_decoder[1].axisc_decoder_0_n_72 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 (\gen_decoder[1].axisc_decoder_0_n_46 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 (\gen_decoder[1].axisc_decoder_0_n_73 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 (\gen_decoder[1].axisc_decoder_0_n_74 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 (\gen_decoder[1].axisc_decoder_0_n_75 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 (\gen_decoder[1].axisc_decoder_0_n_76 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 (\gen_decoder[1].axisc_decoder_0_n_77 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 (\gen_decoder[1].axisc_decoder_0_n_78 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 (\gen_decoder[1].axisc_decoder_0_n_79 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 (\gen_decoder[1].axisc_decoder_0_n_80 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 (\gen_decoder[1].axisc_decoder_0_n_81 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 (\gen_decoder[1].axisc_decoder_0_n_47 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 (\gen_decoder[1].axisc_decoder_0_n_48 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 (\gen_decoder[1].axisc_decoder_0_n_49 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 (\gen_decoder[1].axisc_decoder_0_n_50 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 (\gen_decoder[1].axisc_decoder_0_n_51 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 (\gen_decoder[1].axisc_decoder_0_n_52 ),
        .m_axis_tready(m_axis_tready),
        .\m_axis_tvalid[4] ({mux_tvalid[3:2],mux_tvalid[0]}),
        .p_12_out(p_12_out),
        .p_22_out(p_22_out),
        .p_7_out(p_7_out),
        .s_axis_tvalid(s_axis_tvalid[1]));
  top_xbar_4_axis_switch_v1_1_18_axisc_decoder_1 \gen_decoder[2].axisc_decoder_0 
       (.D({s_axis_tdest[8:6],s_axis_tlast[2],s_axis_tkeep[11:8],s_axis_tdata[95:64]}),
        .Q({si_enable[2],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.sel_rd_reg (\gen_decoder[1].axisc_decoder_0_n_41 ),
        .\gen_AB_reg_slice.state_reg[0] (mux_tvalid[2]),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[2]),
        .m_axis_tready(m_axis_tready[4:1]),
        .p_12_out(p_12_out),
        .s_axis_tvalid(s_axis_tvalid[2]));
  top_xbar_4_axis_switch_v1_1_18_axisc_decoder_2 \gen_decoder[3].axisc_decoder_0 
       (.D({s_axis_tdest[11:9],s_axis_tlast[3],s_axis_tkeep[15:12],s_axis_tdata[127:96]}),
        .Q({si_enable[3],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.sel_rd_reg (\gen_decoder[1].axisc_decoder_0_n_41 ),
        .\gen_AB_reg_slice.state_reg[0] (mux_tvalid[3]),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[3]),
        .m_axis_tready(m_axis_tready[4:1]),
        .p_7_out(p_7_out),
        .s_axis_tvalid(s_axis_tvalid[3]));
  top_xbar_4_axis_switch_v1_1_18_axisc_decoder_3 \gen_decoder[4].axisc_decoder_0 
       (.D({s_axis_tdest[14:12],s_axis_tlast[4],s_axis_tkeep[19:16],s_axis_tdata[159:128]}),
        .Q({si_enable[4],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,sel0,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[1] (s_axis_tready[4]),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdata_0_sp_1(\gen_decoder[1].axisc_decoder_0_n_83 ),
        .m_axis_tdata_100_sp_1(\gen_decoder[1].axisc_decoder_0_n_128 ),
        .m_axis_tdata_101_sp_1(\gen_decoder[1].axisc_decoder_0_n_129 ),
        .m_axis_tdata_102_sp_1(\gen_decoder[1].axisc_decoder_0_n_130 ),
        .m_axis_tdata_103_sp_1(\gen_decoder[1].axisc_decoder_0_n_131 ),
        .m_axis_tdata_104_sp_1(\gen_decoder[1].axisc_decoder_0_n_132 ),
        .m_axis_tdata_105_sp_1(\gen_decoder[1].axisc_decoder_0_n_133 ),
        .m_axis_tdata_106_sp_1(\gen_decoder[1].axisc_decoder_0_n_134 ),
        .m_axis_tdata_107_sp_1(\gen_decoder[1].axisc_decoder_0_n_135 ),
        .m_axis_tdata_108_sp_1(\gen_decoder[1].axisc_decoder_0_n_136 ),
        .m_axis_tdata_109_sp_1(\gen_decoder[1].axisc_decoder_0_n_137 ),
        .m_axis_tdata_10_sp_1(\gen_decoder[1].axisc_decoder_0_n_93 ),
        .m_axis_tdata_110_sp_1(\gen_decoder[1].axisc_decoder_0_n_138 ),
        .m_axis_tdata_111_sp_1(\gen_decoder[1].axisc_decoder_0_n_139 ),
        .m_axis_tdata_112_sp_1(\gen_decoder[1].axisc_decoder_0_n_140 ),
        .m_axis_tdata_113_sp_1(\gen_decoder[1].axisc_decoder_0_n_141 ),
        .m_axis_tdata_114_sp_1(\gen_decoder[1].axisc_decoder_0_n_142 ),
        .m_axis_tdata_115_sp_1(\gen_decoder[1].axisc_decoder_0_n_143 ),
        .m_axis_tdata_116_sp_1(\gen_decoder[1].axisc_decoder_0_n_144 ),
        .m_axis_tdata_117_sp_1(\gen_decoder[1].axisc_decoder_0_n_145 ),
        .m_axis_tdata_118_sp_1(\gen_decoder[1].axisc_decoder_0_n_146 ),
        .m_axis_tdata_119_sp_1(\gen_decoder[1].axisc_decoder_0_n_147 ),
        .m_axis_tdata_11_sp_1(\gen_decoder[1].axisc_decoder_0_n_94 ),
        .m_axis_tdata_120_sp_1(\gen_decoder[1].axisc_decoder_0_n_148 ),
        .m_axis_tdata_121_sp_1(\gen_decoder[1].axisc_decoder_0_n_149 ),
        .m_axis_tdata_122_sp_1(\gen_decoder[1].axisc_decoder_0_n_150 ),
        .m_axis_tdata_123_sp_1(\gen_decoder[1].axisc_decoder_0_n_151 ),
        .m_axis_tdata_124_sp_1(\gen_decoder[1].axisc_decoder_0_n_152 ),
        .m_axis_tdata_125_sp_1(\gen_decoder[1].axisc_decoder_0_n_153 ),
        .m_axis_tdata_126_sp_1(\gen_decoder[1].axisc_decoder_0_n_154 ),
        .m_axis_tdata_127_sp_1(\gen_decoder[1].axisc_decoder_0_n_155 ),
        .m_axis_tdata_128_sp_1(\gen_decoder[1].axisc_decoder_0_n_165 ),
        .m_axis_tdata_129_sp_1(\gen_decoder[1].axisc_decoder_0_n_166 ),
        .m_axis_tdata_12_sp_1(\gen_decoder[1].axisc_decoder_0_n_95 ),
        .m_axis_tdata_130_sp_1(\gen_decoder[1].axisc_decoder_0_n_167 ),
        .m_axis_tdata_131_sp_1(\gen_decoder[1].axisc_decoder_0_n_168 ),
        .m_axis_tdata_132_sp_1(\gen_decoder[1].axisc_decoder_0_n_169 ),
        .m_axis_tdata_133_sp_1(\gen_decoder[1].axisc_decoder_0_n_170 ),
        .m_axis_tdata_134_sp_1(\gen_decoder[1].axisc_decoder_0_n_171 ),
        .m_axis_tdata_135_sp_1(\gen_decoder[1].axisc_decoder_0_n_172 ),
        .m_axis_tdata_136_sp_1(\gen_decoder[1].axisc_decoder_0_n_173 ),
        .m_axis_tdata_137_sp_1(\gen_decoder[1].axisc_decoder_0_n_174 ),
        .m_axis_tdata_138_sp_1(\gen_decoder[1].axisc_decoder_0_n_175 ),
        .m_axis_tdata_139_sp_1(\gen_decoder[1].axisc_decoder_0_n_176 ),
        .m_axis_tdata_13_sp_1(\gen_decoder[1].axisc_decoder_0_n_96 ),
        .m_axis_tdata_140_sp_1(\gen_decoder[1].axisc_decoder_0_n_177 ),
        .m_axis_tdata_141_sp_1(\gen_decoder[1].axisc_decoder_0_n_178 ),
        .m_axis_tdata_142_sp_1(\gen_decoder[1].axisc_decoder_0_n_179 ),
        .m_axis_tdata_143_sp_1(\gen_decoder[1].axisc_decoder_0_n_180 ),
        .m_axis_tdata_144_sp_1(\gen_decoder[1].axisc_decoder_0_n_181 ),
        .m_axis_tdata_145_sp_1(\gen_decoder[1].axisc_decoder_0_n_182 ),
        .m_axis_tdata_146_sp_1(\gen_decoder[1].axisc_decoder_0_n_183 ),
        .m_axis_tdata_147_sp_1(\gen_decoder[1].axisc_decoder_0_n_184 ),
        .m_axis_tdata_148_sp_1(\gen_decoder[1].axisc_decoder_0_n_185 ),
        .m_axis_tdata_149_sp_1(\gen_decoder[1].axisc_decoder_0_n_186 ),
        .m_axis_tdata_14_sp_1(\gen_decoder[1].axisc_decoder_0_n_97 ),
        .m_axis_tdata_150_sp_1(\gen_decoder[1].axisc_decoder_0_n_187 ),
        .m_axis_tdata_151_sp_1(\gen_decoder[1].axisc_decoder_0_n_188 ),
        .m_axis_tdata_152_sp_1(\gen_decoder[1].axisc_decoder_0_n_189 ),
        .m_axis_tdata_153_sp_1(\gen_decoder[1].axisc_decoder_0_n_190 ),
        .m_axis_tdata_154_sp_1(\gen_decoder[1].axisc_decoder_0_n_191 ),
        .m_axis_tdata_155_sp_1(\gen_decoder[1].axisc_decoder_0_n_192 ),
        .m_axis_tdata_156_sp_1(\gen_decoder[1].axisc_decoder_0_n_193 ),
        .m_axis_tdata_157_sp_1(\gen_decoder[1].axisc_decoder_0_n_194 ),
        .m_axis_tdata_158_sp_1(\gen_decoder[1].axisc_decoder_0_n_195 ),
        .m_axis_tdata_159_sp_1(\gen_decoder[1].axisc_decoder_0_n_196 ),
        .m_axis_tdata_15_sp_1(\gen_decoder[1].axisc_decoder_0_n_98 ),
        .m_axis_tdata_16_sp_1(\gen_decoder[1].axisc_decoder_0_n_99 ),
        .m_axis_tdata_17_sp_1(\gen_decoder[1].axisc_decoder_0_n_100 ),
        .m_axis_tdata_18_sp_1(\gen_decoder[1].axisc_decoder_0_n_101 ),
        .m_axis_tdata_19_sp_1(\gen_decoder[1].axisc_decoder_0_n_102 ),
        .m_axis_tdata_1_sp_1(\gen_decoder[1].axisc_decoder_0_n_84 ),
        .m_axis_tdata_20_sp_1(\gen_decoder[1].axisc_decoder_0_n_103 ),
        .m_axis_tdata_21_sp_1(\gen_decoder[1].axisc_decoder_0_n_104 ),
        .m_axis_tdata_22_sp_1(\gen_decoder[1].axisc_decoder_0_n_105 ),
        .m_axis_tdata_23_sp_1(\gen_decoder[1].axisc_decoder_0_n_106 ),
        .m_axis_tdata_24_sp_1(\gen_decoder[1].axisc_decoder_0_n_107 ),
        .m_axis_tdata_25_sp_1(\gen_decoder[1].axisc_decoder_0_n_108 ),
        .m_axis_tdata_26_sp_1(\gen_decoder[1].axisc_decoder_0_n_109 ),
        .m_axis_tdata_27_sp_1(\gen_decoder[1].axisc_decoder_0_n_110 ),
        .m_axis_tdata_28_sp_1(\gen_decoder[1].axisc_decoder_0_n_111 ),
        .m_axis_tdata_29_sp_1(\gen_decoder[1].axisc_decoder_0_n_112 ),
        .m_axis_tdata_2_sp_1(\gen_decoder[1].axisc_decoder_0_n_85 ),
        .m_axis_tdata_30_sp_1(\gen_decoder[1].axisc_decoder_0_n_113 ),
        .m_axis_tdata_31_sp_1(\gen_decoder[1].axisc_decoder_0_n_114 ),
        .m_axis_tdata_32_sp_1(\gen_decoder[1].axisc_decoder_0_n_0 ),
        .m_axis_tdata_33_sp_1(\gen_decoder[1].axisc_decoder_0_n_1 ),
        .m_axis_tdata_34_sp_1(\gen_decoder[1].axisc_decoder_0_n_2 ),
        .m_axis_tdata_35_sp_1(\gen_decoder[1].axisc_decoder_0_n_3 ),
        .m_axis_tdata_36_sp_1(\gen_decoder[1].axisc_decoder_0_n_4 ),
        .m_axis_tdata_37_sp_1(\gen_decoder[1].axisc_decoder_0_n_5 ),
        .m_axis_tdata_38_sp_1(\gen_decoder[1].axisc_decoder_0_n_6 ),
        .m_axis_tdata_39_sp_1(\gen_decoder[1].axisc_decoder_0_n_7 ),
        .m_axis_tdata_3_sp_1(\gen_decoder[1].axisc_decoder_0_n_86 ),
        .m_axis_tdata_40_sp_1(\gen_decoder[1].axisc_decoder_0_n_8 ),
        .m_axis_tdata_41_sp_1(\gen_decoder[1].axisc_decoder_0_n_9 ),
        .m_axis_tdata_42_sp_1(\gen_decoder[1].axisc_decoder_0_n_10 ),
        .m_axis_tdata_43_sp_1(\gen_decoder[1].axisc_decoder_0_n_11 ),
        .m_axis_tdata_44_sp_1(\gen_decoder[1].axisc_decoder_0_n_12 ),
        .m_axis_tdata_45_sp_1(\gen_decoder[1].axisc_decoder_0_n_13 ),
        .m_axis_tdata_46_sp_1(\gen_decoder[1].axisc_decoder_0_n_14 ),
        .m_axis_tdata_47_sp_1(\gen_decoder[1].axisc_decoder_0_n_15 ),
        .m_axis_tdata_48_sp_1(\gen_decoder[1].axisc_decoder_0_n_16 ),
        .m_axis_tdata_49_sp_1(\gen_decoder[1].axisc_decoder_0_n_17 ),
        .m_axis_tdata_4_sp_1(\gen_decoder[1].axisc_decoder_0_n_87 ),
        .m_axis_tdata_50_sp_1(\gen_decoder[1].axisc_decoder_0_n_18 ),
        .m_axis_tdata_51_sp_1(\gen_decoder[1].axisc_decoder_0_n_19 ),
        .m_axis_tdata_52_sp_1(\gen_decoder[1].axisc_decoder_0_n_20 ),
        .m_axis_tdata_53_sp_1(\gen_decoder[1].axisc_decoder_0_n_21 ),
        .m_axis_tdata_54_sp_1(\gen_decoder[1].axisc_decoder_0_n_22 ),
        .m_axis_tdata_55_sp_1(\gen_decoder[1].axisc_decoder_0_n_23 ),
        .m_axis_tdata_56_sp_1(\gen_decoder[1].axisc_decoder_0_n_24 ),
        .m_axis_tdata_57_sp_1(\gen_decoder[1].axisc_decoder_0_n_25 ),
        .m_axis_tdata_58_sp_1(\gen_decoder[1].axisc_decoder_0_n_26 ),
        .m_axis_tdata_59_sp_1(\gen_decoder[1].axisc_decoder_0_n_27 ),
        .m_axis_tdata_5_sp_1(\gen_decoder[1].axisc_decoder_0_n_88 ),
        .m_axis_tdata_60_sp_1(\gen_decoder[1].axisc_decoder_0_n_28 ),
        .m_axis_tdata_61_sp_1(\gen_decoder[1].axisc_decoder_0_n_29 ),
        .m_axis_tdata_62_sp_1(\gen_decoder[1].axisc_decoder_0_n_30 ),
        .m_axis_tdata_63_sp_1(\gen_decoder[1].axisc_decoder_0_n_31 ),
        .m_axis_tdata_64_sp_1(\gen_decoder[1].axisc_decoder_0_n_42 ),
        .m_axis_tdata_65_sp_1(\gen_decoder[1].axisc_decoder_0_n_43 ),
        .m_axis_tdata_66_sp_1(\gen_decoder[1].axisc_decoder_0_n_44 ),
        .m_axis_tdata_67_sp_1(\gen_decoder[1].axisc_decoder_0_n_45 ),
        .m_axis_tdata_68_sp_1(\gen_decoder[1].axisc_decoder_0_n_46 ),
        .m_axis_tdata_69_sp_1(\gen_decoder[1].axisc_decoder_0_n_47 ),
        .m_axis_tdata_6_sp_1(\gen_decoder[1].axisc_decoder_0_n_89 ),
        .m_axis_tdata_70_sp_1(\gen_decoder[1].axisc_decoder_0_n_48 ),
        .m_axis_tdata_71_sp_1(\gen_decoder[1].axisc_decoder_0_n_49 ),
        .m_axis_tdata_72_sp_1(\gen_decoder[1].axisc_decoder_0_n_50 ),
        .m_axis_tdata_73_sp_1(\gen_decoder[1].axisc_decoder_0_n_51 ),
        .m_axis_tdata_74_sp_1(\gen_decoder[1].axisc_decoder_0_n_52 ),
        .m_axis_tdata_75_sp_1(\gen_decoder[1].axisc_decoder_0_n_53 ),
        .m_axis_tdata_76_sp_1(\gen_decoder[1].axisc_decoder_0_n_54 ),
        .m_axis_tdata_77_sp_1(\gen_decoder[1].axisc_decoder_0_n_55 ),
        .m_axis_tdata_78_sp_1(\gen_decoder[1].axisc_decoder_0_n_56 ),
        .m_axis_tdata_79_sp_1(\gen_decoder[1].axisc_decoder_0_n_57 ),
        .m_axis_tdata_7_sp_1(\gen_decoder[1].axisc_decoder_0_n_90 ),
        .m_axis_tdata_80_sp_1(\gen_decoder[1].axisc_decoder_0_n_58 ),
        .m_axis_tdata_81_sp_1(\gen_decoder[1].axisc_decoder_0_n_59 ),
        .m_axis_tdata_82_sp_1(\gen_decoder[1].axisc_decoder_0_n_60 ),
        .m_axis_tdata_83_sp_1(\gen_decoder[1].axisc_decoder_0_n_61 ),
        .m_axis_tdata_84_sp_1(\gen_decoder[1].axisc_decoder_0_n_62 ),
        .m_axis_tdata_85_sp_1(\gen_decoder[1].axisc_decoder_0_n_63 ),
        .m_axis_tdata_86_sp_1(\gen_decoder[1].axisc_decoder_0_n_64 ),
        .m_axis_tdata_87_sp_1(\gen_decoder[1].axisc_decoder_0_n_65 ),
        .m_axis_tdata_88_sp_1(\gen_decoder[1].axisc_decoder_0_n_66 ),
        .m_axis_tdata_89_sp_1(\gen_decoder[1].axisc_decoder_0_n_67 ),
        .m_axis_tdata_8_sp_1(\gen_decoder[1].axisc_decoder_0_n_91 ),
        .m_axis_tdata_90_sp_1(\gen_decoder[1].axisc_decoder_0_n_68 ),
        .m_axis_tdata_91_sp_1(\gen_decoder[1].axisc_decoder_0_n_69 ),
        .m_axis_tdata_92_sp_1(\gen_decoder[1].axisc_decoder_0_n_70 ),
        .m_axis_tdata_93_sp_1(\gen_decoder[1].axisc_decoder_0_n_71 ),
        .m_axis_tdata_94_sp_1(\gen_decoder[1].axisc_decoder_0_n_72 ),
        .m_axis_tdata_95_sp_1(\gen_decoder[1].axisc_decoder_0_n_73 ),
        .m_axis_tdata_96_sp_1(\gen_decoder[1].axisc_decoder_0_n_124 ),
        .m_axis_tdata_97_sp_1(\gen_decoder[1].axisc_decoder_0_n_125 ),
        .m_axis_tdata_98_sp_1(\gen_decoder[1].axisc_decoder_0_n_126 ),
        .m_axis_tdata_99_sp_1(\gen_decoder[1].axisc_decoder_0_n_127 ),
        .m_axis_tdata_9_sp_1(\gen_decoder[1].axisc_decoder_0_n_92 ),
        .m_axis_tdest(m_axis_tdest),
        .\m_axis_tdest[11]_0 (\m_axis_tdata[127]_INST_0_i_3_n_0 ),
        .\m_axis_tdest[11]_1 (\gen_decoder[1].axisc_decoder_0_n_163 ),
        .\m_axis_tdest[14]_0 (\m_axis_tdata[159]_INST_0_i_3_n_0 ),
        .\m_axis_tdest[14]_1 (\gen_decoder[1].axisc_decoder_0_n_204 ),
        .\m_axis_tdest[2]_0 (\m_axis_tdata[31]_INST_0_i_3_n_0 ),
        .\m_axis_tdest[2]_1 (\gen_decoder[1].axisc_decoder_0_n_122 ),
        .\m_axis_tdest[5]_0 (\m_axis_tdata[63]_INST_0_i_3_n_0 ),
        .\m_axis_tdest[5]_1 (\gen_decoder[1].axisc_decoder_0_n_39 ),
        .\m_axis_tdest[8]_0 (\m_axis_tdata[95]_INST_0_i_3_n_0 ),
        .\m_axis_tdest[8]_1 (\gen_decoder[1].axisc_decoder_0_n_81 ),
        .m_axis_tdest_0_sp_1(\gen_decoder[1].axisc_decoder_0_n_120 ),
        .m_axis_tdest_10_sp_1(\gen_decoder[1].axisc_decoder_0_n_162 ),
        .m_axis_tdest_11_sp_1(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .m_axis_tdest_12_sp_1(\gen_decoder[1].axisc_decoder_0_n_202 ),
        .m_axis_tdest_13_sp_1(\gen_decoder[1].axisc_decoder_0_n_203 ),
        .m_axis_tdest_14_sp_1(\m_axis_tdata[159]_INST_0_i_1_n_0 ),
        .m_axis_tdest_1_sp_1(\gen_decoder[1].axisc_decoder_0_n_121 ),
        .m_axis_tdest_2_sp_1(\m_axis_tdata[31]_INST_0_i_1_n_0 ),
        .m_axis_tdest_3_sp_1(\gen_decoder[1].axisc_decoder_0_n_37 ),
        .m_axis_tdest_4_sp_1(\gen_decoder[1].axisc_decoder_0_n_38 ),
        .m_axis_tdest_5_sp_1(\m_axis_tdata[63]_INST_0_i_1_n_0 ),
        .m_axis_tdest_6_sp_1(\gen_decoder[1].axisc_decoder_0_n_79 ),
        .m_axis_tdest_7_sp_1(\gen_decoder[1].axisc_decoder_0_n_80 ),
        .m_axis_tdest_8_sp_1(\m_axis_tdata[95]_INST_0_i_1_n_0 ),
        .m_axis_tdest_9_sp_1(\gen_decoder[1].axisc_decoder_0_n_161 ),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tkeep_0_sp_1(\gen_decoder[1].axisc_decoder_0_n_115 ),
        .m_axis_tkeep_10_sp_1(\gen_decoder[1].axisc_decoder_0_n_76 ),
        .m_axis_tkeep_11_sp_1(\gen_decoder[1].axisc_decoder_0_n_77 ),
        .m_axis_tkeep_12_sp_1(\gen_decoder[1].axisc_decoder_0_n_156 ),
        .m_axis_tkeep_13_sp_1(\gen_decoder[1].axisc_decoder_0_n_157 ),
        .m_axis_tkeep_14_sp_1(\gen_decoder[1].axisc_decoder_0_n_158 ),
        .m_axis_tkeep_15_sp_1(\gen_decoder[1].axisc_decoder_0_n_159 ),
        .m_axis_tkeep_16_sp_1(\gen_decoder[1].axisc_decoder_0_n_197 ),
        .m_axis_tkeep_17_sp_1(\gen_decoder[1].axisc_decoder_0_n_198 ),
        .m_axis_tkeep_18_sp_1(\gen_decoder[1].axisc_decoder_0_n_199 ),
        .m_axis_tkeep_19_sp_1(\gen_decoder[1].axisc_decoder_0_n_200 ),
        .m_axis_tkeep_1_sp_1(\gen_decoder[1].axisc_decoder_0_n_116 ),
        .m_axis_tkeep_2_sp_1(\gen_decoder[1].axisc_decoder_0_n_117 ),
        .m_axis_tkeep_3_sp_1(\gen_decoder[1].axisc_decoder_0_n_118 ),
        .m_axis_tkeep_4_sp_1(\gen_decoder[1].axisc_decoder_0_n_32 ),
        .m_axis_tkeep_5_sp_1(\gen_decoder[1].axisc_decoder_0_n_33 ),
        .m_axis_tkeep_6_sp_1(\gen_decoder[1].axisc_decoder_0_n_34 ),
        .m_axis_tkeep_7_sp_1(\gen_decoder[1].axisc_decoder_0_n_35 ),
        .m_axis_tkeep_8_sp_1(\gen_decoder[1].axisc_decoder_0_n_74 ),
        .m_axis_tkeep_9_sp_1(\gen_decoder[1].axisc_decoder_0_n_75 ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tlast_0_sp_1(\gen_decoder[1].axisc_decoder_0_n_119 ),
        .m_axis_tlast_1_sp_1(\gen_decoder[1].axisc_decoder_0_n_36 ),
        .m_axis_tlast_2_sp_1(\gen_decoder[1].axisc_decoder_0_n_78 ),
        .m_axis_tlast_3_sp_1(\gen_decoder[1].axisc_decoder_0_n_160 ),
        .m_axis_tlast_4_sp_1(\gen_decoder[1].axisc_decoder_0_n_201 ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tvalid_0_sp_1(\gen_decoder[1].axisc_decoder_0_n_123 ),
        .m_axis_tvalid_1_sp_1(\gen_decoder[1].axisc_decoder_0_n_40 ),
        .m_axis_tvalid_2_sp_1(\gen_decoder[1].axisc_decoder_0_n_82 ),
        .m_axis_tvalid_3_sp_1(\gen_decoder[1].axisc_decoder_0_n_164 ),
        .m_axis_tvalid_4_sp_1(\gen_decoder[1].axisc_decoder_0_n_205 ),
        .s_axis_tvalid(s_axis_tvalid[4]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[0] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [0]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [10]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[11] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [11]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[12] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [12]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [13]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [14]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[15] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [15]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[16] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [16]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [17]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[18] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [18]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[19] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [19]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [1]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[20] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [20]),
        .Q(mi_enable),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [21]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[22] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [22]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[23] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [23]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[24] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [24]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [2]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[3] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [3]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[45] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [45]),
        .Q(si_enable[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[46] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [46]),
        .Q(si_enable[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[47] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [47]),
        .Q(si_enable[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[48] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [48]),
        .Q(si_enable[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[49] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [49]),
        .Q(si_enable[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[4] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [4]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [5]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [6]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[7] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [7]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[8] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [8]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] 
       (.C(aclk),
        .CE(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .D(\gen_static_router.gen_synch.cdc_handshake_data_out [9]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ),
        .R(1'b0));
  top_xbar_4_axis_infrastructure_v1_1_0_cdc_handshake \gen_static_router.gen_synch.inst_cdc_handshake 
       (.D({\gen_static_router.gen_synch.cdc_handshake_data_out [49:45],\gen_static_router.gen_synch.cdc_handshake_data_out [24:0]}),
        .E(\gen_static_router.gen_synch.cdc_handshake_data_valid ),
        .aclk(aclk),
        .ctrl_reg(\gen_static_router.ctrl_reg ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_rcv(\gen_static_router.ctrl_ack ),
        .src_send(\gen_static_router.ctrl_req ));
  top_xbar_4_axis_infrastructure_v1_1_0_clock_synchronizer \gen_static_router.gen_synch.inst_rst_synch 
       (.aclk(aclk),
        .aresetn(aresetn),
        .p_0_in(p_0_in),
        .src_in(\gen_static_router.ctrl_soft_reset ));
  top_xbar_4_axis_switch_v1_1_18_static_router \gen_static_router.inst_static_router 
       (.Q({s_axi_ctrl_bvalid,s_axi_ctrl_wready}),
        .SR(\gen_static_router.s_axi_ctrl_areset ),
        .\ctrl_reg_r_reg[49] (\gen_static_router.ctrl_reg ),
        .s_axi_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr[6:2]),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr[6:2]),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .src_in(\gen_static_router.ctrl_soft_reset ),
        .src_rcv(\gen_static_router.ctrl_ack ),
        .src_send(\gen_static_router.ctrl_req ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_static_router.s_axi_ctrl_areset_i_1 
       (.I0(s_axi_ctrl_aresetn),
        .O(\gen_static_router.s_axi_ctrl_areset_i_1_n_0 ));
  FDRE \gen_static_router.s_axi_ctrl_areset_reg 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_static_router.s_axi_ctrl_areset_i_1_n_0 ),
        .Q(\gen_static_router.s_axi_ctrl_areset ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axis_tdata[127]_INST_0_i_1 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ),
        .I3(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ),
        .O(\m_axis_tdata[127]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[127]_INST_0_i_3 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ),
        .O(\m_axis_tdata[127]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axis_tdata[159]_INST_0_i_1 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ),
        .I3(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ),
        .O(\m_axis_tdata[159]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[159]_INST_0_i_3 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ),
        .O(\m_axis_tdata[159]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axis_tdata[31]_INST_0_i_1 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ),
        .I3(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .O(\m_axis_tdata[31]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[31]_INST_0_i_3 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .O(\m_axis_tdata[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axis_tdata[63]_INST_0_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\m_axis_tdata[63]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[63]_INST_0_i_3 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .O(\m_axis_tdata[63]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axis_tdata[95]_INST_0_i_1 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ),
        .I3(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ),
        .O(\m_axis_tdata[95]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[95]_INST_0_i_3 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ),
        .O(\m_axis_tdata[95]_INST_0_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_18_axisc_decoder
   (\gen_AB_reg_slice.state_reg[1] ,
    mux_tvalid,
    p_22_out,
    aclk,
    \gen_AB_reg_slice.sel_rd_reg ,
    Q,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1] ;
  output [0:0]mux_tvalid;
  output [39:0]p_22_out;
  input aclk;
  input \gen_AB_reg_slice.sel_rd_reg ;
  input [22:0]Q;
  input [3:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [22:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.sel_rd_reg ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [3:0]m_axis_tready;
  wire [0:0]mux_tvalid;
  wire [39:0]p_22_out;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_7 \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_AB_reg_slice.sel_rd_reg ),
        .\gen_AB_reg_slice.state_reg[0]_0 (mux_tvalid),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .m_axis_tready(m_axis_tready),
        .p_22_out(p_22_out),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_18_axisc_decoder_0
   (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ,
    \gen_AB_reg_slice.state_reg[0] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ,
    \gen_AB_reg_slice.state_reg[0]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ,
    \gen_AB_reg_slice.state_reg[0]_3 ,
    \gen_AB_reg_slice.state_reg[1] ,
    aclk,
    p_7_out,
    Q,
    p_22_out,
    p_12_out,
    \m_axis_tvalid[4] ,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ;
  output \gen_AB_reg_slice.state_reg[0] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ;
  output \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ;
  output \gen_AB_reg_slice.state_reg[0]_3 ;
  output \gen_AB_reg_slice.state_reg[1] ;
  input aclk;
  input [39:0]p_7_out;
  input [25:0]Q;
  input [39:0]p_22_out;
  input [39:0]p_12_out;
  input [2:0]\m_axis_tvalid[4] ;
  input [4:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [25:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg[0]_2 ;
  wire \gen_AB_reg_slice.state_reg[0]_3 ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  wire [4:0]m_axis_tready;
  wire [2:0]\m_axis_tvalid[4] ;
  wire [39:0]p_12_out;
  wire [39:0]p_22_out;
  wire [39:0]p_7_out;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_6 \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_AB_reg_slice.state_reg[0]_0 ),
        .\gen_AB_reg_slice.state_reg[0]_2 (\gen_AB_reg_slice.state_reg[0]_1 ),
        .\gen_AB_reg_slice.state_reg[0]_3 (\gen_AB_reg_slice.state_reg[0]_2 ),
        .\gen_AB_reg_slice.state_reg[0]_4 (\gen_AB_reg_slice.state_reg[0]_3 ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_36 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_37 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_38 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_36 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_37 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_38 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_36 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_37 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_38 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[2] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_36 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_37 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_38 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_36 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_37 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_38 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ),
        .m_axis_tready(m_axis_tready),
        .\m_axis_tvalid[4] (\m_axis_tvalid[4] ),
        .p_12_out(p_12_out),
        .p_22_out(p_22_out),
        .p_7_out(p_7_out),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_18_axisc_decoder_1
   (\gen_AB_reg_slice.state_reg[1] ,
    \gen_AB_reg_slice.state_reg[0] ,
    p_12_out,
    aclk,
    \gen_AB_reg_slice.sel_rd_reg ,
    Q,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1] ;
  output [0:0]\gen_AB_reg_slice.state_reg[0] ;
  output [39:0]p_12_out;
  input aclk;
  input \gen_AB_reg_slice.sel_rd_reg ;
  input [22:0]Q;
  input [3:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [22:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.sel_rd_reg ;
  wire [0:0]\gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [3:0]m_axis_tready;
  wire [39:0]p_12_out;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_5 \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_AB_reg_slice.sel_rd_reg ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .m_axis_tready(m_axis_tready),
        .p_12_out(p_12_out),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_18_axisc_decoder_2
   (\gen_AB_reg_slice.state_reg[1] ,
    \gen_AB_reg_slice.state_reg[0] ,
    p_7_out,
    aclk,
    \gen_AB_reg_slice.sel_rd_reg ,
    Q,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output \gen_AB_reg_slice.state_reg[1] ;
  output [0:0]\gen_AB_reg_slice.state_reg[0] ;
  output [39:0]p_7_out;
  input aclk;
  input \gen_AB_reg_slice.sel_rd_reg ;
  input [22:0]Q;
  input [3:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [22:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.sel_rd_reg ;
  wire [0:0]\gen_AB_reg_slice.state_reg[0] ;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [3:0]m_axis_tready;
  wire [39:0]p_7_out;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice_4 \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_AB_reg_slice.sel_rd_reg ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .m_axis_tready(m_axis_tready),
        .p_7_out(p_7_out),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_18_axisc_decoder_3
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tdest,
    m_axis_tvalid,
    \gen_AB_reg_slice.state_reg[1] ,
    aclk,
    m_axis_tdest_5_sp_1,
    m_axis_tdata_32_sp_1,
    \m_axis_tdest[5]_0 ,
    m_axis_tdata_33_sp_1,
    m_axis_tdata_34_sp_1,
    m_axis_tdata_35_sp_1,
    m_axis_tdata_36_sp_1,
    m_axis_tdata_37_sp_1,
    m_axis_tdata_38_sp_1,
    m_axis_tdata_39_sp_1,
    m_axis_tdata_40_sp_1,
    m_axis_tdata_41_sp_1,
    m_axis_tdata_42_sp_1,
    m_axis_tdata_43_sp_1,
    m_axis_tdata_44_sp_1,
    m_axis_tdata_45_sp_1,
    m_axis_tdata_46_sp_1,
    m_axis_tdata_47_sp_1,
    m_axis_tdata_48_sp_1,
    m_axis_tdata_49_sp_1,
    m_axis_tdata_50_sp_1,
    m_axis_tdata_51_sp_1,
    m_axis_tdata_52_sp_1,
    m_axis_tdata_53_sp_1,
    m_axis_tdata_54_sp_1,
    m_axis_tdata_55_sp_1,
    m_axis_tdata_56_sp_1,
    m_axis_tdata_57_sp_1,
    m_axis_tdata_58_sp_1,
    m_axis_tdata_59_sp_1,
    m_axis_tdata_60_sp_1,
    m_axis_tdata_61_sp_1,
    m_axis_tdata_62_sp_1,
    m_axis_tdata_63_sp_1,
    m_axis_tkeep_4_sp_1,
    m_axis_tkeep_5_sp_1,
    m_axis_tkeep_6_sp_1,
    m_axis_tkeep_7_sp_1,
    m_axis_tlast_1_sp_1,
    m_axis_tdest_3_sp_1,
    m_axis_tdest_4_sp_1,
    \m_axis_tdest[5]_1 ,
    m_axis_tvalid_1_sp_1,
    Q,
    m_axis_tready,
    m_axis_tdest_8_sp_1,
    m_axis_tdata_64_sp_1,
    \m_axis_tdest[8]_0 ,
    m_axis_tdata_65_sp_1,
    m_axis_tdata_66_sp_1,
    m_axis_tdata_67_sp_1,
    m_axis_tdata_68_sp_1,
    m_axis_tdata_69_sp_1,
    m_axis_tdata_70_sp_1,
    m_axis_tdata_71_sp_1,
    m_axis_tdata_72_sp_1,
    m_axis_tdata_73_sp_1,
    m_axis_tdata_74_sp_1,
    m_axis_tdata_75_sp_1,
    m_axis_tdata_76_sp_1,
    m_axis_tdata_77_sp_1,
    m_axis_tdata_78_sp_1,
    m_axis_tdata_79_sp_1,
    m_axis_tdata_80_sp_1,
    m_axis_tdata_81_sp_1,
    m_axis_tdata_82_sp_1,
    m_axis_tdata_83_sp_1,
    m_axis_tdata_84_sp_1,
    m_axis_tdata_85_sp_1,
    m_axis_tdata_86_sp_1,
    m_axis_tdata_87_sp_1,
    m_axis_tdata_88_sp_1,
    m_axis_tdata_89_sp_1,
    m_axis_tdata_90_sp_1,
    m_axis_tdata_91_sp_1,
    m_axis_tdata_92_sp_1,
    m_axis_tdata_93_sp_1,
    m_axis_tdata_94_sp_1,
    m_axis_tdata_95_sp_1,
    m_axis_tkeep_8_sp_1,
    m_axis_tkeep_9_sp_1,
    m_axis_tkeep_10_sp_1,
    m_axis_tkeep_11_sp_1,
    m_axis_tlast_2_sp_1,
    m_axis_tdest_6_sp_1,
    m_axis_tdest_7_sp_1,
    \m_axis_tdest[8]_1 ,
    m_axis_tvalid_2_sp_1,
    m_axis_tdest_2_sp_1,
    m_axis_tdata_0_sp_1,
    \m_axis_tdest[2]_0 ,
    m_axis_tdata_1_sp_1,
    m_axis_tdata_2_sp_1,
    m_axis_tdata_3_sp_1,
    m_axis_tdata_4_sp_1,
    m_axis_tdata_5_sp_1,
    m_axis_tdata_6_sp_1,
    m_axis_tdata_7_sp_1,
    m_axis_tdata_8_sp_1,
    m_axis_tdata_9_sp_1,
    m_axis_tdata_10_sp_1,
    m_axis_tdata_11_sp_1,
    m_axis_tdata_12_sp_1,
    m_axis_tdata_13_sp_1,
    m_axis_tdata_14_sp_1,
    m_axis_tdata_15_sp_1,
    m_axis_tdata_16_sp_1,
    m_axis_tdata_17_sp_1,
    m_axis_tdata_18_sp_1,
    m_axis_tdata_19_sp_1,
    m_axis_tdata_20_sp_1,
    m_axis_tdata_21_sp_1,
    m_axis_tdata_22_sp_1,
    m_axis_tdata_23_sp_1,
    m_axis_tdata_24_sp_1,
    m_axis_tdata_25_sp_1,
    m_axis_tdata_26_sp_1,
    m_axis_tdata_27_sp_1,
    m_axis_tdata_28_sp_1,
    m_axis_tdata_29_sp_1,
    m_axis_tdata_30_sp_1,
    m_axis_tdata_31_sp_1,
    m_axis_tkeep_0_sp_1,
    m_axis_tkeep_1_sp_1,
    m_axis_tkeep_2_sp_1,
    m_axis_tkeep_3_sp_1,
    m_axis_tlast_0_sp_1,
    m_axis_tdest_0_sp_1,
    m_axis_tdest_1_sp_1,
    \m_axis_tdest[2]_1 ,
    m_axis_tvalid_0_sp_1,
    m_axis_tdest_11_sp_1,
    m_axis_tdata_96_sp_1,
    \m_axis_tdest[11]_0 ,
    m_axis_tdata_97_sp_1,
    m_axis_tdata_98_sp_1,
    m_axis_tdata_99_sp_1,
    m_axis_tdata_100_sp_1,
    m_axis_tdata_101_sp_1,
    m_axis_tdata_102_sp_1,
    m_axis_tdata_103_sp_1,
    m_axis_tdata_104_sp_1,
    m_axis_tdata_105_sp_1,
    m_axis_tdata_106_sp_1,
    m_axis_tdata_107_sp_1,
    m_axis_tdata_108_sp_1,
    m_axis_tdata_109_sp_1,
    m_axis_tdata_110_sp_1,
    m_axis_tdata_111_sp_1,
    m_axis_tdata_112_sp_1,
    m_axis_tdata_113_sp_1,
    m_axis_tdata_114_sp_1,
    m_axis_tdata_115_sp_1,
    m_axis_tdata_116_sp_1,
    m_axis_tdata_117_sp_1,
    m_axis_tdata_118_sp_1,
    m_axis_tdata_119_sp_1,
    m_axis_tdata_120_sp_1,
    m_axis_tdata_121_sp_1,
    m_axis_tdata_122_sp_1,
    m_axis_tdata_123_sp_1,
    m_axis_tdata_124_sp_1,
    m_axis_tdata_125_sp_1,
    m_axis_tdata_126_sp_1,
    m_axis_tdata_127_sp_1,
    m_axis_tkeep_12_sp_1,
    m_axis_tkeep_13_sp_1,
    m_axis_tkeep_14_sp_1,
    m_axis_tkeep_15_sp_1,
    m_axis_tlast_3_sp_1,
    m_axis_tdest_9_sp_1,
    m_axis_tdest_10_sp_1,
    \m_axis_tdest[11]_1 ,
    m_axis_tvalid_3_sp_1,
    m_axis_tdest_14_sp_1,
    m_axis_tdata_128_sp_1,
    \m_axis_tdest[14]_0 ,
    m_axis_tdata_129_sp_1,
    m_axis_tdata_130_sp_1,
    m_axis_tdata_131_sp_1,
    m_axis_tdata_132_sp_1,
    m_axis_tdata_133_sp_1,
    m_axis_tdata_134_sp_1,
    m_axis_tdata_135_sp_1,
    m_axis_tdata_136_sp_1,
    m_axis_tdata_137_sp_1,
    m_axis_tdata_138_sp_1,
    m_axis_tdata_139_sp_1,
    m_axis_tdata_140_sp_1,
    m_axis_tdata_141_sp_1,
    m_axis_tdata_142_sp_1,
    m_axis_tdata_143_sp_1,
    m_axis_tdata_144_sp_1,
    m_axis_tdata_145_sp_1,
    m_axis_tdata_146_sp_1,
    m_axis_tdata_147_sp_1,
    m_axis_tdata_148_sp_1,
    m_axis_tdata_149_sp_1,
    m_axis_tdata_150_sp_1,
    m_axis_tdata_151_sp_1,
    m_axis_tdata_152_sp_1,
    m_axis_tdata_153_sp_1,
    m_axis_tdata_154_sp_1,
    m_axis_tdata_155_sp_1,
    m_axis_tdata_156_sp_1,
    m_axis_tdata_157_sp_1,
    m_axis_tdata_158_sp_1,
    m_axis_tdata_159_sp_1,
    m_axis_tkeep_16_sp_1,
    m_axis_tkeep_17_sp_1,
    m_axis_tkeep_18_sp_1,
    m_axis_tkeep_19_sp_1,
    m_axis_tlast_4_sp_1,
    m_axis_tdest_12_sp_1,
    m_axis_tdest_13_sp_1,
    \m_axis_tdest[14]_1 ,
    m_axis_tvalid_4_sp_1,
    aclken,
    areset_r,
    s_axis_tvalid,
    D);
  output [159:0]m_axis_tdata;
  output [19:0]m_axis_tkeep;
  output [4:0]m_axis_tlast;
  output [14:0]m_axis_tdest;
  output [4:0]m_axis_tvalid;
  output \gen_AB_reg_slice.state_reg[1] ;
  input aclk;
  input m_axis_tdest_5_sp_1;
  input m_axis_tdata_32_sp_1;
  input \m_axis_tdest[5]_0 ;
  input m_axis_tdata_33_sp_1;
  input m_axis_tdata_34_sp_1;
  input m_axis_tdata_35_sp_1;
  input m_axis_tdata_36_sp_1;
  input m_axis_tdata_37_sp_1;
  input m_axis_tdata_38_sp_1;
  input m_axis_tdata_39_sp_1;
  input m_axis_tdata_40_sp_1;
  input m_axis_tdata_41_sp_1;
  input m_axis_tdata_42_sp_1;
  input m_axis_tdata_43_sp_1;
  input m_axis_tdata_44_sp_1;
  input m_axis_tdata_45_sp_1;
  input m_axis_tdata_46_sp_1;
  input m_axis_tdata_47_sp_1;
  input m_axis_tdata_48_sp_1;
  input m_axis_tdata_49_sp_1;
  input m_axis_tdata_50_sp_1;
  input m_axis_tdata_51_sp_1;
  input m_axis_tdata_52_sp_1;
  input m_axis_tdata_53_sp_1;
  input m_axis_tdata_54_sp_1;
  input m_axis_tdata_55_sp_1;
  input m_axis_tdata_56_sp_1;
  input m_axis_tdata_57_sp_1;
  input m_axis_tdata_58_sp_1;
  input m_axis_tdata_59_sp_1;
  input m_axis_tdata_60_sp_1;
  input m_axis_tdata_61_sp_1;
  input m_axis_tdata_62_sp_1;
  input m_axis_tdata_63_sp_1;
  input m_axis_tkeep_4_sp_1;
  input m_axis_tkeep_5_sp_1;
  input m_axis_tkeep_6_sp_1;
  input m_axis_tkeep_7_sp_1;
  input m_axis_tlast_1_sp_1;
  input m_axis_tdest_3_sp_1;
  input m_axis_tdest_4_sp_1;
  input \m_axis_tdest[5]_1 ;
  input m_axis_tvalid_1_sp_1;
  input [25:0]Q;
  input [4:0]m_axis_tready;
  input m_axis_tdest_8_sp_1;
  input m_axis_tdata_64_sp_1;
  input \m_axis_tdest[8]_0 ;
  input m_axis_tdata_65_sp_1;
  input m_axis_tdata_66_sp_1;
  input m_axis_tdata_67_sp_1;
  input m_axis_tdata_68_sp_1;
  input m_axis_tdata_69_sp_1;
  input m_axis_tdata_70_sp_1;
  input m_axis_tdata_71_sp_1;
  input m_axis_tdata_72_sp_1;
  input m_axis_tdata_73_sp_1;
  input m_axis_tdata_74_sp_1;
  input m_axis_tdata_75_sp_1;
  input m_axis_tdata_76_sp_1;
  input m_axis_tdata_77_sp_1;
  input m_axis_tdata_78_sp_1;
  input m_axis_tdata_79_sp_1;
  input m_axis_tdata_80_sp_1;
  input m_axis_tdata_81_sp_1;
  input m_axis_tdata_82_sp_1;
  input m_axis_tdata_83_sp_1;
  input m_axis_tdata_84_sp_1;
  input m_axis_tdata_85_sp_1;
  input m_axis_tdata_86_sp_1;
  input m_axis_tdata_87_sp_1;
  input m_axis_tdata_88_sp_1;
  input m_axis_tdata_89_sp_1;
  input m_axis_tdata_90_sp_1;
  input m_axis_tdata_91_sp_1;
  input m_axis_tdata_92_sp_1;
  input m_axis_tdata_93_sp_1;
  input m_axis_tdata_94_sp_1;
  input m_axis_tdata_95_sp_1;
  input m_axis_tkeep_8_sp_1;
  input m_axis_tkeep_9_sp_1;
  input m_axis_tkeep_10_sp_1;
  input m_axis_tkeep_11_sp_1;
  input m_axis_tlast_2_sp_1;
  input m_axis_tdest_6_sp_1;
  input m_axis_tdest_7_sp_1;
  input \m_axis_tdest[8]_1 ;
  input m_axis_tvalid_2_sp_1;
  input m_axis_tdest_2_sp_1;
  input m_axis_tdata_0_sp_1;
  input \m_axis_tdest[2]_0 ;
  input m_axis_tdata_1_sp_1;
  input m_axis_tdata_2_sp_1;
  input m_axis_tdata_3_sp_1;
  input m_axis_tdata_4_sp_1;
  input m_axis_tdata_5_sp_1;
  input m_axis_tdata_6_sp_1;
  input m_axis_tdata_7_sp_1;
  input m_axis_tdata_8_sp_1;
  input m_axis_tdata_9_sp_1;
  input m_axis_tdata_10_sp_1;
  input m_axis_tdata_11_sp_1;
  input m_axis_tdata_12_sp_1;
  input m_axis_tdata_13_sp_1;
  input m_axis_tdata_14_sp_1;
  input m_axis_tdata_15_sp_1;
  input m_axis_tdata_16_sp_1;
  input m_axis_tdata_17_sp_1;
  input m_axis_tdata_18_sp_1;
  input m_axis_tdata_19_sp_1;
  input m_axis_tdata_20_sp_1;
  input m_axis_tdata_21_sp_1;
  input m_axis_tdata_22_sp_1;
  input m_axis_tdata_23_sp_1;
  input m_axis_tdata_24_sp_1;
  input m_axis_tdata_25_sp_1;
  input m_axis_tdata_26_sp_1;
  input m_axis_tdata_27_sp_1;
  input m_axis_tdata_28_sp_1;
  input m_axis_tdata_29_sp_1;
  input m_axis_tdata_30_sp_1;
  input m_axis_tdata_31_sp_1;
  input m_axis_tkeep_0_sp_1;
  input m_axis_tkeep_1_sp_1;
  input m_axis_tkeep_2_sp_1;
  input m_axis_tkeep_3_sp_1;
  input m_axis_tlast_0_sp_1;
  input m_axis_tdest_0_sp_1;
  input m_axis_tdest_1_sp_1;
  input \m_axis_tdest[2]_1 ;
  input m_axis_tvalid_0_sp_1;
  input m_axis_tdest_11_sp_1;
  input m_axis_tdata_96_sp_1;
  input \m_axis_tdest[11]_0 ;
  input m_axis_tdata_97_sp_1;
  input m_axis_tdata_98_sp_1;
  input m_axis_tdata_99_sp_1;
  input m_axis_tdata_100_sp_1;
  input m_axis_tdata_101_sp_1;
  input m_axis_tdata_102_sp_1;
  input m_axis_tdata_103_sp_1;
  input m_axis_tdata_104_sp_1;
  input m_axis_tdata_105_sp_1;
  input m_axis_tdata_106_sp_1;
  input m_axis_tdata_107_sp_1;
  input m_axis_tdata_108_sp_1;
  input m_axis_tdata_109_sp_1;
  input m_axis_tdata_110_sp_1;
  input m_axis_tdata_111_sp_1;
  input m_axis_tdata_112_sp_1;
  input m_axis_tdata_113_sp_1;
  input m_axis_tdata_114_sp_1;
  input m_axis_tdata_115_sp_1;
  input m_axis_tdata_116_sp_1;
  input m_axis_tdata_117_sp_1;
  input m_axis_tdata_118_sp_1;
  input m_axis_tdata_119_sp_1;
  input m_axis_tdata_120_sp_1;
  input m_axis_tdata_121_sp_1;
  input m_axis_tdata_122_sp_1;
  input m_axis_tdata_123_sp_1;
  input m_axis_tdata_124_sp_1;
  input m_axis_tdata_125_sp_1;
  input m_axis_tdata_126_sp_1;
  input m_axis_tdata_127_sp_1;
  input m_axis_tkeep_12_sp_1;
  input m_axis_tkeep_13_sp_1;
  input m_axis_tkeep_14_sp_1;
  input m_axis_tkeep_15_sp_1;
  input m_axis_tlast_3_sp_1;
  input m_axis_tdest_9_sp_1;
  input m_axis_tdest_10_sp_1;
  input \m_axis_tdest[11]_1 ;
  input m_axis_tvalid_3_sp_1;
  input m_axis_tdest_14_sp_1;
  input m_axis_tdata_128_sp_1;
  input \m_axis_tdest[14]_0 ;
  input m_axis_tdata_129_sp_1;
  input m_axis_tdata_130_sp_1;
  input m_axis_tdata_131_sp_1;
  input m_axis_tdata_132_sp_1;
  input m_axis_tdata_133_sp_1;
  input m_axis_tdata_134_sp_1;
  input m_axis_tdata_135_sp_1;
  input m_axis_tdata_136_sp_1;
  input m_axis_tdata_137_sp_1;
  input m_axis_tdata_138_sp_1;
  input m_axis_tdata_139_sp_1;
  input m_axis_tdata_140_sp_1;
  input m_axis_tdata_141_sp_1;
  input m_axis_tdata_142_sp_1;
  input m_axis_tdata_143_sp_1;
  input m_axis_tdata_144_sp_1;
  input m_axis_tdata_145_sp_1;
  input m_axis_tdata_146_sp_1;
  input m_axis_tdata_147_sp_1;
  input m_axis_tdata_148_sp_1;
  input m_axis_tdata_149_sp_1;
  input m_axis_tdata_150_sp_1;
  input m_axis_tdata_151_sp_1;
  input m_axis_tdata_152_sp_1;
  input m_axis_tdata_153_sp_1;
  input m_axis_tdata_154_sp_1;
  input m_axis_tdata_155_sp_1;
  input m_axis_tdata_156_sp_1;
  input m_axis_tdata_157_sp_1;
  input m_axis_tdata_158_sp_1;
  input m_axis_tdata_159_sp_1;
  input m_axis_tkeep_16_sp_1;
  input m_axis_tkeep_17_sp_1;
  input m_axis_tkeep_18_sp_1;
  input m_axis_tkeep_19_sp_1;
  input m_axis_tlast_4_sp_1;
  input m_axis_tdest_12_sp_1;
  input m_axis_tdest_13_sp_1;
  input \m_axis_tdest[14]_1 ;
  input m_axis_tvalid_4_sp_1;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input [39:0]D;

  wire [39:0]D;
  wire [25:0]Q;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire \gen_AB_reg_slice.state_reg[1] ;
  wire [159:0]m_axis_tdata;
  wire m_axis_tdata_0_sn_1;
  wire m_axis_tdata_100_sn_1;
  wire m_axis_tdata_101_sn_1;
  wire m_axis_tdata_102_sn_1;
  wire m_axis_tdata_103_sn_1;
  wire m_axis_tdata_104_sn_1;
  wire m_axis_tdata_105_sn_1;
  wire m_axis_tdata_106_sn_1;
  wire m_axis_tdata_107_sn_1;
  wire m_axis_tdata_108_sn_1;
  wire m_axis_tdata_109_sn_1;
  wire m_axis_tdata_10_sn_1;
  wire m_axis_tdata_110_sn_1;
  wire m_axis_tdata_111_sn_1;
  wire m_axis_tdata_112_sn_1;
  wire m_axis_tdata_113_sn_1;
  wire m_axis_tdata_114_sn_1;
  wire m_axis_tdata_115_sn_1;
  wire m_axis_tdata_116_sn_1;
  wire m_axis_tdata_117_sn_1;
  wire m_axis_tdata_118_sn_1;
  wire m_axis_tdata_119_sn_1;
  wire m_axis_tdata_11_sn_1;
  wire m_axis_tdata_120_sn_1;
  wire m_axis_tdata_121_sn_1;
  wire m_axis_tdata_122_sn_1;
  wire m_axis_tdata_123_sn_1;
  wire m_axis_tdata_124_sn_1;
  wire m_axis_tdata_125_sn_1;
  wire m_axis_tdata_126_sn_1;
  wire m_axis_tdata_127_sn_1;
  wire m_axis_tdata_128_sn_1;
  wire m_axis_tdata_129_sn_1;
  wire m_axis_tdata_12_sn_1;
  wire m_axis_tdata_130_sn_1;
  wire m_axis_tdata_131_sn_1;
  wire m_axis_tdata_132_sn_1;
  wire m_axis_tdata_133_sn_1;
  wire m_axis_tdata_134_sn_1;
  wire m_axis_tdata_135_sn_1;
  wire m_axis_tdata_136_sn_1;
  wire m_axis_tdata_137_sn_1;
  wire m_axis_tdata_138_sn_1;
  wire m_axis_tdata_139_sn_1;
  wire m_axis_tdata_13_sn_1;
  wire m_axis_tdata_140_sn_1;
  wire m_axis_tdata_141_sn_1;
  wire m_axis_tdata_142_sn_1;
  wire m_axis_tdata_143_sn_1;
  wire m_axis_tdata_144_sn_1;
  wire m_axis_tdata_145_sn_1;
  wire m_axis_tdata_146_sn_1;
  wire m_axis_tdata_147_sn_1;
  wire m_axis_tdata_148_sn_1;
  wire m_axis_tdata_149_sn_1;
  wire m_axis_tdata_14_sn_1;
  wire m_axis_tdata_150_sn_1;
  wire m_axis_tdata_151_sn_1;
  wire m_axis_tdata_152_sn_1;
  wire m_axis_tdata_153_sn_1;
  wire m_axis_tdata_154_sn_1;
  wire m_axis_tdata_155_sn_1;
  wire m_axis_tdata_156_sn_1;
  wire m_axis_tdata_157_sn_1;
  wire m_axis_tdata_158_sn_1;
  wire m_axis_tdata_159_sn_1;
  wire m_axis_tdata_15_sn_1;
  wire m_axis_tdata_16_sn_1;
  wire m_axis_tdata_17_sn_1;
  wire m_axis_tdata_18_sn_1;
  wire m_axis_tdata_19_sn_1;
  wire m_axis_tdata_1_sn_1;
  wire m_axis_tdata_20_sn_1;
  wire m_axis_tdata_21_sn_1;
  wire m_axis_tdata_22_sn_1;
  wire m_axis_tdata_23_sn_1;
  wire m_axis_tdata_24_sn_1;
  wire m_axis_tdata_25_sn_1;
  wire m_axis_tdata_26_sn_1;
  wire m_axis_tdata_27_sn_1;
  wire m_axis_tdata_28_sn_1;
  wire m_axis_tdata_29_sn_1;
  wire m_axis_tdata_2_sn_1;
  wire m_axis_tdata_30_sn_1;
  wire m_axis_tdata_31_sn_1;
  wire m_axis_tdata_32_sn_1;
  wire m_axis_tdata_33_sn_1;
  wire m_axis_tdata_34_sn_1;
  wire m_axis_tdata_35_sn_1;
  wire m_axis_tdata_36_sn_1;
  wire m_axis_tdata_37_sn_1;
  wire m_axis_tdata_38_sn_1;
  wire m_axis_tdata_39_sn_1;
  wire m_axis_tdata_3_sn_1;
  wire m_axis_tdata_40_sn_1;
  wire m_axis_tdata_41_sn_1;
  wire m_axis_tdata_42_sn_1;
  wire m_axis_tdata_43_sn_1;
  wire m_axis_tdata_44_sn_1;
  wire m_axis_tdata_45_sn_1;
  wire m_axis_tdata_46_sn_1;
  wire m_axis_tdata_47_sn_1;
  wire m_axis_tdata_48_sn_1;
  wire m_axis_tdata_49_sn_1;
  wire m_axis_tdata_4_sn_1;
  wire m_axis_tdata_50_sn_1;
  wire m_axis_tdata_51_sn_1;
  wire m_axis_tdata_52_sn_1;
  wire m_axis_tdata_53_sn_1;
  wire m_axis_tdata_54_sn_1;
  wire m_axis_tdata_55_sn_1;
  wire m_axis_tdata_56_sn_1;
  wire m_axis_tdata_57_sn_1;
  wire m_axis_tdata_58_sn_1;
  wire m_axis_tdata_59_sn_1;
  wire m_axis_tdata_5_sn_1;
  wire m_axis_tdata_60_sn_1;
  wire m_axis_tdata_61_sn_1;
  wire m_axis_tdata_62_sn_1;
  wire m_axis_tdata_63_sn_1;
  wire m_axis_tdata_64_sn_1;
  wire m_axis_tdata_65_sn_1;
  wire m_axis_tdata_66_sn_1;
  wire m_axis_tdata_67_sn_1;
  wire m_axis_tdata_68_sn_1;
  wire m_axis_tdata_69_sn_1;
  wire m_axis_tdata_6_sn_1;
  wire m_axis_tdata_70_sn_1;
  wire m_axis_tdata_71_sn_1;
  wire m_axis_tdata_72_sn_1;
  wire m_axis_tdata_73_sn_1;
  wire m_axis_tdata_74_sn_1;
  wire m_axis_tdata_75_sn_1;
  wire m_axis_tdata_76_sn_1;
  wire m_axis_tdata_77_sn_1;
  wire m_axis_tdata_78_sn_1;
  wire m_axis_tdata_79_sn_1;
  wire m_axis_tdata_7_sn_1;
  wire m_axis_tdata_80_sn_1;
  wire m_axis_tdata_81_sn_1;
  wire m_axis_tdata_82_sn_1;
  wire m_axis_tdata_83_sn_1;
  wire m_axis_tdata_84_sn_1;
  wire m_axis_tdata_85_sn_1;
  wire m_axis_tdata_86_sn_1;
  wire m_axis_tdata_87_sn_1;
  wire m_axis_tdata_88_sn_1;
  wire m_axis_tdata_89_sn_1;
  wire m_axis_tdata_8_sn_1;
  wire m_axis_tdata_90_sn_1;
  wire m_axis_tdata_91_sn_1;
  wire m_axis_tdata_92_sn_1;
  wire m_axis_tdata_93_sn_1;
  wire m_axis_tdata_94_sn_1;
  wire m_axis_tdata_95_sn_1;
  wire m_axis_tdata_96_sn_1;
  wire m_axis_tdata_97_sn_1;
  wire m_axis_tdata_98_sn_1;
  wire m_axis_tdata_99_sn_1;
  wire m_axis_tdata_9_sn_1;
  wire [14:0]m_axis_tdest;
  wire \m_axis_tdest[11]_0 ;
  wire \m_axis_tdest[11]_1 ;
  wire \m_axis_tdest[14]_0 ;
  wire \m_axis_tdest[14]_1 ;
  wire \m_axis_tdest[2]_0 ;
  wire \m_axis_tdest[2]_1 ;
  wire \m_axis_tdest[5]_0 ;
  wire \m_axis_tdest[5]_1 ;
  wire \m_axis_tdest[8]_0 ;
  wire \m_axis_tdest[8]_1 ;
  wire m_axis_tdest_0_sn_1;
  wire m_axis_tdest_10_sn_1;
  wire m_axis_tdest_11_sn_1;
  wire m_axis_tdest_12_sn_1;
  wire m_axis_tdest_13_sn_1;
  wire m_axis_tdest_14_sn_1;
  wire m_axis_tdest_1_sn_1;
  wire m_axis_tdest_2_sn_1;
  wire m_axis_tdest_3_sn_1;
  wire m_axis_tdest_4_sn_1;
  wire m_axis_tdest_5_sn_1;
  wire m_axis_tdest_6_sn_1;
  wire m_axis_tdest_7_sn_1;
  wire m_axis_tdest_8_sn_1;
  wire m_axis_tdest_9_sn_1;
  wire [19:0]m_axis_tkeep;
  wire m_axis_tkeep_0_sn_1;
  wire m_axis_tkeep_10_sn_1;
  wire m_axis_tkeep_11_sn_1;
  wire m_axis_tkeep_12_sn_1;
  wire m_axis_tkeep_13_sn_1;
  wire m_axis_tkeep_14_sn_1;
  wire m_axis_tkeep_15_sn_1;
  wire m_axis_tkeep_16_sn_1;
  wire m_axis_tkeep_17_sn_1;
  wire m_axis_tkeep_18_sn_1;
  wire m_axis_tkeep_19_sn_1;
  wire m_axis_tkeep_1_sn_1;
  wire m_axis_tkeep_2_sn_1;
  wire m_axis_tkeep_3_sn_1;
  wire m_axis_tkeep_4_sn_1;
  wire m_axis_tkeep_5_sn_1;
  wire m_axis_tkeep_6_sn_1;
  wire m_axis_tkeep_7_sn_1;
  wire m_axis_tkeep_8_sn_1;
  wire m_axis_tkeep_9_sn_1;
  wire [4:0]m_axis_tlast;
  wire m_axis_tlast_0_sn_1;
  wire m_axis_tlast_1_sn_1;
  wire m_axis_tlast_2_sn_1;
  wire m_axis_tlast_3_sn_1;
  wire m_axis_tlast_4_sn_1;
  wire [4:0]m_axis_tready;
  wire [4:0]m_axis_tvalid;
  wire m_axis_tvalid_0_sn_1;
  wire m_axis_tvalid_1_sn_1;
  wire m_axis_tvalid_2_sn_1;
  wire m_axis_tvalid_3_sn_1;
  wire m_axis_tvalid_4_sn_1;
  wire [0:0]s_axis_tvalid;

  assign m_axis_tdata_0_sn_1 = m_axis_tdata_0_sp_1;
  assign m_axis_tdata_100_sn_1 = m_axis_tdata_100_sp_1;
  assign m_axis_tdata_101_sn_1 = m_axis_tdata_101_sp_1;
  assign m_axis_tdata_102_sn_1 = m_axis_tdata_102_sp_1;
  assign m_axis_tdata_103_sn_1 = m_axis_tdata_103_sp_1;
  assign m_axis_tdata_104_sn_1 = m_axis_tdata_104_sp_1;
  assign m_axis_tdata_105_sn_1 = m_axis_tdata_105_sp_1;
  assign m_axis_tdata_106_sn_1 = m_axis_tdata_106_sp_1;
  assign m_axis_tdata_107_sn_1 = m_axis_tdata_107_sp_1;
  assign m_axis_tdata_108_sn_1 = m_axis_tdata_108_sp_1;
  assign m_axis_tdata_109_sn_1 = m_axis_tdata_109_sp_1;
  assign m_axis_tdata_10_sn_1 = m_axis_tdata_10_sp_1;
  assign m_axis_tdata_110_sn_1 = m_axis_tdata_110_sp_1;
  assign m_axis_tdata_111_sn_1 = m_axis_tdata_111_sp_1;
  assign m_axis_tdata_112_sn_1 = m_axis_tdata_112_sp_1;
  assign m_axis_tdata_113_sn_1 = m_axis_tdata_113_sp_1;
  assign m_axis_tdata_114_sn_1 = m_axis_tdata_114_sp_1;
  assign m_axis_tdata_115_sn_1 = m_axis_tdata_115_sp_1;
  assign m_axis_tdata_116_sn_1 = m_axis_tdata_116_sp_1;
  assign m_axis_tdata_117_sn_1 = m_axis_tdata_117_sp_1;
  assign m_axis_tdata_118_sn_1 = m_axis_tdata_118_sp_1;
  assign m_axis_tdata_119_sn_1 = m_axis_tdata_119_sp_1;
  assign m_axis_tdata_11_sn_1 = m_axis_tdata_11_sp_1;
  assign m_axis_tdata_120_sn_1 = m_axis_tdata_120_sp_1;
  assign m_axis_tdata_121_sn_1 = m_axis_tdata_121_sp_1;
  assign m_axis_tdata_122_sn_1 = m_axis_tdata_122_sp_1;
  assign m_axis_tdata_123_sn_1 = m_axis_tdata_123_sp_1;
  assign m_axis_tdata_124_sn_1 = m_axis_tdata_124_sp_1;
  assign m_axis_tdata_125_sn_1 = m_axis_tdata_125_sp_1;
  assign m_axis_tdata_126_sn_1 = m_axis_tdata_126_sp_1;
  assign m_axis_tdata_127_sn_1 = m_axis_tdata_127_sp_1;
  assign m_axis_tdata_128_sn_1 = m_axis_tdata_128_sp_1;
  assign m_axis_tdata_129_sn_1 = m_axis_tdata_129_sp_1;
  assign m_axis_tdata_12_sn_1 = m_axis_tdata_12_sp_1;
  assign m_axis_tdata_130_sn_1 = m_axis_tdata_130_sp_1;
  assign m_axis_tdata_131_sn_1 = m_axis_tdata_131_sp_1;
  assign m_axis_tdata_132_sn_1 = m_axis_tdata_132_sp_1;
  assign m_axis_tdata_133_sn_1 = m_axis_tdata_133_sp_1;
  assign m_axis_tdata_134_sn_1 = m_axis_tdata_134_sp_1;
  assign m_axis_tdata_135_sn_1 = m_axis_tdata_135_sp_1;
  assign m_axis_tdata_136_sn_1 = m_axis_tdata_136_sp_1;
  assign m_axis_tdata_137_sn_1 = m_axis_tdata_137_sp_1;
  assign m_axis_tdata_138_sn_1 = m_axis_tdata_138_sp_1;
  assign m_axis_tdata_139_sn_1 = m_axis_tdata_139_sp_1;
  assign m_axis_tdata_13_sn_1 = m_axis_tdata_13_sp_1;
  assign m_axis_tdata_140_sn_1 = m_axis_tdata_140_sp_1;
  assign m_axis_tdata_141_sn_1 = m_axis_tdata_141_sp_1;
  assign m_axis_tdata_142_sn_1 = m_axis_tdata_142_sp_1;
  assign m_axis_tdata_143_sn_1 = m_axis_tdata_143_sp_1;
  assign m_axis_tdata_144_sn_1 = m_axis_tdata_144_sp_1;
  assign m_axis_tdata_145_sn_1 = m_axis_tdata_145_sp_1;
  assign m_axis_tdata_146_sn_1 = m_axis_tdata_146_sp_1;
  assign m_axis_tdata_147_sn_1 = m_axis_tdata_147_sp_1;
  assign m_axis_tdata_148_sn_1 = m_axis_tdata_148_sp_1;
  assign m_axis_tdata_149_sn_1 = m_axis_tdata_149_sp_1;
  assign m_axis_tdata_14_sn_1 = m_axis_tdata_14_sp_1;
  assign m_axis_tdata_150_sn_1 = m_axis_tdata_150_sp_1;
  assign m_axis_tdata_151_sn_1 = m_axis_tdata_151_sp_1;
  assign m_axis_tdata_152_sn_1 = m_axis_tdata_152_sp_1;
  assign m_axis_tdata_153_sn_1 = m_axis_tdata_153_sp_1;
  assign m_axis_tdata_154_sn_1 = m_axis_tdata_154_sp_1;
  assign m_axis_tdata_155_sn_1 = m_axis_tdata_155_sp_1;
  assign m_axis_tdata_156_sn_1 = m_axis_tdata_156_sp_1;
  assign m_axis_tdata_157_sn_1 = m_axis_tdata_157_sp_1;
  assign m_axis_tdata_158_sn_1 = m_axis_tdata_158_sp_1;
  assign m_axis_tdata_159_sn_1 = m_axis_tdata_159_sp_1;
  assign m_axis_tdata_15_sn_1 = m_axis_tdata_15_sp_1;
  assign m_axis_tdata_16_sn_1 = m_axis_tdata_16_sp_1;
  assign m_axis_tdata_17_sn_1 = m_axis_tdata_17_sp_1;
  assign m_axis_tdata_18_sn_1 = m_axis_tdata_18_sp_1;
  assign m_axis_tdata_19_sn_1 = m_axis_tdata_19_sp_1;
  assign m_axis_tdata_1_sn_1 = m_axis_tdata_1_sp_1;
  assign m_axis_tdata_20_sn_1 = m_axis_tdata_20_sp_1;
  assign m_axis_tdata_21_sn_1 = m_axis_tdata_21_sp_1;
  assign m_axis_tdata_22_sn_1 = m_axis_tdata_22_sp_1;
  assign m_axis_tdata_23_sn_1 = m_axis_tdata_23_sp_1;
  assign m_axis_tdata_24_sn_1 = m_axis_tdata_24_sp_1;
  assign m_axis_tdata_25_sn_1 = m_axis_tdata_25_sp_1;
  assign m_axis_tdata_26_sn_1 = m_axis_tdata_26_sp_1;
  assign m_axis_tdata_27_sn_1 = m_axis_tdata_27_sp_1;
  assign m_axis_tdata_28_sn_1 = m_axis_tdata_28_sp_1;
  assign m_axis_tdata_29_sn_1 = m_axis_tdata_29_sp_1;
  assign m_axis_tdata_2_sn_1 = m_axis_tdata_2_sp_1;
  assign m_axis_tdata_30_sn_1 = m_axis_tdata_30_sp_1;
  assign m_axis_tdata_31_sn_1 = m_axis_tdata_31_sp_1;
  assign m_axis_tdata_32_sn_1 = m_axis_tdata_32_sp_1;
  assign m_axis_tdata_33_sn_1 = m_axis_tdata_33_sp_1;
  assign m_axis_tdata_34_sn_1 = m_axis_tdata_34_sp_1;
  assign m_axis_tdata_35_sn_1 = m_axis_tdata_35_sp_1;
  assign m_axis_tdata_36_sn_1 = m_axis_tdata_36_sp_1;
  assign m_axis_tdata_37_sn_1 = m_axis_tdata_37_sp_1;
  assign m_axis_tdata_38_sn_1 = m_axis_tdata_38_sp_1;
  assign m_axis_tdata_39_sn_1 = m_axis_tdata_39_sp_1;
  assign m_axis_tdata_3_sn_1 = m_axis_tdata_3_sp_1;
  assign m_axis_tdata_40_sn_1 = m_axis_tdata_40_sp_1;
  assign m_axis_tdata_41_sn_1 = m_axis_tdata_41_sp_1;
  assign m_axis_tdata_42_sn_1 = m_axis_tdata_42_sp_1;
  assign m_axis_tdata_43_sn_1 = m_axis_tdata_43_sp_1;
  assign m_axis_tdata_44_sn_1 = m_axis_tdata_44_sp_1;
  assign m_axis_tdata_45_sn_1 = m_axis_tdata_45_sp_1;
  assign m_axis_tdata_46_sn_1 = m_axis_tdata_46_sp_1;
  assign m_axis_tdata_47_sn_1 = m_axis_tdata_47_sp_1;
  assign m_axis_tdata_48_sn_1 = m_axis_tdata_48_sp_1;
  assign m_axis_tdata_49_sn_1 = m_axis_tdata_49_sp_1;
  assign m_axis_tdata_4_sn_1 = m_axis_tdata_4_sp_1;
  assign m_axis_tdata_50_sn_1 = m_axis_tdata_50_sp_1;
  assign m_axis_tdata_51_sn_1 = m_axis_tdata_51_sp_1;
  assign m_axis_tdata_52_sn_1 = m_axis_tdata_52_sp_1;
  assign m_axis_tdata_53_sn_1 = m_axis_tdata_53_sp_1;
  assign m_axis_tdata_54_sn_1 = m_axis_tdata_54_sp_1;
  assign m_axis_tdata_55_sn_1 = m_axis_tdata_55_sp_1;
  assign m_axis_tdata_56_sn_1 = m_axis_tdata_56_sp_1;
  assign m_axis_tdata_57_sn_1 = m_axis_tdata_57_sp_1;
  assign m_axis_tdata_58_sn_1 = m_axis_tdata_58_sp_1;
  assign m_axis_tdata_59_sn_1 = m_axis_tdata_59_sp_1;
  assign m_axis_tdata_5_sn_1 = m_axis_tdata_5_sp_1;
  assign m_axis_tdata_60_sn_1 = m_axis_tdata_60_sp_1;
  assign m_axis_tdata_61_sn_1 = m_axis_tdata_61_sp_1;
  assign m_axis_tdata_62_sn_1 = m_axis_tdata_62_sp_1;
  assign m_axis_tdata_63_sn_1 = m_axis_tdata_63_sp_1;
  assign m_axis_tdata_64_sn_1 = m_axis_tdata_64_sp_1;
  assign m_axis_tdata_65_sn_1 = m_axis_tdata_65_sp_1;
  assign m_axis_tdata_66_sn_1 = m_axis_tdata_66_sp_1;
  assign m_axis_tdata_67_sn_1 = m_axis_tdata_67_sp_1;
  assign m_axis_tdata_68_sn_1 = m_axis_tdata_68_sp_1;
  assign m_axis_tdata_69_sn_1 = m_axis_tdata_69_sp_1;
  assign m_axis_tdata_6_sn_1 = m_axis_tdata_6_sp_1;
  assign m_axis_tdata_70_sn_1 = m_axis_tdata_70_sp_1;
  assign m_axis_tdata_71_sn_1 = m_axis_tdata_71_sp_1;
  assign m_axis_tdata_72_sn_1 = m_axis_tdata_72_sp_1;
  assign m_axis_tdata_73_sn_1 = m_axis_tdata_73_sp_1;
  assign m_axis_tdata_74_sn_1 = m_axis_tdata_74_sp_1;
  assign m_axis_tdata_75_sn_1 = m_axis_tdata_75_sp_1;
  assign m_axis_tdata_76_sn_1 = m_axis_tdata_76_sp_1;
  assign m_axis_tdata_77_sn_1 = m_axis_tdata_77_sp_1;
  assign m_axis_tdata_78_sn_1 = m_axis_tdata_78_sp_1;
  assign m_axis_tdata_79_sn_1 = m_axis_tdata_79_sp_1;
  assign m_axis_tdata_7_sn_1 = m_axis_tdata_7_sp_1;
  assign m_axis_tdata_80_sn_1 = m_axis_tdata_80_sp_1;
  assign m_axis_tdata_81_sn_1 = m_axis_tdata_81_sp_1;
  assign m_axis_tdata_82_sn_1 = m_axis_tdata_82_sp_1;
  assign m_axis_tdata_83_sn_1 = m_axis_tdata_83_sp_1;
  assign m_axis_tdata_84_sn_1 = m_axis_tdata_84_sp_1;
  assign m_axis_tdata_85_sn_1 = m_axis_tdata_85_sp_1;
  assign m_axis_tdata_86_sn_1 = m_axis_tdata_86_sp_1;
  assign m_axis_tdata_87_sn_1 = m_axis_tdata_87_sp_1;
  assign m_axis_tdata_88_sn_1 = m_axis_tdata_88_sp_1;
  assign m_axis_tdata_89_sn_1 = m_axis_tdata_89_sp_1;
  assign m_axis_tdata_8_sn_1 = m_axis_tdata_8_sp_1;
  assign m_axis_tdata_90_sn_1 = m_axis_tdata_90_sp_1;
  assign m_axis_tdata_91_sn_1 = m_axis_tdata_91_sp_1;
  assign m_axis_tdata_92_sn_1 = m_axis_tdata_92_sp_1;
  assign m_axis_tdata_93_sn_1 = m_axis_tdata_93_sp_1;
  assign m_axis_tdata_94_sn_1 = m_axis_tdata_94_sp_1;
  assign m_axis_tdata_95_sn_1 = m_axis_tdata_95_sp_1;
  assign m_axis_tdata_96_sn_1 = m_axis_tdata_96_sp_1;
  assign m_axis_tdata_97_sn_1 = m_axis_tdata_97_sp_1;
  assign m_axis_tdata_98_sn_1 = m_axis_tdata_98_sp_1;
  assign m_axis_tdata_99_sn_1 = m_axis_tdata_99_sp_1;
  assign m_axis_tdata_9_sn_1 = m_axis_tdata_9_sp_1;
  assign m_axis_tdest_0_sn_1 = m_axis_tdest_0_sp_1;
  assign m_axis_tdest_10_sn_1 = m_axis_tdest_10_sp_1;
  assign m_axis_tdest_11_sn_1 = m_axis_tdest_11_sp_1;
  assign m_axis_tdest_12_sn_1 = m_axis_tdest_12_sp_1;
  assign m_axis_tdest_13_sn_1 = m_axis_tdest_13_sp_1;
  assign m_axis_tdest_14_sn_1 = m_axis_tdest_14_sp_1;
  assign m_axis_tdest_1_sn_1 = m_axis_tdest_1_sp_1;
  assign m_axis_tdest_2_sn_1 = m_axis_tdest_2_sp_1;
  assign m_axis_tdest_3_sn_1 = m_axis_tdest_3_sp_1;
  assign m_axis_tdest_4_sn_1 = m_axis_tdest_4_sp_1;
  assign m_axis_tdest_5_sn_1 = m_axis_tdest_5_sp_1;
  assign m_axis_tdest_6_sn_1 = m_axis_tdest_6_sp_1;
  assign m_axis_tdest_7_sn_1 = m_axis_tdest_7_sp_1;
  assign m_axis_tdest_8_sn_1 = m_axis_tdest_8_sp_1;
  assign m_axis_tdest_9_sn_1 = m_axis_tdest_9_sp_1;
  assign m_axis_tkeep_0_sn_1 = m_axis_tkeep_0_sp_1;
  assign m_axis_tkeep_10_sn_1 = m_axis_tkeep_10_sp_1;
  assign m_axis_tkeep_11_sn_1 = m_axis_tkeep_11_sp_1;
  assign m_axis_tkeep_12_sn_1 = m_axis_tkeep_12_sp_1;
  assign m_axis_tkeep_13_sn_1 = m_axis_tkeep_13_sp_1;
  assign m_axis_tkeep_14_sn_1 = m_axis_tkeep_14_sp_1;
  assign m_axis_tkeep_15_sn_1 = m_axis_tkeep_15_sp_1;
  assign m_axis_tkeep_16_sn_1 = m_axis_tkeep_16_sp_1;
  assign m_axis_tkeep_17_sn_1 = m_axis_tkeep_17_sp_1;
  assign m_axis_tkeep_18_sn_1 = m_axis_tkeep_18_sp_1;
  assign m_axis_tkeep_19_sn_1 = m_axis_tkeep_19_sp_1;
  assign m_axis_tkeep_1_sn_1 = m_axis_tkeep_1_sp_1;
  assign m_axis_tkeep_2_sn_1 = m_axis_tkeep_2_sp_1;
  assign m_axis_tkeep_3_sn_1 = m_axis_tkeep_3_sp_1;
  assign m_axis_tkeep_4_sn_1 = m_axis_tkeep_4_sp_1;
  assign m_axis_tkeep_5_sn_1 = m_axis_tkeep_5_sp_1;
  assign m_axis_tkeep_6_sn_1 = m_axis_tkeep_6_sp_1;
  assign m_axis_tkeep_7_sn_1 = m_axis_tkeep_7_sp_1;
  assign m_axis_tkeep_8_sn_1 = m_axis_tkeep_8_sp_1;
  assign m_axis_tkeep_9_sn_1 = m_axis_tkeep_9_sp_1;
  assign m_axis_tlast_0_sn_1 = m_axis_tlast_0_sp_1;
  assign m_axis_tlast_1_sn_1 = m_axis_tlast_1_sp_1;
  assign m_axis_tlast_2_sn_1 = m_axis_tlast_2_sp_1;
  assign m_axis_tlast_3_sn_1 = m_axis_tlast_3_sp_1;
  assign m_axis_tlast_4_sn_1 = m_axis_tlast_4_sp_1;
  assign m_axis_tvalid_0_sn_1 = m_axis_tvalid_0_sp_1;
  assign m_axis_tvalid_1_sn_1 = m_axis_tvalid_1_sp_1;
  assign m_axis_tvalid_2_sn_1 = m_axis_tvalid_2_sp_1;
  assign m_axis_tvalid_3_sn_1 = m_axis_tvalid_3_sp_1;
  assign m_axis_tvalid_4_sn_1 = m_axis_tvalid_4_sp_1;
  top_xbar_4_axis_register_slice_v1_1_18_axisc_register_slice \gen_static_routing.inst_decoder_pipeline 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .\gen_AB_reg_slice.state_reg[1]_0 (\gen_AB_reg_slice.state_reg[1] ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdata_0_sp_1(m_axis_tdata_0_sn_1),
        .m_axis_tdata_100_sp_1(m_axis_tdata_100_sn_1),
        .m_axis_tdata_101_sp_1(m_axis_tdata_101_sn_1),
        .m_axis_tdata_102_sp_1(m_axis_tdata_102_sn_1),
        .m_axis_tdata_103_sp_1(m_axis_tdata_103_sn_1),
        .m_axis_tdata_104_sp_1(m_axis_tdata_104_sn_1),
        .m_axis_tdata_105_sp_1(m_axis_tdata_105_sn_1),
        .m_axis_tdata_106_sp_1(m_axis_tdata_106_sn_1),
        .m_axis_tdata_107_sp_1(m_axis_tdata_107_sn_1),
        .m_axis_tdata_108_sp_1(m_axis_tdata_108_sn_1),
        .m_axis_tdata_109_sp_1(m_axis_tdata_109_sn_1),
        .m_axis_tdata_10_sp_1(m_axis_tdata_10_sn_1),
        .m_axis_tdata_110_sp_1(m_axis_tdata_110_sn_1),
        .m_axis_tdata_111_sp_1(m_axis_tdata_111_sn_1),
        .m_axis_tdata_112_sp_1(m_axis_tdata_112_sn_1),
        .m_axis_tdata_113_sp_1(m_axis_tdata_113_sn_1),
        .m_axis_tdata_114_sp_1(m_axis_tdata_114_sn_1),
        .m_axis_tdata_115_sp_1(m_axis_tdata_115_sn_1),
        .m_axis_tdata_116_sp_1(m_axis_tdata_116_sn_1),
        .m_axis_tdata_117_sp_1(m_axis_tdata_117_sn_1),
        .m_axis_tdata_118_sp_1(m_axis_tdata_118_sn_1),
        .m_axis_tdata_119_sp_1(m_axis_tdata_119_sn_1),
        .m_axis_tdata_11_sp_1(m_axis_tdata_11_sn_1),
        .m_axis_tdata_120_sp_1(m_axis_tdata_120_sn_1),
        .m_axis_tdata_121_sp_1(m_axis_tdata_121_sn_1),
        .m_axis_tdata_122_sp_1(m_axis_tdata_122_sn_1),
        .m_axis_tdata_123_sp_1(m_axis_tdata_123_sn_1),
        .m_axis_tdata_124_sp_1(m_axis_tdata_124_sn_1),
        .m_axis_tdata_125_sp_1(m_axis_tdata_125_sn_1),
        .m_axis_tdata_126_sp_1(m_axis_tdata_126_sn_1),
        .m_axis_tdata_127_sp_1(m_axis_tdata_127_sn_1),
        .m_axis_tdata_128_sp_1(m_axis_tdata_128_sn_1),
        .m_axis_tdata_129_sp_1(m_axis_tdata_129_sn_1),
        .m_axis_tdata_12_sp_1(m_axis_tdata_12_sn_1),
        .m_axis_tdata_130_sp_1(m_axis_tdata_130_sn_1),
        .m_axis_tdata_131_sp_1(m_axis_tdata_131_sn_1),
        .m_axis_tdata_132_sp_1(m_axis_tdata_132_sn_1),
        .m_axis_tdata_133_sp_1(m_axis_tdata_133_sn_1),
        .m_axis_tdata_134_sp_1(m_axis_tdata_134_sn_1),
        .m_axis_tdata_135_sp_1(m_axis_tdata_135_sn_1),
        .m_axis_tdata_136_sp_1(m_axis_tdata_136_sn_1),
        .m_axis_tdata_137_sp_1(m_axis_tdata_137_sn_1),
        .m_axis_tdata_138_sp_1(m_axis_tdata_138_sn_1),
        .m_axis_tdata_139_sp_1(m_axis_tdata_139_sn_1),
        .m_axis_tdata_13_sp_1(m_axis_tdata_13_sn_1),
        .m_axis_tdata_140_sp_1(m_axis_tdata_140_sn_1),
        .m_axis_tdata_141_sp_1(m_axis_tdata_141_sn_1),
        .m_axis_tdata_142_sp_1(m_axis_tdata_142_sn_1),
        .m_axis_tdata_143_sp_1(m_axis_tdata_143_sn_1),
        .m_axis_tdata_144_sp_1(m_axis_tdata_144_sn_1),
        .m_axis_tdata_145_sp_1(m_axis_tdata_145_sn_1),
        .m_axis_tdata_146_sp_1(m_axis_tdata_146_sn_1),
        .m_axis_tdata_147_sp_1(m_axis_tdata_147_sn_1),
        .m_axis_tdata_148_sp_1(m_axis_tdata_148_sn_1),
        .m_axis_tdata_149_sp_1(m_axis_tdata_149_sn_1),
        .m_axis_tdata_14_sp_1(m_axis_tdata_14_sn_1),
        .m_axis_tdata_150_sp_1(m_axis_tdata_150_sn_1),
        .m_axis_tdata_151_sp_1(m_axis_tdata_151_sn_1),
        .m_axis_tdata_152_sp_1(m_axis_tdata_152_sn_1),
        .m_axis_tdata_153_sp_1(m_axis_tdata_153_sn_1),
        .m_axis_tdata_154_sp_1(m_axis_tdata_154_sn_1),
        .m_axis_tdata_155_sp_1(m_axis_tdata_155_sn_1),
        .m_axis_tdata_156_sp_1(m_axis_tdata_156_sn_1),
        .m_axis_tdata_157_sp_1(m_axis_tdata_157_sn_1),
        .m_axis_tdata_158_sp_1(m_axis_tdata_158_sn_1),
        .m_axis_tdata_159_sp_1(m_axis_tdata_159_sn_1),
        .m_axis_tdata_15_sp_1(m_axis_tdata_15_sn_1),
        .m_axis_tdata_16_sp_1(m_axis_tdata_16_sn_1),
        .m_axis_tdata_17_sp_1(m_axis_tdata_17_sn_1),
        .m_axis_tdata_18_sp_1(m_axis_tdata_18_sn_1),
        .m_axis_tdata_19_sp_1(m_axis_tdata_19_sn_1),
        .m_axis_tdata_1_sp_1(m_axis_tdata_1_sn_1),
        .m_axis_tdata_20_sp_1(m_axis_tdata_20_sn_1),
        .m_axis_tdata_21_sp_1(m_axis_tdata_21_sn_1),
        .m_axis_tdata_22_sp_1(m_axis_tdata_22_sn_1),
        .m_axis_tdata_23_sp_1(m_axis_tdata_23_sn_1),
        .m_axis_tdata_24_sp_1(m_axis_tdata_24_sn_1),
        .m_axis_tdata_25_sp_1(m_axis_tdata_25_sn_1),
        .m_axis_tdata_26_sp_1(m_axis_tdata_26_sn_1),
        .m_axis_tdata_27_sp_1(m_axis_tdata_27_sn_1),
        .m_axis_tdata_28_sp_1(m_axis_tdata_28_sn_1),
        .m_axis_tdata_29_sp_1(m_axis_tdata_29_sn_1),
        .m_axis_tdata_2_sp_1(m_axis_tdata_2_sn_1),
        .m_axis_tdata_30_sp_1(m_axis_tdata_30_sn_1),
        .m_axis_tdata_31_sp_1(m_axis_tdata_31_sn_1),
        .m_axis_tdata_32_sp_1(m_axis_tdata_32_sn_1),
        .m_axis_tdata_33_sp_1(m_axis_tdata_33_sn_1),
        .m_axis_tdata_34_sp_1(m_axis_tdata_34_sn_1),
        .m_axis_tdata_35_sp_1(m_axis_tdata_35_sn_1),
        .m_axis_tdata_36_sp_1(m_axis_tdata_36_sn_1),
        .m_axis_tdata_37_sp_1(m_axis_tdata_37_sn_1),
        .m_axis_tdata_38_sp_1(m_axis_tdata_38_sn_1),
        .m_axis_tdata_39_sp_1(m_axis_tdata_39_sn_1),
        .m_axis_tdata_3_sp_1(m_axis_tdata_3_sn_1),
        .m_axis_tdata_40_sp_1(m_axis_tdata_40_sn_1),
        .m_axis_tdata_41_sp_1(m_axis_tdata_41_sn_1),
        .m_axis_tdata_42_sp_1(m_axis_tdata_42_sn_1),
        .m_axis_tdata_43_sp_1(m_axis_tdata_43_sn_1),
        .m_axis_tdata_44_sp_1(m_axis_tdata_44_sn_1),
        .m_axis_tdata_45_sp_1(m_axis_tdata_45_sn_1),
        .m_axis_tdata_46_sp_1(m_axis_tdata_46_sn_1),
        .m_axis_tdata_47_sp_1(m_axis_tdata_47_sn_1),
        .m_axis_tdata_48_sp_1(m_axis_tdata_48_sn_1),
        .m_axis_tdata_49_sp_1(m_axis_tdata_49_sn_1),
        .m_axis_tdata_4_sp_1(m_axis_tdata_4_sn_1),
        .m_axis_tdata_50_sp_1(m_axis_tdata_50_sn_1),
        .m_axis_tdata_51_sp_1(m_axis_tdata_51_sn_1),
        .m_axis_tdata_52_sp_1(m_axis_tdata_52_sn_1),
        .m_axis_tdata_53_sp_1(m_axis_tdata_53_sn_1),
        .m_axis_tdata_54_sp_1(m_axis_tdata_54_sn_1),
        .m_axis_tdata_55_sp_1(m_axis_tdata_55_sn_1),
        .m_axis_tdata_56_sp_1(m_axis_tdata_56_sn_1),
        .m_axis_tdata_57_sp_1(m_axis_tdata_57_sn_1),
        .m_axis_tdata_58_sp_1(m_axis_tdata_58_sn_1),
        .m_axis_tdata_59_sp_1(m_axis_tdata_59_sn_1),
        .m_axis_tdata_5_sp_1(m_axis_tdata_5_sn_1),
        .m_axis_tdata_60_sp_1(m_axis_tdata_60_sn_1),
        .m_axis_tdata_61_sp_1(m_axis_tdata_61_sn_1),
        .m_axis_tdata_62_sp_1(m_axis_tdata_62_sn_1),
        .m_axis_tdata_63_sp_1(m_axis_tdata_63_sn_1),
        .m_axis_tdata_64_sp_1(m_axis_tdata_64_sn_1),
        .m_axis_tdata_65_sp_1(m_axis_tdata_65_sn_1),
        .m_axis_tdata_66_sp_1(m_axis_tdata_66_sn_1),
        .m_axis_tdata_67_sp_1(m_axis_tdata_67_sn_1),
        .m_axis_tdata_68_sp_1(m_axis_tdata_68_sn_1),
        .m_axis_tdata_69_sp_1(m_axis_tdata_69_sn_1),
        .m_axis_tdata_6_sp_1(m_axis_tdata_6_sn_1),
        .m_axis_tdata_70_sp_1(m_axis_tdata_70_sn_1),
        .m_axis_tdata_71_sp_1(m_axis_tdata_71_sn_1),
        .m_axis_tdata_72_sp_1(m_axis_tdata_72_sn_1),
        .m_axis_tdata_73_sp_1(m_axis_tdata_73_sn_1),
        .m_axis_tdata_74_sp_1(m_axis_tdata_74_sn_1),
        .m_axis_tdata_75_sp_1(m_axis_tdata_75_sn_1),
        .m_axis_tdata_76_sp_1(m_axis_tdata_76_sn_1),
        .m_axis_tdata_77_sp_1(m_axis_tdata_77_sn_1),
        .m_axis_tdata_78_sp_1(m_axis_tdata_78_sn_1),
        .m_axis_tdata_79_sp_1(m_axis_tdata_79_sn_1),
        .m_axis_tdata_7_sp_1(m_axis_tdata_7_sn_1),
        .m_axis_tdata_80_sp_1(m_axis_tdata_80_sn_1),
        .m_axis_tdata_81_sp_1(m_axis_tdata_81_sn_1),
        .m_axis_tdata_82_sp_1(m_axis_tdata_82_sn_1),
        .m_axis_tdata_83_sp_1(m_axis_tdata_83_sn_1),
        .m_axis_tdata_84_sp_1(m_axis_tdata_84_sn_1),
        .m_axis_tdata_85_sp_1(m_axis_tdata_85_sn_1),
        .m_axis_tdata_86_sp_1(m_axis_tdata_86_sn_1),
        .m_axis_tdata_87_sp_1(m_axis_tdata_87_sn_1),
        .m_axis_tdata_88_sp_1(m_axis_tdata_88_sn_1),
        .m_axis_tdata_89_sp_1(m_axis_tdata_89_sn_1),
        .m_axis_tdata_8_sp_1(m_axis_tdata_8_sn_1),
        .m_axis_tdata_90_sp_1(m_axis_tdata_90_sn_1),
        .m_axis_tdata_91_sp_1(m_axis_tdata_91_sn_1),
        .m_axis_tdata_92_sp_1(m_axis_tdata_92_sn_1),
        .m_axis_tdata_93_sp_1(m_axis_tdata_93_sn_1),
        .m_axis_tdata_94_sp_1(m_axis_tdata_94_sn_1),
        .m_axis_tdata_95_sp_1(m_axis_tdata_95_sn_1),
        .m_axis_tdata_96_sp_1(m_axis_tdata_96_sn_1),
        .m_axis_tdata_97_sp_1(m_axis_tdata_97_sn_1),
        .m_axis_tdata_98_sp_1(m_axis_tdata_98_sn_1),
        .m_axis_tdata_99_sp_1(m_axis_tdata_99_sn_1),
        .m_axis_tdata_9_sp_1(m_axis_tdata_9_sn_1),
        .m_axis_tdest(m_axis_tdest),
        .\m_axis_tdest[11]_0 (\m_axis_tdest[11]_0 ),
        .\m_axis_tdest[11]_1 (\m_axis_tdest[11]_1 ),
        .\m_axis_tdest[14]_0 (\m_axis_tdest[14]_0 ),
        .\m_axis_tdest[14]_1 (\m_axis_tdest[14]_1 ),
        .\m_axis_tdest[2]_0 (\m_axis_tdest[2]_0 ),
        .\m_axis_tdest[2]_1 (\m_axis_tdest[2]_1 ),
        .\m_axis_tdest[5]_0 (\m_axis_tdest[5]_0 ),
        .\m_axis_tdest[5]_1 (\m_axis_tdest[5]_1 ),
        .\m_axis_tdest[8]_0 (\m_axis_tdest[8]_0 ),
        .\m_axis_tdest[8]_1 (\m_axis_tdest[8]_1 ),
        .m_axis_tdest_0_sp_1(m_axis_tdest_0_sn_1),
        .m_axis_tdest_10_sp_1(m_axis_tdest_10_sn_1),
        .m_axis_tdest_11_sp_1(m_axis_tdest_11_sn_1),
        .m_axis_tdest_12_sp_1(m_axis_tdest_12_sn_1),
        .m_axis_tdest_13_sp_1(m_axis_tdest_13_sn_1),
        .m_axis_tdest_14_sp_1(m_axis_tdest_14_sn_1),
        .m_axis_tdest_1_sp_1(m_axis_tdest_1_sn_1),
        .m_axis_tdest_2_sp_1(m_axis_tdest_2_sn_1),
        .m_axis_tdest_3_sp_1(m_axis_tdest_3_sn_1),
        .m_axis_tdest_4_sp_1(m_axis_tdest_4_sn_1),
        .m_axis_tdest_5_sp_1(m_axis_tdest_5_sn_1),
        .m_axis_tdest_6_sp_1(m_axis_tdest_6_sn_1),
        .m_axis_tdest_7_sp_1(m_axis_tdest_7_sn_1),
        .m_axis_tdest_8_sp_1(m_axis_tdest_8_sn_1),
        .m_axis_tdest_9_sp_1(m_axis_tdest_9_sn_1),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tkeep_0_sp_1(m_axis_tkeep_0_sn_1),
        .m_axis_tkeep_10_sp_1(m_axis_tkeep_10_sn_1),
        .m_axis_tkeep_11_sp_1(m_axis_tkeep_11_sn_1),
        .m_axis_tkeep_12_sp_1(m_axis_tkeep_12_sn_1),
        .m_axis_tkeep_13_sp_1(m_axis_tkeep_13_sn_1),
        .m_axis_tkeep_14_sp_1(m_axis_tkeep_14_sn_1),
        .m_axis_tkeep_15_sp_1(m_axis_tkeep_15_sn_1),
        .m_axis_tkeep_16_sp_1(m_axis_tkeep_16_sn_1),
        .m_axis_tkeep_17_sp_1(m_axis_tkeep_17_sn_1),
        .m_axis_tkeep_18_sp_1(m_axis_tkeep_18_sn_1),
        .m_axis_tkeep_19_sp_1(m_axis_tkeep_19_sn_1),
        .m_axis_tkeep_1_sp_1(m_axis_tkeep_1_sn_1),
        .m_axis_tkeep_2_sp_1(m_axis_tkeep_2_sn_1),
        .m_axis_tkeep_3_sp_1(m_axis_tkeep_3_sn_1),
        .m_axis_tkeep_4_sp_1(m_axis_tkeep_4_sn_1),
        .m_axis_tkeep_5_sp_1(m_axis_tkeep_5_sn_1),
        .m_axis_tkeep_6_sp_1(m_axis_tkeep_6_sn_1),
        .m_axis_tkeep_7_sp_1(m_axis_tkeep_7_sn_1),
        .m_axis_tkeep_8_sp_1(m_axis_tkeep_8_sn_1),
        .m_axis_tkeep_9_sp_1(m_axis_tkeep_9_sn_1),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tlast_0_sp_1(m_axis_tlast_0_sn_1),
        .m_axis_tlast_1_sp_1(m_axis_tlast_1_sn_1),
        .m_axis_tlast_2_sp_1(m_axis_tlast_2_sn_1),
        .m_axis_tlast_3_sp_1(m_axis_tlast_3_sn_1),
        .m_axis_tlast_4_sp_1(m_axis_tlast_4_sn_1),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tvalid_0_sp_1(m_axis_tvalid_0_sn_1),
        .m_axis_tvalid_1_sp_1(m_axis_tvalid_1_sn_1),
        .m_axis_tvalid_2_sp_1(m_axis_tvalid_2_sn_1),
        .m_axis_tvalid_3_sp_1(m_axis_tvalid_3_sn_1),
        .m_axis_tvalid_4_sp_1(m_axis_tvalid_4_sn_1),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_reg_bank_16x32" *) 
module top_xbar_4_axis_switch_v1_1_18_reg_bank_16x32
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

(* ORIG_REF_NAME = "axis_switch_v1_1_18_reg_bank_16x32" *) 
module top_xbar_4_axis_switch_v1_1_18_reg_bank_16x32__parameterized0
   (\gen_reg[0].reg_data_reg[31]_0 ,
    Q,
    \gen_reg[1].reg_data_reg[63]_0 ,
    \gen_reg[1].reg_data_reg[63]_1 ,
    \gen_reg[2].reg_data_reg[95]_0 ,
    \gen_reg[2].reg_data_reg[95]_1 ,
    \gen_reg[3].reg_data_reg[127]_0 ,
    \gen_reg[3].reg_data_reg[127]_1 ,
    \gen_reg[4].reg_data_reg[159]_0 ,
    \gen_reg[4].reg_data_reg[159]_1 ,
    \gen_reg[1].reg_data_reg[32]_0 ,
    \gen_reg[1].reg_data_reg[33]_0 ,
    \gen_reg[1].reg_data_reg[34]_0 ,
    \gen_reg[1].reg_data_reg[35]_0 ,
    \gen_reg[1].reg_data_reg[36]_0 ,
    \gen_reg[1].reg_data_reg[37]_0 ,
    \gen_reg[1].reg_data_reg[38]_0 ,
    \gen_reg[1].reg_data_reg[39]_0 ,
    \gen_reg[1].reg_data_reg[40]_0 ,
    \gen_reg[1].reg_data_reg[41]_0 ,
    \gen_reg[1].reg_data_reg[42]_0 ,
    \gen_reg[1].reg_data_reg[43]_0 ,
    \gen_reg[1].reg_data_reg[44]_0 ,
    \gen_reg[1].reg_data_reg[45]_0 ,
    \gen_reg[1].reg_data_reg[46]_0 ,
    \gen_reg[1].reg_data_reg[47]_0 ,
    \gen_reg[1].reg_data_reg[48]_0 ,
    \gen_reg[1].reg_data_reg[49]_0 ,
    \gen_reg[1].reg_data_reg[50]_0 ,
    \gen_reg[1].reg_data_reg[51]_0 ,
    \gen_reg[1].reg_data_reg[52]_0 ,
    \gen_reg[1].reg_data_reg[53]_0 ,
    \gen_reg[1].reg_data_reg[54]_0 ,
    \gen_reg[1].reg_data_reg[55]_0 ,
    \gen_reg[1].reg_data_reg[56]_0 ,
    \gen_reg[1].reg_data_reg[57]_0 ,
    \gen_reg[1].reg_data_reg[58]_0 ,
    \gen_reg[1].reg_data_reg[59]_0 ,
    \gen_reg[1].reg_data_reg[60]_0 ,
    \gen_reg[1].reg_data_reg[61]_0 ,
    \gen_reg[1].reg_data_reg[62]_0 ,
    \data_reg[0] ,
    SR,
    E,
    D,
    s_axi_ctrl_aclk,
    \gen_reg[1].reg_data_reg[63]_2 ,
    \gen_reg[2].reg_data_reg[95]_2 ,
    \gen_reg[3].reg_data_reg[127]_2 ,
    \gen_reg[4].reg_data_reg[159]_2 );
  output \gen_reg[0].reg_data_reg[31]_0 ;
  output [4:0]Q;
  output \gen_reg[1].reg_data_reg[63]_0 ;
  output [4:0]\gen_reg[1].reg_data_reg[63]_1 ;
  output \gen_reg[2].reg_data_reg[95]_0 ;
  output [4:0]\gen_reg[2].reg_data_reg[95]_1 ;
  output \gen_reg[3].reg_data_reg[127]_0 ;
  output [4:0]\gen_reg[3].reg_data_reg[127]_1 ;
  output \gen_reg[4].reg_data_reg[159]_0 ;
  output [31:0]\gen_reg[4].reg_data_reg[159]_1 ;
  output \gen_reg[1].reg_data_reg[32]_0 ;
  output \gen_reg[1].reg_data_reg[33]_0 ;
  output \gen_reg[1].reg_data_reg[34]_0 ;
  output \gen_reg[1].reg_data_reg[35]_0 ;
  output \gen_reg[1].reg_data_reg[36]_0 ;
  output \gen_reg[1].reg_data_reg[37]_0 ;
  output \gen_reg[1].reg_data_reg[38]_0 ;
  output \gen_reg[1].reg_data_reg[39]_0 ;
  output \gen_reg[1].reg_data_reg[40]_0 ;
  output \gen_reg[1].reg_data_reg[41]_0 ;
  output \gen_reg[1].reg_data_reg[42]_0 ;
  output \gen_reg[1].reg_data_reg[43]_0 ;
  output \gen_reg[1].reg_data_reg[44]_0 ;
  output \gen_reg[1].reg_data_reg[45]_0 ;
  output \gen_reg[1].reg_data_reg[46]_0 ;
  output \gen_reg[1].reg_data_reg[47]_0 ;
  output \gen_reg[1].reg_data_reg[48]_0 ;
  output \gen_reg[1].reg_data_reg[49]_0 ;
  output \gen_reg[1].reg_data_reg[50]_0 ;
  output \gen_reg[1].reg_data_reg[51]_0 ;
  output \gen_reg[1].reg_data_reg[52]_0 ;
  output \gen_reg[1].reg_data_reg[53]_0 ;
  output \gen_reg[1].reg_data_reg[54]_0 ;
  output \gen_reg[1].reg_data_reg[55]_0 ;
  output \gen_reg[1].reg_data_reg[56]_0 ;
  output \gen_reg[1].reg_data_reg[57]_0 ;
  output \gen_reg[1].reg_data_reg[58]_0 ;
  output \gen_reg[1].reg_data_reg[59]_0 ;
  output \gen_reg[1].reg_data_reg[60]_0 ;
  output \gen_reg[1].reg_data_reg[61]_0 ;
  output \gen_reg[1].reg_data_reg[62]_0 ;
  input [1:0]\data_reg[0] ;
  input [0:0]SR;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;
  input [0:0]\gen_reg[1].reg_data_reg[63]_2 ;
  input [0:0]\gen_reg[2].reg_data_reg[95]_2 ;
  input [0:0]\gen_reg[3].reg_data_reg[127]_2 ;
  input [0:0]\gen_reg[4].reg_data_reg[159]_2 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire [1:0]\data_reg[0] ;
  wire \gen_reg[0].reg_data_reg[31]_0 ;
  wire [30:4]\gen_reg[0].reg_data_reg__0 ;
  wire [30:4]\gen_reg[1].reg_data_reg ;
  wire \gen_reg[1].reg_data_reg[32]_0 ;
  wire \gen_reg[1].reg_data_reg[33]_0 ;
  wire \gen_reg[1].reg_data_reg[34]_0 ;
  wire \gen_reg[1].reg_data_reg[35]_0 ;
  wire \gen_reg[1].reg_data_reg[36]_0 ;
  wire \gen_reg[1].reg_data_reg[37]_0 ;
  wire \gen_reg[1].reg_data_reg[38]_0 ;
  wire \gen_reg[1].reg_data_reg[39]_0 ;
  wire \gen_reg[1].reg_data_reg[40]_0 ;
  wire \gen_reg[1].reg_data_reg[41]_0 ;
  wire \gen_reg[1].reg_data_reg[42]_0 ;
  wire \gen_reg[1].reg_data_reg[43]_0 ;
  wire \gen_reg[1].reg_data_reg[44]_0 ;
  wire \gen_reg[1].reg_data_reg[45]_0 ;
  wire \gen_reg[1].reg_data_reg[46]_0 ;
  wire \gen_reg[1].reg_data_reg[47]_0 ;
  wire \gen_reg[1].reg_data_reg[48]_0 ;
  wire \gen_reg[1].reg_data_reg[49]_0 ;
  wire \gen_reg[1].reg_data_reg[50]_0 ;
  wire \gen_reg[1].reg_data_reg[51]_0 ;
  wire \gen_reg[1].reg_data_reg[52]_0 ;
  wire \gen_reg[1].reg_data_reg[53]_0 ;
  wire \gen_reg[1].reg_data_reg[54]_0 ;
  wire \gen_reg[1].reg_data_reg[55]_0 ;
  wire \gen_reg[1].reg_data_reg[56]_0 ;
  wire \gen_reg[1].reg_data_reg[57]_0 ;
  wire \gen_reg[1].reg_data_reg[58]_0 ;
  wire \gen_reg[1].reg_data_reg[59]_0 ;
  wire \gen_reg[1].reg_data_reg[60]_0 ;
  wire \gen_reg[1].reg_data_reg[61]_0 ;
  wire \gen_reg[1].reg_data_reg[62]_0 ;
  wire \gen_reg[1].reg_data_reg[63]_0 ;
  wire [4:0]\gen_reg[1].reg_data_reg[63]_1 ;
  wire [0:0]\gen_reg[1].reg_data_reg[63]_2 ;
  wire [30:4]\gen_reg[2].reg_data_reg ;
  wire \gen_reg[2].reg_data_reg[95]_0 ;
  wire [4:0]\gen_reg[2].reg_data_reg[95]_1 ;
  wire [0:0]\gen_reg[2].reg_data_reg[95]_2 ;
  wire [30:4]\gen_reg[3].reg_data_reg ;
  wire \gen_reg[3].reg_data_reg[127]_0 ;
  wire [4:0]\gen_reg[3].reg_data_reg[127]_1 ;
  wire [0:0]\gen_reg[3].reg_data_reg[127]_2 ;
  wire \gen_reg[4].reg_data_reg[159]_0 ;
  wire [31:0]\gen_reg[4].reg_data_reg[159]_1 ;
  wire [0:0]\gen_reg[4].reg_data_reg[159]_2 ;
  wire s_axi_ctrl_aclk;

  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[0]_i_2 
       (.I0(\gen_reg[1].reg_data_reg[63]_1 [0]),
        .I1(\gen_reg[3].reg_data_reg[127]_1 [0]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(Q[0]),
        .I5(\gen_reg[2].reg_data_reg[95]_1 [0]),
        .O(\gen_reg[1].reg_data_reg[32]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[10]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [10]),
        .I1(\gen_reg[3].reg_data_reg [10]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [10]),
        .I5(\gen_reg[2].reg_data_reg [10]),
        .O(\gen_reg[1].reg_data_reg[42]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[11]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [11]),
        .I1(\gen_reg[3].reg_data_reg [11]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [11]),
        .I5(\gen_reg[2].reg_data_reg [11]),
        .O(\gen_reg[1].reg_data_reg[43]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[12]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [12]),
        .I1(\gen_reg[3].reg_data_reg [12]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [12]),
        .I5(\gen_reg[2].reg_data_reg [12]),
        .O(\gen_reg[1].reg_data_reg[44]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[13]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [13]),
        .I1(\gen_reg[3].reg_data_reg [13]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [13]),
        .I5(\gen_reg[2].reg_data_reg [13]),
        .O(\gen_reg[1].reg_data_reg[45]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[14]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [14]),
        .I1(\gen_reg[3].reg_data_reg [14]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [14]),
        .I5(\gen_reg[2].reg_data_reg [14]),
        .O(\gen_reg[1].reg_data_reg[46]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[15]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [15]),
        .I1(\gen_reg[3].reg_data_reg [15]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [15]),
        .I5(\gen_reg[2].reg_data_reg [15]),
        .O(\gen_reg[1].reg_data_reg[47]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[16]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [16]),
        .I1(\gen_reg[3].reg_data_reg [16]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [16]),
        .I5(\gen_reg[2].reg_data_reg [16]),
        .O(\gen_reg[1].reg_data_reg[48]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[17]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [17]),
        .I1(\gen_reg[3].reg_data_reg [17]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [17]),
        .I5(\gen_reg[2].reg_data_reg [17]),
        .O(\gen_reg[1].reg_data_reg[49]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[18]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [18]),
        .I1(\gen_reg[3].reg_data_reg [18]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [18]),
        .I5(\gen_reg[2].reg_data_reg [18]),
        .O(\gen_reg[1].reg_data_reg[50]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[19]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [19]),
        .I1(\gen_reg[3].reg_data_reg [19]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [19]),
        .I5(\gen_reg[2].reg_data_reg [19]),
        .O(\gen_reg[1].reg_data_reg[51]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[1]_i_2 
       (.I0(\gen_reg[1].reg_data_reg[63]_1 [1]),
        .I1(\gen_reg[3].reg_data_reg[127]_1 [1]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(Q[1]),
        .I5(\gen_reg[2].reg_data_reg[95]_1 [1]),
        .O(\gen_reg[1].reg_data_reg[33]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[20]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [20]),
        .I1(\gen_reg[3].reg_data_reg [20]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [20]),
        .I5(\gen_reg[2].reg_data_reg [20]),
        .O(\gen_reg[1].reg_data_reg[52]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[21]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [21]),
        .I1(\gen_reg[3].reg_data_reg [21]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [21]),
        .I5(\gen_reg[2].reg_data_reg [21]),
        .O(\gen_reg[1].reg_data_reg[53]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[22]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [22]),
        .I1(\gen_reg[3].reg_data_reg [22]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [22]),
        .I5(\gen_reg[2].reg_data_reg [22]),
        .O(\gen_reg[1].reg_data_reg[54]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[23]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [23]),
        .I1(\gen_reg[3].reg_data_reg [23]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [23]),
        .I5(\gen_reg[2].reg_data_reg [23]),
        .O(\gen_reg[1].reg_data_reg[55]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[24]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [24]),
        .I1(\gen_reg[3].reg_data_reg [24]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [24]),
        .I5(\gen_reg[2].reg_data_reg [24]),
        .O(\gen_reg[1].reg_data_reg[56]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[25]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [25]),
        .I1(\gen_reg[3].reg_data_reg [25]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [25]),
        .I5(\gen_reg[2].reg_data_reg [25]),
        .O(\gen_reg[1].reg_data_reg[57]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[26]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [26]),
        .I1(\gen_reg[3].reg_data_reg [26]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [26]),
        .I5(\gen_reg[2].reg_data_reg [26]),
        .O(\gen_reg[1].reg_data_reg[58]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[27]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [27]),
        .I1(\gen_reg[3].reg_data_reg [27]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [27]),
        .I5(\gen_reg[2].reg_data_reg [27]),
        .O(\gen_reg[1].reg_data_reg[59]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[28]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [28]),
        .I1(\gen_reg[3].reg_data_reg [28]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [28]),
        .I5(\gen_reg[2].reg_data_reg [28]),
        .O(\gen_reg[1].reg_data_reg[60]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[29]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [29]),
        .I1(\gen_reg[3].reg_data_reg [29]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [29]),
        .I5(\gen_reg[2].reg_data_reg [29]),
        .O(\gen_reg[1].reg_data_reg[61]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[2]_i_2 
       (.I0(\gen_reg[1].reg_data_reg[63]_1 [2]),
        .I1(\gen_reg[3].reg_data_reg[127]_1 [2]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(Q[2]),
        .I5(\gen_reg[2].reg_data_reg[95]_1 [2]),
        .O(\gen_reg[1].reg_data_reg[34]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[30]_i_3 
       (.I0(\gen_reg[1].reg_data_reg [30]),
        .I1(\gen_reg[3].reg_data_reg [30]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [30]),
        .I5(\gen_reg[2].reg_data_reg [30]),
        .O(\gen_reg[1].reg_data_reg[62]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[3]_i_2 
       (.I0(\gen_reg[1].reg_data_reg[63]_1 [3]),
        .I1(\gen_reg[3].reg_data_reg[127]_1 [3]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(Q[3]),
        .I5(\gen_reg[2].reg_data_reg[95]_1 [3]),
        .O(\gen_reg[1].reg_data_reg[35]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[4]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [4]),
        .I1(\gen_reg[3].reg_data_reg [4]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [4]),
        .I5(\gen_reg[2].reg_data_reg [4]),
        .O(\gen_reg[1].reg_data_reg[36]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[5]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [5]),
        .I1(\gen_reg[3].reg_data_reg [5]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [5]),
        .I5(\gen_reg[2].reg_data_reg [5]),
        .O(\gen_reg[1].reg_data_reg[37]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[6]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [6]),
        .I1(\gen_reg[3].reg_data_reg [6]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [6]),
        .I5(\gen_reg[2].reg_data_reg [6]),
        .O(\gen_reg[1].reg_data_reg[38]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[7]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [7]),
        .I1(\gen_reg[3].reg_data_reg [7]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [7]),
        .I5(\gen_reg[2].reg_data_reg [7]),
        .O(\gen_reg[1].reg_data_reg[39]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[8]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [8]),
        .I1(\gen_reg[3].reg_data_reg [8]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [8]),
        .I5(\gen_reg[2].reg_data_reg [8]),
        .O(\gen_reg[1].reg_data_reg[40]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \data[9]_i_2 
       (.I0(\gen_reg[1].reg_data_reg [9]),
        .I1(\gen_reg[3].reg_data_reg [9]),
        .I2(\data_reg[0] [0]),
        .I3(\data_reg[0] [1]),
        .I4(\gen_reg[0].reg_data_reg__0 [9]),
        .I5(\gen_reg[2].reg_data_reg [9]),
        .O(\gen_reg[1].reg_data_reg[41]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[0].mi_mux_en_in[0]_i_1 
       (.I0(Q[4]),
        .O(\gen_reg[0].reg_data_reg[31]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[1].mi_mux_en_in[1]_i_1 
       (.I0(\gen_reg[1].reg_data_reg[63]_1 [4]),
        .O(\gen_reg[1].reg_data_reg[63]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[2].mi_mux_en_in[2]_i_1 
       (.I0(\gen_reg[2].reg_data_reg[95]_1 [4]),
        .O(\gen_reg[2].reg_data_reg[95]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[3].mi_mux_en_in[3]_i_1 
       (.I0(\gen_reg[3].reg_data_reg[127]_1 [4]),
        .O(\gen_reg[3].reg_data_reg[127]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[4].mi_mux_en_in[4]_i_1 
       (.I0(\gen_reg[4].reg_data_reg[159]_1 [31]),
        .O(\gen_reg[4].reg_data_reg[159]_0 ));
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
        .Q(\gen_reg[0].reg_data_reg__0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\gen_reg[0].reg_data_reg__0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\gen_reg[0].reg_data_reg__0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\gen_reg[0].reg_data_reg__0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\gen_reg[0].reg_data_reg__0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\gen_reg[0].reg_data_reg__0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\gen_reg[0].reg_data_reg__0 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\gen_reg[0].reg_data_reg__0 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\gen_reg[0].reg_data_reg__0 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\gen_reg[0].reg_data_reg__0 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\gen_reg[0].reg_data_reg__0 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\gen_reg[0].reg_data_reg__0 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\gen_reg[0].reg_data_reg__0 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\gen_reg[0].reg_data_reg__0 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(\gen_reg[0].reg_data_reg__0 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(\gen_reg[0].reg_data_reg__0 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(\gen_reg[0].reg_data_reg__0 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(\gen_reg[0].reg_data_reg__0 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(\gen_reg[0].reg_data_reg__0 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(\gen_reg[0].reg_data_reg__0 [29]),
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
        .Q(\gen_reg[0].reg_data_reg__0 [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(Q[4]),
        .S(SR));
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
        .Q(\gen_reg[0].reg_data_reg__0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\gen_reg[0].reg_data_reg__0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\gen_reg[0].reg_data_reg__0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\gen_reg[0].reg_data_reg__0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\gen_reg[0].reg_data_reg__0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\gen_reg[0].reg_data_reg__0 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[0]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[1]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[2]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[3]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[4]),
        .Q(\gen_reg[1].reg_data_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[5]),
        .Q(\gen_reg[1].reg_data_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[6]),
        .Q(\gen_reg[1].reg_data_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[7]),
        .Q(\gen_reg[1].reg_data_reg [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[8]),
        .Q(\gen_reg[1].reg_data_reg [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[9]),
        .Q(\gen_reg[1].reg_data_reg [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[10]),
        .Q(\gen_reg[1].reg_data_reg [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[11]),
        .Q(\gen_reg[1].reg_data_reg [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[12]),
        .Q(\gen_reg[1].reg_data_reg [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[13]),
        .Q(\gen_reg[1].reg_data_reg [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[14]),
        .Q(\gen_reg[1].reg_data_reg [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[15]),
        .Q(\gen_reg[1].reg_data_reg [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[16]),
        .Q(\gen_reg[1].reg_data_reg [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[17]),
        .Q(\gen_reg[1].reg_data_reg [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[18]),
        .Q(\gen_reg[1].reg_data_reg [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[19]),
        .Q(\gen_reg[1].reg_data_reg [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[20]),
        .Q(\gen_reg[1].reg_data_reg [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[21]),
        .Q(\gen_reg[1].reg_data_reg [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[22]),
        .Q(\gen_reg[1].reg_data_reg [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[23]),
        .Q(\gen_reg[1].reg_data_reg [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[24]),
        .Q(\gen_reg[1].reg_data_reg [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[25]),
        .Q(\gen_reg[1].reg_data_reg [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[26]),
        .Q(\gen_reg[1].reg_data_reg [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[27]),
        .Q(\gen_reg[1].reg_data_reg [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[28]),
        .Q(\gen_reg[1].reg_data_reg [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[29]),
        .Q(\gen_reg[1].reg_data_reg [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[30]),
        .Q(\gen_reg[1].reg_data_reg [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[1].reg_data_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[1].reg_data_reg[63]_2 ),
        .D(D[31]),
        .Q(\gen_reg[1].reg_data_reg[63]_1 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[64] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[0]),
        .Q(\gen_reg[2].reg_data_reg[95]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[65] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[1]),
        .Q(\gen_reg[2].reg_data_reg[95]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[66] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[2]),
        .Q(\gen_reg[2].reg_data_reg[95]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[67] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[3]),
        .Q(\gen_reg[2].reg_data_reg[95]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[68] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[4]),
        .Q(\gen_reg[2].reg_data_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[69] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[5]),
        .Q(\gen_reg[2].reg_data_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[70] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[6]),
        .Q(\gen_reg[2].reg_data_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[71] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[7]),
        .Q(\gen_reg[2].reg_data_reg [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[72] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[8]),
        .Q(\gen_reg[2].reg_data_reg [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[73] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[9]),
        .Q(\gen_reg[2].reg_data_reg [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[74] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[10]),
        .Q(\gen_reg[2].reg_data_reg [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[75] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[11]),
        .Q(\gen_reg[2].reg_data_reg [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[76] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[12]),
        .Q(\gen_reg[2].reg_data_reg [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[77] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[13]),
        .Q(\gen_reg[2].reg_data_reg [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[78] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[14]),
        .Q(\gen_reg[2].reg_data_reg [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[79] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[15]),
        .Q(\gen_reg[2].reg_data_reg [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[80] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[16]),
        .Q(\gen_reg[2].reg_data_reg [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[81] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[17]),
        .Q(\gen_reg[2].reg_data_reg [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[82] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[18]),
        .Q(\gen_reg[2].reg_data_reg [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[83] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[19]),
        .Q(\gen_reg[2].reg_data_reg [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[84] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[20]),
        .Q(\gen_reg[2].reg_data_reg [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[85] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[21]),
        .Q(\gen_reg[2].reg_data_reg [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[86] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[22]),
        .Q(\gen_reg[2].reg_data_reg [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[87] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[23]),
        .Q(\gen_reg[2].reg_data_reg [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[88] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[24]),
        .Q(\gen_reg[2].reg_data_reg [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[89] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[25]),
        .Q(\gen_reg[2].reg_data_reg [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[90] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[26]),
        .Q(\gen_reg[2].reg_data_reg [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[91] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[27]),
        .Q(\gen_reg[2].reg_data_reg [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[92] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[28]),
        .Q(\gen_reg[2].reg_data_reg [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[93] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[29]),
        .Q(\gen_reg[2].reg_data_reg [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[94] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[30]),
        .Q(\gen_reg[2].reg_data_reg [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[2].reg_data_reg[95] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[2].reg_data_reg[95]_2 ),
        .D(D[31]),
        .Q(\gen_reg[2].reg_data_reg[95]_1 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[100] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[4]),
        .Q(\gen_reg[3].reg_data_reg [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[101] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[5]),
        .Q(\gen_reg[3].reg_data_reg [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[102] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[6]),
        .Q(\gen_reg[3].reg_data_reg [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[103] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[7]),
        .Q(\gen_reg[3].reg_data_reg [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[104] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[8]),
        .Q(\gen_reg[3].reg_data_reg [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[105] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[9]),
        .Q(\gen_reg[3].reg_data_reg [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[106] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[10]),
        .Q(\gen_reg[3].reg_data_reg [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[107] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[11]),
        .Q(\gen_reg[3].reg_data_reg [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[108] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[12]),
        .Q(\gen_reg[3].reg_data_reg [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[109] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[13]),
        .Q(\gen_reg[3].reg_data_reg [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[110] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[14]),
        .Q(\gen_reg[3].reg_data_reg [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[111] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[15]),
        .Q(\gen_reg[3].reg_data_reg [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[112] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[16]),
        .Q(\gen_reg[3].reg_data_reg [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[113] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[17]),
        .Q(\gen_reg[3].reg_data_reg [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[114] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[18]),
        .Q(\gen_reg[3].reg_data_reg [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[115] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[19]),
        .Q(\gen_reg[3].reg_data_reg [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[116] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[20]),
        .Q(\gen_reg[3].reg_data_reg [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[117] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[21]),
        .Q(\gen_reg[3].reg_data_reg [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[118] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[22]),
        .Q(\gen_reg[3].reg_data_reg [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[119] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[23]),
        .Q(\gen_reg[3].reg_data_reg [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[120] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[24]),
        .Q(\gen_reg[3].reg_data_reg [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[121] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[25]),
        .Q(\gen_reg[3].reg_data_reg [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[122] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[26]),
        .Q(\gen_reg[3].reg_data_reg [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[123] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[27]),
        .Q(\gen_reg[3].reg_data_reg [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[124] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[28]),
        .Q(\gen_reg[3].reg_data_reg [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[125] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[29]),
        .Q(\gen_reg[3].reg_data_reg [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[126] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[30]),
        .Q(\gen_reg[3].reg_data_reg [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[3].reg_data_reg[127] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[31]),
        .Q(\gen_reg[3].reg_data_reg[127]_1 [4]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[96] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[0]),
        .Q(\gen_reg[3].reg_data_reg[127]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[97] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[1]),
        .Q(\gen_reg[3].reg_data_reg[127]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[98] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[2]),
        .Q(\gen_reg[3].reg_data_reg[127]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[99] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[3].reg_data_reg[127]_2 ),
        .D(D[3]),
        .Q(\gen_reg[3].reg_data_reg[127]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[128] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[0]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[129] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[1]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[130] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[2]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[131] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[3]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[132] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[4]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[133] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[5]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[134] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[6]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[135] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[7]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[136] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[8]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[137] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[9]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[138] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[10]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[139] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[11]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[140] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[12]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[141] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[13]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[142] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[14]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[143] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[15]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[144] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[16]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[145] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[17]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[146] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[18]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[147] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[19]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[148] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[20]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[149] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[21]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[150] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[22]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[151] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[23]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[152] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[24]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[153] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[25]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[154] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[26]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[155] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[27]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[156] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[28]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[157] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[29]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[158] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[30]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [30]),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[4].reg_data_reg[159] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_reg[4].reg_data_reg[159]_2 ),
        .D(D[31]),
        .Q(\gen_reg[4].reg_data_reg[159]_1 [31]),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_static_router" *) 
module top_xbar_4_axis_switch_v1_1_18_static_router
   (s_axi_ctrl_rvalid,
    s_axi_arready,
    Q,
    s_axi_ctrl_rdata,
    \ctrl_reg_r_reg[49] ,
    src_send,
    src_in,
    SR,
    s_axi_ctrl_aclk,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    src_rcv,
    s_axi_ctrl_bready,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_awvalid);
  output s_axi_ctrl_rvalid;
  output s_axi_arready;
  output [1:0]Q;
  output [31:0]s_axi_ctrl_rdata;
  output [49:0]\ctrl_reg_r_reg[49] ;
  output src_send;
  output src_in;
  input [0:0]SR;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input [31:0]s_axi_ctrl_wdata;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input src_rcv;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_wvalid;
  input s_axi_ctrl_awvalid;

  wire [1:0]Q;
  wire [0:0]SR;
  wire commit_reset;
  wire [49:0]\ctrl_reg_r_reg[49] ;
  wire [3:0]\gen_reg[0].reg_data_reg__0 ;
  wire [3:0]\gen_reg[1].reg_data_reg ;
  wire [3:0]\gen_reg[2].reg_data_reg ;
  wire [3:0]\gen_reg[3].reg_data_reg ;
  wire [3:0]\gen_reg[4].reg_data_reg ;
  wire inst_axi_ctrl_top_n_0;
  wire inst_axi_ctrl_top_n_10;
  wire inst_axi_ctrl_top_n_15;
  wire inst_axi_ctrl_top_n_20;
  wire inst_axi_ctrl_top_n_5;
  wire reg_commit;
  wire s_axi_arready;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire src_in;
  wire src_rcv;
  wire src_send;

  top_xbar_4_axis_switch_v1_1_18_axi_ctrl_top inst_axi_ctrl_top
       (.\FSM_onehot_state_reg[2] ({s_axi_ctrl_rvalid,s_axi_arready}),
        .Q(\gen_reg[0].reg_data_reg__0 ),
        .SR(SR),
        .\gen_reg[0].reg_data_reg[0] (commit_reset),
        .\gen_reg[0].reg_data_reg[1] (reg_commit),
        .\gen_reg[0].reg_data_reg[31] (inst_axi_ctrl_top_n_0),
        .\gen_reg[1].reg_data_reg[35] (\gen_reg[1].reg_data_reg ),
        .\gen_reg[1].reg_data_reg[63] (inst_axi_ctrl_top_n_5),
        .\gen_reg[2].reg_data_reg[67] (\gen_reg[2].reg_data_reg ),
        .\gen_reg[2].reg_data_reg[95] (inst_axi_ctrl_top_n_10),
        .\gen_reg[3].reg_data_reg[127] (inst_axi_ctrl_top_n_15),
        .\gen_reg[3].reg_data_reg[99] (\gen_reg[3].reg_data_reg ),
        .\gen_reg[4].reg_data_reg[131] (\gen_reg[4].reg_data_reg ),
        .\gen_reg[4].reg_data_reg[159] (inst_axi_ctrl_top_n_20),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\state_reg[1] (Q));
  top_xbar_4_axis_switch_v1_1_18_static_router_config inst_start_router_config
       (.D(\gen_reg[0].reg_data_reg__0 ),
        .\FSM_onehot_state_reg[1]_0 (reg_commit),
        .Q(commit_reset),
        .SR(SR),
        .\ctrl_reg_r_reg[49]_0 (\ctrl_reg_r_reg[49] ),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0] (inst_axi_ctrl_top_n_0),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1] (inst_axi_ctrl_top_n_5),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7] (\gen_reg[1].reg_data_reg ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2] (inst_axi_ctrl_top_n_10),
        .\gen_mi_mux_in[2].mi_mux_in_reg[11] (\gen_reg[2].reg_data_reg ),
        .\gen_mi_mux_in[3].mi_mux_en_in_reg[3] (inst_axi_ctrl_top_n_15),
        .\gen_mi_mux_in[3].mi_mux_in_reg[15] (\gen_reg[3].reg_data_reg ),
        .\gen_mi_mux_in[4].mi_mux_en_in_reg[4] (inst_axi_ctrl_top_n_20),
        .\gen_mi_mux_in[4].mi_mux_in_reg[19] (\gen_reg[4].reg_data_reg ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_static_router_config" *) 
module top_xbar_4_axis_switch_v1_1_18_static_router_config
   (src_send,
    src_in,
    Q,
    \ctrl_reg_r_reg[49]_0 ,
    s_axi_ctrl_aclk,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ,
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ,
    \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ,
    SR,
    src_rcv,
    \FSM_onehot_state_reg[1]_0 ,
    D,
    \gen_mi_mux_in[1].mi_mux_in_reg[7] ,
    \gen_mi_mux_in[2].mi_mux_in_reg[11] ,
    \gen_mi_mux_in[3].mi_mux_in_reg[15] ,
    \gen_mi_mux_in[4].mi_mux_in_reg[19] );
  output src_send;
  output src_in;
  output [0:0]Q;
  output [49:0]\ctrl_reg_r_reg[49]_0 ;
  input s_axi_ctrl_aclk;
  input \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  input \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  input \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  input \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  input \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ;
  input [0:0]SR;
  input src_rcv;
  input [0:0]\FSM_onehot_state_reg[1]_0 ;
  input [3:0]D;
  input [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  input [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  input [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;
  input [3:0]\gen_mi_mux_in[4].mi_mux_in_reg[19] ;

  wire [3:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [49:0]\ctrl_reg_r_reg[49]_0 ;
  wire ctrl_soft_reset_r0;
  wire ctrl_soft_reset_r_i_1_n_0;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  wire [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  wire \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  wire [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;
  wire \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ;
  wire [3:0]\gen_mi_mux_in[4].mi_mux_in_reg[19] ;
  wire [3:0]\gen_si_mux[0].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[1].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[2].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[3].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[4].si_mux_r_reg ;
  wire inst_start_router_config_dp_n_50;
  wire inst_start_router_config_dp_n_51;
  wire inst_start_router_config_dp_n_52;
  wire inst_start_router_config_dp_n_53;
  wire [4:0]mi_enable;
  wire [19:0]mi_mux;
  wire s_axi_ctrl_aclk;
  wire [4:0]si_enable;
  wire src_in;
  wire src_rcv;
  wire src_send;
  wire start;

  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(ctrl_soft_reset_r0),
        .I2(Q),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(src_rcv),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(ctrl_soft_reset_r0),
        .S(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_52),
        .Q(start),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_51),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_50),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_IDLE:00001,SM_START:00010,SM_WAIT:00100,SM_COMMIT:01000,SM_COMPLETE:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[0]),
        .Q(\ctrl_reg_r_reg[49]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[10]),
        .Q(\ctrl_reg_r_reg[49]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[11]),
        .Q(\ctrl_reg_r_reg[49]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[12]),
        .Q(\ctrl_reg_r_reg[49]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[13]),
        .Q(\ctrl_reg_r_reg[49]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[14]),
        .Q(\ctrl_reg_r_reg[49]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[15]),
        .Q(\ctrl_reg_r_reg[49]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[16]),
        .Q(\ctrl_reg_r_reg[49]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[17]),
        .Q(\ctrl_reg_r_reg[49]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[18]),
        .Q(\ctrl_reg_r_reg[49]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[19]),
        .Q(\ctrl_reg_r_reg[49]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[1]),
        .Q(\ctrl_reg_r_reg[49]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[0]),
        .Q(\ctrl_reg_r_reg[49]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[1]),
        .Q(\ctrl_reg_r_reg[49]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[2]),
        .Q(\ctrl_reg_r_reg[49]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[3]),
        .Q(\ctrl_reg_r_reg[49]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[4]),
        .Q(\ctrl_reg_r_reg[49]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [0]),
        .Q(\ctrl_reg_r_reg[49]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [1]),
        .Q(\ctrl_reg_r_reg[49]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [2]),
        .Q(\ctrl_reg_r_reg[49]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [3]),
        .Q(\ctrl_reg_r_reg[49]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [0]),
        .Q(\ctrl_reg_r_reg[49]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[2]),
        .Q(\ctrl_reg_r_reg[49]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [1]),
        .Q(\ctrl_reg_r_reg[49]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [2]),
        .Q(\ctrl_reg_r_reg[49]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [3]),
        .Q(\ctrl_reg_r_reg[49]_0 [32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [0]),
        .Q(\ctrl_reg_r_reg[49]_0 [33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [1]),
        .Q(\ctrl_reg_r_reg[49]_0 [34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [2]),
        .Q(\ctrl_reg_r_reg[49]_0 [35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [3]),
        .Q(\ctrl_reg_r_reg[49]_0 [36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [0]),
        .Q(\ctrl_reg_r_reg[49]_0 [37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [1]),
        .Q(\ctrl_reg_r_reg[49]_0 [38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [2]),
        .Q(\ctrl_reg_r_reg[49]_0 [39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[3]),
        .Q(\ctrl_reg_r_reg[49]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [3]),
        .Q(\ctrl_reg_r_reg[49]_0 [40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [0]),
        .Q(\ctrl_reg_r_reg[49]_0 [41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [1]),
        .Q(\ctrl_reg_r_reg[49]_0 [42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [2]),
        .Q(\ctrl_reg_r_reg[49]_0 [43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [3]),
        .Q(\ctrl_reg_r_reg[49]_0 [44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[0]),
        .Q(\ctrl_reg_r_reg[49]_0 [45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[1]),
        .Q(\ctrl_reg_r_reg[49]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[2]),
        .Q(\ctrl_reg_r_reg[49]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[3]),
        .Q(\ctrl_reg_r_reg[49]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[4]),
        .Q(\ctrl_reg_r_reg[49]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[4]),
        .Q(\ctrl_reg_r_reg[49]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[5]),
        .Q(\ctrl_reg_r_reg[49]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[6]),
        .Q(\ctrl_reg_r_reg[49]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[7]),
        .Q(\ctrl_reg_r_reg[49]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[8]),
        .Q(\ctrl_reg_r_reg[49]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[9]),
        .Q(\ctrl_reg_r_reg[49]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_req_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_53),
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
  top_xbar_4_axis_switch_v1_1_18_static_router_config_dp inst_start_router_config_dp
       (.D({\gen_si_mux[4].si_mux_r_reg ,\gen_si_mux[3].si_mux_r_reg ,\gen_si_mux[2].si_mux_r_reg ,\gen_si_mux[1].si_mux_r_reg ,\gen_si_mux[0].si_mux_r_reg ,mi_enable,mi_mux}),
        .\FSM_onehot_state_reg[1] (\FSM_onehot_state_reg[1]_0 ),
        .Q({\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,start,ctrl_soft_reset_r0}),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 (\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ),
        .\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 (D),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 (\gen_mi_mux_in[1].mi_mux_en_in_reg[1] ),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 (\gen_mi_mux_in[1].mi_mux_in_reg[7] ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 (\gen_mi_mux_in[2].mi_mux_en_in_reg[2] ),
        .\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 (\gen_mi_mux_in[2].mi_mux_in_reg[11] ),
        .\gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 (\gen_mi_mux_in[3].mi_mux_en_in_reg[3] ),
        .\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 (\gen_mi_mux_in[3].mi_mux_in_reg[15] ),
        .\gen_mi_mux_in[4].mi_mux_en_in_reg[4]_0 (\gen_mi_mux_in[4].mi_mux_en_in_reg[4] ),
        .\gen_mi_mux_in[4].mi_mux_in_reg[19]_0 (\gen_mi_mux_in[4].mi_mux_in_reg[19] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .si_enable(si_enable),
        .src_rcv(src_rcv),
        .src_send(src_send),
        .\syncstages_ff_reg[3] ({inst_start_router_config_dp_n_50,inst_start_router_config_dp_n_51,inst_start_router_config_dp_n_52}),
        .\syncstages_ff_reg[3]_0 (inst_start_router_config_dp_n_53));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_18_static_router_config_dp" *) 
module top_xbar_4_axis_switch_v1_1_18_static_router_config_dp
   (si_enable,
    D,
    \syncstages_ff_reg[3] ,
    \syncstages_ff_reg[3]_0 ,
    Q,
    s_axi_ctrl_aclk,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ,
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ,
    \gen_mi_mux_in[4].mi_mux_en_in_reg[4]_0 ,
    src_rcv,
    \FSM_onehot_state_reg[1] ,
    src_send,
    \gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ,
    \gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ,
    \gen_mi_mux_in[2].mi_mux_in_reg[11]_0 ,
    \gen_mi_mux_in[3].mi_mux_in_reg[15]_0 ,
    \gen_mi_mux_in[4].mi_mux_in_reg[19]_0 );
  output [4:0]si_enable;
  output [44:0]D;
  output [2:0]\syncstages_ff_reg[3] ;
  output \syncstages_ff_reg[3]_0 ;
  input [3:0]Q;
  input s_axi_ctrl_aclk;
  input \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ;
  input \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ;
  input \gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ;
  input \gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ;
  input \gen_mi_mux_in[4].mi_mux_en_in_reg[4]_0 ;
  input src_rcv;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input src_send;
  input [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ;
  input [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ;
  input [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 ;
  input [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 ;
  input [3:0]\gen_mi_mux_in[4].mi_mux_in_reg[19]_0 ;

  wire \/i__n_0 ;
  wire [44:0]D;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire [3:0]Q;
  wire \__3/i__n_0 ;
  wire \__4/i__n_0 ;
  wire done;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ;
  wire \gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ;
  wire \gen_mi_enable[2].mi_enable_r[2]_i_2_n_0 ;
  wire \gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ;
  wire \gen_mi_enable[4].mi_enable_r[4]_i_1_n_0 ;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ;
  wire [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ;
  wire [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 ;
  wire \gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ;
  wire [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 ;
  wire \gen_mi_mux_in[4].mi_mux_en_in_reg[4]_0 ;
  wire [3:0]\gen_mi_mux_in[4].mi_mux_in_reg[19]_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_2_n_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_3_n_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_4_n_0 ;
  wire \gen_si_enable[2].si_enable_r[2]_i_2_n_0 ;
  wire \gen_si_enable[4].si_enable_r[4]_i_2_n_0 ;
  wire \gen_si_mux[0].si_mux_r[3]_i_1_n_0 ;
  wire \gen_si_mux[1].si_mux_r[7]_i_1_n_0 ;
  wire \gen_si_mux[2].si_mux_r[11]_i_1_n_0 ;
  wire \gen_si_mux[3].si_mux_r[15]_i_1_n_0 ;
  wire \gen_si_mux[4].si_mux_r[19]_i_1_n_0 ;
  wire \mi_cntr[2]_i_1_n_0 ;
  wire \mi_cntr_reg_n_0_[0] ;
  wire \mi_cntr_reg_n_0_[1] ;
  wire \mi_cntr_reg_n_0_[2] ;
  wire \mi_cntr_reg_n_0_[3] ;
  wire [4:0]mi_connectivity;
  wire \mi_connectivity[0]_i_1_n_0 ;
  wire \mi_connectivity[1]_i_1_n_0 ;
  wire \mi_connectivity[2]_i_1_n_0 ;
  wire \mi_connectivity[3]_i_1_n_0 ;
  wire \mi_connectivity[4]_i_1_n_0 ;
  wire [4:0]mi_mux_en_in;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in_0;
  wire p_35_out;
  wire p_37_out;
  wire p_40_out;
  wire p_43_out;
  wire p_45_out;
  wire s_axi_ctrl_aclk;
  wire sel;
  wire \selectee[0]_i_1_n_0 ;
  wire \selectee[0]_i_2_n_0 ;
  wire \selectee[1]_i_1_n_0 ;
  wire \selectee[1]_i_2_n_0 ;
  wire \selectee[2]_i_1_n_0 ;
  wire \selectee[2]_i_2_n_0 ;
  wire \selectee[3]_i_1_n_0 ;
  wire \selectee[3]_i_2_n_0 ;
  wire [3:0]selector;
  wire selector_enable_i_1_n_0;
  wire selector_enable_i_2_n_0;
  wire [4:0]si_enable;
  wire src_rcv;
  wire src_send;
  wire start_r;
  wire stg1_done;
  wire stg1_done_i_1_n_0;
  wire stg1_reset;
  wire stg1_reset0;
  wire stg2_done_i_1_n_0;
  wire stg2_reset;
  wire [2:0]\syncstages_ff_reg[3] ;
  wire \syncstages_ff_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \/i_ 
       (.I0(selector[3]),
        .I1(selector[2]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(\/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(done),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(Q[0]),
        .O(\syncstages_ff_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[2]),
        .I1(done),
        .I2(Q[1]),
        .O(\syncstages_ff_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(src_rcv),
        .I1(Q[3]),
        .I2(done),
        .I3(Q[2]),
        .O(\syncstages_ff_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \__3/i_ 
       (.I0(selector[3]),
        .I1(selector[2]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(\__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \__4/i_ 
       (.I0(selector[3]),
        .I1(selector[0]),
        .I2(selector[2]),
        .I3(selector[1]),
        .O(\__4/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hF777F000)) 
    ctrl_req_r_i_1
       (.I0(src_rcv),
        .I1(Q[3]),
        .I2(done),
        .I3(Q[2]),
        .I4(src_send),
        .O(\syncstages_ff_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[4]),
        .I3(\/i__n_0 ),
        .I4(D[20]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEAE)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ),
        .I2(p_0_in_0[2]),
        .I3(p_0_in_0[0]),
        .I4(si_enable[4]),
        .I5(p_0_in_0[1]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_3 
       (.I0(si_enable[3]),
        .I1(si_enable[2]),
        .I2(p_0_in_0[1]),
        .I3(si_enable[1]),
        .I4(p_0_in_0[0]),
        .I5(si_enable[0]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[0].mi_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ),
        .Q(D[20]),
        .R(stg2_reset));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[4]),
        .I3(\gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ),
        .I4(D[21]),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_2 
       (.I0(selector[3]),
        .I1(selector[2]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[1].mi_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ),
        .Q(D[21]),
        .R(stg2_reset));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \gen_mi_enable[2].mi_enable_r[2]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[4]),
        .I3(\gen_mi_enable[2].mi_enable_r[2]_i_2_n_0 ),
        .I4(D[22]),
        .O(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_mi_enable[2].mi_enable_r[2]_i_2 
       (.I0(selector[3]),
        .I1(selector[2]),
        .I2(selector[1]),
        .I3(selector[0]),
        .O(\gen_mi_enable[2].mi_enable_r[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[2].mi_enable_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ),
        .Q(D[22]),
        .R(stg2_reset));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \gen_mi_enable[3].mi_enable_r[3]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[4]),
        .I3(\__3/i__n_0 ),
        .I4(D[23]),
        .O(\gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[3].mi_enable_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ),
        .Q(D[23]),
        .R(stg2_reset));
  LUT5 #(
    .INIT(32'hFFFF4000)) 
    \gen_mi_enable[4].mi_enable_r[4]_i_1 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_2_n_0 ),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[4]),
        .I3(\__4/i__n_0 ),
        .I4(D[24]),
        .O(\gen_mi_enable[4].mi_enable_r[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[4].mi_enable_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[4].mi_enable_r[4]_i_1_n_0 ),
        .Q(D[24]),
        .R(stg2_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_en_in_reg[0]_0 ),
        .Q(mi_mux_en_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[0].mi_mux_in_reg[3]_0 [3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_en_in_reg[1]_0 ),
        .Q(mi_mux_en_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [0]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [1]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [2]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[1].mi_mux_in_reg[7]_0 [3]),
        .Q(D[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_en_in_reg[2]_0 ),
        .Q(mi_mux_en_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[2].mi_mux_in_reg[11]_0 [1]),
        .Q(D[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_en_in_reg[3]_0 ),
        .Q(mi_mux_en_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [0]),
        .Q(D[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [1]),
        .Q(D[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [2]),
        .Q(D[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[3].mi_mux_in_reg[15]_0 [3]),
        .Q(D[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_en_in_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[4].mi_mux_en_in_reg[4]_0 ),
        .Q(mi_mux_en_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[4].mi_mux_in_reg[19]_0 [0]),
        .Q(D[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[4].mi_mux_in_reg[19]_0 [1]),
        .Q(D[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[4].mi_mux_in_reg[19]_0 [2]),
        .Q(D[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_mi_mux_in[4].mi_mux_in_reg[19]_0 [3]),
        .Q(D[19]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \gen_si_enable[0].si_enable_r[0]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_3_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(si_enable[0]),
        .O(p_45_out));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    \gen_si_enable[0].si_enable_r[0]_i_2 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_4_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(mi_connectivity[4]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[3]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \gen_si_enable[0].si_enable_r[0]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[4]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_si_enable[0].si_enable_r[0]_i_4 
       (.I0(mi_connectivity[3]),
        .I1(mi_connectivity[2]),
        .I2(p_0_in_0[1]),
        .I3(mi_connectivity[1]),
        .I4(p_0_in_0[0]),
        .I5(mi_connectivity[0]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[0].si_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_45_out),
        .Q(si_enable[0]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \gen_si_enable[1].si_enable_r[1]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(\gen_si_enable[0].si_enable_r[0]_i_3_n_0 ),
        .I3(si_enable[1]),
        .O(p_43_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[1].si_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_43_out),
        .Q(si_enable[1]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFF02)) 
    \gen_si_enable[2].si_enable_r[2]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(\gen_si_enable[2].si_enable_r[2]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(si_enable[2]),
        .O(p_40_out));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \gen_si_enable[2].si_enable_r[2]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[4]),
        .O(\gen_si_enable[2].si_enable_r[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[2].si_enable_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_40_out),
        .Q(si_enable[2]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    \gen_si_enable[3].si_enable_r[3]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[0]),
        .I2(\gen_si_enable[2].si_enable_r[2]_i_2_n_0 ),
        .I3(si_enable[3]),
        .O(p_37_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[3].si_enable_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_37_out),
        .Q(si_enable[3]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \gen_si_enable[4].si_enable_r[4]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[2]),
        .I3(\gen_si_enable[4].si_enable_r[4]_i_2_n_0 ),
        .I4(p_0_in_0[0]),
        .I5(si_enable[4]),
        .O(p_35_out));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_si_enable[4].si_enable_r[4]_i_2 
       (.I0(p_0_in_0[3]),
        .I1(p_0_in_0[4]),
        .O(\gen_si_enable[4].si_enable_r[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[4].si_enable_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_35_out),
        .Q(si_enable[4]),
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
        .Q(D[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[28]),
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
        .Q(D[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[32]),
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
        .Q(D[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[34]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[3].si_mux_r[15]_i_1 
       (.I0(si_enable[3]),
        .O(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[40]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[4].si_mux_r[19]_i_1 
       (.I0(si_enable[4]),
        .O(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(selector[0]),
        .Q(D[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(selector[1]),
        .Q(D[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(selector[2]),
        .Q(D[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(selector[3]),
        .Q(D[44]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mi_cntr[0]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mi_cntr[1]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mi_cntr[2]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(\mi_cntr_reg_n_0_[2] ),
        .O(\mi_cntr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \mi_cntr[3]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[2] ),
        .I2(\mi_cntr_reg_n_0_[1] ),
        .I3(\mi_cntr_reg_n_0_[3] ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mi_cntr[3]_i_2 
       (.I0(\mi_cntr_reg_n_0_[1] ),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(\mi_cntr_reg_n_0_[2] ),
        .I3(\mi_cntr_reg_n_0_[3] ),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(\mi_cntr_reg_n_0_[0] ),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(\mi_cntr_reg_n_0_[1] ),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b1)) 
    \mi_cntr_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(\mi_cntr[2]_i_1_n_0 ),
        .Q(\mi_cntr_reg_n_0_[2] ),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(\mi_cntr_reg_n_0_[3] ),
        .R(stg1_reset));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hE9FF)) 
    \mi_connectivity[0]_i_1 
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[3] ),
        .I2(\mi_cntr_reg_n_0_[1] ),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .O(\mi_connectivity[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hFDD7)) 
    \mi_connectivity[1]_i_1 
       (.I0(\mi_cntr_reg_n_0_[2] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(\mi_cntr_reg_n_0_[3] ),
        .I3(\mi_cntr_reg_n_0_[0] ),
        .O(\mi_connectivity[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hE79F)) 
    \mi_connectivity[2]_i_1 
       (.I0(\mi_cntr_reg_n_0_[1] ),
        .I1(\mi_cntr_reg_n_0_[0] ),
        .I2(\mi_cntr_reg_n_0_[2] ),
        .I3(\mi_cntr_reg_n_0_[3] ),
        .O(\mi_connectivity[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'hBDD7)) 
    \mi_connectivity[3]_i_1 
       (.I0(\mi_cntr_reg_n_0_[2] ),
        .I1(\mi_cntr_reg_n_0_[3] ),
        .I2(\mi_cntr_reg_n_0_[0] ),
        .I3(\mi_cntr_reg_n_0_[1] ),
        .O(\mi_connectivity[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'hBDD7)) 
    \mi_connectivity[4]_i_1 
       (.I0(\mi_cntr_reg_n_0_[2] ),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(\mi_cntr_reg_n_0_[0] ),
        .I3(\mi_cntr_reg_n_0_[3] ),
        .O(\mi_connectivity[4]_i_1_n_0 ));
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
        .D(\mi_connectivity[1]_i_1_n_0 ),
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
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[3]_i_1_n_0 ),
        .Q(mi_connectivity[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[4]_i_1_n_0 ),
        .Q(mi_connectivity[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \selectee[0]_i_1 
       (.I0(D[4]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[12]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(\mi_cntr_reg_n_0_[0] ),
        .I5(\selectee[0]_i_2_n_0 ),
        .O(\selectee[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[0]_i_2 
       (.I0(D[8]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[16]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(D[0]),
        .O(\selectee[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \selectee[1]_i_1 
       (.I0(D[5]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[13]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(\mi_cntr_reg_n_0_[0] ),
        .I5(\selectee[1]_i_2_n_0 ),
        .O(\selectee[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[1]_i_2 
       (.I0(D[9]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[17]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(D[1]),
        .O(\selectee[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \selectee[2]_i_1 
       (.I0(D[6]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[14]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(\mi_cntr_reg_n_0_[0] ),
        .I5(\selectee[2]_i_2_n_0 ),
        .O(\selectee[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[2]_i_2 
       (.I0(D[10]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[18]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(D[2]),
        .O(\selectee[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \selectee[3]_i_1 
       (.I0(D[7]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[15]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(\mi_cntr_reg_n_0_[0] ),
        .I5(\selectee[3]_i_2_n_0 ),
        .O(\selectee[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[3]_i_2 
       (.I0(D[11]),
        .I1(\mi_cntr_reg_n_0_[1] ),
        .I2(D[19]),
        .I3(\mi_cntr_reg_n_0_[2] ),
        .I4(D[3]),
        .O(\selectee[3]_i_2_n_0 ));
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
  LUT3 #(
    .INIT(8'hB8)) 
    selector_enable_i_1
       (.I0(mi_mux_en_in[4]),
        .I1(\mi_cntr_reg_n_0_[2] ),
        .I2(selector_enable_i_2_n_0),
        .O(selector_enable_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    selector_enable_i_2
       (.I0(mi_mux_en_in[3]),
        .I1(mi_mux_en_in[2]),
        .I2(\mi_cntr_reg_n_0_[1] ),
        .I3(mi_mux_en_in[1]),
        .I4(\mi_cntr_reg_n_0_[0] ),
        .I5(mi_mux_en_in[0]),
        .O(selector_enable_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    selector_enable_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(selector_enable_i_1_n_0),
        .Q(p_0_in_0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[0] ),
        .Q(selector[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[1] ),
        .Q(selector[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[2] ),
        .Q(selector[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_cntr_reg_n_0_[3] ),
        .Q(selector[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(start_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    stg1_done_i_1
       (.I0(\mi_cntr_reg_n_0_[0] ),
        .I1(\mi_cntr_reg_n_0_[2] ),
        .I2(\mi_cntr_reg_n_0_[1] ),
        .I3(\mi_cntr_reg_n_0_[3] ),
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
       (.I0(Q[1]),
        .I1(start_r),
        .O(stg1_reset0));
  FDRE #(
    .INIT(1'b0)) 
    stg1_reset_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_reset0),
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

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) 
(* ORIG_REF_NAME = "xpm_cdc_handshake" *) (* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "4" *) 
(* VERSION = "0" *) (* WIDTH = "50" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "HANDSHAKE" *) 
module top_xbar_4_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [49:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [49:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* xpm_cdc = "HANDSHAKE" *) wire [49:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [49:0]src_hsdata_ff;
  wire [49:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[49:0] = dest_hsdata_ff;
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[30] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[30]),
        .Q(dest_hsdata_ff[30]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[31] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[31]),
        .Q(dest_hsdata_ff[31]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[32] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[32]),
        .Q(dest_hsdata_ff[32]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[33] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[33]),
        .Q(dest_hsdata_ff[33]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[34] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[34]),
        .Q(dest_hsdata_ff[34]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[35] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[35]),
        .Q(dest_hsdata_ff[35]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[36] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[36]),
        .Q(dest_hsdata_ff[36]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[37] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[37]),
        .Q(dest_hsdata_ff[37]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[38] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[38]),
        .Q(dest_hsdata_ff[38]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[39] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[39]),
        .Q(dest_hsdata_ff[39]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[40] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[40]),
        .Q(dest_hsdata_ff[40]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[41] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[41]),
        .Q(dest_hsdata_ff[41]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[42] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[42]),
        .Q(dest_hsdata_ff[42]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[43] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[43]),
        .Q(dest_hsdata_ff[43]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[44] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[44]),
        .Q(dest_hsdata_ff[44]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[45] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[45]),
        .Q(dest_hsdata_ff[45]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[46] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[46]),
        .Q(dest_hsdata_ff[46]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[47] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[47]),
        .Q(dest_hsdata_ff[47]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[48] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[48]),
        .Q(dest_hsdata_ff[48]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[49] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[49]),
        .Q(dest_hsdata_ff[49]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "true" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "true" *) 
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
    \src_hsdata_ff[49]_i_1 
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
  FDRE \src_hsdata_ff_reg[30] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[30]),
        .Q(src_hsdata_ff[30]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[31] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[31]),
        .Q(src_hsdata_ff[31]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[32] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[32]),
        .Q(src_hsdata_ff[32]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[33] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[33]),
        .Q(src_hsdata_ff[33]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[34] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[34]),
        .Q(src_hsdata_ff[34]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[35] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[35]),
        .Q(src_hsdata_ff[35]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[36] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[36]),
        .Q(src_hsdata_ff[36]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[37] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[37]),
        .Q(src_hsdata_ff[37]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[38] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[38]),
        .Q(src_hsdata_ff[38]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[39] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[39]),
        .Q(src_hsdata_ff[39]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[40] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[40]),
        .Q(src_hsdata_ff[40]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[41] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[41]),
        .Q(src_hsdata_ff[41]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[42] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[42]),
        .Q(src_hsdata_ff[42]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[43] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[43]),
        .Q(src_hsdata_ff[43]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[44] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[44]),
        .Q(src_hsdata_ff[44]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[45] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[45]),
        .Q(src_hsdata_ff[45]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[46] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[46]),
        .Q(src_hsdata_ff[46]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[47] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[47]),
        .Q(src_hsdata_ff[47]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[48] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[48]),
        .Q(src_hsdata_ff[48]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[49] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[49]),
        .Q(src_hsdata_ff[49]),
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
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_single xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_req_ff));
  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_single__4 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module top_xbar_4_xpm_cdc_single
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module top_xbar_4_xpm_cdc_single__3
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module top_xbar_4_xpm_cdc_single__4
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
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
