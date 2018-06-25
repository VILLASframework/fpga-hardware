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
-- Filename:        ipic2llink.vhd
-- Version:         v4_1
-- Description:     sub-level module providing AXI slave and IPIC interface
--
------------------------------------------------------------------------------
-- Structure:   
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
--                      fifo.vhd
------------------------------------------------------------------------------
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.conv_integer;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;

library unisim;
use unisim.vcomponents.all;

library axi_lite_ipif_v3_0_3;
library lib_pkg_v1_0_2;
library lib_fifo_v1_0_4;
use lib_pkg_v1_0_2.lib_pkg.all;
use lib_fifo_v1_0_4.all;
use lib_pkg_v1_0_2.lib_pkg.log2;
use lib_pkg_v1_0_2.lib_pkg.max2;
use axi_lite_ipif_v3_0_3.ipif_pkg.all; 

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.axi_fifo_mm_s_pkg.all;

entity ipic2axi_s is

  generic (
    C_FAMILY                : string;
    C_DEST_WIDTH            : integer := 4;
    C_DATA_WIDTH            : integer := 32;
    C_AXI4_DATA_WIDTH       : integer := 32;
    C_TX_FIFO_DEPTH         : integer := 2048;
    C_RX_FIFO_DEPTH         : integer := 2048;
    C_TX_FIFO_PF_THRESHOLD  : integer := 10;
    C_TX_FIFO_PE_THRESHOLD  : integer := 7;
    C_RX_FIFO_PF_THRESHOLD  : integer := 10;
    C_RX_FIFO_PE_THRESHOLD  : integer := 7;
    C_USE_TX_CUT_THROUGH    : integer := 0;
    C_USE_RX_CUT_THROUGH    : integer := 0;
    C_TOTAL_NO_OF_INTR      : integer := 13;
    C_TOTAL_NO_OF_REG       : integer := 13;
    C_DATA_INTERFACE_TYPE   : integer := 0;
    C_HAS_AXIS_TKEEP        : integer := 0;
    C_HAS_AXIS_TSTRB        : integer := 0;
    C_HAS_AXIS_TDEST        : integer := 0;
    C_HAS_AXIS_TUSER        : integer := 0;
    C_HAS_AXIS_TID          : integer := 0;
    C_AXIS_TDEST_WIDTH      : integer := 0;
    C_AXIS_TUSER_WIDTH      : integer := 0;
    C_AXIS_TID_WIDTH        : integer := 0;
    C_USE_TX_DATA           : integer := 1;
    C_USE_RX_DATA           : integer := 1;
    C_USE_TX_CTRL           : integer := 1
    );
  port (
    Bus2IP_Clk              : in  std_logic := '0';
    Bus2IP_Reset            : in  std_logic := '0';
    IP2Bus_Data             : out std_logic_vector(0 to C_DATA_WIDTH-1) := (others => '0');
    IP2Bus_WrAck            : out std_logic := '0';
    IP2Bus_RdAck            : out std_logic := '0';
    IP2Bus_Error            : out std_logic := '0';
    Bus2IP_Data             : in  std_logic_vector(0 to C_DATA_WIDTH-1) := (others => '0');
    Bus2IP_RNW              : in  std_logic := '0';
    Bus2IP_BE               : in  std_logic_vector(0 to C_DATA_WIDTH/8-1) := (others => '0');
    Bus2IP_CS               : in  std_logic := '0';
    Bus2IP_RdCE             : in  std_logic_vector(0 to 12) := (others => '0');
    Bus2IP_WrCE             : in  std_logic_vector(0 to 12) := (others => '0');
    axil_rdata_ack          : in  std_logic := '0';
    axi4_tdfd_en            : in  std_logic := '0';
    axi4_rdfd_en            : in  std_logic := '0';

    axi4_fifo_wr_en         : in  std_logic := '0';
    S_AXI4_WDATA            : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');
    S_AXI4_WSTRB            : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    axi4_fifo_rd_en         : in  std_logic := '0';
    S_AXI4_RDATA            : out std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');
    axi4_rdata_ack          : in  std_logic := '0';
    axi4_fifo_readyn        : out std_logic := '0';
    
    -- TX AXI_S
    tx_str_AReset           : out std_logic := '0';
    tx_str_valid            : out std_logic := '0';
    tx_str_ready            : in  std_logic := '0';
    tx_str_last             : out std_logic := '0';
    tx_str_strb             : out std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    tx_str_dest             : out std_logic_vector(0 to C_AXIS_TDEST_WIDTH-1) := (others => '0');
    tx_str_din              : out std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');

    -- TX Control AXI_S
    txc_str_AReset          : out std_logic := '0';
    txc_str_Valid           : out std_logic := '0';
    txc_str_Ready           : in  std_logic := '0';
    txc_str_Last            : out std_logic := '0';
    txc_str_Strb            : out std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    txc_str_Din             : out std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');


    -- RX AXI_S
    rx_str_AReset           : out std_logic := '0';
    rx_str_valid            : in  std_logic := '0';
    rx_str_ready            : out std_logic := '0';
    rx_str_last             : in  std_logic := '0';
    rx_str_strb             : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH/8-1) := (others => '0');
    rx_str_dest             : in  std_logic_vector(0 to C_AXIS_TDEST_WIDTH-1) := (others => '0');
    rx_str_din              : in  std_logic_vector(0 to C_AXI4_DATA_WIDTH-1) := (others => '0');


    --interrupt
    Interrupt               : out std_logic := '0'
    
  );     
end entity;

