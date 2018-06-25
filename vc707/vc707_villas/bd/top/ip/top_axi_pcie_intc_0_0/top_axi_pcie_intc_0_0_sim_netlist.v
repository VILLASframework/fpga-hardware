// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Jun 26 14:07:46 2016
// Host        : E265 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               D:/svo/gtfpga/vc707/vc707_villas/bd/top/ip/top_axi_pcie_intc_0_0/top_axi_pcie_intc_0_0_sim_netlist.v
// Design      : top_axi_pcie_intc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_axi_pcie_intc_0_0,axi_pcie_intc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_pcie_intc,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module top_axi_pcie_intc_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    INTX_MSI_Request,
    INTX_MSI_Grant,
    MSI_Vector_Num,
    MSI_Enable,
    MSI_Vector_Width);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  input [7:0]intr;
  output INTX_MSI_Request;
  input INTX_MSI_Grant;
  output [4:0]MSI_Vector_Num;
  input MSI_Enable;
  input [2:0]MSI_Vector_Width;

  wire INTX_MSI_Grant;
  wire INTX_MSI_Request;
  wire MSI_Enable;
  wire [4:0]MSI_Vector_Num;
  wire [7:0]intr;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  top_axi_pcie_intc_0_0_axi_pcie_intc U0
       (.INTX_MSI_Grant(INTX_MSI_Grant),
        .INTX_MSI_Request(INTX_MSI_Request),
        .MSI_Enable(MSI_Enable),
        .MSI_Vector_Num(MSI_Vector_Num),
        .intr(intr),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "address_decoder" *) 
