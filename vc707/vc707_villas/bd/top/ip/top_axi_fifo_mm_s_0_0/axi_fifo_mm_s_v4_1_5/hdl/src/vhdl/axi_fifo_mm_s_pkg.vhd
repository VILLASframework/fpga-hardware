-------------------------------------------------------------------------------
--
-- AXI4-AXI4 Stream FIFO Core - AXI4-AXI4 Stream FIFO Package
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
-- Filename: axi_fifo_mm_s_pkg.vhd
--
-- Author: Xilinx
--
-- Description:
--   This file is the package file of the AXI4-AXI4 Stream FIFO Core. It
--   contains all function declarations and bodies that are used in all
--   AXI4-AXI4 Stream FIFO Core modules and submodules.
--
-------------------------------------------------------------------------------
-- Structure:
--     axi_fifo_mm_s_pkg
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- LIBRARY DECLARATIONS
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

PACKAGE axi_fifo_mm_s_pkg IS

  CONSTANT ZERO                 : std_logic := '0';
  CONSTANT FLOP_DELAY           : time := 100 PS;
  CONSTANT TDFD_OFFSET          : std_logic_vector(31 downto 0) := X"00000000";
  CONSTANT RDFD_OFFSET          : std_logic_vector(31 downto 0) := X"00001000";

  -----------------------------------------------------------------------------
  -- FUNCTION DECLARATIONS
  -----------------------------------------------------------------------------

  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : INTEGER;
    false_case : INTEGER)
    RETURN INTEGER;

  FUNCTION divroundup (
    data_value : INTEGER;
    divisor : INTEGER)
    RETURN INTEGER;

  FUNCTION log2roundup (
    data_value : INTEGER)
    RETURN INTEGER;

  FUNCTION count_ones (
      indata  : std_logic_vector;
      indata_size : integer)
    RETURN integer;

END axi_fifo_mm_s_pkg;

-------------------------------------------------------------------------------
-- PACKAGE BODY
-------------------------------------------------------------------------------
PACKAGE BODY axi_fifo_mm_s_pkg IS

  ------------------------------------------------------------------------------
  -- FUNCTION: if_then_else
  -- This function is used to implement an IF..THEN when such a statement is not
  --  allowed.
  ------------------------------------------------------------------------------
  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : INTEGER;
    false_case : INTEGER)
  RETURN INTEGER IS
    VARIABLE retval : INTEGER := 0;
  BEGIN
    IF NOT condition THEN
      retval:=false_case;
    ELSE
      retval:=true_case;
    END IF;
    RETURN retval;
  END if_then_else;

 -----------------------------------------------------------------------------
  -- FUNCTION : divroundup
  -- Returns the ceiling value of the division
  -- Data_value - the quantity to be divided, dividend
  -- Divisor - the value to divide the data_value by
  -----------------------------------------------------------------------------
  FUNCTION divroundup (
    data_value : INTEGER;
    divisor : INTEGER)
  RETURN INTEGER IS
    VARIABLE div                   : INTEGER;
  BEGIN
    div   := data_value/divisor;
    IF ( (data_value MOD divisor) /= 0) THEN
      div := div+1;
    END IF;
    RETURN div;
  END divroundup;

  -----------------------------------------------------------------------------
  -- FUNCTION : log2roundup
  -----------------------------------------------------------------------------
  FUNCTION log2roundup (
    data_value : INTEGER)
  RETURN INTEGER IS

    VARIABLE width       : INTEGER := 0;
    VARIABLE cnt         : INTEGER := 1;
    CONSTANT lower_limit : INTEGER := 1;
    CONSTANT upper_limit : INTEGER := 8;

  BEGIN
    IF (data_value <= 1) THEN
      width   := 0;
    ELSE
      WHILE (cnt < data_value) LOOP
        width := width + 1;
        cnt   := cnt *2;
      END LOOP;
    END IF;

    RETURN width;
  END log2roundup;

  --------------------------------------------------------
  -- FUNCION : count_ones_nbit
  -- Returns the binary encoded value of number of ones
  --------------------------------------------------------
  FUNCTION count_ones (
      indata  : std_logic_vector;
      indata_size : integer)
    RETURN integer IS
      VARIABLE tmp : integer := 0;
    BEGIN
       FOR i IN indata_size-1 DOWNTO 0 LOOP
         IF indata(i) = '0' THEN 
	   EXIT; 
	 END IF;
	 tmp := tmp + 1;
       end loop;
      RETURN tmp;
    END count_ones; 
END axi_fifo_mm_s_pkg;