architecture beh of ipic2axi_s is

  ATTRIBUTE DowngradeIPIdentifiedWarnings: STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF beh : ARCHITECTURE IS "yes";

  -----------------------------------------------------------------------------
  -- Register Name
  -----------------------------------------------------------------------------
  constant REG_ISR           : std_logic_vector(4 downto 0) := "00000";   --0x00
  constant REG_IER           : std_logic_vector(4 downto 0) := "00001";   --0x04
  constant REG_TDFR          : std_logic_vector(4 downto 0) := "00010";   --0x08
  constant REG_TDFV          : std_logic_vector(4 downto 0) := "00011";   --0x0c
  constant REG_TDFD          : std_logic_vector(4 downto 0) := "00100";   --0x10
  constant REG_TLF           : std_logic_vector(4 downto 0) := "00101";   --0x14
  constant REG_RDFR          : std_logic_vector(4 downto 0) := "00110";   --0x18
  constant REG_RDFO          : std_logic_vector(4 downto 0) := "00111";   --0x1c
  constant REG_RDFD          : std_logic_vector(4 downto 0) := "01000";   --0x20
  constant REG_RLF           : std_logic_vector(4 downto 0) := "01001";   --0x24
  constant REG_SRR           : std_logic_vector(4 downto 0) := "01010";   --0x28
  constant REG_TDR           : std_logic_vector(4 downto 0) := "01011";   --0x2c
  constant REG_RDR           : std_logic_vector(4 downto 0) := "01100";   --0x30
  constant REG_TID           : std_logic_vector(4 downto 0) := "01101";   --0x3c
  constant REG_TUSER         : std_logic_vector(4 downto 0) := "01110";   --0x38
  constant REG_RID           : std_logic_vector(4 downto 0) := "01111";   --0x3c
  constant REG_RUSER         : std_logic_vector(4 downto 0) := "10000";   --0x40

  -----------------------------------------------------------------------------
  -- Bit slice of data in fifo
  -----------------------------------------------------------------------------
  constant C_FLAG : integer := if_then_else(C_DATA_INTERFACE_TYPE = 0, C_DATA_WIDTH, C_AXI4_DATA_WIDTH);
  -----------------------------------------------------------------------------
  -- Register Bits
  -----------------------------------------------------------------------------
  constant C_DISR            : integer := 0;      -- (31)   --0x00
  constant C_DIER            : integer := 1;      -- (30)   --0x04
  constant C_TRR             : integer := 2;      -- (29)   --0x08
  constant C_TDFV            : integer := 3;      -- (28)   --0x0c
  constant C_TDF             : integer := 4;      -- (27)   --0x10
  constant C_TLR             : integer := 5;      -- (26)   --0x14
  constant C_RRR             : integer := 6;      -- (25)   --0x18
  constant C_RDFO            : integer := 7;      -- (24)   --0x1c
  constant C_RDF             : integer := 8;      -- (23)   --0x20
  constant C_RLR             : integer := 9;      -- (22)   --0x24
  constant C_LL_RST          : integer := 10;     -- (21)   --0x28
  constant C_TDEST           : integer := 11;     -- (20)   --0x2c
  constant C_RDEST           : integer := 12;     -- (19)   --0x30
  -----------------------------------------------------------------------------
  -- Register CEs
  -----------------------------------------------------------------------------
  constant C_DISR_CE         : std_logic_vector(0 to 12) := ( 0=>'1', others => '0');
  constant C_DIER_CE         : std_logic_vector(0 to 12) := ( 1=>'1', others => '0');
  constant C_TRR_CE          : std_logic_vector(0 to 12) := ( 2=>'1', others => '0');
  constant C_TDFV_CE         : std_logic_vector(0 to 12) := ( 3=>'1', others => '0');
  constant C_TDF_CE          : std_logic_vector(0 to 12) := ( 4=>'1', others => '0');
  constant C_TLR_CE          : std_logic_vector(0 to 12) := ( 5=>'1', others => '0');
  constant C_RRR_CE          : std_logic_vector(0 to 12) := ( 6=>'1', others => '0');
  constant C_RDFO_CE         : std_logic_vector(0 to 12) := ( 7=>'1', others => '0');
  constant C_RDF_CE          : std_logic_vector(0 to 12) := ( 8=>'1', others => '0');
  constant C_RLR_CE          : std_logic_vector(0 to 12) := ( 9=>'1', others => '0');
  constant C_LL_RST_CE       : std_logic_vector(0 to 12) := (10=>'1', others => '0');
  constant C_TDEST_CE        : std_logic_vector(0 to 12) := (11=>'1', others => '0');
  constant C_RDEST_CE        : std_logic_vector(0 to 12) := (12=>'1', others => '0');
  -----------------------------------------------------------------------------
  -----------------------------------------------------------------------------
  -- Interrupt bits
  -----------------------------------------------------------------------------
  constant C_RPURE           : integer := 0;
  constant C_RPORE           : integer := 1;
  constant C_RURE            : integer := 2;
  constant C_TORE            : integer := 3;
  constant C_TC              : integer := 4;
  constant C_RC              : integer := 5;
  constant C_TMSE            : integer := 6;
  constant C_TRC             : integer := 7;
  constant C_RRC             : integer := 8;
  constant C_TFPF            : integer := 9;  -- TX FIFO Programmable FULL
  constant C_TFPE            : integer := 10; -- TX FIFO Programmable EMPTY
  constant C_RFPF            : integer := 11; -- RX FIFO Programmable FULL
  constant C_RFPE            : integer := 12; -- RX FIFO Programmable EMPTY
  constant NUM_INTS          : integer := C_TOTAL_NO_OF_INTR;
  -----------------------------------------------------------------------------
  -- reset vector
  -----------------------------------------------------------------------------
  constant C_RESET_VECTOR    : std_logic_vector(C_DATA_WIDTH-8 to C_DATA_WIDTH-1):=x"a5";
  constant NUM_BYTE          : integer := log2roundup(C_AXI4_DATA_WIDTH/8);
  constant C_AXI4_FIFO_WIDTH : integer := if_then_else(C_DATA_INTERFACE_TYPE = 0, C_DATA_WIDTH,C_AXI4_DATA_WIDTH);
  constant RLR_APPEND_1_BITS : integer := 32-1-15-NUM_BYTE;
  constant RLR_APPEND_2_BITS : integer := if_then_else(C_AXI4_DATA_WIDTH = 64, 3, 2);
  constant RLR_APPEND_2      : std_logic_vector(NUM_BYTE-1 downto 0):= (others => '0');
  
  constant IS_BYTE_ALIGNED   : std_logic_vector(NUM_BYTE-1 downto 0):= (others => '0');
  constant TX_MAX_PKT_SIZE   : integer := if_then_else (C_USE_TX_CUT_THROUGH = 0, NUM_BYTE + 20, 23);
  constant RX_MAX_PKT_SIZE   : integer := if_then_else (C_USE_RX_CUT_THROUGH = 0, NUM_BYTE + 20, 23);
  
  type slv_array is array (C_DISR to C_DIER) of std_logic_vector(0 to NUM_INTS-1);
  signal sig_register_array : slv_array;

  type IPIC_STATES is (IDLE, DONE);
  signal IPIC_STATE : IPIC_STATES;                   


  type TX_STATES is (IDLE, PRIME, DLY, TX, LAST);
  signal TX_STATE : TX_STATES;
  
  type TXC_STATES is (IDLE, TRASMITCBEGIN, TRASMITCEND);
  signal TXC_STATE : TXC_STATES;
  
  type RX_STATES is (IDLE, RX, LAST);
  signal RX_STATE : RX_STATES;

  signal sig_txd_rd_a_empty      : std_logic := '0';
  signal sig_txd_wr_en           : std_logic := '0';
  signal txd_wr_en               : std_logic := '0';
  signal sig_txd_sb_wr_en        : std_logic := '0';
  signal sig_txd_rd_en_combined  : std_logic := '0';
  signal sig_txd_wr_data         : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal txd_wr_data             : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal sig_txd_wr_a_full       : std_logic := '0';
  signal sig_txd_pf_event        : std_logic := '0';
  signal sig_txd_prog_full       : std_logic := '0';
  signal sig_txd_prog_full_d1    : std_logic := '0';
  signal sig_txd_pe_event        : std_logic := '0';
  signal sig_txd_prog_empty_d1   : std_logic := '0';
  signal sig_txd_reset           : std_logic := '0';
  signal sig_txd_vacancy         : std_logic_vector(31 downto 0) := (others => '0');
  signal sig_tx_channel_reset    : std_logic := '0';
  signal sig_txd_packet_size     : integer;
  signal sig_txd_dest            : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal sig_txd_dest_fifo       : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  
  signal rx_str_valid_int        : std_logic := '0';
  
  signal sig_rxd_wr_en           : std_logic := '0';
  signal sig_rxd_sb_wr_en        : std_logic := '0';
  signal sig_rxd_rd_en           : std_logic := '0';
  signal sig_rxd_rd_data         : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal sig_rxd_wr_data         : std_logic_vector(C_AXI4_DATA_WIDTH downto 0) := (others => '0');
  signal sig_rxd_rd_empty        : std_logic := '0';
  signal sig_rxd_wr_full         : std_logic := '0';
  signal sig_rxd_wr_a_full       : std_logic := '0';
  signal sig_rxd_pf_event        : std_logic := '0';
  signal sig_rxd_prog_full_d1    : std_logic := '0';
  signal sig_rxd_prog_full       : std_logic := '0';
  signal sig_rxd_pe_event        : std_logic := '0';
  signal sig_rxd_prog_empty_d1   : std_logic := '0';
  signal sig_rxd_prog_empty      : std_logic := '0';
  signal rx_fg_len_empty_d1      : std_logic := '0';
  signal rx_fg_len_empty_fe      : std_logic := '0';
  signal rx_complete             : std_logic := '0';
  signal sig_rxd_reset           : std_logic := '0';
  signal sig_rxd_occupancy       : std_logic_vector(31 downto 0) := (others => '0');
  signal sig_rx_channel_reset    : std_logic := '0';
  signal sig_rxd_wr_length       : integer := 0;
  signal sig_rxd_rd_length       : std_logic_vector(RX_MAX_PKT_SIZE-1 downto 0) := (others => '0');
  signal sig_rxd_dest            : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
  signal sig_rxd_dest_fifo       : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');

  signal sig_ip2bus_ipr          : std_logic_vector(0 to NUM_INTS-1) := (others => '0');
  signal sig_ip2bus_data         : std_logic_vector(0 to C_DATA_WIDTH-1) := (others => '0');
  signal sig_ip2bus_data_mux     : std_logic := '0';
  signal sig_Bus2IP_RdCE         : std_logic_vector(0 to 12) := (others => '0');
  signal sig_Bus2IP_WrCE         : std_logic_vector(0 to 12) := (others => '0');

  signal sig_str_rst             : std_logic := '0';
  signal sig_rx_str_ready        : std_logic := '0';
  signal sig_rd_decode           : std_logic := '0';
  signal sig_rd_rlen             : std_logic := '0';
  signal tx_str_valid_i          : std_logic := '0';
  signal tx_str_last_i           : std_logic := '0';
  signal rx_str_ready_i          : std_logic := '0';
  signal rx_len_wr_en            : std_logic := '0';
  signal axi4_rlast              : std_logic := '0';
  signal rx_fg_len_empty         : std_logic := '0';
  signal tx_fifo_or              : std_logic := '0';
  signal fg_rxd_wr_length        : std_logic_vector(RX_MAX_PKT_SIZE-1 downto 0) := (others => '0');
  signal active_addr             : std_logic_vector(4 downto 0) := (others => '0');
  signal rx_partial_pkt          : std_logic := '0';
  
  begin

  sig_Bus2IP_WrCE  <= Bus2IP_WrCE;
  sig_Bus2IP_RdCE  <= Bus2IP_RdCE;
  tx_str_AReset    <= sig_txd_reset or sig_str_rst;
  rx_str_AReset    <= sig_rxd_reset or sig_str_rst;
  rx_str_valid_int <= rx_str_valid ;

  -------------------------------------------------------------------------------------------------
  --  Transmit Data Path
  -------------------------------------------------------------------------------------------------
  gtxd: if (C_USE_TX_DATA = 1) generate
    signal sig_txd_prog_empty      : std_logic := '0';
    signal sig_txd_occupancy       : std_logic_vector(31 downto 0) := (others => '0');
    signal sig_txd_wr_full         : std_logic := '0';
  begin
    COMP_TXD_FIFO : entity axi_fifo_mm_s_v4_1_5.fifo
      generic map(
        C_FAMILY                => C_FAMILY,
        C_USE_FIFO_GEN          => 1,
        C_IPIF_DWIDTH           => C_AXI4_DATA_WIDTH,
        C_OFFSET                => 1,
        C_DEPTH                 => C_TX_FIFO_DEPTH,
        C_PF_THRESHOLD          => C_TX_FIFO_PF_THRESHOLD,
        C_PE_THRESHOLD          => C_TX_FIFO_PE_THRESHOLD,
        C_DATA_FLOW_DIR         => "MM2S",
        C_DATA_INTERFACE_TYPE   => C_DATA_INTERFACE_TYPE,
        C_USE_TX_CUT_THROUGH    => C_USE_TX_CUT_THROUGH,
        C_HAS_AXIS_TID          => C_HAS_AXIS_TID,
        C_HAS_AXIS_TDEST        => C_HAS_AXIS_TDEST,
        C_HAS_AXIS_TUSER        => C_HAS_AXIS_TUSER,
        C_HAS_AXIS_TLAST        => 1,
        C_HAS_AXIS_TSTRB        => C_HAS_AXIS_TSTRB,
        C_HAS_AXIS_TKEEP        => C_HAS_AXIS_TKEEP,
        C_AXIS_TDATA_WIDTH      => C_AXI4_DATA_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH
      )
      port map(
        Bus2IP_Clk              => Bus2IP_Clk,
        Bus2IP_Reset            => sig_txd_reset,
        sb_wr_en                => sig_txd_sb_wr_en,
        wr_en                   => txd_wr_en,
        rd_en                   => sig_txd_rd_en_combined, 
        rd_data                 => open, 
        wr_data                 => txd_wr_data, 
        empty                   => open,
        a_empty                 => sig_txd_rd_a_empty,
        full                    => sig_txd_wr_full, 
        a_full                  => sig_txd_wr_a_full,
        prog_full               => sig_txd_prog_full,
        prog_empty              => sig_txd_prog_empty,
        vacancy                 => sig_txd_vacancy,
        occupancy               => sig_txd_occupancy,
  
        mm2s_tstrb              => S_AXI4_WSTRB,
        mm2s_tdest              => sig_txd_dest,
        s2mm_tstrb              => (others => '0'),
        s2mm_tdest              => (others => '0'),
  
        axis_tvalid             => tx_str_valid_i,
        axis_tready             => tx_str_ready,
        axis_tdata              => tx_str_din,
        axis_tstrb              => tx_str_strb,
        axis_tkeep              => open,
        axis_tlast              => tx_str_last_i,
        axis_tid                => open,
        axis_tdest              => tx_str_dest,
        axis_tuser              => open
      );
    tx_str_valid <= tx_str_valid_i;
    tx_str_last  <= tx_str_last_i;
    axi4_fifo_readyn <= not sig_txd_wr_full;
  
    sig_txd_rd_en_combined <= (tx_str_ready and (not sig_txd_rd_a_empty));
  
    gaxi4_wdata: if (C_DATA_INTERFACE_TYPE = 1) generate
      txd_wr_data <= sig_txd_wr_data when (sig_txd_sb_wr_en = '1') else '0' & S_AXI4_WDATA;
      txd_wr_en   <= sig_txd_wr_en when (sig_txd_sb_wr_en = '1') else axi4_fifo_wr_en;
    end generate gaxi4_wdata;
  
    gaxil_wdata: if (C_DATA_INTERFACE_TYPE = 0) generate
      txd_wr_data <= sig_txd_wr_data;
      txd_wr_en   <= sig_txd_wr_en;
    end generate gaxil_wdata;

    -----------------------------------------------------------------------------
    -- This is the MM to TX side Packet size counter logic
    -----------------------------------------------------------------------------
    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(sig_txd_reset = '1') then
          sig_txd_packet_size <= 0;
        elsif(sig_tx_channel_reset = '1' or sig_txd_sb_wr_en = '1') then
          sig_txd_packet_size <= 0;
        elsif((sig_txd_wr_en = '1' and C_DATA_INTERFACE_TYPE = 0) or (axi4_fifo_wr_en = '1' and C_DATA_INTERFACE_TYPE = 1)) then
          sig_txd_packet_size <= sig_txd_packet_size + 1;
        end if;
      end if;
    end process;

    tx_fifo_or       <= '1' when ((conv_integer(sig_txd_occupancy)) > C_TX_FIFO_DEPTH-3) else '0';
    sig_txd_pe_event <= (not sig_txd_prog_empty_d1) and sig_txd_prog_empty;
    sig_txd_pf_event <= sig_txd_prog_full and (not sig_txd_prog_full_d1);
    sig_txd_reset    <= Bus2IP_Reset or sig_str_rst or sig_tx_channel_reset;

    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset = '1') then 
          sig_txd_prog_empty_d1   <= '1';
          sig_txd_prog_full_d1    <= '0';
        else
          sig_txd_prog_empty_d1 <= sig_txd_prog_empty;
          sig_txd_prog_full_d1  <= sig_txd_prog_full;
        end if;
      end if;
    end process;

  end generate gtxd;
 
  -------------------------------------------------------------------------------------------------
  -- This is the TX Control Streaming state machine
  -------------------------------------------------------------------------------------------------
  gtxc: if (C_USE_TX_CTRL = 1) generate
    signal txc_str_Lastsig         : std_logic := '0';
    signal txc_cntr                : std_logic_vector(2 downto 0) := (others => '0');
  begin

    txc_str_AReset   <= Bus2IP_Reset or sig_str_rst;  
    txc_str_Din      <= (others =>'1');
    txc_str_Strb     <= (others =>'1');
    txc_str_Last     <= txc_str_Lastsig;

    process(Bus2IP_Clk)
      begin
        if(rising_edge(Bus2IP_Clk)) then
          if(Bus2IP_Reset='1' or sig_str_rst='1') then
            txc_str_Valid   <= '0';
            txc_str_Lastsig <= '0';
            txc_cntr        <= "000";
            TXC_STATE       <= IDLE;
          else
            case TXC_STATE is
              when IDLE =>
                if tx_str_valid_i = '1' then
                  TXC_STATE <= TRASMITCBEGIN;
                  txc_str_Valid <= '1';
                end if;
              when TRASMITCBEGIN =>
                if txc_str_Ready = '1' then
                  txc_cntr <= txc_cntr+1;
                  if txc_cntr = "100" then
                    txc_str_Lastsig <= '1';
                    TXC_STATE       <= TRASMITCEND;
                  end if;
                end if;
              when TRASMITCEND =>
                if txc_str_Ready = '1' then
                  txc_str_Valid   <= '0';
                  txc_str_Lastsig <= '0';
                  txc_cntr        <= "000";
                end if;
                if tx_str_ready = '1' and tx_str_last_i = '1' and txc_str_Lastsig = '0' then
                  TXC_STATE <= IDLE;
                end if;
              when others =>
                TXC_STATE <= IDLE;
            end case;
          end if;
        end if;
    end process;
  end generate gtxc;

  -------------------------------------------------------------------------------------------------
  -- Interrupt Register
  -------------------------------------------------------------------------------------------------
  sig_ip2bus_ipr <= sig_register_array(C_DISR) and sig_register_array(C_DIER);
  process(sig_ip2bus_ipr)
    begin
      Interrupt     <= '0';
      for i in 0 to NUM_INTS-1 loop
        if(sig_ip2bus_ipr(i)='1') then
          Interrupt <= '1';
        end if;
      end loop;
  end process;

  -------------------------------------------------------------------------------------------------
  -- IPIC interface and registers
  -------------------------------------------------------------------------------------------------
  process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset='1') then 
          sig_tx_channel_reset    <= '0';
          sig_rx_channel_reset    <= '0';
          sig_txd_wr_data         <= (others => '0');
          sig_txd_sb_wr_en        <= '0';
          sig_txd_wr_en           <= '0';
          sig_rxd_rd_en           <= '0';
          IP2Bus_RdAck            <= '0';
          IP2Bus_WrAck            <= '0';
          sig_ip2bus_data         <= (others => '0');
          sig_ip2bus_data_mux     <= '0';
          sig_register_array      <= (others => (others => '0'));
          sig_str_rst             <= '1';
          sig_rd_decode           <= '0';
          sig_rd_rlen             <= '0';
          IPIC_STATE              <= IDLE;
          sig_txd_dest            <= (others => '0');
        else
          sig_str_rst           <= '0';
          sig_rd_rlen           <= '0';

          if(sig_txd_reset = '1' and C_USE_TX_DATA = 1) then
            sig_tx_channel_reset  <= '0';
            sig_register_array(C_DISR)(C_TRC) <= '1';
          end if;
          
          if(sig_rxd_reset = '1' and C_USE_RX_DATA = 1) then
            sig_rx_channel_reset  <= '0';
            sig_register_array(C_DISR)(C_RRC) <= '1';
          end if;
          
          if(tx_str_last_i = '1' and tx_str_valid_i = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TC) <= tx_str_ready;
          end if;

          if (rx_fg_len_empty = '0' and rx_complete = '1' and C_USE_RX_DATA = 1) then
            sig_register_array(C_DISR)(C_RC) <= rx_complete;
          elsif (rx_fg_len_empty_fe = '1') then
            sig_register_array(C_DISR)(C_RC) <= rx_fg_len_empty_fe;
          end if;

          if(sig_txd_pf_event = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TFPF) <= '1';
          end if;

          if(sig_txd_pe_event = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TFPE) <= '1';
          end if;

          if (sig_rxd_pf_event = '1' and C_USE_RX_DATA = 1) then
            sig_register_array(C_DISR)(C_RFPF) <= '1';
          end if;

          if (sig_rxd_pe_event = '1' and C_USE_RX_DATA = 1) then
            sig_register_array(C_DISR)(C_RFPE) <= '1';
          end if;

          if(tx_fifo_or = '1' and C_USE_TX_DATA = 1) then
            sig_register_array(C_DISR)(C_TORE)  <= '1';
          end if;

          if (C_DATA_INTERFACE_TYPE = 1 and axi4_fifo_rd_en = '1' and C_USE_RX_DATA = 1) then
            if(sig_rx_channel_reset = '0') then
              if(conv_integer(sig_rxd_occupancy)/=0) then
                if(sig_rxd_rd_data(C_FLAG)='0' and C_USE_RX_CUT_THROUGH = 0) then
                  sig_register_array(C_DISR)(C_RPORE)<='1';
                end if;
              else              --read from empty fifo
                sig_register_array(C_DISR)(C_RURE)   <= '1';
              end if;
            end if;
          end if;

          IP2Bus_WrAck            <= '0';
          IP2Bus_RdAck            <= '0';
          IP2Bus_Error            <= '0';
          sig_txd_wr_en           <= '0';
          sig_txd_sb_wr_en        <= '0';
          sig_rd_decode           <= '0';
          sig_ip2bus_data         <= (others => '0');

          case IPIC_STATE is
            when IDLE =>
                if(Bus2IP_CS = '1') then
                  IPIC_STATE                                    <= DONE;
                  IP2Bus_RdAck                                  <= Bus2IP_RNW;
                  IP2Bus_WrAck                                  <= not Bus2IP_RNW;
                  
         --------------------- case of read -----------------------
                  case sig_Bus2IP_RdCE is
                    --interrupt status register
                    when "1000000000000" => --C_DISR_CE
                        sig_rd_decode                           <= Bus2IP_RNW;
                        sig_ip2bus_data(NUM_INTS to 31)         <= (others => '0');
                        sig_ip2bus_data(0 to NUM_INTS-1)        <= sig_register_array(C_DISR);
                      --interrupt enable register
                    when "0100000000000" => --C_DIER_CE
                        sig_rd_decode                           <= Bus2IP_RNW;
                        sig_ip2bus_data(NUM_INTS to 31)         <= (others => '0');
                        sig_ip2bus_data(0 to NUM_INTS-1)        <= sig_register_array(C_DIER);
                      --Tx Data Fifo Vacancy
                    when "0001000000000" => --C_TDFV_CE     --read only
                        if (C_USE_TX_DATA = 1) then
                          sig_rd_decode                           <= Bus2IP_RNW;
                          sig_ip2bus_data                         <= sig_txd_vacancy;
                        end if;
                      --Rx Data Fifo Occupancy
                    when "0000000100000" => --C_RDFO_CE => --X"128" =>     --read only
                        if (C_USE_RX_DATA = 1) then
                          sig_rd_decode                           <= Bus2IP_RNW;
                          if(rx_fg_len_empty = '1') then
                            sig_ip2bus_data                       <= (others => '0');
                          else
                            sig_ip2bus_data                       <= sig_rxd_occupancy;
                          end if;
                        end if;
                      --Rx Data Fifo Keyhole
                    when "0000000010000" => --C_RDF_CE     --read only
                        if (C_USE_RX_DATA = 1) then
                          if (C_DATA_INTERFACE_TYPE = 1) then
                            IPIC_STATE                            <= DONE;
                          else
                            sig_ip2bus_data_mux                   <= '1';
                            if(sig_rx_channel_reset='0') then
                              IPIC_STATE                            <= DONE;
                              sig_rd_decode                         <= Bus2IP_RNW;
                              if(conv_integer(sig_rxd_occupancy)/=0) then
                                sig_rxd_rd_en                      <= '1';
                                sig_ip2bus_data                    <= sig_rxd_rd_data(C_DATA_WIDTH-1 downto 0);
			        if(sig_rxd_rd_data(C_FLAG) = '0' and C_USE_RX_CUT_THROUGH = 0) then
                                  sig_register_array(C_DISR)(C_RPORE)<='1';
			        end if;
                              else              --read from empty fifo
                                sig_register_array(C_DISR)(C_RURE)   <= '1';
                                IP2Bus_Error                         <= '1';
                              end if;
                            end if;
                          end if;
                        end if;
                      --Rx Length Register
                    when "0000000001000" => --C_RLR_CE     --read only
                      if (C_USE_RX_DATA = 1) then
                        sig_ip2bus_data_mux                        <= '1';
                        if(sig_rx_channel_reset='0') then
                          IPIC_STATE                             <= DONE;
                          sig_rd_decode                          <= Bus2IP_RNW;
                          sig_rd_rlen                            <= not rx_fg_len_empty;
                          if ((rx_fg_len_empty='0')) then
                              sig_ip2bus_data(31-sig_rxd_rd_length'high to 31) <= sig_rxd_rd_length;
                              sig_ip2bus_data(0 to 31-sig_rxd_rd_length'high-1)     <= (others => '0');
                              sig_rxd_rd_en                      <= '0';
                          else              --read from empty fifo
                            if (C_USE_RX_CUT_THROUGH = 1) then
                              if (rx_partial_pkt = '1' and rx_complete = '0') then
                                sig_ip2bus_data           <= '1' & sig_rxd_occupancy(RLR_APPEND_1_BITS+14 downto 0) & RLR_APPEND_2;
                              else
                                sig_ip2bus_data           <= '1' & (sig_rxd_occupancy(RLR_APPEND_1_BITS+14 downto 0) - conv_std_logic_vector(4,(RLR_APPEND_1_BITS+15))) & RLR_APPEND_2;
                              end if;
                            else
                              sig_ip2bus_data           <= '0' & sig_rxd_occupancy(RLR_APPEND_1_BITS+14 downto 0) & RLR_APPEND_2;
                              sig_register_array(C_DISR)(C_RPURE)  <= '1';
                              IP2Bus_Error                         <= '1';
                            end if;
                          end if;
                        end if;
                      end if;
                      --Rx Destination
                    when "0000000000001" => --C_RDEST_CE => --X"4096"" =>     --read only
                      if (C_USE_RX_DATA = 1 and C_HAS_AXIS_TDEST = 1) then
                        sig_rd_decode                            <= Bus2IP_RNW;
                        sig_ip2bus_data(0 to C_DATA_WIDTH-C_AXIS_TDEST_WIDTH-1)       <= (others => '0');
                        sig_ip2bus_data(C_DATA_WIDTH-C_AXIS_TDEST_WIDTH to C_DATA_WIDTH-1) <= sig_rxd_dest_fifo;
                      else
                        sig_rd_decode         <= Bus2IP_RNW;
                        sig_ip2bus_data       <= (others => '0');
                      end if;
                    -- coverage off   
                    when others => null;
                    -- coverage on                  
                  end case;
         --------------------- case of write -----------------------

                  case sig_Bus2IP_WrCE is
                    --interrupt status register
                    when "1000000000000" => --C_DISR_CE
                        for i in 0 to C_TOTAL_NO_OF_INTR-1 loop
                          if(Bus2IP_Data(i)='1') then
                            sig_register_array(C_DISR)(i)       <= '0';
                          end if;
                        end loop;
                      --interrupt enable register
                    when "0100000000000" => --C_DIER_CE
                        sig_register_array(C_DIER)(0 to NUM_INTS-1) <= Bus2IP_Data(0 to NUM_INTS-1);
                      --Tx Reset Register
                    when "0010000000000" => --C_TRR_CE     --write only
                        if ((Bus2IP_Data(C_DATA_WIDTH-8 to C_DATA_WIDTH-1) = C_RESET_VECTOR) and C_USE_TX_DATA = 1) then
                          sig_tx_channel_reset                  <= '1';
                        end if;
                      --Tx Data Fifo Keyhole
                    when "0000100000000" => --C_TDF_CE     --write only
                        if(sig_tx_channel_reset = '0' and C_USE_TX_DATA = 1) then
                          if (C_DATA_INTERFACE_TYPE = 1) then
                            IPIC_STATE                            <= DONE;
                          else
                            if(tx_fifo_or = '0') then
                                sig_txd_wr_data(C_DATA_WIDTH-1 downto 0)      <= Bus2IP_Data;
                                sig_txd_wr_data(C_FLAG)           <= '0';
                                sig_txd_wr_en                     <= '1';
                                IPIC_STATE                        <= DONE;
                            else              --write to full fifo
                              IP2Bus_Error                        <= '1';
                            end if;
                          end if;
                        end if;
                      --Tx Data Length Register
                    when "0000010000000" => --C_TLR_CE     --write only
                      if(sig_tx_channel_reset = '0' and C_USE_TX_DATA = 1) then
                          IPIC_STATE                            <= DONE;
                            if(Bus2IP_Data(31-NUM_BYTE+1 to 31) = IS_BYTE_ALIGNED) then
                              if(Bus2IP_Data(0 to 31-NUM_BYTE) = sig_txd_packet_size) then 
                                sig_txd_wr_data(C_FLAG)             <= '1';
                                sig_txd_sb_wr_en                    <= '1';
                                sig_txd_wr_data(C_DATA_WIDTH-1 downto 0)        <= Bus2IP_Data;
                              else
                                sig_register_array(C_DISR)(C_TMSE)  <= '1';
                              end if;  
                            else
                              if(Bus2IP_Data(0 to 31-NUM_BYTE) = sig_txd_packet_size-1) then
                                sig_txd_wr_data(C_FLAG)             <= '1';
                                sig_txd_sb_wr_en                    <= '1';
                                sig_txd_wr_data(C_DATA_WIDTH-1 downto 0)        <= Bus2IP_Data;
                              else
                                sig_register_array(C_DISR)(C_TMSE)  <= '1';
                              end if;
                            end if;
                      end if;
                      --Rx Reset Register
                    when "0000001000000" => --C_RRR_CE =>     --write only
                        if ((Bus2IP_Data(C_DATA_WIDTH-8 to C_DATA_WIDTH-1) = C_RESET_VECTOR) and C_USE_RX_DATA = 1) then
                          sig_rx_channel_reset                  <= '1';
                        end if;

                    when "0000000000100" => --C_LL_RST_CE => --X"1024" =>
                      if(Bus2IP_Data(C_DATA_WIDTH-8 to C_DATA_WIDTH-1) = C_RESET_VECTOR) then
                        sig_str_rst                     <= '1';
                        sig_register_array                <= (others => (others => '0'));
                        sig_register_array(C_DISR)(C_TRC) <= '1';
                        sig_register_array(C_DISR)(C_RRC)  <= '1';
                      end if;
                      --Tx Destination
                    when "0000000000010" => --C_TDEST_CE => --X"2048"  =>     --write only
                      if(sig_tx_channel_reset = '0' and C_USE_TX_DATA = 1 and C_HAS_AXIS_TDEST = 1) then
                         sig_txd_dest      <= Bus2IP_Data(C_DATA_WIDTH-C_AXIS_TDEST_WIDTH to C_DATA_WIDTH-1);
                         IPIC_STATE        <= DONE;
                      end if;
                    -- coverage off   
                    when others => null;
                    -- coverage on                  
                  end case;                  
                end if;

            when DONE =>
              sig_ip2bus_data_mux                             <= '0';
              sig_rxd_rd_en                                   <= '0';
              if(Bus2IP_CS = '0') then
                IPIC_STATE                              <= IDLE;
              end if;
          end case;

        end if;
      end if;
  end process;

    IP2Bus_Data         <= sig_ip2bus_data;

  -------------------------------------------------------------------------------------------------
  --  Receive Data Path
  -------------------------------------------------------------------------------------------------
  grxd: if (C_USE_RX_DATA = 1) generate
    signal rx_str_wr_en            : std_logic := '0';
    signal rx_len_rd_en            : std_logic := '0';
    signal rx_fifo_rd_en           : std_logic := '0';
  begin

    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset = '1') then 
          sig_rxd_prog_empty_d1   <= '1';
          rx_fg_len_empty_d1      <= '1';
          sig_rxd_prog_full_d1    <= '0';
        else
          sig_rxd_prog_empty_d1 <= sig_rxd_prog_empty;
          sig_rxd_prog_full_d1  <= sig_rxd_prog_full;
          rx_fg_len_empty_d1    <= rx_fg_len_empty;
        end if;
      end if;
    end process;

    rx_str_wr_en        <= rx_str_ready_i and rx_str_valid;

    sig_rxd_pe_event    <= (not sig_rxd_prog_empty_d1) and sig_rxd_prog_empty;
    rx_fg_len_empty_fe  <= (not rx_fg_len_empty) and rx_fg_len_empty_d1;
    rx_complete         <= rx_str_valid and rx_str_ready_i and rx_str_last;

    grx_sf: if (C_USE_RX_CUT_THROUGH = 0) generate
      sig_rxd_pf_event  <= sig_rxd_prog_full and (not sig_rxd_prog_full_d1);
    end generate grx_sf;

    grx_ct: if (C_USE_RX_CUT_THROUGH = 1) generate
      sig_rxd_pf_event  <= sig_rxd_prog_full;
    end generate grx_ct;

    gaxil_re: if (C_DATA_INTERFACE_TYPE = 0) generate
      rx_fifo_rd_en     <= sig_rxd_rd_en;
    end generate gaxil_re;

    gaxi4_re: if (C_DATA_INTERFACE_TYPE = 1) generate
      rx_fifo_rd_en     <= axi4_fifo_rd_en;
      S_AXI4_RDATA      <= sig_rxd_rd_data(C_AXI4_DATA_WIDTH-1 downto 0);
    end generate gaxi4_re;

    COMP_RX_FIFO : entity axi_fifo_mm_s_v4_1_5.fifo
      generic map(
        C_FAMILY                => C_FAMILY,
        C_USE_FIFO_GEN          => 1,
        C_IPIF_DWIDTH           => C_AXI4_DATA_WIDTH,
        C_OFFSET                => 0,
        C_DEPTH                 => C_RX_FIFO_DEPTH,
        C_PF_THRESHOLD          => C_RX_FIFO_PF_THRESHOLD,
        C_PE_THRESHOLD          => C_RX_FIFO_PE_THRESHOLD,
        C_DATA_FLOW_DIR         => "S2MM",
        C_DATA_INTERFACE_TYPE   => C_DATA_INTERFACE_TYPE,
        C_USE_TX_CUT_THROUGH    => C_USE_RX_CUT_THROUGH,
        C_HAS_AXIS_TID          => C_HAS_AXIS_TID,
        C_HAS_AXIS_TDEST        => C_HAS_AXIS_TDEST,
        C_HAS_AXIS_TUSER        => C_HAS_AXIS_TUSER,
        C_HAS_AXIS_TLAST        => 1,
        C_HAS_AXIS_TSTRB        => C_HAS_AXIS_TSTRB,
        C_HAS_AXIS_TKEEP        => C_HAS_AXIS_TKEEP,
        C_AXIS_TDATA_WIDTH      => C_AXI4_DATA_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH
      )
      port map(
        Bus2IP_Clk              => Bus2IP_Clk,
        Bus2IP_Reset            => sig_rxd_reset,
        sb_wr_en                => rx_str_last,
        wr_en                   => rx_str_wr_en,
        wr_data                 => rx_str_din, 
        rd_en                   => '0', 
        rd_data                 => open, 
        empty                   => open,
        a_empty                 => open,
        full                    => sig_rxd_wr_full,
        a_full                  => open,
        prog_full               => sig_rxd_prog_full,
        prog_empty              => sig_rxd_prog_empty,
        vacancy                 => open,
        occupancy               => sig_rxd_occupancy,
  
        mm2s_tstrb              => (others => '0'),
        mm2s_tdest              => (others => '0'),
        s2mm_tstrb              => rx_str_strb,
        s2mm_tdest              => rx_str_dest,
  
        axis_tvalid             => sig_rxd_rd_empty,
        axis_tready             => rx_fifo_rd_en,
        axis_tdata              => sig_rxd_rd_data(C_AXI4_DATA_WIDTH-1 downto 0),
        axis_tstrb              => open,
        axis_tkeep              => open,
        axis_tlast              => axi4_rlast,
        axis_tid                => open,
        axis_tdest              => sig_rxd_dest_fifo,
        axis_tuser              => open
      );

    sig_rxd_reset <= Bus2IP_Reset or sig_str_rst or sig_rx_channel_reset;

    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(Bus2IP_Reset = '1' or sig_str_rst = '1') then
          fg_rxd_wr_length         <= (others => '0');
          rx_len_wr_en             <= '0';
          sig_rxd_rd_data(C_FLAG)  <= '0';
        else
          if (C_USE_RX_CUT_THROUGH = 1 and rx_len_wr_en = '1') then
            sig_rxd_rd_data(C_FLAG)  <= '1';
          elsif (sig_rd_rlen = '1') then
            sig_rxd_rd_data(C_FLAG)  <= '1';
          elsif (sig_rxd_rd_data(C_FLAG) = '1' and axi4_rlast = '1' and rx_fifo_rd_en = '1') then
            sig_rxd_rd_data(C_FLAG)  <= '0';
          end if;
          rx_len_wr_en   <= rx_complete;
          if ((rx_str_ready_i = '1') and (rx_str_valid = '1')) then
            if (rx_str_last = '1') then
                fg_rxd_wr_length <= conv_std_logic_vector(conv_integer(fg_rxd_wr_length) + count_ones(rx_str_strb, C_AXI4_DATA_WIDTH/8),fg_rxd_wr_length'high+1);
            else
	      if(rx_len_wr_en = '1') then
  		fg_rxd_wr_length <= conv_std_logic_vector(C_AXI4_DATA_WIDTH/8,fg_rxd_wr_length'high+1);
	      else
  		fg_rxd_wr_length <= fg_rxd_wr_length + conv_std_logic_vector(C_AXI4_DATA_WIDTH/8,fg_rxd_wr_length'high+1);
	      end if;
            end if;
	  else
	    if(rx_len_wr_en = '1') then
  		fg_rxd_wr_length <= conv_std_logic_vector(0,fg_rxd_wr_length'high+1);
	    end if;
          end if;
        end if;
      end if;
    end process;
  
    process(Bus2IP_Clk)
    begin
      if(rising_edge(Bus2IP_Clk)) then
        if(sig_rxd_reset = '1') then
	  rx_partial_pkt <= '1';
        elsif(rx_complete = '1') then
	  rx_partial_pkt <= '0';
	elsif(rx_len_rd_en = '1') then
  	  rx_partial_pkt <= '1';
        end if;
      end if;
    end process;
    
    rx_len_rd_en <= sig_rd_rlen;
   
   -- This FIFO is to store the RX packet length in bytes
   COMP_rx_len_fifo: entity lib_fifo_v1_0_4.sync_fifo_fg
        generic map (
          C_FAMILY             => C_FAMILY,
          C_DCOUNT_WIDTH       => 4 ,
          C_ENABLE_RLOCS       => 0 , -- not supported in sync fifo
          C_HAS_DCOUNT         => 1 ,
          C_HAS_RD_ACK         => 0 ,
          C_HAS_RD_ERR         => 0 ,
          C_HAS_WR_ACK         => 0 ,
          C_HAS_WR_ERR         => 0 ,
          C_HAS_ALMOST_FULL    => 0 ,
          C_MEMORY_TYPE        => 0 ,  -- 0 = distributed RAM, 1 = BRAM
          C_PORTS_DIFFER       => 0 ,  
          C_RD_ACK_LOW         => 0 ,
          C_USE_EMBEDDED_REG   => 0 ,
          C_READ_DATA_WIDTH    => RX_MAX_PKT_SIZE,
          C_READ_DEPTH         => C_RX_FIFO_DEPTH/4,
          C_RD_ERR_LOW         => 0 ,
          C_WR_ACK_LOW         => 0 ,
          C_WR_ERR_LOW         => 0 ,
          C_PRELOAD_REGS       => 1 ,  -- 1 = first word fall through
          C_PRELOAD_LATENCY    => 0 ,  -- 0 = first word fall through
          C_WRITE_DATA_WIDTH   => RX_MAX_PKT_SIZE,
          C_WRITE_DEPTH        => C_RX_FIFO_DEPTH/4
          )
        port map (
          Clk                  => Bus2IP_Clk,
          Sinit                => sig_rxd_reset,
          Din                  => fg_rxd_wr_length,
          Wr_en                => rx_len_wr_en,
          Rd_en                => rx_len_rd_en,
          Dout                 => sig_rxd_rd_length,
          Almost_full          => open,
          Full                 => open,
          Empty                => rx_fg_len_empty,
          Rd_ack               => open,
          Wr_ack               => open,
          Rd_err               => open,
          Wr_err               => open,
          Data_count           => open
          );
    rx_str_ready_i   <=  not (sig_rxd_wr_full);
    rx_str_ready     <= rx_str_ready_i;
  end generate grxd;

end beh;
