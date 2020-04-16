-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Apr  9 15:32:45 2020
-- Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_aurora_reset_0_0/top_aurora_reset_0_0_sim_netlist.vhdl
-- Design      : top_aurora_reset_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_aurora_reset_0_0_aurora_reset is
  port (
    reset : out STD_LOGIC;
    clk156 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_aurora_reset_0_0_aurora_reset : entity is "aurora_reset";
end top_aurora_reset_0_0_aurora_reset;

architecture STRUCTURE of top_aurora_reset_0_0_aurora_reset is
  signal flop_q0 : STD_LOGIC;
  signal flop_q1 : STD_LOGIC;
  signal flop_q2 : STD_LOGIC;
  signal flop_q3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \rst_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rst_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rst_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \rst_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \rst_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \rst_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \rst_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \rst_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \rst_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \rst_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rst_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rst_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[19]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[20]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[21]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[22]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[23]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[24]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[25]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \rst_count_reg_n_0_[9]\ : STD_LOGIC;
  signal \rst_d__0\ : STD_LOGIC;
  signal rst_pulse_n_0 : STD_LOGIC;
  signal rst_stretch : STD_LOGIC;
  signal rst_stretch_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \NLW_rst_count_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rst_count_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of flop_0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of flop_0 : label is "FDS";
  attribute BOX_TYPE of flop_1 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of flop_1 : label is "FDR";
  attribute BOX_TYPE of flop_2 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of flop_2 : label is "FDR";
  attribute BOX_TYPE of flop_3 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of flop_3 : label is "FDR";
  attribute BOX_TYPE of flop_rst156 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of flop_rst156 : label is "FDS";
begin
flop_0: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk156,
      CE => '1',
      D => '0',
      Q => flop_q0,
      S => '0'
    );
flop_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk156,
      CE => '1',
      D => flop_q0,
      Q => flop_q1,
      R => '0'
    );
flop_2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk156,
      CE => '1',
      D => flop_q1,
      Q => flop_q2,
      R => '0'
    );
flop_3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk156,
      CE => '1',
      D => flop_q2,
      Q => flop_q3,
      R => '0'
    );
flop_rst156: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk156,
      CE => '1',
      D => \rst_d__0\,
      Q => reset,
      S => '0'
    );
\rst_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in,
      O => sel
    );
\rst_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rst_count_reg_n_0_[0]\,
      O => \rst_count[0]_i_3_n_0\
    );
\rst_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[0]_i_2_n_7\,
      Q => \rst_count_reg_n_0_[0]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rst_count_reg[0]_i_2_n_0\,
      CO(2) => \rst_count_reg[0]_i_2_n_1\,
      CO(1) => \rst_count_reg[0]_i_2_n_2\,
      CO(0) => \rst_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rst_count_reg[0]_i_2_n_4\,
      O(2) => \rst_count_reg[0]_i_2_n_5\,
      O(1) => \rst_count_reg[0]_i_2_n_6\,
      O(0) => \rst_count_reg[0]_i_2_n_7\,
      S(3) => \rst_count_reg_n_0_[3]\,
      S(2) => \rst_count_reg_n_0_[2]\,
      S(1) => \rst_count_reg_n_0_[1]\,
      S(0) => \rst_count[0]_i_3_n_0\
    );
\rst_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[8]_i_1_n_5\,
      Q => \rst_count_reg_n_0_[10]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[8]_i_1_n_4\,
      Q => \rst_count_reg_n_0_[11]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[12]_i_1_n_7\,
      Q => \rst_count_reg_n_0_[12]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_count_reg[8]_i_1_n_0\,
      CO(3) => \rst_count_reg[12]_i_1_n_0\,
      CO(2) => \rst_count_reg[12]_i_1_n_1\,
      CO(1) => \rst_count_reg[12]_i_1_n_2\,
      CO(0) => \rst_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_count_reg[12]_i_1_n_4\,
      O(2) => \rst_count_reg[12]_i_1_n_5\,
      O(1) => \rst_count_reg[12]_i_1_n_6\,
      O(0) => \rst_count_reg[12]_i_1_n_7\,
      S(3) => \rst_count_reg_n_0_[15]\,
      S(2) => \rst_count_reg_n_0_[14]\,
      S(1) => \rst_count_reg_n_0_[13]\,
      S(0) => \rst_count_reg_n_0_[12]\
    );
