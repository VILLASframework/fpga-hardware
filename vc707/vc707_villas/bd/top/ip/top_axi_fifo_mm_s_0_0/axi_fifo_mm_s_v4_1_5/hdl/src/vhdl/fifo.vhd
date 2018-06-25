-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - FIFO module
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
-- Filename:        fifo.vhd
-- Version:         v4_1
-- Description:     FIFO module providing FIFO interface for AXI4-AXI4 Stream
--                  FIFO Core
--
------------------------------------------------------------------------------
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
use ieee.std_logic_arith.all;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;    
use ieee.std_logic_misc.all;

library axi_lite_ipif_v3_0_3;
library lib_pkg_v1_0_2;
--use proc_common_v4_1.coregen_comp_defs.all;
use lib_pkg_v1_0_2.lib_pkg.log2;
--use proc_common_v4_1.all;

use axi_lite_ipif_v3_0_3.ipif_pkg.all;
use lib_pkg_v1_0_2.lib_pkg.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.axi_fifo_mm_s_pkg.all;

-- synopsys translate_off
library unisim;
use     unisim.vcomponents.all; -- Component declarations for unisim.
use     unisim.all; -- Makes unisim entities available for default binding.
-- synopsys translate_on

entity fifo is
  generic(
    C_FAMILY		    : string := "virtex7";
    C_USE_FIFO_GEN          : integer := 1;
    C_IPIF_DWIDTH           : integer;
    C_OFFSET                : integer;
    C_DEPTH                 : integer;
    C_PF_THRESHOLD          : integer;
    C_PE_THRESHOLD          : integer;
    C_DATA_FLOW_DIR         : string := "MM2S";
    C_DATA_INTERFACE_TYPE   : integer := 0;
    C_USE_TX_CUT_THROUGH    : integer := 0;

    C_HAS_AXIS_TID          : integer := 0;
    C_HAS_AXIS_TDEST        : integer := 1;
    C_HAS_AXIS_TUSER        : integer := 0;
    C_HAS_AXIS_TLAST        : integer := 1;
    C_HAS_AXIS_TSTRB        : integer := 1;
    C_HAS_AXIS_TKEEP        : integer := 0;

    C_AXIS_TDATA_WIDTH      : integer := 32;
    C_AXIS_TID_WIDTH        : integer := 1;
    C_AXIS_TDEST_WIDTH      : integer := 4;
    C_AXIS_TUSER_WIDTH      : integer := 1
  );
  port(
    Bus2IP_Clk              : in  std_logic := '0';
    Bus2IP_Reset            : in  std_logic := '0';
    sb_wr_en                : in  std_logic := '0';
    wr_en                   : in  std_logic := '0';
    rd_en                   : in  std_logic := '0';
    rd_data                 : out std_logic_vector(0 to C_OFFSET+C_AXIS_TDATA_WIDTH-1) := (others => '0');
    wr_data                 : in  std_logic_vector(0 to C_OFFSET+C_AXIS_TDATA_WIDTH-1) := (others => '0');
    empty                   : out std_logic := '0';
    a_empty                 : out std_logic := '0';
    prog_empty              : out std_logic := '0';
    full                    : out std_logic := '0';
    a_full                  : out std_logic := '0';
    prog_full               : out std_logic := '0';
    vacancy                 : out std_logic_vector(31 downto 0) := (others => '0');
    occupancy               : out std_logic_vector(31 downto 0) := (others => '0');

    mm2s_tstrb              : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    mm2s_tdest              : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
    s2mm_tstrb              : in  std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    s2mm_tdest              : in  std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');

    -- AXI Streaming Slave Signals (Write side)
    axis_tvalid             : out std_logic := '0';
    axis_tready             : in  std_logic := '0';
    axis_tdata              : out std_logic_vector(C_AXIS_TDATA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    axis_tstrb              : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    axis_tkeep              : out std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 DOWNTO 0) := (OTHERS => '0');
    axis_tlast              : out std_logic := '0';
    axis_tid                : out std_logic_vector(C_AXIS_TID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    axis_tdest              : out std_logic_vector(C_AXIS_TDEST_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    axis_tuser              : out std_logic_vector(C_AXIS_TUSER_WIDTH-1 DOWNTO 0) := (OTHERS => '0')
  );
end fifo;

architecture structure of fifo is

  CONSTANT ALL_ZERO_64        : std_logic_vector(63 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_32        : std_logic_vector(31 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_8         : std_logic_vector(7 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_4         : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_3         : std_logic_vector(2 DOWNTO 0) := (OTHERS => '0');
  CONSTANT ALL_ZERO_2         : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  CONSTANT GND                : std_logic := '0';
  CONSTANT PROG_FLAG_WIDTH    : std_logic_vector(log2roundup(C_DEPTH)-1 DOWNTO 0) := (OTHERS => '0');

  signal sig_fifo_rdptr       : integer range 0 to C_DEPTH-1:=0;
  signal sig_fifo_wrptr       : integer range 0 to C_DEPTH-1:=0;
  signal sig_fifo_full        : std_logic := '0';
  signal sig_fifo_empty       : std_logic := '0';
  signal sig_fifo_afull       : std_logic := '0';
  signal sig_fifo_pfull       : std_logic := '0';
  signal sig_fifo_pfull_d1    : std_logic := '0';
  signal sig_fifo_aempty      : std_logic := '0';
  signal sig_fifo_pempty      : std_logic := '0';
  signal sig_fifo_pempty_d1   : std_logic := '0';
  signal sig_mark_ptr         : integer range 0 to C_DEPTH-1:=0;
  signal sig_mark_level       : integer range 0 to C_DEPTH-1:=0;
  signal sig_sb_wr_en_d1      : std_logic := '0';
  signal sig_sb_wr_en_rst     : std_logic := '0';
  signal sig_sb_wr_en_pending : std_logic := '0';
  signal sig_bram_wr_en       : std_logic_Vector(3 downto 0) := (others => '0');

  signal sig_fifo_wr_en       : std_logic_vector(0 downto 0) := (others => '0');
  signal sig_fifo_rd_en       : std_logic := '0';
  signal sig_fifo_wr_en_i     : std_logic := '0';
  signal sig_fifo_rd_en_i     : std_logic := '0';
  signal sig_fifo_wr_addr     : std_logic_vector(log2roundup(C_DEPTH)-1 downto 0) := (others => '0');
  signal sig_fifo_rd_addr     : std_logic_vector(log2roundup(C_DEPTH)-1 downto 0) := (others => '0');
  signal sig_fifo_wr_parity   : std_logic := '0';
  signal sig_fifo_rd_parity   : std_logic := '0';
  signal sig_fifo_wr_data     : std_logic_vector(31 downto 0) := (others => '0');
  
  signal sig_fifo_rd_data     : std_logic_vector(32 downto 0) := (others => '0');

  signal sig_fifo_wr_data_and_parity : std_logic_vector(32 downto 0) := (others => '0');
  signal Data_count           : std_logic_vector(31 downto 0) := (others => '0');

  begin

  gfifo_gen: if (C_USE_FIFO_GEN = 1) generate
    signal output_tvalid   : std_logic := '0';
    signal output_tready   : std_logic := '0';
    signal output_tlast    : std_logic := '0';
    signal output_tdata    : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    signal output_tstrb    : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal output_tkeep    : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal output_tid      : std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
    signal output_tdest    : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
    signal output_tuser    : std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');
    signal input_tvalid    : std_logic := '0';
    signal input_tready    : std_logic := '0';
    signal input_tlast     : std_logic := '0';
    signal input_tdata     : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    signal input_tstrb     : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal input_tkeep     : std_logic_vector(C_AXIS_TDATA_WIDTH/8-1 downto 0) := (others => '0');
    signal input_tid       : std_logic_vector(C_AXIS_TID_WIDTH-1 downto 0) := (others => '0');
    signal input_tdest     : std_logic_vector(C_AXIS_TDEST_WIDTH-1 downto 0) := (others => '0');
    signal input_tuser     : std_logic_vector(C_AXIS_TUSER_WIDTH-1 downto 0) := (others => '0');
    signal axis_data_count : std_logic_vector(log2roundup(C_DEPTH) downto 0) := (others => '0');
    signal s_aresetn       : std_logic := '0';
    signal start_wr        : std_logic := '0';
    signal wr_data_int     : std_logic_vector(C_AXIS_TDATA_WIDTH-1 downto 0) := (others => '0');
    signal ArgD            : std_logic_vector(log2roundup(C_DEPTH) downto 0) := (others => '0');
    signal vacancy_i       : std_logic_vector(log2roundup(C_DEPTH) downto 0) := (others => '0');
  begin
    gmm2s: if (C_DATA_FLOW_DIR = "MM2S") generate

      axis_tvalid  <= output_tvalid;
      output_tready  <= axis_tready;
      axis_tdata   <= output_tdata ;
      axis_tstrb   <= output_tstrb ;
      axis_tkeep   <= output_tkeep ;
      axis_tlast   <= output_tlast ;
      axis_tid     <= output_tid   ;
      axis_tdest   <= output_tdest ;
      axis_tuser   <= output_tuser ;
  
      input_tvalid <= (wr_en or sb_wr_en) and start_wr;
      input_tdata  <= wr_data_int;
      input_tlast  <= sb_wr_en;
      input_tdest  <= mm2s_tdest;
  
      vacancy(31 downto log2roundup(C_DEPTH)+1) <= (others => '0');
      vacancy(log2roundup(C_DEPTH) downto 1) <= vacancy_i(log2roundup(C_DEPTH) downto 1);
      vacancy(0) <= '0';
      ArgD <= conv_std_logic_vector(C_DEPTH-3,log2roundup(C_DEPTH)+1);

   --   COMP_AddSub : entity axi_fifo_mm_s_v4_1_5.addsub
   --     generic map(
   --        C_WIDTH       => log2roundup(C_DEPTH)+1,
   --        C_REGISTERED  => true
   --        )
   --     port map (
   --        Clk           => Bus2IP_Clk,
   --        Rst           => Bus2IP_Reset,
   --        CE            => '1',
   --        ArgD          => ArgD,
   --        ArgA          => axis_data_count,
   --        ArgS          => axis_data_count,
   --        Sub           => '1',
   --        Cry_BrwN      => open,
   --        Result        => vacancy_i
   --    );
  
      process(Bus2IP_Clk)
      begin
        if(rising_edge(Bus2IP_Clk)) then
          if (Bus2IP_Reset = '1') then
            vacancy_i          <= (others => '0');
          else
            vacancy_i          <= ArgD - axis_data_count;
          end if;
        end if;
     end process;

      occupancy(31 downto log2roundup(C_DEPTH)+1) <= (others => '0');
      occupancy(log2roundup(C_DEPTH) downto 0) <= axis_data_count;
      full <= not input_tready;
      empty <= not output_tvalid;
      a_empty <= '0';
      a_full <= '0';
      s_aresetn <= not Bus2IP_Reset;
  
      process(Bus2IP_Clk)
      begin
        if(rising_edge(Bus2IP_Clk)) then
          if (Bus2IP_Reset = '1') then
            start_wr <= '0';
            wr_data_int          <= (others => '0');
          elsif (wr_en = '1') then
            wr_data_int          <= wr_data(1 to C_AXIS_TDATA_WIDTH);
            start_wr <= '1';
          elsif (sb_wr_en = '1') then
            start_wr <= '0';
          end if;
        end if;
     end process;

      gaxil_strb: if (C_DATA_INTERFACE_TYPE = 0) generate
        process(wr_data,sb_wr_en)
        begin
          if (sb_wr_en = '1') then
            case wr_data(31 to 32) is
              when "01" =>
                input_tstrb        <= x"1";
              when "10" =>
                input_tstrb        <= x"3";
              when "11" =>
                input_tstrb        <= x"7";
              when others =>
                input_tstrb        <= x"f";
            end case;
          else
            input_tstrb        <= x"f";
          end if;
        end process;
      end generate gaxil_strb;

      gaxi4_strb: if (C_DATA_INTERFACE_TYPE = 1) generate

        process(Bus2IP_Clk)
        begin
          if(rising_edge(Bus2IP_Clk)) then
            if (Bus2IP_Reset = '1') then
              input_tstrb <= (others => '1');
            elsif (wr_en = '1') then
              input_tstrb <= mm2s_tstrb;
            elsif (sb_wr_en = '1') then
              input_tstrb <= (others => '1');
            end if;
          end if;
       end process;
      end generate gaxi4_strb;

    end generate gmm2s;

    gs2mm: if (C_DATA_FLOW_DIR = "S2MM") generate
      axis_tvalid   <= not output_tvalid;
      output_tready <= axis_tready;
      axis_tdata    <= output_tdata ;
      axis_tstrb    <= output_tstrb ;
      axis_tkeep    <= output_tkeep ;
      axis_tlast    <= output_tlast ;
      axis_tid      <= output_tid   ;
      axis_tdest    <= output_tdest ;
      axis_tuser    <= output_tuser ;
  
      input_tvalid  <= wr_en;
      input_tdata   <= wr_data(0 to C_AXIS_TDATA_WIDTH-1);
      input_tstrb   <= s2mm_tstrb;
      input_tlast   <= sb_wr_en;
      input_tdest   <= s2mm_tdest;

      vacancy <= (others => '0');
      occupancy(31 downto log2roundup(C_DEPTH)+1) <= (others => '0');
      occupancy(log2roundup(C_DEPTH) downto 0) <= axis_data_count;

      full <= not input_tready;
      s_aresetn <= not Bus2IP_Reset;
    end generate gs2mm;

    COMP_AXIS_FG_FIFO: entity axi_fifo_mm_s_v4_1_5.axis_fg
      generic map(
        C_FAMILY                => C_FAMILY,
        C_DEPTH                 => C_DEPTH,
        C_PF_THRESHOLD          => C_PF_THRESHOLD,
        C_PE_THRESHOLD          => C_PE_THRESHOLD,
        C_DATA_COUNT_WIDTH      => log2roundup(C_DEPTH),
        -- 0: Data FIFO; 1: Packet FIFO; 2: One stage Register Slice
        C_FIFO_GEN_TYPE         => if_then_else(C_DATA_FLOW_DIR = "S2MM", 0,
                                   if_then_else(C_USE_TX_CUT_THROUGH = 1, 0, 1)),
        C_HAS_AXIS_TID          => 0,
        C_HAS_AXIS_TDEST        => 1,
        C_HAS_AXIS_TUSER        => 0,
        C_HAS_AXIS_TLAST        => 1,
        C_HAS_AXIS_TSTRB        => 1,
        C_HAS_AXIS_TKEEP        => 0,
        C_AXIS_TDATA_WIDTH      => C_AXIS_TDATA_WIDTH,
        C_AXIS_TID_WIDTH        => C_AXIS_TID_WIDTH,
        C_AXIS_TDEST_WIDTH      => C_AXIS_TDEST_WIDTH,
        C_AXIS_TUSER_WIDTH      => C_AXIS_TUSER_WIDTH
      )
      port map(
        aclk                    => Bus2IP_Clk,
        aresetn                 => s_aresetn,

        s_axis_tvalid           => input_tvalid,
        s_axis_tready           => input_tready,
        s_axis_tdata            => input_tdata ,
        s_axis_tstrb            => input_tstrb ,
        s_axis_tkeep            => input_tkeep ,
        s_axis_tlast            => input_tlast ,
        s_axis_tid              => input_tid   ,
        s_axis_tdest            => input_tdest ,
        s_axis_tuser            => input_tuser ,

        m_axis_tvalid           => output_tvalid,
        m_axis_tready           => output_tready,
        m_axis_tdata            => output_tdata ,
        m_axis_tstrb            => output_tstrb ,
        m_axis_tkeep            => output_tkeep ,
        m_axis_tlast            => output_tlast ,
        m_axis_tid              => output_tid   ,
        m_axis_tdest            => output_tdest ,
        m_axis_tuser            => output_tuser ,

        axis_prog_full          => prog_full,
        axis_prog_empty         => prog_empty,
        axis_data_count         => axis_data_count
      );

  end generate gfifo_gen;

end architecture;
