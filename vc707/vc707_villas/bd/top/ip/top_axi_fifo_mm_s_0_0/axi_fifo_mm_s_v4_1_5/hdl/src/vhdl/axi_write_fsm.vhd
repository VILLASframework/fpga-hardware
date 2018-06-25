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
-- Filename: axi_write_fsm.vhd
--
-- Author: Xilinx
--
-- Description: AXI Write State Machine. 
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

ENTITY axi_write_fsm IS
GENERIC (
    -- AXI Interface related parameters start here
    C_AXI_TYPE                 : integer := 0 -- 0: AXI Lite; 1: AXI Full;
    );
  PORT (
    -- AXI Global Signals
    S_ACLK                     : IN  std_logic;
    S_ARESETN                  : IN  std_logic; 

    -- AXI Full/Lite Slave Write Channel (write side)
    S_AXI_AWVALID              : IN  std_logic := '0';
    aw_ready_r                 : OUT std_logic := '0';
    S_AXI_WVALID               : IN  std_logic := '0';
    S_AXI_WREADY               : OUT std_logic := '0';
    S_AXI_BVALID               : OUT std_logic := '0';
    S_AXI_BREADY               : IN  std_logic := '0';

    -- Signals for BMG interface
    S_AXI_WR_EN                : OUT std_logic:= '0';

    -- Signals from FSM WRAPPER
    w_last_c                   : IN std_logic := '0';
    bready_timeout_c           : IN std_logic := '0';
  
    -- Signals to FSM WRAPPER
    addr_en_c                  : OUT std_logic := '0';
    incr_addr_c                : OUT std_logic := '0';
    bvalid_c                   : OUT std_logic := '0'
    );
END axi_write_fsm;