\rst_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[12]_i_1_n_6\,
      Q => \rst_count_reg_n_0_[13]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[12]_i_1_n_5\,
      Q => \rst_count_reg_n_0_[14]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[12]_i_1_n_4\,
      Q => \rst_count_reg_n_0_[15]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[16]_i_1_n_7\,
      Q => \rst_count_reg_n_0_[16]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_count_reg[12]_i_1_n_0\,
      CO(3) => \rst_count_reg[16]_i_1_n_0\,
      CO(2) => \rst_count_reg[16]_i_1_n_1\,
      CO(1) => \rst_count_reg[16]_i_1_n_2\,
      CO(0) => \rst_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_count_reg[16]_i_1_n_4\,
      O(2) => \rst_count_reg[16]_i_1_n_5\,
      O(1) => \rst_count_reg[16]_i_1_n_6\,
      O(0) => \rst_count_reg[16]_i_1_n_7\,
      S(3) => \rst_count_reg_n_0_[19]\,
      S(2) => \rst_count_reg_n_0_[18]\,
      S(1) => \rst_count_reg_n_0_[17]\,
      S(0) => \rst_count_reg_n_0_[16]\
    );
\rst_count_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[16]_i_1_n_6\,
      Q => \rst_count_reg_n_0_[17]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[16]_i_1_n_5\,
      Q => \rst_count_reg_n_0_[18]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[16]_i_1_n_4\,
      Q => \rst_count_reg_n_0_[19]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[0]_i_2_n_6\,
      Q => \rst_count_reg_n_0_[1]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[20]_i_1_n_7\,
      Q => \rst_count_reg_n_0_[20]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_count_reg[16]_i_1_n_0\,
      CO(3) => \rst_count_reg[20]_i_1_n_0\,
      CO(2) => \rst_count_reg[20]_i_1_n_1\,
      CO(1) => \rst_count_reg[20]_i_1_n_2\,
      CO(0) => \rst_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_count_reg[20]_i_1_n_4\,
      O(2) => \rst_count_reg[20]_i_1_n_5\,
      O(1) => \rst_count_reg[20]_i_1_n_6\,
      O(0) => \rst_count_reg[20]_i_1_n_7\,
      S(3) => \rst_count_reg_n_0_[23]\,
      S(2) => \rst_count_reg_n_0_[22]\,
      S(1) => \rst_count_reg_n_0_[21]\,
      S(0) => \rst_count_reg_n_0_[20]\
    );
\rst_count_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[20]_i_1_n_6\,
      Q => \rst_count_reg_n_0_[21]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[20]_i_1_n_5\,
      Q => \rst_count_reg_n_0_[22]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[20]_i_1_n_4\,
      Q => \rst_count_reg_n_0_[23]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[24]_i_1_n_7\,
      Q => \rst_count_reg_n_0_[24]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_count_reg[20]_i_1_n_0\,
      CO(3 downto 2) => \NLW_rst_count_reg[24]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rst_count_reg[24]_i_1_n_2\,
      CO(0) => \rst_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rst_count_reg[24]_i_1_O_UNCONNECTED\(3),
      O(2) => \rst_count_reg[24]_i_1_n_5\,
      O(1) => \rst_count_reg[24]_i_1_n_6\,
      O(0) => \rst_count_reg[24]_i_1_n_7\,
      S(3) => '0',
      S(2) => p_0_in,
      S(1) => \rst_count_reg_n_0_[25]\,
      S(0) => \rst_count_reg_n_0_[24]\
    );
