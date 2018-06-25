############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_multiply
set_top hls_multiply
add_files hls_multiply/multiply.cpp
add_files -tb hls_multiply/tb.cpp
open_solution "solution1"
set_part {xc7vx485tffg1761-2}
create_clock -period 8 -name default
#source "./hls_multiply/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog -vendor "acs.eonerc.rwth-aachen.de" -version "1.1" -display_name "FP Multiplier"