module top_axi_pcie_intc_0_0_address_decoder
   (p_17_in,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ,
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ,
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ,
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ,
    bus2ip_wrce,
    \REG_GEN[1].ier_reg[1] ,
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ,
    D,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[5]_0 ,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ,
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ,
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ,
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ,
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ,
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ,
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ,
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ,
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ,
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ,
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ,
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ,
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ,
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ,
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ,
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ,
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ,
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ,
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ,
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ,
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ,
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ,
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ,
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ,
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ,
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ,
    \mer_int_reg[0] ,
    \mer_int_reg[1] ,
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ,
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ,
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ,
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ,
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ,
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ,
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ,
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ,
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ,
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ,
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ,
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ,
    p_0_in2_out,
    ip2bus_wrack_prev2,
    ip2bus_rdack_prev2,
    p_0_in20_out,
    Q,
    s_axi_aclk,
    p_0_in64_in,
    p_0_in67_in,
    p_0_in70_in,
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ,
    is_read,
    ip2bus_rdack,
    s_axi_aresetn,
    ip2bus_wrack,
    is_write_reg,
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ,
    \bus2ip_addr_i_reg[8] ,
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5] ,
    \Douta_reg[15] ,
    \ILR_GEN.ilr_reg[5] ,
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6] ,
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7] ,
    \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8] ,
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9] ,
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10] ,
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11] ,
    \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12] ,
    \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13] ,
    \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14] ,
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ,
    \REG_GEN[4].isr_reg[4] ,
    \ILR_GEN.ilr_reg[4] ,
    \REG_GEN[3].isr_reg[3] ,
    \ILR_GEN.ilr_reg[3] ,
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2] ,
    \IVR_GEN.ivr_reg[1] ,
    \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1] ,
    \REG_GEN[1].isr_reg[1] ,
    \mer_int_reg[0]_0 ,
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ,
    \REG_GEN[0].isr_reg[0] ,
    s_axi_wdata,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ,
    p_0_in375_in,
    p_0_in364_in,
    p_0_in353_in,
    p_0_in342_in,
    p_0_in331_in,
    p_0_in320_in,
    p_0_in309_in,
    p_0_in298_in,
    p_0_in287_in,
    p_0_in276_in,
    p_0_in265_in,
    p_0_in254_in,
    p_0_in243_in,
    p_0_in232_in,
    p_0_in221_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ,
    p_0_in140_in,
    p_0_in138_in,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ,
    p_0_in134_in,
    p_0_in132_in,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ,
    p_0_in128_in,
    p_0_in126_in,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ,
    p_0_in122_in,
    p_0_in120_in,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ,
    p_0_in116_in,
    p_0_in114_in,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ,
    \mer_int_reg[0]_1 ,
    p_0_in,
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ,
    p_0_in34_in,
    p_0_in37_in,
    p_0_in40_in,
    p_0_in43_in,
    p_0_in46_in,
    p_0_in49_in,
    p_0_in52_in,
    p_0_in55_in,
    p_0_in58_in,
    p_0_in61_in,
    p_0_in73_in,
    bus2ip_rnw_i_reg,
    ip2bus_wrack_int_d1,
    ip2bus_rdack_int_d1);
  output p_17_in;
  output \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  output \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  output \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ;
  output \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  output \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  output [2:0]bus2ip_wrce;
  output \REG_GEN[1].ier_reg[1] ;
  output \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  output [15:0]D;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[5]_0 ;
  output \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  output \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ;
  output \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ;
  output \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ;
  output \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ;
  output \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ;
  output \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ;
  output \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ;
  output \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ;
  output \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ;
  output \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ;
  output \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ;
  output \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ;
  output \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ;
  output \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ;
  output \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ;
  output \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  output \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ;
  output \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ;
  output \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ;
  output \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ;
  output \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ;
  output \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ;
  output \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ;
  output \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ;
  output \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ;
  output \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ;
  output \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ;
  output \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ;
  output \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ;
  output \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ;
  output \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ;
  output \mer_int_reg[0] ;
  output \mer_int_reg[1] ;
  output \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ;
  output \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ;
  output \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ;
  output \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ;
  output \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ;
  output \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ;
  output \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ;
  output \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ;
  output \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ;
  output \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  output \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ;
  output \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ;
  output p_0_in2_out;
  output ip2bus_wrack_prev2;
  output ip2bus_rdack_prev2;
  output p_0_in20_out;
  input Q;
  input s_axi_aclk;
  input p_0_in64_in;
  input p_0_in67_in;
  input p_0_in70_in;
  input \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ;
  input is_read;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input ip2bus_wrack;
  input is_write_reg;
  input [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  input [6:0]\bus2ip_addr_i_reg[8] ;
  input \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5] ;
  input [15:0]\Douta_reg[15] ;
  input \ILR_GEN.ilr_reg[5] ;
  input \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6] ;
  input \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7] ;
  input \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8] ;
  input \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9] ;
  input \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10] ;
  input \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11] ;
  input \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12] ;
  input \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13] ;
  input \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14] ;
  input \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ;
  input \REG_GEN[4].isr_reg[4] ;
  input \ILR_GEN.ilr_reg[4] ;
  input \REG_GEN[3].isr_reg[3] ;
  input \ILR_GEN.ilr_reg[3] ;
  input \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2] ;
  input \IVR_GEN.ivr_reg[1] ;
  input \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1] ;
  input \REG_GEN[1].isr_reg[1] ;
  input \mer_int_reg[0]_0 ;
  input \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ;
  input \REG_GEN[0].isr_reg[0] ;
  input [15:0]s_axi_wdata;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  input p_0_in375_in;
  input p_0_in364_in;
  input p_0_in353_in;
  input p_0_in342_in;
  input p_0_in331_in;
  input p_0_in320_in;
  input p_0_in309_in;
  input p_0_in298_in;
  input p_0_in287_in;
  input p_0_in276_in;
  input p_0_in265_in;
  input p_0_in254_in;
  input p_0_in243_in;
  input p_0_in232_in;
  input p_0_in221_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  input p_0_in140_in;
  input p_0_in138_in;
  input \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  input p_0_in134_in;
  input p_0_in132_in;
  input \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  input p_0_in128_in;
  input p_0_in126_in;
  input \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  input p_0_in122_in;
  input p_0_in120_in;
  input \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  input p_0_in116_in;
  input p_0_in114_in;
  input \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  input \mer_int_reg[0]_1 ;
  input p_0_in;
  input \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ;
  input p_0_in34_in;
  input p_0_in37_in;
  input p_0_in40_in;
  input p_0_in43_in;
  input p_0_in46_in;
  input p_0_in49_in;
  input p_0_in52_in;
  input p_0_in55_in;
  input p_0_in58_in;
  input p_0_in61_in;
  input p_0_in73_in;
  input bus2ip_rnw_i_reg;
  input ip2bus_wrack_int_d1;
  input ip2bus_rdack_int_d1;

  wire Bus_RNW_reg_i_1_n_0;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ;
  wire \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ;
  wire \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ;
  wire \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ;
  wire \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ;
  wire \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  wire [15:0]D;
  wire [15:0]\Douta_reg[15] ;
  wire \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16] ;
  wire \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ;
  wire \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ;
  wire \ILR_GEN.ilr_reg[3] ;
  wire \ILR_GEN.ilr_reg[4] ;
  wire \ILR_GEN.ilr_reg[5] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] ;
  wire \IVR_GEN.ivr_reg[1] ;
  wire Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  wire \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ;
  wire \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ;
  wire \REG_GEN[0].isr_reg[0] ;
  wire \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ;
  wire \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10] ;
  wire \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ;
  wire \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11] ;
  wire \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ;
  wire \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12] ;
  wire \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ;
  wire \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13] ;
  wire \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ;
  wire \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14] ;
  wire \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ;
  wire \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ;
  wire \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ;
  wire \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1] ;
  wire \REG_GEN[1].ier_reg[1] ;
  wire \REG_GEN[1].isr_reg[1] ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  wire \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2] ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ;
  wire \REG_GEN[3].isr_reg[3] ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  wire \REG_GEN[4].isr_reg[4] ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ;
  wire \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5] ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  wire \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6] ;
  wire \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ;
  wire \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7] ;
  wire \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ;
  wire \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8] ;
  wire \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ;
  wire \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  wire \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ;
  wire \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ;
  wire \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ;
  wire \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ;
  wire \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ;
  wire \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ;
  wire \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ;
  wire \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ;
  wire \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ;
  wire \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ;
  wire \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ;
  wire \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ;
  wire \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ;
  wire \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ;
  wire \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ;
  wire [6:0]\bus2ip_addr_i_reg[8] ;
  wire bus2ip_rnw_i_reg;
  wire [2:0]bus2ip_wrce;
  wire cs_ce_clr;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_int_d1_i_2_n_0;
  wire ip2bus_wrack_int_d1_i_3_n_0;
  wire ip2bus_wrack_int_d1_i_4_n_0;
  wire ip2bus_wrack_int_d1_i_5_n_0;
  wire ip2bus_wrack_prev2;
  wire is_read;
  wire is_write_reg;
  wire \mer_int_reg[0] ;
  wire \mer_int_reg[0]_0 ;
  wire \mer_int_reg[0]_1 ;
  wire \mer_int_reg[1] ;
  wire p_0_in;
  wire p_0_in114_in;
  wire p_0_in116_in;
  wire p_0_in120_in;
  wire p_0_in122_in;
  wire p_0_in126_in;
  wire p_0_in128_in;
  wire p_0_in132_in;
  wire p_0_in134_in;
  wire p_0_in138_in;
  wire p_0_in140_in;
  wire p_0_in20_out;
  wire p_0_in221_in;
  wire p_0_in232_in;
  wire p_0_in243_in;
  wire p_0_in254_in;
  wire p_0_in265_in;
  wire p_0_in276_in;
  wire p_0_in287_in;
  wire p_0_in298_in;
  wire p_0_in2_out;
  wire p_0_in309_in;
  wire p_0_in320_in;
  wire p_0_in331_in;
  wire p_0_in342_in;
  wire p_0_in34_in;
  wire p_0_in353_in;
  wire p_0_in364_in;
  wire p_0_in375_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in46_in;
  wire p_0_in49_in;
  wire p_0_in52_in;
  wire p_0_in55_in;
  wire p_0_in58_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in67_in;
  wire p_0_in70_in;
  wire p_0_in73_in;
  wire p_10_in;
  wire p_10_out;
  wire p_11_in;
  wire p_11_out;
  wire p_12_in;
  wire p_13_in;
  wire p_13_out;
  wire p_14_in;
  wire p_14_out;
  wire p_15_in;
  wire p_15_out;
  wire p_16_in;
  wire p_17_in;
  wire p_1_out;
  wire p_2_in;
  wire p_2_out;
  wire p_3_in;
  wire p_3_out;
  wire p_4_in;
  wire p_4_out;
  wire p_5_in;
  wire p_5_out;
  wire p_6_in;
  wire p_6_out;
  wire p_7_in;
  wire p_7_out;
  wire p_8_in;
  wire p_9_in;
  wire p_9_out;
  wire pselect_hit_i_0;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \s_axi_rdata_i[31]_i_7_n_0 ;
  wire \s_axi_rdata_i[31]_i_8_n_0 ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire [15:0]s_axi_wdata;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    Bus_RNW_reg_i_1
       (.I0(bus2ip_rnw_i_reg),
        .I1(Q),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(Bus_RNW_reg_i_1_n_0));
  FDRE Bus_RNW_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_i_1_n_0),
        .Q(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[0]),
        .O(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[10].cie[10]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in122_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[10]),
        .O(\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[11].cie[11]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in120_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[11]),
        .O(\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[12].cie[12]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[12]),
        .O(\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[13].cie[13]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in116_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[13]),
        .O(\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[14].cie[14]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in114_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[14]),
        .O(\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[15].cie[15]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[15]),
        .O(\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in140_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[1]),
        .O(\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in138_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[2]),
        .O(\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[3]),
        .O(\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in134_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[4]),
        .O(\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in132_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[5]),
        .O(\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[6]),
        .O(\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[7].cie[7]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in128_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[7]),
        .O(\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[8].cie[8]_i_1 
       (.I0(s_axi_aresetn),
        .I1(p_0_in126_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[8]),
        .O(\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \CIE_GEN.CIE_BIT_GEN[9].cie[9]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(p_12_in),
        .I4(s_axi_wdata[9]),
        .O(\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .O(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0 ),
        .Q(p_17_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(p_5_out));
  FDRE \GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_5_out),
        .Q(p_7_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .O(p_4_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(Q),
        .O(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_4_out),
        .Q(p_6_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(p_3_out));
  FDRE \GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_3_out),
        .Q(p_5_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .O(p_2_out));
  FDRE \GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_2_out),
        .Q(p_4_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(p_1_out));
  FDRE \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_1_out),
        .Q(p_3_in),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .O(p_15_out));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [2]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(Q),
        .O(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_15_out),
        .Q(p_2_in),
        .R(cs_ce_clr));
  LUT6 #(
    .INIT(64'hFFCFFFFFFFCFFFEF)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1 
       (.I0(is_read),
        .I1(ip2bus_rdack),
        .I2(s_axi_aresetn),
        .I3(ip2bus_wrack),
        .I4(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3_n_0 ),
        .I5(is_write_reg),
        .O(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(Q),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .O(pselect_hit_i_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [1]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [3]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] [2]),
        .O(\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(pselect_hit_i_0),
        .Q(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16] ),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(p_14_out));
  FDRE \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_14_out),
        .Q(p_16_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(p_13_out));
  FDRE \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_13_out),
        .Q(p_15_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [0]),
        .I3(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .O(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0 ),
        .Q(p_14_in),
        .R(cs_ce_clr));
  LUT4 #(
    .INIT(16'h0020)) 
    \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [3]),
        .I2(\bus2ip_addr_i_reg[8] [2]),
        .I3(\bus2ip_addr_i_reg[8] [1]),
        .O(p_11_out));
  FDRE \GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_11_out),
        .Q(p_13_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .O(p_10_out));
  FDRE \GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_10_out),
        .Q(p_12_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [1]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [2]),
        .O(p_9_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [0]),
        .I1(\bus2ip_addr_i_reg[8] [6]),
        .I2(\bus2ip_addr_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[8] [5]),
        .I4(Q),
        .O(\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_9_out),
        .Q(p_11_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [3]),
        .I1(\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0 ),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0 ),
        .Q(p_10_in),
        .R(cs_ce_clr));
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1 
       (.I0(\bus2ip_addr_i_reg[8] [6]),
        .I1(\bus2ip_addr_i_reg[8] [4]),
        .I2(\bus2ip_addr_i_reg[8] [5]),
        .I3(Q),
        .I4(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ),
        .O(p_7_out));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2 
       (.I0(\bus2ip_addr_i_reg[8] [1]),
        .I1(\bus2ip_addr_i_reg[8] [2]),
        .I2(\bus2ip_addr_i_reg[8] [3]),
        .I3(\bus2ip_addr_i_reg[8] [0]),
        .O(\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 ));
  FDRE \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_7_out),
        .Q(p_9_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1 
       (.I0(\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [0]),
        .I2(\bus2ip_addr_i_reg[8] [1]),
        .I3(\bus2ip_addr_i_reg[8] [3]),
        .O(p_6_out));
  FDRE \GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(p_6_out),
        .Q(p_8_in),
        .R(cs_ce_clr));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ILR_GEN.ilr[5]_i_1 
       (.I0(p_8_in),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(bus2ip_wrce[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3 
       (.I0(\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1 
       (.I0(p_9_in),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(bus2ip_wrce[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[0].ier[0]_i_2 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_15_in),
        .O(\REG_GEN[1].ier_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3 
       (.I0(p_0_in46_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3 
       (.I0(p_0_in43_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_3 
       (.I0(p_0_in40_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_3 
       (.I0(p_0_in37_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_3 
       (.I0(p_0_in34_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_3 
       (.I0(\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3 
       (.I0(p_0_in73_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3 
       (.I0(p_0_in70_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3 
       (.I0(p_0_in67_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3 
       (.I0(p_0_in64_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3 
       (.I0(p_0_in61_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3 
       (.I0(p_0_in58_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3 
       (.I0(p_0_in55_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3 
       (.I0(p_0_in52_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3 
       (.I0(p_0_in49_in),
        .I1(p_14_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[0]),
        .I3(s_axi_aresetn),
        .I4(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ),
        .O(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[10].sie[10]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[10]),
        .I3(s_axi_aresetn),
        .I4(p_0_in276_in),
        .O(\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[11].sie[11]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[11]),
        .I3(s_axi_aresetn),
        .I4(p_0_in265_in),
        .O(\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[12].sie[12]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[12]),
        .I3(s_axi_aresetn),
        .I4(p_0_in254_in),
        .O(\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[13].sie[13]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[13]),
        .I3(s_axi_aresetn),
        .I4(p_0_in243_in),
        .O(\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[14].sie[14]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[14]),
        .I3(s_axi_aresetn),
        .I4(p_0_in232_in),
        .O(\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[15].sie[15]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[15]),
        .I3(s_axi_aresetn),
        .I4(p_0_in221_in),
        .O(\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[1]),
        .I3(s_axi_aresetn),
        .I4(p_0_in375_in),
        .O(\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[2]),
        .I3(s_axi_aresetn),
        .I4(p_0_in364_in),
        .O(\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[3]),
        .I3(s_axi_aresetn),
        .I4(p_0_in353_in),
        .O(\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[4]),
        .I3(s_axi_aresetn),
        .I4(p_0_in342_in),
        .O(\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[5]),
        .I3(s_axi_aresetn),
        .I4(p_0_in331_in),
        .O(\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[6]),
        .I3(s_axi_aresetn),
        .I4(p_0_in320_in),
        .O(\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[7].sie[7]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[7]),
        .I3(s_axi_aresetn),
        .I4(p_0_in309_in),
        .O(\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[8].sie[8]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[8]),
        .I3(s_axi_aresetn),
        .I4(p_0_in298_in),
        .O(\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \SIE_GEN.SIE_BIT_GEN[9].sie[9]_i_1 
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(p_13_in),
        .I2(s_axi_wdata[9]),
        .I3(s_axi_aresetn),
        .I4(p_0_in287_in),
        .O(\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    ip2bus_rdack_i_1
       (.I0(ip2bus_wrack_int_d1_i_2_n_0),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I2(ip2bus_rdack_int_d1),
        .O(ip2bus_rdack_prev2));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h4)) 
    ip2bus_rdack_int_d1_i_1
       (.I0(ip2bus_wrack_int_d1_i_2_n_0),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(p_0_in20_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ip2bus_wrack_i_1
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(ip2bus_wrack_int_d1_i_2_n_0),
        .I2(ip2bus_wrack_int_d1),
        .O(ip2bus_wrack_prev2));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ip2bus_wrack_int_d1_i_1
       (.I0(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I1(ip2bus_wrack_int_d1_i_2_n_0),
        .O(p_0_in2_out));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    ip2bus_wrack_int_d1_i_2
       (.I0(ip2bus_wrack_int_d1_i_3_n_0),
        .I1(ip2bus_wrack_int_d1_i_4_n_0),
        .I2(ip2bus_wrack_int_d1_i_5_n_0),
        .I3(p_10_in),
        .I4(p_17_in),
        .I5(p_8_in),
        .O(ip2bus_wrack_int_d1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    ip2bus_wrack_int_d1_i_3
       (.I0(p_6_in),
        .I1(p_5_in),
        .I2(p_15_in),
        .I3(p_3_in),
        .O(ip2bus_wrack_int_d1_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    ip2bus_wrack_int_d1_i_4
       (.I0(p_13_in),
        .I1(p_12_in),
        .I2(p_14_in),
        .I3(p_2_in),
        .O(ip2bus_wrack_int_d1_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ip2bus_wrack_int_d1_i_5
       (.I0(p_9_in),
        .I1(p_16_in),
        .I2(p_11_in),
        .I3(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16] ),
        .I4(p_7_in),
        .I5(p_4_in),
        .O(ip2bus_wrack_int_d1_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \mer_int[0]_i_1 
       (.I0(s_axi_wdata[0]),
        .I1(p_10_in),
        .I2(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I3(\mer_int_reg[0]_1 ),
        .O(\mer_int_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFF20)) 
    \mer_int[1]_i_1 
       (.I0(s_axi_wdata[1]),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I2(p_10_in),
        .I3(p_0_in),
        .O(\mer_int_reg[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    ram_reg_0_15_0_0_i_1
       (.I0(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16] ),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(bus2ip_wrce[0]));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \s_axi_rdata_i[0]_i_1 
       (.I0(\mer_int_reg[0]_0 ),
        .I1(\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ),
        .I2(\REG_GEN[0].isr_reg[0] ),
        .I3(\s_axi_rdata_i_reg[5] ),
        .I4(\s_axi_rdata_i_reg[5]_0 ),
        .I5(\Douta_reg[15] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[10]_i_1 
       (.I0(\REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [10]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[11]_i_1 
       (.I0(\REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [11]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[12]_i_1 
       (.I0(\REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [12]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[13]_i_1 
       (.I0(\REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [13]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[14]_i_1 
       (.I0(\REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [14]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[15]_i_1 
       (.I0(\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [15]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \s_axi_rdata_i[15]_i_3 
       (.I0(\s_axi_rdata_i[31]_i_7_n_0 ),
        .I1(\bus2ip_addr_i_reg[8] [5]),
        .I2(\bus2ip_addr_i_reg[8] [4]),
        .I3(\bus2ip_addr_i_reg[8] [6]),
        .I4(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .O(\s_axi_rdata_i_reg[5] ));
  LUT6 #(
    .INIT(64'hFD00FFFFFD00FD00)) 
    \s_axi_rdata_i[1]_i_1 
       (.I0(\IVR_GEN.ivr_reg[1] ),
        .I1(\REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1] ),
        .I2(\REG_GEN[1].isr_reg[1] ),
        .I3(\s_axi_rdata_i_reg[5] ),
        .I4(\s_axi_rdata_i_reg[5]_0 ),
        .I5(\Douta_reg[15] [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \s_axi_rdata_i[2]_i_1 
       (.I0(\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\s_axi_rdata_i_reg[5]_0 ),
        .I3(\Douta_reg[15] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \s_axi_rdata_i[31]_i_4 
       (.I0(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16] ),
        .I1(\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .I2(\s_axi_rdata_i[31]_i_7_n_0 ),
        .O(\s_axi_rdata_i_reg[5]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_axi_rdata_i[31]_i_7 
       (.I0(p_8_in),
        .I1(p_17_in),
        .I2(p_10_in),
        .I3(\s_axi_rdata_i[31]_i_8_n_0 ),
        .I4(p_15_in),
        .O(\s_axi_rdata_i[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_rdata_i[31]_i_8 
       (.I0(p_11_in),
        .I1(p_16_in),
        .I2(p_9_in),
        .O(\s_axi_rdata_i[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \s_axi_rdata_i[3]_i_1 
       (.I0(\REG_GEN[3].isr_reg[3] ),
        .I1(\ILR_GEN.ilr_reg[3] ),
        .I2(\s_axi_rdata_i_reg[5] ),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\Douta_reg[15] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hD0FFD0D0)) 
    \s_axi_rdata_i[4]_i_1 
       (.I0(\REG_GEN[4].isr_reg[4] ),
        .I1(\ILR_GEN.ilr_reg[4] ),
        .I2(\s_axi_rdata_i_reg[5] ),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\Douta_reg[15] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[5]_i_1 
       (.I0(\REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [5]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[6]_i_1 
       (.I0(\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [6]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[7]_i_1 
       (.I0(\REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [7]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[8]_i_1 
       (.I0(\REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [8]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFFFF44F4)) 
    \s_axi_rdata_i[9]_i_1 
       (.I0(\REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9] ),
        .I1(\s_axi_rdata_i_reg[5] ),
        .I2(\Douta_reg[15] [9]),
        .I3(\s_axi_rdata_i_reg[5]_0 ),
        .I4(\ILR_GEN.ilr_reg[5] ),
        .O(D[9]));
endmodule

(* C_ASYNC_INTR = "-1" *) (* C_CASCADE_MASTER = "0" *) (* C_DISABLE_SYNCHRONIZERS = "1" *) 
(* C_ENABLE_ASYNC = "0" *) (* C_EN_CASCADE_MODE = "0" *) (* C_FAMILY = "virtex7" *) 
(* C_HAS_CIE = "1" *) (* C_HAS_FAST = "1" *) (* C_HAS_ILR = "1" *) 
(* C_HAS_IPR = "1" *) (* C_HAS_IVR = "1" *) (* C_HAS_SIE = "1" *) 
(* C_INSTANCE = "axi_intc_inst" *) (* C_IRQ_ACTIVE = "1'b1" *) (* C_IRQ_IS_LEVEL = "0" *) 
(* C_IVAR_RESET_VALUE = "0" *) (* C_KIND_OF_EDGE = "-1" *) (* C_KIND_OF_INTR = "-1" *) 
(* C_KIND_OF_LVL = "-1" *) (* C_MB_CLK_NOT_CONNECTED = "1" *) (* C_NUM_INTR_INPUTS = "8" *) 
(* C_NUM_SW_INTR = "8" *) (* C_NUM_SYNC_FF = "2" *) (* C_S_AXI_ADDR_WIDTH = "9" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* ORIG_REF_NAME = "axi_intc" *) (* hdl = "VHDL" *) 
(* imp_netlist = "TRUE" *) (* ip_group = "LOGICORE" *) (* iptype = "PERIPHERAL" *) 
(* run_ngcbuild = "TRUE" *) (* style = "HDL" *) 
module top_axi_pcie_intc_0_0_axi_intc
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    processor_clk,
    processor_rst,
    irq,
    processor_ack,
    interrupt_address,
    irq_in,
    interrupt_address_in,
    processor_ack_out);
  (* max_fanout = "10000" *) (* sigis = "Clk" *) input s_axi_aclk;
  (* max_fanout = "10000" *) (* sigis = "Rstn" *) input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  (* BUFFER_TYPE = "none" *) input [7:0]intr;
  input processor_clk;
  input processor_rst;
  output irq;
  input [1:0]processor_ack;
  output [31:0]interrupt_address;
  input irq_in;
  input [31:0]interrupt_address_in;
  output [1:0]processor_ack_out;

  wire \<const0> ;
  wire AXI_LITE_IPIF_I_n_15;
  wire AXI_LITE_IPIF_I_n_20;
  wire AXI_LITE_IPIF_I_n_21;
  wire AXI_LITE_IPIF_I_n_22;
  wire AXI_LITE_IPIF_I_n_23;
  wire AXI_LITE_IPIF_I_n_24;
  wire AXI_LITE_IPIF_I_n_25;
  wire AXI_LITE_IPIF_I_n_26;
  wire AXI_LITE_IPIF_I_n_27;
  wire AXI_LITE_IPIF_I_n_28;
  wire AXI_LITE_IPIF_I_n_29;
  wire AXI_LITE_IPIF_I_n_30;
  wire AXI_LITE_IPIF_I_n_31;
  wire AXI_LITE_IPIF_I_n_32;
  wire AXI_LITE_IPIF_I_n_33;
  wire AXI_LITE_IPIF_I_n_34;
  wire AXI_LITE_IPIF_I_n_35;
  wire AXI_LITE_IPIF_I_n_36;
  wire AXI_LITE_IPIF_I_n_37;
  wire AXI_LITE_IPIF_I_n_38;
  wire AXI_LITE_IPIF_I_n_39;
  wire AXI_LITE_IPIF_I_n_40;
  wire AXI_LITE_IPIF_I_n_41;
  wire AXI_LITE_IPIF_I_n_42;
  wire AXI_LITE_IPIF_I_n_43;
  wire AXI_LITE_IPIF_I_n_44;
  wire AXI_LITE_IPIF_I_n_45;
  wire AXI_LITE_IPIF_I_n_46;
  wire AXI_LITE_IPIF_I_n_47;
  wire AXI_LITE_IPIF_I_n_48;
  wire AXI_LITE_IPIF_I_n_49;
  wire AXI_LITE_IPIF_I_n_50;
  wire AXI_LITE_IPIF_I_n_51;
  wire AXI_LITE_IPIF_I_n_52;
  wire AXI_LITE_IPIF_I_n_53;
  wire AXI_LITE_IPIF_I_n_54;
  wire AXI_LITE_IPIF_I_n_55;
  wire AXI_LITE_IPIF_I_n_56;
  wire AXI_LITE_IPIF_I_n_57;
  wire AXI_LITE_IPIF_I_n_58;
  wire AXI_LITE_IPIF_I_n_59;
  wire AXI_LITE_IPIF_I_n_6;
  wire AXI_LITE_IPIF_I_n_60;
  wire AXI_LITE_IPIF_I_n_61;
  wire AXI_LITE_IPIF_I_n_62;
  wire AXI_LITE_IPIF_I_n_63;
  wire AXI_LITE_IPIF_I_n_64;
  wire AXI_LITE_IPIF_I_n_65;
  wire AXI_LITE_IPIF_I_n_66;
  wire AXI_LITE_IPIF_I_n_67;
  wire AXI_LITE_IPIF_I_n_68;
  wire AXI_LITE_IPIF_I_n_69;
  wire AXI_LITE_IPIF_I_n_7;
  wire AXI_LITE_IPIF_I_n_70;
  wire AXI_LITE_IPIF_I_n_8;
  wire AXI_LITE_IPIF_I_n_9;
  wire [15:0]Douta;
  wire INTC_CORE_I_n_0;
  wire INTC_CORE_I_n_1;
  wire INTC_CORE_I_n_100;
  wire INTC_CORE_I_n_101;
  wire INTC_CORE_I_n_105;
  wire INTC_CORE_I_n_106;
  wire INTC_CORE_I_n_107;
  wire INTC_CORE_I_n_108;
  wire INTC_CORE_I_n_109;
  wire INTC_CORE_I_n_110;
  wire INTC_CORE_I_n_111;
  wire INTC_CORE_I_n_112;
  wire INTC_CORE_I_n_113;
  wire INTC_CORE_I_n_114;
  wire INTC_CORE_I_n_115;
  wire INTC_CORE_I_n_116;
  wire INTC_CORE_I_n_16;
  wire INTC_CORE_I_n_21;
  wire INTC_CORE_I_n_37;
  wire INTC_CORE_I_n_40;
  wire INTC_CORE_I_n_43;
  wire INTC_CORE_I_n_46;
  wire INTC_CORE_I_n_49;
  wire INTC_CORE_I_n_52;
  wire INTC_CORE_I_n_53;
  wire INTC_CORE_I_n_79;
  wire INTC_CORE_I_n_96;
  wire INTC_CORE_I_n_97;
  wire INTC_CORE_I_n_98;
  wire INTC_CORE_I_n_99;
  wire [31:16]IP2Bus_Data;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ;
  wire \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ;
  wire [5:2]bus2ip_addr;
  wire [8:0]bus2ip_wrce;
  wire [4:0]ilr;
  wire [31:0]interrupt_address;
  wire [7:0]intr;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire [4:2]ipr;
  wire irq;
  wire p_0_in;
  wire p_0_in114_in;
  wire p_0_in116_in;
  wire p_0_in120_in;
  wire p_0_in122_in;
  wire p_0_in126_in;
  wire p_0_in128_in;
  wire p_0_in132_in;
  wire p_0_in134_in;
  wire p_0_in138_in;
  wire p_0_in140_in;
  wire p_0_in142_in;
  wire p_0_in145_in;
  wire p_0_in148_in;
  wire p_0_in20_out;
  wire p_0_in221_in;
  wire p_0_in232_in;
  wire p_0_in243_in;
  wire p_0_in254_in;
  wire p_0_in265_in;
  wire p_0_in276_in;
  wire p_0_in287_in;
  wire p_0_in298_in;
  wire p_0_in2_out;
  wire p_0_in309_in;
  wire p_0_in320_in;
  wire p_0_in331_in;
  wire p_0_in342_in;
  wire p_0_in34_in;
  wire p_0_in353_in;
  wire p_0_in364_in;
  wire p_0_in375_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in46_in;
  wire p_0_in49_in;
  wire p_0_in52_in;
  wire p_0_in55_in;
  wire p_0_in58_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in67_in;
  wire p_0_in70_in;
  wire p_0_in73_in;
  wire p_1_in143_in;
  wire p_1_in146_in;
  wire p_1_in149_in;
  wire [1:0]processor_ack;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign processor_ack_out[1] = \<const0> ;
  assign processor_ack_out[0] = \<const0> ;
  assign s_axi_awready = s_axi_wready;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  top_axi_pcie_intc_0_0_axi_lite_ipif AXI_LITE_IPIF_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (AXI_LITE_IPIF_I_n_41),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 (INTC_CORE_I_n_37),
        .\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] (AXI_LITE_IPIF_I_n_51),
        .\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] (AXI_LITE_IPIF_I_n_52),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] (AXI_LITE_IPIF_I_n_53),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 (INTC_CORE_I_n_49),
        .\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] (AXI_LITE_IPIF_I_n_54),
        .\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] (AXI_LITE_IPIF_I_n_55),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] (AXI_LITE_IPIF_I_n_56),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 (INTC_CORE_I_n_52),
        .\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] (AXI_LITE_IPIF_I_n_42),
        .\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] (AXI_LITE_IPIF_I_n_43),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] (AXI_LITE_IPIF_I_n_44),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 (INTC_CORE_I_n_40),
        .\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] (AXI_LITE_IPIF_I_n_45),
        .\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] (AXI_LITE_IPIF_I_n_46),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] (AXI_LITE_IPIF_I_n_47),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 (INTC_CORE_I_n_43),
        .\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] (AXI_LITE_IPIF_I_n_48),
        .\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] (AXI_LITE_IPIF_I_n_49),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] (AXI_LITE_IPIF_I_n_50),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 (INTC_CORE_I_n_46),
        .D(IP2Bus_Data),
        .\Douta_reg[15] (Douta),
        .\ILR_GEN.ilr_reg[4] (ilr),
        .\ILR_GEN.ilr_reg[5] (INTC_CORE_I_n_79),
        .\IPR_GEN.ipr_reg[4] (ipr),
        .\IVR_GEN.ivr_reg[4] ({INTC_CORE_I_n_96,INTC_CORE_I_n_97,INTC_CORE_I_n_98,INTC_CORE_I_n_99,INTC_CORE_I_n_100}),
        .Q(bus2ip_addr),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] (AXI_LITE_IPIF_I_n_9),
        .\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] (INTC_CORE_I_n_0),
        .\REG_GEN[0].isr_reg[0] (INTC_CORE_I_n_116),
        .\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] (AXI_LITE_IPIF_I_n_64),
        .\REG_GEN[10].ier_reg[10] (INTC_CORE_I_n_109),
        .\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] (AXI_LITE_IPIF_I_n_63),
        .\REG_GEN[11].ier_reg[11] (INTC_CORE_I_n_108),
        .\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] (AXI_LITE_IPIF_I_n_62),
        .\REG_GEN[12].ier_reg[12] (INTC_CORE_I_n_107),
        .\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] (AXI_LITE_IPIF_I_n_61),
        .\REG_GEN[13].ier_reg[13] (INTC_CORE_I_n_106),
        .\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] (AXI_LITE_IPIF_I_n_60),
        .\REG_GEN[14].ier_reg[14] (INTC_CORE_I_n_105),
        .\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] (AXI_LITE_IPIF_I_n_59),
        .\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] (INTC_CORE_I_n_16),
        .\REG_GEN[15].ier_reg[15] (INTC_CORE_I_n_101),
        .\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] (AXI_LITE_IPIF_I_n_70),
        .\REG_GEN[1].ier_reg[1] (AXI_LITE_IPIF_I_n_15),
        .\REG_GEN[1].isr_reg[1] (INTC_CORE_I_n_115),
        .\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] (AXI_LITE_IPIF_I_n_8),
        .\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] (AXI_LITE_IPIF_I_n_7),
        .\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] (AXI_LITE_IPIF_I_n_6),
        .\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] (AXI_LITE_IPIF_I_n_69),
        .\REG_GEN[5].ier_reg[5] (INTC_CORE_I_n_114),
        .\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] (AXI_LITE_IPIF_I_n_68),
        .\REG_GEN[6].ier_reg[6] (INTC_CORE_I_n_113),
        .\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] (AXI_LITE_IPIF_I_n_67),
        .\REG_GEN[7].ier_reg[7] (INTC_CORE_I_n_112),
        .\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] (AXI_LITE_IPIF_I_n_66),
        .\REG_GEN[8].ier_reg[8] (INTC_CORE_I_n_111),
        .\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] (AXI_LITE_IPIF_I_n_65),
        .\REG_GEN[9].ier_reg[9] (INTC_CORE_I_n_110),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (AXI_LITE_IPIF_I_n_25),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 (INTC_CORE_I_n_21),
        .\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] (AXI_LITE_IPIF_I_n_35),
        .\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] (AXI_LITE_IPIF_I_n_36),
        .\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] (AXI_LITE_IPIF_I_n_37),
        .\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] (AXI_LITE_IPIF_I_n_38),
        .\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] (AXI_LITE_IPIF_I_n_39),
        .\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] (AXI_LITE_IPIF_I_n_40),
        .\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] (AXI_LITE_IPIF_I_n_26),
        .\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] (AXI_LITE_IPIF_I_n_27),
        .\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] (AXI_LITE_IPIF_I_n_28),
        .\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] (AXI_LITE_IPIF_I_n_29),
        .\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] (AXI_LITE_IPIF_I_n_30),
        .\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] (AXI_LITE_IPIF_I_n_31),
        .\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] (AXI_LITE_IPIF_I_n_32),
        .\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] (AXI_LITE_IPIF_I_n_33),
        .\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] (AXI_LITE_IPIF_I_n_34),
        .SR(INTC_CORE_I_n_1),
        .bus2ip_wrce({bus2ip_wrce[8:7],bus2ip_wrce[0]}),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .\mer_int_reg[0] (AXI_LITE_IPIF_I_n_57),
        .\mer_int_reg[0]_0 (INTC_CORE_I_n_53),
        .\mer_int_reg[1] (AXI_LITE_IPIF_I_n_58),
        .p_0_in(p_0_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in116_in(p_0_in116_in),
        .p_0_in120_in(p_0_in120_in),
        .p_0_in122_in(p_0_in122_in),
        .p_0_in126_in(p_0_in126_in),
        .p_0_in128_in(p_0_in128_in),
        .p_0_in132_in(p_0_in132_in),
        .p_0_in134_in(p_0_in134_in),
        .p_0_in138_in(p_0_in138_in),
        .p_0_in140_in(p_0_in140_in),
        .p_0_in142_in(p_0_in142_in),
        .p_0_in145_in(p_0_in145_in),
        .p_0_in148_in(p_0_in148_in),
        .p_0_in20_out(p_0_in20_out),
        .p_0_in221_in(p_0_in221_in),
        .p_0_in232_in(p_0_in232_in),
        .p_0_in243_in(p_0_in243_in),
        .p_0_in254_in(p_0_in254_in),
        .p_0_in265_in(p_0_in265_in),
        .p_0_in276_in(p_0_in276_in),
        .p_0_in287_in(p_0_in287_in),
        .p_0_in298_in(p_0_in298_in),
        .p_0_in2_out(p_0_in2_out),
        .p_0_in309_in(p_0_in309_in),
        .p_0_in320_in(p_0_in320_in),
        .p_0_in331_in(p_0_in331_in),
        .p_0_in342_in(p_0_in342_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in353_in(p_0_in353_in),
        .p_0_in364_in(p_0_in364_in),
        .p_0_in375_in(p_0_in375_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in73_in(p_0_in73_in),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_1_in143_in(p_1_in143_in),
        .p_1_in146_in(p_1_in146_in),
        .p_1_in149_in(p_1_in149_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[8:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[8:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[2] (AXI_LITE_IPIF_I_n_22),
        .\s_axi_rdata_i_reg[2]_0 (AXI_LITE_IPIF_I_n_23),
        .\s_axi_rdata_i_reg[4] (AXI_LITE_IPIF_I_n_24),
        .\s_axi_rdata_i_reg[5] (AXI_LITE_IPIF_I_n_20),
        .\s_axi_rdata_i_reg[5]_0 (AXI_LITE_IPIF_I_n_21),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[15:0]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  GND GND
       (.G(\<const0> ));
  top_axi_pcie_intc_0_0_intc_core INTC_CORE_I
       (.Bus_RNW_reg(\I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg ),
        .Bus_RNW_reg_reg(AXI_LITE_IPIF_I_n_25),
        .Bus_RNW_reg_reg_0(AXI_LITE_IPIF_I_n_26),
        .Bus_RNW_reg_reg_1(AXI_LITE_IPIF_I_n_27),
        .Bus_RNW_reg_reg_10(AXI_LITE_IPIF_I_n_36),
        .Bus_RNW_reg_reg_11(AXI_LITE_IPIF_I_n_37),
        .Bus_RNW_reg_reg_12(AXI_LITE_IPIF_I_n_38),
        .Bus_RNW_reg_reg_13(AXI_LITE_IPIF_I_n_39),
        .Bus_RNW_reg_reg_14(AXI_LITE_IPIF_I_n_40),
        .Bus_RNW_reg_reg_15(AXI_LITE_IPIF_I_n_58),
        .Bus_RNW_reg_reg_16(AXI_LITE_IPIF_I_n_15),
        .Bus_RNW_reg_reg_2(AXI_LITE_IPIF_I_n_28),
        .Bus_RNW_reg_reg_3(AXI_LITE_IPIF_I_n_29),
        .Bus_RNW_reg_reg_4(AXI_LITE_IPIF_I_n_30),
        .Bus_RNW_reg_reg_5(AXI_LITE_IPIF_I_n_31),
        .Bus_RNW_reg_reg_6(AXI_LITE_IPIF_I_n_32),
        .Bus_RNW_reg_reg_7(AXI_LITE_IPIF_I_n_33),
        .Bus_RNW_reg_reg_8(AXI_LITE_IPIF_I_n_34),
        .Bus_RNW_reg_reg_9(AXI_LITE_IPIF_I_n_35),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 (AXI_LITE_IPIF_I_n_41),
        .\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 (AXI_LITE_IPIF_I_n_51),
        .\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 (AXI_LITE_IPIF_I_n_52),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 (AXI_LITE_IPIF_I_n_53),
        .\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 (AXI_LITE_IPIF_I_n_54),
        .\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 (AXI_LITE_IPIF_I_n_55),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 (AXI_LITE_IPIF_I_n_56),
        .\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 (AXI_LITE_IPIF_I_n_42),
        .\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 (AXI_LITE_IPIF_I_n_43),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 (AXI_LITE_IPIF_I_n_44),
        .\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 (AXI_LITE_IPIF_I_n_45),
        .\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 (AXI_LITE_IPIF_I_n_46),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 (AXI_LITE_IPIF_I_n_47),
        .\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 (AXI_LITE_IPIF_I_n_48),
        .\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 (AXI_LITE_IPIF_I_n_49),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 (AXI_LITE_IPIF_I_n_50),
        .D(IP2Bus_Data),
        .\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] (AXI_LITE_IPIF_I_n_21),
        .\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] (AXI_LITE_IPIF_I_n_57),
        .\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0 (INTC_CORE_I_n_53),
        .\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 ({INTC_CORE_I_n_96,INTC_CORE_I_n_97,INTC_CORE_I_n_98,INTC_CORE_I_n_99,INTC_CORE_I_n_100}),
        .Q(ilr),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 (INTC_CORE_I_n_0),
        .\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 (AXI_LITE_IPIF_I_n_9),
        .\REG_GEN[0].ier_reg[0]_0 (INTC_CORE_I_n_21),
        .\REG_GEN[0].ier_reg[0]_1 (INTC_CORE_I_n_37),
        .\REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0 (AXI_LITE_IPIF_I_n_64),
        .\REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0 (AXI_LITE_IPIF_I_n_63),
        .\REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0 (AXI_LITE_IPIF_I_n_62),
        .\REG_GEN[12].ier_reg[12]_0 (INTC_CORE_I_n_49),
        .\REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0 (AXI_LITE_IPIF_I_n_61),
        .\REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0 (AXI_LITE_IPIF_I_n_60),
        .\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0 (INTC_CORE_I_n_16),
        .\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 (AXI_LITE_IPIF_I_n_59),
        .\REG_GEN[15].ier_reg[15]_0 (INTC_CORE_I_n_52),
        .\REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0 (AXI_LITE_IPIF_I_n_70),
        .\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 (AXI_LITE_IPIF_I_n_8),
        .\REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0 (AXI_LITE_IPIF_I_n_7),
        .\REG_GEN[3].ier_reg[3]_0 (INTC_CORE_I_n_40),
        .\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 (AXI_LITE_IPIF_I_n_6),
        .\REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0 (AXI_LITE_IPIF_I_n_69),
        .\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 (AXI_LITE_IPIF_I_n_68),
        .\REG_GEN[6].ier_reg[6]_0 (INTC_CORE_I_n_43),
        .\REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0 (AXI_LITE_IPIF_I_n_67),
        .\REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0 (AXI_LITE_IPIF_I_n_66),
        .\REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0 (AXI_LITE_IPIF_I_n_65),
        .\REG_GEN[9].ier_reg[9]_0 (INTC_CORE_I_n_46),
        .SR(INTC_CORE_I_n_1),
        .\bus2ip_addr_i_reg[4] (AXI_LITE_IPIF_I_n_24),
        .\bus2ip_addr_i_reg[5] (AXI_LITE_IPIF_I_n_22),
        .\bus2ip_addr_i_reg[5]_0 (AXI_LITE_IPIF_I_n_23),
        .\bus2ip_addr_i_reg[5]_1 (bus2ip_addr),
        .\bus2ip_addr_i_reg[7] (AXI_LITE_IPIF_I_n_20),
        .bus2ip_wrce({bus2ip_wrce[8:7],bus2ip_wrce[0]}),
        .interrupt_address(interrupt_address),
        .intr(intr),
        .irq(irq),
        .p_0_in(p_0_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in116_in(p_0_in116_in),
        .p_0_in120_in(p_0_in120_in),
        .p_0_in122_in(p_0_in122_in),
        .p_0_in126_in(p_0_in126_in),
        .p_0_in128_in(p_0_in128_in),
        .p_0_in132_in(p_0_in132_in),
        .p_0_in134_in(p_0_in134_in),
        .p_0_in138_in(p_0_in138_in),
        .p_0_in140_in(p_0_in140_in),
        .p_0_in142_in(p_0_in142_in),
        .p_0_in145_in(p_0_in145_in),
        .p_0_in148_in(p_0_in148_in),
        .p_0_in221_in(p_0_in221_in),
        .p_0_in232_in(p_0_in232_in),
        .p_0_in243_in(p_0_in243_in),
        .p_0_in254_in(p_0_in254_in),
        .p_0_in265_in(p_0_in265_in),
        .p_0_in276_in(p_0_in276_in),
        .p_0_in287_in(p_0_in287_in),
        .p_0_in298_in(p_0_in298_in),
        .p_0_in309_in(p_0_in309_in),
        .p_0_in320_in(p_0_in320_in),
        .p_0_in331_in(p_0_in331_in),
        .p_0_in342_in(p_0_in342_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in353_in(p_0_in353_in),
        .p_0_in364_in(p_0_in364_in),
        .p_0_in375_in(p_0_in375_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in73_in(p_0_in73_in),
        .p_17_in(\I_SLAVE_ATTACHMENT/I_DECODER/p_17_in ),
        .p_1_in143_in(p_1_in143_in),
        .p_1_in146_in(p_1_in146_in),
        .p_1_in149_in(p_1_in149_in),
        .processor_ack(processor_ack),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_axi_rdata_i_reg[0] (INTC_CORE_I_n_116),
        .\s_axi_rdata_i_reg[10] (INTC_CORE_I_n_109),
        .\s_axi_rdata_i_reg[11] (INTC_CORE_I_n_108),
        .\s_axi_rdata_i_reg[12] (INTC_CORE_I_n_107),
        .\s_axi_rdata_i_reg[13] (INTC_CORE_I_n_106),
        .\s_axi_rdata_i_reg[14] (INTC_CORE_I_n_105),
        .\s_axi_rdata_i_reg[15] (Douta),
        .\s_axi_rdata_i_reg[15]_0 (INTC_CORE_I_n_101),
        .\s_axi_rdata_i_reg[1] (INTC_CORE_I_n_115),
        .\s_axi_rdata_i_reg[31] (INTC_CORE_I_n_79),
        .\s_axi_rdata_i_reg[4] (ipr),
        .\s_axi_rdata_i_reg[5] (INTC_CORE_I_n_114),
        .\s_axi_rdata_i_reg[6] (INTC_CORE_I_n_113),
        .\s_axi_rdata_i_reg[7] (INTC_CORE_I_n_112),
        .\s_axi_rdata_i_reg[8] (INTC_CORE_I_n_111),
        .\s_axi_rdata_i_reg[9] (INTC_CORE_I_n_110),
        .s_axi_wdata(s_axi_wdata));
  FDRE ip2bus_rdack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in20_out),
        .Q(ip2bus_rdack_int_d1),
        .R(INTC_CORE_I_n_1));
  FDRE ip2bus_rdack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_rdack_prev2),
        .Q(ip2bus_rdack),
        .R(INTC_CORE_I_n_1));
  FDRE ip2bus_wrack_int_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in2_out),
        .Q(ip2bus_wrack_int_d1),
        .R(INTC_CORE_I_n_1));
  FDRE ip2bus_wrack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ip2bus_wrack_prev2),
        .Q(ip2bus_wrack),
        .R(INTC_CORE_I_n_1));
endmodule

(* CHECK_LICENSE_TYPE = "axi_intc_0,axi_intc,{}" *) (* ORIG_REF_NAME = "axi_intc_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "axi_intc,Vivado 2016.1" *) 
module top_axi_pcie_intc_0_0_axi_intc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    intr,
    processor_clk,
    processor_rst,
    irq,
    processor_ack,
    interrupt_address);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_resetn RST" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [8:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [8:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT" *) input [7:0]intr;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 proc_clock CLK" *) input processor_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 proc_reset RST" *) input processor_rst;
  (* x_interface_info = "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT" *) output irq;
  (* x_interface_info = "xilinx.com:interface:mbinterrupt:1.0 interrupt ACK" *) input [1:0]processor_ack;
  (* x_interface_info = "xilinx.com:interface:mbinterrupt:1.0 interrupt ADDRESS" *) output [31:0]interrupt_address;

  wire [31:0]interrupt_address;
  wire [7:0]intr;
  wire irq;
  wire [1:0]processor_ack;
  wire processor_clk;
  wire processor_rst;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [1:0]NLW_U0_processor_ack_out_UNCONNECTED;

  (* C_ASYNC_INTR = "-1" *) 
  (* C_CASCADE_MASTER = "0" *) 
  (* C_DISABLE_SYNCHRONIZERS = "1" *) 
  (* C_ENABLE_ASYNC = "0" *) 
  (* C_EN_CASCADE_MODE = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_HAS_CIE = "1" *) 
  (* C_HAS_FAST = "1" *) 
  (* C_HAS_ILR = "1" *) 
  (* C_HAS_IPR = "1" *) 
  (* C_HAS_IVR = "1" *) 
  (* C_HAS_SIE = "1" *) 
  (* C_INSTANCE = "axi_intc_inst" *) 
  (* C_IRQ_ACTIVE = "1'b1" *) 
  (* C_IRQ_IS_LEVEL = "0" *) 
  (* C_IVAR_RESET_VALUE = "0" *) 
  (* C_KIND_OF_EDGE = "-1" *) 
  (* C_KIND_OF_INTR = "-1" *) 
  (* C_KIND_OF_LVL = "-1" *) 
  (* C_MB_CLK_NOT_CONNECTED = "1" *) 
  (* C_NUM_INTR_INPUTS = "8" *) 
  (* C_NUM_SW_INTR = "8" *) 
  (* C_NUM_SYNC_FF = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* hdl = "VHDL" *) 
  (* imp_netlist = "TRUE" *) 
  (* ip_group = "LOGICORE" *) 
  (* iptype = "PERIPHERAL" *) 
  (* run_ngcbuild = "TRUE" *) 
  (* style = "HDL" *) 
  top_axi_pcie_intc_0_0_axi_intc U0
       (.interrupt_address(interrupt_address),
        .interrupt_address_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .intr(intr),
        .irq(irq),
        .irq_in(1'b0),
        .processor_ack(processor_ack),
        .processor_ack_out(NLW_U0_processor_ack_out_UNCONNECTED[1:0]),
        .processor_clk(processor_clk),
        .processor_rst(processor_rst),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_lite_ipif" *) 
module top_axi_pcie_intc_0_0_axi_lite_ipif
   (p_17_in,
    s_axi_rresp,
    Bus_RNW_reg,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ,
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ,
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ,
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ,
    bus2ip_wrce,
    s_axi_arready,
    s_axi_wready,
    \REG_GEN[1].ier_reg[1] ,
    Q,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[2] ,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[4] ,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ,
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ,
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ,
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ,
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ,
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ,
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ,
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ,
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ,
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ,
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ,
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ,
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ,
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ,
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ,
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ,
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ,
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ,
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ,
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ,
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ,
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ,
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ,
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ,
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ,
    \mer_int_reg[0] ,
    \mer_int_reg[1] ,
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ,
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ,
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ,
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ,
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ,
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ,
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ,
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ,
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ,
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ,
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ,
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ,
    p_0_in2_out,
    ip2bus_wrack_prev2,
    ip2bus_rdack_prev2,
    p_0_in20_out,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    p_0_in64_in,
    p_0_in67_in,
    p_0_in70_in,
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ,
    s_axi_arvalid,
    ip2bus_rdack,
    s_axi_aresetn,
    ip2bus_wrack,
    s_axi_rready,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_awaddr,
    D,
    \Douta_reg[15] ,
    \ILR_GEN.ilr_reg[5] ,
    \ILR_GEN.ilr_reg[4] ,
    \IVR_GEN.ivr_reg[4] ,
    \REG_GEN[1].isr_reg[1] ,
    p_0_in73_in,
    \REG_GEN[0].isr_reg[0] ,
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ,
    \REG_GEN[15].ier_reg[15] ,
    p_0_in34_in,
    \REG_GEN[14].ier_reg[14] ,
    p_0_in37_in,
    \REG_GEN[13].ier_reg[13] ,
    p_0_in40_in,
    \REG_GEN[12].ier_reg[12] ,
    p_0_in43_in,
    \REG_GEN[11].ier_reg[11] ,
    p_0_in46_in,
    \REG_GEN[10].ier_reg[10] ,
    p_0_in49_in,
    \REG_GEN[9].ier_reg[9] ,
    p_0_in52_in,
    \REG_GEN[8].ier_reg[8] ,
    p_0_in55_in,
    \REG_GEN[7].ier_reg[7] ,
    p_0_in58_in,
    \REG_GEN[6].ier_reg[6] ,
    p_0_in61_in,
    \REG_GEN[5].ier_reg[5] ,
    p_1_in149_in,
    \IPR_GEN.ipr_reg[4] ,
    p_0_in148_in,
    p_1_in146_in,
    p_0_in145_in,
    p_1_in143_in,
    p_0_in142_in,
    p_0_in,
    \mer_int_reg[0]_0 ,
    s_axi_wstrb,
    s_axi_wdata,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ,
    p_0_in375_in,
    p_0_in364_in,
    p_0_in353_in,
    p_0_in342_in,
    p_0_in331_in,
    p_0_in320_in,
    p_0_in309_in,
    p_0_in298_in,
    p_0_in287_in,
    p_0_in276_in,
    p_0_in265_in,
    p_0_in254_in,
    p_0_in243_in,
    p_0_in232_in,
    p_0_in221_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ,
    p_0_in140_in,
    p_0_in138_in,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ,
    p_0_in134_in,
    p_0_in132_in,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ,
    p_0_in128_in,
    p_0_in126_in,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ,
    p_0_in122_in,
    p_0_in120_in,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ,
    p_0_in116_in,
    p_0_in114_in,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ,
    ip2bus_wrack_int_d1,
    ip2bus_rdack_int_d1);
  output p_17_in;
  output [0:0]s_axi_rresp;
  output Bus_RNW_reg;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  output \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ;
  output \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  output \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  output [2:0]bus2ip_wrce;
  output s_axi_arready;
  output s_axi_wready;
  output \REG_GEN[1].ier_reg[1] ;
  output [3:0]Q;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[5]_0 ;
  output \s_axi_rdata_i_reg[2] ;
  output \s_axi_rdata_i_reg[2]_0 ;
  output \s_axi_rdata_i_reg[4] ;
  output \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  output \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ;
  output \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ;
  output \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ;
  output \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ;
  output \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ;
  output \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ;
  output \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ;
  output \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ;
  output \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ;
  output \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ;
  output \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ;
  output \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ;
  output \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ;
  output \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ;
  output \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ;
  output \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  output \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ;
  output \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ;
  output \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ;
  output \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ;
  output \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ;
  output \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ;
  output \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ;
  output \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ;
  output \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ;
  output \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ;
  output \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ;
  output \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ;
  output \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ;
  output \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ;
  output \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ;
  output \mer_int_reg[0] ;
  output \mer_int_reg[1] ;
  output \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ;
  output \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ;
  output \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ;
  output \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ;
  output \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ;
  output \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ;
  output \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ;
  output \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ;
  output \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ;
  output \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  output \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ;
  output \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ;
  output p_0_in2_out;
  output ip2bus_wrack_prev2;
  output ip2bus_rdack_prev2;
  output p_0_in20_out;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input p_0_in64_in;
  input p_0_in67_in;
  input p_0_in70_in;
  input \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ;
  input s_axi_arvalid;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input ip2bus_wrack;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [15:0]D;
  input [15:0]\Douta_reg[15] ;
  input \ILR_GEN.ilr_reg[5] ;
  input [4:0]\ILR_GEN.ilr_reg[4] ;
  input [4:0]\IVR_GEN.ivr_reg[4] ;
  input \REG_GEN[1].isr_reg[1] ;
  input p_0_in73_in;
  input \REG_GEN[0].isr_reg[0] ;
  input \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ;
  input \REG_GEN[15].ier_reg[15] ;
  input p_0_in34_in;
  input \REG_GEN[14].ier_reg[14] ;
  input p_0_in37_in;
  input \REG_GEN[13].ier_reg[13] ;
  input p_0_in40_in;
  input \REG_GEN[12].ier_reg[12] ;
  input p_0_in43_in;
  input \REG_GEN[11].ier_reg[11] ;
  input p_0_in46_in;
  input \REG_GEN[10].ier_reg[10] ;
  input p_0_in49_in;
  input \REG_GEN[9].ier_reg[9] ;
  input p_0_in52_in;
  input \REG_GEN[8].ier_reg[8] ;
  input p_0_in55_in;
  input \REG_GEN[7].ier_reg[7] ;
  input p_0_in58_in;
  input \REG_GEN[6].ier_reg[6] ;
  input p_0_in61_in;
  input \REG_GEN[5].ier_reg[5] ;
  input p_1_in149_in;
  input [2:0]\IPR_GEN.ipr_reg[4] ;
  input p_0_in148_in;
  input p_1_in146_in;
  input p_0_in145_in;
  input p_1_in143_in;
  input p_0_in142_in;
  input p_0_in;
  input \mer_int_reg[0]_0 ;
  input [3:0]s_axi_wstrb;
  input [15:0]s_axi_wdata;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  input p_0_in375_in;
  input p_0_in364_in;
  input p_0_in353_in;
  input p_0_in342_in;
  input p_0_in331_in;
  input p_0_in320_in;
  input p_0_in309_in;
  input p_0_in298_in;
  input p_0_in287_in;
  input p_0_in276_in;
  input p_0_in265_in;
  input p_0_in254_in;
  input p_0_in243_in;
  input p_0_in232_in;
  input p_0_in221_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  input p_0_in140_in;
  input p_0_in138_in;
  input \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  input p_0_in134_in;
  input p_0_in132_in;
  input \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  input p_0_in128_in;
  input p_0_in126_in;
  input \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  input p_0_in122_in;
  input p_0_in120_in;
  input \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  input p_0_in116_in;
  input p_0_in114_in;
  input \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  input ip2bus_wrack_int_d1;
  input ip2bus_rdack_int_d1;

  wire Bus_RNW_reg;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ;
  wire \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ;
  wire \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ;
  wire \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ;
  wire \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ;
  wire \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  wire [15:0]D;
  wire [15:0]\Douta_reg[15] ;
  wire [4:0]\ILR_GEN.ilr_reg[4] ;
  wire \ILR_GEN.ilr_reg[5] ;
  wire [2:0]\IPR_GEN.ipr_reg[4] ;
  wire [4:0]\IVR_GEN.ivr_reg[4] ;
  wire [3:0]Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  wire \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ;
  wire \REG_GEN[0].isr_reg[0] ;
  wire \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ;
  wire \REG_GEN[10].ier_reg[10] ;
  wire \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ;
  wire \REG_GEN[11].ier_reg[11] ;
  wire \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ;
  wire \REG_GEN[12].ier_reg[12] ;
  wire \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ;
  wire \REG_GEN[13].ier_reg[13] ;
  wire \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ;
  wire \REG_GEN[14].ier_reg[14] ;
  wire \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ;
  wire \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ;
  wire \REG_GEN[15].ier_reg[15] ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ;
  wire \REG_GEN[1].ier_reg[1] ;
  wire \REG_GEN[1].isr_reg[1] ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ;
  wire \REG_GEN[5].ier_reg[5] ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  wire \REG_GEN[6].ier_reg[6] ;
  wire \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ;
  wire \REG_GEN[7].ier_reg[7] ;
  wire \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ;
  wire \REG_GEN[8].ier_reg[8] ;
  wire \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ;
  wire \REG_GEN[9].ier_reg[9] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ;
  wire \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ;
  wire \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ;
  wire \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ;
  wire \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ;
  wire \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ;
  wire \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ;
  wire \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ;
  wire \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ;
  wire \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ;
  wire \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ;
  wire \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ;
  wire \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ;
  wire \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ;
  wire \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ;
  wire [0:0]SR;
  wire [2:0]bus2ip_wrce;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire \mer_int_reg[0] ;
  wire \mer_int_reg[0]_0 ;
  wire \mer_int_reg[1] ;
  wire p_0_in;
  wire p_0_in114_in;
  wire p_0_in116_in;
  wire p_0_in120_in;
  wire p_0_in122_in;
  wire p_0_in126_in;
  wire p_0_in128_in;
  wire p_0_in132_in;
  wire p_0_in134_in;
  wire p_0_in138_in;
  wire p_0_in140_in;
  wire p_0_in142_in;
  wire p_0_in145_in;
  wire p_0_in148_in;
  wire p_0_in20_out;
  wire p_0_in221_in;
  wire p_0_in232_in;
  wire p_0_in243_in;
  wire p_0_in254_in;
  wire p_0_in265_in;
  wire p_0_in276_in;
  wire p_0_in287_in;
  wire p_0_in298_in;
  wire p_0_in2_out;
  wire p_0_in309_in;
  wire p_0_in320_in;
  wire p_0_in331_in;
  wire p_0_in342_in;
  wire p_0_in34_in;
  wire p_0_in353_in;
  wire p_0_in364_in;
  wire p_0_in375_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in46_in;
  wire p_0_in49_in;
  wire p_0_in52_in;
  wire p_0_in55_in;
  wire p_0_in58_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in67_in;
  wire p_0_in70_in;
  wire p_0_in73_in;
  wire p_17_in;
  wire p_1_in143_in;
  wire p_1_in146_in;
  wire p_1_in149_in;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata_i_reg[2] ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire \s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [15:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  top_axi_pcie_intc_0_0_slave_attachment I_SLAVE_ATTACHMENT
       (.\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] (\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ),
        .\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] (\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] (\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 (\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] (\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ),
        .\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] (\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] (\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 (\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] (\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ),
        .\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] (\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] (\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 (\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] (\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ),
        .\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] (\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] (\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 (\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] (\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ),
        .\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] (\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] (\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 (\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ),
        .D(D),
        .\Douta_reg[15] (\Douta_reg[15] ),
        .\ILR_GEN.ilr_reg[4] (\ILR_GEN.ilr_reg[4] ),
        .\ILR_GEN.ilr_reg[5] (\ILR_GEN.ilr_reg[5] ),
        .\IPR_GEN.ipr_reg[4] (\IPR_GEN.ipr_reg[4] ),
        .\IVR_GEN.ivr_reg[4] (\IVR_GEN.ivr_reg[4] ),
        .Q(Q),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] (\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ),
        .\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] (\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ),
        .\REG_GEN[0].isr_reg[0] (\REG_GEN[0].isr_reg[0] ),
        .\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] (\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ),
        .\REG_GEN[10].ier_reg[10] (\REG_GEN[10].ier_reg[10] ),
        .\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] (\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ),
        .\REG_GEN[11].ier_reg[11] (\REG_GEN[11].ier_reg[11] ),
        .\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] (\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ),
        .\REG_GEN[12].ier_reg[12] (\REG_GEN[12].ier_reg[12] ),
        .\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] (\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ),
        .\REG_GEN[13].ier_reg[13] (\REG_GEN[13].ier_reg[13] ),
        .\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] (\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ),
        .\REG_GEN[14].ier_reg[14] (\REG_GEN[14].ier_reg[14] ),
        .\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] (\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ),
        .\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] (\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ),
        .\REG_GEN[15].ier_reg[15] (\REG_GEN[15].ier_reg[15] ),
        .\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] (\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ),
        .\REG_GEN[1].ier_reg[1] (\REG_GEN[1].ier_reg[1] ),
        .\REG_GEN[1].isr_reg[1] (\REG_GEN[1].isr_reg[1] ),
        .\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] (\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ),
        .\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] (\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ),
        .\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] (\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ),
        .\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] (\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ),
        .\REG_GEN[5].ier_reg[5] (\REG_GEN[5].ier_reg[5] ),
        .\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] (\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ),
        .\REG_GEN[6].ier_reg[6] (\REG_GEN[6].ier_reg[6] ),
        .\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] (\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ),
        .\REG_GEN[7].ier_reg[7] (\REG_GEN[7].ier_reg[7] ),
        .\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] (\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ),
        .\REG_GEN[8].ier_reg[8] (\REG_GEN[8].ier_reg[8] ),
        .\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] (\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ),
        .\REG_GEN[9].ier_reg[9] (\REG_GEN[9].ier_reg[9] ),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (Bus_RNW_reg),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ),
        .\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] (\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ),
        .\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] (\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ),
        .\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] (\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ),
        .\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] (\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ),
        .\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] (\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ),
        .\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] (\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ),
        .\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] (\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ),
        .\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] (\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ),
        .\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] (\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ),
        .\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] (\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ),
        .\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] (\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ),
        .\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] (\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ),
        .\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] (\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ),
        .\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] (\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ),
        .\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] (\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ),
        .SR(SR),
        .bus2ip_wrce(bus2ip_wrce),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .\mer_int_reg[0] (\mer_int_reg[0] ),
        .\mer_int_reg[0]_0 (\mer_int_reg[0]_0 ),
        .\mer_int_reg[1] (\mer_int_reg[1] ),
        .p_0_in(p_0_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in116_in(p_0_in116_in),
        .p_0_in120_in(p_0_in120_in),
        .p_0_in122_in(p_0_in122_in),
        .p_0_in126_in(p_0_in126_in),
        .p_0_in128_in(p_0_in128_in),
        .p_0_in132_in(p_0_in132_in),
        .p_0_in134_in(p_0_in134_in),
        .p_0_in138_in(p_0_in138_in),
        .p_0_in140_in(p_0_in140_in),
        .p_0_in142_in(p_0_in142_in),
        .p_0_in145_in(p_0_in145_in),
        .p_0_in148_in(p_0_in148_in),
        .p_0_in20_out(p_0_in20_out),
        .p_0_in221_in(p_0_in221_in),
        .p_0_in232_in(p_0_in232_in),
        .p_0_in243_in(p_0_in243_in),
        .p_0_in254_in(p_0_in254_in),
        .p_0_in265_in(p_0_in265_in),
        .p_0_in276_in(p_0_in276_in),
        .p_0_in287_in(p_0_in287_in),
        .p_0_in298_in(p_0_in298_in),
        .p_0_in2_out(p_0_in2_out),
        .p_0_in309_in(p_0_in309_in),
        .p_0_in320_in(p_0_in320_in),
        .p_0_in331_in(p_0_in331_in),
        .p_0_in342_in(p_0_in342_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in353_in(p_0_in353_in),
        .p_0_in364_in(p_0_in364_in),
        .p_0_in375_in(p_0_in375_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in73_in(p_0_in73_in),
        .p_17_in(p_17_in),
        .p_1_in143_in(p_1_in143_in),
        .p_1_in146_in(p_1_in146_in),
        .p_1_in149_in(p_1_in149_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata_i_reg[2]_0 (\s_axi_rdata_i_reg[2] ),
        .\s_axi_rdata_i_reg[2]_1 (\s_axi_rdata_i_reg[2]_0 ),
        .\s_axi_rdata_i_reg[4]_0 (\s_axi_rdata_i_reg[4] ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5] ),
        .\s_axi_rdata_i_reg[5]_1 (\s_axi_rdata_i_reg[5]_0 ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_pcie_intc" *) 
module top_axi_pcie_intc_0_0_axi_pcie_intc
   (s_axi_awready,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    INTX_MSI_Request,
    MSI_Vector_Num,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_rready,
    intr,
    MSI_Enable,
    INTX_MSI_Grant);
  output s_axi_awready;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output INTX_MSI_Request;
  output [4:0]MSI_Vector_Num;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_rready;
  input [7:0]intr;
  input MSI_Enable;
  input INTX_MSI_Grant;

  wire INTX_MSI_Grant;
  wire INTX_MSI_Request;
  wire MSI_Enable;
  wire [4:0]MSI_Vector_Num;
  wire \U0/_n_0 ;
  wire [1:0]ack;
  wire \ack[1]_i_2_n_0 ;
  wire \ack_reg_n_0_[0] ;
  wire \ack_reg_n_0_[1] ;
  wire [7:0]intr;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:5]NLW_INTC_interrupt_address_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "axi_intc_0,axi_intc,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "axi_intc,Vivado 2016.1" *) 
  top_axi_pcie_intc_0_0_axi_intc_0 INTC
       (.interrupt_address({NLW_INTC_interrupt_address_UNCONNECTED[31:5],MSI_Vector_Num}),
        .intr(intr),
        .irq(INTX_MSI_Request),
        .processor_ack({\ack_reg_n_0_[1] ,\ack_reg_n_0_[0] }),
        .processor_clk(s_axi_aclk),
        .processor_rst(s_axi_aresetn),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  LUT3 #(
    .INIT(8'hFD)) 
    \U0/ 
       (.I0(MSI_Enable),
        .I1(\ack_reg_n_0_[0] ),
        .I2(INTX_MSI_Grant),
        .O(\U0/_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \ack[0]_i_1 
       (.I0(MSI_Enable),
        .I1(\ack_reg_n_0_[0] ),
        .I2(\ack_reg_n_0_[1] ),
        .I3(INTX_MSI_Grant),
        .O(ack[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \ack[1]_i_1 
       (.I0(\ack_reg_n_0_[1] ),
        .I1(INTX_MSI_Grant),
        .I2(\ack_reg_n_0_[0] ),
        .I3(MSI_Enable),
        .O(ack[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \ack[1]_i_2 
       (.I0(s_axi_aresetn),
        .O(\ack[1]_i_2_n_0 ));
  FDCE \ack_reg[0] 
       (.C(s_axi_aclk),
        .CE(\U0/_n_0 ),
        .CLR(\ack[1]_i_2_n_0 ),
        .D(ack[0]),
        .Q(\ack_reg_n_0_[0] ));
  FDCE \ack_reg[1] 
       (.C(s_axi_aclk),
        .CE(\U0/_n_0 ),
        .CLR(\ack[1]_i_2_n_0 ),
        .D(ack[1]),
        .Q(\ack_reg_n_0_[1] ));
endmodule

(* ORIG_REF_NAME = "intc_core" *) 
module top_axi_pcie_intc_0_0_intc_core
   (\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ,
    SR,
    p_0_in73_in,
    p_0_in70_in,
    p_0_in67_in,
    p_0_in64_in,
    p_0_in61_in,
    p_0_in58_in,
    p_0_in55_in,
    p_0_in52_in,
    p_0_in49_in,
    p_0_in46_in,
    p_0_in43_in,
    p_0_in40_in,
    p_0_in37_in,
    p_0_in34_in,
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0 ,
    p_0_in148_in,
    p_0_in145_in,
    p_0_in142_in,
    irq,
    \REG_GEN[0].ier_reg[0]_0 ,
    p_0_in375_in,
    p_0_in364_in,
    p_0_in353_in,
    p_0_in342_in,
    p_0_in331_in,
    p_0_in320_in,
    p_0_in309_in,
    p_0_in298_in,
    p_0_in287_in,
    p_0_in276_in,
    p_0_in265_in,
    p_0_in254_in,
    p_0_in243_in,
    p_0_in232_in,
    p_0_in221_in,
    \REG_GEN[0].ier_reg[0]_1 ,
    p_0_in140_in,
    p_0_in138_in,
    \REG_GEN[3].ier_reg[3]_0 ,
    p_0_in134_in,
    p_0_in132_in,
    \REG_GEN[6].ier_reg[6]_0 ,
    p_0_in128_in,
    p_0_in126_in,
    \REG_GEN[9].ier_reg[9]_0 ,
    p_0_in122_in,
    p_0_in120_in,
    \REG_GEN[12].ier_reg[12]_0 ,
    p_0_in116_in,
    p_0_in114_in,
    \REG_GEN[15].ier_reg[15]_0 ,
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0 ,
    p_0_in,
    p_1_in149_in,
    p_1_in146_in,
    p_1_in143_in,
    Q,
    D,
    \s_axi_rdata_i_reg[31] ,
    \s_axi_rdata_i_reg[15] ,
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 ,
    \s_axi_rdata_i_reg[15]_0 ,
    \s_axi_rdata_i_reg[4] ,
    \s_axi_rdata_i_reg[14] ,
    \s_axi_rdata_i_reg[13] ,
    \s_axi_rdata_i_reg[12] ,
    \s_axi_rdata_i_reg[11] ,
    \s_axi_rdata_i_reg[10] ,
    \s_axi_rdata_i_reg[9] ,
    \s_axi_rdata_i_reg[8] ,
    \s_axi_rdata_i_reg[7] ,
    \s_axi_rdata_i_reg[6] ,
    \s_axi_rdata_i_reg[5] ,
    \s_axi_rdata_i_reg[1] ,
    \s_axi_rdata_i_reg[0] ,
    interrupt_address,
    bus2ip_wrce,
    s_axi_wdata,
    s_axi_aclk,
    Bus_RNW_reg_reg,
    Bus_RNW_reg_reg_0,
    Bus_RNW_reg_reg_1,
    Bus_RNW_reg_reg_2,
    Bus_RNW_reg_reg_3,
    Bus_RNW_reg_reg_4,
    Bus_RNW_reg_reg_5,
    Bus_RNW_reg_reg_6,
    Bus_RNW_reg_reg_7,
    Bus_RNW_reg_reg_8,
    Bus_RNW_reg_reg_9,
    Bus_RNW_reg_reg_10,
    Bus_RNW_reg_reg_11,
    Bus_RNW_reg_reg_12,
    Bus_RNW_reg_reg_13,
    Bus_RNW_reg_reg_14,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ,
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ,
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ,
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ,
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ,
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ,
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ,
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ,
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ,
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ,
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ,
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ,
    Bus_RNW_reg_reg_15,
    s_axi_aresetn,
    Bus_RNW_reg_reg_16,
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ,
    \bus2ip_addr_i_reg[5] ,
    \bus2ip_addr_i_reg[7] ,
    \bus2ip_addr_i_reg[5]_0 ,
    \bus2ip_addr_i_reg[5]_1 ,
    processor_ack,
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ,
    \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0 ,
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ,
    \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0 ,
    \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ,
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0 ,
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ,
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0 ,
    \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0 ,
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0 ,
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0 ,
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0 ,
    \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0 ,
    \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0 ,
    \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0 ,
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ,
    Bus_RNW_reg,
    p_17_in,
    \bus2ip_addr_i_reg[4] ,
    intr);
  output \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ;
  output [0:0]SR;
  output p_0_in73_in;
  output p_0_in70_in;
  output p_0_in67_in;
  output p_0_in64_in;
  output p_0_in61_in;
  output p_0_in58_in;
  output p_0_in55_in;
  output p_0_in52_in;
  output p_0_in49_in;
  output p_0_in46_in;
  output p_0_in43_in;
  output p_0_in40_in;
  output p_0_in37_in;
  output p_0_in34_in;
  output \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0 ;
  output p_0_in148_in;
  output p_0_in145_in;
  output p_0_in142_in;
  output irq;
  output \REG_GEN[0].ier_reg[0]_0 ;
  output p_0_in375_in;
  output p_0_in364_in;
  output p_0_in353_in;
  output p_0_in342_in;
  output p_0_in331_in;
  output p_0_in320_in;
  output p_0_in309_in;
  output p_0_in298_in;
  output p_0_in287_in;
  output p_0_in276_in;
  output p_0_in265_in;
  output p_0_in254_in;
  output p_0_in243_in;
  output p_0_in232_in;
  output p_0_in221_in;
  output \REG_GEN[0].ier_reg[0]_1 ;
  output p_0_in140_in;
  output p_0_in138_in;
  output \REG_GEN[3].ier_reg[3]_0 ;
  output p_0_in134_in;
  output p_0_in132_in;
  output \REG_GEN[6].ier_reg[6]_0 ;
  output p_0_in128_in;
  output p_0_in126_in;
  output \REG_GEN[9].ier_reg[9]_0 ;
  output p_0_in122_in;
  output p_0_in120_in;
  output \REG_GEN[12].ier_reg[12]_0 ;
  output p_0_in116_in;
  output p_0_in114_in;
  output \REG_GEN[15].ier_reg[15]_0 ;
  output \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0 ;
  output p_0_in;
  output p_1_in149_in;
  output p_1_in146_in;
  output p_1_in143_in;
  output [4:0]Q;
  output [15:0]D;
  output \s_axi_rdata_i_reg[31] ;
  output [15:0]\s_axi_rdata_i_reg[15] ;
  output [4:0]\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 ;
  output \s_axi_rdata_i_reg[15]_0 ;
  output [2:0]\s_axi_rdata_i_reg[4] ;
  output \s_axi_rdata_i_reg[14] ;
  output \s_axi_rdata_i_reg[13] ;
  output \s_axi_rdata_i_reg[12] ;
  output \s_axi_rdata_i_reg[11] ;
  output \s_axi_rdata_i_reg[10] ;
  output \s_axi_rdata_i_reg[9] ;
  output \s_axi_rdata_i_reg[8] ;
  output \s_axi_rdata_i_reg[7] ;
  output \s_axi_rdata_i_reg[6] ;
  output \s_axi_rdata_i_reg[5] ;
  output \s_axi_rdata_i_reg[1] ;
  output \s_axi_rdata_i_reg[0] ;
  output [31:0]interrupt_address;
  input [2:0]bus2ip_wrce;
  input [31:0]s_axi_wdata;
  input s_axi_aclk;
  input Bus_RNW_reg_reg;
  input Bus_RNW_reg_reg_0;
  input Bus_RNW_reg_reg_1;
  input Bus_RNW_reg_reg_2;
  input Bus_RNW_reg_reg_3;
  input Bus_RNW_reg_reg_4;
  input Bus_RNW_reg_reg_5;
  input Bus_RNW_reg_reg_6;
  input Bus_RNW_reg_reg_7;
  input Bus_RNW_reg_reg_8;
  input Bus_RNW_reg_reg_9;
  input Bus_RNW_reg_reg_10;
  input Bus_RNW_reg_reg_11;
  input Bus_RNW_reg_reg_12;
  input Bus_RNW_reg_reg_13;
  input Bus_RNW_reg_reg_14;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ;
  input \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  input \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  input Bus_RNW_reg_reg_15;
  input s_axi_aresetn;
  input Bus_RNW_reg_reg_16;
  input \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  input \bus2ip_addr_i_reg[5] ;
  input \bus2ip_addr_i_reg[7] ;
  input \bus2ip_addr_i_reg[5]_0 ;
  input [3:0]\bus2ip_addr_i_reg[5]_1 ;
  input [1:0]processor_ack;
  input \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ;
  input \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0 ;
  input \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ;
  input \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0 ;
  input \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ;
  input \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0 ;
  input \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ;
  input \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0 ;
  input \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0 ;
  input \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0 ;
  input \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0 ;
  input \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0 ;
  input \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0 ;
  input \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0 ;
  input \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0 ;
  input \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ;
  input Bus_RNW_reg;
  input p_17_in;
  input \bus2ip_addr_i_reg[4] ;
  input [7:0]intr;

  wire \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0 ;
  wire \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1_n_0 ;
  wire Bus_RNW_reg;
  wire Bus_RNW_reg_reg;
  wire Bus_RNW_reg_reg_0;
  wire Bus_RNW_reg_reg_1;
  wire Bus_RNW_reg_reg_10;
  wire Bus_RNW_reg_reg_11;
  wire Bus_RNW_reg_reg_12;
  wire Bus_RNW_reg_reg_13;
  wire Bus_RNW_reg_reg_14;
  wire Bus_RNW_reg_reg_15;
  wire Bus_RNW_reg_reg_16;
  wire Bus_RNW_reg_reg_2;
  wire Bus_RNW_reg_reg_3;
  wire Bus_RNW_reg_reg_4;
  wire Bus_RNW_reg_reg_5;
  wire Bus_RNW_reg_reg_6;
  wire Bus_RNW_reg_reg_7;
  wire Bus_RNW_reg_reg_8;
  wire Bus_RNW_reg_reg_9;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  wire [15:0]D;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ;
  wire \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ;
  (* async_reg = "true" *) wire \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1] ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  (* async_reg = "true" *) wire \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1] ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  (* async_reg = "true" *) wire \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1] ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  (* async_reg = "true" *) wire \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1] ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  (* async_reg = "true" *) wire \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1] ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  (* async_reg = "true" *) wire \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1] ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  (* async_reg = "true" *) wire \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1] ;
  wire \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0 ;
  wire \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ;
  wire \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg_n_0 ;
  wire \IPR_GEN.ipr[0]_i_1_n_0 ;
  wire \IPR_GEN.ipr[10]_i_1_n_0 ;
  wire \IPR_GEN.ipr[11]_i_1_n_0 ;
  wire \IPR_GEN.ipr[12]_i_1_n_0 ;
  wire \IPR_GEN.ipr[13]_i_1_n_0 ;
  wire \IPR_GEN.ipr[14]_i_1_n_0 ;
  wire \IPR_GEN.ipr[15]_i_1_n_0 ;
  wire \IPR_GEN.ipr[1]_i_1_n_0 ;
  wire \IPR_GEN.ipr[2]_i_1_n_0 ;
  wire \IPR_GEN.ipr[3]_i_1_n_0 ;
  wire \IPR_GEN.ipr[4]_i_1_n_0 ;
  wire \IPR_GEN.ipr[5]_i_1_n_0 ;
  wire \IPR_GEN.ipr[6]_i_1_n_0 ;
  wire \IPR_GEN.ipr[7]_i_1_n_0 ;
  wire \IPR_GEN.ipr[8]_i_1_n_0 ;
  wire \IPR_GEN.ipr[9]_i_1_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0 ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0] ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1] ;
  wire \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1_n_0 ;
  wire \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0 ;
  wire [4:0]\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 ;
  wire \IVR_GEN.ivr[0]_i_1_n_0 ;
  wire \IVR_GEN.ivr[0]_i_2_n_0 ;
  wire \IVR_GEN.ivr[0]_i_3_n_0 ;
  wire \IVR_GEN.ivr[0]_i_4_n_0 ;
  wire \IVR_GEN.ivr[0]_i_5_n_0 ;
  wire \IVR_GEN.ivr[0]_i_6_n_0 ;
  wire \IVR_GEN.ivr[0]_i_7_n_0 ;
  wire \IVR_GEN.ivr[1]_i_1_n_0 ;
  wire \IVR_GEN.ivr[1]_i_2_n_0 ;
  wire \IVR_GEN.ivr[1]_i_3_n_0 ;
  wire \IVR_GEN.ivr[1]_i_4_n_0 ;
  wire \IVR_GEN.ivr[1]_i_5_n_0 ;
  wire \IVR_GEN.ivr[1]_i_6_n_0 ;
  wire \IVR_GEN.ivr[1]_i_7_n_0 ;
  wire \IVR_GEN.ivr[2]_i_1_n_0 ;
  wire \IVR_GEN.ivr[2]_i_2_n_0 ;
  wire \IVR_GEN.ivr[2]_i_3_n_0 ;
  wire \IVR_GEN.ivr[2]_i_4_n_0 ;
  wire \IVR_GEN.ivr[2]_i_5_n_0 ;
  wire \IVR_GEN.ivr[2]_i_6_n_0 ;
  wire \IVR_GEN.ivr[3]_i_1_n_0 ;
  wire \IVR_GEN.ivr[4]_i_3_n_0 ;
  wire Irq_i;
  wire [4:0]Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0 ;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0 ;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0 ;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ;
  wire \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ;
  wire \REG_GEN[0].ier_reg[0]_0 ;
  wire \REG_GEN[0].ier_reg[0]_1 ;
  wire \REG_GEN[0].ier_reg_n_0_[0] ;
  wire \REG_GEN[0].isr[0]_i_2_n_0 ;
  wire \REG_GEN[0].isr_reg_n_0_[0] ;
  wire \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0 ;
  wire \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0 ;
  wire \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0 ;
  wire \REG_GEN[10].isr[10]_i_1_n_0 ;
  wire \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0 ;
  wire \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0 ;
  wire \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0 ;
  wire \REG_GEN[11].isr[11]_i_1_n_0 ;
  wire \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1_n_0 ;
  wire \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0 ;
  wire \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0 ;
  wire \REG_GEN[12].ier_reg[12]_0 ;
  wire \REG_GEN[12].isr[12]_i_1_n_0 ;
  wire \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1_n_0 ;
  wire \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0 ;
  wire \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0 ;
  wire \REG_GEN[13].isr[13]_i_1_n_0 ;
  wire \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1_n_0 ;
  wire \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0 ;
  wire \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0 ;
  wire \REG_GEN[14].isr[14]_i_1_n_0 ;
  wire \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1_n_0 ;
  wire \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0 ;
  wire \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0 ;
  wire \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ;
  wire \REG_GEN[15].ier_reg[15]_0 ;
  wire \REG_GEN[15].isr[15]_i_1_n_0 ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0 ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0 ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ;
  wire \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0 ;
  wire \REG_GEN[1].isr[1]_i_2_n_0 ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0 ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0 ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0 ;
  wire \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ;
  wire \REG_GEN[2].isr[2]_i_2_n_0 ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0 ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0 ;
  wire \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0 ;
  wire \REG_GEN[3].ier_reg[3]_0 ;
  wire \REG_GEN[3].isr[3]_i_2_n_0 ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0 ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0 ;
  wire \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ;
  wire \REG_GEN[4].isr[4]_i_2_n_0 ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0 ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0 ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4_n_0 ;
  wire \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0 ;
  wire \REG_GEN[5].isr[5]_i_2_n_0 ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0 ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0 ;
  wire \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ;
  wire \REG_GEN[6].ier_reg[6]_0 ;
  wire \REG_GEN[6].isr[6]_i_2_n_0 ;
  wire \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0 ;
  wire \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0 ;
  wire \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0 ;
  wire \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0 ;
  wire \REG_GEN[7].isr[7]_i_2_n_0 ;
  wire \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0 ;
  wire \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0 ;
  wire \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ;
  wire \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0 ;
  wire \REG_GEN[8].isr[8]_i_1_n_0 ;
  wire \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0 ;
  wire \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0 ;
  wire \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0 ;
  wire \REG_GEN[9].ier_reg[9]_0 ;
  wire \REG_GEN[9].isr[9]_i_1_n_0 ;
  wire [0:0]SR;
  wire ack_or;
  wire ack_or_i;
  wire ack_or_i_2_n_0;
  wire ack_or_i_3_n_0;
  wire ack_or_i_4_n_0;
  wire \bus2ip_addr_i_reg[4] ;
  wire \bus2ip_addr_i_reg[5] ;
  wire \bus2ip_addr_i_reg[5]_0 ;
  wire [3:0]\bus2ip_addr_i_reg[5]_1 ;
  wire \bus2ip_addr_i_reg[7] ;
  wire [2:0]bus2ip_wrce;
  wire [1:0]current_state;
  wire first_ack;
  wire first_ack_active;
  wire idle_and_irq;
  wire idle_and_irq_d1;
  wire [5:5]ilr;
  wire in_idle;
  wire [31:0]interrupt_address;
  wire [7:0]intr;
  wire intr_d1;
  (* async_reg = "true" *) wire [0:1]intr_ff;
  wire [15:0]ipr;
  wire irq;
  wire irq_dis;
  wire irq_dis_d1;
  wire irq_dis_sample;
  wire irq_dis_sample_i;
  wire irq_gen;
  wire irq_gen_i_10_n_0;
  wire irq_gen_i_11_n_0;
  wire irq_gen_i_12_n_0;
  wire irq_gen_i_13_n_0;
  wire irq_gen_i_17_n_0;
  wire irq_gen_i_20_n_0;
  wire irq_gen_i_21_n_0;
  wire irq_gen_i_22_n_0;
  wire irq_gen_i_2_n_0;
  wire irq_gen_i_31_n_0;
  wire irq_gen_i_32_n_0;
  wire irq_gen_i_33_n_0;
  wire irq_gen_i_34_n_0;
  wire irq_gen_i_35_n_0;
  wire irq_gen_i_36_n_0;
  wire irq_gen_i_39_n_0;
  wire irq_gen_i_3_n_0;
  wire irq_gen_i_40_n_0;
  wire irq_gen_i_41_n_0;
  wire irq_gen_i_42_n_0;
  wire irq_gen_i_43_n_0;
  wire irq_gen_i_44_n_0;
  wire irq_gen_i_45_n_0;
  wire irq_gen_i_46_n_0;
  wire irq_gen_i_47_n_0;
  wire irq_gen_i_48_n_0;
  wire irq_gen_i_49_n_0;
  wire irq_gen_i_4_n_0;
  wire irq_gen_i_50_n_0;
  wire irq_gen_i_51_n_0;
  wire irq_gen_i_52_n_0;
  wire irq_gen_i_53_n_0;
  wire irq_gen_i_54_n_0;
  wire irq_gen_i_55_n_0;
  wire irq_gen_i_56_n_0;
  wire irq_gen_i_57_n_0;
  wire irq_gen_i_58_n_0;
  wire irq_gen_i_59_n_0;
  wire irq_gen_i_5_n_0;
  wire irq_gen_i_60_n_0;
  wire irq_gen_i_61_n_0;
  wire irq_gen_i_62_n_0;
  wire irq_gen_i_6_n_0;
  wire irq_gen_i_8_n_0;
  wire irq_gen_i_9_n_0;
  wire irq_gen_int1086_in;
  wire irq_gen_int1288_in;
  wire irq_gen_int1490_in;
  wire irq_gen_int167_out;
  wire irq_gen_int1692_in;
  wire irq_gen_int1894_in;
  wire irq_gen_int2096_in;
  wire irq_gen_int2298_in;
  wire irq_gen_int24100_in;
  wire irq_gen_int26102_in;
  wire irq_gen_int278_in;
  wire irq_gen_int28104_in;
  wire irq_gen_int30106_in;
  wire irq_gen_int30107_in;
  wire irq_gen_int480_in;
  wire irq_gen_int682_in;
  wire irq_gen_int884_in;
  wire irq_gen_reg_i_14_n_3;
  wire irq_gen_reg_i_15_n_3;
  wire irq_gen_reg_i_16_n_3;
  wire irq_gen_reg_i_18_n_3;
  wire irq_gen_reg_i_19_n_3;
  wire irq_gen_reg_i_23_n_3;
  wire irq_gen_reg_i_24_n_3;
  wire irq_gen_reg_i_25_n_3;
  wire irq_gen_reg_i_26_n_3;
  wire irq_gen_reg_i_27_n_3;
  wire irq_gen_reg_i_28_n_3;
  wire irq_gen_reg_i_29_n_3;
  wire irq_gen_reg_i_30_n_3;
  wire irq_gen_reg_i_37_n_3;
  wire irq_gen_reg_i_38_n_3;
  wire irq_gen_reg_i_7_n_3;
  wire [4:0]ivar_index_axi_clk;
  wire ivar_index_sample_en;
  wire ivar_index_sample_en_i;
  wire [4:3]ivr_in;
  wire p_0_in;
  wire p_0_in109_in;
  wire p_0_in112_in;
  wire p_0_in114_in;
  wire p_0_in115_in;
  wire p_0_in116_in;
  wire p_0_in118_in;
  wire p_0_in120_in;
  wire p_0_in121_in;
  wire p_0_in122_in;
  wire p_0_in124_in;
  wire p_0_in126_in;
  wire p_0_in127_in;
  wire p_0_in128_in;
  wire p_0_in130_in;
  wire p_0_in132_in;
  wire p_0_in133_in;
  wire p_0_in134_in;
  wire p_0_in136_in;
  wire p_0_in138_in;
  wire p_0_in139_in;
  wire p_0_in140_in;
  wire p_0_in142_in;
  wire p_0_in145_in;
  wire p_0_in148_in;
  wire p_0_in151_in;
  wire p_0_in221_in;
  wire p_0_in232_in;
  wire p_0_in243_in;
  wire p_0_in254_in;
  wire p_0_in265_in;
  wire p_0_in276_in;
  wire p_0_in287_in;
  wire p_0_in298_in;
  wire p_0_in309_in;
  wire p_0_in320_in;
  wire p_0_in331_in;
  wire p_0_in342_in;
  wire p_0_in34_in;
  wire p_0_in353_in;
  wire p_0_in364_in;
  wire p_0_in375_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in46_in;
  wire p_0_in49_in;
  wire p_0_in52_in;
  wire p_0_in55_in;
  wire p_0_in58_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in67_in;
  wire p_0_in70_in;
  wire p_0_in73_in;
  wire p_104_out;
  wire p_105_out;
  wire p_106_out;
  wire p_107_out;
  wire p_108_out;
  wire p_109_out;
  wire p_10_in;
  wire p_110_out;
  wire p_111_out;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_17_in;
  wire p_1_in110_in;
  wire p_1_in113_in;
  wire p_1_in116_in;
  wire p_1_in119_in;
  wire p_1_in122_in;
  wire p_1_in125_in;
  wire p_1_in128_in;
  wire p_1_in131_in;
  wire p_1_in134_in;
  wire p_1_in137_in;
  wire p_1_in140_in;
  wire p_1_in143_in;
  wire p_1_in146_in;
  wire p_1_in149_in;
  wire p_1_in152_in;
  (* async_reg = "true" *) wire [0:0]p_1_out__0;
  (* async_reg = "true" *) wire [0:0]p_1_out__1;
  (* async_reg = "true" *) wire [0:0]p_1_out__2;
  (* async_reg = "true" *) wire [0:0]p_1_out__3;
  (* async_reg = "true" *) wire [0:0]p_1_out__4;
  (* async_reg = "true" *) wire [0:0]p_1_out__5;
  (* async_reg = "true" *) wire [0:0]p_1_out__6;
  wire p_212_out;
  wire p_2_in;
  wire p_35_out;
  wire p_39_out;
  wire p_3_in;
  wire p_43_out;
  wire p_47_out;
  wire p_4_in;
  wire p_51_out;
  wire p_55_out;
  wire p_59_out;
  wire p_5_in;
  wire p_63_out;
  wire p_67_out;
  wire p_6_in;
  wire p_71_out;
  wire p_75_out;
  wire p_79_out;
  wire p_7_in;
  wire p_83_out;
  wire p_87_out;
  wire p_8_in;
  wire p_91_out;
  wire p_95_out;
  wire p_9_in;
  wire [1:0]processor_ack;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire \s_axi_rdata_i[31]_i_5_n_0 ;
  wire \s_axi_rdata_i_reg[0] ;
  wire \s_axi_rdata_i_reg[10] ;
  wire \s_axi_rdata_i_reg[11] ;
  wire \s_axi_rdata_i_reg[12] ;
  wire \s_axi_rdata_i_reg[13] ;
  wire \s_axi_rdata_i_reg[14] ;
  wire [15:0]\s_axi_rdata_i_reg[15] ;
  wire \s_axi_rdata_i_reg[15]_0 ;
  wire \s_axi_rdata_i_reg[1] ;
  wire \s_axi_rdata_i_reg[31] ;
  wire [2:0]\s_axi_rdata_i_reg[4] ;
  wire \s_axi_rdata_i_reg[5] ;
  wire \s_axi_rdata_i_reg[6] ;
  wire \s_axi_rdata_i_reg[7] ;
  wire \s_axi_rdata_i_reg[8] ;
  wire \s_axi_rdata_i_reg[9] ;
  wire [31:0]s_axi_wdata;
  wire second_ack;
  wire second_ack_sync_d1;
  wire second_ack_sync_d2;
  wire [3:2]NLW_irq_gen_reg_i_14_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_14_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_15_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_15_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_16_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_16_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_18_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_18_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_19_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_19_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_23_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_23_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_24_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_24_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_25_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_25_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_26_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_26_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_27_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_27_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_28_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_28_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_29_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_29_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_30_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_30_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_37_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_37_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_38_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_38_O_UNCONNECTED;
  wire [3:2]NLW_irq_gen_reg_i_7_CO_UNCONNECTED;
  wire [3:0]NLW_irq_gen_reg_i_7_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1 
       (.I0(processor_ack[0]),
        .I1(processor_ack[1]),
        .I2(first_ack_active),
        .O(\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0 ));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0 ),
        .Q(first_ack_active),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1 
       (.I0(processor_ack[0]),
        .I1(processor_ack[1]),
        .O(\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1_n_0 ));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1_n_0 ),
        .Q(first_ack),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_i_1 
       (.I0(first_ack_active),
        .I1(processor_ack[1]),
        .O(p_212_out));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_212_out),
        .Q(second_ack),
        .R(SR));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(second_ack),
        .Q(second_ack_sync_d1),
        .R(SR));
  FDRE \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(second_ack_sync_d1),
        .Q(second_ack_sync_d2),
        .R(SR));
  FDRE \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .Q(\REG_GEN[0].ier_reg[0]_1 ),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0 ),
        .Q(p_0_in122_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0 ),
        .Q(p_0_in120_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ),
        .Q(\REG_GEN[12].ier_reg[12]_0 ),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0 ),
        .Q(p_0_in116_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0 ),
        .Q(p_0_in114_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ),
        .Q(\REG_GEN[15].ier_reg[15]_0 ),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0 ),
        .Q(p_0_in140_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0 ),
        .Q(p_0_in138_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ),
        .Q(\REG_GEN[3].ier_reg[3]_0 ),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0 ),
        .Q(p_0_in134_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0 ),
        .Q(p_0_in132_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ),
        .Q(\REG_GEN[6].ier_reg[6]_0 ),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0 ),
        .Q(p_0_in128_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0 ),
        .Q(p_0_in126_in),
        .R(1'b0));
  FDRE \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ),
        .Q(\REG_GEN[9].ier_reg[9]_0 ),
        .R(1'b0));
  FDSE \ILR_GEN.ilr_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[0]),
        .Q(Q[0]),
        .S(SR));
  FDSE \ILR_GEN.ilr_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[1]),
        .Q(Q[1]),
        .S(SR));
  FDSE \ILR_GEN.ilr_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[2]),
        .Q(Q[2]),
        .S(SR));
  FDSE \ILR_GEN.ilr_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[3]),
        .Q(Q[3]),
        .S(SR));
  FDSE \ILR_GEN.ilr_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[4]),
        .Q(Q[4]),
        .S(SR));
  FDSE \ILR_GEN.ilr_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[1]),
        .D(s_axi_wdata[5]),
        .Q(ilr),
        .S(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[0]),
        .Q(intr_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff[0]),
        .Q(intr_ff[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1 
       (.I0(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(intr_ff[1]),
        .I2(intr_d1),
        .I3(s_axi_aresetn),
        .I4(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .O(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr_ff[1]),
        .Q(intr_d1),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[1]),
        .Q(p_1_out__0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out__0),
        .Q(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1 
       (.I0(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .I2(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .O(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .Q(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[2]),
        .Q(p_1_out__1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out__1),
        .Q(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1 
       (.I0(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .I2(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_2_in),
        .O(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .Q(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[3]),
        .Q(p_1_out__2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out__2),
        .Q(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1 
       (.I0(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .I2(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_3_in),
        .O(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .Q(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[4]),
        .Q(p_1_out__3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out__3),
        .Q(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1 
       (.I0(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .I2(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_4_in),
        .O(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .Q(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[5]),
        .Q(p_1_out__4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out__4),
        .Q(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1 
       (.I0(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .I2(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_5_in),
        .O(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .Q(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[6]),
        .Q(p_1_out__5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out__5),
        .Q(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1 
       (.I0(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .I2(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_6_in),
        .O(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .Q(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(intr[7]),
        .Q(p_1_out__6),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_1_out__6),
        .Q(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000AE00)) 
    \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1 
       (.I0(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .I2(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .I3(s_axi_aresetn),
        .I4(p_7_in),
        .O(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0 ));
  FDRE \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0 ),
        .Q(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .R(1'b0));
  FDRE \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1] ),
        .Q(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg_n_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[0]_i_1 
       (.I0(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I1(\REG_GEN[0].ier_reg_n_0_[0] ),
        .O(\IPR_GEN.ipr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[10]_i_1 
       (.I0(p_0_in124_in),
        .I1(p_1_in125_in),
        .O(\IPR_GEN.ipr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[11]_i_1 
       (.I0(p_1_in122_in),
        .I1(p_0_in121_in),
        .O(\IPR_GEN.ipr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[12]_i_1 
       (.I0(p_1_in119_in),
        .I1(p_0_in118_in),
        .O(\IPR_GEN.ipr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[13]_i_1 
       (.I0(p_0_in115_in),
        .I1(p_1_in116_in),
        .O(\IPR_GEN.ipr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[14]_i_1 
       (.I0(p_0_in112_in),
        .I1(p_1_in113_in),
        .O(\IPR_GEN.ipr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[15]_i_1 
       (.I0(p_0_in109_in),
        .I1(p_1_in110_in),
        .O(\IPR_GEN.ipr[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[1]_i_1 
       (.I0(p_0_in151_in),
        .I1(p_1_in152_in),
        .O(\IPR_GEN.ipr[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[2]_i_1 
       (.I0(p_0_in148_in),
        .I1(p_1_in149_in),
        .O(\IPR_GEN.ipr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[3]_i_1 
       (.I0(p_0_in145_in),
        .I1(p_1_in146_in),
        .O(\IPR_GEN.ipr[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[4]_i_1 
       (.I0(p_0_in142_in),
        .I1(p_1_in143_in),
        .O(\IPR_GEN.ipr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[5]_i_1 
       (.I0(p_0_in139_in),
        .I1(p_1_in140_in),
        .O(\IPR_GEN.ipr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[6]_i_1 
       (.I0(p_0_in136_in),
        .I1(p_1_in137_in),
        .O(\IPR_GEN.ipr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[7]_i_1 
       (.I0(p_0_in133_in),
        .I1(p_1_in134_in),
        .O(\IPR_GEN.ipr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[8]_i_1 
       (.I0(p_1_in131_in),
        .I1(p_0_in130_in),
        .O(\IPR_GEN.ipr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \IPR_GEN.ipr[9]_i_1 
       (.I0(p_0_in127_in),
        .I1(p_1_in128_in),
        .O(\IPR_GEN.ipr[9]_i_1_n_0 ));
  FDRE \IPR_GEN.ipr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[0]_i_1_n_0 ),
        .Q(ipr[0]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[10]_i_1_n_0 ),
        .Q(ipr[10]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[11]_i_1_n_0 ),
        .Q(ipr[11]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[12]_i_1_n_0 ),
        .Q(ipr[12]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[13]_i_1_n_0 ),
        .Q(ipr[13]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[14]_i_1_n_0 ),
        .Q(ipr[14]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[15]_i_1_n_0 ),
        .Q(ipr[15]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[1]_i_1_n_0 ),
        .Q(ipr[1]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[2]_i_1_n_0 ),
        .Q(\s_axi_rdata_i_reg[4] [0]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[3]_i_1_n_0 ),
        .Q(\s_axi_rdata_i_reg[4] [1]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .Q(\s_axi_rdata_i_reg[4] [2]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[5]_i_1_n_0 ),
        .Q(ipr[5]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[6]_i_1_n_0 ),
        .Q(ipr[6]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[7]_i_1_n_0 ),
        .Q(ipr[7]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[8]_i_1_n_0 ),
        .Q(ipr[8]),
        .R(SR));
  FDRE \IPR_GEN.ipr_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IPR_GEN.ipr[9]_i_1_n_0 ),
        .Q(ipr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_d1_i_1 
       (.I0(irq_gen),
        .O(irq_dis));
  FDRE \IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_dis),
        .Q(irq_dis_d1),
        .R(SR));
  LUT2 #(
    .INIT(4'h1)) 
    \IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_sample_i_1 
       (.I0(irq_gen),
        .I1(irq_dis_d1),
        .O(irq_dis_sample_i));
  FDRE \IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_sample_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_dis_sample_i),
        .Q(irq_dis_sample),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_i_1 
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_i_2 
       (.I0(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0] ),
        .I1(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1] ),
        .O(Irq_i));
  FDRE \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Irq_i),
        .Q(irq),
        .R(SR));
  LUT6 #(
    .INIT(64'h0202023232320232)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1 
       (.I0(ivar_index_sample_en),
        .I1(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1] ),
        .I2(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0] ),
        .I3(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2_n_0 ),
        .I4(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0 ),
        .I5(first_ack),
        .O(current_state[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2 
       (.I0(irq_dis_sample),
        .I1(ack_or),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00800F80)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1 
       (.I0(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0 ),
        .I1(first_ack),
        .I2(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0] ),
        .I3(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1] ),
        .I4(second_ack_sync_d2),
        .O(current_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00DD00F0)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2 
       (.I0(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0 ),
        .I1(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0 ),
        .I2(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0 ),
        .I3(ivar_index_axi_clk[4]),
        .I4(ivar_index_axi_clk[3]),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF35FF)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3 
       (.I0(p_0_in46_in),
        .I1(p_0_in43_in),
        .I2(ivar_index_axi_clk[0]),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .I5(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6_n_0 ),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11001010)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4 
       (.I0(ivar_index_axi_clk[1]),
        .I1(ivar_index_axi_clk[2]),
        .I2(p_0_in52_in),
        .I3(p_0_in49_in),
        .I4(ivar_index_axi_clk[0]),
        .I5(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0 ),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0000D800)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6 
       (.I0(ivar_index_axi_clk[0]),
        .I1(p_0_in37_in),
        .I2(p_0_in40_in),
        .I3(ivar_index_axi_clk[2]),
        .I4(ivar_index_axi_clk[1]),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hD8000000)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7 
       (.I0(ivar_index_axi_clk[0]),
        .I1(\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0 ),
        .I2(p_0_in34_in),
        .I3(ivar_index_axi_clk[2]),
        .I4(ivar_index_axi_clk[1]),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8 
       (.I0(p_0_in70_in),
        .I1(p_0_in67_in),
        .I2(ivar_index_axi_clk[1]),
        .I3(p_0_in73_in),
        .I4(ivar_index_axi_clk[0]),
        .I5(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9 
       (.I0(p_0_in55_in),
        .I1(p_0_in58_in),
        .I2(ivar_index_axi_clk[1]),
        .I3(p_0_in61_in),
        .I4(ivar_index_axi_clk[0]),
        .I5(p_0_in64_in),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0 ));
  FDRE \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(current_state[0]),
        .Q(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0] ),
        .R(SR));
  FDRE \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(current_state[1]),
        .Q(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1] ),
        .R(SR));
  MUXF7 \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5 
       (.I0(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0 ),
        .I1(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0 ),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0 ),
        .S(ivar_index_axi_clk[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1 
       (.I0(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1] ),
        .I1(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0] ),
        .O(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1_n_0 ));
  FDRE \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1_n_0 ),
        .Q(in_idle),
        .R(SR));
  top_axi_pcie_intc_0_0_shared_ram_ivar \IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I 
       (.D(D),
        .\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] (\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .\ILR_GEN.ilr_reg[5] (\s_axi_rdata_i_reg[31] ),
        .Q(ivar_index_axi_clk[3:0]),
        .\bus2ip_addr_i_reg[5] (\bus2ip_addr_i_reg[5]_1 ),
        .bus2ip_wrce(bus2ip_wrce[0]),
        .interrupt_address(interrupt_address),
        .s_axi_aclk(s_axi_aclk),
        .\s_axi_rdata_i_reg[15] (\s_axi_rdata_i_reg[15] ),
        .s_axi_wdata(s_axi_wdata));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_i_1 
       (.I0(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0 ),
        .I1(in_idle),
        .I2(irq_gen),
        .O(idle_and_irq));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(idle_and_irq),
        .Q(idle_and_irq_d1),
        .R(SR));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0] 
       (.C(s_axi_aclk),
        .CE(ivar_index_sample_en_i),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [0]),
        .Q(ivar_index_axi_clk[0]),
        .R(SR));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[1] 
       (.C(s_axi_aclk),
        .CE(ivar_index_sample_en_i),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [1]),
        .Q(ivar_index_axi_clk[1]),
        .R(SR));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[2] 
       (.C(s_axi_aclk),
        .CE(ivar_index_sample_en_i),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [2]),
        .Q(ivar_index_axi_clk[2]),
        .R(SR));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[3] 
       (.C(s_axi_aclk),
        .CE(ivar_index_sample_en_i),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [3]),
        .Q(ivar_index_axi_clk[3]),
        .R(SR));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4] 
       (.C(s_axi_aclk),
        .CE(ivar_index_sample_en_i),
        .D(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [4]),
        .Q(ivar_index_axi_clk[4]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_i_1 
       (.I0(irq_gen),
        .I1(in_idle),
        .I2(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0 ),
        .I3(idle_and_irq_d1),
        .O(ivar_index_sample_en_i));
  FDRE \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ivar_index_sample_en_i),
        .Q(ivar_index_sample_en),
        .R(SR));
  LUT6 #(
    .INIT(64'hF8FFF8FFF8FFFFFF)) 
    \IVR_GEN.ivr[0]_i_1 
       (.I0(\IVR_GEN.ivr[0]_i_2_n_0 ),
        .I1(\IPR_GEN.ipr[1]_i_1_n_0 ),
        .I2(\IVR_GEN.ivr[0]_i_3_n_0 ),
        .I3(s_axi_aresetn),
        .I4(\IPR_GEN.ipr[14]_i_1_n_0 ),
        .I5(\IVR_GEN.ivr[1]_i_6_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \IVR_GEN.ivr[0]_i_2 
       (.I0(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I1(\REG_GEN[0].isr_reg_n_0_[0] ),
        .O(\IVR_GEN.ivr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4040404040404044)) 
    \IVR_GEN.ivr[0]_i_3 
       (.I0(\IPR_GEN.ipr[2]_i_1_n_0 ),
        .I1(\IVR_GEN.ivr[0]_i_2_n_0 ),
        .I2(\IVR_GEN.ivr[0]_i_4_n_0 ),
        .I3(\IVR_GEN.ivr[0]_i_5_n_0 ),
        .I4(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .I5(\IPR_GEN.ipr[6]_i_1_n_0 ),
        .O(\IVR_GEN.ivr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF888888888888)) 
    \IVR_GEN.ivr[0]_i_4 
       (.I0(p_1_in146_in),
        .I1(p_0_in145_in),
        .I2(p_0_in142_in),
        .I3(p_1_in143_in),
        .I4(p_0_in139_in),
        .I5(p_1_in140_in),
        .O(\IVR_GEN.ivr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00002AFF2AFF2AFF)) 
    \IVR_GEN.ivr[0]_i_5 
       (.I0(\IVR_GEN.ivr[0]_i_6_n_0 ),
        .I1(p_1_in128_in),
        .I2(p_0_in127_in),
        .I3(irq_gen_i_22_n_0),
        .I4(p_0_in133_in),
        .I5(p_1_in134_in),
        .O(\IVR_GEN.ivr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFBBBFBBBFBB)) 
    \IVR_GEN.ivr[0]_i_6 
       (.I0(\IPR_GEN.ipr[10]_i_1_n_0 ),
        .I1(\IVR_GEN.ivr[0]_i_7_n_0 ),
        .I2(\IPR_GEN.ipr[13]_i_1_n_0 ),
        .I3(\IPR_GEN.ipr[14]_i_1_n_0 ),
        .I4(p_0_in121_in),
        .I5(p_1_in122_in),
        .O(\IVR_GEN.ivr[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \IVR_GEN.ivr[0]_i_7 
       (.I0(p_0_in118_in),
        .I1(p_1_in119_in),
        .O(\IVR_GEN.ivr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hF200FFFFFFFFFFFF)) 
    \IVR_GEN.ivr[1]_i_1 
       (.I0(\IVR_GEN.ivr[1]_i_2_n_0 ),
        .I1(\IVR_GEN.ivr[1]_i_3_n_0 ),
        .I2(\IVR_GEN.ivr[1]_i_4_n_0 ),
        .I3(\IVR_GEN.ivr[1]_i_5_n_0 ),
        .I4(\IVR_GEN.ivr[1]_i_6_n_0 ),
        .I5(s_axi_aresetn),
        .O(\IVR_GEN.ivr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \IVR_GEN.ivr[1]_i_2 
       (.I0(p_1_in140_in),
        .I1(p_0_in139_in),
        .I2(p_1_in143_in),
        .I3(p_0_in142_in),
        .O(\IVR_GEN.ivr[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD5D5D5)) 
    \IVR_GEN.ivr[1]_i_3 
       (.I0(\IVR_GEN.ivr[2]_i_4_n_0 ),
        .I1(\IVR_GEN.ivr[2]_i_5_n_0 ),
        .I2(\IPR_GEN.ipr[13]_i_1_n_0 ),
        .I3(p_0_in118_in),
        .I4(p_1_in119_in),
        .I5(\IVR_GEN.ivr[2]_i_6_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[1]_i_4 
       (.I0(p_1_in146_in),
        .I1(p_0_in145_in),
        .I2(p_1_in149_in),
        .I3(p_0_in148_in),
        .O(\IVR_GEN.ivr[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \IVR_GEN.ivr[1]_i_5 
       (.I0(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I1(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I2(p_1_in152_in),
        .I3(p_0_in151_in),
        .O(\IVR_GEN.ivr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBBFBBBFBBB)) 
    \IVR_GEN.ivr[1]_i_6 
       (.I0(\IVR_GEN.ivr[1]_i_7_n_0 ),
        .I1(ivr_in[3]),
        .I2(p_0_in115_in),
        .I3(p_1_in116_in),
        .I4(p_0_in118_in),
        .I5(p_1_in119_in),
        .O(\IVR_GEN.ivr[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \IVR_GEN.ivr[1]_i_7 
       (.I0(p_0_in124_in),
        .I1(p_1_in125_in),
        .I2(p_0_in121_in),
        .I3(p_1_in122_in),
        .I4(\IVR_GEN.ivr[2]_i_4_n_0 ),
        .O(\IVR_GEN.ivr[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF5D5D5D5)) 
    \IVR_GEN.ivr[2]_i_1 
       (.I0(s_axi_aresetn),
        .I1(\IVR_GEN.ivr[2]_i_2_n_0 ),
        .I2(\IVR_GEN.ivr[2]_i_3_n_0 ),
        .I3(\IVR_GEN.ivr[2]_i_4_n_0 ),
        .I4(\IVR_GEN.ivr[2]_i_5_n_0 ),
        .O(\IVR_GEN.ivr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \IVR_GEN.ivr[2]_i_2 
       (.I0(\IVR_GEN.ivr[2]_i_6_n_0 ),
        .I1(p_0_in142_in),
        .I2(p_1_in143_in),
        .I3(p_0_in139_in),
        .I4(p_1_in140_in),
        .O(\IVR_GEN.ivr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \IVR_GEN.ivr[2]_i_3 
       (.I0(\IVR_GEN.ivr[1]_i_5_n_0 ),
        .I1(p_0_in148_in),
        .I2(p_1_in149_in),
        .I3(p_0_in145_in),
        .I4(p_1_in146_in),
        .O(\IVR_GEN.ivr[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \IVR_GEN.ivr[2]_i_4 
       (.I0(p_1_in131_in),
        .I1(p_0_in130_in),
        .I2(p_1_in128_in),
        .I3(p_0_in127_in),
        .O(\IVR_GEN.ivr[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0777)) 
    \IVR_GEN.ivr[2]_i_5 
       (.I0(p_1_in122_in),
        .I1(p_0_in121_in),
        .I2(p_1_in125_in),
        .I3(p_0_in124_in),
        .O(\IVR_GEN.ivr[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \IVR_GEN.ivr[2]_i_6 
       (.I0(p_1_in134_in),
        .I1(p_0_in133_in),
        .I2(p_1_in137_in),
        .I3(p_0_in136_in),
        .O(\IVR_GEN.ivr[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \IVR_GEN.ivr[3]_i_1 
       (.I0(s_axi_aresetn),
        .I1(ivr_in[3]),
        .O(\IVR_GEN.ivr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h002A2A2A00000000)) 
    \IVR_GEN.ivr[4]_i_1 
       (.I0(ivr_in[3]),
        .I1(p_1_in131_in),
        .I2(p_0_in130_in),
        .I3(p_1_in128_in),
        .I4(p_0_in127_in),
        .I5(\IVR_GEN.ivr[4]_i_3_n_0 ),
        .O(ivr_in[4]));
  LUT6 #(
    .INIT(64'h0000000007770000)) 
    \IVR_GEN.ivr[4]_i_2 
       (.I0(p_1_in146_in),
        .I1(p_0_in145_in),
        .I2(p_1_in149_in),
        .I3(p_0_in148_in),
        .I4(\IVR_GEN.ivr[1]_i_5_n_0 ),
        .I5(\IVR_GEN.ivr[2]_i_2_n_0 ),
        .O(ivr_in[3]));
  LUT6 #(
    .INIT(64'h0000001500150015)) 
    \IVR_GEN.ivr[4]_i_3 
       (.I0(irq_gen_i_10_n_0),
        .I1(p_1_in113_in),
        .I2(p_0_in112_in),
        .I3(\IPR_GEN.ipr[13]_i_1_n_0 ),
        .I4(p_0_in109_in),
        .I5(p_1_in110_in),
        .O(\IVR_GEN.ivr[4]_i_3_n_0 ));
  FDRE \IVR_GEN.ivr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[0]_i_1_n_0 ),
        .Q(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [0]),
        .R(1'b0));
  FDRE \IVR_GEN.ivr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[1]_i_1_n_0 ),
        .Q(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [1]),
        .R(1'b0));
  FDRE \IVR_GEN.ivr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[2]_i_1_n_0 ),
        .Q(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [2]),
        .R(1'b0));
  FDRE \IVR_GEN.ivr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\IVR_GEN.ivr[3]_i_1_n_0 ),
        .Q(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [3]),
        .R(1'b0));
  FDSE \IVR_GEN.ivr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ivr_in[4]),
        .Q(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [4]),
        .S(SR));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1 
       (.I0(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0 ),
        .I1(\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[0]),
        .I4(s_axi_aresetn),
        .I5(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .O(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2 
       (.I0(ivar_index_axi_clk[4]),
        .I1(ivar_index_axi_clk[0]),
        .I2(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ),
        .I3(ivar_index_axi_clk[3]),
        .I4(first_ack),
        .I5(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0 ),
        .O(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4 
       (.I0(ivar_index_axi_clk[1]),
        .I1(ivar_index_axi_clk[2]),
        .O(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0 ));
  FDRE \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0 ),
        .Q(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[0]),
        .Q(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[0].ier[0]_i_1 
       (.I0(\REG_GEN[0].ier_reg[0]_1 ),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[0]),
        .I3(\REG_GEN[0].ier_reg[0]_0 ),
        .I4(Bus_RNW_reg_reg_16),
        .I5(\REG_GEN[0].ier_reg_n_0_[0] ),
        .O(p_95_out));
  FDRE \REG_GEN[0].ier_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_95_out),
        .Q(\REG_GEN[0].ier_reg_n_0_[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[0].isr[0]_i_1 
       (.I0(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .I1(s_axi_aresetn),
        .O(p_111_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[0].isr[0]_i_2 
       (.I0(\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[0]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(\REG_GEN[0].isr_reg_n_0_[0] ),
        .O(\REG_GEN[0].isr[0]_i_2_n_0 ));
  FDRE \REG_GEN[0].isr_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[0].isr[0]_i_2_n_0 ),
        .Q(\REG_GEN[0].isr_reg_n_0_[0] ),
        .R(p_111_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1 
       (.I0(\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0 ),
        .I1(\REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[10]),
        .I4(s_axi_aresetn),
        .I5(p_10_in),
        .O(\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(p_0_in46_in),
        .I2(ivar_index_axi_clk[0]),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0 ));
  FDRE \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0 ),
        .Q(p_10_in),
        .R(1'b0));
  FDRE \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[10]),
        .Q(p_0_in46_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[10].ier[10]_i_1 
       (.I0(p_0_in122_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[10]),
        .I3(p_0_in276_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in124_in),
        .O(p_55_out));
  FDRE \REG_GEN[10].ier_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_55_out),
        .Q(p_0_in124_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[10].isr[10]_i_1 
       (.I0(p_1_in125_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[10]),
        .I4(s_axi_aresetn),
        .I5(p_10_in),
        .O(\REG_GEN[10].isr[10]_i_1_n_0 ));
  FDRE \REG_GEN[10].isr_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[10].isr[10]_i_1_n_0 ),
        .Q(p_1_in125_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1 
       (.I0(\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0 ),
        .I1(\REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[11]),
        .I4(s_axi_aresetn),
        .I5(p_11_in),
        .O(\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[0]),
        .I2(p_0_in43_in),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0 ));
  FDRE \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0 ),
        .Q(p_11_in),
        .R(1'b0));
  FDRE \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[11]),
        .Q(p_0_in43_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[11].ier[11]_i_1 
       (.I0(p_0_in120_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[11]),
        .I3(p_0_in265_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in121_in),
        .O(p_51_out));
  FDRE \REG_GEN[11].ier_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_51_out),
        .Q(p_0_in121_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[11].isr[11]_i_1 
       (.I0(p_1_in122_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[11]),
        .I4(s_axi_aresetn),
        .I5(p_11_in),
        .O(\REG_GEN[11].isr[11]_i_1_n_0 ));
  FDRE \REG_GEN[11].isr_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[11].isr[11]_i_1_n_0 ),
        .Q(p_1_in122_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1 
       (.I0(\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0 ),
        .I1(\REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[12]),
        .I4(s_axi_aresetn),
        .I5(p_12_in),
        .O(\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[0]),
        .I2(p_0_in40_in),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0 ));
  FDRE \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1_n_0 ),
        .Q(p_12_in),
        .R(1'b0));
  FDRE \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[12]),
        .Q(p_0_in40_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[12].ier[12]_i_1 
       (.I0(\REG_GEN[12].ier_reg[12]_0 ),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[12]),
        .I3(p_0_in254_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in118_in),
        .O(p_47_out));
  FDRE \REG_GEN[12].ier_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_47_out),
        .Q(p_0_in118_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[12].isr[12]_i_1 
       (.I0(p_1_in119_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[12]),
        .I4(s_axi_aresetn),
        .I5(p_12_in),
        .O(\REG_GEN[12].isr[12]_i_1_n_0 ));
  FDRE \REG_GEN[12].isr_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[12].isr[12]_i_1_n_0 ),
        .Q(p_1_in119_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1 
       (.I0(\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0 ),
        .I1(\REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[13]),
        .I4(s_axi_aresetn),
        .I5(p_13_in),
        .O(\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[0]),
        .I2(p_0_in37_in),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0 ));
  FDRE \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1_n_0 ),
        .Q(p_13_in),
        .R(1'b0));
  FDRE \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[13]),
        .Q(p_0_in37_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[13].ier[13]_i_1 
       (.I0(p_0_in116_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[13]),
        .I3(p_0_in243_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in115_in),
        .O(p_43_out));
  FDRE \REG_GEN[13].ier_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_43_out),
        .Q(p_0_in115_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[13].isr[13]_i_1 
       (.I0(p_1_in116_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[13]),
        .I4(s_axi_aresetn),
        .I5(p_13_in),
        .O(\REG_GEN[13].isr[13]_i_1_n_0 ));
  FDRE \REG_GEN[13].isr_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[13].isr[13]_i_1_n_0 ),
        .Q(p_1_in116_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1 
       (.I0(\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0 ),
        .I1(\REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[14]),
        .I4(s_axi_aresetn),
        .I5(p_14_in),
        .O(\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[0]),
        .I2(p_0_in34_in),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0 ));
  FDRE \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1_n_0 ),
        .Q(p_14_in),
        .R(1'b0));
  FDRE \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[14]),
        .Q(p_0_in34_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[14].ier[14]_i_1 
       (.I0(p_0_in114_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[14]),
        .I3(p_0_in232_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in112_in),
        .O(p_39_out));
  FDRE \REG_GEN[14].ier_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_39_out),
        .Q(p_0_in112_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[14].isr[14]_i_1 
       (.I0(p_1_in113_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[14]),
        .I4(s_axi_aresetn),
        .I5(p_14_in),
        .O(\REG_GEN[14].isr[14]_i_1_n_0 ));
  FDRE \REG_GEN[14].isr_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[14].isr[14]_i_1_n_0 ),
        .Q(p_1_in113_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1 
       (.I0(\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0 ),
        .I1(\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[15]),
        .I4(s_axi_aresetn),
        .I5(p_15_in),
        .O(\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[0]),
        .I2(\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0 ),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0 ));
  FDRE \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1_n_0 ),
        .Q(p_15_in),
        .R(1'b0));
  FDRE \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[15]),
        .Q(\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[15].ier[15]_i_1 
       (.I0(\REG_GEN[15].ier_reg[15]_0 ),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[15]),
        .I3(p_0_in221_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in109_in),
        .O(p_35_out));
  FDRE \REG_GEN[15].ier_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_35_out),
        .Q(p_0_in109_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[15].isr[15]_i_1 
       (.I0(p_1_in110_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[15]),
        .I4(s_axi_aresetn),
        .I5(p_15_in),
        .O(\REG_GEN[15].isr[15]_i_1_n_0 ));
  FDRE \REG_GEN[15].isr_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[15].isr[15]_i_1_n_0 ),
        .Q(p_1_in110_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1 
       (.I0(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0 ),
        .I1(\REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[1]),
        .I4(s_axi_aresetn),
        .I5(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .O(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2 
       (.I0(ivar_index_axi_clk[4]),
        .I1(ivar_index_axi_clk[3]),
        .I2(first_ack),
        .I3(ivar_index_axi_clk[0]),
        .I4(p_0_in73_in),
        .I5(\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0 ),
        .O(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0 ));
  FDRE \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0 ),
        .Q(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[1]),
        .Q(p_0_in73_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[1].ier[1]_i_1 
       (.I0(p_0_in140_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[1]),
        .I3(p_0_in375_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in151_in),
        .O(p_91_out));
  FDRE \REG_GEN[1].ier_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_91_out),
        .Q(p_0_in151_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[1].isr[1]_i_1 
       (.I0(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .I1(s_axi_aresetn),
        .O(p_110_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[1].isr[1]_i_2 
       (.I0(\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[1]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(p_1_in152_in),
        .O(\REG_GEN[1].isr[1]_i_2_n_0 ));
  FDRE \REG_GEN[1].isr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[1].isr[1]_i_2_n_0 ),
        .Q(p_1_in152_in),
        .R(p_110_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1 
       (.I0(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0 ),
        .I1(\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[2]),
        .I4(s_axi_aresetn),
        .I5(p_2_in),
        .O(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2 
       (.I0(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[1]),
        .I2(ivar_index_axi_clk[2]),
        .I3(first_ack),
        .I4(ivar_index_axi_clk[0]),
        .I5(p_0_in70_in),
        .O(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4 
       (.I0(ivar_index_axi_clk[4]),
        .I1(ivar_index_axi_clk[3]),
        .O(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0 ));
  FDRE \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0 ),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[2]),
        .Q(p_0_in70_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[2].ier[2]_i_1 
       (.I0(p_0_in138_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[2]),
        .I3(p_0_in364_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in148_in),
        .O(p_87_out));
  FDRE \REG_GEN[2].ier_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_87_out),
        .Q(p_0_in148_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[2].isr[2]_i_1 
       (.I0(p_2_in),
        .I1(s_axi_aresetn),
        .O(p_109_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[2].isr[2]_i_2 
       (.I0(\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[2]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(p_1_in149_in),
        .O(\REG_GEN[2].isr[2]_i_2_n_0 ));
  FDRE \REG_GEN[2].isr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[2].isr[2]_i_2_n_0 ),
        .Q(p_1_in149_in),
        .R(p_109_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1 
       (.I0(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0 ),
        .I1(\REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[3]),
        .I4(s_axi_aresetn),
        .I5(p_3_in),
        .O(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2 
       (.I0(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[1]),
        .I2(ivar_index_axi_clk[2]),
        .I3(first_ack),
        .I4(ivar_index_axi_clk[0]),
        .I5(p_0_in67_in),
        .O(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0 ));
  FDRE \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0 ),
        .Q(p_3_in),
        .R(1'b0));
  FDRE \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[3]),
        .Q(p_0_in67_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[3].ier[3]_i_1 
       (.I0(\REG_GEN[3].ier_reg[3]_0 ),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[3]),
        .I3(p_0_in353_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in145_in),
        .O(p_83_out));
  FDRE \REG_GEN[3].ier_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_83_out),
        .Q(p_0_in145_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[3].isr[3]_i_1 
       (.I0(p_3_in),
        .I1(s_axi_aresetn),
        .O(p_108_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[3].isr[3]_i_2 
       (.I0(\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[3]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(p_1_in146_in),
        .O(\REG_GEN[3].isr[3]_i_2_n_0 ));
  FDRE \REG_GEN[3].isr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[3].isr[3]_i_2_n_0 ),
        .Q(p_1_in146_in),
        .R(p_108_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1 
       (.I0(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0 ),
        .I1(\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[4]),
        .I4(s_axi_aresetn),
        .I5(p_4_in),
        .O(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2 
       (.I0(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[2]),
        .I2(ivar_index_axi_clk[0]),
        .I3(first_ack),
        .I4(ivar_index_axi_clk[1]),
        .I5(p_0_in64_in),
        .O(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0 ));
  FDRE \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0 ),
        .Q(p_4_in),
        .R(1'b0));
  FDRE \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[4]),
        .Q(p_0_in64_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[4].ier[4]_i_1 
       (.I0(p_0_in134_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[4]),
        .I3(p_0_in342_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in142_in),
        .O(p_79_out));
  FDRE \REG_GEN[4].ier_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_79_out),
        .Q(p_0_in142_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[4].isr[4]_i_1 
       (.I0(p_4_in),
        .I1(s_axi_aresetn),
        .O(p_107_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[4].isr[4]_i_2 
       (.I0(\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[4]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(p_1_in143_in),
        .O(\REG_GEN[4].isr[4]_i_2_n_0 ));
  FDRE \REG_GEN[4].isr_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[4].isr[4]_i_2_n_0 ),
        .Q(p_1_in143_in),
        .R(p_107_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1 
       (.I0(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0 ),
        .I1(\REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[5]),
        .I4(s_axi_aresetn),
        .I5(p_5_in),
        .O(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2 
       (.I0(ivar_index_axi_clk[4]),
        .I1(ivar_index_axi_clk[3]),
        .I2(first_ack),
        .I3(ivar_index_axi_clk[0]),
        .I4(p_0_in61_in),
        .I5(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4_n_0 ),
        .O(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4 
       (.I0(ivar_index_axi_clk[1]),
        .I1(ivar_index_axi_clk[2]),
        .O(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4_n_0 ));
  FDRE \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0 ),
        .Q(p_5_in),
        .R(1'b0));
  FDRE \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[5]),
        .Q(p_0_in61_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[5].ier[5]_i_1 
       (.I0(p_0_in132_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[5]),
        .I3(p_0_in331_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in139_in),
        .O(p_75_out));
  FDRE \REG_GEN[5].ier_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_75_out),
        .Q(p_0_in139_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[5].isr[5]_i_1 
       (.I0(p_5_in),
        .I1(s_axi_aresetn),
        .O(p_106_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[5].isr[5]_i_2 
       (.I0(\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[5]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(p_1_in140_in),
        .O(\REG_GEN[5].isr[5]_i_2_n_0 ));
  FDRE \REG_GEN[5].isr_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[5].isr[5]_i_2_n_0 ),
        .Q(p_1_in140_in),
        .R(p_106_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1 
       (.I0(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0 ),
        .I1(\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[6]),
        .I4(s_axi_aresetn),
        .I5(p_6_in),
        .O(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2 
       (.I0(\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[2]),
        .I2(ivar_index_axi_clk[0]),
        .I3(p_0_in58_in),
        .I4(first_ack),
        .I5(ivar_index_axi_clk[1]),
        .O(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0 ));
  FDRE \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0 ),
        .Q(p_6_in),
        .R(1'b0));
  FDRE \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[6]),
        .Q(p_0_in58_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[6].ier[6]_i_1 
       (.I0(\REG_GEN[6].ier_reg[6]_0 ),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[6]),
        .I3(p_0_in320_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in136_in),
        .O(p_71_out));
  FDRE \REG_GEN[6].ier_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_71_out),
        .Q(p_0_in136_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[6].isr[6]_i_1 
       (.I0(p_6_in),
        .I1(s_axi_aresetn),
        .O(p_105_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[6].isr[6]_i_2 
       (.I0(\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[6]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(p_1_in137_in),
        .O(\REG_GEN[6].isr[6]_i_2_n_0 ));
  FDRE \REG_GEN[6].isr_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[6].isr[6]_i_2_n_0 ),
        .Q(p_1_in137_in),
        .R(p_105_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1 
       (.I0(\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0 ),
        .I1(\REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[7]),
        .I4(s_axi_aresetn),
        .I5(p_7_in),
        .O(\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2 
       (.I0(ivar_index_axi_clk[4]),
        .I1(ivar_index_axi_clk[3]),
        .I2(first_ack),
        .I3(ivar_index_axi_clk[0]),
        .I4(p_0_in55_in),
        .I5(\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0 ),
        .O(\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4 
       (.I0(ivar_index_axi_clk[1]),
        .I1(ivar_index_axi_clk[2]),
        .O(\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0 ));
  FDRE \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0 ),
        .Q(p_7_in),
        .R(1'b0));
  FDRE \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[7]),
        .Q(p_0_in55_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[7].ier[7]_i_1 
       (.I0(p_0_in128_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[7]),
        .I3(p_0_in309_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in133_in),
        .O(p_67_out));
  FDRE \REG_GEN[7].ier_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_67_out),
        .Q(p_0_in133_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \REG_GEN[7].isr[7]_i_1 
       (.I0(p_7_in),
        .I1(s_axi_aresetn),
        .O(p_104_out));
  LUT6 #(
    .INIT(64'hAFACAFAFA0ACA0A0)) 
    \REG_GEN[7].isr[7]_i_2 
       (.I0(\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg ),
        .I1(s_axi_wdata[7]),
        .I2(p_0_in),
        .I3(Bus_RNW_reg),
        .I4(p_17_in),
        .I5(p_1_in134_in),
        .O(\REG_GEN[7].isr[7]_i_2_n_0 ));
  FDRE \REG_GEN[7].isr_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[7].isr[7]_i_2_n_0 ),
        .Q(p_1_in134_in),
        .R(p_104_out));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0 ),
        .I1(\REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[8]),
        .I4(s_axi_aresetn),
        .I5(p_8_in),
        .O(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[0]),
        .I2(p_0_in52_in),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4 
       (.I0(ivar_index_axi_clk[4]),
        .I1(ivar_index_axi_clk[3]),
        .I2(first_ack),
        .O(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ));
  FDRE \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0 ),
        .Q(p_8_in),
        .R(1'b0));
  FDRE \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[8]),
        .Q(p_0_in52_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[8].ier[8]_i_1 
       (.I0(p_0_in126_in),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[8]),
        .I3(p_0_in298_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in130_in),
        .O(p_63_out));
  FDRE \REG_GEN[8].ier_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_63_out),
        .Q(p_0_in130_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[8].isr[8]_i_1 
       (.I0(p_1_in131_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[8]),
        .I4(s_axi_aresetn),
        .I5(p_8_in),
        .O(\REG_GEN[8].isr[8]_i_1_n_0 ));
  FDRE \REG_GEN[8].isr_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[8].isr[8]_i_1_n_0 ),
        .Q(p_1_in131_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EC200000)) 
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1 
       (.I0(\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0 ),
        .I1(\REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0 ),
        .I2(first_ack),
        .I3(s_axi_wdata[9]),
        .I4(s_axi_aresetn),
        .I5(p_9_in),
        .O(\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2 
       (.I0(\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0 ),
        .I1(ivar_index_axi_clk[0]),
        .I2(p_0_in49_in),
        .I3(ivar_index_axi_clk[1]),
        .I4(ivar_index_axi_clk[2]),
        .O(\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0 ));
  FDRE \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0 ),
        .Q(p_9_in),
        .R(1'b0));
  FDRE \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9] 
       (.C(s_axi_aclk),
        .CE(bus2ip_wrce[2]),
        .D(s_axi_wdata[9]),
        .Q(p_0_in49_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444044004440)) 
    \REG_GEN[9].ier[9]_i_1 
       (.I0(\REG_GEN[9].ier_reg[9]_0 ),
        .I1(s_axi_aresetn),
        .I2(s_axi_wdata[9]),
        .I3(p_0_in287_in),
        .I4(Bus_RNW_reg_reg_16),
        .I5(p_0_in127_in),
        .O(p_59_out));
  FDRE \REG_GEN[9].ier_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_59_out),
        .Q(p_0_in127_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000BA8A0000)) 
    \REG_GEN[9].isr[9]_i_1 
       (.I0(p_1_in128_in),
        .I1(Bus_RNW_reg),
        .I2(p_17_in),
        .I3(s_axi_wdata[9]),
        .I4(s_axi_aresetn),
        .I5(p_9_in),
        .O(\REG_GEN[9].isr[9]_i_1_n_0 ));
  FDRE \REG_GEN[9].isr_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\REG_GEN[9].isr[9]_i_1_n_0 ),
        .Q(p_1_in128_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg),
        .Q(\REG_GEN[0].ier_reg[0]_0 ),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_9),
        .Q(p_0_in276_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_10),
        .Q(p_0_in265_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_11),
        .Q(p_0_in254_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_12),
        .Q(p_0_in243_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_13),
        .Q(p_0_in232_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_14),
        .Q(p_0_in221_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_0),
        .Q(p_0_in375_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_1),
        .Q(p_0_in364_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_2),
        .Q(p_0_in353_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_3),
        .Q(p_0_in342_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_4),
        .Q(p_0_in331_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_5),
        .Q(p_0_in320_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_6),
        .Q(p_0_in309_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_7),
        .Q(p_0_in298_in),
        .R(1'b0));
  FDRE \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_8),
        .Q(p_0_in287_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ack_or_i_1
       (.I0(ack_or_i_2_n_0),
        .I1(p_11_in),
        .I2(p_10_in),
        .I3(p_15_in),
        .I4(p_8_in),
        .I5(ack_or_i_3_n_0),
        .O(ack_or_i));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ack_or_i_2
       (.I0(p_6_in),
        .I1(\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1] ),
        .I2(p_7_in),
        .I3(p_2_in),
        .O(ack_or_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    ack_or_i_3
       (.I0(p_4_in),
        .I1(p_14_in),
        .I2(p_13_in),
        .I3(\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0] ),
        .I4(ack_or_i_4_n_0),
        .O(ack_or_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ack_or_i_4
       (.I0(p_12_in),
        .I1(p_9_in),
        .I2(p_5_in),
        .I3(p_3_in),
        .O(ack_or_i_4_n_0));
  FDRE ack_or_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ack_or_i),
        .Q(ack_or),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAFEAAFEAAFE0000)) 
    irq_gen_i_1
       (.I0(irq_gen_i_2_n_0),
        .I1(irq_gen_i_3_n_0),
        .I2(irq_gen_i_4_n_0),
        .I3(irq_gen_i_5_n_0),
        .I4(irq_gen_i_6_n_0),
        .I5(ilr),
        .O(irq_gen_int167_out));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    irq_gen_i_10
       (.I0(p_1_in122_in),
        .I1(p_0_in121_in),
        .I2(p_1_in125_in),
        .I3(p_0_in124_in),
        .I4(p_1_in119_in),
        .I5(p_0_in118_in),
        .O(irq_gen_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000FF0D0D0D)) 
    irq_gen_i_11
       (.I0(irq_gen_int278_in),
        .I1(\IPR_GEN.ipr[14]_i_1_n_0 ),
        .I2(irq_gen_int480_in),
        .I3(p_0_in115_in),
        .I4(p_1_in116_in),
        .I5(irq_gen_int682_in),
        .O(irq_gen_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF70)) 
    irq_gen_i_12
       (.I0(p_0_in124_in),
        .I1(p_1_in125_in),
        .I2(irq_gen_int1086_in),
        .I3(irq_gen_int1490_in),
        .I4(irq_gen_int1288_in),
        .I5(irq_gen_int1692_in),
        .O(irq_gen_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFD5D5D5)) 
    irq_gen_i_13
       (.I0(irq_gen_int884_in),
        .I1(p_0_in124_in),
        .I2(p_1_in125_in),
        .I3(p_0_in121_in),
        .I4(p_1_in122_in),
        .O(irq_gen_i_13_n_0));
  LUT6 #(
    .INIT(64'h8F8888888F8F8F8F)) 
    irq_gen_i_17
       (.I0(p_1_in140_in),
        .I1(p_0_in139_in),
        .I2(irq_gen_int2096_in),
        .I3(p_1_in137_in),
        .I4(p_0_in136_in),
        .I5(irq_gen_int1894_in),
        .O(irq_gen_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD555D5D5)) 
    irq_gen_i_2
       (.I0(\IVR_GEN.ivr[0]_i_2_n_0 ),
        .I1(p_1_in152_in),
        .I2(p_0_in151_in),
        .I3(ilr),
        .I4(irq_gen_int30106_in),
        .I5(irq_gen_i_8_n_0),
        .O(irq_gen_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_20
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_20_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    irq_gen_i_21
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h7)) 
    irq_gen_i_22
       (.I0(p_0_in130_in),
        .I1(p_1_in131_in),
        .O(irq_gen_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    irq_gen_i_3
       (.I0(irq_gen_i_9_n_0),
        .I1(p_1_in134_in),
        .I2(p_0_in133_in),
        .I3(p_1_in137_in),
        .I4(p_0_in136_in),
        .I5(\IPR_GEN.ipr[5]_i_1_n_0 ),
        .O(irq_gen_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_31
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_31_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    irq_gen_i_32
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_32_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_33
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_33_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    irq_gen_i_34
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_34_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_35
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_35_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    irq_gen_i_36
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(irq_gen_i_36_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_39
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_39_n_0));
  LUT6 #(
    .INIT(64'h0F000F0E0F000F00)) 
    irq_gen_i_4
       (.I0(irq_gen_i_10_n_0),
        .I1(irq_gen_i_11_n_0),
        .I2(\IVR_GEN.ivr[4]_i_3_n_0 ),
        .I3(ilr),
        .I4(irq_gen_i_12_n_0),
        .I5(irq_gen_i_13_n_0),
        .O(irq_gen_i_4_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    irq_gen_i_40
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(irq_gen_i_40_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_41
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_41_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    irq_gen_i_42
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_42_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_43
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_43_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    irq_gen_i_44
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_44_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_45
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_45_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    irq_gen_i_46
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_46_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_47
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_47_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    irq_gen_i_48
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_48_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_49
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_49_n_0));
  LUT5 #(
    .INIT(32'h55545555)) 
    irq_gen_i_5
       (.I0(ilr),
        .I1(irq_gen_int2298_in),
        .I2(irq_gen_int24100_in),
        .I3(irq_gen_int26102_in),
        .I4(irq_gen_i_17_n_0),
        .O(irq_gen_i_5_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    irq_gen_i_50
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_50_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_51
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_51_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    irq_gen_i_52
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_52_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_53
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_53_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    irq_gen_i_54
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(irq_gen_i_54_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_55
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_55_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    irq_gen_i_56
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(irq_gen_i_56_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    irq_gen_i_57
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(irq_gen_i_57_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    irq_gen_i_58
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_58_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_59
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_59_n_0));
  LUT6 #(
    .INIT(64'h00000000008FFFFF)) 
    irq_gen_i_6
       (.I0(p_1_in152_in),
        .I1(p_0_in151_in),
        .I2(irq_gen_int28104_in),
        .I3(irq_gen_int30106_in),
        .I4(\IVR_GEN.ivr[0]_i_2_n_0 ),
        .I5(irq_gen_int30107_in),
        .O(irq_gen_i_6_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    irq_gen_i_60
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_60_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    irq_gen_i_61
       (.I0(Q[4]),
        .I1(Q[3]),
        .O(irq_gen_i_61_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    irq_gen_i_62
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(irq_gen_i_62_n_0));
  LUT6 #(
    .INIT(64'hFFAAEEAAFFFFEEAE)) 
    irq_gen_i_8
       (.I0(\IPR_GEN.ipr[2]_i_1_n_0 ),
        .I1(\IPR_GEN.ipr[4]_i_1_n_0 ),
        .I2(irq_gen_int24100_in),
        .I3(ilr),
        .I4(\IPR_GEN.ipr[3]_i_1_n_0 ),
        .I5(irq_gen_int26102_in),
        .O(irq_gen_i_8_n_0));
  LUT6 #(
    .INIT(64'h8F8F8F8F00000F8F)) 
    irq_gen_i_9
       (.I0(p_0_in127_in),
        .I1(p_1_in128_in),
        .I2(irq_gen_i_22_n_0),
        .I3(irq_gen_int1490_in),
        .I4(irq_gen_int1692_in),
        .I5(ilr),
        .O(irq_gen_i_9_n_0));
  FDRE irq_gen_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(irq_gen_int167_out),
        .Q(irq_gen),
        .R(SR));
  CARRY4 irq_gen_reg_i_14
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_14_CO_UNCONNECTED[3:2],irq_gen_int2298_in,irq_gen_reg_i_14_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_14_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_31_n_0,irq_gen_i_32_n_0}));
  CARRY4 irq_gen_reg_i_15
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_15_CO_UNCONNECTED[3:2],irq_gen_int24100_in,irq_gen_reg_i_15_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_15_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_33_n_0,irq_gen_i_34_n_0}));
  CARRY4 irq_gen_reg_i_16
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_16_CO_UNCONNECTED[3:2],irq_gen_int26102_in,irq_gen_reg_i_16_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_16_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_35_n_0,irq_gen_i_36_n_0}));
  CARRY4 irq_gen_reg_i_18
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_18_CO_UNCONNECTED[3:2],irq_gen_int28104_in,irq_gen_reg_i_18_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_18_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_39_n_0,irq_gen_i_40_n_0}));
  CARRY4 irq_gen_reg_i_19
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_19_CO_UNCONNECTED[3:2],irq_gen_int30107_in,irq_gen_reg_i_19_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_19_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_41_n_0,irq_gen_i_42_n_0}));
  CARRY4 irq_gen_reg_i_23
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_23_CO_UNCONNECTED[3:2],irq_gen_int1490_in,irq_gen_reg_i_23_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_23_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_43_n_0,irq_gen_i_44_n_0}));
  CARRY4 irq_gen_reg_i_24
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_24_CO_UNCONNECTED[3:2],irq_gen_int1692_in,irq_gen_reg_i_24_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_24_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_45_n_0,irq_gen_i_46_n_0}));
  CARRY4 irq_gen_reg_i_25
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_25_CO_UNCONNECTED[3:2],irq_gen_int278_in,irq_gen_reg_i_25_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_25_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_47_n_0,irq_gen_i_48_n_0}));
  CARRY4 irq_gen_reg_i_26
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_26_CO_UNCONNECTED[3:2],irq_gen_int480_in,irq_gen_reg_i_26_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_26_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_49_n_0,irq_gen_i_50_n_0}));
  CARRY4 irq_gen_reg_i_27
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_27_CO_UNCONNECTED[3:2],irq_gen_int682_in,irq_gen_reg_i_27_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_27_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_51_n_0,irq_gen_i_52_n_0}));
  CARRY4 irq_gen_reg_i_28
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_28_CO_UNCONNECTED[3:2],irq_gen_int1086_in,irq_gen_reg_i_28_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_28_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_53_n_0,irq_gen_i_54_n_0}));
  CARRY4 irq_gen_reg_i_29
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_29_CO_UNCONNECTED[3:2],irq_gen_int1288_in,irq_gen_reg_i_29_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_29_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_55_n_0,irq_gen_i_56_n_0}));
  CARRY4 irq_gen_reg_i_30
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_30_CO_UNCONNECTED[3:2],irq_gen_int884_in,irq_gen_reg_i_30_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_30_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_57_n_0,irq_gen_i_58_n_0}));
  CARRY4 irq_gen_reg_i_37
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_37_CO_UNCONNECTED[3:2],irq_gen_int2096_in,irq_gen_reg_i_37_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_37_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_59_n_0,irq_gen_i_60_n_0}));
  CARRY4 irq_gen_reg_i_38
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_38_CO_UNCONNECTED[3:2],irq_gen_int1894_in,irq_gen_reg_i_38_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_38_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_61_n_0,irq_gen_i_62_n_0}));
  CARRY4 irq_gen_reg_i_7
       (.CI(1'b0),
        .CO({NLW_irq_gen_reg_i_7_CO_UNCONNECTED[3:2],irq_gen_int30106_in,irq_gen_reg_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_gen_reg_i_7_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_gen_i_20_n_0,irq_gen_i_21_n_0}));
  FDRE \mer_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7] ),
        .Q(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0 ),
        .R(SR));
  FDRE \mer_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Bus_RNW_reg_reg_15),
        .Q(p_0_in),
        .R(SR));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \s_axi_rdata_i[0]_i_4 
       (.I0(\REG_GEN[0].isr_reg_n_0_[0] ),
        .I1(\bus2ip_addr_i_reg[5]_1 [0]),
        .I2(ipr[0]),
        .I3(\bus2ip_addr_i_reg[5]_1 [1]),
        .I4(\REG_GEN[0].ier_reg_n_0_[0] ),
        .I5(\bus2ip_addr_i_reg[4] ),
        .O(\s_axi_rdata_i_reg[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[10]_i_3 
       (.I0(p_0_in124_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[10]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in125_in),
        .O(\s_axi_rdata_i_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[11]_i_3 
       (.I0(p_0_in121_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[11]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in122_in),
        .O(\s_axi_rdata_i_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[12]_i_3 
       (.I0(p_0_in118_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[12]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in119_in),
        .O(\s_axi_rdata_i_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[13]_i_3 
       (.I0(p_0_in115_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[13]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in116_in),
        .O(\s_axi_rdata_i_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[14]_i_3 
       (.I0(p_0_in112_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[14]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in113_in),
        .O(\s_axi_rdata_i_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[15]_i_4 
       (.I0(p_0_in109_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[15]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in110_in),
        .O(\s_axi_rdata_i_reg[15]_0 ));
  LUT6 #(
    .INIT(64'h33E200E200000000)) 
    \s_axi_rdata_i[1]_i_4 
       (.I0(p_1_in152_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [0]),
        .I2(ipr[1]),
        .I3(\bus2ip_addr_i_reg[5]_1 [1]),
        .I4(p_0_in151_in),
        .I5(\bus2ip_addr_i_reg[4] ),
        .O(\s_axi_rdata_i_reg[1] ));
  LUT4 #(
    .INIT(16'hAE00)) 
    \s_axi_rdata_i[31]_i_3 
       (.I0(\s_axi_rdata_i[31]_i_5_n_0 ),
        .I1(ilr),
        .I2(\bus2ip_addr_i_reg[5] ),
        .I3(\bus2ip_addr_i_reg[7] ),
        .O(\s_axi_rdata_i_reg[31] ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \s_axi_rdata_i[31]_i_5 
       (.I0(\bus2ip_addr_i_reg[5]_0 ),
        .I1(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [3]),
        .I2(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [0]),
        .I3(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [4]),
        .I4(\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0 [1]),
        .O(\s_axi_rdata_i[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[5]_i_3 
       (.I0(p_0_in139_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[5]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in140_in),
        .O(\s_axi_rdata_i_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[6]_i_3 
       (.I0(p_0_in136_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[6]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in137_in),
        .O(\s_axi_rdata_i_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[7]_i_3 
       (.I0(p_0_in133_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[7]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in134_in),
        .O(\s_axi_rdata_i_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[8]_i_3 
       (.I0(p_0_in130_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[8]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in131_in),
        .O(\s_axi_rdata_i_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \s_axi_rdata_i[9]_i_3 
       (.I0(p_0_in127_in),
        .I1(\bus2ip_addr_i_reg[5]_1 [1]),
        .I2(ipr[9]),
        .I3(\bus2ip_addr_i_reg[5]_1 [0]),
        .I4(p_1_in128_in),
        .O(\s_axi_rdata_i_reg[9] ));
endmodule

(* ORIG_REF_NAME = "shared_ram_ivar" *) 
module top_axi_pcie_intc_0_0_shared_ram_ivar
   (D,
    \s_axi_rdata_i_reg[15] ,
    interrupt_address,
    \ILR_GEN.ilr_reg[5] ,
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ,
    s_axi_aclk,
    s_axi_wdata,
    bus2ip_wrce,
    \bus2ip_addr_i_reg[5] ,
    Q);
  output [15:0]D;
  output [15:0]\s_axi_rdata_i_reg[15] ;
  output [31:0]interrupt_address;
  input \ILR_GEN.ilr_reg[5] ;
  input \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  input s_axi_aclk;
  input [31:0]s_axi_wdata;
  input [0:0]bus2ip_wrce;
  input [3:0]\bus2ip_addr_i_reg[5] ;
  input [3:0]Q;

  wire [15:0]D;
  wire [31:16]Douta;
  wire [31:0]Doutb0;
  wire \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ;
  wire \ILR_GEN.ilr_reg[5] ;
  wire [3:0]Q;
  wire [3:0]\bus2ip_addr_i_reg[5] ;
  wire [0:0]bus2ip_wrce;
  wire [31:0]interrupt_address;
  wire ram_reg_0_15_0_0_n_1;
  wire ram_reg_0_15_10_10_n_1;
  wire ram_reg_0_15_11_11_n_1;
  wire ram_reg_0_15_12_12_n_1;
  wire ram_reg_0_15_13_13_n_1;
  wire ram_reg_0_15_14_14_n_1;
  wire ram_reg_0_15_15_15_n_1;
  wire ram_reg_0_15_16_16_n_1;
  wire ram_reg_0_15_17_17_n_1;
  wire ram_reg_0_15_18_18_n_1;
  wire ram_reg_0_15_19_19_n_1;
  wire ram_reg_0_15_1_1_n_1;
  wire ram_reg_0_15_20_20_n_1;
  wire ram_reg_0_15_21_21_n_1;
  wire ram_reg_0_15_22_22_n_1;
  wire ram_reg_0_15_23_23_n_1;
  wire ram_reg_0_15_24_24_n_1;
  wire ram_reg_0_15_25_25_n_1;
  wire ram_reg_0_15_26_26_n_1;
  wire ram_reg_0_15_27_27_n_1;
  wire ram_reg_0_15_28_28_n_1;
  wire ram_reg_0_15_29_29_n_1;
  wire ram_reg_0_15_2_2_n_1;
  wire ram_reg_0_15_30_30_n_1;
  wire ram_reg_0_15_31_31_n_1;
  wire ram_reg_0_15_3_3_n_1;
  wire ram_reg_0_15_4_4_n_1;
  wire ram_reg_0_15_5_5_n_1;
  wire ram_reg_0_15_6_6_n_1;
  wire ram_reg_0_15_7_7_n_1;
  wire ram_reg_0_15_8_8_n_1;
  wire ram_reg_0_15_9_9_n_1;
  wire s_axi_aclk;
  wire [15:0]\s_axi_rdata_i_reg[15] ;
  wire [31:0]s_axi_wdata;

  FDRE \Douta_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_0_0_n_1),
        .Q(\s_axi_rdata_i_reg[15] [0]),
        .R(1'b0));
  FDRE \Douta_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_10_10_n_1),
        .Q(\s_axi_rdata_i_reg[15] [10]),
        .R(1'b0));
  FDRE \Douta_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_11_11_n_1),
        .Q(\s_axi_rdata_i_reg[15] [11]),
        .R(1'b0));
  FDRE \Douta_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_12_12_n_1),
        .Q(\s_axi_rdata_i_reg[15] [12]),
        .R(1'b0));
  FDRE \Douta_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_13_13_n_1),
        .Q(\s_axi_rdata_i_reg[15] [13]),
        .R(1'b0));
  FDRE \Douta_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_14_14_n_1),
        .Q(\s_axi_rdata_i_reg[15] [14]),
        .R(1'b0));
  FDRE \Douta_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_15_15_n_1),
        .Q(\s_axi_rdata_i_reg[15] [15]),
        .R(1'b0));
  FDRE \Douta_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_16_16_n_1),
        .Q(Douta[16]),
        .R(1'b0));
  FDRE \Douta_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_17_17_n_1),
        .Q(Douta[17]),
        .R(1'b0));
  FDRE \Douta_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_18_18_n_1),
        .Q(Douta[18]),
        .R(1'b0));
  FDRE \Douta_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_19_19_n_1),
        .Q(Douta[19]),
        .R(1'b0));
  FDRE \Douta_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_1_1_n_1),
        .Q(\s_axi_rdata_i_reg[15] [1]),
        .R(1'b0));
  FDRE \Douta_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_20_20_n_1),
        .Q(Douta[20]),
        .R(1'b0));
  FDRE \Douta_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_21_21_n_1),
        .Q(Douta[21]),
        .R(1'b0));
  FDRE \Douta_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_22_22_n_1),
        .Q(Douta[22]),
        .R(1'b0));
  FDRE \Douta_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_23_23_n_1),
        .Q(Douta[23]),
        .R(1'b0));
  FDRE \Douta_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_24_24_n_1),
        .Q(Douta[24]),
        .R(1'b0));
  FDRE \Douta_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_25_25_n_1),
        .Q(Douta[25]),
        .R(1'b0));
  FDRE \Douta_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_26_26_n_1),
        .Q(Douta[26]),
        .R(1'b0));
  FDRE \Douta_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_27_27_n_1),
        .Q(Douta[27]),
        .R(1'b0));
  FDRE \Douta_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_28_28_n_1),
        .Q(Douta[28]),
        .R(1'b0));
  FDRE \Douta_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_29_29_n_1),
        .Q(Douta[29]),
        .R(1'b0));
  FDRE \Douta_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_2_2_n_1),
        .Q(\s_axi_rdata_i_reg[15] [2]),
        .R(1'b0));
  FDRE \Douta_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_30_30_n_1),
        .Q(Douta[30]),
        .R(1'b0));
  FDRE \Douta_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_31_31_n_1),
        .Q(Douta[31]),
        .R(1'b0));
  FDRE \Douta_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_3_3_n_1),
        .Q(\s_axi_rdata_i_reg[15] [3]),
        .R(1'b0));
  FDRE \Douta_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_4_4_n_1),
        .Q(\s_axi_rdata_i_reg[15] [4]),
        .R(1'b0));
  FDRE \Douta_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_5_5_n_1),
        .Q(\s_axi_rdata_i_reg[15] [5]),
        .R(1'b0));
  FDRE \Douta_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_6_6_n_1),
        .Q(\s_axi_rdata_i_reg[15] [6]),
        .R(1'b0));
  FDRE \Douta_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_7_7_n_1),
        .Q(\s_axi_rdata_i_reg[15] [7]),
        .R(1'b0));
  FDRE \Douta_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_8_8_n_1),
        .Q(\s_axi_rdata_i_reg[15] [8]),
        .R(1'b0));
  FDRE \Douta_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ram_reg_0_15_9_9_n_1),
        .Q(\s_axi_rdata_i_reg[15] [9]),
        .R(1'b0));
  FDRE \Doutb_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[0]),
        .Q(interrupt_address[0]),
        .R(1'b0));
  FDRE \Doutb_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[10]),
        .Q(interrupt_address[10]),
        .R(1'b0));
  FDRE \Doutb_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[11]),
        .Q(interrupt_address[11]),
        .R(1'b0));
  FDRE \Doutb_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[12]),
        .Q(interrupt_address[12]),
        .R(1'b0));
  FDRE \Doutb_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[13]),
        .Q(interrupt_address[13]),
        .R(1'b0));
  FDRE \Doutb_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[14]),
        .Q(interrupt_address[14]),
        .R(1'b0));
  FDRE \Doutb_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[15]),
        .Q(interrupt_address[15]),
        .R(1'b0));
  FDRE \Doutb_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[16]),
        .Q(interrupt_address[16]),
        .R(1'b0));
  FDRE \Doutb_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[17]),
        .Q(interrupt_address[17]),
        .R(1'b0));
  FDRE \Doutb_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[18]),
        .Q(interrupt_address[18]),
        .R(1'b0));
  FDRE \Doutb_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[19]),
        .Q(interrupt_address[19]),
        .R(1'b0));
  FDRE \Doutb_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[1]),
        .Q(interrupt_address[1]),
        .R(1'b0));
  FDRE \Doutb_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[20]),
        .Q(interrupt_address[20]),
        .R(1'b0));
  FDRE \Doutb_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[21]),
        .Q(interrupt_address[21]),
        .R(1'b0));
  FDRE \Doutb_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[22]),
        .Q(interrupt_address[22]),
        .R(1'b0));
  FDRE \Doutb_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[23]),
        .Q(interrupt_address[23]),
        .R(1'b0));
  FDRE \Doutb_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[24]),
        .Q(interrupt_address[24]),
        .R(1'b0));
  FDRE \Doutb_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[25]),
        .Q(interrupt_address[25]),
        .R(1'b0));
  FDRE \Doutb_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[26]),
        .Q(interrupt_address[26]),
        .R(1'b0));
  FDRE \Doutb_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[27]),
        .Q(interrupt_address[27]),
        .R(1'b0));
  FDRE \Doutb_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[28]),
        .Q(interrupt_address[28]),
        .R(1'b0));
  FDRE \Doutb_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[29]),
        .Q(interrupt_address[29]),
        .R(1'b0));
  FDRE \Doutb_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[2]),
        .Q(interrupt_address[2]),
        .R(1'b0));
  FDRE \Doutb_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[30]),
        .Q(interrupt_address[30]),
        .R(1'b0));
  FDRE \Doutb_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[31]),
        .Q(interrupt_address[31]),
        .R(1'b0));
  FDRE \Doutb_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[3]),
        .Q(interrupt_address[3]),
        .R(1'b0));
  FDRE \Doutb_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[4]),
        .Q(interrupt_address[4]),
        .R(1'b0));
  FDRE \Doutb_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[5]),
        .Q(interrupt_address[5]),
        .R(1'b0));
  FDRE \Doutb_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[6]),
        .Q(interrupt_address[6]),
        .R(1'b0));
  FDRE \Doutb_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[7]),
        .Q(interrupt_address[7]),
        .R(1'b0));
  FDRE \Doutb_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[8]),
        .Q(interrupt_address[8]),
        .R(1'b0));
  FDRE \Doutb_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Doutb0[9]),
        .Q(interrupt_address[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[0]),
        .DPO(Doutb0[0]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_0_0_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_10_10
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[10]),
        .DPO(Doutb0[10]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_10_10_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_11_11
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[11]),
        .DPO(Doutb0[11]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_11_11_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_12_12
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[12]),
        .DPO(Doutb0[12]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_12_12_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_13_13
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[13]),
        .DPO(Doutb0[13]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_13_13_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_14_14
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[14]),
        .DPO(Doutb0[14]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_14_14_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_15_15
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[15]),
        .DPO(Doutb0[15]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_15_15_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_16_16
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[16]),
        .DPO(Doutb0[16]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_16_16_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_17_17
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[17]),
        .DPO(Doutb0[17]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_17_17_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_18_18
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[18]),
        .DPO(Doutb0[18]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_18_18_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_19_19
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[19]),
        .DPO(Doutb0[19]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_19_19_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_1_1
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[1]),
        .DPO(Doutb0[1]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_1_1_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_20_20
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[20]),
        .DPO(Doutb0[20]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_20_20_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_21_21
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[21]),
        .DPO(Doutb0[21]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_21_21_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_22_22
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[22]),
        .DPO(Doutb0[22]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_22_22_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_23_23
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[23]),
        .DPO(Doutb0[23]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_23_23_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_24_24
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[24]),
        .DPO(Doutb0[24]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_24_24_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_25_25
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[25]),
        .DPO(Doutb0[25]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_25_25_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_26_26
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[26]),
        .DPO(Doutb0[26]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_26_26_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_27_27
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[27]),
        .DPO(Doutb0[27]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_27_27_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_28_28
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[28]),
        .DPO(Doutb0[28]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_28_28_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_29_29
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[29]),
        .DPO(Doutb0[29]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_29_29_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_2_2
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[2]),
        .DPO(Doutb0[2]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_2_2_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_30_30
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[30]),
        .DPO(Doutb0[30]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_30_30_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_31_31
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[31]),
        .DPO(Doutb0[31]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_31_31_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_3_3
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[3]),
        .DPO(Doutb0[3]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_3_3_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_4_4
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[4]),
        .DPO(Doutb0[4]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_4_4_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_5_5
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[5]),
        .DPO(Doutb0[5]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_5_5_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_6_6
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[6]),
        .DPO(Doutb0[6]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_6_6_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_7_7
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[7]),
        .DPO(Doutb0[7]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_7_7_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_8_8
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[8]),
        .DPO(Doutb0[8]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_8_8_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  RAM32X1D #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_9_9
       (.A0(\bus2ip_addr_i_reg[5] [0]),
        .A1(\bus2ip_addr_i_reg[5] [1]),
        .A2(\bus2ip_addr_i_reg[5] [2]),
        .A3(\bus2ip_addr_i_reg[5] [3]),
        .A4(1'b0),
        .D(s_axi_wdata[9]),
        .DPO(Doutb0[9]),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(1'b0),
        .SPO(ram_reg_0_15_9_9_n_1),
        .WCLK(s_axi_aclk),
        .WE(bus2ip_wrce));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[16]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[16]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[17]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[17]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[18]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[18]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[19]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[19]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[20]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[20]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[21]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[21]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[22]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[22]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[23]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[23]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[24]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[24]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[25]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[25]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[26]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[26]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[27]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[27]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[28]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[28]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[29]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[29]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[30]_i_1 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[30]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rdata_i[31]_i_2 
       (.I0(\ILR_GEN.ilr_reg[5] ),
        .I1(\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16] ),
        .I2(Douta[31]),
        .O(D[15]));
endmodule

(* ORIG_REF_NAME = "slave_attachment" *) 
module top_axi_pcie_intc_0_0_slave_attachment
   (p_17_in,
    s_axi_rresp,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ,
    s_axi_rvalid,
    s_axi_bvalid,
    s_axi_bresp,
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ,
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ,
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ,
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ,
    bus2ip_wrce,
    s_axi_arready,
    s_axi_wready,
    \REG_GEN[1].ier_reg[1] ,
    Q,
    \s_axi_rdata_i_reg[5]_0 ,
    \s_axi_rdata_i_reg[5]_1 ,
    \s_axi_rdata_i_reg[2]_0 ,
    \s_axi_rdata_i_reg[2]_1 ,
    \s_axi_rdata_i_reg[4]_0 ,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ,
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ,
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ,
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ,
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ,
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ,
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ,
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ,
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ,
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ,
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ,
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ,
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ,
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ,
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ,
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ,
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ,
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ,
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ,
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ,
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ,
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ,
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ,
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ,
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ,
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ,
    \mer_int_reg[0] ,
    \mer_int_reg[1] ,
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ,
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ,
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ,
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ,
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ,
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ,
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ,
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ,
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ,
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ,
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ,
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ,
    p_0_in2_out,
    ip2bus_wrack_prev2,
    ip2bus_rdack_prev2,
    p_0_in20_out,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    p_0_in64_in,
    p_0_in67_in,
    p_0_in70_in,
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ,
    s_axi_arvalid,
    ip2bus_rdack,
    s_axi_aresetn,
    ip2bus_wrack,
    s_axi_rready,
    s_axi_bready,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_awaddr,
    \Douta_reg[15] ,
    \ILR_GEN.ilr_reg[5] ,
    \ILR_GEN.ilr_reg[4] ,
    \IVR_GEN.ivr_reg[4] ,
    \REG_GEN[1].isr_reg[1] ,
    p_0_in73_in,
    \REG_GEN[0].isr_reg[0] ,
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ,
    \REG_GEN[15].ier_reg[15] ,
    p_0_in34_in,
    \REG_GEN[14].ier_reg[14] ,
    p_0_in37_in,
    \REG_GEN[13].ier_reg[13] ,
    p_0_in40_in,
    \REG_GEN[12].ier_reg[12] ,
    p_0_in43_in,
    \REG_GEN[11].ier_reg[11] ,
    p_0_in46_in,
    \REG_GEN[10].ier_reg[10] ,
    p_0_in49_in,
    \REG_GEN[9].ier_reg[9] ,
    p_0_in52_in,
    \REG_GEN[8].ier_reg[8] ,
    p_0_in55_in,
    \REG_GEN[7].ier_reg[7] ,
    p_0_in58_in,
    \REG_GEN[6].ier_reg[6] ,
    p_0_in61_in,
    \REG_GEN[5].ier_reg[5] ,
    p_1_in149_in,
    \IPR_GEN.ipr_reg[4] ,
    p_0_in148_in,
    p_1_in146_in,
    p_0_in145_in,
    p_1_in143_in,
    p_0_in142_in,
    p_0_in,
    \mer_int_reg[0]_0 ,
    s_axi_wstrb,
    s_axi_wdata,
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ,
    p_0_in375_in,
    p_0_in364_in,
    p_0_in353_in,
    p_0_in342_in,
    p_0_in331_in,
    p_0_in320_in,
    p_0_in309_in,
    p_0_in298_in,
    p_0_in287_in,
    p_0_in276_in,
    p_0_in265_in,
    p_0_in254_in,
    p_0_in243_in,
    p_0_in232_in,
    p_0_in221_in,
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ,
    p_0_in140_in,
    p_0_in138_in,
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ,
    p_0_in134_in,
    p_0_in132_in,
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ,
    p_0_in128_in,
    p_0_in126_in,
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ,
    p_0_in122_in,
    p_0_in120_in,
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ,
    p_0_in116_in,
    p_0_in114_in,
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ,
    ip2bus_wrack_int_d1,
    ip2bus_rdack_int_d1,
    D);
  output p_17_in;
  output [0:0]s_axi_rresp;
  output \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output [0:0]s_axi_bresp;
  output \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  output \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ;
  output \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  output \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  output [2:0]bus2ip_wrce;
  output s_axi_arready;
  output s_axi_wready;
  output \REG_GEN[1].ier_reg[1] ;
  output [3:0]Q;
  output \s_axi_rdata_i_reg[5]_0 ;
  output \s_axi_rdata_i_reg[5]_1 ;
  output \s_axi_rdata_i_reg[2]_0 ;
  output \s_axi_rdata_i_reg[2]_1 ;
  output \s_axi_rdata_i_reg[4]_0 ;
  output \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  output \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ;
  output \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ;
  output \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ;
  output \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ;
  output \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ;
  output \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ;
  output \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ;
  output \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ;
  output \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ;
  output \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ;
  output \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ;
  output \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ;
  output \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ;
  output \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ;
  output \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ;
  output \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  output \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ;
  output \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ;
  output \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ;
  output \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ;
  output \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ;
  output \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ;
  output \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ;
  output \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ;
  output \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ;
  output \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ;
  output \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ;
  output \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ;
  output \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ;
  output \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ;
  output \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ;
  output \mer_int_reg[0] ;
  output \mer_int_reg[1] ;
  output \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ;
  output \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ;
  output \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ;
  output \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ;
  output \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ;
  output \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ;
  output \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ;
  output \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ;
  output \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ;
  output \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  output \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ;
  output \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ;
  output p_0_in2_out;
  output ip2bus_wrack_prev2;
  output ip2bus_rdack_prev2;
  output p_0_in20_out;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input p_0_in64_in;
  input p_0_in67_in;
  input p_0_in70_in;
  input \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ;
  input s_axi_arvalid;
  input ip2bus_rdack;
  input s_axi_aresetn;
  input ip2bus_wrack;
  input s_axi_rready;
  input s_axi_bready;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [6:0]s_axi_araddr;
  input [6:0]s_axi_awaddr;
  input [15:0]\Douta_reg[15] ;
  input \ILR_GEN.ilr_reg[5] ;
  input [4:0]\ILR_GEN.ilr_reg[4] ;
  input [4:0]\IVR_GEN.ivr_reg[4] ;
  input \REG_GEN[1].isr_reg[1] ;
  input p_0_in73_in;
  input \REG_GEN[0].isr_reg[0] ;
  input \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ;
  input \REG_GEN[15].ier_reg[15] ;
  input p_0_in34_in;
  input \REG_GEN[14].ier_reg[14] ;
  input p_0_in37_in;
  input \REG_GEN[13].ier_reg[13] ;
  input p_0_in40_in;
  input \REG_GEN[12].ier_reg[12] ;
  input p_0_in43_in;
  input \REG_GEN[11].ier_reg[11] ;
  input p_0_in46_in;
  input \REG_GEN[10].ier_reg[10] ;
  input p_0_in49_in;
  input \REG_GEN[9].ier_reg[9] ;
  input p_0_in52_in;
  input \REG_GEN[8].ier_reg[8] ;
  input p_0_in55_in;
  input \REG_GEN[7].ier_reg[7] ;
  input p_0_in58_in;
  input \REG_GEN[6].ier_reg[6] ;
  input p_0_in61_in;
  input \REG_GEN[5].ier_reg[5] ;
  input p_1_in149_in;
  input [2:0]\IPR_GEN.ipr_reg[4] ;
  input p_0_in148_in;
  input p_1_in146_in;
  input p_0_in145_in;
  input p_1_in143_in;
  input p_0_in142_in;
  input p_0_in;
  input \mer_int_reg[0]_0 ;
  input [3:0]s_axi_wstrb;
  input [15:0]s_axi_wdata;
  input \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  input p_0_in375_in;
  input p_0_in364_in;
  input p_0_in353_in;
  input p_0_in342_in;
  input p_0_in331_in;
  input p_0_in320_in;
  input p_0_in309_in;
  input p_0_in298_in;
  input p_0_in287_in;
  input p_0_in276_in;
  input p_0_in265_in;
  input p_0_in254_in;
  input p_0_in243_in;
  input p_0_in232_in;
  input p_0_in221_in;
  input \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  input p_0_in140_in;
  input p_0_in138_in;
  input \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  input p_0_in134_in;
  input p_0_in132_in;
  input \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  input p_0_in128_in;
  input p_0_in126_in;
  input \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  input p_0_in122_in;
  input p_0_in120_in;
  input \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  input p_0_in116_in;
  input p_0_in114_in;
  input \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  input ip2bus_wrack_int_d1;
  input ip2bus_rdack_int_d1;
  input [15:0]D;

  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ;
  wire \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ;
  wire \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ;
  wire \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ;
  wire \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ;
  wire \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ;
  wire \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ;
  wire \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ;
  wire \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ;
  wire \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ;
  wire \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ;
  wire \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ;
  wire \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ;
  wire [15:0]D;
  wire [15:0]\Douta_reg[15] ;
  wire [4:0]\ILR_GEN.ilr_reg[4] ;
  wire \ILR_GEN.ilr_reg[5] ;
  wire [3:0]\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ;
  wire [15:0]IP2Bus_Data;
  wire [2:0]\IPR_GEN.ipr_reg[4] ;
  wire [4:0]\IVR_GEN.ivr_reg[4] ;
  wire I_DECODER_n_10;
  wire [3:0]Q;
  wire \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ;
  wire \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ;
  wire \REG_GEN[0].isr_reg[0] ;
  wire \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ;
  wire \REG_GEN[10].ier_reg[10] ;
  wire \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ;
  wire \REG_GEN[11].ier_reg[11] ;
  wire \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ;
  wire \REG_GEN[12].ier_reg[12] ;
  wire \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ;
  wire \REG_GEN[13].ier_reg[13] ;
  wire \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ;
  wire \REG_GEN[14].ier_reg[14] ;
  wire \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ;
  wire \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ;
  wire \REG_GEN[15].ier_reg[15] ;
  wire \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ;
  wire \REG_GEN[1].ier_reg[1] ;
  wire \REG_GEN[1].isr_reg[1] ;
  wire \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ;
  wire \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ;
  wire \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ;
  wire \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ;
  wire \REG_GEN[5].ier_reg[5] ;
  wire \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ;
  wire \REG_GEN[6].ier_reg[6] ;
  wire \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ;
  wire \REG_GEN[7].ier_reg[7] ;
  wire \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ;
  wire \REG_GEN[8].ier_reg[8] ;
  wire \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ;
  wire \REG_GEN[9].ier_reg[9] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ;
  wire \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ;
  wire \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ;
  wire \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ;
  wire \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ;
  wire \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ;
  wire \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ;
  wire \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ;
  wire \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ;
  wire \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ;
  wire \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ;
  wire \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ;
  wire \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ;
  wire \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ;
  wire \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ;
  wire \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ;
  wire \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ;
  wire [0:0]SR;
  wire [8:6]bus2ip_addr;
  wire \bus2ip_addr_i[2]_i_1_n_0 ;
  wire \bus2ip_addr_i[3]_i_1_n_0 ;
  wire \bus2ip_addr_i[4]_i_1_n_0 ;
  wire \bus2ip_addr_i[5]_i_1_n_0 ;
  wire \bus2ip_addr_i[6]_i_1_n_0 ;
  wire \bus2ip_addr_i[7]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_1_n_0 ;
  wire \bus2ip_addr_i[8]_i_2_n_0 ;
  wire bus2ip_rnw_i06_out;
  wire bus2ip_rnw_i_reg_n_0;
  wire [2:0]bus2ip_wrce;
  wire clear;
  wire ip2bus_error;
  wire ip2bus_rdack;
  wire ip2bus_rdack_int_d1;
  wire ip2bus_rdack_prev2;
  wire ip2bus_wrack;
  wire ip2bus_wrack_int_d1;
  wire ip2bus_wrack_prev2;
  wire is_read;
  wire is_read_i_1_n_0;
  wire is_write;
  wire is_write_i_1_n_0;
  wire is_write_reg_n_0;
  wire \mer_int_reg[0] ;
  wire \mer_int_reg[0]_0 ;
  wire \mer_int_reg[1] ;
  wire p_0_in;
  wire p_0_in114_in;
  wire p_0_in116_in;
  wire p_0_in120_in;
  wire p_0_in122_in;
  wire p_0_in126_in;
  wire p_0_in128_in;
  wire p_0_in132_in;
  wire p_0_in134_in;
  wire p_0_in138_in;
  wire p_0_in140_in;
  wire p_0_in142_in;
  wire p_0_in145_in;
  wire p_0_in148_in;
  wire p_0_in20_out;
  wire p_0_in221_in;
  wire p_0_in232_in;
  wire p_0_in243_in;
  wire p_0_in254_in;
  wire p_0_in265_in;
  wire p_0_in276_in;
  wire p_0_in287_in;
  wire p_0_in298_in;
  wire p_0_in2_out;
  wire p_0_in309_in;
  wire p_0_in320_in;
  wire p_0_in331_in;
  wire p_0_in342_in;
  wire p_0_in34_in;
  wire p_0_in353_in;
  wire p_0_in364_in;
  wire p_0_in375_in;
  wire p_0_in37_in;
  wire p_0_in40_in;
  wire p_0_in43_in;
  wire p_0_in46_in;
  wire p_0_in49_in;
  wire p_0_in52_in;
  wire p_0_in55_in;
  wire p_0_in58_in;
  wire p_0_in61_in;
  wire p_0_in64_in;
  wire p_0_in67_in;
  wire p_0_in70_in;
  wire p_0_in73_in;
  wire p_17_in;
  wire p_1_in143_in;
  wire p_1_in146_in;
  wire p_1_in149_in;
  wire [3:0]plusOp;
  wire rst;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp_i[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_i_1_n_0;
  wire [31:0]s_axi_rdata;
  wire s_axi_rdata_i;
  wire \s_axi_rdata_i[0]_i_2_n_0 ;
  wire \s_axi_rdata_i[0]_i_3_n_0 ;
  wire \s_axi_rdata_i[10]_i_2_n_0 ;
  wire \s_axi_rdata_i[11]_i_2_n_0 ;
  wire \s_axi_rdata_i[12]_i_2_n_0 ;
  wire \s_axi_rdata_i[13]_i_2_n_0 ;
  wire \s_axi_rdata_i[14]_i_2_n_0 ;
  wire \s_axi_rdata_i[15]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_2_n_0 ;
  wire \s_axi_rdata_i[1]_i_3_n_0 ;
  wire \s_axi_rdata_i[2]_i_2_n_0 ;
  wire \s_axi_rdata_i[2]_i_3_n_0 ;
  wire \s_axi_rdata_i[3]_i_2_n_0 ;
  wire \s_axi_rdata_i[3]_i_3_n_0 ;
  wire \s_axi_rdata_i[4]_i_2_n_0 ;
  wire \s_axi_rdata_i[4]_i_3_n_0 ;
  wire \s_axi_rdata_i[4]_i_5_n_0 ;
  wire \s_axi_rdata_i[5]_i_2_n_0 ;
  wire \s_axi_rdata_i[6]_i_2_n_0 ;
  wire \s_axi_rdata_i[7]_i_2_n_0 ;
  wire \s_axi_rdata_i[8]_i_2_n_0 ;
  wire \s_axi_rdata_i[9]_i_2_n_0 ;
  wire \s_axi_rdata_i_reg[2]_0 ;
  wire \s_axi_rdata_i_reg[2]_1 ;
  wire \s_axi_rdata_i_reg[4]_0 ;
  wire \s_axi_rdata_i_reg[5]_0 ;
  wire \s_axi_rdata_i_reg[5]_1 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_i_1_n_0;
  wire [15:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start2;
  wire start2_i_1_n_0;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .O(plusOp[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2 
       (.I0(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .O(plusOp[3]));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .R(clear));
  FDRE \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .R(clear));
  top_axi_pcie_intc_0_0_address_decoder I_DECODER
       (.\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0] ),
        .\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 (\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] (\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10] ),
        .\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] (\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11] ),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] (\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12] ),
        .\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 (\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] (\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13] ),
        .\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] (\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14] ),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] (\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15] ),
        .\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 (\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] (\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1] ),
        .\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] (\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2] ),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] (\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3] ),
        .\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 (\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] (\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4] ),
        .\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] (\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5] ),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] (\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6] ),
        .\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 (\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0 ),
        .\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] (\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7] ),
        .\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] (\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8] ),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] (\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9] ),
        .\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 (\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0 ),
        .D(IP2Bus_Data),
        .\Douta_reg[15] (\Douta_reg[15] ),
        .\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0 (I_DECODER_n_10),
        .\ILR_GEN.ilr_reg[3] (\s_axi_rdata_i[3]_i_3_n_0 ),
        .\ILR_GEN.ilr_reg[4] (\s_axi_rdata_i[4]_i_3_n_0 ),
        .\ILR_GEN.ilr_reg[5] (\ILR_GEN.ilr_reg[5] ),
        .\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3] (\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 ),
        .\IVR_GEN.ivr_reg[1] (\s_axi_rdata_i[1]_i_2_n_0 ),
        .Q(start2),
        .\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] (\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0] ),
        .\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] (\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ),
        .\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0 (\s_axi_rdata_i[0]_i_3_n_0 ),
        .\REG_GEN[0].isr_reg[0] (\REG_GEN[0].isr_reg[0] ),
        .\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] (\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10] ),
        .\REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10] (\s_axi_rdata_i[10]_i_2_n_0 ),
        .\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] (\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11] ),
        .\REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11] (\s_axi_rdata_i[11]_i_2_n_0 ),
        .\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] (\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12] ),
        .\REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12] (\s_axi_rdata_i[12]_i_2_n_0 ),
        .\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] (\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13] ),
        .\REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13] (\s_axi_rdata_i[13]_i_2_n_0 ),
        .\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] (\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14] ),
        .\REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14] (\s_axi_rdata_i[14]_i_2_n_0 ),
        .\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] (\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15] ),
        .\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] (\s_axi_rdata_i[15]_i_2_n_0 ),
        .\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0 (\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ),
        .\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] (\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1] ),
        .\REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1] (\s_axi_rdata_i[1]_i_3_n_0 ),
        .\REG_GEN[1].ier_reg[1] (\REG_GEN[1].ier_reg[1] ),
        .\REG_GEN[1].isr_reg[1] (\REG_GEN[1].isr_reg[1] ),
        .\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] (\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2] ),
        .\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2] (\s_axi_rdata_i[2]_i_2_n_0 ),
        .\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] (\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3] ),
        .\REG_GEN[3].isr_reg[3] (\s_axi_rdata_i[3]_i_2_n_0 ),
        .\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] (\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4] ),
        .\REG_GEN[4].isr_reg[4] (\s_axi_rdata_i[4]_i_2_n_0 ),
        .\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] (\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5] ),
        .\REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5] (\s_axi_rdata_i[5]_i_2_n_0 ),
        .\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] (\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6] ),
        .\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6] (\s_axi_rdata_i[6]_i_2_n_0 ),
        .\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] (\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7] ),
        .\REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7] (\s_axi_rdata_i[7]_i_2_n_0 ),
        .\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] (\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8] ),
        .\REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8] (\s_axi_rdata_i[8]_i_2_n_0 ),
        .\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] (\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9] ),
        .\REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9] (\s_axi_rdata_i[9]_i_2_n_0 ),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0] ),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0 ),
        .\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 (\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1 ),
        .\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] (\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10] ),
        .\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] (\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11] ),
        .\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] (\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12] ),
        .\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] (\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13] ),
        .\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] (\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14] ),
        .\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] (\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15] ),
        .\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] (\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1] ),
        .\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] (\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2] ),
        .\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] (\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3] ),
        .\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] (\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4] ),
        .\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] (\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5] ),
        .\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] (\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6] ),
        .\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] (\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7] ),
        .\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] (\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8] ),
        .\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] (\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9] ),
        .\bus2ip_addr_i_reg[8] ({bus2ip_addr,Q}),
        .bus2ip_rnw_i_reg(bus2ip_rnw_i_reg_n_0),
        .bus2ip_wrce(bus2ip_wrce),
        .ip2bus_rdack(ip2bus_rdack),
        .ip2bus_rdack_int_d1(ip2bus_rdack_int_d1),
        .ip2bus_rdack_prev2(ip2bus_rdack_prev2),
        .ip2bus_wrack(ip2bus_wrack),
        .ip2bus_wrack_int_d1(ip2bus_wrack_int_d1),
        .ip2bus_wrack_prev2(ip2bus_wrack_prev2),
        .is_read(is_read),
        .is_write_reg(is_write_reg_n_0),
        .\mer_int_reg[0] (\mer_int_reg[0] ),
        .\mer_int_reg[0]_0 (\s_axi_rdata_i[0]_i_2_n_0 ),
        .\mer_int_reg[0]_1 (\mer_int_reg[0]_0 ),
        .\mer_int_reg[1] (\mer_int_reg[1] ),
        .p_0_in(p_0_in),
        .p_0_in114_in(p_0_in114_in),
        .p_0_in116_in(p_0_in116_in),
        .p_0_in120_in(p_0_in120_in),
        .p_0_in122_in(p_0_in122_in),
        .p_0_in126_in(p_0_in126_in),
        .p_0_in128_in(p_0_in128_in),
        .p_0_in132_in(p_0_in132_in),
        .p_0_in134_in(p_0_in134_in),
        .p_0_in138_in(p_0_in138_in),
        .p_0_in140_in(p_0_in140_in),
        .p_0_in20_out(p_0_in20_out),
        .p_0_in221_in(p_0_in221_in),
        .p_0_in232_in(p_0_in232_in),
        .p_0_in243_in(p_0_in243_in),
        .p_0_in254_in(p_0_in254_in),
        .p_0_in265_in(p_0_in265_in),
        .p_0_in276_in(p_0_in276_in),
        .p_0_in287_in(p_0_in287_in),
        .p_0_in298_in(p_0_in298_in),
        .p_0_in2_out(p_0_in2_out),
        .p_0_in309_in(p_0_in309_in),
        .p_0_in320_in(p_0_in320_in),
        .p_0_in331_in(p_0_in331_in),
        .p_0_in342_in(p_0_in342_in),
        .p_0_in34_in(p_0_in34_in),
        .p_0_in353_in(p_0_in353_in),
        .p_0_in364_in(p_0_in364_in),
        .p_0_in375_in(p_0_in375_in),
        .p_0_in37_in(p_0_in37_in),
        .p_0_in40_in(p_0_in40_in),
        .p_0_in43_in(p_0_in43_in),
        .p_0_in46_in(p_0_in46_in),
        .p_0_in49_in(p_0_in49_in),
        .p_0_in52_in(p_0_in52_in),
        .p_0_in55_in(p_0_in55_in),
        .p_0_in58_in(p_0_in58_in),
        .p_0_in61_in(p_0_in61_in),
        .p_0_in64_in(p_0_in64_in),
        .p_0_in67_in(p_0_in67_in),
        .p_0_in70_in(p_0_in70_in),
        .p_0_in73_in(p_0_in73_in),
        .p_17_in(p_17_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .\s_axi_rdata_i_reg[5] (\s_axi_rdata_i_reg[5]_0 ),
        .\s_axi_rdata_i_reg[5]_0 (\s_axi_rdata_i_reg[5]_1 ),
        .s_axi_wdata(s_axi_wdata));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[0]),
        .O(\bus2ip_addr_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[1]),
        .O(\bus2ip_addr_i[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[4]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[2]),
        .O(\bus2ip_addr_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[5]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[3]),
        .O(\bus2ip_addr_i[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[4]),
        .O(\bus2ip_addr_i[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[5]),
        .O(\bus2ip_addr_i[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \bus2ip_addr_i[8]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(state[1]),
        .I4(state[0]),
        .O(\bus2ip_addr_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \bus2ip_addr_i[8]_i_2 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(state[0]),
        .I3(state[1]),
        .I4(s_axi_awaddr[6]),
        .O(\bus2ip_addr_i[8]_i_2_n_0 ));
  FDRE \bus2ip_addr_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[3]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[4]_i_1_n_0 ),
        .Q(Q[2]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[5]_i_1_n_0 ),
        .Q(Q[3]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[6]_i_1_n_0 ),
        .Q(bus2ip_addr[6]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[7]_i_1_n_0 ),
        .Q(bus2ip_addr[7]),
        .R(rst));
  FDRE \bus2ip_addr_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(\bus2ip_addr_i[8]_i_2_n_0 ),
        .Q(bus2ip_addr[8]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h02)) 
    bus2ip_rnw_i_i_1
       (.I0(s_axi_arvalid),
        .I1(state[0]),
        .I2(state[1]),
        .O(bus2ip_rnw_i06_out));
  FDRE bus2ip_rnw_i_reg
       (.C(s_axi_aclk),
        .CE(\bus2ip_addr_i[8]_i_1_n_0 ),
        .D(bus2ip_rnw_i06_out),
        .Q(bus2ip_rnw_i_reg_n_0),
        .R(rst));
  LUT4 #(
    .INIT(16'h2F20)) 
    is_read_i_1
       (.I0(s_axi_arvalid),
        .I1(state[1]),
        .I2(is_write),
        .I3(is_read),
        .O(is_read_i_1_n_0));
  LUT6 #(
    .INIT(64'hAA80808055555555)) 
    is_read_i_2
       (.I0(state[0]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .I5(state[1]),
        .O(is_write));
  FDRE is_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_read_i_1_n_0),
        .Q(is_read),
        .R(rst));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    is_write_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(state[1]),
        .I4(is_write),
        .I5(is_write_reg_n_0),
        .O(is_write_i_1_n_0));
  FDRE is_write_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(is_write_i_1_n_0),
        .Q(is_write_reg_n_0),
        .R(rst));
  FDRE rst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(SR),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    s_axi_arready_INST_0
       (.I0(ip2bus_rdack),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I5(is_read),
        .O(s_axi_arready));
  LUT4 #(
    .INIT(16'hFB08)) 
    \s_axi_bresp_i[1]_i_1 
       (.I0(ip2bus_error),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_bresp),
        .O(\s_axi_bresp_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp_i[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(rst));
  LUT5 #(
    .INIT(32'h5D550C00)) 
    s_axi_bvalid_i_i_1
       (.I0(s_axi_bready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(s_axi_wready),
        .I4(s_axi_bvalid),
        .O(s_axi_bvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFF5FFF3FFF)) 
    \s_axi_rdata_i[0]_i_2 
       (.I0(\mer_int_reg[0]_0 ),
        .I1(\IVR_GEN.ivr_reg[4] [0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \s_axi_rdata_i[0]_i_3 
       (.I0(\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\ILR_GEN.ilr_reg[4] [0]),
        .O(\s_axi_rdata_i[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[10]_i_2 
       (.I0(p_0_in46_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[10].ier_reg[10] ),
        .O(\s_axi_rdata_i[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[11]_i_2 
       (.I0(p_0_in43_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[11].ier_reg[11] ),
        .O(\s_axi_rdata_i[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[12]_i_2 
       (.I0(p_0_in40_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[12].ier_reg[12] ),
        .O(\s_axi_rdata_i[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[13]_i_2 
       (.I0(p_0_in37_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[13].ier_reg[13] ),
        .O(\s_axi_rdata_i[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[14]_i_2 
       (.I0(p_0_in34_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[14].ier_reg[14] ),
        .O(\s_axi_rdata_i[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[15]_i_2 
       (.I0(\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[15].ier_reg[15] ),
        .O(\s_axi_rdata_i[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3F7FFF7F)) 
    \s_axi_rdata_i[1]_i_2 
       (.I0(\IVR_GEN.ivr_reg[4] [1]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_0_in),
        .I5(Q[3]),
        .O(\s_axi_rdata_i[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000800000008)) 
    \s_axi_rdata_i[1]_i_3 
       (.I0(p_0_in73_in),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\ILR_GEN.ilr_reg[4] [1]),
        .O(\s_axi_rdata_i[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2022202200002022)) 
    \s_axi_rdata_i[2]_i_2 
       (.I0(\s_axi_rdata_i[2]_i_3_n_0 ),
        .I1(\s_axi_rdata_i_reg[2]_1 ),
        .I2(I_DECODER_n_10),
        .I3(p_0_in70_in),
        .I4(\ILR_GEN.ilr_reg[4] [2]),
        .I5(\s_axi_rdata_i_reg[2]_0 ),
        .O(\s_axi_rdata_i[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF5F557F7FFFF57F7)) 
    \s_axi_rdata_i[2]_i_3 
       (.I0(\s_axi_rdata_i_reg[4]_0 ),
        .I1(p_1_in149_in),
        .I2(Q[0]),
        .I3(\IPR_GEN.ipr_reg[4] [0]),
        .I4(Q[1]),
        .I5(p_0_in148_in),
        .O(\s_axi_rdata_i[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \s_axi_rdata_i[2]_i_4 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\IVR_GEN.ivr_reg[4] [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\s_axi_rdata_i_reg[2]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata_i[31]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axi_rdata_i));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \s_axi_rdata_i[31]_i_6 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\s_axi_rdata_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF5F557F7FFFF57F7)) 
    \s_axi_rdata_i[3]_i_2 
       (.I0(\s_axi_rdata_i_reg[4]_0 ),
        .I1(p_1_in146_in),
        .I2(Q[0]),
        .I3(\IPR_GEN.ipr_reg[4] [1]),
        .I4(Q[1]),
        .I5(p_0_in145_in),
        .O(\s_axi_rdata_i[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \s_axi_rdata_i[3]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 ),
        .I1(\ILR_GEN.ilr_reg[4] [3]),
        .I2(p_0_in67_in),
        .I3(I_DECODER_n_10),
        .I4(\IVR_GEN.ivr_reg[4] [3]),
        .I5(\s_axi_rdata_i[4]_i_5_n_0 ),
        .O(\s_axi_rdata_i[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF5F557F7FFFF57F7)) 
    \s_axi_rdata_i[4]_i_2 
       (.I0(\s_axi_rdata_i_reg[4]_0 ),
        .I1(p_1_in143_in),
        .I2(Q[0]),
        .I3(\IPR_GEN.ipr_reg[4] [2]),
        .I4(Q[1]),
        .I5(p_0_in142_in),
        .O(\s_axi_rdata_i[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \s_axi_rdata_i[4]_i_3 
       (.I0(\s_axi_rdata_i_reg[2]_0 ),
        .I1(\ILR_GEN.ilr_reg[4] [4]),
        .I2(p_0_in64_in),
        .I3(I_DECODER_n_10),
        .I4(\IVR_GEN.ivr_reg[4] [4]),
        .I5(\s_axi_rdata_i[4]_i_5_n_0 ),
        .O(\s_axi_rdata_i[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_rdata_i[4]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\s_axi_rdata_i_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \s_axi_rdata_i[4]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\s_axi_rdata_i[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[5]_i_2 
       (.I0(p_0_in61_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[5].ier_reg[5] ),
        .O(\s_axi_rdata_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[6]_i_2 
       (.I0(p_0_in58_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[6].ier_reg[6] ),
        .O(\s_axi_rdata_i[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[7]_i_2 
       (.I0(p_0_in55_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[7].ier_reg[7] ),
        .O(\s_axi_rdata_i[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[8]_i_2 
       (.I0(p_0_in52_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[8].ier_reg[8] ),
        .O(\s_axi_rdata_i[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFF00FFFDFFFF)) 
    \s_axi_rdata_i[9]_i_2 
       (.I0(p_0_in49_in),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\REG_GEN[9].ier_reg[9] ),
        .O(\s_axi_rdata_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[0]),
        .Q(s_axi_rdata[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[10]),
        .Q(s_axi_rdata[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[11]),
        .Q(s_axi_rdata[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[12]),
        .Q(s_axi_rdata[12]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[13]),
        .Q(s_axi_rdata[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[14]),
        .Q(s_axi_rdata[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[15]),
        .Q(s_axi_rdata[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[0]),
        .Q(s_axi_rdata[16]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[1]),
        .Q(s_axi_rdata[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[2]),
        .Q(s_axi_rdata[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[3]),
        .Q(s_axi_rdata[19]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[1]),
        .Q(s_axi_rdata[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[4]),
        .Q(s_axi_rdata[20]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[5]),
        .Q(s_axi_rdata[21]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[6]),
        .Q(s_axi_rdata[22]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[7]),
        .Q(s_axi_rdata[23]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[8]),
        .Q(s_axi_rdata[24]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[9]),
        .Q(s_axi_rdata[25]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[10]),
        .Q(s_axi_rdata[26]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[11]),
        .Q(s_axi_rdata[27]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[12]),
        .Q(s_axi_rdata[28]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[13]),
        .Q(s_axi_rdata[29]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[2]),
        .Q(s_axi_rdata[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[14]),
        .Q(s_axi_rdata[30]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(D[15]),
        .Q(s_axi_rdata[31]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[3]),
        .Q(s_axi_rdata[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[4]),
        .Q(s_axi_rdata[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[5]),
        .Q(s_axi_rdata[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[6]),
        .Q(s_axi_rdata[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[7]),
        .Q(s_axi_rdata[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[8]),
        .Q(s_axi_rdata[8]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_i_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(IP2Bus_Data[9]),
        .Q(s_axi_rdata[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h070F0F0F)) 
    \s_axi_rresp_i[1]_i_1 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_wstrb[2]),
        .I2(bus2ip_rnw_i_reg_n_0),
        .I3(s_axi_wstrb[0]),
        .I4(s_axi_wstrb[3]),
        .O(ip2bus_error));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_i_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_rdata_i),
        .D(ip2bus_error),
        .Q(s_axi_rresp),
        .R(rst));
  LUT5 #(
    .INIT(32'h5D550C00)) 
    s_axi_rvalid_i_i_1
       (.I0(s_axi_rready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arready),
        .I4(s_axi_rvalid),
        .O(s_axi_rvalid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_i_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(rst));
  LUT6 #(
    .INIT(64'hAAAAABAAAAAAAAAA)) 
    s_axi_wready_INST_0
       (.I0(ip2bus_wrack),
        .I1(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [1]),
        .I2(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [0]),
        .I3(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [3]),
        .I4(\INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0 [2]),
        .I5(is_write_reg_n_0),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h000F0008)) 
    start2_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axi_arvalid),
        .O(start2_i_1_n_0));
  FDRE start2_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(start2_i_1_n_0),
        .Q(start2),
        .R(rst));
  LUT5 #(
    .INIT(32'h2F2CEFEC)) 
    \state[0]_i_1 
       (.I0(s_axi_wready),
        .I1(state[0]),
        .I2(state[1]),
        .I3(s_axi_arvalid),
        .I4(\state[0]_i_2_n_0 ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \state[0]_i_2 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .O(\state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2F2C)) 
    \state[1]_i_1 
       (.I0(s_axi_arready),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\state[1]_i_2_n_0 ),
        .I4(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \state[1]_i_2 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .O(\state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h002A2A2A)) 
    \state[1]_i_3 
       (.I0(state[1]),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid),
        .O(\state[1]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(rst));
  FDRE \state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
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
