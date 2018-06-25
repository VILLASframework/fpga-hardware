-------------------------------------------------------------------------------
--
--  AXI4-AXI4 Stream FIFO Core - AXI READ FSM File
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
-- Filename: axi_read_fsm.vhd
--
-- Author: Xilinx
--
-- Description: AXI READ State Macine. 
-- This file is used by the AXI4-AXI4 Stream FIFO core.
--   
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all; --for and_reduce function

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.all;

library axi_fifo_mm_s_v4_1_5;
use axi_fifo_mm_s_v4_1_5.axi_fifo_mm_s_pkg.all;

ENTITY axi_read_fsm is
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 1;
    C_ADDRB_WIDTH              : integer := 12
    );
  port (
    S_AXI_INCR_ADDR            : OUT std_logic := '0';
    S_AXI_ADDR_EN              : OUT std_logic := '0';
    S_AXI_SINGLE_TRANS         : OUT std_logic := '0';
    S_AXI_MUX_SEL              : OUT std_logic := '0';
    S_AXI_R_LAST               : OUT std_logic := '0';
    S_AXI_R_LAST_INT           : IN  std_logic := '0';

    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 
    -- AXI Full/Lite Slave Read (Read side)
    S_AXI_ARLEN                : IN  std_logic_vector(7 downto 0) := (OTHERS => '0');
    S_AXI_ARVALID              : IN  std_logic := '0';
    S_AXI_ARREADY              : OUT std_logic := '0';
    S_AXI_RLAST                : OUT std_logic := '0';
    S_AXI_RVALID               : OUT std_logic := '0';
    S_AXI_RREADY               : IN  std_logic := '0';
    -- AXI Full/Lite Read Address Signals to BRAM
    S_AXI_RD_EN                : OUT std_logic := '0'
    );
END axi_read_fsm;

architecture axi_read_fsm_arch of axi_read_fsm is

  --TYPE state_type is (So => WAIT_RDADDR,S1 => REG_RDADDR,S2 => OS_RD);
  CONSTANT WAIT_RDADDR            : std_logic_vector (1 downto 0) := "00";
  CONSTANT REG_RDADDR             : std_logic_vector (1 downto 0) := "01";
  CONSTANT OS_RD                  : std_logic_vector (1 downto 0) := "10";
  CONSTANT RD_MEM                 : std_logic_vector (1 downto 0) := "11";

  SIGNAL present_state            : std_logic_vector (1 downto 0) := WAIT_RDADDR; 
  SIGNAL next_state               : std_logic_vector (1 downto 0) := WAIT_RDADDR;
  SIGNAL addr_en_c                : std_logic := '0';
  SIGNAL rd_en_c                  : std_logic := '0';
  SIGNAL incr_addr_c              : std_logic := '0';
  SIGNAL single_trans_c           : std_logic := '0';
  SIGNAL mux_sel_c                : std_logic := '0';
  SIGNAL r_last_c                 : std_logic := '0';
  SIGNAL r_last_int_c             : std_logic := '0';

