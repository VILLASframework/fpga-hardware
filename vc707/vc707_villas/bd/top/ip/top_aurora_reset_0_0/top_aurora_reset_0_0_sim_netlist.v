// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Apr  9 15:32:45 2020
// Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_aurora_reset_0_0/top_aurora_reset_0_0_sim_netlist.v
// Design      : top_aurora_reset_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_aurora_reset_0_0,aurora_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "aurora_reset,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module top_aurora_reset_0_0
   (clk156,
    reset);
  input clk156;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH" *) output reset;

  wire clk156;
  wire reset;

  top_aurora_reset_0_0_aurora_reset inst
       (.clk156(clk156),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "aurora_reset" *) 
module top_aurora_reset_0_0_aurora_reset
   (reset,
    clk156);
  output reset;
  input clk156;

  wire clk156;
  wire flop_q0;
  wire flop_q1;
  wire flop_q2;
  wire flop_q3;
  wire p_0_in;
  wire reset;
  wire \rst_count[0]_i_3_n_0 ;
  wire \rst_count_reg[0]_i_2_n_0 ;
  wire \rst_count_reg[0]_i_2_n_1 ;
  wire \rst_count_reg[0]_i_2_n_2 ;
  wire \rst_count_reg[0]_i_2_n_3 ;
  wire \rst_count_reg[0]_i_2_n_4 ;
  wire \rst_count_reg[0]_i_2_n_5 ;
  wire \rst_count_reg[0]_i_2_n_6 ;
  wire \rst_count_reg[0]_i_2_n_7 ;
  wire \rst_count_reg[12]_i_1_n_0 ;
  wire \rst_count_reg[12]_i_1_n_1 ;
  wire \rst_count_reg[12]_i_1_n_2 ;
  wire \rst_count_reg[12]_i_1_n_3 ;
  wire \rst_count_reg[12]_i_1_n_4 ;
  wire \rst_count_reg[12]_i_1_n_5 ;
  wire \rst_count_reg[12]_i_1_n_6 ;
  wire \rst_count_reg[12]_i_1_n_7 ;
  wire \rst_count_reg[16]_i_1_n_0 ;
  wire \rst_count_reg[16]_i_1_n_1 ;
  wire \rst_count_reg[16]_i_1_n_2 ;
  wire \rst_count_reg[16]_i_1_n_3 ;
  wire \rst_count_reg[16]_i_1_n_4 ;
  wire \rst_count_reg[16]_i_1_n_5 ;
  wire \rst_count_reg[16]_i_1_n_6 ;
  wire \rst_count_reg[16]_i_1_n_7 ;
  wire \rst_count_reg[20]_i_1_n_0 ;
  wire \rst_count_reg[20]_i_1_n_1 ;
  wire \rst_count_reg[20]_i_1_n_2 ;
  wire \rst_count_reg[20]_i_1_n_3 ;
  wire \rst_count_reg[20]_i_1_n_4 ;
  wire \rst_count_reg[20]_i_1_n_5 ;
  wire \rst_count_reg[20]_i_1_n_6 ;
  wire \rst_count_reg[20]_i_1_n_7 ;
  wire \rst_count_reg[24]_i_1_n_2 ;
  wire \rst_count_reg[24]_i_1_n_3 ;
  wire \rst_count_reg[24]_i_1_n_5 ;
  wire \rst_count_reg[24]_i_1_n_6 ;
  wire \rst_count_reg[24]_i_1_n_7 ;
  wire \rst_count_reg[4]_i_1_n_0 ;
  wire \rst_count_reg[4]_i_1_n_1 ;
  wire \rst_count_reg[4]_i_1_n_2 ;
  wire \rst_count_reg[4]_i_1_n_3 ;
  wire \rst_count_reg[4]_i_1_n_4 ;
  wire \rst_count_reg[4]_i_1_n_5 ;
  wire \rst_count_reg[4]_i_1_n_6 ;
  wire \rst_count_reg[4]_i_1_n_7 ;
  wire \rst_count_reg[8]_i_1_n_0 ;
  wire \rst_count_reg[8]_i_1_n_1 ;
  wire \rst_count_reg[8]_i_1_n_2 ;
  wire \rst_count_reg[8]_i_1_n_3 ;
  wire \rst_count_reg[8]_i_1_n_4 ;
  wire \rst_count_reg[8]_i_1_n_5 ;
  wire \rst_count_reg[8]_i_1_n_6 ;
  wire \rst_count_reg[8]_i_1_n_7 ;
  wire \rst_count_reg_n_0_[0] ;
  wire \rst_count_reg_n_0_[10] ;
  wire \rst_count_reg_n_0_[11] ;
  wire \rst_count_reg_n_0_[12] ;
  wire \rst_count_reg_n_0_[13] ;
  wire \rst_count_reg_n_0_[14] ;
  wire \rst_count_reg_n_0_[15] ;
  wire \rst_count_reg_n_0_[16] ;
  wire \rst_count_reg_n_0_[17] ;
  wire \rst_count_reg_n_0_[18] ;
  wire \rst_count_reg_n_0_[19] ;
  wire \rst_count_reg_n_0_[1] ;
  wire \rst_count_reg_n_0_[20] ;
  wire \rst_count_reg_n_0_[21] ;
  wire \rst_count_reg_n_0_[22] ;
  wire \rst_count_reg_n_0_[23] ;
  wire \rst_count_reg_n_0_[24] ;
  wire \rst_count_reg_n_0_[25] ;
  wire \rst_count_reg_n_0_[2] ;
  wire \rst_count_reg_n_0_[3] ;
  wire \rst_count_reg_n_0_[4] ;
  wire \rst_count_reg_n_0_[5] ;
  wire \rst_count_reg_n_0_[6] ;
  wire \rst_count_reg_n_0_[7] ;
  wire \rst_count_reg_n_0_[8] ;
  wire \rst_count_reg_n_0_[9] ;
  wire rst_d__0;
  wire rst_pulse_n_0;
  wire rst_stretch;
  wire rst_stretch_i_1_n_0;
  wire sel;
  wire [3:2]\NLW_rst_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_rst_count_reg[24]_i_1_O_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  FDSE #(
    .INIT(1'b1)) 
    flop_0
       (.C(clk156),
        .CE(1'b1),
        .D(1'b0),
        .Q(flop_q0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    flop_1
       (.C(clk156),
        .CE(1'b1),
        .D(flop_q0),
        .Q(flop_q1),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    flop_2
       (.C(clk156),
        .CE(1'b1),
        .D(flop_q1),
        .Q(flop_q2),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    flop_3
       (.C(clk156),
        .CE(1'b1),
        .D(flop_q2),
        .Q(flop_q3),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDS" *) 
  FDSE #(
    .INIT(1'b1)) 
    flop_rst156
       (.C(clk156),
        .CE(1'b1),
        .D(rst_d__0),
        .Q(reset),
        .S(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_count[0]_i_1 
       (.I0(p_0_in),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_count[0]_i_3 
       (.I0(\rst_count_reg_n_0_[0] ),
        .O(\rst_count[0]_i_3_n_0 ));
  FDRE \rst_count_reg[0] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[0]_i_2_n_7 ),
        .Q(\rst_count_reg_n_0_[0] ),
        .R(rst_pulse_n_0));
  CARRY4 \rst_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\rst_count_reg[0]_i_2_n_0 ,\rst_count_reg[0]_i_2_n_1 ,\rst_count_reg[0]_i_2_n_2 ,\rst_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rst_count_reg[0]_i_2_n_4 ,\rst_count_reg[0]_i_2_n_5 ,\rst_count_reg[0]_i_2_n_6 ,\rst_count_reg[0]_i_2_n_7 }),
        .S({\rst_count_reg_n_0_[3] ,\rst_count_reg_n_0_[2] ,\rst_count_reg_n_0_[1] ,\rst_count[0]_i_3_n_0 }));
  FDRE \rst_count_reg[10] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[8]_i_1_n_5 ),
        .Q(\rst_count_reg_n_0_[10] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[11] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[8]_i_1_n_4 ),
        .Q(\rst_count_reg_n_0_[11] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[12] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[12]_i_1_n_7 ),
        .Q(\rst_count_reg_n_0_[12] ),
        .R(rst_pulse_n_0));
  CARRY4 \rst_count_reg[12]_i_1 
       (.CI(\rst_count_reg[8]_i_1_n_0 ),
        .CO({\rst_count_reg[12]_i_1_n_0 ,\rst_count_reg[12]_i_1_n_1 ,\rst_count_reg[12]_i_1_n_2 ,\rst_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_count_reg[12]_i_1_n_4 ,\rst_count_reg[12]_i_1_n_5 ,\rst_count_reg[12]_i_1_n_6 ,\rst_count_reg[12]_i_1_n_7 }),
        .S({\rst_count_reg_n_0_[15] ,\rst_count_reg_n_0_[14] ,\rst_count_reg_n_0_[13] ,\rst_count_reg_n_0_[12] }));
  FDRE \rst_count_reg[13] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[12]_i_1_n_6 ),
        .Q(\rst_count_reg_n_0_[13] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[14] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[12]_i_1_n_5 ),
        .Q(\rst_count_reg_n_0_[14] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[15] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[12]_i_1_n_4 ),
        .Q(\rst_count_reg_n_0_[15] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[16] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[16]_i_1_n_7 ),
        .Q(\rst_count_reg_n_0_[16] ),
        .R(rst_pulse_n_0));
  CARRY4 \rst_count_reg[16]_i_1 
       (.CI(\rst_count_reg[12]_i_1_n_0 ),
        .CO({\rst_count_reg[16]_i_1_n_0 ,\rst_count_reg[16]_i_1_n_1 ,\rst_count_reg[16]_i_1_n_2 ,\rst_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_count_reg[16]_i_1_n_4 ,\rst_count_reg[16]_i_1_n_5 ,\rst_count_reg[16]_i_1_n_6 ,\rst_count_reg[16]_i_1_n_7 }),
        .S({\rst_count_reg_n_0_[19] ,\rst_count_reg_n_0_[18] ,\rst_count_reg_n_0_[17] ,\rst_count_reg_n_0_[16] }));
  FDRE \rst_count_reg[17] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[16]_i_1_n_6 ),
        .Q(\rst_count_reg_n_0_[17] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[18] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[16]_i_1_n_5 ),
        .Q(\rst_count_reg_n_0_[18] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[19] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[16]_i_1_n_4 ),
        .Q(\rst_count_reg_n_0_[19] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[1] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[0]_i_2_n_6 ),
        .Q(\rst_count_reg_n_0_[1] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[20] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[20]_i_1_n_7 ),
        .Q(\rst_count_reg_n_0_[20] ),
        .R(rst_pulse_n_0));
  CARRY4 \rst_count_reg[20]_i_1 
       (.CI(\rst_count_reg[16]_i_1_n_0 ),
        .CO({\rst_count_reg[20]_i_1_n_0 ,\rst_count_reg[20]_i_1_n_1 ,\rst_count_reg[20]_i_1_n_2 ,\rst_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_count_reg[20]_i_1_n_4 ,\rst_count_reg[20]_i_1_n_5 ,\rst_count_reg[20]_i_1_n_6 ,\rst_count_reg[20]_i_1_n_7 }),
        .S({\rst_count_reg_n_0_[23] ,\rst_count_reg_n_0_[22] ,\rst_count_reg_n_0_[21] ,\rst_count_reg_n_0_[20] }));
  FDRE \rst_count_reg[21] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[20]_i_1_n_6 ),
        .Q(\rst_count_reg_n_0_[21] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[22] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[20]_i_1_n_5 ),
        .Q(\rst_count_reg_n_0_[22] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[23] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[20]_i_1_n_4 ),
        .Q(\rst_count_reg_n_0_[23] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[24] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[24]_i_1_n_7 ),
        .Q(\rst_count_reg_n_0_[24] ),
        .R(rst_pulse_n_0));
  CARRY4 \rst_count_reg[24]_i_1 
       (.CI(\rst_count_reg[20]_i_1_n_0 ),
        .CO({\NLW_rst_count_reg[24]_i_1_CO_UNCONNECTED [3:2],\rst_count_reg[24]_i_1_n_2 ,\rst_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rst_count_reg[24]_i_1_O_UNCONNECTED [3],\rst_count_reg[24]_i_1_n_5 ,\rst_count_reg[24]_i_1_n_6 ,\rst_count_reg[24]_i_1_n_7 }),
        .S({1'b0,p_0_in,\rst_count_reg_n_0_[25] ,\rst_count_reg_n_0_[24] }));
  FDRE \rst_count_reg[25] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[24]_i_1_n_6 ),
        .Q(\rst_count_reg_n_0_[25] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[26] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[24]_i_1_n_5 ),
        .Q(p_0_in),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[2] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[0]_i_2_n_5 ),
        .Q(\rst_count_reg_n_0_[2] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[3] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[0]_i_2_n_4 ),
        .Q(\rst_count_reg_n_0_[3] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[4] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[4]_i_1_n_7 ),
        .Q(\rst_count_reg_n_0_[4] ),
        .R(rst_pulse_n_0));
  CARRY4 \rst_count_reg[4]_i_1 
       (.CI(\rst_count_reg[0]_i_2_n_0 ),
        .CO({\rst_count_reg[4]_i_1_n_0 ,\rst_count_reg[4]_i_1_n_1 ,\rst_count_reg[4]_i_1_n_2 ,\rst_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_count_reg[4]_i_1_n_4 ,\rst_count_reg[4]_i_1_n_5 ,\rst_count_reg[4]_i_1_n_6 ,\rst_count_reg[4]_i_1_n_7 }),
        .S({\rst_count_reg_n_0_[7] ,\rst_count_reg_n_0_[6] ,\rst_count_reg_n_0_[5] ,\rst_count_reg_n_0_[4] }));
  FDRE \rst_count_reg[5] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[4]_i_1_n_6 ),
        .Q(\rst_count_reg_n_0_[5] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[6] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[4]_i_1_n_5 ),
        .Q(\rst_count_reg_n_0_[6] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[7] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[4]_i_1_n_4 ),
        .Q(\rst_count_reg_n_0_[7] ),
        .R(rst_pulse_n_0));
  FDRE \rst_count_reg[8] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[8]_i_1_n_7 ),
        .Q(\rst_count_reg_n_0_[8] ),
        .R(rst_pulse_n_0));
  CARRY4 \rst_count_reg[8]_i_1 
       (.CI(\rst_count_reg[4]_i_1_n_0 ),
        .CO({\rst_count_reg[8]_i_1_n_0 ,\rst_count_reg[8]_i_1_n_1 ,\rst_count_reg[8]_i_1_n_2 ,\rst_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rst_count_reg[8]_i_1_n_4 ,\rst_count_reg[8]_i_1_n_5 ,\rst_count_reg[8]_i_1_n_6 ,\rst_count_reg[8]_i_1_n_7 }),
        .S({\rst_count_reg_n_0_[11] ,\rst_count_reg_n_0_[10] ,\rst_count_reg_n_0_[9] ,\rst_count_reg_n_0_[8] }));
  FDRE \rst_count_reg[9] 
       (.C(clk156),
        .CE(sel),
        .D(\rst_count_reg[8]_i_1_n_6 ),
        .Q(\rst_count_reg_n_0_[9] ),
        .R(rst_pulse_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    rst_d
       (.I0(flop_q3),
        .I1(flop_q2),
        .I2(flop_q1),
        .I3(rst_stretch),
        .I4(flop_q0),
        .O(rst_d__0));
  LUT3 #(
    .INIT(8'hFE)) 
    rst_pulse
       (.I0(flop_q1),
        .I1(flop_q2),
        .I2(flop_q3),
        .O(rst_pulse_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    rst_stretch_i_1
       (.I0(p_0_in),
        .I1(rst_stretch),
        .I2(flop_q3),
        .I3(flop_q2),
        .I4(flop_q1),
        .O(rst_stretch_i_1_n_0));
  FDRE rst_stretch_reg
       (.C(clk156),
        .CE(1'b1),
        .D(rst_stretch_i_1_n_0),
        .Q(rst_stretch),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
