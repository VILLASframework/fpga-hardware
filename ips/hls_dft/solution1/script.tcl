############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_dft
set_top hls_dft
add_files hls_dft/utils.h
add_files hls_dft/dft.h
add_files hls_dft/dft.cpp
add_files -tb hls_dft/tb.cpp
open_solution "solution1"
set_part {xc7vx485tffg1761-2}
create_clock -period 8 -name default
config_rtl -encoding auto -reset all -reset_level low
#source "./hls_dft/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl -tool xsim
export_design -format ip_catalog -vendor "acs.eonerc.rwth-aachen.de" -display_name "AXI Stream DFT" -taxonomy "/VIVADO_HLS_IP"
