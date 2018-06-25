-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXI READ WRAPPER File
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
-- Filename: axi_read_wrapper.vhd
--
-- Author: Xilinx
--
-- Description: AXI READ State Macine. 
-- This file is used by the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_MISC.ALL; --For AND_REDUCE function

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.axi_fifo_mm_s_pkg.all;

ENTITY axi_read_wrapper is
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 1;
    C_AXI_SLAVE_TYPE           : integer := 0;
    C_WRITE_WIDTH_A            : integer := 4;
    C_ADDRA_WIDTH              : integer := 12;
    C_AXI_PIPELINE_STAGES      : integer := 0;
    C_AXI_ARADDR_WIDTH         : integer := 12;
    C_HAS_AXI_ID               : integer := 0;
    C_AXI_ID_WIDTH             : integer := 4;
    C_ADDRB_WIDTH              : integer := 12
    );
  port (

    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 
    -- AXI Full/Lite Slave Read (Read side)
    S_AXI_ARADDR               : IN  std_logic_vector(C_AXI_ARADDR_WIDTH-1 downto 0) := (OTHERS => '0');
    S_AXI_ARLEN                : IN  std_logic_vector(7 downto 0) := (OTHERS => '0');
    S_AXI_ARSIZE               : IN  STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARBURST              : IN  STD_LOGIC_VECTOR(1 DOWNTO 0) := (OTHERS => '0');
    S_AXI_ARVALID              : IN  std_logic := '0';
    S_AXI_ARREADY              : OUT std_logic := '0';
    S_AXI_RLAST                : OUT std_logic := '0';
    S_AXI_RVALID               : OUT std_logic := '0';
    S_AXI_RREADY               : IN  std_logic := '0';
    S_AXI_ARID                 : IN  std_logic_vector(C_AXI_ID_WIDTH-1 downto 0) := (OTHERS => '0');
    S_AXI_RID                  : OUT std_logic_vector(C_AXI_ID_WIDTH-1 downto 0) := (OTHERS => '0');
    -- AXI Full/Lite Read Address Signals to BRAM
    S_AXI_ARADDR_OUT           : OUT std_logic_vector(C_ADDRB_WIDTH-1 downto 0) := (OTHERS => '0');
    S_AXI_RD_EN                : OUT std_logic := '0'
    );
END axi_read_wrapper;

architecture axi_read_wrapper_arch of axi_read_wrapper is

  ATTRIBUTE DowngradeIPIdentifiedWarnings: STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF axi_read_wrapper_arch : ARCHITECTURE IS "yes";

  --TYPE state_type is (So => WAIT_RDADDR,S1 => REG_RDADDR,S2 => OS_RD);
  CONSTANT WAIT_RDADDR            : std_logic_vector (1 downto 0) := "00";
  CONSTANT REG_RDADDR             : std_logic_vector (1 downto 0) := "01";
  CONSTANT OS_RD                  : std_logic_vector (1 downto 0) := "10";
  CONSTANT RD_MEM                 : std_logic_vector (1 downto 0) := "11";

  SIGNAL present_state            : std_logic_vector (1 downto 0) := WAIT_RDADDR; 
  SIGNAL next_state               : std_logic_vector (1 downto 0) := WAIT_RDADDR;
  SIGNAL ar_id_r                  : STD_LOGIC_VECTOR(C_AXI_ID_WIDTH-1 downto 0) := (OTHERS => '0');
  SIGNAL addr_en_c                : std_logic := '0';
  SIGNAL rd_en_c                  : std_logic := '0';
  SIGNAL incr_addr_c              : std_logic := '0';
  SIGNAL single_trans_c           : std_logic := '0';
  SIGNAL dec_alen_c               : std_logic := '0';
  SIGNAL mux_sel_c                : std_logic := '0';
  SIGNAL r_last_c                 : std_logic := '0';
  SIGNAL r_last_int_c             : std_logic := '0';

