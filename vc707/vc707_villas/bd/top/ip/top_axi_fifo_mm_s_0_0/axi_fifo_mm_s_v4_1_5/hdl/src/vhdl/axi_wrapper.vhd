-------------------------------------------------------------------------------
--
-- AXI4-AXI4 Stream FIFO Core - Top Level XCC Wrapper File
--
-------------------------------------------------------------------------------
-- (c) Copyright 2006 - 2013 Xilinx, Inc. All rights reserved.
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
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
--
-- Filename: axi_wrapper.vhd
--
-- Author: Xilinx
--
-- Description: Top level wrapper file. This file is used by other CoreGen 
-- cores calling the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

LIBRARY STD;
USE STD.TEXTIO.ALL;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.axi_fifo_mm_s_pkg.all;

ENTITY axi_wrapper IS
  GENERIC (
  ----------------------------------------------------------------------------
  -- Generic Declarations
  ----------------------------------------------------------------------------
    C_AXI_TYPE                  : INTEGER := 0; -- 0: AXI Lite; 1: AXI Full
    C_AXI_SLAVE_TYPE            : INTEGER := 0; -- 0: MEMORY SLAVE; 1: PERIPHERAL SLAVE;
    C_HAS_AXI_ID                : INTEGER := 1; 
    C_AXI_ID_WIDTH              : INTEGER := 4;
    C_AXI_ADDR_WIDTH            : INTEGER := 12;
    C_AXI_WDATA_WIDTH           : INTEGER := 4;
    C_TX_FIFO_DEPTH             : INTEGER := 512;
    C_RX_FIFO_DEPTH             : INTEGER := 512
  );
  PORT (
  ----------------------------------------------------------------------------
  -- Input and Output Declarations
  ----------------------------------------------------------------------------

    -- AXI Global Signals
    S_AClk                         : IN  STD_LOGIC := '0';
    S_ARESETN                      : IN  STD_LOGIC := '0'; 

    -- AXI Full/Lite Slave Write (write side)
    S_AXI_AWID                     : IN  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWADDR                   : IN  STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWLEN                    : IN  STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWSIZE                   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWBURST                  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWVALID                  : IN  STD_LOGIC := '0';
    S_AXI_AWREADY                  : OUT STD_LOGIC := '0';
    S_AXI_WDATA                    : IN  STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WSTRB                    : IN  STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WLAST                    : IN  STD_LOGIC := '0';
    S_AXI_WVALID                   : IN  STD_LOGIC := '0';
    S_AXI_WREADY                   : OUT STD_LOGIC := '0';
    S_AXI_BID                      : OUT STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_BRESP                    : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_BVALID                   : OUT STD_LOGIC := '0';
    S_AXI_BREADY                   : IN  STD_LOGIC := '0';

    -- AXI Full/Lite Slave Read (Write side)
    S_AXI_ARID                     : IN  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARADDR                   : IN  STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARLEN                    : IN  STD_LOGIC_VECTOR(8-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARSIZE                   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARBURST                  : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARVALID                  : IN  STD_LOGIC := '0';
    S_AXI_ARREADY                  : OUT STD_LOGIC := '0';
    S_AXI_RID                      : OUT STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_RDATA                    : OUT STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH-1 DOWNTO 0); 
    S_AXI_RRESP                    : OUT STD_LOGIC_VECTOR(2-1 DOWNTO 0);
    S_AXI_RLAST                    : OUT STD_LOGIC := '0';
    S_AXI_RVALID                   : OUT STD_LOGIC := '0';
    S_AXI_RREADY                   : IN  STD_LOGIC := '0';

    -- AXI Full/Lite Sideband Signals
    S_AXI_AWADDR_OUT               : OUT STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WR_EN                    : OUT STD_LOGIC := '0';
    S_AXI_ARADDR_OUT               : OUT STD_LOGIC_VECTOR(C_AXI_ADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_RD_EN                    : OUT STD_LOGIC := '0'

  );
  
END axi_wrapper;

ARCHITECTURE xilinx OF axi_wrapper IS

  SIGNAL s_aresetn_a_c           : STD_LOGIC := '0';

  SIGNAL s_axi_rid_c             :  STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL s_axi_rdata_c           :  STD_LOGIC_VECTOR(C_AXI_WDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); 
  SIGNAL s_axi_rresp_c           :  STD_LOGIC_VECTOR(2-1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL s_axi_rlast_c           :  STD_LOGIC := '0';
  SIGNAL s_axi_rvalid_c          :  STD_LOGIC := '0';
  SIGNAL s_axi_rready_c          :  STD_LOGIC := '0';
  SIGNAL regceb_c                :  STD_LOGIC := '0'; 

  CONSTANT C_ACTUAL_WADDR_WIDTH  : integer := log2roundup(C_TX_FIFO_DEPTH);
  CONSTANT C_ACTUAL_RADDR_WIDTH  : integer := log2roundup(C_RX_FIFO_DEPTH);
  CONSTANT AXI_FULL_MEMORY_SLAVE : integer := if_then_else((C_AXI_SLAVE_TYPE = 0 AND C_AXI_TYPE = 1),1,0);
  CONSTANT C_AXI_WADDR_WIDTH_MSB : integer := C_ACTUAL_WADDR_WIDTH+log2roundup(C_AXI_WDATA_WIDTH/8);
  CONSTANT C_AXI_RADDR_WIDTH_MSB : integer := C_ACTUAL_RADDR_WIDTH+log2roundup(C_AXI_WDATA_WIDTH/8);

  -- Data Width        Number of LSB address bits to be discarded
  --  1 to 16                      1
  --  17 to 32                     2
  --  33 to 64                     3
  --  65 to 128                    4
  --  129 to 256                   5
  --  257 to 512                   6
  --  513 to 1024                  7
  -- The following two constants determine this.

  CONSTANT LOWER_BOUND_VAL      : integer := if_then_else((log2roundup(divroundup(C_AXI_WDATA_WIDTH,8))) = 0, 0,
                                             log2roundup(divroundup(C_AXI_WDATA_WIDTH,8)));
  CONSTANT C_AXI_ADDR_WIDTH_LSB : integer := if_then_else((AXI_FULL_MEMORY_SLAVE = 1),0,LOWER_BOUND_VAL);

  SIGNAL sig_axi_waddr_out      :  STD_LOGIC_VECTOR(C_ACTUAL_WADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); 
  SIGNAL sig_axi_raddr_out      :  STD_LOGIC_VECTOR(C_ACTUAL_RADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); 

BEGIN
    s_aresetn_a_c <= NOT S_ARESETN;
    S_AXI_BRESP <= (OTHERS => '0');
    s_axi_rresp_c <= (OTHERS => '0');
  
    S_AXI_RDATA    <= s_axi_rdata_c;
    S_AXI_RLAST    <= s_axi_rlast_c;
    S_AXI_RVALID   <= s_axi_rvalid_c;
    S_AXI_RID      <= s_axi_rid_c;
    S_AXI_RRESP    <= s_axi_rresp_c;
    s_axi_rready_c <= S_AXI_RREADY;

    S_AXI_AWADDR_OUT <= S_AXI_AWADDR(C_AXI_ADDR_WIDTH-1 downto C_ACTUAL_WADDR_WIDTH) & sig_axi_waddr_out;
    S_AXI_ARADDR_OUT <= S_AXI_ARADDR(C_AXI_ADDR_WIDTH-1 downto C_ACTUAL_RADDR_WIDTH) & sig_axi_raddr_out;
  
    axi_wr_fsm : ENTITY axi_fifo_mm_s_v4_1_5.axi_write_wrapper
    GENERIC MAP(
        -- AXI Interface related parameters start here
        C_AXI_TYPE                 => C_AXI_TYPE,
        C_AXI_SLAVE_TYPE           => C_AXI_SLAVE_TYPE,
        C_AXI_AWADDR_WIDTH         => if_then_else((AXI_FULL_MEMORY_SLAVE = 1),C_AXI_WADDR_WIDTH_MSB,C_AXI_WADDR_WIDTH_MSB-C_AXI_ADDR_WIDTH_LSB),
        C_HAS_AXI_ID               => C_HAS_AXI_ID,
        C_AXI_ID_WIDTH             => C_AXI_ID_WIDTH,
        C_ADDRA_WIDTH              => C_ACTUAL_WADDR_WIDTH,
        C_AXI_WDATA_WIDTH          => C_AXI_WDATA_WIDTH,
        C_AXI_OS_WR                => 2
        )
    PORT MAP(
        -- AXI Global Signals
        S_ACLK                     => S_ACLK,
        S_ARESETN                  => s_aresetn_a_c,
        -- AXI Full/Lite Slave Write Interface
        S_AXI_AWADDR               => S_AXI_AWADDR(C_AXI_WADDR_WIDTH_MSB-1 DOWNTO C_AXI_ADDR_WIDTH_LSB),
        S_AXI_AWLEN                => S_AXI_AWLEN,
        S_AXI_AWID                 => S_AXI_AWID,
        S_AXI_AWSIZE               => S_AXI_AWSIZE,
        S_AXI_AWBURST              => S_AXI_AWBURST,
        S_AXI_AWVALID              => S_AXI_AWVALID,
        S_AXI_AWREADY              => S_AXI_AWREADY,
        S_AXI_WVALID               => S_AXI_WVALID,
        S_AXI_WREADY               => S_AXI_WREADY,
        S_AXI_BVALID               => S_AXI_BVALID,
        S_AXI_BREADY               => S_AXI_BREADY,
        S_AXI_BID                  => S_AXI_BID,
        -- Signals for BRAM interface
        S_AXI_AWADDR_OUT           => sig_axi_waddr_out,
        S_AXI_WR_EN                => S_AXI_WR_EN
        );
  
    axi_rd_sm : ENTITY axi_fifo_mm_s_v4_1_5.axi_read_wrapper
    GENERIC MAP (
      -- AXI Interface related parameters start here
      C_AXI_TYPE             =>  C_AXI_TYPE,
      C_AXI_SLAVE_TYPE       =>  C_AXI_SLAVE_TYPE,
      C_WRITE_WIDTH_A        =>  C_AXI_WDATA_WIDTH,
      C_ADDRA_WIDTH          =>  C_AXI_WDATA_WIDTH,
      C_AXI_PIPELINE_STAGES  =>  1,
      C_AXI_ARADDR_WIDTH     =>  if_then_else((AXI_FULL_MEMORY_SLAVE = 1),C_AXI_RADDR_WIDTH_MSB,C_AXI_RADDR_WIDTH_MSB-C_AXI_ADDR_WIDTH_LSB),
      C_HAS_AXI_ID           =>  C_HAS_AXI_ID,
      C_AXI_ID_WIDTH         =>  C_AXI_ID_WIDTH,
      C_ADDRB_WIDTH          =>  C_ACTUAL_RADDR_WIDTH
      )
    PORT MAP(
      -- AXI Global Signals
      S_ACLK                     => S_AClk, 
      S_ARESETN                  => s_aresetn_a_c,
      
      -- AXI Full/Lite Read Side
      S_AXI_ARADDR               => S_AXI_ARADDR(C_AXI_RADDR_WIDTH_MSB-1 DOWNTO C_AXI_ADDR_WIDTH_LSB),
      S_AXI_ARLEN                => S_AXI_ARLEN,
      S_AXI_ARSIZE               => S_AXI_ARSIZE,
      S_AXI_ARBURST              => S_AXI_ARBURST,
      S_AXI_ARVALID              => S_AXI_ARVALID,
      S_AXI_ARREADY              => S_AXI_ARREADY,
      S_AXI_RLAST                => s_axi_rlast_c,
      S_AXI_RVALID               => s_axi_rvalid_c,
      S_AXI_RREADY               => s_axi_rready_c,
      S_AXI_ARID                 => S_AXI_ARID,
      S_AXI_RID                  => s_axi_rid_c,
      -- AXI Full/Lite Read FSM Outputs
      S_AXI_ARADDR_OUT           => sig_axi_raddr_out,
      S_AXI_RD_EN                => S_AXI_RD_EN
    );

END xilinx;

