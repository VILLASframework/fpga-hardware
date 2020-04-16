-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Apr  9 15:32:44 2020
-- Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_aurora_reset_0_0/top_aurora_reset_0_0_stub.vhdl
-- Design      : top_aurora_reset_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_aurora_reset_0_0 is
  Port ( 
    clk156 : in STD_LOGIC;
    reset : out STD_LOGIC
  );

end top_aurora_reset_0_0;

architecture stub of top_aurora_reset_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk156,reset";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "aurora_reset,Vivado 2018.3";
begin
end;
