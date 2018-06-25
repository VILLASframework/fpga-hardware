-------------------------------------------------------------------------------
--
-- AXI4-AXI4 Stream FIFO Core - AXI4-AXI4 Stream FIFO Top File
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
-- Filename:        axi_fifo_mm_s.vhd
-- Version:         v4_1
-- Description:     top level of axi_fifo_mm_s
--
-------------------------------------------------------------------------------
-- Structure:   
--                axi_fifo_mm_s.vhd
--                   axi_fifo_mm_s_pkg.vhd
--                   axi_lite_ipif.vhd
--                   axi_wrapper.vhd
--                      axi_read_fsm.vhd
--                      axi_read_wrapper.vhd
--                      axi_write_fsm.vhd
--                      axi_write_wrapper.vhd
--                   ipic2axi_s.vhd
--                      async_fg.vhd
--                      fifo.vhd
--                         axis_fg.vhd
--
------------------------------------------------------------------------------
-- Author: Xilinx
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
------------------------------------------------------------------------------
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.all;

library axi_lite_ipif_v3_0_3;
library lib_pkg_v1_0_2;
use lib_pkg_v1_0_2.lib_pkg.all;
use lib_pkg_v1_0_2.lib_pkg.log2;
use lib_pkg_v1_0_2.lib_pkg.max2;
use axi_lite_ipif_v3_0_3.ipif_pkg.all;

library axi_lite_ipif_v3_0_3;
use axi_lite_ipif_v3_0_3.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.axi_fifo_mm_s_pkg.all;

