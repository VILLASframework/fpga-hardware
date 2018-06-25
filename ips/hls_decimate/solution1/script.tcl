############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_decimate
set_top hls_decimate
add_files hls_decimate/decimate.cpp
open_solution "solution1"
set_part {xc7vx485tffg1761-2} -tool vivado
create_clock -period 10 -name default
#source "./hls_decimate/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog -vendor "acs.eonerc.rwth-aachen.de" -display_name "Rate decimator for AXI Stream packets" -taxonomy "/VIVADO_HLS_IP"
