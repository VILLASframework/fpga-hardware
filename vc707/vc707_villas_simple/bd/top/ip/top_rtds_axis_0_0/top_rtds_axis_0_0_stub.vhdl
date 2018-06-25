-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Thu Jun 23 17:43:09 2016
-- Host        : E265 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub -rename_top top_rtds_axis_0_0 -prefix top_rtds_axis_0_0_
--               top_rtds_axis_0_0_stub.vhdl
-- Design      : top_rtds_axis_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity \top_rtds_axis_0_0\ is
  Port ( 
    clk100m : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    axi_resetn : out STD_LOGIC;
    CLKBUF_Q0_N : in STD_LOGIC;
    CLKBUF_Q0_P : in STD_LOGIC;
    SFP_RX_N : in STD_LOGIC;
    SFP_RX_P : in STD_LOGIC;
    SFP_TX_N : out STD_LOGIC;
    SFP_TX_P : out STD_LOGIC;
    SFP_LOS : in STD_LOGIC;
    SFP_TX_DISABLE : out STD_LOGIC;
    SYS_CLK : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    irq_ts : out STD_LOGIC;
    irq_overflow : out STD_LOGIC;
    irq_case : out STD_LOGIC;
    s_axi_ctl_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctl_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctl_awvalid : in STD_LOGIC;
    s_axi_ctl_awready : out STD_LOGIC;
    s_axi_ctl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_wvalid : in STD_LOGIC;
    s_axi_ctl_wready : out STD_LOGIC;
    s_axi_ctl_bvalid : out STD_LOGIC;
    s_axi_ctl_bready : in STD_LOGIC;
    s_axi_ctl_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_ctl_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctl_arvalid : in STD_LOGIC;
    s_axi_ctl_arready : out STD_LOGIC;
    s_axi_ctl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_rvalid : out STD_LOGIC;
    s_axi_ctl_rready : in STD_LOGIC
  );

end \top_rtds_axis_0_0\;

architecture stub of \top_rtds_axis_0_0\ is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk100m,aresetn,axi_resetn,CLKBUF_Q0_N,CLKBUF_Q0_P,SFP_RX_N,SFP_RX_P,SFP_TX_N,SFP_TX_P,SFP_LOS,SFP_TX_DISABLE,SYS_CLK,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tlast,s_axis_tready,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tlast,m_axis_tready,irq_ts,irq_overflow,irq_case,s_axi_ctl_awaddr[5:0],s_axi_ctl_awprot[2:0],s_axi_ctl_awvalid,s_axi_ctl_awready,s_axi_ctl_wdata[31:0],s_axi_ctl_wstrb[3:0],s_axi_ctl_wvalid,s_axi_ctl_wready,s_axi_ctl_bvalid,s_axi_ctl_bready,s_axi_ctl_araddr[5:0],s_axi_ctl_arprot[2:0],s_axi_ctl_arvalid,s_axi_ctl_arready,s_axi_ctl_rdata[31:0],s_axi_ctl_rvalid,s_axi_ctl_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rtds_axis,Vivado 2016.1";
begin
end;
