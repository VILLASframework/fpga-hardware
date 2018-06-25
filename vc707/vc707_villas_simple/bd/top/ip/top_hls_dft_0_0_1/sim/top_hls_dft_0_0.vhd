-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: acs.eonerc.rwth-aachen.de:hls:hls_dft:1.0
-- IP Revision: 1606251109

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_hls_dft_0_0 IS
  PORT (
    s_axi_ctrl_AWADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_ctrl_AWVALID : IN STD_LOGIC;
    s_axi_ctrl_AWREADY : OUT STD_LOGIC;
    s_axi_ctrl_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctrl_WVALID : IN STD_LOGIC;
    s_axi_ctrl_WREADY : OUT STD_LOGIC;
    s_axi_ctrl_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_BVALID : OUT STD_LOGIC;
    s_axi_ctrl_BREADY : IN STD_LOGIC;
    s_axi_ctrl_ARADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_ctrl_ARVALID : IN STD_LOGIC;
    s_axi_ctrl_ARREADY : OUT STD_LOGIC;
    s_axi_ctrl_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_RVALID : OUT STD_LOGIC;
    s_axi_ctrl_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    input_r_TVALID : IN STD_LOGIC;
    input_r_TREADY : OUT STD_LOGIC;
    input_r_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    input_r_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    output_r_TVALID : OUT STD_LOGIC;
    output_r_TREADY : IN STD_LOGIC;
    output_r_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    output_r_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END top_hls_dft_0_0;

ARCHITECTURE top_hls_dft_0_0_arch OF top_hls_dft_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_hls_dft_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT hls_dft IS
    GENERIC (
      C_S_AXI_CTRL_ADDR_WIDTH : INTEGER;
      C_S_AXI_CTRL_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_ctrl_AWADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_ctrl_AWVALID : IN STD_LOGIC;
      s_axi_ctrl_AWREADY : OUT STD_LOGIC;
      s_axi_ctrl_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctrl_WVALID : IN STD_LOGIC;
      s_axi_ctrl_WREADY : OUT STD_LOGIC;
      s_axi_ctrl_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_BVALID : OUT STD_LOGIC;
      s_axi_ctrl_BREADY : IN STD_LOGIC;
      s_axi_ctrl_ARADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axi_ctrl_ARVALID : IN STD_LOGIC;
      s_axi_ctrl_ARREADY : OUT STD_LOGIC;
      s_axi_ctrl_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_RVALID : OUT STD_LOGIC;
      s_axi_ctrl_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      input_r_TVALID : IN STD_LOGIC;
      input_r_TREADY : OUT STD_LOGIC;
      input_r_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      input_r_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      output_r_TVALID : OUT STD_LOGIC;
      output_r_TREADY : IN STD_LOGIC;
      output_r_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      output_r_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT hls_dft;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_r_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 input_r TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF output_r_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 output_r TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF output_r_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 output_r TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF output_r_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 output_r TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_r_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 output_r TLAST";
BEGIN
  U0 : hls_dft
    GENERIC MAP (
      C_S_AXI_CTRL_ADDR_WIDTH => 8,
      C_S_AXI_CTRL_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_ctrl_AWADDR => s_axi_ctrl_AWADDR,
      s_axi_ctrl_AWVALID => s_axi_ctrl_AWVALID,
      s_axi_ctrl_AWREADY => s_axi_ctrl_AWREADY,
      s_axi_ctrl_WDATA => s_axi_ctrl_WDATA,
      s_axi_ctrl_WSTRB => s_axi_ctrl_WSTRB,
      s_axi_ctrl_WVALID => s_axi_ctrl_WVALID,
      s_axi_ctrl_WREADY => s_axi_ctrl_WREADY,
      s_axi_ctrl_BRESP => s_axi_ctrl_BRESP,
      s_axi_ctrl_BVALID => s_axi_ctrl_BVALID,
      s_axi_ctrl_BREADY => s_axi_ctrl_BREADY,
      s_axi_ctrl_ARADDR => s_axi_ctrl_ARADDR,
      s_axi_ctrl_ARVALID => s_axi_ctrl_ARVALID,
      s_axi_ctrl_ARREADY => s_axi_ctrl_ARREADY,
      s_axi_ctrl_RDATA => s_axi_ctrl_RDATA,
      s_axi_ctrl_RRESP => s_axi_ctrl_RRESP,
      s_axi_ctrl_RVALID => s_axi_ctrl_RVALID,
      s_axi_ctrl_RREADY => s_axi_ctrl_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      input_r_TVALID => input_r_TVALID,
      input_r_TREADY => input_r_TREADY,
      input_r_TDATA => input_r_TDATA,
      input_r_TLAST => input_r_TLAST,
      output_r_TVALID => output_r_TVALID,
      output_r_TREADY => output_r_TREADY,
      output_r_TDATA => output_r_TDATA,
      output_r_TLAST => output_r_TLAST
    );
END top_hls_dft_0_0_arch;