entity axi_fifo_mm_s is
      generic (
        C_FAMILY                  : string  := "virtex7";
        C_S_AXI_ID_WIDTH          : integer := 4;
        C_S_AXI_ADDR_WIDTH        : integer := 32;
        C_S_AXI_DATA_WIDTH        : integer := 32;
        C_S_AXI4_DATA_WIDTH       : integer := 32;
        C_TX_FIFO_DEPTH           : integer := 512;
        C_RX_FIFO_DEPTH           : integer := 512;
        C_TX_FIFO_PF_THRESHOLD    : integer := 10;
        C_TX_FIFO_PE_THRESHOLD    : integer := 7;
        C_RX_FIFO_PF_THRESHOLD    : integer := 10;
        C_RX_FIFO_PE_THRESHOLD    : integer := 7;
        C_USE_TX_CUT_THROUGH      : integer := 0;
        C_DATA_INTERFACE_TYPE     : integer := 0;
        C_BASEADDR                : std_logic_vector(31 downto 0);
        C_HIGHADDR                : std_logic_vector(31 downto 0);
        C_AXI4_BASEADDR           : std_logic_vector(31 downto 0);
        C_AXI4_HIGHADDR           : std_logic_vector(31 downto 0);

        C_HAS_AXIS_TID            : integer := 0;
        C_HAS_AXIS_TDEST          : integer := 0;
        C_HAS_AXIS_TUSER          : integer := 0;
        C_HAS_AXIS_TSTRB          : integer := 0;
        C_HAS_AXIS_TKEEP          : integer := 0;
        C_AXIS_TID_WIDTH          : integer := 4;
        C_AXIS_TDEST_WIDTH        : integer := 4;
        C_AXIS_TUSER_WIDTH        : integer := 4;
        C_USE_RX_CUT_THROUGH      : integer := 0;
        C_USE_TX_DATA             : integer := 1;
        C_USE_TX_CTRL             : integer := 1;
        C_USE_RX_DATA             : integer := 1

      );  
      port (

        -- system signals ---------------------------------------------------------
        interrupt                 : out std_logic := '0';

        s_axi_aclk                : in  std_logic := '0';
        s_axi_aresetn             : in  std_logic := '0';

        -- axi4-lite signals
        -- aw channel
        s_axi_awaddr              : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi_awvalid             : in  std_logic := '0';
        s_axi_awready             : out std_logic := '0';

        -- w channel
        s_axi_wdata               : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi_wstrb               : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8 - 1) downto 0) := (others => '0');
        s_axi_wvalid              : in  std_logic := '0';
        s_axi_wready              : out std_logic := '0';

        -- b channel
        s_axi_bresp               : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi_bvalid              : out std_logic := '0';
        s_axi_bready              : in  std_logic := '0';

        -- ar channel
        s_axi_araddr              : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi_arvalid             : in  std_logic := '0';
        s_axi_arready             : out std_logic := '0';

        -- r channel
        s_axi_rdata               : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi_rresp               : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi_rvalid              : out std_logic := '0';
        s_axi_rready              : in  std_logic := '0';

        -- axi4 signals
        -- aw channel
        s_axi4_awid               : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_awaddr             : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi4_awlen              : in  std_logic_vector(7 downto 0) := (others => '0');
        s_axi4_awsize             : in  std_logic_vector(2 downto 0) := (others => '0');
        s_axi4_awburst            : in  std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_awlock             : in  std_logic := '0';                               -- not supported in design
        s_axi4_awcache            : in  std_logic_vector(3 downto 0) := (others => '0');-- not supported in design
        s_axi4_awprot             : in  std_logic_vector(2 downto 0) := (others => '0');-- not supported in design
        s_axi4_awvalid            : in  std_logic := '0';
        s_axi4_awready            : out std_logic := '0';

        -- w channel
        s_axi4_wdata              : in  std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi4_wstrb              : in  std_logic_vector((C_S_AXI4_DATA_WIDTH/8 - 1) downto 0) := (others => '0');
        s_axi4_wlast              : in  std_logic := '0';
        s_axi4_wvalid             : in  std_logic := '0';
        s_axi4_wready             : out std_logic := '0';

        -- b channel
        s_axi4_bid                : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_bresp              : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_bvalid             : out std_logic := '0';
        s_axi4_bready             : in  std_logic := '0';

        -- ar channel
        s_axi4_arid               : in  std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_araddr             : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
        s_axi4_arlen              : in  std_logic_vector(7 downto 0) := (others => '0');
        s_axi4_arsize             : in  std_logic_vector(2 downto 0) := (others => '0');
        s_axi4_arburst            : in  std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_arlock             : in  std_logic := '0';                               -- not supported in design
        s_axi4_arcache            : in  std_logic_vector(3 downto 0) := (others => '0');-- not supported in design
        s_axi4_arprot             : in  std_logic_vector(2 downto 0) := (others => '0');-- not supported in design
        s_axi4_arvalid            : in  std_logic := '0';
        s_axi4_arready            : out std_logic := '0';

        -- r channel
        s_axi4_rid                : out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0) := (others => '0');
        s_axi4_rdata              : out std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        s_axi4_rresp              : out std_logic_vector(1 downto 0) := (others => '0');
        s_axi4_rlast              : out std_logic := '0';
        s_axi4_rvalid             : out std_logic := '0';
        s_axi4_rready             : in  std_logic := '0';


        -- tx axi streaming
        mm2s_prmry_reset_out_n    : out std_logic := '0';
        axi_str_txd_tvalid        : out std_logic := '0';
        axi_str_txd_tready        : in  std_logic := '0';
        axi_str_txd_tlast         : out std_logic := '0';
        axi_str_txd_tkeep         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txd_tdata         : out std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        axi_str_txd_tstrb         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txd_tdest         : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
        axi_str_txd_tid           : out std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
        axi_str_txd_tuser         : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');

        -- tx axi control streaming
        mm2s_cntrl_reset_out_n    : out std_logic := '0';
        axi_str_txc_tvalid        : out std_logic := '0';
        axi_str_txc_tready        : in  std_logic := '0';
        axi_str_txc_tlast         : out std_logic := '0';
        axi_str_txc_tkeep         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txc_tdata         : out std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        axi_str_txc_tstrb         : out std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_txc_tdest         : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
        axi_str_txc_tid           : out std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
        axi_str_txc_tuser         : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');

        -- rx axi streaming
        s2mm_prmry_reset_out_n    : out std_logic := '0';
        axi_str_rxd_tvalid        : in  std_logic := '0';
        axi_str_rxd_tready        : out std_logic := '0';
        axi_str_rxd_tlast         : in  std_logic := '0';
        axi_str_rxd_tkeep         : in  std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_rxd_tdata         : in  std_logic_vector(C_S_AXI4_DATA_WIDTH-1 downto 0) := (others => '0');
        axi_str_rxd_tstrb         : in  std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
        axi_str_rxd_tdest         : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
        axi_str_rxd_tid           : in  std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
        axi_str_rxd_tuser         : in  std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0')

      );     

