-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXI WRITE FSM File
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
--
-- Filename: axi_write_wrapper.vhd
--
-- Author: Xilinx
--
-- Description: AXI Write State Machine Wrapper. 
-- This file is used by the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.axi_fifo_mm_s_pkg.all;

ENTITY axi_write_wrapper IS
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 1; -- 0: AXI Lite; 1: AXI Full;
    C_AXI_SLAVE_TYPE           : integer := 0; -- 0: MEMORY SLAVE; 1: PERIPHERAL SLAVE;
    
    C_AXI_AWADDR_WIDTH         : integer := 32;
    C_ADDRA_WIDTH 	       : integer := 12;
    C_AXI_WDATA_WIDTH          : integer := 32;
    C_HAS_AXI_ID               : integer := 0;
    C_AXI_ID_WIDTH             : integer := 4;
   
    -- AXI OUTSTANDING WRITES
    C_AXI_OS_WR                : integer := 2
    );
  PORT (
    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 

    -- AXI Full/Lite Slave Write Channel (write side)
    S_AXI_AWID                 : IN  std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  
    S_AXI_AWADDR               : IN  std_logic_vector(C_AXI_AWADDR_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  
    S_AXI_AWLEN                : IN  std_logic_vector(8-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWSIZE               : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWBURST              : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_AWVALID              : IN  std_logic := '0';
    S_AXI_AWREADY              : OUT std_logic := '0';
    S_AXI_WVALID               : IN  std_logic := '0';
    S_AXI_WREADY               : OUT std_logic := '0';
    S_AXI_BID                  : OUT std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  
    S_AXI_BVALID               : OUT std_logic := '0';
    S_AXI_BREADY               : IN  std_logic := '0';
    -- Signals for BMG interface
    S_AXI_AWADDR_OUT           : OUT std_logic_vector(C_ADDRA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_WR_EN                : OUT std_logic:= '0'

    );
END axi_write_wrapper;

ARCHITECTURE axi_write_wrap_arch OF axi_write_wrapper IS

  ATTRIBUTE DowngradeIPIdentifiedWarnings: STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF axi_write_wrap_arch : ARCHITECTURE IS "yes";

  SIGNAL bvalid_c                 : std_logic := '0';
  SIGNAL bready_timeout_c         : std_logic := '0';
  SIGNAL bvalid_rd_cnt_c          : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  
  SIGNAL bvalid_r         	  : std_logic := '0';
  SIGNAL bvalid_count_r        	  : std_logic_vector(2 DOWNTO 0) := (OTHERS => '0');
  
  SIGNAL awaddr_reg               : std_logic_vector(C_ADDRA_WIDTH-1 DOWNTO 0) := (OTHERS => '0');
  
  SIGNAL bvalid_wr_cnt_r          : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL bvalid_rd_cnt_r          : std_logic_vector(1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL w_last_c                 : std_logic := '0';
  SIGNAL addr_en_c                : std_logic := '0';
  SIGNAL incr_addr_c              : std_logic := '0';
  SIGNAL aw_ready_r 	          : std_logic := '0';
 
  -- Array to store BIDs
  TYPE id_array IS ARRAY (3 DOWNTO 0) OF std_logic_vector(C_AXI_ID_WIDTH-1 DOWNTO 0);
  SIGNAL axi_bid_array 		  : id_array := (others => (others => '0'));
  attribute ram_style : string;
  ATTRIBUTE ram_style OF axi_bid_array : SIGNAL IS "pipe_distributed";

BEGIN
 -- AXI WRITE FSM COMPONENT INSTANTIATION
 axi_wr_fsm : entity axi_fifo_mm_s_v4_1_5.axi_write_fsm
   GENERIC MAP (
     C_AXI_TYPE => C_AXI_TYPE
   )
   PORT MAP (
     S_ACLK  	      => S_ACLK,
     S_ARESETN        => S_ARESETN,
     S_AXI_AWVALID    => S_AXI_AWVALID,
     aw_ready_r       => aw_ready_r,
     S_AXI_WVALID     => S_AXI_WVALID,
     S_AXI_WREADY     => S_AXI_WREADY,
     S_AXI_BREADY     => S_AXI_BREADY,
     S_AXI_WR_EN      => S_AXI_WR_EN,
     w_last_c         => w_last_c,
     bready_timeout_c => bready_timeout_c,
     addr_en_c        => addr_en_c,
     incr_addr_c      => incr_addr_c,
     bvalid_c         => bvalid_c
   );   
   
   ---------------------------------------------------------------------------
   -- Address registering for axi lite
   ---------------------------------------------------------------------------
   gaxi_lite_addr_gen: IF (C_AXI_TYPE = 0) GENERATE
     P_addr_reg: PROCESS (S_ACLK,S_ARESETN)
         BEGIN
           IF (S_ARESETN = '1') THEN
                S_AXI_AWADDR_OUT <= (OTHERS => '0');
           ELSIF (S_ACLK'event AND S_ACLK = '1') THEN
             IF (addr_en_c = '1') THEN
                S_AXI_AWADDR_OUT <= S_AXI_AWADDR AFTER FLOP_DELAY;
             END IF;
           END IF;
     END PROCESS P_addr_reg;
   END GENERATE gaxi_lite_addr_gen;

    ----------------------------------------------------------------------------
    -- AXI-Full Memory Slave Unaligned address 
    -- with Fixed and INCR Burst Type Support - AXI FULL FSM
    -----------------------------------------------------------------------------
    gaxif_ms_addr_gen: IF (C_AXI_TYPE = 1 AND C_AXI_SLAVE_TYPE = 0) GENERATE

     CONSTANT C_RANGE : INTEGER := log2roundup(divroundup(C_AXI_WDATA_WIDTH,8));

     CONSTANT WRAP_SIZE : INTEGER := C_RANGE+4;
      
      SIGNAL num_of_bytes_c           : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
      SIGNAL wrap_bytes_c             : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
      SIGNAL bmg_address_c            : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
      SIGNAL axi_addr_full_c          : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');


      SIGNAL next_address_r           : STD_LOGIC_VECTOR(C_RANGE DOWNTO 0):= (OTHERS => '0');
      SIGNAL bmg_address_r            : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
      SIGNAL bmg_address_inc_c        : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
      SIGNAL num_of_bytes_r           : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
      SIGNAL axi_addr_full_r          : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
      SIGNAL addr_cnt_enb             : STD_LOGIC_VECTOR(C_AXI_AWADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
      SIGNAL wrap_addr_range_c        : STD_LOGIC_VECTOR(WRAP_SIZE DOWNTO 0):= (OTHERS => '0');

      SIGNAL incr_en_r                : std_logic := '0';

    BEGIN

      ---------------------------------------------------------------------------
      -- Generation of num_of_bytes_c based on AXI Size - AXI FULL FSM
      ---------------------------------------------------------------------------
      P_num_bytes: PROCESS (S_AXI_AWSIZE)
      BEGIN
        CASE S_AXI_AWSIZE is
          WHEN "000"  =>    num_of_bytes_c <= "0000001";
          WHEN "001"  =>    num_of_bytes_c <= "0000010";
          WHEN "010"  =>    num_of_bytes_c <= "0000100";
          WHEN "011"  =>    num_of_bytes_c <= "0001000";
          WHEN "100"  =>    num_of_bytes_c <= "0010000";
          WHEN "101"  =>    num_of_bytes_c <= "0100000";
          WHEN OTHERS =>    num_of_bytes_c <= "0000000";
        END CASE;
      END PROCESS P_num_bytes;      

      ---------------------------------------------------------------------------
      -- Generation of wrap_bytes_c for wrap address generation
      ---------------------------------------------------------------------------
      P_wrap_bytes: PROCESS (S_AXI_AWSIZE)
      BEGIN
        CASE S_AXI_AWSIZE is
          WHEN "000"  =>    wrap_bytes_c <= "1111111";
          WHEN "001"  =>    wrap_bytes_c <= "1111110";
          WHEN "010"  =>    wrap_bytes_c <= "1111100";
          WHEN "011"  =>    wrap_bytes_c <= "1111000";
          WHEN "100"  =>    wrap_bytes_c <= "1110000";
          WHEN OTHERS =>    wrap_bytes_c <= "1100000";
        END CASE;
      END PROCESS P_wrap_bytes;

      ---------------------------------------------------------------------------
      -- Generation of next_address_r for unaligned transfers 
      ---------------------------------------------------------------------------
      P_next_addr_reg: PROCESS (S_ACLK,S_ARESETN)
      BEGIN
        IF (S_ARESETN='1') THEN
            next_address_r 		     <= (OTHERS => '0');
            num_of_bytes_r 		     <= (OTHERS => '0');
            incr_en_r                        <= '0';
        ELSIF (S_ACLK'event AND S_ACLK='1') THEN
          IF (addr_en_c = '1') THEN
            next_address_r(C_RANGE DOWNTO 0) <= ('0' & S_AXI_AWADDR(C_RANGE-1 DOWNTO 0));
            incr_en_r   		     <= S_AXI_AWBURST(0) OR S_AXI_AWBURST(1);
            num_of_bytes_r 		     <= num_of_bytes_c;
          ELSIF (incr_addr_c = '1') THEN
            next_address_r(C_RANGE DOWNTO 0) <= ('0' & bmg_address_c(C_RANGE-1 DOWNTO 0)) + num_of_bytes_r(C_RANGE DOWNTO 0);
          END IF;
        END IF;
      END PROCESS P_next_addr_reg;
      
      ---------------------------------------------------------------------------
      -- Generation of registered address 
      ---------------------------------------------------------------------------
      P_bmg_addr_reg: PROCESS (S_ACLK,S_ARESETN)
      BEGIN
        IF (S_ARESETN='1') THEN
            bmg_address_r <= (OTHERS => '0');
        ELSIF (S_ACLK'event AND S_ACLK='1') THEN
          IF (addr_en_c = '1') THEN
            bmg_address_r <= S_AXI_AWADDR(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE);
          ELSIF (incr_addr_c = '1') THEN
            bmg_address_r <= bmg_address_c(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE);
          END IF;
        END IF;
      END PROCESS P_bmg_addr_reg;
      
      ---------------------------------------------------------------------------
      -- Address increment logic for unaligned/aligned transfer
      ---------------------------------------------------------------------------
      P_unalign_awaddr_mux: PROCESS (next_address_r,incr_en_r,bmg_address_r)
      BEGIN
        IF (next_address_r(C_RANGE) = '1' AND incr_en_r = '1') THEN
	    bmg_address_inc_c   <= bmg_address_r + "1";
        ELSE
	    bmg_address_inc_c   <= bmg_address_r;
        END IF;
      END PROCESS P_unalign_awaddr_mux;

      ---------------------------------------------------------------------------
      -- Wrap address range calculation for WRAP BURST
      ---------------------------------------------------------------------------
      P_wrap_addr_range: PROCESS (S_AXI_AWLEN,wrap_bytes_c)
      BEGIN
	CASE (S_AXI_AWLEN) IS
	  WHEN "00000001" =>  
	    wrap_addr_range_c              <= "111" & wrap_bytes_c(C_RANGE DOWNTO 0) & "0";
	  WHEN "00000011" =>  
	    wrap_addr_range_c              <= "11" & wrap_bytes_c(C_RANGE DOWNTO 0) & "00";
	  WHEN "00000111" =>   
	    wrap_addr_range_c              <= "1" & wrap_bytes_c(C_RANGE DOWNTO 0) & "000";
	  WHEN OTHERS =>  
	    wrap_addr_range_c              <= wrap_bytes_c(C_RANGE DOWNTO 0) & "0000";
        END CASE;
      END PROCESS P_wrap_addr_range;
   
      ---------------------------------------------------------------------------
      -- Registered wrap address range
      ---------------------------------------------------------------------------
      P_addr_cnt_enb_reg: PROCESS (S_ACLK,S_ARESETN)
      BEGIN
        IF (S_ARESETN='1') THEN
            addr_cnt_enb <= (OTHERS => '0');
        ELSIF (S_ACLK'event AND S_ACLK='1') THEN
	  IF(addr_en_c = '1' AND S_AXI_AWBURST = "10") THEN
	    addr_cnt_enb(C_AXI_AWADDR_WIDTH-1 downto WRAP_SIZE+1) <= (OTHERS => '1');
	    addr_cnt_enb(WRAP_SIZE downto 0) <= wrap_addr_range_c;
	  ELSIF (w_last_c = '1') THEN
	    addr_cnt_enb <= (OTHERS => '0');
	  END IF;
	END IF;
      END PROCESS P_addr_cnt_enb_reg;

      axi_addr_full_r <= bmg_address_r & next_address_r(C_RANGE-1 DOWNTO 0);
      
      axi_addr_full_c <= bmg_address_inc_c & next_address_r(C_RANGE-1 DOWNTO 0);
      
      ---------------------------------------------------------------------------
      -- Wrap address generation
      ---------------------------------------------------------------------------
      P_addr_wrap_gen: PROCESS (axi_addr_full_r,axi_addr_full_c,addr_cnt_enb)
      BEGIN
	FOR i IN C_AXI_AWADDR_WIDTH-1 DOWNTO 0 LOOP
	  IF (addr_cnt_enb(i) = '1') THEN
	    bmg_address_c(i)  <= axi_addr_full_r(i);
	  ELSE 
	    bmg_address_c(i)  <= axi_addr_full_c(i);
	  END IF;
	END LOOP;
      END PROCESS P_addr_wrap_gen;
	
      S_AXI_AWADDR_OUT            <=  bmg_address_c(C_AXI_AWADDR_WIDTH-1 DOWNTO C_RANGE);

  END GENERATE gaxif_ms_addr_gen;

  ---------------------------------------------------------------------------
  -- AXI FULL wlast generation
  ---------------------------------------------------------------------------
  gaxif_wlast_gen: IF (C_AXI_TYPE = 1) GENERATE
    CONSTANT ONE                    : std_logic_vector(7 DOWNTO 0) := ("00000001");
    --Combinatorial signals used in the design have "_c" at the end of signal names
    SIGNAL dec_alen_c               : std_logic := '0';
    --Registered signals used in the design have "_r" at the end of signal names
    SIGNAL awlen_cntr_r               : std_logic_vector(7 DOWNTO 0) := (OTHERS => '1');
  BEGIN

    -----------------------------------------------------------------------------
    -- Counter to generate w_last from registered AWLEN
    -----------------------------------------------------------------------------
    P_addr_cnt: PROCESS (S_ACLK, S_ARESETN)
      BEGIN
        IF (S_ARESETN = '1') THEN
          awlen_cntr_r      <= (OTHERS => '1');
        ELSIF (S_ACLK'event AND S_ACLK = '1') THEN
          IF (addr_en_c = '1') THEN
            awlen_cntr_r      <= S_AXI_AWLEN AFTER FLOP_DELAY;
          ELSIF (dec_alen_c = '1') THEN
            awlen_cntr_r      <= awlen_cntr_r - ONE AFTER FLOP_DELAY;
          END IF;
        END IF;
    END PROCESS P_addr_cnt;

    w_last_c          <= '1' WHEN (awlen_cntr_r = "00000000" AND S_AXI_WVALID = '1') ELSE '0';
    
    dec_alen_c        <=  (incr_addr_c OR w_last_c);

  END GENERATE gaxif_wlast_gen;

   ---------------------------------------------------------------------------
   -- Generation of bvalid counter for outstanding transactions  
   ---------------------------------------------------------------------------

    P_b_valid_os_r: PROCESS (S_ACLK, S_ARESETN)
    BEGIN
      IF (S_ARESETN = '1') THEN
	bvalid_count_r             <= (OTHERS => '0');
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
	-- bvalid_count_r generation
	IF (bvalid_c = '1' AND bvalid_r = '1' AND S_AXI_BREADY = '1') THEN
	  bvalid_count_r          <=   bvalid_count_r AFTER FLOP_DELAY;
	ELSIF (bvalid_c = '1') THEN  
	  bvalid_count_r          <=   bvalid_count_r + "01" AFTER FLOP_DELAY;
	ELSIF (bvalid_r = '1' AND S_AXI_BREADY = '1' AND bvalid_count_r /= "0") THEN
	  bvalid_count_r          <=   bvalid_count_r - "01" AFTER FLOP_DELAY;
	END IF;
      END IF;
    END PROCESS P_b_valid_os_r ;

    ---------------------------------------------------------------------------
    -- Generation of bvalid when BID is used 
    ---------------------------------------------------------------------------

    gaxi_bvalid_id_r:IF (C_HAS_AXI_ID = 1) GENERATE
      SIGNAL bvalid_d1_c    : std_logic := '0';
    BEGIN
      P_b_valid_r: PROCESS (S_ACLK, S_ARESETN)
      BEGIN
        IF (S_ARESETN = '1') THEN
          bvalid_r                   <=  '0';
	  bvalid_d1_c                <=  '0';
        ELSIF (S_ACLK'event AND S_ACLK='1') THEN
         -- Delay the generation o bvalid_r for generation for BID 
         bvalid_d1_c  <= bvalid_c;
         
         --external bvalid signal generation
         IF (bvalid_d1_c = '1') THEN
           bvalid_r                <=   '1' AFTER FLOP_DELAY;
         ELSIF (conv_integer(bvalid_count_r) <= 1 AND S_AXI_BREADY = '1') THEN
           bvalid_r                <=   '0' AFTER FLOP_DELAY;
         END IF;
        END IF;
      END PROCESS P_b_valid_r ;
    END GENERATE gaxi_bvalid_id_r;
      
   ---------------------------------------------------------------------------
   -- Generation of bvalid when BID is not used 
   ---------------------------------------------------------------------------

   gaxi_bvalid_noid_r:IF (C_HAS_AXI_ID = 0) GENERATE
    P_b_valid_r: PROCESS (S_ACLK, S_ARESETN)
      BEGIN
        IF (S_ARESETN = '1') THEN
          bvalid_r                   <=  '0';
        ELSIF (S_ACLK'event AND S_ACLK='1') THEN
         --external bvalid signal generation
         IF (bvalid_c = '1') THEN
           bvalid_r                <=   '1' AFTER FLOP_DELAY;
         ELSIF (conv_integer(bvalid_count_r) <= 1 AND S_AXI_BREADY = '1') THEN
           bvalid_r                <=   '0' AFTER FLOP_DELAY;
         END IF;
        END IF;
      END PROCESS P_b_valid_r ;
    END GENERATE gaxi_bvalid_noid_r;
    
    ---------------------------------------------------------------------------
    -- Generation of Bready timeout
    ---------------------------------------------------------------------------
    P_brdy_tout_c: PROCESS (bvalid_count_r)
    BEGIN
    	-- bready_timeout_c generation
	IF(conv_integer(bvalid_count_r) = C_AXI_OS_WR-1) THEN
	  bready_timeout_c        <=   '1';
	ELSE
	  bready_timeout_c        <=   '0';
	END IF;
    END PROCESS P_brdy_tout_c;
    
    
    ---------------------------------------------------------------------------
    -- Generation of BID 
    ---------------------------------------------------------------------------
    gaxi_bid_gen:IF (C_HAS_AXI_ID = 1) GENERATE

     P_bid_gen: PROCESS (S_ACLK,S_ARESETN)
     BEGIN
        IF (S_ARESETN='1') THEN
            bvalid_wr_cnt_r   <= (OTHERS => '0');
            bvalid_rd_cnt_r   <= (OTHERS => '0');
        ELSIF (S_ACLK'event AND S_ACLK='1') THEN
          -- STORE AWID IN AN ARRAY
          IF(bvalid_c = '1') THEN
            bvalid_wr_cnt_r  <= bvalid_wr_cnt_r + "01";
          END IF;
           
	  -- GENERATE BID FROM AWID ARRAY
	  bvalid_rd_cnt_r <= bvalid_rd_cnt_c AFTER FLOP_DELAY;
	  S_AXI_BID       <= axi_bid_array(conv_integer(bvalid_rd_cnt_c));

        END IF;       
     END PROCESS P_bid_gen;

     P_awid_reg:PROCESS (S_ACLK)
     BEGIN
        IF (S_ACLK'event AND S_ACLK='1') THEN
          IF(aw_ready_r = '1' AND S_AXI_AWVALID = '1') THEN
	    axi_bid_array(conv_integer(bvalid_wr_cnt_r)) <= S_AXI_AWID;
	  END IF;
	END IF;
     END PROCESS P_awid_reg;
    
    bvalid_rd_cnt_c <= bvalid_rd_cnt_r + "01" WHEN (bvalid_r = '1' AND S_AXI_BREADY = '1') ELSE bvalid_rd_cnt_r;

  END GENERATE gaxi_bid_gen;

  S_AXI_BVALID   <=  bvalid_r;
  S_AXI_AWREADY  <=  aw_ready_r;

END axi_write_wrap_arch;