BEGIN
    ---------------------------------------------------------------------------
    -- AXI LITE   
    ---------------------------------------------------------------------------
  gaxi_lite_sm: IF (C_AXI_TYPE = 0 ) GENERATE
    --Combinatorial signals used in the design have "_c" at the end of signal names
    SIGNAL ar_ready_c               : std_logic := '0';
    SIGNAL r_valid_c                : std_logic := '0';

    --Registered signals used in the design have "_r" at the end of signal names
    SIGNAL r_valid_r                : std_logic := '0';
    SIGNAL ar_ready_r               : std_logic := '0';

  BEGIN

    ---------------------------------------------------------------------------
    -- AXI LITE READ FSM  
    ---------------------------------------------------------------------------
    P_read_fsm: PROCESS (present_state, S_AXI_ARVALID, S_AXI_RREADY, r_valid_r)
    BEGIN
      CASE present_state is
        -- State WAIT_FOR_READ_ADDRESS (WAIT_RDADDR)
        WHEN WAIT_RDADDR =>   
          IF (S_AXI_ARVALID = '1') THEN 
            next_state         <= REG_RDADDR;   	
          ELSE
            next_state         <= WAIT_RDADDR;   	
          END IF; 
        
        -- State REGISTER_READ_ADDRESS (REG_RDADDR)
        WHEN REG_RDADDR => 
          IF (r_valid_r = '1' AND S_AXI_RREADY = '1') THEN
            next_state         <= WAIT_RDADDR;
          ELSE
            next_state         <= REG_RDADDR;
          END IF;
        WHEN OTHERS => 
            next_state         <= WAIT_RDADDR;
      END CASE;
    END PROCESS P_read_fsm ;
 
    ---------------------------------------------------------------------------
    -- State register - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN='1') THEN
        present_state  <= WAIT_RDADDR;
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        present_state  <= next_state AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN='1') THEN
        r_valid_r           <= '0';
        ar_ready_r          <= '0';
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        r_valid_r           <= r_valid_c AFTER FLOP_DELAY;
        ar_ready_r          <= ar_ready_c AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_register_r;
    
    ---------------------------------------------------------------------------
    -- Generation of read enable signal - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_rd_en_c: PROCESS (present_state, S_AXI_ARVALID)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
            rd_en_c              <= S_AXI_ARVALID;
        WHEN REG_RDADDR => 
            rd_en_c              <= '0';  
        WHEN OTHERS => 
            rd_en_c              <= '0';  
      END CASE;
    END PROCESS P_rd_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of arready signal - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_ar_ready_c: PROCESS (present_state, S_AXI_ARVALID, S_AXI_RREADY, r_valid_r)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
             ar_ready_c           <= NOT S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
             ar_ready_c           <= S_AXI_RREADY AND r_valid_r;
        WHEN OTHERS =>
             ar_ready_c           <= '0';
      END CASE;
    END PROCESS P_ar_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal r_valid signal - AXI LITE FSM
    ---------------------------------------------------------------------------
    P_r_valid_c: PROCESS (present_state, S_AXI_ARVALID, S_AXI_RREADY, r_valid_r)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
             r_valid_c            <= S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
          IF (S_AXI_RREADY = '1' AND r_valid_r = '1') THEN
             r_valid_c            <= '0';    
          ELSE
             r_valid_c            <= r_valid_r;    
          END IF;
        WHEN OTHERS =>
             r_valid_c            <= '0';    
      END CASE;
    END PROCESS P_r_valid_c ;

    ----------------------------------------------------------------------------
    -- Assign output signals - AXI LITE FSM
    -----------------------------------------------------------------------------
    S_AXI_RVALID  <= r_valid_r;
    S_AXI_ARREADY <= ar_ready_r;
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
    SIGNAL ar_ready_c               : std_logic := '0';
    SIGNAL r_valid_c                : std_logic := '0';
    SIGNAL outstanding_read_c       : std_logic := '0';
    SIGNAL pipeline_full_c          : std_logic := '0';

    --Registered signals used in the design have "_r" at the end of signal names
    SIGNAL ar_ready_r               : std_logic := '0';
    SIGNAL r_valid_r                : std_logic := '0';
    SIGNAL r_last_r                 : std_logic := '0';
    SIGNAL outstanding_read_r       : std_logic := '0';
    SIGNAL pipeline_full_r          : std_logic := '0';

  BEGIN

    pipeline_full_c   <= r_valid_r AND (NOT S_AXI_RREADY);
    single_trans_c    <= S_AXI_ARVALID  WHEN (S_AXI_ARLEN = "00000000") ELSE '0';
    str_wait_rdaddr_c <= S_AXI_ARVALID & S_AXI_RREADY & single_trans_c;
    str_reg_rdaddr_c  <= S_AXI_ARVALID & pipeline_full_c & single_trans_c;

    ---------------------------------------------------------------------------
    -- AXI FULL READ FSM  
    ---------------------------------------------------------------------------
    P_read_fsm: PROCESS (present_state, str_wait_rdaddr_c, str_reg_rdaddr_c, outstanding_read_r, pipeline_full_c, r_last_int_c)
    BEGIN
      CASE present_state is
        -- State WAIT_FOR_READ_ADDRESS (WAIT_RDADDR)
        WHEN WAIT_RDADDR =>   
          CASE str_wait_rdaddr_c  is
            WHEN "111"  =>
              next_state            <= REG_RDADDR;
            WHEN "101"  =>
              next_state            <= OS_RD;   	
            WHEN "110"|"100" =>
              next_state            <= RD_MEM;
            WHEN OTHERS =>
              next_state            <= WAIT_RDADDR;   	
            END CASE; 
        
        -- State REGISTER_READ_ADDRESS (REG_RDADDR)
        WHEN REG_RDADDR => 
          CASE str_reg_rdaddr_c  is
            WHEN "101" =>
              next_state            <= REG_RDADDR;
            WHEN "111"|"010"|"011" =>
              next_state            <= OS_RD;
            WHEN "100" | "110" =>   
              next_state            <= RD_MEM;   	
            WHEN OTHERS  =>
              next_state            <= WAIT_RDADDR;   	
            END CASE; 
        
        -- State OUTSTANDING_READ_ADDRESS (OS_RD)
        WHEN OS_RD => 
          IF (outstanding_read_r = '1' OR pipeline_full_c = '1') THEN
            next_state         <= OS_RD;
          ELSE 
            next_state         <= WAIT_RDADDR;
          END IF;
        		   
        -- State READ_MEMORY (RD_MEM)
        WHEN RD_MEM => 
          IF (pipeline_full_c = '0' AND r_last_int_c = '1') THEN
            next_state         <= REG_RDADDR;
          ELSE 
            next_state         <= RD_MEM;
          END IF;
        		   
        WHEN OTHERS =>
            next_state            <= WAIT_RDADDR;   	
        END CASE; 

    END PROCESS P_read_fsm ;
 
    ---------------------------------------------------------------------------
    -- State register - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN='1') THEN
        present_state  <= WAIT_RDADDR;
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        present_state  <= next_state AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN='1') THEN
        outstanding_read_r  <= '0';
        pipeline_full_r     <= '0';
        ar_ready_r          <= '0';
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        outstanding_read_r  <= outstanding_read_c AFTER FLOP_DELAY;
        pipeline_full_r     <= pipeline_full_c AFTER FLOP_DELAY;
        ar_ready_r          <= ar_ready_c AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_register_r;
    
    P_rlast_r: PROCESS (S_ACLK, S_ARESETN)
    BEGIN
      IF (S_ARESETN='1') THEN
          r_last_r    <= '0';
          r_valid_r   <= '0';
      ELSIF (S_ACLK'event AND S_ACLK='1') THEN
        IF (S_AXI_RREADY = '1' OR r_valid_r = '0') THEN
          r_last_r          <= r_last_c AFTER FLOP_DELAY;
          r_valid_r         <= r_valid_c AFTER FLOP_DELAY;
        END IF;
      END IF;
    END PROCESS P_rlast_r;

    ---------------------------------------------------------------------------
    -- Generation of read enable signal  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_rd_en_c: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
            rd_en_c              <= S_AXI_ARVALID;
        WHEN REG_RDADDR => 
          IF (pipeline_full_c = '0') THEN
            rd_en_c              <= S_AXI_ARVALID;
          ELSE
            rd_en_c              <= '0';  
          END IF;
        WHEN OS_RD => 
             --rd_en_c is asserted when either outstanding_read or pipeline_full is asserted
             --rd_en_c is de-asserted when both are asserted or both are de-asserted
          IF (pipeline_full_c = '0') THEN
            rd_en_c              <= outstanding_read_r;
          ELSE
            rd_en_c              <= '0';  
          END IF;
        WHEN RD_MEM => 
            rd_en_c              <= NOT pipeline_full_c;  
        WHEN OTHERS => 
            rd_en_c              <= '0';  
      END CASE;
    END PROCESS P_rd_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of mux select signal  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_mux_sel_c: PROCESS (present_state, pipeline_full_c, outstanding_read_r)
    BEGIN
      CASE present_state is
        WHEN OS_RD =>  
          --mux_sel_c is asserted when both outstanding_read and pipeline_full or either one is asserted
          --mux_sel_c is de-asserted when both are de-asserted
          mux_sel_c            <= outstanding_read_r OR pipeline_full_c;
        WHEN RD_MEM =>  
          mux_sel_c            <= '1';  
        WHEN OTHERS =>
          mux_sel_c            <= '0';  
      END CASE;
    END PROCESS P_mux_sel_c ;

    ---------------------------------------------------------------------------
    -- Generation of arready signal  - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_ar_ready_c: PROCESS (present_state,S_AXI_ARVALID, S_AXI_RREADY, pipeline_full_c, single_trans_c, outstanding_read_r, r_last_int_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
          IF (S_AXI_ARVALID = '0') THEN
             ar_ready_c           <= '1';
          ELSE
             ar_ready_c           <= S_AXI_RREADY AND single_trans_c;
          END IF;
        WHEN REG_RDADDR =>    
          IF (S_AXI_ARVALID= '0') THEN
             ar_ready_c           <= NOT pipeline_full_c;
          ELSE
             ar_ready_c           <= NOT pipeline_full_c AND single_trans_c;
          END IF;
        WHEN OS_RD =>    
             --ar_ready_c should be '1' only when both outstanding_read and pipeline_full are '0' 
             ar_ready_c           <= outstanding_read_r NOR pipeline_full_c;
        WHEN RD_MEM =>    
             --ar_ready_c should be '1' only when pipeline is not full and current trasaction is the last
             ar_ready_c           <= NOT pipeline_full_c AND r_last_int_c;
        WHEN OTHERS =>
             ar_ready_c           <= '0';
      END CASE;
    END PROCESS P_ar_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal address enable signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_addr_en_c: PROCESS (present_state, S_AXI_ARVALID)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
          addr_en_c            <= S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
          addr_en_c            <= S_AXI_ARVALID; 
        WHEN OTHERS =>
          addr_en_c            <= '0'; 
      END CASE;
    END PROCESS P_addr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal r_valid signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_r_valid_c: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r, single_trans_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
            r_valid_c            <= S_AXI_ARVALID;
        WHEN REG_RDADDR =>    
          IF (S_AXI_ARVALID = '0') THEN
            r_valid_c            <= '0';    
          ELSIF (pipeline_full_c = '0') THEN
            r_valid_c            <= '1'; 
          ELSE
          -- Keep the previous r_valid value, assigning single_trans_c is equivalent
          -- of holding the previous from the state table
            r_valid_c            <= single_trans_c; 
          END IF;
        WHEN OS_RD =>         
          IF (outstanding_read_r = '0') THEN
            r_valid_c            <= '0';
          ELSE
            r_valid_c            <= NOT pipeline_full_c;    
          END IF;
        WHEN RD_MEM =>         
            r_valid_c            <= NOT pipeline_full_c;
        WHEN OTHERS =>
            r_valid_c            <= '0';    
      END CASE;
    END PROCESS P_r_valid_c ;
 
    ---------------------------------------------------------------------------
    -- Generation of internal outstanding read signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_os_read: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r, single_trans_c)
    BEGIN
      CASE present_state is
        WHEN REG_RDADDR =>    
            outstanding_read_c   <= S_AXI_ARVALID AND pipeline_full_c AND single_trans_c;
        WHEN OS_RD =>         
          IF (outstanding_read_r = '1' AND pipeline_full_c = '0') THEN
            outstanding_read_c   <= '0';
          ELSE
          --Keep the previous outstanding_read value
            outstanding_read_c   <= outstanding_read_r;
          END IF;
        WHEN OTHERS => 
            outstanding_read_c   <= '0';
      END CASE;
    END PROCESS P_os_read ;

    ---------------------------------------------------------------------------
    -- Generation of internal increment address signal - AXI FULL FSM
    ---------------------------------------------------------------------------
    P_incr_addr: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, single_trans_c, r_last_int_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>    
            incr_addr_c  <= S_AXI_ARVALID AND (NOT single_trans_c);
        WHEN REG_RDADDR =>    
          IF (pipeline_full_c = '0' AND single_trans_c = '0') THEN
            incr_addr_c  <= S_AXI_ARVALID;
          ELSE
            incr_addr_c  <= '0';
          END IF;
        WHEN RD_MEM =>         
            incr_addr_c  <= pipeline_full_c NOR r_last_int_c;
        WHEN OTHERS => 
            incr_addr_c  <= '0';
      END CASE;
    END PROCESS P_incr_addr ;

    ---------------------------------------------------------------------------
    -- Generation of internal r_last_c signal
    ---------------------------------------------------------------------------
    P_r_last_c: PROCESS (present_state, S_AXI_ARVALID, pipeline_full_c, outstanding_read_r, single_trans_c, r_last_int_c)
    BEGIN
      CASE present_state is
        WHEN WAIT_RDADDR =>   
          IF (S_AXI_ARVALID= '0') THEN
            r_last_c             <= '0';    
          ELSE
            r_last_c             <= single_trans_c; 
          END IF;
        WHEN REG_RDADDR =>    
          IF (S_AXI_ARVALID= '0') THEN
            r_last_c             <= '0';    
          ELSE
            r_last_c             <= single_trans_c AND (NOT pipeline_full_c);
          END IF;
        WHEN OS_RD =>         
          IF (outstanding_read_r = '0') THEN
            r_last_c             <= '0';    
          ELSE
            r_last_c             <= NOT pipeline_full_c;
          END IF;
        WHEN RD_MEM =>         
          IF (pipeline_full_c = '0') THEN
            r_last_c             <= r_last_int_c;    
          ELSE
            r_last_c             <= '0';
          END IF;
        WHEN OTHERS =>
            r_last_c             <= '0';    
      END CASE;
    END PROCESS P_r_last_c ;

    ----------------------------------------------------------------------------
    -- Assign output signals  - AXI FULL FSM
    -----------------------------------------------------------------------------
    S_AXI_RVALID  <= r_valid_r;
    S_AXI_RLAST   <= r_last_r;
    S_AXI_ARREADY <= ar_ready_r;
    S_AXI_RD_EN   <= rd_en_c;
 
    S_AXI_INCR_ADDR <= incr_addr_c;
    S_AXI_SINGLE_TRANS <= single_trans_c;
    S_AXI_R_LAST   <= r_last_c;
    r_last_int_c   <= S_AXI_R_LAST_INT;

  END GENERATE gaxi_full_sm;

    S_AXI_ADDR_EN   <= addr_en_c;
    S_AXI_MUX_SEL  <= mux_sel_c;

END axi_read_fsm_arch;