end entity;

architecture structure of axi_fifo_mm_s is

 
  -----------------------------------------------------------------------------
  -- Slave Burst Parameters
  -----------------------------------------------------------------------------
  constant  C_MAX_REG_NO     : integer := 13; -- Maximum number of user registers
  constant  C_MAX_INTR_NO    : integer := 13; -- Maximum number of interrupts
  constant  C_MAX_DEST_WIDTH : integer := 4;  -- Maximum recommended width

  constant  C_ARD_ADDR_RANGE_ARRAY      : SLV64_ARRAY_TYPE :=
                -- Base address and high address pairs.
                (
                 x"0000_0000_0000_0000" + C_BASEADDR, -- IP user0 base address
                 x"0000_0000_0000_0000" + C_HIGHADDR  -- IP user0 high address
                );

  constant  C_ARD_NUM_CE_ARRAY          : INTEGER_ARRAY_TYPE :=
                -- This array spcifies the number of Chip Enables (CE) that is
                -- required by the cooresponding baseaddr pair.
                (
                 0 => C_MAX_REG_NO          -- User0 CE Number
                );
          
  constant  C_S_AXI_MIN_SIZE    : std_logic_vector(31 downto 0):= X"0000003F";
                  -- Minimum address range of the IP
  constant  C_USE_WSTRB         : integer := 0;
                  -- Use write strobs or not
  constant  C_DPHASE_TIMEOUT    : integer:= 0;
                  -- Data phase time out counter
  constant  C_MAX_CE            : integer := calc_num_ce(C_ARD_NUM_CE_ARRAY);

  signal  Axi_Str_RxD_AReset          : std_logic := '0';
  signal  Axi_Str_TxD_AReset          : std_logic := '0';
                  
  signal  sig_Bus2IP_Clk              : std_logic := '0';
  signal  sig_Bus2IP_Reset            : std_logic := '0';
  signal  sig_Bus2IP_Resetn           : std_logic := '0';
  signal  sig_IP2Bus_Data             : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1) := (others => '0');
  signal  sig_IP2Bus_WrAck            : std_logic := '0';
  signal  sig_IP2Bus_RdAck            : std_logic := '0';
  signal  sig_IP2Bus_Error            : std_logic := '0';
  signal  sig_Bus2IP_Addr             : std_logic_vector(0 to C_S_AXI_ADDR_WIDTH-1) := (others => '0');
  signal  sig_Bus2IP_Data             : std_logic_vector(0 to C_S_AXI_DATA_WIDTH-1) := (others => '0');
  signal  sig_Bus2IP_RNW              : std_logic := '0';
  signal  sig_Bus2IP_BE               : std_logic_vector(0 to (C_S_AXI_DATA_WIDTH/8)-1) := (others => '0');
  signal  sig_Bus2IP_CS               : std_logic_vector(0 to ((C_ARD_ADDR_RANGE_ARRAY'LENGTH)/2)-1) := (others => '0');
  signal  sig_Bus2IP_RdCE             : std_logic_vector(0 to C_MAX_CE-1) := (others => '0');
  signal  sig_Bus2IP_WrCE             : std_logic_vector(0 to C_MAX_CE-1) := (others => '0');
  
  signal Axi_Str_TxC_AReset    : std_logic := '0';
  signal sig_axi_wr_en         : std_logic := '0';
  signal sig_axi_rd_en         : std_logic := '0';
  signal sig_axi_awaddr_out    : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal sig_axi_araddr_out    : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
  signal axi4_fifo_wr_en_i     : std_logic := '0';
  signal axi4_fifo_rd_en_i     : std_logic := '0';
  signal axil_rdata_ack_i      : std_logic := '0';
  signal s_axi_rvalid_i        : std_logic := '0';
  signal axi4_rdata_ack_i      : std_logic := '0';
  signal axi4_fifo_readyn      : std_logic := '0';
  signal axi4_tdfd_en          : std_logic := '0';
  signal axi4_rdfd_en          : std_logic := '0';
  
  signal axi_str_txd_tdest_i   : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal axi_str_rxd_tdest_i   : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal axi_str_txd_tkeep_i   : std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
  signal axi_str_txc_tkeep_i   : std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
  signal axi_str_rxd_tkeep_i   : std_logic_vector(C_S_AXI4_DATA_WIDTH/8-1 downto 0) := (others => '0');
  begin
 
-------------------------------------------------------------------------------

    COMP_IPIF : entity axi_lite_ipif_v3_0_3.axi_lite_ipif
      generic map(
        C_S_AXI_DATA_WIDTH      =>    C_S_AXI_DATA_WIDTH      ,
        C_S_AXI_ADDR_WIDTH      =>    C_S_AXI_ADDR_WIDTH      ,
        C_S_AXI_MIN_SIZE        =>    C_S_AXI_MIN_SIZE        ,
        C_USE_WSTRB             =>    C_USE_WSTRB             ,
        C_DPHASE_TIMEOUT        =>    C_DPHASE_TIMEOUT        ,
        C_ARD_ADDR_RANGE_ARRAY  =>    C_ARD_ADDR_RANGE_ARRAY  ,
        C_ARD_NUM_CE_ARRAY      =>    C_ARD_NUM_CE_ARRAY      ,
        C_FAMILY                =>    C_FAMILY
           )
    port map (
      
        -- AXI lite signals
        S_AXI_ACLK            =>      S_AXI_ACLK              ,
        S_AXI_ARESETN         =>      S_AXI_ARESETN           ,
        S_AXI_AWADDR          =>      S_AXI_AWADDR            ,
        S_AXI_AWVALID         =>      S_AXI_AWVALID           ,
        S_AXI_AWREADY         =>      S_AXI_AWREADY           ,
        S_AXI_WDATA           =>      S_AXI_WDATA             ,
        S_AXI_WSTRB           =>      S_AXI_WSTRB             ,
        S_AXI_WVALID          =>      S_AXI_WVALID            ,
        S_AXI_WREADY          =>      S_AXI_WREADY            ,
        S_AXI_BRESP           =>      S_AXI_BRESP             ,
        S_AXI_BVALID          =>      S_AXI_BVALID            ,
        S_AXI_BREADY          =>      S_AXI_BREADY            ,
        S_AXI_ARADDR          =>      S_AXI_ARADDR            ,
        S_AXI_ARVALID         =>      S_AXI_ARVALID           ,
        S_AXI_ARREADY         =>      S_AXI_ARREADY           ,
        S_AXI_RDATA           =>      S_AXI_RDATA             ,
        S_AXI_RRESP           =>      S_AXI_RRESP             ,
        S_AXI_RVALID          =>      s_axi_rvalid_i          ,
        S_AXI_RREADY          =>      S_AXI_RREADY            ,
        -- IPIC signals                                       
        Bus2IP_Clk            =>      sig_Bus2IP_Clk          ,
        Bus2IP_Resetn         =>      sig_Bus2IP_Resetn       ,
        Bus2IP_Addr           =>      sig_Bus2IP_Addr         ,
        Bus2IP_RNW            =>      sig_Bus2IP_RNW          ,
        Bus2IP_BE             =>      sig_Bus2IP_BE           ,
        Bus2IP_CS             =>      sig_Bus2IP_CS           ,
        Bus2IP_RdCE           =>      sig_Bus2IP_RdCE         ,
        Bus2IP_WrCE           =>      sig_Bus2IP_WrCE         ,
        Bus2IP_Data           =>      sig_Bus2IP_Data         ,
        IP2Bus_Data           =>      sig_IP2Bus_Data         ,
        IP2Bus_WrAck          =>      sig_IP2Bus_WrAck        ,
        IP2Bus_RdAck          =>      sig_IP2Bus_RdAck        ,
        IP2Bus_Error          =>      sig_IP2Bus_Error        
    );                                                         
    S_AXI_RVALID <= s_axi_rvalid_i;
    axil_rdata_ack_i <= s_axi_rvalid_i and S_AXI_RREADY;

    gaxif: if (C_DATA_INTERFACE_TYPE = 1) generate
      constant AXI4_TDFD_ADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := C_AXI4_BASEADDR + TDFD_OFFSET;
      constant AXI4_RDFD_ADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := C_AXI4_BASEADDR + RDFD_OFFSET;

      signal axi4_wr_select      : std_logic := '0';
      signal axi4_rd_select      : std_logic := '0';
      signal axi4_awready        : std_logic := '0';
      signal axi4_arready        : std_logic := '0';
      signal axi4_rvalid         : std_logic := '0';
      signal axi4_rlast          : std_logic := '0';
      signal axi4_rst            : std_logic := '1';
    begin
 
      axi4_fifo_rd_en_i  <= (sig_axi_rd_en or axi4_rlast) and axi4_rdata_ack_i;
      axi4_fifo_wr_en_i  <= sig_axi_wr_en;
      axi4_rdata_ack_i   <= S_AXI4_RREADY and axi4_rvalid;
      S_AXI4_RVALID      <= axi4_rvalid;
      S_AXI4_RLAST       <= axi4_rlast;
      S_AXI4_AWREADY     <= axi4_awready;
      S_AXI4_ARREADY     <= axi4_arready;
      axi4_tdfd_en       <= (S_AXI4_AWVALID and axi4_awready) when (S_AXI4_AWADDR = AXI4_TDFD_ADDR) else '0';
      axi4_rdfd_en       <= (S_AXI4_ARVALID and axi4_arready) when (S_AXI4_ARADDR = AXI4_RDFD_ADDR) else '0';

      grst1: if (C_USE_TX_DATA = 1) generate
        axi4_rst <= axi4_fifo_readyn;
      end generate grst1;

      grst2: if (C_USE_TX_DATA = 0) generate
        axi4_rst <= S_AXI_ARESETN;
      end generate grst2;

      COMP_AXI4: entity axi_fifo_mm_s_v4_1_5.axi_wrapper
        generic map(
          C_AXI_TYPE         => 1,
          C_HAS_AXI_ID       => 1,
          C_AXI_ID_WIDTH     => C_S_AXI_ID_WIDTH,
          C_AXI_ADDR_WIDTH   => C_S_AXI_ADDR_WIDTH,
          C_AXI_WDATA_WIDTH  => C_S_AXI4_DATA_WIDTH,
          C_TX_FIFO_DEPTH    => C_TX_FIFO_DEPTH,
          C_RX_FIFO_DEPTH    => C_RX_FIFO_DEPTH
        )
        port map(
          S_ACLK             => S_AXI_ACLK       ,
          S_ARESETN          => axi4_rst,
          S_AXI_AWID         => S_AXI4_AWID   ,
          S_AXI_AWADDR       => S_AXI4_AWADDR ,
          S_AXI_AWLEN        => S_AXI4_AWLEN  ,
          S_AXI_AWSIZE       => S_AXI4_AWSIZE ,
          S_AXI_AWBURST      => S_AXI4_AWBURST,
          S_AXI_AWVALID      => axi4_tdfd_en,
          S_AXI_AWREADY      => axi4_awready,
          S_AXI_WDATA        => S_AXI4_WDATA  ,
          S_AXI_WSTRB        => S_AXI4_WSTRB  ,
          S_AXI_WLAST        => S_AXI4_WLAST  ,
          S_AXI_WVALID       => S_AXI4_WVALID ,
          S_AXI_WREADY       => S_AXI4_WREADY ,
          S_AXI_BID          => S_AXI4_BID    ,
          S_AXI_BRESP        => S_AXI4_BRESP  ,
          S_AXI_BVALID       => S_AXI4_BVALID ,
          S_AXI_BREADY       => S_AXI4_BREADY ,
          S_AXI_ARID         => S_AXI4_ARID   ,
          S_AXI_ARADDR       => S_AXI4_ARADDR ,
          S_AXI_ARLEN        => S_AXI4_ARLEN  ,
          S_AXI_ARSIZE       => S_AXI4_ARSIZE ,
          S_AXI_ARBURST      => S_AXI4_ARBURST,
          S_AXI_ARVALID      => axi4_rdfd_en,
          S_AXI_ARREADY      => axi4_arready,
          S_AXI_RID          => S_AXI4_RID    ,
          S_AXI_RDATA        => open,
          S_AXI_RRESP        => S_AXI4_RRESP  ,
          S_AXI_RLAST        => axi4_rlast  ,
          S_AXI_RVALID       => axi4_rvalid,
          S_AXI_RREADY       => S_AXI4_RREADY ,
          S_AXI_AWADDR_OUT   => sig_axi_awaddr_out,
          S_AXI_WR_EN        => sig_axi_wr_en,
          S_AXI_ARADDR_OUT   => sig_axi_araddr_out,
          S_AXI_RD_EN        => sig_axi_rd_en
      
        );
    end generate gaxif;

    COMP_IPIC2AXI_S : entity axi_fifo_mm_s_v4_1_5.ipic2axi_s
      generic map(
        C_FAMILY                => C_FAMILY,
        C_DATA_WIDTH            => C_S_AXI_DATA_WIDTH,
        C_AXI4_DATA_WIDTH       => if_then_else(C_DATA_INTERFACE_TYPE = 0, C_S_AXI_DATA_WIDTH,C_S_AXI4_DATA_WIDTH),
        C_DEST_WIDTH            => C_MAX_DEST_WIDTH,
        C_TX_FIFO_DEPTH         => C_TX_FIFO_DEPTH,
        C_RX_FIFO_DEPTH         => C_RX_FIFO_DEPTH,
        C_TX_FIFO_PF_THRESHOLD  => C_TX_FIFO_PF_THRESHOLD,
        C_TX_FIFO_PE_THRESHOLD  => C_TX_FIFO_PE_THRESHOLD,
        C_RX_FIFO_PF_THRESHOLD  => C_RX_FIFO_PF_THRESHOLD,
        C_RX_FIFO_PE_THRESHOLD  => C_RX_FIFO_PE_THRESHOLD,
        C_USE_TX_CUT_THROUGH    => C_USE_TX_CUT_THROUGH,
        C_USE_RX_CUT_THROUGH    => C_USE_RX_CUT_THROUGH,
        C_TOTAL_NO_OF_INTR      => C_MAX_INTR_NO,
        C_TOTAL_NO_OF_REG       => C_MAX_REG_NO,
        C_DATA_INTERFACE_TYPE   => C_DATA_INTERFACE_TYPE,
        C_HAS_AXIS_TKEEP        => C_HAS_AXIS_TKEEP,
        C_HAS_AXIS_TSTRB        => C_HAS_AXIS_TSTRB,
        C_HAS_AXIS_TDEST        => C_HAS_AXIS_TDEST,
        C_HAS_AXIS_TUSER        => C_HAS_AXIS_TUSER,
        C_HAS_AXIS_TID          => C_HAS_AXIS_TID,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_USE_TX_DATA           => C_USE_TX_DATA,
        C_USE_RX_DATA           => C_USE_RX_DATA,
        C_USE_TX_CTRL           => C_USE_TX_CTRL
	)
      port map (
        -- Register access signals 
        Bus2IP_Clk              => S_AXI_ACLK,
        Bus2IP_Reset            => sig_Bus2IP_Reset,
        IP2Bus_Data             => sig_IP2Bus_Data,
        IP2Bus_WrAck            => sig_IP2Bus_WrAck,
        IP2Bus_RdAck            => sig_IP2Bus_RdAck,
        IP2Bus_Error            => sig_IP2Bus_Error,
        Bus2IP_Data             => sig_Bus2IP_Data,
        Bus2IP_RNW              => sig_Bus2IP_RNW,
        Bus2IP_BE               => sig_Bus2IP_BE,
        Bus2IP_CS               => sig_Bus2IP_CS(0),
        Bus2IP_RdCE             => sig_Bus2IP_RdCE,
        Bus2IP_WrCE             => sig_Bus2IP_WrCE,
        axil_rdata_ack          => axil_rdata_ack_i,         
        axi4_tdfd_en            => axi4_tdfd_en,         
        axi4_rdfd_en            => axi4_rdfd_en,         

        -- Data path signals for AXI4
        axi4_fifo_wr_en         => axi4_fifo_wr_en_i,         
        S_AXI4_WDATA            => S_AXI4_WDATA,         
        S_AXI4_WSTRB            => S_AXI4_WSTRB,         
        axi4_fifo_rd_en         => axi4_fifo_rd_en_i,         
        S_AXI4_RDATA            => S_AXI4_RDATA,         
        axi4_rdata_ack          => axi4_rdata_ack_i,         
        axi4_fifo_readyn        => axi4_fifo_readyn,         

        tx_str_AReset           => Axi_Str_TxD_AReset,
        tx_str_Valid            => AXI_STR_TXD_TVALID,
        tx_str_Ready            => AXI_STR_TXD_TREADY,
        tx_str_Last             => AXI_STR_TXD_TLAST,
        tx_str_Strb             => axi_str_txd_tkeep_i,
        tx_str_Dest             => axi_str_txd_tdest_i,
        tx_str_Din              => AXI_STR_TXD_TDATA,

        txc_str_AReset          => Axi_Str_TxC_AReset,
        txc_str_Valid           => AXI_STR_TXC_TVALID,
        txc_str_Ready           => AXI_STR_TXC_TREADY,
        txc_str_Last            => AXI_STR_TXC_TLAST,
        txc_str_Strb            => axi_str_txc_tkeep_i,
        txc_str_Din             => AXI_STR_TXC_TDATA,

        rx_str_AReset           => Axi_Str_RxD_AReset,
        rx_str_Valid            => AXI_STR_RXD_TVALID,
        rx_str_Ready            => AXI_STR_RXD_TREADY,
        rx_str_Last             => AXI_STR_RXD_TLAST,
        rx_str_Strb             => axi_str_rxd_tkeep_i,
        rx_str_Dest             => axi_str_rxd_tdest_i,
        rx_str_Din              => AXI_STR_RXD_TDATA,

        Interrupt               => Interrupt
      );

    s2mm_prmry_reset_out_n <=  not Axi_Str_RxD_AReset;
    mm2s_prmry_reset_out_n <=  not Axi_Str_TxD_AReset;
    mm2s_cntrl_reset_out_n <=  not Axi_Str_TxC_AReset;
    sig_Bus2IP_Reset       <=  not sig_Bus2IP_Resetn;

    gtxd_tdest: if (C_HAS_AXIS_TDEST = 1) generate
      axi_str_txd_tdest      <= axi_str_txd_tdest_i;
      axi_str_txc_tdest      <= axi_str_txd_tdest_i;
      axi_str_rxd_tdest_i    <= axi_str_rxd_tdest;
    end generate gtxd_tdest;

    gntxd_tdest: if (C_HAS_AXIS_TDEST = 0) generate
      axi_str_txd_tdest      <= (others => '0');
      axi_str_txc_tdest      <= (others => '0');
      axi_str_rxd_tdest_i    <= (others => '0');
    end generate gntxd_tdest;

    gtxd_tkeep: if (C_HAS_AXIS_TKEEP = 1) generate
      axi_str_txd_tkeep      <= axi_str_txd_tkeep_i;
      axi_str_txc_tkeep      <= axi_str_txc_tkeep_i;
      axi_str_rxd_tkeep_i    <= axi_str_rxd_tkeep;
    end generate gtxd_tkeep;

    gntxd_tkeep: if (C_HAS_AXIS_TKEEP = 0) generate
      axi_str_txd_tkeep      <= (others => '1');
      axi_str_txc_tkeep      <= (others => '1');
      axi_str_rxd_tkeep_i    <= (others => '1');
    end generate gntxd_tkeep;

end structure;