\rst_count_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[24]_i_1_n_6\,
      Q => \rst_count_reg_n_0_[25]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[24]_i_1_n_5\,
      Q => p_0_in,
      R => rst_pulse_n_0
    );
\rst_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[0]_i_2_n_5\,
      Q => \rst_count_reg_n_0_[2]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[0]_i_2_n_4\,
      Q => \rst_count_reg_n_0_[3]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[4]_i_1_n_7\,
      Q => \rst_count_reg_n_0_[4]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_count_reg[0]_i_2_n_0\,
      CO(3) => \rst_count_reg[4]_i_1_n_0\,
      CO(2) => \rst_count_reg[4]_i_1_n_1\,
      CO(1) => \rst_count_reg[4]_i_1_n_2\,
      CO(0) => \rst_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_count_reg[4]_i_1_n_4\,
      O(2) => \rst_count_reg[4]_i_1_n_5\,
      O(1) => \rst_count_reg[4]_i_1_n_6\,
      O(0) => \rst_count_reg[4]_i_1_n_7\,
      S(3) => \rst_count_reg_n_0_[7]\,
      S(2) => \rst_count_reg_n_0_[6]\,
      S(1) => \rst_count_reg_n_0_[5]\,
      S(0) => \rst_count_reg_n_0_[4]\
    );
\rst_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[4]_i_1_n_6\,
      Q => \rst_count_reg_n_0_[5]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[4]_i_1_n_5\,
      Q => \rst_count_reg_n_0_[6]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[4]_i_1_n_4\,
      Q => \rst_count_reg_n_0_[7]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[8]_i_1_n_7\,
      Q => \rst_count_reg_n_0_[8]\,
      R => rst_pulse_n_0
    );
\rst_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_count_reg[4]_i_1_n_0\,
      CO(3) => \rst_count_reg[8]_i_1_n_0\,
      CO(2) => \rst_count_reg[8]_i_1_n_1\,
      CO(1) => \rst_count_reg[8]_i_1_n_2\,
      CO(0) => \rst_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rst_count_reg[8]_i_1_n_4\,
      O(2) => \rst_count_reg[8]_i_1_n_5\,
      O(1) => \rst_count_reg[8]_i_1_n_6\,
      O(0) => \rst_count_reg[8]_i_1_n_7\,
      S(3) => \rst_count_reg_n_0_[11]\,
      S(2) => \rst_count_reg_n_0_[10]\,
      S(1) => \rst_count_reg_n_0_[9]\,
      S(0) => \rst_count_reg_n_0_[8]\
    );
\rst_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => sel,
      D => \rst_count_reg[8]_i_1_n_6\,
      Q => \rst_count_reg_n_0_[9]\,
      R => rst_pulse_n_0
    );
rst_d: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => flop_q3,
      I1 => flop_q2,
      I2 => flop_q1,
      I3 => rst_stretch,
      I4 => flop_q0,
      O => \rst_d__0\
    );
rst_pulse: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => flop_q1,
      I1 => flop_q2,
      I2 => flop_q3,
      O => rst_pulse_n_0
    );
rst_stretch_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => p_0_in,
      I1 => rst_stretch,
      I2 => flop_q3,
      I3 => flop_q2,
      I4 => flop_q1,
      O => rst_stretch_i_1_n_0
    );
rst_stretch_reg: unisim.vcomponents.FDRE
     port map (
      C => clk156,
      CE => '1',
      D => rst_stretch_i_1_n_0,
      Q => rst_stretch,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_aurora_reset_0_0 is
  port (
    clk156 : in STD_LOGIC;
    reset : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_aurora_reset_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_aurora_reset_0_0 : entity is "top_aurora_reset_0_0,aurora_reset,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_aurora_reset_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_aurora_reset_0_0 : entity is "aurora_reset,Vivado 2018.3";
end top_aurora_reset_0_0;

architecture STRUCTURE of top_aurora_reset_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
begin
inst: entity work.top_aurora_reset_0_0_aurora_reset
     port map (
      clk156 => clk156,
      reset => reset
    );
end STRUCTURE;