ARCHITECTURE axi_write_fsm_arch OF axi_write_fsm IS

  --TYPE state_type is (S0 => WAIT_WRADDR,S1 => REG_WRADDR,S2 => WR_MEM);
  CONSTANT WAIT_WRADDR            : std_logic_vector (1 DOWNTO 0) := "00";
  CONSTANT REG_WRADDR             : std_logic_vector (1 DOWNTO 0) := "01";
  CONSTANT OS_WR                  : std_logic_vector (1 DOWNTO 0) := "10";
  CONSTANT WR_MEM                 : std_logic_vector (1 DOWNTO 0) := "11";

  SIGNAL present_state            : std_logic_vector (1 DOWNTO 0) := WAIT_WRADDR; 
  SIGNAL next_state               : std_logic_vector (1 DOWNTO 0) := WAIT_WRADDR;

   --Combinatorial signals used in the design have "_c" at the end of signal names
  SIGNAL aw_ready_c               : std_logic := '0';
  SIGNAL w_ready_c                : std_logic := '0';
  SIGNAL wr_en_c                  : std_logic := '0';

  --Registered signals used in the design have "_r" at the end of signal names
  SIGNAL w_ready_r                : std_logic := '0';
  
  BEGIN
  ---------------------------------------------------------------------------
  -- AXI LITE   
  ---------------------------------------------------------------------------
  gaxi_lite_sm: IF (C_AXI_TYPE = 0) GENERATE
  BEGIN
    ---------------------------------------------------------------------------
    -- AXI LITE WRITE FSM  
    ---------------------------------------------------------------------------
    P_write_fsm: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, S_AXI_BREADY, bready_timeout_c)
    BEGIN

      CASE present_state IS
        -- State WAIT_FOR_WRITE_ADDRESS (WAIT_WRADDR)
        WHEN WAIT_WRADDR =>   
            IF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '1') THEN 
              next_state               <= REG_WRADDR;   	
	    ELSIF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '0') THEN
              next_state               <= OS_WR;
	    ELSE	      
              next_state               <= WAIT_WRADDR;
            END IF; 
        
        -- State REGISTER_WRITE_ADDRESS (REG_WRADDR)
        WHEN REG_WRADDR => 
	    IF ( S_AXI_AWVALID = '1' AND S_AXI_WVALID = '0') THEN 
              next_state               <= OS_WR;   	
	    ELSIF ( S_AXI_WVALID = '0' OR (bready_timeout_c = '0' AND S_AXI_AWVALID = '0')) THEN 
              next_state               <= WAIT_WRADDR;   	
	    ELSIF (bready_timeout_c = '1' AND S_AXI_WVALID = '1') THEN 
              next_state               <= WR_MEM;   	
	    ELSE
              next_state               <= REG_WRADDR;
            END IF;
       
       	-- State OUTSTANDING WRITE (OS_WR)
        WHEN OS_WR => 
            IF (S_AXI_WVALID = '1'  AND bready_timeout_c = '0') THEN
              next_state               <= WAIT_WRADDR;
	    ELSIF (S_AXI_WVALID = '1'  AND bready_timeout_c = '1') THEN
              next_state               <= WR_MEM;
	    ELSE
              next_state               <= OS_WR;
            END IF;
        
        -- State WRITES TO MEMORY (WR_MEM)
        WHEN WR_MEM => 
            IF (S_AXI_BREADY = '1') THEN
              next_state               <= WAIT_WRADDR;
            ELSE 
              next_state               <= WR_MEM;
            END IF;
        		   
        WHEN OTHERS => 
              next_state               <= WAIT_WRADDR;
      END CASE;
    END PROCESS P_write_fsm ;
 
    ---------------------------------------------------------------------------
    -- FSM state register 
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN = '1') THEN
        present_state                 <=  WAIT_WRADDR;
      ELSIF (S_ACLK'event AND S_ACLK = '1') THEN
        present_state                 <=  next_state AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals (some of these signals are used as latches)
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN = '1') THEN
        aw_ready_r                   <=  '0';
        w_ready_r                    <=  '0';
      ELSIF (S_ACLK'event AND S_ACLK = '1') THEN
        aw_ready_r                   <=  aw_ready_c AFTER FLOP_DELAY;
        w_ready_r     		     <=  w_ready_c AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_register_r;
    
    ---------------------------------------------------------------------------
    -- Generation of address enable signal
    ---------------------------------------------------------------------------
    P_addr_en_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
                addr_en_c           <=  S_AXI_AWVALID;
	--ad_en high only in full throughput condition in state REG_WRADDR
        WHEN REG_WRADDR  => 
               addr_en_c            <=  NOT bready_timeout_c AND  S_AXI_AWVALID AND S_AXI_WVALID;  
        WHEN OTHERS => 
               addr_en_c            <=  '0';  
      END CASE;
    END PROCESS P_addr_en_c ;


    ---------------------------------------------------------------------------
    -- Generation of internal awready signal
    ---------------------------------------------------------------------------
    P_aw_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, S_AXI_BREADY)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR       =>   
               aw_ready_c           <=  NOT S_AXI_AWVALID;
        WHEN REG_WRADDR        =>
               aw_ready_c           <=  (NOT bready_timeout_c AND S_AXI_WVALID) OR ((NOT S_AXI_WVALID) AND (NOT S_AXI_AWVALID));
        WHEN OS_WR             =>    
               aw_ready_c           <=  NOT bready_timeout_c AND S_AXI_WVALID;
        WHEN WR_MEM            =>    
               aw_ready_c           <=  S_AXI_BREADY;
        WHEN OTHERS =>
               aw_ready_c           <=  '0';
      END CASE;
    END PROCESS P_aw_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal write enable signal
    ---------------------------------------------------------------------------
    P_wr_en_c: PROCESS (present_state, S_AXI_WVALID)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR  =>    
               wr_en_c             <=  S_AXI_WVALID; 
        WHEN OTHERS            =>
               wr_en_c             <=  '0'; 
      END CASE;
    END PROCESS P_wr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal wready signal
    ---------------------------------------------------------------------------
    P_w_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
               w_ready_c           <=  S_AXI_AWVALID;
        WHEN REG_WRADDR  =>    
               w_ready_c           <=  (NOT bready_timeout_c AND S_AXI_AWVALID) OR (NOT S_AXI_WVALID AND S_AXI_AWVALID); 
        WHEN OS_WR       =>    
               w_ready_c           <=  NOT S_AXI_WVALID; 
        WHEN OTHERS      =>
              w_ready_c            <=  '0';
      END CASE;
    END PROCESS P_w_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal bvalid signal
    ---------------------------------------------------------------------------
    P_b_valid_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR =>         
	       bvalid_c            <=  S_AXI_WVALID;     
        WHEN OTHERS => 
               bvalid_c            <= '0';
      END CASE;
    END PROCESS P_b_valid_c ;    
    
  END GENERATE gaxi_lite_sm;

  ---------------------------------------------------------------------------
  -- AXI FULL 
  ---------------------------------------------------------------------------
  gaxi_full_sm: IF (C_AXI_TYPE = 1) GENERATE
  BEGIN
    ---------------------------------------------------------------------------
    -- AXI FULL WRITE FSM  
    ---------------------------------------------------------------------------
    P_write_fsm: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c, S_AXI_BREADY)
    BEGIN

      CASE present_state IS
  
  	-- State WAIT_FOR_WRITE_ADDRESS (WAIT_WRADDR)
        WHEN WAIT_WRADDR =>
	  IF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '1') THEN
	    next_state          <=  REG_WRADDR;
	  ELSIF (S_AXI_AWVALID = '1' AND S_AXI_WVALID = '0') THEN
	    next_state          <=  OS_WR;
	  ELSE
	    next_state          <=  WAIT_WRADDR;
	  END IF;

        -- State REGISTER_WRITE_ADDRESS (REG_WRADDR)
        WHEN REG_WRADDR =>
	  IF (bready_timeout_c = '1' AND S_AXI_WVALID = '1' AND w_last_c = '1') THEN
	    next_state          <=  WR_MEM;
	  ELSIF (bready_timeout_c = '0' AND S_AXI_AWVALID = '0' AND S_AXI_WVALID = '1' AND w_last_c = '1') THEN
	    next_state          <=  WAIT_WRADDR;
	  ELSE
	    next_state          <=  REG_WRADDR;
	  END IF;

        -- State OUTSTANDING WRITE (OS_WR)
        WHEN OS_WR => 
	  IF (S_AXI_WVALID = '1' AND w_last_c = '1' AND bready_timeout_c = '0') THEN
	    next_state         <=  WAIT_WRADDR;
	  ELSIF (S_AXI_WVALID = '1' AND w_last_c = '1' AND bready_timeout_c = '1') THEN
	    next_state         <=  WR_MEM;
	  ELSIF (S_AXI_WVALID = '1' AND w_last_c = '0') THEN
	    next_state         <=  REG_WRADDR;
	  ELSE
	    next_state         <=  OS_WR;
	  END IF;             		 

        -- State WRITES TO MEMORY (WR_MEM)
        WHEN WR_MEM => 
	  IF (S_AXI_BREADY = '1') THEN
	    next_state         <=  WAIT_WRADDR;
	  ELSE
	    next_state         <=  WR_MEM;
	  END IF;             		  

        WHEN OTHERS =>
	  next_state           <=  WAIT_WRADDR;   	
      END CASE; 

    END PROCESS P_write_fsm;
 
    ---------------------------------------------------------------------------
    -- FSM state register 
    ---------------------------------------------------------------------------
    P_State_Register: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN = '1') THEN
        present_state        <=  WAIT_WRADDR;
      ELSIF (S_ACLK'event AND S_ACLK = '1') THEN
        present_state        <=  next_state AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_State_Register;
 
    ---------------------------------------------------------------------------
    -- Registering the signals (some of these signals are used as latches)
    ---------------------------------------------------------------------------
    P_register_r: PROCESS (S_ACLK, S_ARESETN)       
    BEGIN
      IF (S_ARESETN = '1') THEN
        aw_ready_r          <=  '0';
	w_ready_r           <=  '0';
      ELSIF (S_ACLK'event AND S_ACLK = '1') THEN
        aw_ready_r          <=  aw_ready_c AFTER FLOP_DELAY;
	w_ready_r           <=  w_ready_c AFTER FLOP_DELAY;
      END IF; 
    END PROCESS P_register_r;
    
    ---------------------------------------------------------------------------
    -- Generation of write enable signal
    ---------------------------------------------------------------------------
    P_wr_en_c: PROCESS (present_state, S_AXI_WVALID)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR => 
               wr_en_c              <= S_AXI_WVALID;
        WHEN OTHERS => 
               wr_en_c              <= '0';  
      END CASE;
    END PROCESS P_wr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of awready signal
    ---------------------------------------------------------------------------
    P_aw_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c, S_AXI_BREADY)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
               aw_ready_c           <=  NOT S_AXI_AWVALID;
        WHEN REG_WRADDR =>  
	       aw_ready_c           <=  (NOT bready_timeout_c AND S_AXI_WVALID AND w_last_c);
        WHEN OS_WR      =>    
               aw_ready_c           <=  S_AXI_WVALID AND w_last_c AND (NOT bready_timeout_c);
        WHEN WR_MEM     =>    
               aw_ready_c           <=  S_AXI_BREADY;
        WHEN OTHERS     =>
               aw_ready_c           <= '0';
      END CASE;
    END PROCESS P_aw_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal address enable signal
    ---------------------------------------------------------------------------
    P_addr_en_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>   
               addr_en_c            <=  S_AXI_AWVALID;
        WHEN REG_WRADDR =>    
               addr_en_c            <=  (NOT bready_timeout_c) AND S_AXI_AWVALID AND S_AXI_WVALID AND w_last_c;
        WHEN OTHERS =>
               addr_en_c            <=  '0';
      END CASE;
    END PROCESS P_addr_en_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal wready signal
    ---------------------------------------------------------------------------
    P_w_ready_c: PROCESS (present_state, S_AXI_AWVALID, S_AXI_WVALID, bready_timeout_c, w_last_c)
    BEGIN
      CASE present_state IS
        WHEN WAIT_WRADDR =>
               w_ready_c          <=   S_AXI_AWVALID; 	  
        WHEN REG_WRADDR =>    
               w_ready_c          <=     (NOT S_AXI_WVALID) OR (NOT w_last_c) OR 
					 (NOT bready_timeout_c AND S_AXI_AWVALID AND S_AXI_WVALID and w_last_c); 	  
        WHEN OS_WR =>
               w_ready_c          <=   (NOT S_AXI_WVALID) OR (NOT w_last_c);	  
        WHEN OTHERS =>
               w_ready_c          <=   '0'; 	  
      END CASE;
    END PROCESS P_w_ready_c ;

    ---------------------------------------------------------------------------
    -- Generation of internal increment address signal
    ---------------------------------------------------------------------------
    P_incr_addr: PROCESS (present_state, S_AXI_WVALID,  w_last_c)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR =>    
               incr_addr_c  <= S_AXI_WVALID AND NOT w_last_c;
        WHEN OTHERS => 
               incr_addr_c  <= '0';
      END CASE;
    END PROCESS P_incr_addr ;

      
    ---------------------------------------------------------------------------
    -- Generation of internal bvalid signal
    ---------------------------------------------------------------------------
    P_b_valid_c: PROCESS (present_state, S_AXI_WVALID, w_last_c)
    BEGIN
      CASE present_state IS
        WHEN REG_WRADDR|OS_WR =>         
	       bvalid_c            <=  S_AXI_WVALID AND w_last_c;   
        WHEN OTHERS => 
               bvalid_c            <= '0';
      END CASE;
    END PROCESS P_b_valid_c ;   

   END GENERATE gaxi_full_sm;
   -- END OF AXI FULL FSM

    -----------------------------------------------------------------------------
    -- Assign output signals
    -----------------------------------------------------------------------------
    S_AXI_WREADY  	        <=  w_ready_r;
    S_AXI_WR_EN                 <=  wr_en_c;


END axi_write_fsm_arch;
