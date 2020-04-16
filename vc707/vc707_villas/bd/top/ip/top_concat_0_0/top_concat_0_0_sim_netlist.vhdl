-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Apr 13 12:49:04 2020
-- Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_concat_0_0/top_concat_0_0_sim_netlist.vhdl
-- Design      : top_concat_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_concat_0_0 is
  port (
    in3 : in STD_LOGIC;
    in2 : in STD_LOGIC;
    in1 : in STD_LOGIC;
    in0 : in STD_LOGIC;
    concated : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_concat_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_concat_0_0 : entity is "top_concat_0_0,concat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_concat_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_concat_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_concat_0_0 : entity is "concat,Vivado 2018.3";
end top_concat_0_0;

architecture STRUCTURE of top_concat_0_0 is
  signal \^in0\ : STD_LOGIC;
  signal \^in1\ : STD_LOGIC;
  signal \^in2\ : STD_LOGIC;
  signal \^in3\ : STD_LOGIC;
begin
  \^in0\ <= in0;
  \^in1\ <= in1;
  \^in2\ <= in2;
  \^in3\ <= in3;
  concated(3) <= \^in3\;
  concated(2) <= \^in2\;
  concated(1) <= \^in1\;
  concated(0) <= \^in0\;
end STRUCTURE;