BEGIN
  axi_read_fsm : ENTITY axi_fifo_mm_s_v4_1_5.axi_read_fsm 
  GENERIC MAP(
      C_AXI_TYPE                 => C_AXI_TYPE,
      C_ADDRB_WIDTH              => C_ADDRB_WIDTH
      )
  PORT MAP(
    S_AXI_INCR_ADDR            => incr_addr_c,
    S_AXI_ADDR_EN              => addr_en_c,
    S_AXI_SINGLE_TRANS         => single_trans_c,
    S_AXI_MUX_SEL              => mux_sel_c,
    S_AXI_R_LAST               => r_last_c,
    S_AXI_R_LAST_INT           => r_last_int_c,

    -- AXI Global Signals
    S_ACLK                     => S_ACLK,
    S_ARESETN                  => S_ARESETN,
    -- AXI Full/Lite Slave Read (Read side)
    S_AXI_ARLEN                => S_AXI_ARLEN,
    S_AXI_ARVALID              => S_AXI_ARVALID,
    S_AXI_ARREADY              => S_AXI_ARREADY,
    S_AXI_RLAST                => S_AXI_RLAST,
    S_AXI_RVALID               => S_AXI_RVALID,
    S_AXI_RREADY               => S_AXI_RREADY,
    -- AXI Full/Lite Read Address Signals to BRAM
    S_AXI_RD_EN                => rd_en_c
      );
    --------------------------------------------------------------------------
    -- AXI LITE   
    --------------------------------------------------------------------------
  gaxi_lite_sm: IF (C_AXI_TYPE = 0 ) GENERATE
    --Combinatorial signals used in the design have "_c" at the end of signal names

  SIGNAL araddr_reg : std_logic_vector(C_ADDRB_WIDTH-1 downto 0) := (OTHERS => '0');
  BEGIN

    --------------------------------------------------------------------------
    -- AXI LITE FSM
    -- Mux Selection of ARADDR
    -- ARADDR is driven out from the read fsm based on the mux_sel_c
    -- Based on mux_sel either ARADDR is given out or the latched ARADDR is
    -- given out to BRAM
    --------------------------------------------------------------------------
    P_araddr_mux: PROCESS (mux_sel_c,S_AXI_ARADDR,araddr_reg)
    BEGIN
      IF (mux_sel_c = '0') THEN
        S_AXI_ARADDR_OUT   <= S_AXI_ARADDR;
      ELSE
        S_AXI_ARADDR_OUT   <= araddr_reg;
      END IF;
    END PROCESS P_araddr_mux;
 
    P_addr_reg: PROCESS (S_ACLK,S_ARESETN)
    BEGIN
      IF (S_ARESETN='1') THEN
           araddr_reg <= (OTHERS => '0');
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        IF (addr_en_c = '1') THEN
           araddr_reg <= S_AXI_ARADDR AFTER FLOP_DELAY;
        END IF;
      END IF;
    END PROCESS P_addr_reg;

    --------------------------------------------------------------------------
    -- Assign output signals - AXI LITE FSM
    --------------------------------------------------------------------------
   S_AXI_RD_EN   <= rd_en_c;

  END GENERATE gaxi_lite_sm;
  ---------------------------------------------------------------------------
  -- AXI FULL 
  ---------------------------------------------------------------------------
  gaxi_full_sm: IF (C_AXI_TYPE = 1 ) GENERATE

    CONSTANT ONE                    : std_logic_vector(7 DOWNTO 0) := ("00000001");
    -- Inputs concatenate
    SIGNAL str_wait_rdaddr_c        : std_logic_vector (2 downto 0) := (OTHERS =>'0');
    SIGNAL str_reg_rdaddr_c         : std_logic_vector (2 downto 0) := (OTHERS =>'0');
    --Combinatorial signals used in the design have "_c" at the end of signal names

    SIGNAL araddr_reg               : std_logic_vector(C_AXI_ARADDR_WIDTH-1 downto 0):= (OTHERS => '0');
    SIGNAL arlen_cntr               : std_logic_vector(7 DOWNTO 0) := ONE;

  BEGIN

   dec_alen_c        <= incr_addr_c OR r_last_int_c;

    --------------------------------------------------------------------------
    -- Latch the registered ARADDR - AXI FULL FSM
    --------------------------------------------------------------------------
    P_addr_reg: PROCESS (S_ACLK,S_ARESETN)
    BEGIN
      IF (S_ARESETN='1') THEN
        araddr_reg <= (OTHERS => '0');
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        IF (incr_addr_c = '1' AND addr_en_c = '1' AND single_trans_c = '0') THEN
            araddr_reg <= S_AXI_ARADDR + 1 AFTER FLOP_DELAY ;
        ELSIF (addr_en_c = '1') THEN
          araddr_reg <= S_AXI_ARADDR AFTER FLOP_DELAY;
        ELSIF (incr_addr_c = '1') THEN
            araddr_reg <= araddr_reg + 1 AFTER FLOP_DELAY ;
        END IF;
      END IF;
    END PROCESS P_addr_reg;

    --------------------------------------------------------------------------
    -- Counter to generate r_last_int_c from registered ARLEN  - AXI FULL FSM
    --------------------------------------------------------------------------
    P_addr_cnt: PROCESS (S_ACLK, S_ARESETN)
    BEGIN
      IF S_ARESETN = '1' THEN
          arlen_cntr      <= ONE;
      ELSIF S_ACLK'event AND S_ACLK = '1' THEN
        IF (addr_en_c = '1' AND dec_alen_c = '1' AND single_trans_c = '0') THEN
          arlen_cntr      <= S_AXI_ARLEN - ONE AFTER FLOP_DELAY;
        ELSIF addr_en_c = '1' THEN
          arlen_cntr      <= S_AXI_ARLEN AFTER FLOP_DELAY;
        ELSIF dec_alen_c = '1' THEN
          arlen_cntr      <= arlen_cntr - ONE AFTER FLOP_DELAY;
        ELSE
          arlen_cntr      <= arlen_cntr AFTER FLOP_DELAY;
        END IF;
      END IF;
    END PROCESS P_addr_cnt;

    r_last_int_c          <= '1' WHEN (arlen_cntr = "00000000" AND S_AXI_RREADY = '1') ELSE '0' ;

    --------------------------------------------------------------------------
    -- AXI FULL FSM
    -- Mux Selection of ARADDR
    -- ARADDR is driven out from the read fsm based on the mux_sel_c
    -- Based on mux_sel either ARADDR is given out or the latched ARADDR is
    -- given out to BRAM
    --------------------------------------------------------------------------
   gaxifull_notmem_slave: IF (C_AXI_TYPE = 1 AND C_AXI_SLAVE_TYPE /= 0) GENERATE
    P_araddr_mux: PROCESS (mux_sel_c,S_AXI_ARADDR,araddr_reg)
    BEGIN
      IF (mux_sel_c = '0') THEN
        S_AXI_ARADDR_OUT   <= S_AXI_ARADDR;
      ELSE
        S_AXI_ARADDR_OUT   <= araddr_reg;
      END IF;
    END PROCESS P_araddr_mux;
   END GENERATE gaxifull_notmem_slave;

    ----------------------------------------------------------------------------
    -- AXI-Full Memory Slave Unaligned address 
    -- with Fixed and INCR Burst Type Support - AXI FULL FSM
    -----------------------------------------------------------------------------
   gaxifull_mem_slave: IF (C_AXI_TYPE = 1 AND C_AXI_SLAVE_TYPE = 0) GENERATE
  
     CONSTANT C_RANGE : INTEGER := log2roundup(divroundup(C_WRITE_WIDTH_A,8));

     CONSTANT C_WRAP_SIZE : INTEGER := C_RANGE + 4;

     SIGNAL next_address_r      : STD_LOGIC_VECTOR(C_RANGE downto 0) := (OTHERS => '0');
     SIGNAL bmg_address_r       : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
     SIGNAL bmg_address_c       : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 DOWNTO 0):= (OTHERS => '0');
     SIGNAL bmg_address_inc_c   : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE):= (OTHERS => '0');
     SIGNAL axis_address_full_r : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 downto 0)      := (OTHERS => '0');
     SIGNAL axis_address_full_c : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 downto 0)      := (OTHERS => '0');
     SIGNAL num_of_bytes_r      : STD_LOGIC_VECTOR(6 downto 0)                    := (OTHERS => '0');
     SIGNAL num_of_bytes_c      : STD_LOGIC_VECTOR(6 downto 0)                    := (OTHERS => '0');
     SIGNAL wrap_addr_range_c   : STD_LOGIC_VECTOR(C_WRAP_SIZE downto 0)                    := (OTHERS => '0');
     SIGNAL wrap_bytes_c        : STD_LOGIC_VECTOR(6 DOWNTO 0):= (OTHERS => '0');
     SIGNAL addr_cnt_enb_r      : STD_LOGIC_VECTOR(C_AXI_ARADDR_WIDTH-1 downto 0)                    := (OTHERS => '0');
     SIGNAL incr_en_r           : STD_LOGIC := '0';

   BEGIN
     ---------------------------------------------------------------------------
     -- Generation of num_of_bytes_c based on AXI Size - AXI FULL  Memory Slave
     ---------------------------------------------------------------------------
     P_num_bytes: PROCESS (S_AXI_ARSIZE)
     BEGIN
       CASE S_AXI_ARSIZE is
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
      P_wrap_bytes: PROCESS (S_AXI_ARSIZE)
      BEGIN
        CASE S_AXI_ARSIZE is
          WHEN "000"  =>    wrap_bytes_c <= "1111111";
          WHEN "001"  =>    wrap_bytes_c <= "1111110";
          WHEN "010"  =>    wrap_bytes_c <= "1111100";
          WHEN "011"  =>    wrap_bytes_c <= "1111000";
          WHEN "100"  =>    wrap_bytes_c <= "1110000";
          WHEN OTHERS =>    wrap_bytes_c <= "1100000";
        END CASE;
      END PROCESS P_wrap_bytes;

      ---------------------------------------------------------------------------
      -- Wrap address range calculation for WRAP BURST
      ---------------------------------------------------------------------------
      P_wrap_addr_range: PROCESS (S_AXI_ARLEN,wrap_bytes_c)
      BEGIN
	CASE (S_AXI_ARLEN) IS
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

     P_addr_cnt_enb_reg: PROCESS (S_ACLK,S_ARESETN)
     BEGIN
       IF (S_ARESETN='1') THEN
           addr_cnt_enb_r <= (OTHERS => '0');
       ELSIF (S_ACLK'event AND S_ACLK='1') THEN
         IF (addr_en_c = '1' AND S_AXI_ARBURST = "10" AND single_trans_c = '0') THEN
	    addr_cnt_enb_r(C_AXI_ARADDR_WIDTH-1 downto C_WRAP_SIZE+1) <= (OTHERS => '1');
	    addr_cnt_enb_r(C_WRAP_SIZE downto 0) <= wrap_addr_range_c;
         ELSIF (r_last_c = '1') THEN
           addr_cnt_enb_r <= (OTHERS => '0');
         END IF;
       END IF;
     END PROCESS P_addr_cnt_enb_reg;

     P_next_addr_reg: PROCESS (S_ACLK,S_ARESETN)
     BEGIN
       IF (S_ARESETN='1') THEN
           next_address_r <= (OTHERS => '0');
           num_of_bytes_r <= (OTHERS => '0');
           incr_en_r      <= '0';
       ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        IF (incr_addr_c = '1' AND addr_en_c = '1' AND single_trans_c = '0') THEN
           next_address_r(C_RANGE DOWNTO 0) <= ('0' & S_AXI_ARADDR(C_RANGE-1 DOWNTO 0)) + num_of_bytes_c(C_RANGE DOWNTO 0);
           incr_en_r   <= S_AXI_ARBURST(0) OR S_AXI_ARBURST(1);
           num_of_bytes_r <= num_of_bytes_c;
         ELSIF (addr_en_c = '1') THEN
           next_address_r(C_RANGE DOWNTO 0) <= ('0' & S_AXI_ARADDR(C_RANGE-1 DOWNTO 0));
           incr_en_r   <= S_AXI_ARBURST(0) OR S_AXI_ARBURST(1);
           num_of_bytes_r <= num_of_bytes_c;
         ELSIF (incr_addr_c = '1') THEN
           next_address_r(C_RANGE DOWNTO 0) <= ('0' & bmg_address_c(C_RANGE-1 DOWNTO 0)) + num_of_bytes_r(C_RANGE DOWNTO 0);
         END IF;
       END IF;
     END PROCESS P_next_addr_reg;

     P_bmg_addr_reg: PROCESS (S_ACLK,S_ARESETN)
     BEGIN
       IF (S_ARESETN='1') THEN
           bmg_address_r <= (OTHERS => '0');
       ELSIF (S_ACLK'event AND S_ACLK='1') THEN
         IF (addr_en_c = '1') THEN
           bmg_address_r <= S_AXI_ARADDR(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE);
         ELSIF (incr_addr_c = '1') THEN
           bmg_address_r <= bmg_address_c(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE);
         END IF;
       END IF;
     END PROCESS P_bmg_addr_reg;

     P_unalign_araddr_mux: PROCESS (next_address_r,incr_en_r,bmg_address_r)
     BEGIN
       IF (next_address_r(C_RANGE) = '1' AND incr_en_r = '1') THEN
         bmg_address_inc_c   <= bmg_address_r + 1;
       ELSE
         bmg_address_inc_c   <= bmg_address_r;
       END IF;
     END PROCESS P_unalign_araddr_mux;

     axis_address_full_r <= bmg_address_r & next_address_r(C_RANGE-1 DOWNTO 0);
     axis_address_full_c <= S_AXI_ARADDR WHEN (mux_sel_c = '0') ELSE bmg_address_inc_c & next_address_r(C_RANGE-1 DOWNTO 0) ;

     P_addr_cnt_enb: PROCESS (addr_cnt_enb_r,axis_address_full_r,axis_address_full_c)
       BEGIN
         FOR i IN C_AXI_ARADDR_WIDTH-1 DOWNTO 0 LOOP
           IF (addr_cnt_enb_r(i) = '1') THEN
             bmg_address_c(i) <= axis_address_full_r(i);
           ELSE
             bmg_address_c(i) <= axis_address_full_c(i);
           END IF;
         END LOOP;
     END PROCESS P_addr_cnt_enb;


     S_AXI_ARADDR_OUT <=  bmg_address_c(C_AXI_ARADDR_WIDTH-1 DOWNTO C_RANGE);
   END GENERATE gaxifull_mem_slave;

    ----------------------------------------------------------------------------
    -- Assign output signals  - AXI FULL FSM
    -----------------------------------------------------------------------------
    S_AXI_RD_EN   <= rd_en_c;

  END GENERATE gaxi_full_sm;

  grid: IF (C_HAS_AXI_ID = 1) GENERATE
    P_rid_gen: PROCESS (S_ACLK,S_ARESETN)
    BEGIN
      IF (S_ARESETN='1') THEN
          S_AXI_RID <= (OTHERS => '0');
          ar_id_r <= (OTHERS => '0');
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        IF (addr_en_c = '1' AND rd_en_c = '1') THEN
          S_AXI_RID <= S_AXI_ARID;
          ar_id_r <= S_AXI_ARID;
        ELSIF (addr_en_c = '1' AND rd_en_c = '0') THEN
          ar_id_r <= S_AXI_ARID;
        ELSIF (rd_en_c = '1') THEN
          S_AXI_RID <= ar_id_r;
        END IF;
      END IF;
    END PROCESS P_rid_gen;
  END GENERATE grid; 

END axi_read_wrapper_arch;
