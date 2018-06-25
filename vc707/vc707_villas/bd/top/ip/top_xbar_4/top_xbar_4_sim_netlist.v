// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Jun 23 17:39:20 2016
// Host        : E265 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top top_xbar_4 -prefix top_xbar_4_ top_xbar_4_sim_netlist.v
// Design      : top_xbar_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_xbar_4_axis_infrastructure_v1_1_0_cdc_handshake
   (src_rcv,
    dest_out,
    E,
    s_axi_ctrl_aclk,
    Q,
    src_send,
    aclk);
  output src_rcv;
  output [41:0]dest_out;
  output [0:0]E;
  input s_axi_ctrl_aclk;
  input [69:0]Q;
  input src_send;
  input aclk;

  wire [0:0]E;
  wire [69:0]Q;
  wire aclk;
  wire [62:35]cdc_handshake_data_out;
  wire [41:0]dest_out;
  wire s_axi_ctrl_aclk;
  wire src_rcv;
  wire src_send;

  (* DEST_EXT_HSK = "0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_SYNC_FF = "4" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "70" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_handshake inst_xpm_cdc_handshake
       (.dest_ack(1'b0),
        .dest_clk(aclk),
        .dest_out({dest_out[41:35],cdc_handshake_data_out,dest_out[34:0]}),
        .dest_req(E),
        .src_clk(s_axi_ctrl_aclk),
        .src_in(Q),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

module top_xbar_4_axis_infrastructure_v1_1_0_clock_synchronizer
   (I27,
    src_in,
    aclk,
    aresetn);
  output I27;
  input src_in;
  input aclk;
  input aresetn;

  wire I27;
  wire aclk;
  wire aresetn;
  wire soft_reset;
  wire src_in;

  LUT2 #(
    .INIT(4'hB)) 
    areset_r_i_1
       (.I0(soft_reset),
        .I1(aresetn),
        .O(I27));
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_single inst_xpm_cdc_single
       (.dest_clk(aclk),
        .dest_out(soft_reset),
        .src_clk(1'b0),
        .src_in(src_in));
endmodule

module top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice
   (\m_axis_tdata[0] ,
    \m_axis_tdata[1] ,
    \m_axis_tdata[2] ,
    \m_axis_tdata[3] ,
    \m_axis_tdata[4] ,
    \m_axis_tdata[5] ,
    \m_axis_tdata[6] ,
    \m_axis_tdata[7] ,
    \m_axis_tdata[8] ,
    \m_axis_tdata[9] ,
    \m_axis_tdata[10] ,
    \m_axis_tdata[11] ,
    \m_axis_tdata[12] ,
    \m_axis_tdata[13] ,
    \m_axis_tdata[14] ,
    \m_axis_tdata[15] ,
    \m_axis_tdata[16] ,
    \m_axis_tdata[17] ,
    \m_axis_tdata[18] ,
    \m_axis_tdata[19] ,
    \m_axis_tdata[20] ,
    \m_axis_tdata[21] ,
    \m_axis_tdata[22] ,
    \m_axis_tdata[23] ,
    \m_axis_tdata[24] ,
    \m_axis_tdata[25] ,
    \m_axis_tdata[26] ,
    \m_axis_tdata[27] ,
    \m_axis_tdata[28] ,
    \m_axis_tdata[29] ,
    \m_axis_tdata[30] ,
    \m_axis_tdata[31] ,
    \m_axis_tkeep[0] ,
    \m_axis_tkeep[1] ,
    \m_axis_tkeep[2] ,
    \m_axis_tkeep[3] ,
    \m_axis_tlast[0] ,
    \m_axis_tvalid[0] ,
    \m_axis_tdata[32] ,
    \m_axis_tdata[33] ,
    \m_axis_tdata[34] ,
    \m_axis_tdata[35] ,
    \m_axis_tdata[36] ,
    \m_axis_tdata[37] ,
    \m_axis_tdata[38] ,
    \m_axis_tdata[39] ,
    \m_axis_tdata[40] ,
    \m_axis_tdata[41] ,
    \m_axis_tdata[42] ,
    \m_axis_tdata[43] ,
    \m_axis_tdata[44] ,
    \m_axis_tdata[45] ,
    \m_axis_tdata[46] ,
    \m_axis_tdata[47] ,
    \m_axis_tdata[48] ,
    \m_axis_tdata[49] ,
    \m_axis_tdata[50] ,
    \m_axis_tdata[51] ,
    \m_axis_tdata[52] ,
    \m_axis_tdata[53] ,
    \m_axis_tdata[54] ,
    \m_axis_tdata[55] ,
    \m_axis_tdata[56] ,
    \m_axis_tdata[57] ,
    \m_axis_tdata[58] ,
    \m_axis_tdata[59] ,
    \m_axis_tdata[60] ,
    \m_axis_tdata[61] ,
    \m_axis_tdata[62] ,
    \m_axis_tdata[63] ,
    \m_axis_tkeep[4] ,
    \m_axis_tkeep[5] ,
    \m_axis_tkeep[6] ,
    \m_axis_tkeep[7] ,
    \m_axis_tlast[1] ,
    \m_axis_tvalid[1] ,
    \m_axis_tdata[64] ,
    \m_axis_tdata[65] ,
    \m_axis_tdata[66] ,
    \m_axis_tdata[67] ,
    \m_axis_tdata[68] ,
    \m_axis_tdata[69] ,
    \m_axis_tdata[70] ,
    \m_axis_tdata[71] ,
    \m_axis_tdata[72] ,
    \m_axis_tdata[73] ,
    \m_axis_tdata[74] ,
    \m_axis_tdata[75] ,
    \m_axis_tdata[76] ,
    \m_axis_tdata[77] ,
    \m_axis_tdata[78] ,
    \m_axis_tdata[79] ,
    \m_axis_tdata[80] ,
    \m_axis_tdata[81] ,
    \m_axis_tdata[82] ,
    \m_axis_tdata[83] ,
    \m_axis_tdata[84] ,
    \m_axis_tdata[85] ,
    \m_axis_tdata[86] ,
    \m_axis_tdata[87] ,
    \m_axis_tdata[88] ,
    \m_axis_tdata[89] ,
    \m_axis_tdata[90] ,
    \m_axis_tdata[91] ,
    \m_axis_tdata[92] ,
    \m_axis_tdata[93] ,
    \m_axis_tdata[94] ,
    \m_axis_tdata[95] ,
    \m_axis_tkeep[8] ,
    \m_axis_tkeep[9] ,
    \m_axis_tkeep[10] ,
    \m_axis_tkeep[11] ,
    \m_axis_tlast[2] ,
    \m_axis_tvalid[2] ,
    \m_axis_tdata[96] ,
    \m_axis_tdata[97] ,
    \m_axis_tdata[98] ,
    \m_axis_tdata[99] ,
    \m_axis_tdata[100] ,
    \m_axis_tdata[101] ,
    \m_axis_tdata[102] ,
    \m_axis_tdata[103] ,
    \m_axis_tdata[104] ,
    \m_axis_tdata[105] ,
    \m_axis_tdata[106] ,
    \m_axis_tdata[107] ,
    \m_axis_tdata[108] ,
    \m_axis_tdata[109] ,
    \m_axis_tdata[110] ,
    \m_axis_tdata[111] ,
    \m_axis_tdata[112] ,
    \m_axis_tdata[113] ,
    \m_axis_tdata[114] ,
    \m_axis_tdata[115] ,
    \m_axis_tdata[116] ,
    \m_axis_tdata[117] ,
    \m_axis_tdata[118] ,
    \m_axis_tdata[119] ,
    \m_axis_tdata[120] ,
    \m_axis_tdata[121] ,
    \m_axis_tdata[122] ,
    \m_axis_tdata[123] ,
    \m_axis_tdata[124] ,
    \m_axis_tdata[125] ,
    \m_axis_tdata[126] ,
    \m_axis_tdata[127] ,
    \m_axis_tkeep[12] ,
    \m_axis_tkeep[13] ,
    \m_axis_tkeep[14] ,
    \m_axis_tkeep[15] ,
    \m_axis_tlast[3] ,
    \m_axis_tvalid[3] ,
    \m_axis_tdata[128] ,
    \m_axis_tdata[129] ,
    \m_axis_tdata[130] ,
    \m_axis_tdata[131] ,
    \m_axis_tdata[132] ,
    \m_axis_tdata[133] ,
    \m_axis_tdata[134] ,
    \m_axis_tdata[135] ,
    \m_axis_tdata[136] ,
    \m_axis_tdata[137] ,
    \m_axis_tdata[138] ,
    \m_axis_tdata[139] ,
    \m_axis_tdata[140] ,
    \m_axis_tdata[141] ,
    \m_axis_tdata[142] ,
    \m_axis_tdata[143] ,
    \m_axis_tdata[144] ,
    \m_axis_tdata[145] ,
    \m_axis_tdata[146] ,
    \m_axis_tdata[147] ,
    \m_axis_tdata[148] ,
    \m_axis_tdata[149] ,
    \m_axis_tdata[150] ,
    \m_axis_tdata[151] ,
    \m_axis_tdata[152] ,
    \m_axis_tdata[153] ,
    \m_axis_tdata[154] ,
    \m_axis_tdata[155] ,
    \m_axis_tdata[156] ,
    \m_axis_tdata[157] ,
    \m_axis_tdata[158] ,
    \m_axis_tdata[159] ,
    \m_axis_tkeep[16] ,
    \m_axis_tkeep[17] ,
    \m_axis_tkeep[18] ,
    \m_axis_tkeep[19] ,
    \m_axis_tlast[4] ,
    \m_axis_tvalid[4] ,
    \m_axis_tdata[160] ,
    \m_axis_tdata[161] ,
    \m_axis_tdata[162] ,
    \m_axis_tdata[163] ,
    \m_axis_tdata[164] ,
    \m_axis_tdata[165] ,
    \m_axis_tdata[166] ,
    \m_axis_tdata[167] ,
    \m_axis_tdata[168] ,
    \m_axis_tdata[169] ,
    \m_axis_tdata[170] ,
    \m_axis_tdata[171] ,
    \m_axis_tdata[172] ,
    \m_axis_tdata[173] ,
    \m_axis_tdata[174] ,
    \m_axis_tdata[175] ,
    \m_axis_tdata[176] ,
    \m_axis_tdata[177] ,
    \m_axis_tdata[178] ,
    \m_axis_tdata[179] ,
    \m_axis_tdata[180] ,
    \m_axis_tdata[181] ,
    \m_axis_tdata[182] ,
    \m_axis_tdata[183] ,
    \m_axis_tdata[184] ,
    \m_axis_tdata[185] ,
    \m_axis_tdata[186] ,
    \m_axis_tdata[187] ,
    \m_axis_tdata[188] ,
    \m_axis_tdata[189] ,
    \m_axis_tdata[190] ,
    \m_axis_tdata[191] ,
    \m_axis_tkeep[20] ,
    \m_axis_tkeep[21] ,
    \m_axis_tkeep[22] ,
    \m_axis_tkeep[23] ,
    \m_axis_tlast[5] ,
    \gen_AB_reg_slice.sel_rd_reg_0 ,
    \m_axis_tvalid[5] ,
    \m_axis_tdata[192] ,
    \m_axis_tdata[193] ,
    \m_axis_tdata[194] ,
    \m_axis_tdata[195] ,
    \m_axis_tdata[196] ,
    \m_axis_tdata[197] ,
    \m_axis_tdata[198] ,
    \m_axis_tdata[199] ,
    \m_axis_tdata[200] ,
    \m_axis_tdata[201] ,
    \m_axis_tdata[202] ,
    \m_axis_tdata[203] ,
    \m_axis_tdata[204] ,
    \m_axis_tdata[205] ,
    \m_axis_tdata[206] ,
    \m_axis_tdata[207] ,
    \m_axis_tdata[208] ,
    \m_axis_tdata[209] ,
    \m_axis_tdata[210] ,
    \m_axis_tdata[211] ,
    \m_axis_tdata[212] ,
    \m_axis_tdata[213] ,
    \m_axis_tdata[214] ,
    \m_axis_tdata[215] ,
    \m_axis_tdata[216] ,
    \m_axis_tdata[217] ,
    \m_axis_tdata[218] ,
    \m_axis_tdata[219] ,
    \m_axis_tdata[220] ,
    \m_axis_tdata[221] ,
    \m_axis_tdata[222] ,
    \m_axis_tdata[223] ,
    \m_axis_tkeep[24] ,
    \m_axis_tkeep[25] ,
    \m_axis_tkeep[26] ,
    \m_axis_tkeep[27] ,
    \m_axis_tlast[6] ,
    \m_axis_tvalid[6] ,
    \s_axis_tready[6] ,
    \gen_AB_reg_slice.sel_rd_reg_1 ,
    \gen_AB_reg_slice.sel_rd_reg_2 ,
    ctrl_reg_synch,
    p_7_out,
    p_12_out,
    m_axis_tready,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD);
  output \m_axis_tdata[0] ;
  output \m_axis_tdata[1] ;
  output \m_axis_tdata[2] ;
  output \m_axis_tdata[3] ;
  output \m_axis_tdata[4] ;
  output \m_axis_tdata[5] ;
  output \m_axis_tdata[6] ;
  output \m_axis_tdata[7] ;
  output \m_axis_tdata[8] ;
  output \m_axis_tdata[9] ;
  output \m_axis_tdata[10] ;
  output \m_axis_tdata[11] ;
  output \m_axis_tdata[12] ;
  output \m_axis_tdata[13] ;
  output \m_axis_tdata[14] ;
  output \m_axis_tdata[15] ;
  output \m_axis_tdata[16] ;
  output \m_axis_tdata[17] ;
  output \m_axis_tdata[18] ;
  output \m_axis_tdata[19] ;
  output \m_axis_tdata[20] ;
  output \m_axis_tdata[21] ;
  output \m_axis_tdata[22] ;
  output \m_axis_tdata[23] ;
  output \m_axis_tdata[24] ;
  output \m_axis_tdata[25] ;
  output \m_axis_tdata[26] ;
  output \m_axis_tdata[27] ;
  output \m_axis_tdata[28] ;
  output \m_axis_tdata[29] ;
  output \m_axis_tdata[30] ;
  output \m_axis_tdata[31] ;
  output \m_axis_tkeep[0] ;
  output \m_axis_tkeep[1] ;
  output \m_axis_tkeep[2] ;
  output \m_axis_tkeep[3] ;
  output \m_axis_tlast[0] ;
  output \m_axis_tvalid[0] ;
  output \m_axis_tdata[32] ;
  output \m_axis_tdata[33] ;
  output \m_axis_tdata[34] ;
  output \m_axis_tdata[35] ;
  output \m_axis_tdata[36] ;
  output \m_axis_tdata[37] ;
  output \m_axis_tdata[38] ;
  output \m_axis_tdata[39] ;
  output \m_axis_tdata[40] ;
  output \m_axis_tdata[41] ;
  output \m_axis_tdata[42] ;
  output \m_axis_tdata[43] ;
  output \m_axis_tdata[44] ;
  output \m_axis_tdata[45] ;
  output \m_axis_tdata[46] ;
  output \m_axis_tdata[47] ;
  output \m_axis_tdata[48] ;
  output \m_axis_tdata[49] ;
  output \m_axis_tdata[50] ;
  output \m_axis_tdata[51] ;
  output \m_axis_tdata[52] ;
  output \m_axis_tdata[53] ;
  output \m_axis_tdata[54] ;
  output \m_axis_tdata[55] ;
  output \m_axis_tdata[56] ;
  output \m_axis_tdata[57] ;
  output \m_axis_tdata[58] ;
  output \m_axis_tdata[59] ;
  output \m_axis_tdata[60] ;
  output \m_axis_tdata[61] ;
  output \m_axis_tdata[62] ;
  output \m_axis_tdata[63] ;
  output \m_axis_tkeep[4] ;
  output \m_axis_tkeep[5] ;
  output \m_axis_tkeep[6] ;
  output \m_axis_tkeep[7] ;
  output \m_axis_tlast[1] ;
  output \m_axis_tvalid[1] ;
  output \m_axis_tdata[64] ;
  output \m_axis_tdata[65] ;
  output \m_axis_tdata[66] ;
  output \m_axis_tdata[67] ;
  output \m_axis_tdata[68] ;
  output \m_axis_tdata[69] ;
  output \m_axis_tdata[70] ;
  output \m_axis_tdata[71] ;
  output \m_axis_tdata[72] ;
  output \m_axis_tdata[73] ;
  output \m_axis_tdata[74] ;
  output \m_axis_tdata[75] ;
  output \m_axis_tdata[76] ;
  output \m_axis_tdata[77] ;
  output \m_axis_tdata[78] ;
  output \m_axis_tdata[79] ;
  output \m_axis_tdata[80] ;
  output \m_axis_tdata[81] ;
  output \m_axis_tdata[82] ;
  output \m_axis_tdata[83] ;
  output \m_axis_tdata[84] ;
  output \m_axis_tdata[85] ;
  output \m_axis_tdata[86] ;
  output \m_axis_tdata[87] ;
  output \m_axis_tdata[88] ;
  output \m_axis_tdata[89] ;
  output \m_axis_tdata[90] ;
  output \m_axis_tdata[91] ;
  output \m_axis_tdata[92] ;
  output \m_axis_tdata[93] ;
  output \m_axis_tdata[94] ;
  output \m_axis_tdata[95] ;
  output \m_axis_tkeep[8] ;
  output \m_axis_tkeep[9] ;
  output \m_axis_tkeep[10] ;
  output \m_axis_tkeep[11] ;
  output \m_axis_tlast[2] ;
  output \m_axis_tvalid[2] ;
  output \m_axis_tdata[96] ;
  output \m_axis_tdata[97] ;
  output \m_axis_tdata[98] ;
  output \m_axis_tdata[99] ;
  output \m_axis_tdata[100] ;
  output \m_axis_tdata[101] ;
  output \m_axis_tdata[102] ;
  output \m_axis_tdata[103] ;
  output \m_axis_tdata[104] ;
  output \m_axis_tdata[105] ;
  output \m_axis_tdata[106] ;
  output \m_axis_tdata[107] ;
  output \m_axis_tdata[108] ;
  output \m_axis_tdata[109] ;
  output \m_axis_tdata[110] ;
  output \m_axis_tdata[111] ;
  output \m_axis_tdata[112] ;
  output \m_axis_tdata[113] ;
  output \m_axis_tdata[114] ;
  output \m_axis_tdata[115] ;
  output \m_axis_tdata[116] ;
  output \m_axis_tdata[117] ;
  output \m_axis_tdata[118] ;
  output \m_axis_tdata[119] ;
  output \m_axis_tdata[120] ;
  output \m_axis_tdata[121] ;
  output \m_axis_tdata[122] ;
  output \m_axis_tdata[123] ;
  output \m_axis_tdata[124] ;
  output \m_axis_tdata[125] ;
  output \m_axis_tdata[126] ;
  output \m_axis_tdata[127] ;
  output \m_axis_tkeep[12] ;
  output \m_axis_tkeep[13] ;
  output \m_axis_tkeep[14] ;
  output \m_axis_tkeep[15] ;
  output \m_axis_tlast[3] ;
  output \m_axis_tvalid[3] ;
  output \m_axis_tdata[128] ;
  output \m_axis_tdata[129] ;
  output \m_axis_tdata[130] ;
  output \m_axis_tdata[131] ;
  output \m_axis_tdata[132] ;
  output \m_axis_tdata[133] ;
  output \m_axis_tdata[134] ;
  output \m_axis_tdata[135] ;
  output \m_axis_tdata[136] ;
  output \m_axis_tdata[137] ;
  output \m_axis_tdata[138] ;
  output \m_axis_tdata[139] ;
  output \m_axis_tdata[140] ;
  output \m_axis_tdata[141] ;
  output \m_axis_tdata[142] ;
  output \m_axis_tdata[143] ;
  output \m_axis_tdata[144] ;
  output \m_axis_tdata[145] ;
  output \m_axis_tdata[146] ;
  output \m_axis_tdata[147] ;
  output \m_axis_tdata[148] ;
  output \m_axis_tdata[149] ;
  output \m_axis_tdata[150] ;
  output \m_axis_tdata[151] ;
  output \m_axis_tdata[152] ;
  output \m_axis_tdata[153] ;
  output \m_axis_tdata[154] ;
  output \m_axis_tdata[155] ;
  output \m_axis_tdata[156] ;
  output \m_axis_tdata[157] ;
  output \m_axis_tdata[158] ;
  output \m_axis_tdata[159] ;
  output \m_axis_tkeep[16] ;
  output \m_axis_tkeep[17] ;
  output \m_axis_tkeep[18] ;
  output \m_axis_tkeep[19] ;
  output \m_axis_tlast[4] ;
  output \m_axis_tvalid[4] ;
  output \m_axis_tdata[160] ;
  output \m_axis_tdata[161] ;
  output \m_axis_tdata[162] ;
  output \m_axis_tdata[163] ;
  output \m_axis_tdata[164] ;
  output \m_axis_tdata[165] ;
  output \m_axis_tdata[166] ;
  output \m_axis_tdata[167] ;
  output \m_axis_tdata[168] ;
  output \m_axis_tdata[169] ;
  output \m_axis_tdata[170] ;
  output \m_axis_tdata[171] ;
  output \m_axis_tdata[172] ;
  output \m_axis_tdata[173] ;
  output \m_axis_tdata[174] ;
  output \m_axis_tdata[175] ;
  output \m_axis_tdata[176] ;
  output \m_axis_tdata[177] ;
  output \m_axis_tdata[178] ;
  output \m_axis_tdata[179] ;
  output \m_axis_tdata[180] ;
  output \m_axis_tdata[181] ;
  output \m_axis_tdata[182] ;
  output \m_axis_tdata[183] ;
  output \m_axis_tdata[184] ;
  output \m_axis_tdata[185] ;
  output \m_axis_tdata[186] ;
  output \m_axis_tdata[187] ;
  output \m_axis_tdata[188] ;
  output \m_axis_tdata[189] ;
  output \m_axis_tdata[190] ;
  output \m_axis_tdata[191] ;
  output \m_axis_tkeep[20] ;
  output \m_axis_tkeep[21] ;
  output \m_axis_tkeep[22] ;
  output \m_axis_tkeep[23] ;
  output \m_axis_tlast[5] ;
  output \gen_AB_reg_slice.sel_rd_reg_0 ;
  output \m_axis_tvalid[5] ;
  output \m_axis_tdata[192] ;
  output \m_axis_tdata[193] ;
  output \m_axis_tdata[194] ;
  output \m_axis_tdata[195] ;
  output \m_axis_tdata[196] ;
  output \m_axis_tdata[197] ;
  output \m_axis_tdata[198] ;
  output \m_axis_tdata[199] ;
  output \m_axis_tdata[200] ;
  output \m_axis_tdata[201] ;
  output \m_axis_tdata[202] ;
  output \m_axis_tdata[203] ;
  output \m_axis_tdata[204] ;
  output \m_axis_tdata[205] ;
  output \m_axis_tdata[206] ;
  output \m_axis_tdata[207] ;
  output \m_axis_tdata[208] ;
  output \m_axis_tdata[209] ;
  output \m_axis_tdata[210] ;
  output \m_axis_tdata[211] ;
  output \m_axis_tdata[212] ;
  output \m_axis_tdata[213] ;
  output \m_axis_tdata[214] ;
  output \m_axis_tdata[215] ;
  output \m_axis_tdata[216] ;
  output \m_axis_tdata[217] ;
  output \m_axis_tdata[218] ;
  output \m_axis_tdata[219] ;
  output \m_axis_tdata[220] ;
  output \m_axis_tdata[221] ;
  output \m_axis_tdata[222] ;
  output \m_axis_tdata[223] ;
  output \m_axis_tkeep[24] ;
  output \m_axis_tkeep[25] ;
  output \m_axis_tkeep[26] ;
  output \m_axis_tkeep[27] ;
  output \m_axis_tlast[6] ;
  output \m_axis_tvalid[6] ;
  output \s_axis_tready[6] ;
  output \gen_AB_reg_slice.sel_rd_reg_1 ;
  output \gen_AB_reg_slice.sel_rd_reg_2 ;
  input [35:0]ctrl_reg_synch;
  input [36:0]p_7_out;
  input [36:0]p_12_out;
  input [6:0]m_axis_tready;
  input [1:0]\gen_AB_reg_slice.state_reg[0]_0 ;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire [48:42]dec_tready;
  wire \gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1__5_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_2__5_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_3__5_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_1 ;
  wire \gen_AB_reg_slice.sel_rd_reg_2 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__5_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__5_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__5_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__5_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__5_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__5_n_0 ;
  wire [1:0]\gen_AB_reg_slice.state_reg[0]_0 ;
  wire \m_axis_tdata[0] ;
  wire \m_axis_tdata[100] ;
  wire \m_axis_tdata[101] ;
  wire \m_axis_tdata[102] ;
  wire \m_axis_tdata[103] ;
  wire \m_axis_tdata[104] ;
  wire \m_axis_tdata[105] ;
  wire \m_axis_tdata[106] ;
  wire \m_axis_tdata[107] ;
  wire \m_axis_tdata[108] ;
  wire \m_axis_tdata[109] ;
  wire \m_axis_tdata[10] ;
  wire \m_axis_tdata[110] ;
  wire \m_axis_tdata[111] ;
  wire \m_axis_tdata[112] ;
  wire \m_axis_tdata[113] ;
  wire \m_axis_tdata[114] ;
  wire \m_axis_tdata[115] ;
  wire \m_axis_tdata[116] ;
  wire \m_axis_tdata[117] ;
  wire \m_axis_tdata[118] ;
  wire \m_axis_tdata[119] ;
  wire \m_axis_tdata[11] ;
  wire \m_axis_tdata[120] ;
  wire \m_axis_tdata[121] ;
  wire \m_axis_tdata[122] ;
  wire \m_axis_tdata[123] ;
  wire \m_axis_tdata[124] ;
  wire \m_axis_tdata[125] ;
  wire \m_axis_tdata[126] ;
  wire \m_axis_tdata[127] ;
  wire \m_axis_tdata[128] ;
  wire \m_axis_tdata[129] ;
  wire \m_axis_tdata[12] ;
  wire \m_axis_tdata[130] ;
  wire \m_axis_tdata[131] ;
  wire \m_axis_tdata[132] ;
  wire \m_axis_tdata[133] ;
  wire \m_axis_tdata[134] ;
  wire \m_axis_tdata[135] ;
  wire \m_axis_tdata[136] ;
  wire \m_axis_tdata[137] ;
  wire \m_axis_tdata[138] ;
  wire \m_axis_tdata[139] ;
  wire \m_axis_tdata[13] ;
  wire \m_axis_tdata[140] ;
  wire \m_axis_tdata[141] ;
  wire \m_axis_tdata[142] ;
  wire \m_axis_tdata[143] ;
  wire \m_axis_tdata[144] ;
  wire \m_axis_tdata[145] ;
  wire \m_axis_tdata[146] ;
  wire \m_axis_tdata[147] ;
  wire \m_axis_tdata[148] ;
  wire \m_axis_tdata[149] ;
  wire \m_axis_tdata[14] ;
  wire \m_axis_tdata[150] ;
  wire \m_axis_tdata[151] ;
  wire \m_axis_tdata[152] ;
  wire \m_axis_tdata[153] ;
  wire \m_axis_tdata[154] ;
  wire \m_axis_tdata[155] ;
  wire \m_axis_tdata[156] ;
  wire \m_axis_tdata[157] ;
  wire \m_axis_tdata[158] ;
  wire \m_axis_tdata[159] ;
  wire \m_axis_tdata[15] ;
  wire \m_axis_tdata[160] ;
  wire \m_axis_tdata[161] ;
  wire \m_axis_tdata[162] ;
  wire \m_axis_tdata[163] ;
  wire \m_axis_tdata[164] ;
  wire \m_axis_tdata[165] ;
  wire \m_axis_tdata[166] ;
  wire \m_axis_tdata[167] ;
  wire \m_axis_tdata[168] ;
  wire \m_axis_tdata[169] ;
  wire \m_axis_tdata[16] ;
  wire \m_axis_tdata[170] ;
  wire \m_axis_tdata[171] ;
  wire \m_axis_tdata[172] ;
  wire \m_axis_tdata[173] ;
  wire \m_axis_tdata[174] ;
  wire \m_axis_tdata[175] ;
  wire \m_axis_tdata[176] ;
  wire \m_axis_tdata[177] ;
  wire \m_axis_tdata[178] ;
  wire \m_axis_tdata[179] ;
  wire \m_axis_tdata[17] ;
  wire \m_axis_tdata[180] ;
  wire \m_axis_tdata[181] ;
  wire \m_axis_tdata[182] ;
  wire \m_axis_tdata[183] ;
  wire \m_axis_tdata[184] ;
  wire \m_axis_tdata[185] ;
  wire \m_axis_tdata[186] ;
  wire \m_axis_tdata[187] ;
  wire \m_axis_tdata[188] ;
  wire \m_axis_tdata[189] ;
  wire \m_axis_tdata[18] ;
  wire \m_axis_tdata[190] ;
  wire \m_axis_tdata[191] ;
  wire \m_axis_tdata[192] ;
  wire \m_axis_tdata[193] ;
  wire \m_axis_tdata[194] ;
  wire \m_axis_tdata[195] ;
  wire \m_axis_tdata[196] ;
  wire \m_axis_tdata[197] ;
  wire \m_axis_tdata[198] ;
  wire \m_axis_tdata[199] ;
  wire \m_axis_tdata[19] ;
  wire \m_axis_tdata[1] ;
  wire \m_axis_tdata[200] ;
  wire \m_axis_tdata[201] ;
  wire \m_axis_tdata[202] ;
  wire \m_axis_tdata[203] ;
  wire \m_axis_tdata[204] ;
  wire \m_axis_tdata[205] ;
  wire \m_axis_tdata[206] ;
  wire \m_axis_tdata[207] ;
  wire \m_axis_tdata[208] ;
  wire \m_axis_tdata[209] ;
  wire \m_axis_tdata[20] ;
  wire \m_axis_tdata[210] ;
  wire \m_axis_tdata[211] ;
  wire \m_axis_tdata[212] ;
  wire \m_axis_tdata[213] ;
  wire \m_axis_tdata[214] ;
  wire \m_axis_tdata[215] ;
  wire \m_axis_tdata[216] ;
  wire \m_axis_tdata[217] ;
  wire \m_axis_tdata[218] ;
  wire \m_axis_tdata[219] ;
  wire \m_axis_tdata[21] ;
  wire \m_axis_tdata[220] ;
  wire \m_axis_tdata[221] ;
  wire \m_axis_tdata[222] ;
  wire \m_axis_tdata[223] ;
  wire \m_axis_tdata[22] ;
  wire \m_axis_tdata[23] ;
  wire \m_axis_tdata[24] ;
  wire \m_axis_tdata[25] ;
  wire \m_axis_tdata[26] ;
  wire \m_axis_tdata[27] ;
  wire \m_axis_tdata[28] ;
  wire \m_axis_tdata[29] ;
  wire \m_axis_tdata[2] ;
  wire \m_axis_tdata[30] ;
  wire \m_axis_tdata[31] ;
  wire \m_axis_tdata[32] ;
  wire \m_axis_tdata[33] ;
  wire \m_axis_tdata[34] ;
  wire \m_axis_tdata[35] ;
  wire \m_axis_tdata[36] ;
  wire \m_axis_tdata[37] ;
  wire \m_axis_tdata[38] ;
  wire \m_axis_tdata[39] ;
  wire \m_axis_tdata[3] ;
  wire \m_axis_tdata[40] ;
  wire \m_axis_tdata[41] ;
  wire \m_axis_tdata[42] ;
  wire \m_axis_tdata[43] ;
  wire \m_axis_tdata[44] ;
  wire \m_axis_tdata[45] ;
  wire \m_axis_tdata[46] ;
  wire \m_axis_tdata[47] ;
  wire \m_axis_tdata[48] ;
  wire \m_axis_tdata[49] ;
  wire \m_axis_tdata[4] ;
  wire \m_axis_tdata[50] ;
  wire \m_axis_tdata[51] ;
  wire \m_axis_tdata[52] ;
  wire \m_axis_tdata[53] ;
  wire \m_axis_tdata[54] ;
  wire \m_axis_tdata[55] ;
  wire \m_axis_tdata[56] ;
  wire \m_axis_tdata[57] ;
  wire \m_axis_tdata[58] ;
  wire \m_axis_tdata[59] ;
  wire \m_axis_tdata[5] ;
  wire \m_axis_tdata[60] ;
  wire \m_axis_tdata[61] ;
  wire \m_axis_tdata[62] ;
  wire \m_axis_tdata[63] ;
  wire \m_axis_tdata[64] ;
  wire \m_axis_tdata[65] ;
  wire \m_axis_tdata[66] ;
  wire \m_axis_tdata[67] ;
  wire \m_axis_tdata[68] ;
  wire \m_axis_tdata[69] ;
  wire \m_axis_tdata[6] ;
  wire \m_axis_tdata[70] ;
  wire \m_axis_tdata[71] ;
  wire \m_axis_tdata[72] ;
  wire \m_axis_tdata[73] ;
  wire \m_axis_tdata[74] ;
  wire \m_axis_tdata[75] ;
  wire \m_axis_tdata[76] ;
  wire \m_axis_tdata[77] ;
  wire \m_axis_tdata[78] ;
  wire \m_axis_tdata[79] ;
  wire \m_axis_tdata[7] ;
  wire \m_axis_tdata[80] ;
  wire \m_axis_tdata[81] ;
  wire \m_axis_tdata[82] ;
  wire \m_axis_tdata[83] ;
  wire \m_axis_tdata[84] ;
  wire \m_axis_tdata[85] ;
  wire \m_axis_tdata[86] ;
  wire \m_axis_tdata[87] ;
  wire \m_axis_tdata[88] ;
  wire \m_axis_tdata[89] ;
  wire \m_axis_tdata[8] ;
  wire \m_axis_tdata[90] ;
  wire \m_axis_tdata[91] ;
  wire \m_axis_tdata[92] ;
  wire \m_axis_tdata[93] ;
  wire \m_axis_tdata[94] ;
  wire \m_axis_tdata[95] ;
  wire \m_axis_tdata[96] ;
  wire \m_axis_tdata[97] ;
  wire \m_axis_tdata[98] ;
  wire \m_axis_tdata[99] ;
  wire \m_axis_tdata[9] ;
  wire \m_axis_tkeep[0] ;
  wire \m_axis_tkeep[10] ;
  wire \m_axis_tkeep[11] ;
  wire \m_axis_tkeep[12] ;
  wire \m_axis_tkeep[13] ;
  wire \m_axis_tkeep[14] ;
  wire \m_axis_tkeep[15] ;
  wire \m_axis_tkeep[16] ;
  wire \m_axis_tkeep[17] ;
  wire \m_axis_tkeep[18] ;
  wire \m_axis_tkeep[19] ;
  wire \m_axis_tkeep[1] ;
  wire \m_axis_tkeep[20] ;
  wire \m_axis_tkeep[21] ;
  wire \m_axis_tkeep[22] ;
  wire \m_axis_tkeep[23] ;
  wire \m_axis_tkeep[24] ;
  wire \m_axis_tkeep[25] ;
  wire \m_axis_tkeep[26] ;
  wire \m_axis_tkeep[27] ;
  wire \m_axis_tkeep[2] ;
  wire \m_axis_tkeep[3] ;
  wire \m_axis_tkeep[4] ;
  wire \m_axis_tkeep[5] ;
  wire \m_axis_tkeep[6] ;
  wire \m_axis_tkeep[7] ;
  wire \m_axis_tkeep[8] ;
  wire \m_axis_tkeep[9] ;
  wire \m_axis_tlast[0] ;
  wire \m_axis_tlast[1] ;
  wire \m_axis_tlast[2] ;
  wire \m_axis_tlast[3] ;
  wire \m_axis_tlast[4] ;
  wire \m_axis_tlast[5] ;
  wire \m_axis_tlast[6] ;
  wire [6:0]m_axis_tready;
  wire \m_axis_tvalid[0] ;
  wire \m_axis_tvalid[1] ;
  wire \m_axis_tvalid[2] ;
  wire \m_axis_tvalid[3] ;
  wire \m_axis_tvalid[4] ;
  wire \m_axis_tvalid[5] ;
  wire \m_axis_tvalid[6] ;
  wire [48:48]mux_tvalid;
  wire [36:0]p_12_out;
  wire [36:0]p_2_out;
  wire [36:0]p_7_out;
  wire [36:0]payload_a;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[6] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__5 
       (.I0(\s_axis_tready[6] ),
        .I1(mux_tvalid),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__5_n_0 ),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__5 
       (.I0(\s_axis_tready[6] ),
        .I1(mux_tvalid),
        .I2(aclken),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \gen_AB_reg_slice.sel_rd_i_1__5 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.sel_rd_i_2__5_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_i_3__5_n_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_4__5_n_0 ),
        .I4(aclken),
        .I5(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_2__5 
       (.I0(ctrl_reg_synch[1]),
        .I1(ctrl_reg_synch[3]),
        .I2(ctrl_reg_synch[0]),
        .I3(\gen_AB_reg_slice.sel_rd_reg_1 ),
        .I4(ctrl_reg_synch[2]),
        .I5(dec_tready[43]),
        .O(\gen_AB_reg_slice.sel_rd_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_3__5 
       (.I0(ctrl_reg_synch[9]),
        .I1(ctrl_reg_synch[11]),
        .I2(ctrl_reg_synch[8]),
        .I3(\gen_AB_reg_slice.sel_rd_reg_2 ),
        .I4(ctrl_reg_synch[10]),
        .I5(dec_tready[45]),
        .O(\gen_AB_reg_slice.sel_rd_i_3__5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.sel_rd_i_4 
       (.I0(m_axis_tready[0]),
        .I1(ctrl_reg_synch[28]),
        .O(\gen_AB_reg_slice.sel_rd_reg_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.sel_rd_i_5 
       (.I0(m_axis_tready[2]),
        .I1(ctrl_reg_synch[30]),
        .O(\gen_AB_reg_slice.sel_rd_reg_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__5_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__5 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\s_axis_tready[6] ),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__5_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAADF00FF00FF00)) 
    \gen_AB_reg_slice.state[0]_i_1__5 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__5_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__5_n_0 ),
        .I3(mux_tvalid),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[6] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_10__5 
       (.I0(ctrl_reg_synch[26]),
        .I1(ctrl_reg_synch[34]),
        .I2(m_axis_tready[6]),
        .I3(ctrl_reg_synch[24]),
        .I4(ctrl_reg_synch[27]),
        .I5(ctrl_reg_synch[25]),
        .O(dec_tready[48]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_11__1 
       (.I0(ctrl_reg_synch[18]),
        .I1(ctrl_reg_synch[32]),
        .I2(m_axis_tready[4]),
        .I3(ctrl_reg_synch[16]),
        .I4(ctrl_reg_synch[19]),
        .I5(ctrl_reg_synch[17]),
        .O(dec_tready[46]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__5 
       (.I0(areset_r),
        .I1(ctrl_reg_synch[35]),
        .O(\gen_AB_reg_slice.state[1]_i_1__5_n_0 ));
  LUT6 #(
    .INIT(64'h75FFFFFF20AA20AA)) 
    \gen_AB_reg_slice.state[1]_i_2__5 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__5_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__5_n_0 ),
        .I3(mux_tvalid),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[6] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_AB_reg_slice.state[1]_i_3__5 
       (.I0(dec_tready[43]),
        .I1(dec_tready[42]),
        .I2(dec_tready[45]),
        .I3(dec_tready[44]),
        .O(\gen_AB_reg_slice.state[1]_i_3__5_n_0 ));
  LUT6 #(
    .INIT(64'hFDFF000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__5 
       (.I0(ctrl_reg_synch[21]),
        .I1(ctrl_reg_synch[23]),
        .I2(\gen_AB_reg_slice.sel_rd_reg_0 ),
        .I3(ctrl_reg_synch[22]),
        .I4(dec_tready[48]),
        .I5(dec_tready[46]),
        .O(\gen_AB_reg_slice.state[1]_i_4__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_5__5 
       (.I0(ctrl_reg_synch[6]),
        .I1(ctrl_reg_synch[29]),
        .I2(m_axis_tready[1]),
        .I3(ctrl_reg_synch[4]),
        .I4(ctrl_reg_synch[7]),
        .I5(ctrl_reg_synch[5]),
        .O(dec_tready[43]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_6__5 
       (.I0(ctrl_reg_synch[2]),
        .I1(ctrl_reg_synch[28]),
        .I2(m_axis_tready[0]),
        .I3(ctrl_reg_synch[0]),
        .I4(ctrl_reg_synch[3]),
        .I5(ctrl_reg_synch[1]),
        .O(dec_tready[42]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_7__5 
       (.I0(ctrl_reg_synch[14]),
        .I1(ctrl_reg_synch[31]),
        .I2(m_axis_tready[3]),
        .I3(ctrl_reg_synch[12]),
        .I4(ctrl_reg_synch[15]),
        .I5(ctrl_reg_synch[13]),
        .O(dec_tready[45]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_8__5 
       (.I0(ctrl_reg_synch[10]),
        .I1(ctrl_reg_synch[30]),
        .I2(m_axis_tready[2]),
        .I3(ctrl_reg_synch[8]),
        .I4(ctrl_reg_synch[11]),
        .I5(ctrl_reg_synch[9]),
        .O(dec_tready[44]));
  LUT3 #(
    .INIT(8'hFD)) 
    \gen_AB_reg_slice.state[1]_i_9__0 
       (.I0(ctrl_reg_synch[33]),
        .I1(m_axis_tready[5]),
        .I2(ctrl_reg_synch[20]),
        .O(\gen_AB_reg_slice.sel_rd_reg_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__5_n_0 ),
        .Q(mux_tvalid),
        .R(\gen_AB_reg_slice.state[1]_i_1__5_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__5_n_0 ),
        .Q(\s_axis_tready[6] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[0]_INST_0_i_2 
       (.I0(p_2_out[0]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[0]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[0]),
        .O(\m_axis_tdata[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[100]_INST_0_i_2 
       (.I0(p_2_out[4]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[4]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[4]),
        .O(\m_axis_tdata[100] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[101]_INST_0_i_2 
       (.I0(p_2_out[5]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[5]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[5]),
        .O(\m_axis_tdata[101] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[102]_INST_0_i_2 
       (.I0(p_2_out[6]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[6]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[6]),
        .O(\m_axis_tdata[102] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[103]_INST_0_i_2 
       (.I0(p_2_out[7]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[7]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[7]),
        .O(\m_axis_tdata[103] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[104]_INST_0_i_2 
       (.I0(p_2_out[8]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[8]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[8]),
        .O(\m_axis_tdata[104] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[105]_INST_0_i_2 
       (.I0(p_2_out[9]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[9]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[9]),
        .O(\m_axis_tdata[105] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[106]_INST_0_i_2 
       (.I0(p_2_out[10]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[10]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[10]),
        .O(\m_axis_tdata[106] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[107]_INST_0_i_2 
       (.I0(p_2_out[11]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[11]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[11]),
        .O(\m_axis_tdata[107] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[108]_INST_0_i_2 
       (.I0(p_2_out[12]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[12]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[12]),
        .O(\m_axis_tdata[108] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[109]_INST_0_i_2 
       (.I0(p_2_out[13]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[13]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[13]),
        .O(\m_axis_tdata[109] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[10]_INST_0_i_2 
       (.I0(p_2_out[10]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[10]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[10]),
        .O(\m_axis_tdata[10] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[110]_INST_0_i_2 
       (.I0(p_2_out[14]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[14]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[14]),
        .O(\m_axis_tdata[110] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_2 
       (.I0(p_2_out[15]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[15]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[15]),
        .O(\m_axis_tdata[111] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[112]_INST_0_i_2 
       (.I0(p_2_out[16]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[16]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[16]),
        .O(\m_axis_tdata[112] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[113]_INST_0_i_2 
       (.I0(p_2_out[17]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[17]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[17]),
        .O(\m_axis_tdata[113] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[114]_INST_0_i_2 
       (.I0(p_2_out[18]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[18]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[18]),
        .O(\m_axis_tdata[114] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[115]_INST_0_i_2 
       (.I0(p_2_out[19]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[19]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[19]),
        .O(\m_axis_tdata[115] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[116]_INST_0_i_2 
       (.I0(p_2_out[20]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[20]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[20]),
        .O(\m_axis_tdata[116] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[117]_INST_0_i_2 
       (.I0(p_2_out[21]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[21]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[21]),
        .O(\m_axis_tdata[117] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[118]_INST_0_i_2 
       (.I0(p_2_out[22]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[22]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[22]),
        .O(\m_axis_tdata[118] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[119]_INST_0_i_2 
       (.I0(p_2_out[23]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[23]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[23]),
        .O(\m_axis_tdata[119] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[11]_INST_0_i_2 
       (.I0(p_2_out[11]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[11]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[11]),
        .O(\m_axis_tdata[11] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[120]_INST_0_i_2 
       (.I0(p_2_out[24]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[24]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[24]),
        .O(\m_axis_tdata[120] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[121]_INST_0_i_2 
       (.I0(p_2_out[25]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[25]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[25]),
        .O(\m_axis_tdata[121] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[122]_INST_0_i_2 
       (.I0(p_2_out[26]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[26]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[26]),
        .O(\m_axis_tdata[122] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[123]_INST_0_i_2 
       (.I0(p_2_out[27]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[27]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[27]),
        .O(\m_axis_tdata[123] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[124]_INST_0_i_2 
       (.I0(p_2_out[28]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[28]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[28]),
        .O(\m_axis_tdata[124] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[125]_INST_0_i_2 
       (.I0(p_2_out[29]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[29]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[29]),
        .O(\m_axis_tdata[125] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[126]_INST_0_i_2 
       (.I0(p_2_out[30]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[30]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[30]),
        .O(\m_axis_tdata[126] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_2 
       (.I0(p_2_out[31]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[31]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[31]),
        .O(\m_axis_tdata[127] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[128]_INST_0_i_2 
       (.I0(p_2_out[0]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[0]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[0]),
        .O(\m_axis_tdata[128] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[129]_INST_0_i_2 
       (.I0(p_2_out[1]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[1]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[1]),
        .O(\m_axis_tdata[129] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[12]_INST_0_i_2 
       (.I0(p_2_out[12]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[12]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[12]),
        .O(\m_axis_tdata[12] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[130]_INST_0_i_2 
       (.I0(p_2_out[2]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[2]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[2]),
        .O(\m_axis_tdata[130] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[131]_INST_0_i_2 
       (.I0(p_2_out[3]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[3]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[3]),
        .O(\m_axis_tdata[131] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[132]_INST_0_i_2 
       (.I0(p_2_out[4]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[4]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[4]),
        .O(\m_axis_tdata[132] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[133]_INST_0_i_2 
       (.I0(p_2_out[5]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[5]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[5]),
        .O(\m_axis_tdata[133] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[134]_INST_0_i_2 
       (.I0(p_2_out[6]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[6]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[6]),
        .O(\m_axis_tdata[134] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[135]_INST_0_i_2 
       (.I0(p_2_out[7]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[7]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[7]),
        .O(\m_axis_tdata[135] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[136]_INST_0_i_2 
       (.I0(p_2_out[8]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[8]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[8]),
        .O(\m_axis_tdata[136] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[137]_INST_0_i_2 
       (.I0(p_2_out[9]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[9]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[9]),
        .O(\m_axis_tdata[137] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[138]_INST_0_i_2 
       (.I0(p_2_out[10]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[10]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[10]),
        .O(\m_axis_tdata[138] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[139]_INST_0_i_2 
       (.I0(p_2_out[11]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[11]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[11]),
        .O(\m_axis_tdata[139] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[13]_INST_0_i_2 
       (.I0(p_2_out[13]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[13]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[13]),
        .O(\m_axis_tdata[13] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[140]_INST_0_i_2 
       (.I0(p_2_out[12]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[12]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[12]),
        .O(\m_axis_tdata[140] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[141]_INST_0_i_2 
       (.I0(p_2_out[13]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[13]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[13]),
        .O(\m_axis_tdata[141] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[142]_INST_0_i_2 
       (.I0(p_2_out[14]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[14]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[14]),
        .O(\m_axis_tdata[142] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_2 
       (.I0(p_2_out[15]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[15]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[15]),
        .O(\m_axis_tdata[143] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[144]_INST_0_i_2 
       (.I0(p_2_out[16]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[16]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[16]),
        .O(\m_axis_tdata[144] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[145]_INST_0_i_2 
       (.I0(p_2_out[17]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[17]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[17]),
        .O(\m_axis_tdata[145] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[146]_INST_0_i_2 
       (.I0(p_2_out[18]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[18]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[18]),
        .O(\m_axis_tdata[146] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[147]_INST_0_i_2 
       (.I0(p_2_out[19]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[19]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[19]),
        .O(\m_axis_tdata[147] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[148]_INST_0_i_2 
       (.I0(p_2_out[20]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[20]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[20]),
        .O(\m_axis_tdata[148] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[149]_INST_0_i_2 
       (.I0(p_2_out[21]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[21]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[21]),
        .O(\m_axis_tdata[149] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[14]_INST_0_i_2 
       (.I0(p_2_out[14]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[14]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[14]),
        .O(\m_axis_tdata[14] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[150]_INST_0_i_2 
       (.I0(p_2_out[22]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[22]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[22]),
        .O(\m_axis_tdata[150] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[151]_INST_0_i_2 
       (.I0(p_2_out[23]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[23]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[23]),
        .O(\m_axis_tdata[151] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[152]_INST_0_i_2 
       (.I0(p_2_out[24]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[24]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[24]),
        .O(\m_axis_tdata[152] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[153]_INST_0_i_2 
       (.I0(p_2_out[25]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[25]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[25]),
        .O(\m_axis_tdata[153] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[154]_INST_0_i_2 
       (.I0(p_2_out[26]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[26]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[26]),
        .O(\m_axis_tdata[154] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[155]_INST_0_i_2 
       (.I0(p_2_out[27]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[27]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[27]),
        .O(\m_axis_tdata[155] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[156]_INST_0_i_2 
       (.I0(p_2_out[28]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[28]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[28]),
        .O(\m_axis_tdata[156] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[157]_INST_0_i_2 
       (.I0(p_2_out[29]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[29]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[29]),
        .O(\m_axis_tdata[157] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[158]_INST_0_i_2 
       (.I0(p_2_out[30]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[30]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[30]),
        .O(\m_axis_tdata[158] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_2 
       (.I0(p_2_out[31]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[31]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[31]),
        .O(\m_axis_tdata[159] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_2 
       (.I0(p_2_out[15]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[15]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[15]),
        .O(\m_axis_tdata[15] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[160]_INST_0_i_2 
       (.I0(p_2_out[0]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[0]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[0]),
        .O(\m_axis_tdata[160] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[161]_INST_0_i_2 
       (.I0(p_2_out[1]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[1]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[1]),
        .O(\m_axis_tdata[161] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[162]_INST_0_i_2 
       (.I0(p_2_out[2]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[2]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[2]),
        .O(\m_axis_tdata[162] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[163]_INST_0_i_2 
       (.I0(p_2_out[3]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[3]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[3]),
        .O(\m_axis_tdata[163] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[164]_INST_0_i_2 
       (.I0(p_2_out[4]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[4]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[4]),
        .O(\m_axis_tdata[164] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[165]_INST_0_i_2 
       (.I0(p_2_out[5]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[5]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[5]),
        .O(\m_axis_tdata[165] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[166]_INST_0_i_2 
       (.I0(p_2_out[6]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[6]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[6]),
        .O(\m_axis_tdata[166] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[167]_INST_0_i_2 
       (.I0(p_2_out[7]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[7]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[7]),
        .O(\m_axis_tdata[167] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[168]_INST_0_i_2 
       (.I0(p_2_out[8]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[8]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[8]),
        .O(\m_axis_tdata[168] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[169]_INST_0_i_2 
       (.I0(p_2_out[9]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[9]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[9]),
        .O(\m_axis_tdata[169] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[16]_INST_0_i_2 
       (.I0(p_2_out[16]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[16]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[16]),
        .O(\m_axis_tdata[16] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[170]_INST_0_i_2 
       (.I0(p_2_out[10]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[10]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[10]),
        .O(\m_axis_tdata[170] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[171]_INST_0_i_2 
       (.I0(p_2_out[11]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[11]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[11]),
        .O(\m_axis_tdata[171] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[172]_INST_0_i_2 
       (.I0(p_2_out[12]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[12]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[12]),
        .O(\m_axis_tdata[172] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[173]_INST_0_i_2 
       (.I0(p_2_out[13]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[13]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[13]),
        .O(\m_axis_tdata[173] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[174]_INST_0_i_2 
       (.I0(p_2_out[14]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[14]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[14]),
        .O(\m_axis_tdata[174] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_2 
       (.I0(p_2_out[15]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[15]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[15]),
        .O(\m_axis_tdata[175] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[176]_INST_0_i_2 
       (.I0(p_2_out[16]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[16]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[16]),
        .O(\m_axis_tdata[176] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[177]_INST_0_i_2 
       (.I0(p_2_out[17]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[17]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[17]),
        .O(\m_axis_tdata[177] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[178]_INST_0_i_2 
       (.I0(p_2_out[18]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[18]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[18]),
        .O(\m_axis_tdata[178] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[179]_INST_0_i_2 
       (.I0(p_2_out[19]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[19]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[19]),
        .O(\m_axis_tdata[179] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[17]_INST_0_i_2 
       (.I0(p_2_out[17]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[17]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[17]),
        .O(\m_axis_tdata[17] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[180]_INST_0_i_2 
       (.I0(p_2_out[20]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[20]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[20]),
        .O(\m_axis_tdata[180] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[181]_INST_0_i_2 
       (.I0(p_2_out[21]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[21]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[21]),
        .O(\m_axis_tdata[181] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[182]_INST_0_i_2 
       (.I0(p_2_out[22]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[22]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[22]),
        .O(\m_axis_tdata[182] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[183]_INST_0_i_2 
       (.I0(p_2_out[23]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[23]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[23]),
        .O(\m_axis_tdata[183] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[184]_INST_0_i_2 
       (.I0(p_2_out[24]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[24]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[24]),
        .O(\m_axis_tdata[184] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[185]_INST_0_i_2 
       (.I0(p_2_out[25]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[25]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[25]),
        .O(\m_axis_tdata[185] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[186]_INST_0_i_2 
       (.I0(p_2_out[26]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[26]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[26]),
        .O(\m_axis_tdata[186] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[187]_INST_0_i_2 
       (.I0(p_2_out[27]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[27]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[27]),
        .O(\m_axis_tdata[187] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[188]_INST_0_i_2 
       (.I0(p_2_out[28]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[28]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[28]),
        .O(\m_axis_tdata[188] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[189]_INST_0_i_2 
       (.I0(p_2_out[29]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[29]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[29]),
        .O(\m_axis_tdata[189] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[18]_INST_0_i_2 
       (.I0(p_2_out[18]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[18]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[18]),
        .O(\m_axis_tdata[18] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[190]_INST_0_i_2 
       (.I0(p_2_out[30]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[30]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[30]),
        .O(\m_axis_tdata[190] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_2 
       (.I0(p_2_out[31]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[31]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[31]),
        .O(\m_axis_tdata[191] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[192]_INST_0_i_2 
       (.I0(p_2_out[0]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[0]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[0]),
        .O(\m_axis_tdata[192] ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_7 
       (.I0(payload_b[0]),
        .I1(payload_a[0]),
        .I2(sel),
        .O(p_2_out[0]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[193]_INST_0_i_2 
       (.I0(p_2_out[1]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[1]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[1]),
        .O(\m_axis_tdata[193] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_7 
       (.I0(payload_b[1]),
        .I1(payload_a[1]),
        .I2(sel),
        .O(p_2_out[1]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[194]_INST_0_i_2 
       (.I0(p_2_out[2]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[2]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[2]),
        .O(\m_axis_tdata[194] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_7 
       (.I0(payload_b[2]),
        .I1(payload_a[2]),
        .I2(sel),
        .O(p_2_out[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[195]_INST_0_i_2 
       (.I0(p_2_out[3]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[3]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[3]),
        .O(\m_axis_tdata[195] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_7 
       (.I0(payload_b[3]),
        .I1(payload_a[3]),
        .I2(sel),
        .O(p_2_out[3]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[196]_INST_0_i_2 
       (.I0(p_2_out[4]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[4]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[4]),
        .O(\m_axis_tdata[196] ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_7 
       (.I0(payload_b[4]),
        .I1(payload_a[4]),
        .I2(sel),
        .O(p_2_out[4]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[197]_INST_0_i_2 
       (.I0(p_2_out[5]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[5]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[5]),
        .O(\m_axis_tdata[197] ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_7 
       (.I0(payload_b[5]),
        .I1(payload_a[5]),
        .I2(sel),
        .O(p_2_out[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[198]_INST_0_i_2 
       (.I0(p_2_out[6]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[6]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[6]),
        .O(\m_axis_tdata[198] ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_7 
       (.I0(payload_b[6]),
        .I1(payload_a[6]),
        .I2(sel),
        .O(p_2_out[6]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[199]_INST_0_i_2 
       (.I0(p_2_out[7]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[7]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[7]),
        .O(\m_axis_tdata[199] ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_7 
       (.I0(payload_b[7]),
        .I1(payload_a[7]),
        .I2(sel),
        .O(p_2_out[7]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[19]_INST_0_i_2 
       (.I0(p_2_out[19]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[19]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[19]),
        .O(\m_axis_tdata[19] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[1]_INST_0_i_2 
       (.I0(p_2_out[1]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[1]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[1]),
        .O(\m_axis_tdata[1] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[200]_INST_0_i_2 
       (.I0(p_2_out[8]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[8]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[8]),
        .O(\m_axis_tdata[200] ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_7 
       (.I0(payload_b[8]),
        .I1(payload_a[8]),
        .I2(sel),
        .O(p_2_out[8]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[201]_INST_0_i_2 
       (.I0(p_2_out[9]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[9]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[9]),
        .O(\m_axis_tdata[201] ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_7 
       (.I0(payload_b[9]),
        .I1(payload_a[9]),
        .I2(sel),
        .O(p_2_out[9]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[202]_INST_0_i_2 
       (.I0(p_2_out[10]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[10]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[10]),
        .O(\m_axis_tdata[202] ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_7 
       (.I0(payload_b[10]),
        .I1(payload_a[10]),
        .I2(sel),
        .O(p_2_out[10]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[203]_INST_0_i_2 
       (.I0(p_2_out[11]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[11]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[11]),
        .O(\m_axis_tdata[203] ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_7 
       (.I0(payload_b[11]),
        .I1(payload_a[11]),
        .I2(sel),
        .O(p_2_out[11]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[204]_INST_0_i_2 
       (.I0(p_2_out[12]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[12]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[12]),
        .O(\m_axis_tdata[204] ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_7 
       (.I0(payload_b[12]),
        .I1(payload_a[12]),
        .I2(sel),
        .O(p_2_out[12]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[205]_INST_0_i_2 
       (.I0(p_2_out[13]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[13]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[13]),
        .O(\m_axis_tdata[205] ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_7 
       (.I0(payload_b[13]),
        .I1(payload_a[13]),
        .I2(sel),
        .O(p_2_out[13]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[206]_INST_0_i_2 
       (.I0(p_2_out[14]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[14]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[14]),
        .O(\m_axis_tdata[206] ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_7 
       (.I0(payload_b[14]),
        .I1(payload_a[14]),
        .I2(sel),
        .O(p_2_out[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_2 
       (.I0(p_2_out[15]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[15]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[15]),
        .O(\m_axis_tdata[207] ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_7 
       (.I0(payload_b[15]),
        .I1(payload_a[15]),
        .I2(sel),
        .O(p_2_out[15]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[208]_INST_0_i_2 
       (.I0(p_2_out[16]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[16]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[16]),
        .O(\m_axis_tdata[208] ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_7 
       (.I0(payload_b[16]),
        .I1(payload_a[16]),
        .I2(sel),
        .O(p_2_out[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[209]_INST_0_i_2 
       (.I0(p_2_out[17]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[17]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[17]),
        .O(\m_axis_tdata[209] ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_7 
       (.I0(payload_b[17]),
        .I1(payload_a[17]),
        .I2(sel),
        .O(p_2_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[20]_INST_0_i_2 
       (.I0(p_2_out[20]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[20]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[20]),
        .O(\m_axis_tdata[20] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[210]_INST_0_i_2 
       (.I0(p_2_out[18]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[18]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[18]),
        .O(\m_axis_tdata[210] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_7 
       (.I0(payload_b[18]),
        .I1(payload_a[18]),
        .I2(sel),
        .O(p_2_out[18]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[211]_INST_0_i_2 
       (.I0(p_2_out[19]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[19]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[19]),
        .O(\m_axis_tdata[211] ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_7 
       (.I0(payload_b[19]),
        .I1(payload_a[19]),
        .I2(sel),
        .O(p_2_out[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[212]_INST_0_i_2 
       (.I0(p_2_out[20]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[20]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[20]),
        .O(\m_axis_tdata[212] ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_7 
       (.I0(payload_b[20]),
        .I1(payload_a[20]),
        .I2(sel),
        .O(p_2_out[20]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[213]_INST_0_i_2 
       (.I0(p_2_out[21]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[21]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[21]),
        .O(\m_axis_tdata[213] ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_7 
       (.I0(payload_b[21]),
        .I1(payload_a[21]),
        .I2(sel),
        .O(p_2_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[214]_INST_0_i_2 
       (.I0(p_2_out[22]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[22]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[22]),
        .O(\m_axis_tdata[214] ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_7 
       (.I0(payload_b[22]),
        .I1(payload_a[22]),
        .I2(sel),
        .O(p_2_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[215]_INST_0_i_2 
       (.I0(p_2_out[23]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[23]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[23]),
        .O(\m_axis_tdata[215] ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_7 
       (.I0(payload_b[23]),
        .I1(payload_a[23]),
        .I2(sel),
        .O(p_2_out[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[216]_INST_0_i_2 
       (.I0(p_2_out[24]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[24]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[24]),
        .O(\m_axis_tdata[216] ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_7 
       (.I0(payload_b[24]),
        .I1(payload_a[24]),
        .I2(sel),
        .O(p_2_out[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[217]_INST_0_i_2 
       (.I0(p_2_out[25]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[25]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[25]),
        .O(\m_axis_tdata[217] ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_7 
       (.I0(payload_b[25]),
        .I1(payload_a[25]),
        .I2(sel),
        .O(p_2_out[25]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[218]_INST_0_i_2 
       (.I0(p_2_out[26]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[26]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[26]),
        .O(\m_axis_tdata[218] ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_7 
       (.I0(payload_b[26]),
        .I1(payload_a[26]),
        .I2(sel),
        .O(p_2_out[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[219]_INST_0_i_2 
       (.I0(p_2_out[27]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[27]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[27]),
        .O(\m_axis_tdata[219] ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_7 
       (.I0(payload_b[27]),
        .I1(payload_a[27]),
        .I2(sel),
        .O(p_2_out[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[21]_INST_0_i_2 
       (.I0(p_2_out[21]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[21]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[21]),
        .O(\m_axis_tdata[21] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[220]_INST_0_i_2 
       (.I0(p_2_out[28]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[28]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[28]),
        .O(\m_axis_tdata[220] ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_7 
       (.I0(payload_b[28]),
        .I1(payload_a[28]),
        .I2(sel),
        .O(p_2_out[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[221]_INST_0_i_2 
       (.I0(p_2_out[29]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[29]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[29]),
        .O(\m_axis_tdata[221] ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_7 
       (.I0(payload_b[29]),
        .I1(payload_a[29]),
        .I2(sel),
        .O(p_2_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[222]_INST_0_i_2 
       (.I0(p_2_out[30]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[30]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[30]),
        .O(\m_axis_tdata[222] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_7 
       (.I0(payload_b[30]),
        .I1(payload_a[30]),
        .I2(sel),
        .O(p_2_out[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_2 
       (.I0(p_2_out[31]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[31]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[31]),
        .O(\m_axis_tdata[223] ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_7 
       (.I0(payload_b[31]),
        .I1(payload_a[31]),
        .I2(sel),
        .O(p_2_out[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[22]_INST_0_i_2 
       (.I0(p_2_out[22]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[22]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[22]),
        .O(\m_axis_tdata[22] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[23]_INST_0_i_2 
       (.I0(p_2_out[23]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[23]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[23]),
        .O(\m_axis_tdata[23] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[24]_INST_0_i_2 
       (.I0(p_2_out[24]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[24]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[24]),
        .O(\m_axis_tdata[24] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[25]_INST_0_i_2 
       (.I0(p_2_out[25]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[25]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[25]),
        .O(\m_axis_tdata[25] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[26]_INST_0_i_2 
       (.I0(p_2_out[26]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[26]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[26]),
        .O(\m_axis_tdata[26] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[27]_INST_0_i_2 
       (.I0(p_2_out[27]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[27]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[27]),
        .O(\m_axis_tdata[27] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[28]_INST_0_i_2 
       (.I0(p_2_out[28]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[28]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[28]),
        .O(\m_axis_tdata[28] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[29]_INST_0_i_2 
       (.I0(p_2_out[29]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[29]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[29]),
        .O(\m_axis_tdata[29] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[2]_INST_0_i_2 
       (.I0(p_2_out[2]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[2]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[2]),
        .O(\m_axis_tdata[2] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[30]_INST_0_i_2 
       (.I0(p_2_out[30]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[30]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[30]),
        .O(\m_axis_tdata[30] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_2 
       (.I0(p_2_out[31]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[31]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[31]),
        .O(\m_axis_tdata[31] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[32]_INST_0_i_2 
       (.I0(p_2_out[0]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[0]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[0]),
        .O(\m_axis_tdata[32] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[33]_INST_0_i_2 
       (.I0(p_2_out[1]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[1]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[1]),
        .O(\m_axis_tdata[33] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[34]_INST_0_i_2 
       (.I0(p_2_out[2]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[2]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[2]),
        .O(\m_axis_tdata[34] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[35]_INST_0_i_2 
       (.I0(p_2_out[3]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[3]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[3]),
        .O(\m_axis_tdata[35] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[36]_INST_0_i_2 
       (.I0(p_2_out[4]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[4]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[4]),
        .O(\m_axis_tdata[36] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[37]_INST_0_i_2 
       (.I0(p_2_out[5]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[5]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[5]),
        .O(\m_axis_tdata[37] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[38]_INST_0_i_2 
       (.I0(p_2_out[6]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[6]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[6]),
        .O(\m_axis_tdata[38] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[39]_INST_0_i_2 
       (.I0(p_2_out[7]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[7]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[7]),
        .O(\m_axis_tdata[39] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[3]_INST_0_i_2 
       (.I0(p_2_out[3]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[3]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[3]),
        .O(\m_axis_tdata[3] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[40]_INST_0_i_2 
       (.I0(p_2_out[8]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[8]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[8]),
        .O(\m_axis_tdata[40] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[41]_INST_0_i_2 
       (.I0(p_2_out[9]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[9]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[9]),
        .O(\m_axis_tdata[41] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[42]_INST_0_i_2 
       (.I0(p_2_out[10]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[10]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[10]),
        .O(\m_axis_tdata[42] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[43]_INST_0_i_2 
       (.I0(p_2_out[11]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[11]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[11]),
        .O(\m_axis_tdata[43] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[44]_INST_0_i_2 
       (.I0(p_2_out[12]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[12]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[12]),
        .O(\m_axis_tdata[44] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[45]_INST_0_i_2 
       (.I0(p_2_out[13]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[13]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[13]),
        .O(\m_axis_tdata[45] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[46]_INST_0_i_2 
       (.I0(p_2_out[14]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[14]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[14]),
        .O(\m_axis_tdata[46] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_2 
       (.I0(p_2_out[15]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[15]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[15]),
        .O(\m_axis_tdata[47] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[48]_INST_0_i_2 
       (.I0(p_2_out[16]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[16]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[16]),
        .O(\m_axis_tdata[48] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[49]_INST_0_i_2 
       (.I0(p_2_out[17]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[17]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[17]),
        .O(\m_axis_tdata[49] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[4]_INST_0_i_2 
       (.I0(p_2_out[4]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[4]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[4]),
        .O(\m_axis_tdata[4] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[50]_INST_0_i_2 
       (.I0(p_2_out[18]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[18]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[18]),
        .O(\m_axis_tdata[50] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[51]_INST_0_i_2 
       (.I0(p_2_out[19]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[19]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[19]),
        .O(\m_axis_tdata[51] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[52]_INST_0_i_2 
       (.I0(p_2_out[20]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[20]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[20]),
        .O(\m_axis_tdata[52] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[53]_INST_0_i_2 
       (.I0(p_2_out[21]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[21]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[21]),
        .O(\m_axis_tdata[53] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[54]_INST_0_i_2 
       (.I0(p_2_out[22]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[22]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[22]),
        .O(\m_axis_tdata[54] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[55]_INST_0_i_2 
       (.I0(p_2_out[23]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[23]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[23]),
        .O(\m_axis_tdata[55] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[56]_INST_0_i_2 
       (.I0(p_2_out[24]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[24]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[24]),
        .O(\m_axis_tdata[56] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[57]_INST_0_i_2 
       (.I0(p_2_out[25]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[25]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[25]),
        .O(\m_axis_tdata[57] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[58]_INST_0_i_2 
       (.I0(p_2_out[26]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[26]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[26]),
        .O(\m_axis_tdata[58] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[59]_INST_0_i_2 
       (.I0(p_2_out[27]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[27]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[27]),
        .O(\m_axis_tdata[59] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[5]_INST_0_i_2 
       (.I0(p_2_out[5]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[5]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[5]),
        .O(\m_axis_tdata[5] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[60]_INST_0_i_2 
       (.I0(p_2_out[28]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[28]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[28]),
        .O(\m_axis_tdata[60] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[61]_INST_0_i_2 
       (.I0(p_2_out[29]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[29]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[29]),
        .O(\m_axis_tdata[61] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[62]_INST_0_i_2 
       (.I0(p_2_out[30]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[30]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[30]),
        .O(\m_axis_tdata[62] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_2 
       (.I0(p_2_out[31]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[31]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[31]),
        .O(\m_axis_tdata[63] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[64]_INST_0_i_2 
       (.I0(p_2_out[0]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[0]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[0]),
        .O(\m_axis_tdata[64] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[65]_INST_0_i_2 
       (.I0(p_2_out[1]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[1]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[1]),
        .O(\m_axis_tdata[65] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[66]_INST_0_i_2 
       (.I0(p_2_out[2]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[2]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[2]),
        .O(\m_axis_tdata[66] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[67]_INST_0_i_2 
       (.I0(p_2_out[3]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[3]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[3]),
        .O(\m_axis_tdata[67] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[68]_INST_0_i_2 
       (.I0(p_2_out[4]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[4]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[4]),
        .O(\m_axis_tdata[68] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[69]_INST_0_i_2 
       (.I0(p_2_out[5]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[5]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[5]),
        .O(\m_axis_tdata[69] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[6]_INST_0_i_2 
       (.I0(p_2_out[6]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[6]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[6]),
        .O(\m_axis_tdata[6] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[70]_INST_0_i_2 
       (.I0(p_2_out[6]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[6]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[6]),
        .O(\m_axis_tdata[70] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[71]_INST_0_i_2 
       (.I0(p_2_out[7]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[7]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[7]),
        .O(\m_axis_tdata[71] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[72]_INST_0_i_2 
       (.I0(p_2_out[8]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[8]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[8]),
        .O(\m_axis_tdata[72] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[73]_INST_0_i_2 
       (.I0(p_2_out[9]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[9]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[9]),
        .O(\m_axis_tdata[73] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[74]_INST_0_i_2 
       (.I0(p_2_out[10]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[10]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[10]),
        .O(\m_axis_tdata[74] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[75]_INST_0_i_2 
       (.I0(p_2_out[11]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[11]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[11]),
        .O(\m_axis_tdata[75] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[76]_INST_0_i_2 
       (.I0(p_2_out[12]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[12]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[12]),
        .O(\m_axis_tdata[76] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[77]_INST_0_i_2 
       (.I0(p_2_out[13]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[13]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[13]),
        .O(\m_axis_tdata[77] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[78]_INST_0_i_2 
       (.I0(p_2_out[14]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[14]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[14]),
        .O(\m_axis_tdata[78] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_2 
       (.I0(p_2_out[15]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[15]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[15]),
        .O(\m_axis_tdata[79] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[7]_INST_0_i_2 
       (.I0(p_2_out[7]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[7]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[7]),
        .O(\m_axis_tdata[7] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[80]_INST_0_i_2 
       (.I0(p_2_out[16]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[16]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[16]),
        .O(\m_axis_tdata[80] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[81]_INST_0_i_2 
       (.I0(p_2_out[17]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[17]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[17]),
        .O(\m_axis_tdata[81] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[82]_INST_0_i_2 
       (.I0(p_2_out[18]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[18]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[18]),
        .O(\m_axis_tdata[82] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[83]_INST_0_i_2 
       (.I0(p_2_out[19]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[19]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[19]),
        .O(\m_axis_tdata[83] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[84]_INST_0_i_2 
       (.I0(p_2_out[20]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[20]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[20]),
        .O(\m_axis_tdata[84] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[85]_INST_0_i_2 
       (.I0(p_2_out[21]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[21]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[21]),
        .O(\m_axis_tdata[85] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[86]_INST_0_i_2 
       (.I0(p_2_out[22]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[22]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[22]),
        .O(\m_axis_tdata[86] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[87]_INST_0_i_2 
       (.I0(p_2_out[23]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[23]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[23]),
        .O(\m_axis_tdata[87] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[88]_INST_0_i_2 
       (.I0(p_2_out[24]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[24]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[24]),
        .O(\m_axis_tdata[88] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[89]_INST_0_i_2 
       (.I0(p_2_out[25]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[25]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[25]),
        .O(\m_axis_tdata[89] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[8]_INST_0_i_2 
       (.I0(p_2_out[8]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[8]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[8]),
        .O(\m_axis_tdata[8] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[90]_INST_0_i_2 
       (.I0(p_2_out[26]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[26]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[26]),
        .O(\m_axis_tdata[90] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[91]_INST_0_i_2 
       (.I0(p_2_out[27]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[27]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[27]),
        .O(\m_axis_tdata[91] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[92]_INST_0_i_2 
       (.I0(p_2_out[28]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[28]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[28]),
        .O(\m_axis_tdata[92] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[93]_INST_0_i_2 
       (.I0(p_2_out[29]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[29]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[29]),
        .O(\m_axis_tdata[93] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[94]_INST_0_i_2 
       (.I0(p_2_out[30]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[30]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[30]),
        .O(\m_axis_tdata[94] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_2 
       (.I0(p_2_out[31]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[31]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[31]),
        .O(\m_axis_tdata[95] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[96]_INST_0_i_2 
       (.I0(p_2_out[0]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[0]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[0]),
        .O(\m_axis_tdata[96] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[97]_INST_0_i_2 
       (.I0(p_2_out[1]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[1]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[1]),
        .O(\m_axis_tdata[97] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[98]_INST_0_i_2 
       (.I0(p_2_out[2]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[2]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[2]),
        .O(\m_axis_tdata[98] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[99]_INST_0_i_2 
       (.I0(p_2_out[3]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[3]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[3]),
        .O(\m_axis_tdata[99] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[9]_INST_0_i_2 
       (.I0(p_2_out[9]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[9]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[9]),
        .O(\m_axis_tdata[9] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[0]_INST_0_i_2 
       (.I0(p_2_out[32]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[32]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[32]),
        .O(\m_axis_tkeep[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[10]_INST_0_i_2 
       (.I0(p_2_out[34]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[34]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[34]),
        .O(\m_axis_tkeep[10] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[11]_INST_0_i_2 
       (.I0(p_2_out[35]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[35]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[35]),
        .O(\m_axis_tkeep[11] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[12]_INST_0_i_2 
       (.I0(p_2_out[32]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[32]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[32]),
        .O(\m_axis_tkeep[12] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[13]_INST_0_i_2 
       (.I0(p_2_out[33]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[33]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[33]),
        .O(\m_axis_tkeep[13] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[14]_INST_0_i_2 
       (.I0(p_2_out[34]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[34]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[34]),
        .O(\m_axis_tkeep[14] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[15]_INST_0_i_2 
       (.I0(p_2_out[35]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[35]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[35]),
        .O(\m_axis_tkeep[15] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[16]_INST_0_i_2 
       (.I0(p_2_out[32]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[32]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[32]),
        .O(\m_axis_tkeep[16] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[17]_INST_0_i_2 
       (.I0(p_2_out[33]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[33]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[33]),
        .O(\m_axis_tkeep[17] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[18]_INST_0_i_2 
       (.I0(p_2_out[34]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[34]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[34]),
        .O(\m_axis_tkeep[18] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[19]_INST_0_i_2 
       (.I0(p_2_out[35]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[35]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[35]),
        .O(\m_axis_tkeep[19] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[1]_INST_0_i_2 
       (.I0(p_2_out[33]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[33]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[33]),
        .O(\m_axis_tkeep[1] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[20]_INST_0_i_2 
       (.I0(p_2_out[32]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[32]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[32]),
        .O(\m_axis_tkeep[20] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[21]_INST_0_i_2 
       (.I0(p_2_out[33]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[33]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[33]),
        .O(\m_axis_tkeep[21] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[22]_INST_0_i_2 
       (.I0(p_2_out[34]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[34]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[34]),
        .O(\m_axis_tkeep[22] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[23]_INST_0_i_2 
       (.I0(p_2_out[35]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[35]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[35]),
        .O(\m_axis_tkeep[23] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[24]_INST_0_i_2 
       (.I0(p_2_out[32]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[32]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[32]),
        .O(\m_axis_tkeep[24] ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_7 
       (.I0(payload_b[32]),
        .I1(payload_a[32]),
        .I2(sel),
        .O(p_2_out[32]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[25]_INST_0_i_2 
       (.I0(p_2_out[33]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[33]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[33]),
        .O(\m_axis_tkeep[25] ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_7 
       (.I0(payload_b[33]),
        .I1(payload_a[33]),
        .I2(sel),
        .O(p_2_out[33]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[26]_INST_0_i_2 
       (.I0(p_2_out[34]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[34]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[34]),
        .O(\m_axis_tkeep[26] ));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_7 
       (.I0(payload_b[34]),
        .I1(payload_a[34]),
        .I2(sel),
        .O(p_2_out[34]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[27]_INST_0_i_2 
       (.I0(p_2_out[35]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[35]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[35]),
        .O(\m_axis_tkeep[27] ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_7 
       (.I0(payload_b[35]),
        .I1(payload_a[35]),
        .I2(sel),
        .O(p_2_out[35]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[2]_INST_0_i_2 
       (.I0(p_2_out[34]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[34]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[34]),
        .O(\m_axis_tkeep[2] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[3]_INST_0_i_2 
       (.I0(p_2_out[35]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[35]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[35]),
        .O(\m_axis_tkeep[3] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[4]_INST_0_i_2 
       (.I0(p_2_out[32]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[32]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[32]),
        .O(\m_axis_tkeep[4] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[5]_INST_0_i_2 
       (.I0(p_2_out[33]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[33]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[33]),
        .O(\m_axis_tkeep[5] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[6]_INST_0_i_2 
       (.I0(p_2_out[34]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[34]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[34]),
        .O(\m_axis_tkeep[6] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[7]_INST_0_i_2 
       (.I0(p_2_out[35]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[35]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[35]),
        .O(\m_axis_tkeep[7] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[8]_INST_0_i_2 
       (.I0(p_2_out[32]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[32]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[32]),
        .O(\m_axis_tkeep[8] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tkeep[9]_INST_0_i_2 
       (.I0(p_2_out[33]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[33]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[33]),
        .O(\m_axis_tkeep[9] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tlast[0]_INST_0_i_2 
       (.I0(p_2_out[36]),
        .I1(ctrl_reg_synch[1]),
        .I2(p_7_out[36]),
        .I3(ctrl_reg_synch[0]),
        .I4(p_12_out[36]),
        .O(\m_axis_tlast[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tlast[1]_INST_0_i_2 
       (.I0(p_2_out[36]),
        .I1(ctrl_reg_synch[5]),
        .I2(p_7_out[36]),
        .I3(ctrl_reg_synch[4]),
        .I4(p_12_out[36]),
        .O(\m_axis_tlast[1] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tlast[2]_INST_0_i_2 
       (.I0(p_2_out[36]),
        .I1(ctrl_reg_synch[9]),
        .I2(p_7_out[36]),
        .I3(ctrl_reg_synch[8]),
        .I4(p_12_out[36]),
        .O(\m_axis_tlast[2] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tlast[3]_INST_0_i_2 
       (.I0(p_2_out[36]),
        .I1(ctrl_reg_synch[13]),
        .I2(p_7_out[36]),
        .I3(ctrl_reg_synch[12]),
        .I4(p_12_out[36]),
        .O(\m_axis_tlast[3] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tlast[4]_INST_0_i_2 
       (.I0(p_2_out[36]),
        .I1(ctrl_reg_synch[17]),
        .I2(p_7_out[36]),
        .I3(ctrl_reg_synch[16]),
        .I4(p_12_out[36]),
        .O(\m_axis_tlast[4] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tlast[5]_INST_0_i_2 
       (.I0(p_2_out[36]),
        .I1(ctrl_reg_synch[21]),
        .I2(p_7_out[36]),
        .I3(ctrl_reg_synch[20]),
        .I4(p_12_out[36]),
        .O(\m_axis_tlast[5] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tlast[6]_INST_0_i_2 
       (.I0(p_2_out[36]),
        .I1(ctrl_reg_synch[25]),
        .I2(p_7_out[36]),
        .I3(ctrl_reg_synch[24]),
        .I4(p_12_out[36]),
        .O(\m_axis_tlast[6] ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[6]_INST_0_i_7 
       (.I0(payload_b[36]),
        .I1(payload_a[36]),
        .I2(sel),
        .O(p_2_out[36]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tvalid[0]_INST_0_i_2 
       (.I0(mux_tvalid),
        .I1(ctrl_reg_synch[1]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I3(ctrl_reg_synch[0]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .O(\m_axis_tvalid[0] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tvalid[1]_INST_0_i_2 
       (.I0(mux_tvalid),
        .I1(ctrl_reg_synch[5]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I3(ctrl_reg_synch[4]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .O(\m_axis_tvalid[1] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tvalid[2]_INST_0_i_2 
       (.I0(mux_tvalid),
        .I1(ctrl_reg_synch[9]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I3(ctrl_reg_synch[8]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .O(\m_axis_tvalid[2] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tvalid[3]_INST_0_i_2 
       (.I0(mux_tvalid),
        .I1(ctrl_reg_synch[13]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I3(ctrl_reg_synch[12]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .O(\m_axis_tvalid[3] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tvalid[4]_INST_0_i_2 
       (.I0(mux_tvalid),
        .I1(ctrl_reg_synch[17]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I3(ctrl_reg_synch[16]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .O(\m_axis_tvalid[4] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tvalid[5]_INST_0_i_2 
       (.I0(mux_tvalid),
        .I1(ctrl_reg_synch[21]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I3(ctrl_reg_synch[20]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .O(\m_axis_tvalid[5] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tvalid[6]_INST_0_i_2 
       (.I0(mux_tvalid),
        .I1(ctrl_reg_synch[25]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 [1]),
        .I3(ctrl_reg_synch[24]),
        .I4(\gen_AB_reg_slice.state_reg[0]_0 [0]),
        .O(\m_axis_tvalid[6] ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_10
   (\s_axis_tready[1] ,
    \gen_AB_reg_slice.payload_a_reg[36]_0 ,
    p_27_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] );
  output \s_axis_tready[1] ;
  output \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  output [36:0]p_27_out;
  input [33:0]ctrl_reg_synch;
  input [5:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [33:0]ctrl_reg_synch;
  wire [13:7]dec_tready;
  wire \gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_2__0_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_3__0_n_0 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__0_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__0_n_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire [5:0]m_axis_tready;
  wire [36:0]p_27_out;
  wire [36:0]payload_a;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[1] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__0 
       (.I0(\s_axis_tready[1] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__0_n_0 ),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__0 
       (.I0(\s_axis_tready[1] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \gen_AB_reg_slice.sel_rd_i_1__0 
       (.I0(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I1(\gen_AB_reg_slice.sel_rd_i_2__0_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_i_3__0_n_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ),
        .I4(aclken),
        .I5(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_2__0 
       (.I0(ctrl_reg_synch[2]),
        .I1(ctrl_reg_synch[3]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .I3(ctrl_reg_synch[1]),
        .I4(ctrl_reg_synch[0]),
        .I5(dec_tready[8]),
        .O(\gen_AB_reg_slice.sel_rd_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_3__0 
       (.I0(ctrl_reg_synch[10]),
        .I1(ctrl_reg_synch[11]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .I3(ctrl_reg_synch[9]),
        .I4(ctrl_reg_synch[8]),
        .I5(dec_tready[10]),
        .O(\gen_AB_reg_slice.sel_rd_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__0_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__0 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\s_axis_tready[1] ),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__0_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFAADF00FF00FF00)) 
    \gen_AB_reg_slice.state[0]_i_1__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__0_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[1] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \gen_AB_reg_slice.state[1]_i_10__0 
       (.I0(ctrl_reg_synch[16]),
        .I1(ctrl_reg_synch[17]),
        .I2(ctrl_reg_synch[31]),
        .I3(m_axis_tready[4]),
        .I4(ctrl_reg_synch[19]),
        .I5(ctrl_reg_synch[18]),
        .O(dec_tready[11]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__0 
       (.I0(areset_r),
        .I1(ctrl_reg_synch[33]),
        .O(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h75FFFFFF20AA20AA)) 
    \gen_AB_reg_slice.state[1]_i_2__0 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__0_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[1] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_AB_reg_slice.state[1]_i_3__0 
       (.I0(dec_tready[8]),
        .I1(dec_tready[7]),
        .I2(dec_tready[10]),
        .I3(dec_tready[9]),
        .O(\gen_AB_reg_slice.state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__0 
       (.I0(ctrl_reg_synch[21]),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ),
        .I3(ctrl_reg_synch[20]),
        .I4(dec_tready[13]),
        .I5(dec_tready[11]),
        .O(\gen_AB_reg_slice.state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \gen_AB_reg_slice.state[1]_i_5__0 
       (.I0(ctrl_reg_synch[4]),
        .I1(ctrl_reg_synch[5]),
        .I2(ctrl_reg_synch[28]),
        .I3(m_axis_tready[1]),
        .I4(ctrl_reg_synch[7]),
        .I5(ctrl_reg_synch[6]),
        .O(dec_tready[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \gen_AB_reg_slice.state[1]_i_6__0 
       (.I0(ctrl_reg_synch[0]),
        .I1(ctrl_reg_synch[1]),
        .I2(ctrl_reg_synch[27]),
        .I3(m_axis_tready[0]),
        .I4(ctrl_reg_synch[3]),
        .I5(ctrl_reg_synch[2]),
        .O(dec_tready[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \gen_AB_reg_slice.state[1]_i_7__0 
       (.I0(ctrl_reg_synch[12]),
        .I1(ctrl_reg_synch[13]),
        .I2(ctrl_reg_synch[30]),
        .I3(m_axis_tready[3]),
        .I4(ctrl_reg_synch[15]),
        .I5(ctrl_reg_synch[14]),
        .O(dec_tready[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \gen_AB_reg_slice.state[1]_i_8__0 
       (.I0(ctrl_reg_synch[8]),
        .I1(ctrl_reg_synch[9]),
        .I2(ctrl_reg_synch[29]),
        .I3(m_axis_tready[2]),
        .I4(ctrl_reg_synch[11]),
        .I5(ctrl_reg_synch[10]),
        .O(dec_tready[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \gen_AB_reg_slice.state[1]_i_9__2 
       (.I0(ctrl_reg_synch[23]),
        .I1(ctrl_reg_synch[24]),
        .I2(ctrl_reg_synch[32]),
        .I3(m_axis_tready[5]),
        .I4(ctrl_reg_synch[26]),
        .I5(ctrl_reg_synch[25]),
        .O(dec_tready[13]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__0_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__0_n_0 ),
        .Q(\s_axis_tready[1] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_5 
       (.I0(payload_b[0]),
        .I1(payload_a[0]),
        .I2(sel),
        .O(p_27_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_5 
       (.I0(payload_b[1]),
        .I1(payload_a[1]),
        .I2(sel),
        .O(p_27_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_5 
       (.I0(payload_b[2]),
        .I1(payload_a[2]),
        .I2(sel),
        .O(p_27_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_5 
       (.I0(payload_b[3]),
        .I1(payload_a[3]),
        .I2(sel),
        .O(p_27_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_5 
       (.I0(payload_b[4]),
        .I1(payload_a[4]),
        .I2(sel),
        .O(p_27_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_5 
       (.I0(payload_b[5]),
        .I1(payload_a[5]),
        .I2(sel),
        .O(p_27_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_5 
       (.I0(payload_b[6]),
        .I1(payload_a[6]),
        .I2(sel),
        .O(p_27_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_5 
       (.I0(payload_b[7]),
        .I1(payload_a[7]),
        .I2(sel),
        .O(p_27_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_5 
       (.I0(payload_b[8]),
        .I1(payload_a[8]),
        .I2(sel),
        .O(p_27_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_5 
       (.I0(payload_b[9]),
        .I1(payload_a[9]),
        .I2(sel),
        .O(p_27_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_5 
       (.I0(payload_b[10]),
        .I1(payload_a[10]),
        .I2(sel),
        .O(p_27_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_5 
       (.I0(payload_b[11]),
        .I1(payload_a[11]),
        .I2(sel),
        .O(p_27_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_5 
       (.I0(payload_b[12]),
        .I1(payload_a[12]),
        .I2(sel),
        .O(p_27_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_5 
       (.I0(payload_b[13]),
        .I1(payload_a[13]),
        .I2(sel),
        .O(p_27_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_5 
       (.I0(payload_b[14]),
        .I1(payload_a[14]),
        .I2(sel),
        .O(p_27_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_5 
       (.I0(payload_b[15]),
        .I1(payload_a[15]),
        .I2(sel),
        .O(p_27_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_5 
       (.I0(payload_b[16]),
        .I1(payload_a[16]),
        .I2(sel),
        .O(p_27_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_5 
       (.I0(payload_b[17]),
        .I1(payload_a[17]),
        .I2(sel),
        .O(p_27_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_5 
       (.I0(payload_b[18]),
        .I1(payload_a[18]),
        .I2(sel),
        .O(p_27_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_5 
       (.I0(payload_b[19]),
        .I1(payload_a[19]),
        .I2(sel),
        .O(p_27_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_5 
       (.I0(payload_b[20]),
        .I1(payload_a[20]),
        .I2(sel),
        .O(p_27_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_5 
       (.I0(payload_b[21]),
        .I1(payload_a[21]),
        .I2(sel),
        .O(p_27_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_5 
       (.I0(payload_b[22]),
        .I1(payload_a[22]),
        .I2(sel),
        .O(p_27_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_5 
       (.I0(payload_b[23]),
        .I1(payload_a[23]),
        .I2(sel),
        .O(p_27_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_5 
       (.I0(payload_b[24]),
        .I1(payload_a[24]),
        .I2(sel),
        .O(p_27_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_5 
       (.I0(payload_b[25]),
        .I1(payload_a[25]),
        .I2(sel),
        .O(p_27_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_5 
       (.I0(payload_b[26]),
        .I1(payload_a[26]),
        .I2(sel),
        .O(p_27_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_5 
       (.I0(payload_b[27]),
        .I1(payload_a[27]),
        .I2(sel),
        .O(p_27_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_5 
       (.I0(payload_b[28]),
        .I1(payload_a[28]),
        .I2(sel),
        .O(p_27_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_5 
       (.I0(payload_b[29]),
        .I1(payload_a[29]),
        .I2(sel),
        .O(p_27_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_5 
       (.I0(payload_b[30]),
        .I1(payload_a[30]),
        .I2(sel),
        .O(p_27_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_5 
       (.I0(payload_b[31]),
        .I1(payload_a[31]),
        .I2(sel),
        .O(p_27_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_5 
       (.I0(payload_b[32]),
        .I1(payload_a[32]),
        .I2(sel),
        .O(p_27_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_5 
       (.I0(payload_b[33]),
        .I1(payload_a[33]),
        .I2(sel),
        .O(p_27_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_5 
       (.I0(payload_b[34]),
        .I1(payload_a[34]),
        .I2(sel),
        .O(p_27_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_5 
       (.I0(payload_b[35]),
        .I1(payload_a[35]),
        .I2(sel),
        .O(p_27_out[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[6]_INST_0_i_5 
       (.I0(payload_b[36]),
        .I1(payload_a[36]),
        .I2(sel),
        .O(p_27_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_11
   (\s_axis_tready[0] ,
    \gen_AB_reg_slice.payload_a_reg[36]_0 ,
    p_32_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] );
  output \s_axis_tready[0] ;
  output \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  output [36:0]p_32_out;
  input [32:0]ctrl_reg_synch;
  input [5:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [32:0]ctrl_reg_synch;
  wire [6:0]dec_tready;
  wire \gen_AB_reg_slice.payload_a[36]_i_1_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_2_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_3_n_0 ;
  wire \gen_AB_reg_slice.sel_wr_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4_n_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  wire [5:0]m_axis_tready;
  wire [36:0]p_32_out;
  wire [36:0]payload_a;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[0] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[36]_i_1 
       (.I0(\s_axis_tready[0] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1_n_0 ),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[36]_i_1 
       (.I0(\s_axis_tready[0] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \gen_AB_reg_slice.sel_rd_i_1 
       (.I0(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I1(\gen_AB_reg_slice.sel_rd_i_2_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_i_3_n_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_4_n_0 ),
        .I4(aclken),
        .I5(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_2 
       (.I0(ctrl_reg_synch[2]),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .I2(ctrl_reg_synch[0]),
        .I3(ctrl_reg_synch[1]),
        .I4(ctrl_reg_synch[3]),
        .I5(dec_tready[1]),
        .O(\gen_AB_reg_slice.sel_rd_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_3 
       (.I0(ctrl_reg_synch[10]),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .I2(ctrl_reg_synch[8]),
        .I3(ctrl_reg_synch[9]),
        .I4(ctrl_reg_synch[11]),
        .I5(dec_tready[3]),
        .O(\gen_AB_reg_slice.sel_rd_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\s_axis_tready[0] ),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAADF00FF00FF00)) 
    \gen_AB_reg_slice.state[0]_i_1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[0] ),
        .O(\gen_AB_reg_slice.state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1 
       (.I0(areset_r),
        .I1(ctrl_reg_synch[32]),
        .O(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \gen_AB_reg_slice.state[1]_i_10 
       (.I0(ctrl_reg_synch[19]),
        .I1(ctrl_reg_synch[17]),
        .I2(ctrl_reg_synch[16]),
        .I3(ctrl_reg_synch[30]),
        .I4(m_axis_tready[4]),
        .I5(ctrl_reg_synch[18]),
        .O(dec_tready[4]));
  LUT6 #(
    .INIT(64'h75FFFFFF20AA20AA)) 
    \gen_AB_reg_slice.state[1]_i_2 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[0] ),
        .O(\gen_AB_reg_slice.state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_AB_reg_slice.state[1]_i_3 
       (.I0(dec_tready[1]),
        .I1(dec_tready[0]),
        .I2(dec_tready[3]),
        .I3(dec_tready[2]),
        .O(\gen_AB_reg_slice.state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4 
       (.I0(ctrl_reg_synch[20]),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ),
        .I3(ctrl_reg_synch[21]),
        .I4(dec_tready[6]),
        .I5(dec_tready[4]),
        .O(\gen_AB_reg_slice.state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \gen_AB_reg_slice.state[1]_i_5 
       (.I0(ctrl_reg_synch[7]),
        .I1(ctrl_reg_synch[5]),
        .I2(ctrl_reg_synch[4]),
        .I3(ctrl_reg_synch[27]),
        .I4(m_axis_tready[1]),
        .I5(ctrl_reg_synch[6]),
        .O(dec_tready[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \gen_AB_reg_slice.state[1]_i_6 
       (.I0(ctrl_reg_synch[3]),
        .I1(ctrl_reg_synch[1]),
        .I2(ctrl_reg_synch[0]),
        .I3(ctrl_reg_synch[26]),
        .I4(m_axis_tready[0]),
        .I5(ctrl_reg_synch[2]),
        .O(dec_tready[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \gen_AB_reg_slice.state[1]_i_7 
       (.I0(ctrl_reg_synch[15]),
        .I1(ctrl_reg_synch[13]),
        .I2(ctrl_reg_synch[12]),
        .I3(ctrl_reg_synch[29]),
        .I4(m_axis_tready[3]),
        .I5(ctrl_reg_synch[14]),
        .O(dec_tready[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \gen_AB_reg_slice.state[1]_i_8 
       (.I0(ctrl_reg_synch[11]),
        .I1(ctrl_reg_synch[9]),
        .I2(ctrl_reg_synch[8]),
        .I3(ctrl_reg_synch[28]),
        .I4(m_axis_tready[2]),
        .I5(ctrl_reg_synch[10]),
        .O(dec_tready[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \gen_AB_reg_slice.state[1]_i_9__1 
       (.I0(ctrl_reg_synch[25]),
        .I1(ctrl_reg_synch[23]),
        .I2(ctrl_reg_synch[22]),
        .I3(ctrl_reg_synch[31]),
        .I4(m_axis_tready[5]),
        .I5(ctrl_reg_synch[24]),
        .O(dec_tready[6]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2_n_0 ),
        .Q(\s_axis_tready[0] ),
        .R(\gen_AB_reg_slice.state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_6 
       (.I0(payload_b[0]),
        .I1(payload_a[0]),
        .I2(sel),
        .O(p_32_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_6 
       (.I0(payload_b[1]),
        .I1(payload_a[1]),
        .I2(sel),
        .O(p_32_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_6 
       (.I0(payload_b[2]),
        .I1(payload_a[2]),
        .I2(sel),
        .O(p_32_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_6 
       (.I0(payload_b[3]),
        .I1(payload_a[3]),
        .I2(sel),
        .O(p_32_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_6 
       (.I0(payload_b[4]),
        .I1(payload_a[4]),
        .I2(sel),
        .O(p_32_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_6 
       (.I0(payload_b[5]),
        .I1(payload_a[5]),
        .I2(sel),
        .O(p_32_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_6 
       (.I0(payload_b[6]),
        .I1(payload_a[6]),
        .I2(sel),
        .O(p_32_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_6 
       (.I0(payload_b[7]),
        .I1(payload_a[7]),
        .I2(sel),
        .O(p_32_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_6 
       (.I0(payload_b[8]),
        .I1(payload_a[8]),
        .I2(sel),
        .O(p_32_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_6 
       (.I0(payload_b[9]),
        .I1(payload_a[9]),
        .I2(sel),
        .O(p_32_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_6 
       (.I0(payload_b[10]),
        .I1(payload_a[10]),
        .I2(sel),
        .O(p_32_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_6 
       (.I0(payload_b[11]),
        .I1(payload_a[11]),
        .I2(sel),
        .O(p_32_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_6 
       (.I0(payload_b[12]),
        .I1(payload_a[12]),
        .I2(sel),
        .O(p_32_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_6 
       (.I0(payload_b[13]),
        .I1(payload_a[13]),
        .I2(sel),
        .O(p_32_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_6 
       (.I0(payload_b[14]),
        .I1(payload_a[14]),
        .I2(sel),
        .O(p_32_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_6 
       (.I0(payload_b[15]),
        .I1(payload_a[15]),
        .I2(sel),
        .O(p_32_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_6 
       (.I0(payload_b[16]),
        .I1(payload_a[16]),
        .I2(sel),
        .O(p_32_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_6 
       (.I0(payload_b[17]),
        .I1(payload_a[17]),
        .I2(sel),
        .O(p_32_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_6 
       (.I0(payload_b[18]),
        .I1(payload_a[18]),
        .I2(sel),
        .O(p_32_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_6 
       (.I0(payload_b[19]),
        .I1(payload_a[19]),
        .I2(sel),
        .O(p_32_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_6 
       (.I0(payload_b[20]),
        .I1(payload_a[20]),
        .I2(sel),
        .O(p_32_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_6 
       (.I0(payload_b[21]),
        .I1(payload_a[21]),
        .I2(sel),
        .O(p_32_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_6 
       (.I0(payload_b[22]),
        .I1(payload_a[22]),
        .I2(sel),
        .O(p_32_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_6 
       (.I0(payload_b[23]),
        .I1(payload_a[23]),
        .I2(sel),
        .O(p_32_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_6 
       (.I0(payload_b[24]),
        .I1(payload_a[24]),
        .I2(sel),
        .O(p_32_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_6 
       (.I0(payload_b[25]),
        .I1(payload_a[25]),
        .I2(sel),
        .O(p_32_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_6 
       (.I0(payload_b[26]),
        .I1(payload_a[26]),
        .I2(sel),
        .O(p_32_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_6 
       (.I0(payload_b[27]),
        .I1(payload_a[27]),
        .I2(sel),
        .O(p_32_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_6 
       (.I0(payload_b[28]),
        .I1(payload_a[28]),
        .I2(sel),
        .O(p_32_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_6 
       (.I0(payload_b[29]),
        .I1(payload_a[29]),
        .I2(sel),
        .O(p_32_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_6 
       (.I0(payload_b[30]),
        .I1(payload_a[30]),
        .I2(sel),
        .O(p_32_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_6 
       (.I0(payload_b[31]),
        .I1(payload_a[31]),
        .I2(sel),
        .O(p_32_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_6 
       (.I0(payload_b[32]),
        .I1(payload_a[32]),
        .I2(sel),
        .O(p_32_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_6 
       (.I0(payload_b[33]),
        .I1(payload_a[33]),
        .I2(sel),
        .O(p_32_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_6 
       (.I0(payload_b[34]),
        .I1(payload_a[34]),
        .I2(sel),
        .O(p_32_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_6 
       (.I0(payload_b[35]),
        .I1(payload_a[35]),
        .I2(sel),
        .O(p_32_out[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[6]_INST_0_i_6 
       (.I0(payload_b[36]),
        .I1(payload_a[36]),
        .I2(sel),
        .O(p_32_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_6
   (\gen_AB_reg_slice.sel_rd_reg_0 ,
    \s_axis_tready[5] ,
    \gen_AB_reg_slice.payload_a_reg[36]_0 ,
    p_7_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] );
  output \gen_AB_reg_slice.sel_rd_reg_0 ;
  output \s_axis_tready[5] ;
  output \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  output [36:0]p_7_out;
  input [35:0]ctrl_reg_synch;
  input [6:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire [41:35]dec_tready;
  wire \gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1__4_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_2__4_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_3__4_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__4_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__4_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__4_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__4_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__4_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__4_n_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire [6:0]m_axis_tready;
  wire [36:0]p_7_out;
  wire [36:0]payload_a;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[5] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__4 
       (.I0(\s_axis_tready[5] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__4_n_0 ),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__4 
       (.I0(\s_axis_tready[5] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \gen_AB_reg_slice.sel_rd_i_1__4 
       (.I0(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I1(\gen_AB_reg_slice.sel_rd_i_2__4_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_i_3__4_n_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_4__4_n_0 ),
        .I4(aclken),
        .I5(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_2__4 
       (.I0(ctrl_reg_synch[0]),
        .I1(ctrl_reg_synch[3]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .I3(ctrl_reg_synch[1]),
        .I4(ctrl_reg_synch[2]),
        .I5(dec_tready[36]),
        .O(\gen_AB_reg_slice.sel_rd_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_3__4 
       (.I0(ctrl_reg_synch[8]),
        .I1(ctrl_reg_synch[11]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .I3(ctrl_reg_synch[9]),
        .I4(ctrl_reg_synch[10]),
        .I5(dec_tready[38]),
        .O(\gen_AB_reg_slice.sel_rd_i_3__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__4_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__4 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\s_axis_tready[5] ),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__4_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFAADF00FF00FF00)) 
    \gen_AB_reg_slice.state[0]_i_1__4 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__4_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__4_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[5] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_10__4 
       (.I0(ctrl_reg_synch[26]),
        .I1(ctrl_reg_synch[25]),
        .I2(ctrl_reg_synch[34]),
        .I3(m_axis_tready[6]),
        .I4(ctrl_reg_synch[27]),
        .I5(ctrl_reg_synch[24]),
        .O(dec_tready[41]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_11__0 
       (.I0(ctrl_reg_synch[18]),
        .I1(ctrl_reg_synch[17]),
        .I2(ctrl_reg_synch[32]),
        .I3(m_axis_tready[4]),
        .I4(ctrl_reg_synch[19]),
        .I5(ctrl_reg_synch[16]),
        .O(dec_tready[39]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__4 
       (.I0(areset_r),
        .I1(ctrl_reg_synch[35]),
        .O(\gen_AB_reg_slice.state[1]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h75FFFFFF20AA20AA)) 
    \gen_AB_reg_slice.state[1]_i_2__4 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__4_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__4_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[5] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_AB_reg_slice.state[1]_i_3__4 
       (.I0(dec_tready[36]),
        .I1(dec_tready[35]),
        .I2(dec_tready[38]),
        .I3(dec_tready[37]),
        .O(\gen_AB_reg_slice.state[1]_i_3__4_n_0 ));
  LUT6 #(
    .INIT(64'hFDFF000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__4 
       (.I0(ctrl_reg_synch[20]),
        .I1(ctrl_reg_synch[23]),
        .I2(\gen_AB_reg_slice.sel_rd_reg_0 ),
        .I3(ctrl_reg_synch[22]),
        .I4(dec_tready[41]),
        .I5(dec_tready[39]),
        .O(\gen_AB_reg_slice.state[1]_i_4__4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_5__4 
       (.I0(ctrl_reg_synch[6]),
        .I1(ctrl_reg_synch[5]),
        .I2(ctrl_reg_synch[29]),
        .I3(m_axis_tready[1]),
        .I4(ctrl_reg_synch[7]),
        .I5(ctrl_reg_synch[4]),
        .O(dec_tready[36]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_6__4 
       (.I0(ctrl_reg_synch[2]),
        .I1(ctrl_reg_synch[1]),
        .I2(ctrl_reg_synch[28]),
        .I3(m_axis_tready[0]),
        .I4(ctrl_reg_synch[3]),
        .I5(ctrl_reg_synch[0]),
        .O(dec_tready[35]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_7__4 
       (.I0(ctrl_reg_synch[14]),
        .I1(ctrl_reg_synch[13]),
        .I2(ctrl_reg_synch[31]),
        .I3(m_axis_tready[3]),
        .I4(ctrl_reg_synch[15]),
        .I5(ctrl_reg_synch[12]),
        .O(dec_tready[38]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_8__4 
       (.I0(ctrl_reg_synch[10]),
        .I1(ctrl_reg_synch[9]),
        .I2(ctrl_reg_synch[30]),
        .I3(m_axis_tready[2]),
        .I4(ctrl_reg_synch[11]),
        .I5(ctrl_reg_synch[8]),
        .O(dec_tready[37]));
  LUT3 #(
    .INIT(8'hFB)) 
    \gen_AB_reg_slice.state[1]_i_9 
       (.I0(ctrl_reg_synch[21]),
        .I1(ctrl_reg_synch[33]),
        .I2(m_axis_tready[5]),
        .O(\gen_AB_reg_slice.sel_rd_reg_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__4_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__4_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__4_n_0 ),
        .Q(\s_axis_tready[5] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_8 
       (.I0(payload_b[0]),
        .I1(payload_a[0]),
        .I2(sel),
        .O(p_7_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_8 
       (.I0(payload_b[1]),
        .I1(payload_a[1]),
        .I2(sel),
        .O(p_7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_8 
       (.I0(payload_b[2]),
        .I1(payload_a[2]),
        .I2(sel),
        .O(p_7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_8 
       (.I0(payload_b[3]),
        .I1(payload_a[3]),
        .I2(sel),
        .O(p_7_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_8 
       (.I0(payload_b[4]),
        .I1(payload_a[4]),
        .I2(sel),
        .O(p_7_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_8 
       (.I0(payload_b[5]),
        .I1(payload_a[5]),
        .I2(sel),
        .O(p_7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_8 
       (.I0(payload_b[6]),
        .I1(payload_a[6]),
        .I2(sel),
        .O(p_7_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_8 
       (.I0(payload_b[7]),
        .I1(payload_a[7]),
        .I2(sel),
        .O(p_7_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_8 
       (.I0(payload_b[8]),
        .I1(payload_a[8]),
        .I2(sel),
        .O(p_7_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_8 
       (.I0(payload_b[9]),
        .I1(payload_a[9]),
        .I2(sel),
        .O(p_7_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_8 
       (.I0(payload_b[10]),
        .I1(payload_a[10]),
        .I2(sel),
        .O(p_7_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_8 
       (.I0(payload_b[11]),
        .I1(payload_a[11]),
        .I2(sel),
        .O(p_7_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_8 
       (.I0(payload_b[12]),
        .I1(payload_a[12]),
        .I2(sel),
        .O(p_7_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_8 
       (.I0(payload_b[13]),
        .I1(payload_a[13]),
        .I2(sel),
        .O(p_7_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_8 
       (.I0(payload_b[14]),
        .I1(payload_a[14]),
        .I2(sel),
        .O(p_7_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_8 
       (.I0(payload_b[15]),
        .I1(payload_a[15]),
        .I2(sel),
        .O(p_7_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_8 
       (.I0(payload_b[16]),
        .I1(payload_a[16]),
        .I2(sel),
        .O(p_7_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_8 
       (.I0(payload_b[17]),
        .I1(payload_a[17]),
        .I2(sel),
        .O(p_7_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_8 
       (.I0(payload_b[18]),
        .I1(payload_a[18]),
        .I2(sel),
        .O(p_7_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_8 
       (.I0(payload_b[19]),
        .I1(payload_a[19]),
        .I2(sel),
        .O(p_7_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_8 
       (.I0(payload_b[20]),
        .I1(payload_a[20]),
        .I2(sel),
        .O(p_7_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_8 
       (.I0(payload_b[21]),
        .I1(payload_a[21]),
        .I2(sel),
        .O(p_7_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_8 
       (.I0(payload_b[22]),
        .I1(payload_a[22]),
        .I2(sel),
        .O(p_7_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_8 
       (.I0(payload_b[23]),
        .I1(payload_a[23]),
        .I2(sel),
        .O(p_7_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_8 
       (.I0(payload_b[24]),
        .I1(payload_a[24]),
        .I2(sel),
        .O(p_7_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_8 
       (.I0(payload_b[25]),
        .I1(payload_a[25]),
        .I2(sel),
        .O(p_7_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_8 
       (.I0(payload_b[26]),
        .I1(payload_a[26]),
        .I2(sel),
        .O(p_7_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_8 
       (.I0(payload_b[27]),
        .I1(payload_a[27]),
        .I2(sel),
        .O(p_7_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_8 
       (.I0(payload_b[28]),
        .I1(payload_a[28]),
        .I2(sel),
        .O(p_7_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_8 
       (.I0(payload_b[29]),
        .I1(payload_a[29]),
        .I2(sel),
        .O(p_7_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_8 
       (.I0(payload_b[30]),
        .I1(payload_a[30]),
        .I2(sel),
        .O(p_7_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_8 
       (.I0(payload_b[31]),
        .I1(payload_a[31]),
        .I2(sel),
        .O(p_7_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_8 
       (.I0(payload_b[32]),
        .I1(payload_a[32]),
        .I2(sel),
        .O(p_7_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_8 
       (.I0(payload_b[33]),
        .I1(payload_a[33]),
        .I2(sel),
        .O(p_7_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_8 
       (.I0(payload_b[34]),
        .I1(payload_a[34]),
        .I2(sel),
        .O(p_7_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_8 
       (.I0(payload_b[35]),
        .I1(payload_a[35]),
        .I2(sel),
        .O(p_7_out[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[6]_INST_0_i_8 
       (.I0(payload_b[36]),
        .I1(payload_a[36]),
        .I2(sel),
        .O(p_7_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_7
   (\gen_AB_reg_slice.sel_rd_reg_0 ,
    \s_axis_tready[4] ,
    \gen_AB_reg_slice.payload_a_reg[36]_0 ,
    \gen_AB_reg_slice.sel_rd_reg_1 ,
    p_12_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] );
  output \gen_AB_reg_slice.sel_rd_reg_0 ;
  output \s_axis_tready[4] ;
  output \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  output \gen_AB_reg_slice.sel_rd_reg_1 ;
  output [36:0]p_12_out;
  input [35:0]ctrl_reg_synch;
  input [6:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire [34:28]dec_tready;
  wire \gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_2__3_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_3__3_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_1 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__3_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__3_n_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire [6:0]m_axis_tready;
  wire [36:0]p_12_out;
  wire [36:0]payload_a;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[4] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__3 
       (.I0(\s_axis_tready[4] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__3_n_0 ),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__3 
       (.I0(\s_axis_tready[4] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \gen_AB_reg_slice.sel_rd_i_1__3 
       (.I0(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I1(\gen_AB_reg_slice.sel_rd_i_2__3_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_i_3__3_n_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_4__3_n_0 ),
        .I4(aclken),
        .I5(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_2__3 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .I1(ctrl_reg_synch[3]),
        .I2(ctrl_reg_synch[0]),
        .I3(ctrl_reg_synch[1]),
        .I4(ctrl_reg_synch[2]),
        .I5(dec_tready[29]),
        .O(\gen_AB_reg_slice.sel_rd_i_2__3_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_3__3 
       (.I0(\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .I1(ctrl_reg_synch[11]),
        .I2(ctrl_reg_synch[8]),
        .I3(ctrl_reg_synch[9]),
        .I4(ctrl_reg_synch[10]),
        .I5(dec_tready[31]),
        .O(\gen_AB_reg_slice.sel_rd_i_3__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__3_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__3 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\s_axis_tready[4] ),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__3_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAADF00FF00FF00)) 
    \gen_AB_reg_slice.state[0]_i_1__3 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__3_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__3_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[4] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_AB_reg_slice.state[1]_i_10__2 
       (.I0(ctrl_reg_synch[21]),
        .I1(ctrl_reg_synch[20]),
        .O(\gen_AB_reg_slice.sel_rd_reg_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \gen_AB_reg_slice.state[1]_i_11__2 
       (.I0(ctrl_reg_synch[26]),
        .I1(ctrl_reg_synch[25]),
        .I2(ctrl_reg_synch[24]),
        .I3(ctrl_reg_synch[27]),
        .I4(ctrl_reg_synch[34]),
        .I5(m_axis_tready[6]),
        .O(dec_tready[34]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \gen_AB_reg_slice.state[1]_i_12 
       (.I0(ctrl_reg_synch[18]),
        .I1(ctrl_reg_synch[17]),
        .I2(ctrl_reg_synch[16]),
        .I3(ctrl_reg_synch[19]),
        .I4(ctrl_reg_synch[32]),
        .I5(m_axis_tready[4]),
        .O(dec_tready[32]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__3 
       (.I0(areset_r),
        .I1(ctrl_reg_synch[35]),
        .O(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h75FFFFFF20AA20AA)) 
    \gen_AB_reg_slice.state[1]_i_2__3 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__3_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__3_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[4] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_AB_reg_slice.state[1]_i_3__3 
       (.I0(dec_tready[29]),
        .I1(dec_tready[28]),
        .I2(dec_tready[31]),
        .I3(dec_tready[30]),
        .O(\gen_AB_reg_slice.state[1]_i_3__3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__3 
       (.I0(\gen_AB_reg_slice.sel_rd_reg_1 ),
        .I1(ctrl_reg_synch[23]),
        .I2(\gen_AB_reg_slice.sel_rd_reg_0 ),
        .I3(ctrl_reg_synch[22]),
        .I4(dec_tready[34]),
        .I5(dec_tready[32]),
        .O(\gen_AB_reg_slice.state[1]_i_4__3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \gen_AB_reg_slice.state[1]_i_5__3 
       (.I0(ctrl_reg_synch[6]),
        .I1(ctrl_reg_synch[5]),
        .I2(ctrl_reg_synch[4]),
        .I3(ctrl_reg_synch[7]),
        .I4(ctrl_reg_synch[29]),
        .I5(m_axis_tready[1]),
        .O(dec_tready[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \gen_AB_reg_slice.state[1]_i_6__3 
       (.I0(ctrl_reg_synch[2]),
        .I1(ctrl_reg_synch[1]),
        .I2(ctrl_reg_synch[0]),
        .I3(ctrl_reg_synch[3]),
        .I4(ctrl_reg_synch[28]),
        .I5(m_axis_tready[0]),
        .O(dec_tready[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \gen_AB_reg_slice.state[1]_i_7__3 
       (.I0(ctrl_reg_synch[14]),
        .I1(ctrl_reg_synch[13]),
        .I2(ctrl_reg_synch[12]),
        .I3(ctrl_reg_synch[15]),
        .I4(ctrl_reg_synch[31]),
        .I5(m_axis_tready[3]),
        .O(dec_tready[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
    \gen_AB_reg_slice.state[1]_i_8__3 
       (.I0(ctrl_reg_synch[10]),
        .I1(ctrl_reg_synch[9]),
        .I2(ctrl_reg_synch[8]),
        .I3(ctrl_reg_synch[11]),
        .I4(ctrl_reg_synch[30]),
        .I5(m_axis_tready[2]),
        .O(dec_tready[30]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_9__5 
       (.I0(m_axis_tready[5]),
        .I1(ctrl_reg_synch[33]),
        .O(\gen_AB_reg_slice.sel_rd_reg_1 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__3_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__3_n_0 ),
        .Q(\s_axis_tready[4] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_9 
       (.I0(payload_b[0]),
        .I1(payload_a[0]),
        .I2(sel),
        .O(p_12_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_9 
       (.I0(payload_b[1]),
        .I1(payload_a[1]),
        .I2(sel),
        .O(p_12_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_9 
       (.I0(payload_b[2]),
        .I1(payload_a[2]),
        .I2(sel),
        .O(p_12_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_9 
       (.I0(payload_b[3]),
        .I1(payload_a[3]),
        .I2(sel),
        .O(p_12_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_9 
       (.I0(payload_b[4]),
        .I1(payload_a[4]),
        .I2(sel),
        .O(p_12_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_9 
       (.I0(payload_b[5]),
        .I1(payload_a[5]),
        .I2(sel),
        .O(p_12_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_9 
       (.I0(payload_b[6]),
        .I1(payload_a[6]),
        .I2(sel),
        .O(p_12_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_9 
       (.I0(payload_b[7]),
        .I1(payload_a[7]),
        .I2(sel),
        .O(p_12_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_9 
       (.I0(payload_b[8]),
        .I1(payload_a[8]),
        .I2(sel),
        .O(p_12_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_9 
       (.I0(payload_b[9]),
        .I1(payload_a[9]),
        .I2(sel),
        .O(p_12_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_9 
       (.I0(payload_b[10]),
        .I1(payload_a[10]),
        .I2(sel),
        .O(p_12_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_9 
       (.I0(payload_b[11]),
        .I1(payload_a[11]),
        .I2(sel),
        .O(p_12_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_9 
       (.I0(payload_b[12]),
        .I1(payload_a[12]),
        .I2(sel),
        .O(p_12_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_9 
       (.I0(payload_b[13]),
        .I1(payload_a[13]),
        .I2(sel),
        .O(p_12_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_9 
       (.I0(payload_b[14]),
        .I1(payload_a[14]),
        .I2(sel),
        .O(p_12_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_9 
       (.I0(payload_b[15]),
        .I1(payload_a[15]),
        .I2(sel),
        .O(p_12_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_9 
       (.I0(payload_b[16]),
        .I1(payload_a[16]),
        .I2(sel),
        .O(p_12_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_9 
       (.I0(payload_b[17]),
        .I1(payload_a[17]),
        .I2(sel),
        .O(p_12_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_9 
       (.I0(payload_b[18]),
        .I1(payload_a[18]),
        .I2(sel),
        .O(p_12_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_9 
       (.I0(payload_b[19]),
        .I1(payload_a[19]),
        .I2(sel),
        .O(p_12_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_9 
       (.I0(payload_b[20]),
        .I1(payload_a[20]),
        .I2(sel),
        .O(p_12_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_9 
       (.I0(payload_b[21]),
        .I1(payload_a[21]),
        .I2(sel),
        .O(p_12_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_9 
       (.I0(payload_b[22]),
        .I1(payload_a[22]),
        .I2(sel),
        .O(p_12_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_9 
       (.I0(payload_b[23]),
        .I1(payload_a[23]),
        .I2(sel),
        .O(p_12_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_9 
       (.I0(payload_b[24]),
        .I1(payload_a[24]),
        .I2(sel),
        .O(p_12_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_9 
       (.I0(payload_b[25]),
        .I1(payload_a[25]),
        .I2(sel),
        .O(p_12_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_9 
       (.I0(payload_b[26]),
        .I1(payload_a[26]),
        .I2(sel),
        .O(p_12_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_9 
       (.I0(payload_b[27]),
        .I1(payload_a[27]),
        .I2(sel),
        .O(p_12_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_9 
       (.I0(payload_b[28]),
        .I1(payload_a[28]),
        .I2(sel),
        .O(p_12_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_9 
       (.I0(payload_b[29]),
        .I1(payload_a[29]),
        .I2(sel),
        .O(p_12_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_9 
       (.I0(payload_b[30]),
        .I1(payload_a[30]),
        .I2(sel),
        .O(p_12_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_9 
       (.I0(payload_b[31]),
        .I1(payload_a[31]),
        .I2(sel),
        .O(p_12_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_9 
       (.I0(payload_b[32]),
        .I1(payload_a[32]),
        .I2(sel),
        .O(p_12_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_9 
       (.I0(payload_b[33]),
        .I1(payload_a[33]),
        .I2(sel),
        .O(p_12_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_9 
       (.I0(payload_b[34]),
        .I1(payload_a[34]),
        .I2(sel),
        .O(p_12_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_9 
       (.I0(payload_b[35]),
        .I1(payload_a[35]),
        .I2(sel),
        .O(p_12_out[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[6]_INST_0_i_9 
       (.I0(payload_b[36]),
        .I1(payload_a[36]),
        .I2(sel),
        .O(p_12_out[36]));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_8
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    \s_axis_tready[3] ,
    p_22_out,
    ctrl_reg_synch,
    p_27_out,
    p_32_out,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    m_axis_tready,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    \gen_AB_reg_slice.state_reg[0]_2 ,
    \gen_AB_reg_slice.state_reg[0]_3 ,
    \gen_AB_reg_slice.state_reg[0]_4 ,
    \gen_AB_reg_slice.state_reg[0]_5 ,
    \gen_AB_reg_slice.state_reg[0]_6 ,
    \gen_AB_reg_slice.state_reg[0]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] );
  output [6:0]m_axis_tvalid;
  output [223:0]m_axis_tdata;
  output [27:0]m_axis_tkeep;
  output [6:0]m_axis_tlast;
  output \s_axis_tready[3] ;
  input [36:0]p_22_out;
  input [35:0]ctrl_reg_synch;
  input [36:0]p_27_out;
  input [36:0]p_32_out;
  input \gen_AB_reg_slice.state_reg[0]_0 ;
  input [5:0]m_axis_tready;
  input [2:0]\gen_AB_reg_slice.state_reg[0]_1 ;
  input \gen_AB_reg_slice.state_reg[0]_2 ;
  input \gen_AB_reg_slice.state_reg[0]_3 ;
  input \gen_AB_reg_slice.state_reg[0]_4 ;
  input \gen_AB_reg_slice.state_reg[0]_5 ;
  input \gen_AB_reg_slice.state_reg[0]_6 ;
  input \gen_AB_reg_slice.state_reg[0]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire [27:21]dec_tready;
  wire \gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_2__2_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_3__2_n_0 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__2_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_9__4_n_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_0 ;
  wire [2:0]\gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg[0]_2 ;
  wire \gen_AB_reg_slice.state_reg[0]_3 ;
  wire \gen_AB_reg_slice.state_reg[0]_4 ;
  wire \gen_AB_reg_slice.state_reg[0]_5 ;
  wire \gen_AB_reg_slice.state_reg[0]_6 ;
  wire \gen_AB_reg_slice.state_reg[0]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  wire [223:0]m_axis_tdata;
  wire \m_axis_tdata[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[100]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[101]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[102]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[103]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[104]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[105]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[106]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[107]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[108]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[109]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[10]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[110]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[112]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[113]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[114]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[115]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[116]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[117]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[118]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[119]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[11]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[120]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[121]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[122]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[123]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[124]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[125]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[126]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[128]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[129]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[12]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[130]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[131]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[132]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[133]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[134]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[135]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[136]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[137]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[138]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[139]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[13]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[140]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[141]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[142]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[144]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[145]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[146]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[147]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[148]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[149]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[14]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[150]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[151]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[152]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[153]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[154]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[155]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[156]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[157]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[158]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[160]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[161]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[162]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[163]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[164]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[165]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[166]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[167]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[168]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[169]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[16]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[170]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[171]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[172]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[173]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[174]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[176]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[177]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[178]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[179]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[17]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[180]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[181]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[182]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[183]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[184]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[185]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[186]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[187]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[188]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[189]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[18]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[190]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[192]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[193]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[194]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[195]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[196]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[197]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[198]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[199]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[19]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[200]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[201]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[202]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[203]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[204]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[205]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[206]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[208]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[209]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[20]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[210]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[211]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[212]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[213]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[214]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[215]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[216]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[217]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[218]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[219]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[21]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[220]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[221]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[222]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[22]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[23]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[24]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[25]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[26]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[27]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[28]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[29]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[30]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[32]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[33]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[34]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[35]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[36]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[37]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[38]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[39]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[40]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[41]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[42]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[43]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[44]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[45]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[46]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[48]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[49]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[50]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[51]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[52]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[53]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[54]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[55]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[56]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[57]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[58]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[59]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[60]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[61]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[62]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[64]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[65]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[66]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[67]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[68]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[69]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[70]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[71]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[72]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[73]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[74]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[75]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[76]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[77]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[78]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[7]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[80]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[81]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[82]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[83]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[84]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[85]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[86]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[87]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[88]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[89]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[8]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[90]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[91]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[92]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[93]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[94]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[96]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[97]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[98]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[99]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[9]_INST_0_i_1_n_0 ;
  wire [27:0]m_axis_tkeep;
  wire \m_axis_tkeep[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[10]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[11]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[12]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[13]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[14]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[15]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[16]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[17]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[18]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[19]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[1]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[20]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[21]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[22]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[23]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[24]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[25]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[26]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[27]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[2]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[3]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[4]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[5]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[6]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[7]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[8]_INST_0_i_1_n_0 ;
  wire \m_axis_tkeep[9]_INST_0_i_1_n_0 ;
  wire [6:0]m_axis_tlast;
  wire \m_axis_tlast[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tlast[1]_INST_0_i_1_n_0 ;
  wire \m_axis_tlast[2]_INST_0_i_1_n_0 ;
  wire \m_axis_tlast[3]_INST_0_i_1_n_0 ;
  wire \m_axis_tlast[4]_INST_0_i_1_n_0 ;
  wire \m_axis_tlast[5]_INST_0_i_1_n_0 ;
  wire \m_axis_tlast[6]_INST_0_i_1_n_0 ;
  wire [5:0]m_axis_tready;
  wire [6:0]m_axis_tvalid;
  wire \m_axis_tvalid[0]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[1]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[2]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[3]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[4]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[5]_INST_0_i_1_n_0 ;
  wire \m_axis_tvalid[6]_INST_0_i_1_n_0 ;
  wire [45:45]mux_tvalid;
  wire [36:0]p_17_out;
  wire [36:0]p_22_out;
  wire [36:0]p_27_out;
  wire [36:0]p_32_out;
  wire [36:0]payload_a;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[3] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__2 
       (.I0(\s_axis_tready[3] ),
        .I1(mux_tvalid),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__2_n_0 ),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__2 
       (.I0(\s_axis_tready[3] ),
        .I1(mux_tvalid),
        .I2(aclken),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \gen_AB_reg_slice.sel_rd_i_1__2 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.sel_rd_i_2__2_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_i_3__2_n_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_4__2_n_0 ),
        .I4(aclken),
        .I5(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_2__2 
       (.I0(ctrl_reg_synch[0]),
        .I1(ctrl_reg_synch[3]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .I3(ctrl_reg_synch[2]),
        .I4(ctrl_reg_synch[1]),
        .I5(dec_tready[22]),
        .O(\gen_AB_reg_slice.sel_rd_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h00020000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_3__2 
       (.I0(ctrl_reg_synch[8]),
        .I1(ctrl_reg_synch[11]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .I3(ctrl_reg_synch[10]),
        .I4(ctrl_reg_synch[9]),
        .I5(dec_tready[24]),
        .O(\gen_AB_reg_slice.sel_rd_i_3__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__2_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__2 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\s_axis_tready[3] ),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__2_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAADF00FF00FF00)) 
    \gen_AB_reg_slice.state[0]_i_1__2 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__2_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__2_n_0 ),
        .I3(mux_tvalid),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[3] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_10__3 
       (.I0(ctrl_reg_synch[25]),
        .I1(ctrl_reg_synch[26]),
        .I2(ctrl_reg_synch[34]),
        .I3(m_axis_tready[5]),
        .I4(ctrl_reg_synch[27]),
        .I5(ctrl_reg_synch[24]),
        .O(dec_tready[27]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_11 
       (.I0(ctrl_reg_synch[17]),
        .I1(ctrl_reg_synch[18]),
        .I2(ctrl_reg_synch[32]),
        .I3(m_axis_tready[4]),
        .I4(ctrl_reg_synch[19]),
        .I5(ctrl_reg_synch[16]),
        .O(dec_tready[25]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__2 
       (.I0(areset_r),
        .I1(ctrl_reg_synch[35]),
        .O(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h75FFFFFF20AA20AA)) 
    \gen_AB_reg_slice.state[1]_i_2__2 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__2_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__2_n_0 ),
        .I3(mux_tvalid),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[3] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_AB_reg_slice.state[1]_i_3__2 
       (.I0(dec_tready[22]),
        .I1(dec_tready[21]),
        .I2(dec_tready[24]),
        .I3(dec_tready[23]),
        .O(\gen_AB_reg_slice.state[1]_i_3__2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__2 
       (.I0(\gen_AB_reg_slice.state[1]_i_9__4_n_0 ),
        .I1(\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ),
        .I2(ctrl_reg_synch[22]),
        .I3(ctrl_reg_synch[21]),
        .I4(dec_tready[27]),
        .I5(dec_tready[25]),
        .O(\gen_AB_reg_slice.state[1]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_5__2 
       (.I0(ctrl_reg_synch[5]),
        .I1(ctrl_reg_synch[6]),
        .I2(ctrl_reg_synch[29]),
        .I3(m_axis_tready[1]),
        .I4(ctrl_reg_synch[7]),
        .I5(ctrl_reg_synch[4]),
        .O(dec_tready[22]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_6__2 
       (.I0(ctrl_reg_synch[1]),
        .I1(ctrl_reg_synch[2]),
        .I2(ctrl_reg_synch[28]),
        .I3(m_axis_tready[0]),
        .I4(ctrl_reg_synch[3]),
        .I5(ctrl_reg_synch[0]),
        .O(dec_tready[21]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_7__2 
       (.I0(ctrl_reg_synch[13]),
        .I1(ctrl_reg_synch[14]),
        .I2(ctrl_reg_synch[31]),
        .I3(m_axis_tready[3]),
        .I4(ctrl_reg_synch[15]),
        .I5(ctrl_reg_synch[12]),
        .O(dec_tready[24]));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \gen_AB_reg_slice.state[1]_i_8__2 
       (.I0(ctrl_reg_synch[9]),
        .I1(ctrl_reg_synch[10]),
        .I2(ctrl_reg_synch[30]),
        .I3(m_axis_tready[2]),
        .I4(ctrl_reg_synch[11]),
        .I5(ctrl_reg_synch[8]),
        .O(dec_tready[23]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_9__4 
       (.I0(ctrl_reg_synch[23]),
        .I1(ctrl_reg_synch[20]),
        .O(\gen_AB_reg_slice.state[1]_i_9__4_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__2_n_0 ),
        .Q(mux_tvalid),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__2_n_0 ),
        .Q(\s_axis_tready[3] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata[0]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_22_out[0]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[0]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[0]),
        .O(\m_axis_tdata[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(\m_axis_tdata[100]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[100]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[100]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_22_out[4]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[4]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[4]),
        .O(\m_axis_tdata[100]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(\m_axis_tdata[101]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[101]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[101]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_22_out[5]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[5]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[5]),
        .O(\m_axis_tdata[101]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(\m_axis_tdata[102]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[102]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[102]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_22_out[6]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[6]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[6]),
        .O(\m_axis_tdata[102]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(\m_axis_tdata[103]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[103]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[103]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_22_out[7]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[7]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[7]),
        .O(\m_axis_tdata[103]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(\m_axis_tdata[104]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[104]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[104]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_22_out[8]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[8]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[8]),
        .O(\m_axis_tdata[104]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(\m_axis_tdata[105]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[105]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[105]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_22_out[9]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[9]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[9]),
        .O(\m_axis_tdata[105]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(\m_axis_tdata[106]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[106]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[106]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_22_out[10]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[10]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[10]),
        .O(\m_axis_tdata[106]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(\m_axis_tdata[107]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[107]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[107]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_22_out[11]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[11]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[11]),
        .O(\m_axis_tdata[107]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(\m_axis_tdata[108]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[108]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[108]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_22_out[12]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[12]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[12]),
        .O(\m_axis_tdata[108]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(\m_axis_tdata[109]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[109]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[109]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_22_out[13]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[13]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[13]),
        .O(\m_axis_tdata[109]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\m_axis_tdata[10]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[10]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_22_out[10]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[10]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[10]),
        .O(\m_axis_tdata[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(\m_axis_tdata[110]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[110]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[110]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_22_out[14]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[14]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[14]),
        .O(\m_axis_tdata[110]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(\m_axis_tdata[111]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[111]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[111]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_22_out[15]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[15]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[15]),
        .O(\m_axis_tdata[111]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(\m_axis_tdata[112]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[112]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[112]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_22_out[16]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[16]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[16]),
        .O(\m_axis_tdata[112]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(\m_axis_tdata[113]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[113]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[113]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_22_out[17]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[17]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[17]),
        .O(\m_axis_tdata[113]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(\m_axis_tdata[114]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[114]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[114]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_22_out[18]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[18]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[18]),
        .O(\m_axis_tdata[114]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(\m_axis_tdata[115]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[115]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[115]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_22_out[19]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[19]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[19]),
        .O(\m_axis_tdata[115]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(\m_axis_tdata[116]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[116]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[116]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_22_out[20]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[20]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[20]),
        .O(\m_axis_tdata[116]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(\m_axis_tdata[117]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[117]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[117]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_22_out[21]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[21]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[21]),
        .O(\m_axis_tdata[117]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(\m_axis_tdata[118]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[118]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[118]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_22_out[22]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[22]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[22]),
        .O(\m_axis_tdata[118]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(\m_axis_tdata[119]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[119]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[119]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_22_out[23]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[23]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[23]),
        .O(\m_axis_tdata[119]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\m_axis_tdata[11]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[11]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_22_out[11]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[11]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[11]),
        .O(\m_axis_tdata[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(\m_axis_tdata[120]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[120]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[120]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_22_out[24]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[24]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[24]),
        .O(\m_axis_tdata[120]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(\m_axis_tdata[121]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[121]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[121]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_22_out[25]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[25]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[25]),
        .O(\m_axis_tdata[121]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(\m_axis_tdata[122]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[122]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[122]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_22_out[26]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[26]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[26]),
        .O(\m_axis_tdata[122]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(\m_axis_tdata[123]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[123]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[123]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_22_out[27]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[27]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[27]),
        .O(\m_axis_tdata[123]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(\m_axis_tdata[124]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[124]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[124]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_22_out[28]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[28]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[28]),
        .O(\m_axis_tdata[124]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(\m_axis_tdata[125]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[125]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[125]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_22_out[29]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[29]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[29]),
        .O(\m_axis_tdata[125]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(\m_axis_tdata[126]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[126]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[126]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_22_out[30]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[30]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[30]),
        .O(\m_axis_tdata[126]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(\m_axis_tdata[127]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[127]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[127]_INST_0_i_1 
       (.I0(p_17_out[31]),
        .I1(p_22_out[31]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[31]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[31]),
        .O(\m_axis_tdata[127]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(\m_axis_tdata[128]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[128]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[128]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_22_out[0]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[0]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[0]),
        .O(\m_axis_tdata[128]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[129]_INST_0 
       (.I0(\m_axis_tdata[129]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[129]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[129]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_22_out[1]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[1]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[1]),
        .O(\m_axis_tdata[129]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\m_axis_tdata[12]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[12]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_22_out[12]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[12]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[12]),
        .O(\m_axis_tdata[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[130]_INST_0 
       (.I0(\m_axis_tdata[130]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[130]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[130]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_22_out[2]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[2]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[2]),
        .O(\m_axis_tdata[130]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[131]_INST_0 
       (.I0(\m_axis_tdata[131]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[131]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[131]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_22_out[3]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[3]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[3]),
        .O(\m_axis_tdata[131]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[132]_INST_0 
       (.I0(\m_axis_tdata[132]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[132]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[132]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_22_out[4]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[4]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[4]),
        .O(\m_axis_tdata[132]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[133]_INST_0 
       (.I0(\m_axis_tdata[133]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[133]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[133]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_22_out[5]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[5]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[5]),
        .O(\m_axis_tdata[133]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[134]_INST_0 
       (.I0(\m_axis_tdata[134]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[134]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[134]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_22_out[6]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[6]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[6]),
        .O(\m_axis_tdata[134]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[135]_INST_0 
       (.I0(\m_axis_tdata[135]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[135]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[135]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_22_out[7]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[7]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[7]),
        .O(\m_axis_tdata[135]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[136]_INST_0 
       (.I0(\m_axis_tdata[136]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[136]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[136]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_22_out[8]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[8]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[8]),
        .O(\m_axis_tdata[136]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[137]_INST_0 
       (.I0(\m_axis_tdata[137]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[137]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[137]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_22_out[9]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[9]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[9]),
        .O(\m_axis_tdata[137]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[138]_INST_0 
       (.I0(\m_axis_tdata[138]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[138]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[138]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_22_out[10]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[10]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[10]),
        .O(\m_axis_tdata[138]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[139]_INST_0 
       (.I0(\m_axis_tdata[139]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[139]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[139]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_22_out[11]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[11]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[11]),
        .O(\m_axis_tdata[139]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\m_axis_tdata[13]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[13]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_22_out[13]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[13]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[13]),
        .O(\m_axis_tdata[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[140]_INST_0 
       (.I0(\m_axis_tdata[140]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[140]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[140]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_22_out[12]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[12]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[12]),
        .O(\m_axis_tdata[140]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[141]_INST_0 
       (.I0(\m_axis_tdata[141]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[141]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[141]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_22_out[13]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[13]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[13]),
        .O(\m_axis_tdata[141]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[142]_INST_0 
       (.I0(\m_axis_tdata[142]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[142]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[142]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_22_out[14]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[14]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[14]),
        .O(\m_axis_tdata[142]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[143]_INST_0 
       (.I0(\m_axis_tdata[143]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[143]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[143]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_22_out[15]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[15]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[15]),
        .O(\m_axis_tdata[143]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(\m_axis_tdata[144]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[144]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[144]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_22_out[16]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[16]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[16]),
        .O(\m_axis_tdata[144]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[145]_INST_0 
       (.I0(\m_axis_tdata[145]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[145]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[145]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_22_out[17]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[17]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[17]),
        .O(\m_axis_tdata[145]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[146]_INST_0 
       (.I0(\m_axis_tdata[146]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[146]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[146]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_22_out[18]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[18]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[18]),
        .O(\m_axis_tdata[146]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[147]_INST_0 
       (.I0(\m_axis_tdata[147]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[147]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[147]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_22_out[19]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[19]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[19]),
        .O(\m_axis_tdata[147]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[148]_INST_0 
       (.I0(\m_axis_tdata[148]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[148]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[148]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_22_out[20]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[20]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[20]),
        .O(\m_axis_tdata[148]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[149]_INST_0 
       (.I0(\m_axis_tdata[149]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[149]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[149]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_22_out[21]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[21]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[21]),
        .O(\m_axis_tdata[149]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\m_axis_tdata[14]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[14]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_22_out[14]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[14]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[14]),
        .O(\m_axis_tdata[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[150]_INST_0 
       (.I0(\m_axis_tdata[150]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[150]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[150]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_22_out[22]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[22]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[22]),
        .O(\m_axis_tdata[150]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[151]_INST_0 
       (.I0(\m_axis_tdata[151]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[151]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[151]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_22_out[23]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[23]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[23]),
        .O(\m_axis_tdata[151]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[152]_INST_0 
       (.I0(\m_axis_tdata[152]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[152]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[152]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_22_out[24]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[24]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[24]),
        .O(\m_axis_tdata[152]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[153]_INST_0 
       (.I0(\m_axis_tdata[153]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[153]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[153]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_22_out[25]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[25]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[25]),
        .O(\m_axis_tdata[153]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[154]_INST_0 
       (.I0(\m_axis_tdata[154]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[154]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[154]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_22_out[26]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[26]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[26]),
        .O(\m_axis_tdata[154]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[155]_INST_0 
       (.I0(\m_axis_tdata[155]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[155]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[155]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_22_out[27]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[27]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[27]),
        .O(\m_axis_tdata[155]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[156]_INST_0 
       (.I0(\m_axis_tdata[156]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[156]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[156]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_22_out[28]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[28]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[28]),
        .O(\m_axis_tdata[156]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[157]_INST_0 
       (.I0(\m_axis_tdata[157]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[157]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[157]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_22_out[29]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[29]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[29]),
        .O(\m_axis_tdata[157]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[158]_INST_0 
       (.I0(\m_axis_tdata[158]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[158]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[158]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_22_out[30]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[30]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[30]),
        .O(\m_axis_tdata[158]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[159]_INST_0 
       (.I0(\m_axis_tdata[159]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tdata[159]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[159]_INST_0_i_1 
       (.I0(p_17_out[31]),
        .I1(p_22_out[31]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[31]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[31]),
        .O(\m_axis_tdata[159]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\m_axis_tdata[15]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[15]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_22_out[15]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[15]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[15]),
        .O(\m_axis_tdata[15]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[160]_INST_0 
       (.I0(\m_axis_tdata[160]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[160]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[160]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_22_out[0]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[0]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[0]),
        .O(\m_axis_tdata[160]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[161]_INST_0 
       (.I0(\m_axis_tdata[161]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[161]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[161]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_22_out[1]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[1]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[1]),
        .O(\m_axis_tdata[161]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[162]_INST_0 
       (.I0(\m_axis_tdata[162]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[162]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[162]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_22_out[2]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[2]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[2]),
        .O(\m_axis_tdata[162]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[163]_INST_0 
       (.I0(\m_axis_tdata[163]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[163]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[163]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_22_out[3]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[3]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[3]),
        .O(\m_axis_tdata[163]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[164]_INST_0 
       (.I0(\m_axis_tdata[164]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[164]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[164]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_22_out[4]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[4]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[4]),
        .O(\m_axis_tdata[164]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[165]_INST_0 
       (.I0(\m_axis_tdata[165]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[165]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[165]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_22_out[5]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[5]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[5]),
        .O(\m_axis_tdata[165]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[166]_INST_0 
       (.I0(\m_axis_tdata[166]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[166]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[166]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_22_out[6]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[6]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[6]),
        .O(\m_axis_tdata[166]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[167]_INST_0 
       (.I0(\m_axis_tdata[167]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[167]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[167]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_22_out[7]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[7]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[7]),
        .O(\m_axis_tdata[167]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[168]_INST_0 
       (.I0(\m_axis_tdata[168]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[168]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[168]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_22_out[8]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[8]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[8]),
        .O(\m_axis_tdata[168]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[169]_INST_0 
       (.I0(\m_axis_tdata[169]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[169]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[169]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_22_out[9]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[9]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[9]),
        .O(\m_axis_tdata[169]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata[16]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[16]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_22_out[16]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[16]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[16]),
        .O(\m_axis_tdata[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[170]_INST_0 
       (.I0(\m_axis_tdata[170]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[170]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[170]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_22_out[10]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[10]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[10]),
        .O(\m_axis_tdata[170]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[171]_INST_0 
       (.I0(\m_axis_tdata[171]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[171]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[171]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_22_out[11]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[11]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[11]),
        .O(\m_axis_tdata[171]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[172]_INST_0 
       (.I0(\m_axis_tdata[172]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[172]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[172]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_22_out[12]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[12]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[12]),
        .O(\m_axis_tdata[172]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[173]_INST_0 
       (.I0(\m_axis_tdata[173]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[173]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[173]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_22_out[13]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[13]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[13]),
        .O(\m_axis_tdata[173]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[174]_INST_0 
       (.I0(\m_axis_tdata[174]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[174]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[174]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_22_out[14]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[14]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[14]),
        .O(\m_axis_tdata[174]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[175]_INST_0 
       (.I0(\m_axis_tdata[175]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[175]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[175]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_22_out[15]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[15]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[15]),
        .O(\m_axis_tdata[175]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[176]_INST_0 
       (.I0(\m_axis_tdata[176]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[176]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[176]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_22_out[16]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[16]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[16]),
        .O(\m_axis_tdata[176]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[177]_INST_0 
       (.I0(\m_axis_tdata[177]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[177]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[177]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_22_out[17]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[17]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[17]),
        .O(\m_axis_tdata[177]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[178]_INST_0 
       (.I0(\m_axis_tdata[178]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[178]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[178]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_22_out[18]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[18]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[18]),
        .O(\m_axis_tdata[178]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[179]_INST_0 
       (.I0(\m_axis_tdata[179]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[179]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[179]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_22_out[19]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[19]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[19]),
        .O(\m_axis_tdata[179]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\m_axis_tdata[17]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[17]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_22_out[17]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[17]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[17]),
        .O(\m_axis_tdata[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[180]_INST_0 
       (.I0(\m_axis_tdata[180]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[180]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[180]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_22_out[20]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[20]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[20]),
        .O(\m_axis_tdata[180]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[181]_INST_0 
       (.I0(\m_axis_tdata[181]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[181]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[181]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_22_out[21]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[21]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[21]),
        .O(\m_axis_tdata[181]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[182]_INST_0 
       (.I0(\m_axis_tdata[182]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[182]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[182]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_22_out[22]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[22]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[22]),
        .O(\m_axis_tdata[182]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[183]_INST_0 
       (.I0(\m_axis_tdata[183]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[183]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[183]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_22_out[23]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[23]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[23]),
        .O(\m_axis_tdata[183]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[184]_INST_0 
       (.I0(\m_axis_tdata[184]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[184]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[184]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_22_out[24]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[24]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[24]),
        .O(\m_axis_tdata[184]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[185]_INST_0 
       (.I0(\m_axis_tdata[185]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[185]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[185]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_22_out[25]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[25]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[25]),
        .O(\m_axis_tdata[185]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[186]_INST_0 
       (.I0(\m_axis_tdata[186]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[186]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[186]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_22_out[26]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[26]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[26]),
        .O(\m_axis_tdata[186]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[187]_INST_0 
       (.I0(\m_axis_tdata[187]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[187]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[187]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_22_out[27]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[27]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[27]),
        .O(\m_axis_tdata[187]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[188]_INST_0 
       (.I0(\m_axis_tdata[188]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[188]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[188]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_22_out[28]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[28]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[28]),
        .O(\m_axis_tdata[188]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[189]_INST_0 
       (.I0(\m_axis_tdata[189]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[189]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[189]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_22_out[29]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[29]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[29]),
        .O(\m_axis_tdata[189]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\m_axis_tdata[18]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[18]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_22_out[18]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[18]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[18]),
        .O(\m_axis_tdata[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[190]_INST_0 
       (.I0(\m_axis_tdata[190]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[190]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[190]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_22_out[30]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[30]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[30]),
        .O(\m_axis_tdata[190]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[191]_INST_0 
       (.I0(\m_axis_tdata[191]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tdata[191]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[191]_INST_0_i_1 
       (.I0(p_17_out[31]),
        .I1(p_22_out[31]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[31]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[31]),
        .O(\m_axis_tdata[191]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[192]_INST_0 
       (.I0(\m_axis_tdata[192]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[192]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[192]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_22_out[0]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[0]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[0]),
        .O(\m_axis_tdata[192]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_3 
       (.I0(payload_b[0]),
        .I1(payload_a[0]),
        .I2(sel),
        .O(p_17_out[0]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[193]_INST_0 
       (.I0(\m_axis_tdata[193]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[193]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[193]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_22_out[1]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[1]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[1]),
        .O(\m_axis_tdata[193]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_3 
       (.I0(payload_b[1]),
        .I1(payload_a[1]),
        .I2(sel),
        .O(p_17_out[1]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[194]_INST_0 
       (.I0(\m_axis_tdata[194]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[194]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[194]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_22_out[2]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[2]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[2]),
        .O(\m_axis_tdata[194]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_3 
       (.I0(payload_b[2]),
        .I1(payload_a[2]),
        .I2(sel),
        .O(p_17_out[2]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[195]_INST_0 
       (.I0(\m_axis_tdata[195]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[195]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[195]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_22_out[3]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[3]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[3]),
        .O(\m_axis_tdata[195]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_3 
       (.I0(payload_b[3]),
        .I1(payload_a[3]),
        .I2(sel),
        .O(p_17_out[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[196]_INST_0 
       (.I0(\m_axis_tdata[196]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[196]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[196]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_22_out[4]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[4]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[4]),
        .O(\m_axis_tdata[196]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_3 
       (.I0(payload_b[4]),
        .I1(payload_a[4]),
        .I2(sel),
        .O(p_17_out[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[197]_INST_0 
       (.I0(\m_axis_tdata[197]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[197]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[197]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_22_out[5]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[5]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[5]),
        .O(\m_axis_tdata[197]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_3 
       (.I0(payload_b[5]),
        .I1(payload_a[5]),
        .I2(sel),
        .O(p_17_out[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[198]_INST_0 
       (.I0(\m_axis_tdata[198]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[198]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[198]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_22_out[6]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[6]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[6]),
        .O(\m_axis_tdata[198]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_3 
       (.I0(payload_b[6]),
        .I1(payload_a[6]),
        .I2(sel),
        .O(p_17_out[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[199]_INST_0 
       (.I0(\m_axis_tdata[199]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[199]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[199]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_22_out[7]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[7]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[7]),
        .O(\m_axis_tdata[199]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_3 
       (.I0(payload_b[7]),
        .I1(payload_a[7]),
        .I2(sel),
        .O(p_17_out[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\m_axis_tdata[19]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[19]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_22_out[19]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[19]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[19]),
        .O(\m_axis_tdata[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\m_axis_tdata[1]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_22_out[1]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[1]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[1]),
        .O(\m_axis_tdata[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[200]_INST_0 
       (.I0(\m_axis_tdata[200]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[200]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[200]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_22_out[8]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[8]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[8]),
        .O(\m_axis_tdata[200]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_3 
       (.I0(payload_b[8]),
        .I1(payload_a[8]),
        .I2(sel),
        .O(p_17_out[8]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[201]_INST_0 
       (.I0(\m_axis_tdata[201]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[201]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[201]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_22_out[9]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[9]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[9]),
        .O(\m_axis_tdata[201]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_3 
       (.I0(payload_b[9]),
        .I1(payload_a[9]),
        .I2(sel),
        .O(p_17_out[9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[202]_INST_0 
       (.I0(\m_axis_tdata[202]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[202]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[202]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_22_out[10]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[10]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[10]),
        .O(\m_axis_tdata[202]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_3 
       (.I0(payload_b[10]),
        .I1(payload_a[10]),
        .I2(sel),
        .O(p_17_out[10]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[203]_INST_0 
       (.I0(\m_axis_tdata[203]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[203]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[203]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_22_out[11]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[11]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[11]),
        .O(\m_axis_tdata[203]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_3 
       (.I0(payload_b[11]),
        .I1(payload_a[11]),
        .I2(sel),
        .O(p_17_out[11]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[204]_INST_0 
       (.I0(\m_axis_tdata[204]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[204]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[204]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_22_out[12]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[12]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[12]),
        .O(\m_axis_tdata[204]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_3 
       (.I0(payload_b[12]),
        .I1(payload_a[12]),
        .I2(sel),
        .O(p_17_out[12]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[205]_INST_0 
       (.I0(\m_axis_tdata[205]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[205]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[205]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_22_out[13]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[13]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[13]),
        .O(\m_axis_tdata[205]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_3 
       (.I0(payload_b[13]),
        .I1(payload_a[13]),
        .I2(sel),
        .O(p_17_out[13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[206]_INST_0 
       (.I0(\m_axis_tdata[206]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[206]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[206]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_22_out[14]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[14]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[14]),
        .O(\m_axis_tdata[206]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_3 
       (.I0(payload_b[14]),
        .I1(payload_a[14]),
        .I2(sel),
        .O(p_17_out[14]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[207]_INST_0 
       (.I0(\m_axis_tdata[207]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[207]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[207]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_22_out[15]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[15]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[15]),
        .O(\m_axis_tdata[207]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_3 
       (.I0(payload_b[15]),
        .I1(payload_a[15]),
        .I2(sel),
        .O(p_17_out[15]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[208]_INST_0 
       (.I0(\m_axis_tdata[208]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[208]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[208]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_22_out[16]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[16]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[16]),
        .O(\m_axis_tdata[208]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_3 
       (.I0(payload_b[16]),
        .I1(payload_a[16]),
        .I2(sel),
        .O(p_17_out[16]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[209]_INST_0 
       (.I0(\m_axis_tdata[209]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[209]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[209]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_22_out[17]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[17]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[17]),
        .O(\m_axis_tdata[209]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_3 
       (.I0(payload_b[17]),
        .I1(payload_a[17]),
        .I2(sel),
        .O(p_17_out[17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\m_axis_tdata[20]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[20]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_22_out[20]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[20]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[20]),
        .O(\m_axis_tdata[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[210]_INST_0 
       (.I0(\m_axis_tdata[210]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[210]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[210]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_22_out[18]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[18]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[18]),
        .O(\m_axis_tdata[210]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_3 
       (.I0(payload_b[18]),
        .I1(payload_a[18]),
        .I2(sel),
        .O(p_17_out[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[211]_INST_0 
       (.I0(\m_axis_tdata[211]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[211]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[211]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_22_out[19]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[19]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[19]),
        .O(\m_axis_tdata[211]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_3 
       (.I0(payload_b[19]),
        .I1(payload_a[19]),
        .I2(sel),
        .O(p_17_out[19]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[212]_INST_0 
       (.I0(\m_axis_tdata[212]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[212]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[212]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_22_out[20]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[20]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[20]),
        .O(\m_axis_tdata[212]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_3 
       (.I0(payload_b[20]),
        .I1(payload_a[20]),
        .I2(sel),
        .O(p_17_out[20]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[213]_INST_0 
       (.I0(\m_axis_tdata[213]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[213]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[213]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_22_out[21]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[21]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[21]),
        .O(\m_axis_tdata[213]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_3 
       (.I0(payload_b[21]),
        .I1(payload_a[21]),
        .I2(sel),
        .O(p_17_out[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[214]_INST_0 
       (.I0(\m_axis_tdata[214]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[214]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[214]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_22_out[22]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[22]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[22]),
        .O(\m_axis_tdata[214]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_3 
       (.I0(payload_b[22]),
        .I1(payload_a[22]),
        .I2(sel),
        .O(p_17_out[22]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[215]_INST_0 
       (.I0(\m_axis_tdata[215]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[215]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[215]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_22_out[23]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[23]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[23]),
        .O(\m_axis_tdata[215]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_3 
       (.I0(payload_b[23]),
        .I1(payload_a[23]),
        .I2(sel),
        .O(p_17_out[23]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[216]_INST_0 
       (.I0(\m_axis_tdata[216]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[216]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[216]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_22_out[24]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[24]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[24]),
        .O(\m_axis_tdata[216]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_3 
       (.I0(payload_b[24]),
        .I1(payload_a[24]),
        .I2(sel),
        .O(p_17_out[24]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[217]_INST_0 
       (.I0(\m_axis_tdata[217]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[217]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[217]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_22_out[25]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[25]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[25]),
        .O(\m_axis_tdata[217]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_3 
       (.I0(payload_b[25]),
        .I1(payload_a[25]),
        .I2(sel),
        .O(p_17_out[25]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[218]_INST_0 
       (.I0(\m_axis_tdata[218]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[218]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[218]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_22_out[26]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[26]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[26]),
        .O(\m_axis_tdata[218]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_3 
       (.I0(payload_b[26]),
        .I1(payload_a[26]),
        .I2(sel),
        .O(p_17_out[26]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[219]_INST_0 
       (.I0(\m_axis_tdata[219]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[219]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[219]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_22_out[27]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[27]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[27]),
        .O(\m_axis_tdata[219]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_3 
       (.I0(payload_b[27]),
        .I1(payload_a[27]),
        .I2(sel),
        .O(p_17_out[27]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\m_axis_tdata[21]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[21]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_22_out[21]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[21]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[21]),
        .O(\m_axis_tdata[21]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[220]_INST_0 
       (.I0(\m_axis_tdata[220]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[220]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[220]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_22_out[28]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[28]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[28]),
        .O(\m_axis_tdata[220]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_3 
       (.I0(payload_b[28]),
        .I1(payload_a[28]),
        .I2(sel),
        .O(p_17_out[28]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[221]_INST_0 
       (.I0(\m_axis_tdata[221]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[221]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[221]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_22_out[29]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[29]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[29]),
        .O(\m_axis_tdata[221]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_3 
       (.I0(payload_b[29]),
        .I1(payload_a[29]),
        .I2(sel),
        .O(p_17_out[29]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[222]_INST_0 
       (.I0(\m_axis_tdata[222]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[222]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[222]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_22_out[30]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[30]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[30]),
        .O(\m_axis_tdata[222]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_3 
       (.I0(payload_b[30]),
        .I1(payload_a[30]),
        .I2(sel),
        .O(p_17_out[30]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[223]_INST_0 
       (.I0(\m_axis_tdata[223]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tdata[223]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[223]_INST_0_i_1 
       (.I0(p_17_out[31]),
        .I1(p_22_out[31]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[31]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[31]),
        .O(\m_axis_tdata[223]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_3 
       (.I0(payload_b[31]),
        .I1(payload_a[31]),
        .I2(sel),
        .O(p_17_out[31]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\m_axis_tdata[22]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[22]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_22_out[22]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[22]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[22]),
        .O(\m_axis_tdata[22]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\m_axis_tdata[23]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[23]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_22_out[23]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[23]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[23]),
        .O(\m_axis_tdata[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\m_axis_tdata[24]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[24]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_22_out[24]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[24]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[24]),
        .O(\m_axis_tdata[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\m_axis_tdata[25]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[25]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_22_out[25]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[25]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[25]),
        .O(\m_axis_tdata[25]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\m_axis_tdata[26]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[26]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_22_out[26]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[26]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[26]),
        .O(\m_axis_tdata[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\m_axis_tdata[27]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[27]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_22_out[27]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[27]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[27]),
        .O(\m_axis_tdata[27]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\m_axis_tdata[28]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[28]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_22_out[28]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[28]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[28]),
        .O(\m_axis_tdata[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\m_axis_tdata[29]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[29]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_22_out[29]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[29]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[29]),
        .O(\m_axis_tdata[29]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\m_axis_tdata[2]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_22_out[2]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[2]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[2]),
        .O(\m_axis_tdata[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\m_axis_tdata[30]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[30]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_22_out[30]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[30]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[30]),
        .O(\m_axis_tdata[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\m_axis_tdata[31]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[31]_INST_0_i_1 
       (.I0(p_17_out[31]),
        .I1(p_22_out[31]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[31]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[31]),
        .O(\m_axis_tdata[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\m_axis_tdata[32]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[32]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[32]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_22_out[0]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[0]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[0]),
        .O(\m_axis_tdata[32]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(\m_axis_tdata[33]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[33]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_22_out[1]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[1]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[1]),
        .O(\m_axis_tdata[33]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(\m_axis_tdata[34]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[34]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[34]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_22_out[2]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[2]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[2]),
        .O(\m_axis_tdata[34]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(\m_axis_tdata[35]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[35]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[35]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_22_out[3]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[3]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[3]),
        .O(\m_axis_tdata[35]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(\m_axis_tdata[36]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[36]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[36]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_22_out[4]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[4]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[4]),
        .O(\m_axis_tdata[36]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(\m_axis_tdata[37]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[37]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[37]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_22_out[5]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[5]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[5]),
        .O(\m_axis_tdata[37]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(\m_axis_tdata[38]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[38]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[38]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_22_out[6]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[6]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[6]),
        .O(\m_axis_tdata[38]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(\m_axis_tdata[39]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[39]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[39]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_22_out[7]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[7]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[7]),
        .O(\m_axis_tdata[39]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\m_axis_tdata[3]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_22_out[3]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[3]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[3]),
        .O(\m_axis_tdata[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(\m_axis_tdata[40]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[40]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[40]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_22_out[8]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[8]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[8]),
        .O(\m_axis_tdata[40]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(\m_axis_tdata[41]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[41]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[41]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_22_out[9]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[9]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[9]),
        .O(\m_axis_tdata[41]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(\m_axis_tdata[42]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[42]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[42]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_22_out[10]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[10]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[10]),
        .O(\m_axis_tdata[42]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(\m_axis_tdata[43]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[43]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[43]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_22_out[11]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[11]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[11]),
        .O(\m_axis_tdata[43]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(\m_axis_tdata[44]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[44]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[44]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_22_out[12]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[12]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[12]),
        .O(\m_axis_tdata[44]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(\m_axis_tdata[45]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[45]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[45]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_22_out[13]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[13]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[13]),
        .O(\m_axis_tdata[45]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(\m_axis_tdata[46]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[46]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[46]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_22_out[14]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[14]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[14]),
        .O(\m_axis_tdata[46]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(\m_axis_tdata[47]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[47]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[47]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_22_out[15]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[15]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[15]),
        .O(\m_axis_tdata[47]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\m_axis_tdata[48]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[48]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[48]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_22_out[16]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[16]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[16]),
        .O(\m_axis_tdata[48]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(\m_axis_tdata[49]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[49]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[49]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_22_out[17]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[17]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[17]),
        .O(\m_axis_tdata[49]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata[4]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_22_out[4]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[4]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[4]),
        .O(\m_axis_tdata[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(\m_axis_tdata[50]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[50]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[50]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_22_out[18]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[18]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[18]),
        .O(\m_axis_tdata[50]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(\m_axis_tdata[51]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[51]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[51]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_22_out[19]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[19]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[19]),
        .O(\m_axis_tdata[51]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(\m_axis_tdata[52]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[52]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[52]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_22_out[20]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[20]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[20]),
        .O(\m_axis_tdata[52]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(\m_axis_tdata[53]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[53]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[53]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_22_out[21]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[21]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[21]),
        .O(\m_axis_tdata[53]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(\m_axis_tdata[54]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[54]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[54]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_22_out[22]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[22]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[22]),
        .O(\m_axis_tdata[54]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(\m_axis_tdata[55]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[55]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[55]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_22_out[23]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[23]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[23]),
        .O(\m_axis_tdata[55]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(\m_axis_tdata[56]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[56]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[56]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_22_out[24]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[24]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[24]),
        .O(\m_axis_tdata[56]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(\m_axis_tdata[57]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[57]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[57]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_22_out[25]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[25]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[25]),
        .O(\m_axis_tdata[57]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(\m_axis_tdata[58]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[58]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[58]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_22_out[26]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[26]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[26]),
        .O(\m_axis_tdata[58]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(\m_axis_tdata[59]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[59]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[59]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_22_out[27]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[27]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[27]),
        .O(\m_axis_tdata[59]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\m_axis_tdata[5]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_22_out[5]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[5]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[5]),
        .O(\m_axis_tdata[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(\m_axis_tdata[60]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[60]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[60]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_22_out[28]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[28]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[28]),
        .O(\m_axis_tdata[60]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(\m_axis_tdata[61]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[61]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[61]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_22_out[29]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[29]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[29]),
        .O(\m_axis_tdata[61]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(\m_axis_tdata[62]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[62]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[62]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_22_out[30]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[30]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[30]),
        .O(\m_axis_tdata[62]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(\m_axis_tdata[63]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tdata[63]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[63]_INST_0_i_1 
       (.I0(p_17_out[31]),
        .I1(p_22_out[31]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[31]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[31]),
        .O(\m_axis_tdata[63]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(\m_axis_tdata[64]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[64]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[64]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_22_out[0]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[0]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[0]),
        .O(\m_axis_tdata[64]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(\m_axis_tdata[65]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[65]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[65]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_22_out[1]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[1]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[1]),
        .O(\m_axis_tdata[65]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(\m_axis_tdata[66]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[66]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[66]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_22_out[2]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[2]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[2]),
        .O(\m_axis_tdata[66]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(\m_axis_tdata[67]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[67]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[67]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_22_out[3]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[3]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[3]),
        .O(\m_axis_tdata[67]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(\m_axis_tdata[68]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[68]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[68]_INST_0_i_1 
       (.I0(p_17_out[4]),
        .I1(p_22_out[4]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[4]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[4]),
        .O(\m_axis_tdata[68]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(\m_axis_tdata[69]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[69]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[69]_INST_0_i_1 
       (.I0(p_17_out[5]),
        .I1(p_22_out[5]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[5]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[5]),
        .O(\m_axis_tdata[69]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata[6]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_22_out[6]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[6]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[6]),
        .O(\m_axis_tdata[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(\m_axis_tdata[70]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[70]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[70]_INST_0_i_1 
       (.I0(p_17_out[6]),
        .I1(p_22_out[6]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[6]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[6]),
        .O(\m_axis_tdata[70]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(\m_axis_tdata[71]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[71]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[71]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_22_out[7]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[7]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[7]),
        .O(\m_axis_tdata[71]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(\m_axis_tdata[72]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[72]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[72]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_22_out[8]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[8]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[8]),
        .O(\m_axis_tdata[72]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(\m_axis_tdata[73]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[73]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[73]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_22_out[9]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[9]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[9]),
        .O(\m_axis_tdata[73]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(\m_axis_tdata[74]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[74]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[74]_INST_0_i_1 
       (.I0(p_17_out[10]),
        .I1(p_22_out[10]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[10]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[10]),
        .O(\m_axis_tdata[74]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(\m_axis_tdata[75]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[75]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[75]_INST_0_i_1 
       (.I0(p_17_out[11]),
        .I1(p_22_out[11]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[11]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[11]),
        .O(\m_axis_tdata[75]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(\m_axis_tdata[76]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[76]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[76]_INST_0_i_1 
       (.I0(p_17_out[12]),
        .I1(p_22_out[12]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[12]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[12]),
        .O(\m_axis_tdata[76]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(\m_axis_tdata[77]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[77]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[77]_INST_0_i_1 
       (.I0(p_17_out[13]),
        .I1(p_22_out[13]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[13]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[13]),
        .O(\m_axis_tdata[77]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(\m_axis_tdata[78]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[78]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[78]_INST_0_i_1 
       (.I0(p_17_out[14]),
        .I1(p_22_out[14]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[14]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[14]),
        .O(\m_axis_tdata[78]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(\m_axis_tdata[79]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[79]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[79]_INST_0_i_1 
       (.I0(p_17_out[15]),
        .I1(p_22_out[15]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[15]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[15]),
        .O(\m_axis_tdata[79]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\m_axis_tdata[7]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0_i_1 
       (.I0(p_17_out[7]),
        .I1(p_22_out[7]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[7]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[7]),
        .O(\m_axis_tdata[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(\m_axis_tdata[80]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[80]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[80]_INST_0_i_1 
       (.I0(p_17_out[16]),
        .I1(p_22_out[16]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[16]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[16]),
        .O(\m_axis_tdata[80]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(\m_axis_tdata[81]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[81]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[81]_INST_0_i_1 
       (.I0(p_17_out[17]),
        .I1(p_22_out[17]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[17]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[17]),
        .O(\m_axis_tdata[81]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(\m_axis_tdata[82]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[82]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[82]_INST_0_i_1 
       (.I0(p_17_out[18]),
        .I1(p_22_out[18]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[18]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[18]),
        .O(\m_axis_tdata[82]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(\m_axis_tdata[83]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[83]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[83]_INST_0_i_1 
       (.I0(p_17_out[19]),
        .I1(p_22_out[19]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[19]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[19]),
        .O(\m_axis_tdata[83]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(\m_axis_tdata[84]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[84]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[84]_INST_0_i_1 
       (.I0(p_17_out[20]),
        .I1(p_22_out[20]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[20]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[20]),
        .O(\m_axis_tdata[84]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(\m_axis_tdata[85]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[85]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[85]_INST_0_i_1 
       (.I0(p_17_out[21]),
        .I1(p_22_out[21]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[21]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[21]),
        .O(\m_axis_tdata[85]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(\m_axis_tdata[86]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[86]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[86]_INST_0_i_1 
       (.I0(p_17_out[22]),
        .I1(p_22_out[22]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[22]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[22]),
        .O(\m_axis_tdata[86]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(\m_axis_tdata[87]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[87]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[87]_INST_0_i_1 
       (.I0(p_17_out[23]),
        .I1(p_22_out[23]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[23]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[23]),
        .O(\m_axis_tdata[87]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(\m_axis_tdata[88]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[88]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[88]_INST_0_i_1 
       (.I0(p_17_out[24]),
        .I1(p_22_out[24]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[24]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[24]),
        .O(\m_axis_tdata[88]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(\m_axis_tdata[89]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[89]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[89]_INST_0_i_1 
       (.I0(p_17_out[25]),
        .I1(p_22_out[25]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[25]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[25]),
        .O(\m_axis_tdata[89]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\m_axis_tdata[8]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[8]_INST_0_i_1 
       (.I0(p_17_out[8]),
        .I1(p_22_out[8]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[8]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[8]),
        .O(\m_axis_tdata[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(\m_axis_tdata[90]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[90]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[90]_INST_0_i_1 
       (.I0(p_17_out[26]),
        .I1(p_22_out[26]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[26]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[26]),
        .O(\m_axis_tdata[90]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(\m_axis_tdata[91]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[91]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[91]_INST_0_i_1 
       (.I0(p_17_out[27]),
        .I1(p_22_out[27]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[27]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[27]),
        .O(\m_axis_tdata[91]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(\m_axis_tdata[92]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[92]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[92]_INST_0_i_1 
       (.I0(p_17_out[28]),
        .I1(p_22_out[28]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[28]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[28]),
        .O(\m_axis_tdata[92]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(\m_axis_tdata[93]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[93]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[93]_INST_0_i_1 
       (.I0(p_17_out[29]),
        .I1(p_22_out[29]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[29]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[29]),
        .O(\m_axis_tdata[93]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(\m_axis_tdata[94]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[94]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[94]_INST_0_i_1 
       (.I0(p_17_out[30]),
        .I1(p_22_out[30]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[30]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[30]),
        .O(\m_axis_tdata[94]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(\m_axis_tdata[95]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tdata[95]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[95]_INST_0_i_1 
       (.I0(p_17_out[31]),
        .I1(p_22_out[31]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[31]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[31]),
        .O(\m_axis_tdata[95]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(\m_axis_tdata[96]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[96]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[96]_INST_0_i_1 
       (.I0(p_17_out[0]),
        .I1(p_22_out[0]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[0]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[0]),
        .O(\m_axis_tdata[96]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(\m_axis_tdata[97]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[97]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[97]_INST_0_i_1 
       (.I0(p_17_out[1]),
        .I1(p_22_out[1]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[1]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[1]),
        .O(\m_axis_tdata[97]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(\m_axis_tdata[98]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[98]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[98]_INST_0_i_1 
       (.I0(p_17_out[2]),
        .I1(p_22_out[2]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[2]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[2]),
        .O(\m_axis_tdata[98]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(\m_axis_tdata[99]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tdata[99]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[99]_INST_0_i_1 
       (.I0(p_17_out[3]),
        .I1(p_22_out[3]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[3]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[3]),
        .O(\m_axis_tdata[99]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\m_axis_tdata[9]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[9]_INST_0_i_1 
       (.I0(p_17_out[9]),
        .I1(p_22_out[9]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[9]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[9]),
        .O(\m_axis_tdata[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[0]_INST_0 
       (.I0(\m_axis_tkeep[0]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tkeep[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[0]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_22_out[32]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[32]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[32]),
        .O(\m_axis_tkeep[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[10]_INST_0 
       (.I0(\m_axis_tkeep[10]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tkeep[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[10]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_22_out[34]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[34]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[34]),
        .O(\m_axis_tkeep[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[11]_INST_0 
       (.I0(\m_axis_tkeep[11]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tkeep[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[11]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_22_out[35]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[35]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[35]),
        .O(\m_axis_tkeep[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[12]_INST_0 
       (.I0(\m_axis_tkeep[12]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tkeep[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[12]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_22_out[32]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[32]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[32]),
        .O(\m_axis_tkeep[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[13]_INST_0 
       (.I0(\m_axis_tkeep[13]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tkeep[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[13]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_22_out[33]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[33]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[33]),
        .O(\m_axis_tkeep[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[14]_INST_0 
       (.I0(\m_axis_tkeep[14]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tkeep[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[14]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_22_out[34]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[34]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[34]),
        .O(\m_axis_tkeep[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[15]_INST_0 
       (.I0(\m_axis_tkeep[15]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tkeep[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[15]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_22_out[35]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[35]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[35]),
        .O(\m_axis_tkeep[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[16]_INST_0 
       (.I0(\m_axis_tkeep[16]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tkeep[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[16]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_22_out[32]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[32]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[32]),
        .O(\m_axis_tkeep[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[17]_INST_0 
       (.I0(\m_axis_tkeep[17]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tkeep[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[17]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_22_out[33]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[33]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[33]),
        .O(\m_axis_tkeep[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[18]_INST_0 
       (.I0(\m_axis_tkeep[18]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tkeep[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[18]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_22_out[34]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[34]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[34]),
        .O(\m_axis_tkeep[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[19]_INST_0 
       (.I0(\m_axis_tkeep[19]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tkeep[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[19]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_22_out[35]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[35]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[35]),
        .O(\m_axis_tkeep[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[1]_INST_0 
       (.I0(\m_axis_tkeep[1]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tkeep[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[1]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_22_out[33]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[33]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[33]),
        .O(\m_axis_tkeep[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[20]_INST_0 
       (.I0(\m_axis_tkeep[20]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tkeep[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[20]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_22_out[32]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[32]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[32]),
        .O(\m_axis_tkeep[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[21]_INST_0 
       (.I0(\m_axis_tkeep[21]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tkeep[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[21]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_22_out[33]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[33]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[33]),
        .O(\m_axis_tkeep[21]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[22]_INST_0 
       (.I0(\m_axis_tkeep[22]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tkeep[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[22]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_22_out[34]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[34]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[34]),
        .O(\m_axis_tkeep[22]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[23]_INST_0 
       (.I0(\m_axis_tkeep[23]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tkeep[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[23]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_22_out[35]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[35]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[35]),
        .O(\m_axis_tkeep[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[24]_INST_0 
       (.I0(\m_axis_tkeep[24]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tkeep[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[24]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_22_out[32]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[32]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[32]),
        .O(\m_axis_tkeep[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_3 
       (.I0(payload_b[32]),
        .I1(payload_a[32]),
        .I2(sel),
        .O(p_17_out[32]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[25]_INST_0 
       (.I0(\m_axis_tkeep[25]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tkeep[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[25]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_22_out[33]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[33]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[33]),
        .O(\m_axis_tkeep[25]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_3 
       (.I0(payload_b[33]),
        .I1(payload_a[33]),
        .I2(sel),
        .O(p_17_out[33]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[26]_INST_0 
       (.I0(\m_axis_tkeep[26]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tkeep[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[26]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_22_out[34]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[34]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[34]),
        .O(\m_axis_tkeep[26]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_3 
       (.I0(payload_b[34]),
        .I1(payload_a[34]),
        .I2(sel),
        .O(p_17_out[34]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[27]_INST_0 
       (.I0(\m_axis_tkeep[27]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tkeep[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[27]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_22_out[35]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[35]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[35]),
        .O(\m_axis_tkeep[27]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_3 
       (.I0(payload_b[35]),
        .I1(payload_a[35]),
        .I2(sel),
        .O(p_17_out[35]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[2]_INST_0 
       (.I0(\m_axis_tkeep[2]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tkeep[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[2]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_22_out[34]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[34]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[34]),
        .O(\m_axis_tkeep[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[3]_INST_0 
       (.I0(\m_axis_tkeep[3]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tkeep[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[3]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_22_out[35]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[35]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[35]),
        .O(\m_axis_tkeep[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[4]_INST_0 
       (.I0(\m_axis_tkeep[4]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tkeep[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[4]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_22_out[32]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[32]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[32]),
        .O(\m_axis_tkeep[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[5]_INST_0 
       (.I0(\m_axis_tkeep[5]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tkeep[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[5]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_22_out[33]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[33]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[33]),
        .O(\m_axis_tkeep[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[6]_INST_0 
       (.I0(\m_axis_tkeep[6]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tkeep[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[6]_INST_0_i_1 
       (.I0(p_17_out[34]),
        .I1(p_22_out[34]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[34]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[34]),
        .O(\m_axis_tkeep[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[7]_INST_0 
       (.I0(\m_axis_tkeep[7]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tkeep[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[7]_INST_0_i_1 
       (.I0(p_17_out[35]),
        .I1(p_22_out[35]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[35]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[35]),
        .O(\m_axis_tkeep[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[8]_INST_0 
       (.I0(\m_axis_tkeep[8]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tkeep[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[8]_INST_0_i_1 
       (.I0(p_17_out[32]),
        .I1(p_22_out[32]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[32]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[32]),
        .O(\m_axis_tkeep[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tkeep[9]_INST_0 
       (.I0(\m_axis_tkeep[9]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tkeep[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tkeep[9]_INST_0_i_1 
       (.I0(p_17_out[33]),
        .I1(p_22_out[33]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[33]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[33]),
        .O(\m_axis_tkeep[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[0]_INST_0 
       (.I0(\m_axis_tlast[0]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ),
        .I3(ctrl_reg_synch[3]),
        .O(m_axis_tlast[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tlast[0]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_22_out[36]),
        .I2(ctrl_reg_synch[1]),
        .I3(p_27_out[36]),
        .I4(ctrl_reg_synch[0]),
        .I5(p_32_out[36]),
        .O(\m_axis_tlast[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[1]_INST_0 
       (.I0(\m_axis_tlast[1]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ),
        .I3(ctrl_reg_synch[7]),
        .O(m_axis_tlast[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tlast[1]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_22_out[36]),
        .I2(ctrl_reg_synch[5]),
        .I3(p_27_out[36]),
        .I4(ctrl_reg_synch[4]),
        .I5(p_32_out[36]),
        .O(\m_axis_tlast[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[2]_INST_0 
       (.I0(\m_axis_tlast[2]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ),
        .I3(ctrl_reg_synch[11]),
        .O(m_axis_tlast[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tlast[2]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_22_out[36]),
        .I2(ctrl_reg_synch[9]),
        .I3(p_27_out[36]),
        .I4(ctrl_reg_synch[8]),
        .I5(p_32_out[36]),
        .O(\m_axis_tlast[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[3]_INST_0 
       (.I0(\m_axis_tlast[3]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ),
        .I3(ctrl_reg_synch[15]),
        .O(m_axis_tlast[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tlast[3]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_22_out[36]),
        .I2(ctrl_reg_synch[13]),
        .I3(p_27_out[36]),
        .I4(ctrl_reg_synch[12]),
        .I5(p_32_out[36]),
        .O(\m_axis_tlast[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[4]_INST_0 
       (.I0(\m_axis_tlast[4]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ),
        .I3(ctrl_reg_synch[19]),
        .O(m_axis_tlast[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tlast[4]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_22_out[36]),
        .I2(ctrl_reg_synch[17]),
        .I3(p_27_out[36]),
        .I4(ctrl_reg_synch[16]),
        .I5(p_32_out[36]),
        .O(\m_axis_tlast[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[5]_INST_0 
       (.I0(\m_axis_tlast[5]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ),
        .I3(ctrl_reg_synch[23]),
        .O(m_axis_tlast[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tlast[5]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_22_out[36]),
        .I2(ctrl_reg_synch[21]),
        .I3(p_27_out[36]),
        .I4(ctrl_reg_synch[20]),
        .I5(p_32_out[36]),
        .O(\m_axis_tlast[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \m_axis_tlast[6]_INST_0 
       (.I0(\m_axis_tlast[6]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ),
        .I3(ctrl_reg_synch[27]),
        .O(m_axis_tlast[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tlast[6]_INST_0_i_1 
       (.I0(p_17_out[36]),
        .I1(p_22_out[36]),
        .I2(ctrl_reg_synch[25]),
        .I3(p_27_out[36]),
        .I4(ctrl_reg_synch[24]),
        .I5(p_32_out[36]),
        .O(\m_axis_tlast[6]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[6]_INST_0_i_3 
       (.I0(payload_b[36]),
        .I1(payload_a[36]),
        .I2(sel),
        .O(p_17_out[36]));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[0]_INST_0 
       (.I0(\m_axis_tvalid[0]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[2]),
        .I2(\gen_AB_reg_slice.state_reg[0]_0 ),
        .I3(ctrl_reg_synch[28]),
        .O(m_axis_tvalid[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[0]_1 [2]),
        .I2(ctrl_reg_synch[1]),
        .I3(\gen_AB_reg_slice.state_reg[0]_1 [1]),
        .I4(ctrl_reg_synch[0]),
        .I5(\gen_AB_reg_slice.state_reg[0]_1 [0]),
        .O(\m_axis_tvalid[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[1]_INST_0 
       (.I0(\m_axis_tvalid[1]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[6]),
        .I2(\gen_AB_reg_slice.state_reg[0]_2 ),
        .I3(ctrl_reg_synch[29]),
        .O(m_axis_tvalid[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tvalid[1]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[0]_1 [2]),
        .I2(ctrl_reg_synch[5]),
        .I3(\gen_AB_reg_slice.state_reg[0]_1 [1]),
        .I4(ctrl_reg_synch[4]),
        .I5(\gen_AB_reg_slice.state_reg[0]_1 [0]),
        .O(\m_axis_tvalid[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[2]_INST_0 
       (.I0(\m_axis_tvalid[2]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[10]),
        .I2(\gen_AB_reg_slice.state_reg[0]_3 ),
        .I3(ctrl_reg_synch[30]),
        .O(m_axis_tvalid[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tvalid[2]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[0]_1 [2]),
        .I2(ctrl_reg_synch[9]),
        .I3(\gen_AB_reg_slice.state_reg[0]_1 [1]),
        .I4(ctrl_reg_synch[8]),
        .I5(\gen_AB_reg_slice.state_reg[0]_1 [0]),
        .O(\m_axis_tvalid[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[3]_INST_0 
       (.I0(\m_axis_tvalid[3]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[14]),
        .I2(\gen_AB_reg_slice.state_reg[0]_4 ),
        .I3(ctrl_reg_synch[31]),
        .O(m_axis_tvalid[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tvalid[3]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[0]_1 [2]),
        .I2(ctrl_reg_synch[13]),
        .I3(\gen_AB_reg_slice.state_reg[0]_1 [1]),
        .I4(ctrl_reg_synch[12]),
        .I5(\gen_AB_reg_slice.state_reg[0]_1 [0]),
        .O(\m_axis_tvalid[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[4]_INST_0 
       (.I0(\m_axis_tvalid[4]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[18]),
        .I2(\gen_AB_reg_slice.state_reg[0]_5 ),
        .I3(ctrl_reg_synch[32]),
        .O(m_axis_tvalid[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tvalid[4]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[0]_1 [2]),
        .I2(ctrl_reg_synch[17]),
        .I3(\gen_AB_reg_slice.state_reg[0]_1 [1]),
        .I4(ctrl_reg_synch[16]),
        .I5(\gen_AB_reg_slice.state_reg[0]_1 [0]),
        .O(\m_axis_tvalid[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[5]_INST_0 
       (.I0(\m_axis_tvalid[5]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_AB_reg_slice.state_reg[0]_6 ),
        .I3(ctrl_reg_synch[33]),
        .O(m_axis_tvalid[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tvalid[5]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[0]_1 [2]),
        .I2(ctrl_reg_synch[21]),
        .I3(\gen_AB_reg_slice.state_reg[0]_1 [1]),
        .I4(ctrl_reg_synch[20]),
        .I5(\gen_AB_reg_slice.state_reg[0]_1 [0]),
        .O(\m_axis_tvalid[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tvalid[6]_INST_0 
       (.I0(\m_axis_tvalid[6]_INST_0_i_1_n_0 ),
        .I1(ctrl_reg_synch[26]),
        .I2(\gen_AB_reg_slice.state_reg[0]_7 ),
        .I3(ctrl_reg_synch[34]),
        .O(m_axis_tvalid[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tvalid[6]_INST_0_i_1 
       (.I0(mux_tvalid),
        .I1(\gen_AB_reg_slice.state_reg[0]_1 [2]),
        .I2(ctrl_reg_synch[25]),
        .I3(\gen_AB_reg_slice.state_reg[0]_1 [1]),
        .I4(ctrl_reg_synch[24]),
        .I5(\gen_AB_reg_slice.state_reg[0]_1 [0]),
        .O(\m_axis_tvalid[6]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_8_axisc_register_slice" *) 
module top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_9
   (\s_axis_tready[2] ,
    \gen_AB_reg_slice.payload_a_reg[36]_0 ,
    p_22_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] );
  output \s_axis_tready[2] ;
  output \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  output [36:0]p_22_out;
  input [33:0]ctrl_reg_synch;
  input [5:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [33:0]ctrl_reg_synch;
  wire [20:14]dec_tready;
  wire \gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.payload_a_reg[36]_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_2__1_n_0 ;
  wire \gen_AB_reg_slice.sel_rd_i_3__1_n_0 ;
  wire \gen_AB_reg_slice.sel_wr_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[0]_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_1__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_2__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_3__1_n_0 ;
  wire \gen_AB_reg_slice.state[1]_i_4__1_n_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  wire [5:0]m_axis_tready;
  wire [36:0]p_22_out;
  wire [36:0]payload_a;
  wire [36:0]payload_b;
  wire payload_b_0;
  wire \s_axis_tready[2] ;
  wire [0:0]s_axis_tvalid;
  wire sel;
  wire sel_wr;

  LUT4 #(
    .INIT(16'h00B0)) 
    \gen_AB_reg_slice.payload_a[36]_i_1__1 
       (.I0(\s_axis_tready[2] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ));
  FDRE \gen_AB_reg_slice.payload_a_reg[0] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_a[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[10] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_a[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[11] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_a[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[12] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_a[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[13] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_a[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[14] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_a[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[15] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_a[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[16] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_a[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[17] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_a[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[18] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_a[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[19] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_a[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[1] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_a[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[20] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_a[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[21] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_a[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[22] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_a[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[23] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_a[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[24] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_a[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[25] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_a[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[26] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_a[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[27] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_a[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[28] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_a[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[29] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_a[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[2] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_a[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[30] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_a[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[31] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_a[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[32] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_a[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[33] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_a[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[34] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_a[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[35] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_a[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[36] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_a[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[3] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_a[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[4] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_a[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[5] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_a[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[6] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_a[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[7] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_a[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[8] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_a[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_a_reg[9] 
       (.C(aclk),
        .CE(\gen_AB_reg_slice.payload_a[36]_i_1__1_n_0 ),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_a[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB000)) 
    \gen_AB_reg_slice.payload_b[36]_i_1__1 
       (.I0(\s_axis_tready[2] ),
        .I1(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I2(aclken),
        .I3(sel_wr),
        .O(payload_b_0));
  FDRE \gen_AB_reg_slice.payload_b_reg[0] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[0]),
        .Q(payload_b[0]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[10] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[10]),
        .Q(payload_b[10]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[11] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[11]),
        .Q(payload_b[11]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[12] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[12]),
        .Q(payload_b[12]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[13] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[13]),
        .Q(payload_b[13]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[14] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[14]),
        .Q(payload_b[14]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[15] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[15]),
        .Q(payload_b[15]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[16] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[16]),
        .Q(payload_b[16]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[17] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[17]),
        .Q(payload_b[17]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[18] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[18]),
        .Q(payload_b[18]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[19] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[19]),
        .Q(payload_b[19]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[1] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[1]),
        .Q(payload_b[1]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[20] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[20]),
        .Q(payload_b[20]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[21] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[21]),
        .Q(payload_b[21]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[22] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[22]),
        .Q(payload_b[22]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[23] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[23]),
        .Q(payload_b[23]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[24] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[24]),
        .Q(payload_b[24]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[25] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[25]),
        .Q(payload_b[25]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[26] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[26]),
        .Q(payload_b[26]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[27] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[27]),
        .Q(payload_b[27]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[28] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[28]),
        .Q(payload_b[28]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[29] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[29]),
        .Q(payload_b[29]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[2] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[2]),
        .Q(payload_b[2]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[30] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[30]),
        .Q(payload_b[30]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[31] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[31]),
        .Q(payload_b[31]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[32] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[32]),
        .Q(payload_b[32]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[33] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[33]),
        .Q(payload_b[33]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[34] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[34]),
        .Q(payload_b[34]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[35] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[35]),
        .Q(payload_b[35]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[36] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[36]),
        .Q(payload_b[36]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[3] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[3]),
        .Q(payload_b[3]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[4] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[4]),
        .Q(payload_b[4]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[5] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[5]),
        .Q(payload_b[5]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[6] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[6]),
        .Q(payload_b[6]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[7] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[7]),
        .Q(payload_b[7]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[8] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[8]),
        .Q(payload_b[8]),
        .R(1'b0));
  FDRE \gen_AB_reg_slice.payload_b_reg[9] 
       (.C(aclk),
        .CE(payload_b_0),
        .D(S_AXIS_TPAYLOAD[9]),
        .Q(payload_b[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFDFFFFFF02000000)) 
    \gen_AB_reg_slice.sel_rd_i_1__1 
       (.I0(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I1(\gen_AB_reg_slice.sel_rd_i_2__1_n_0 ),
        .I2(\gen_AB_reg_slice.sel_rd_i_3__1_n_0 ),
        .I3(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ),
        .I4(aclken),
        .I5(sel),
        .O(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_2__1 
       (.I0(ctrl_reg_synch[2]),
        .I1(ctrl_reg_synch[3]),
        .I2(ctrl_reg_synch[0]),
        .I3(\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .I4(ctrl_reg_synch[1]),
        .I5(dec_tready[15]),
        .O(\gen_AB_reg_slice.sel_rd_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    \gen_AB_reg_slice.sel_rd_i_3__1 
       (.I0(ctrl_reg_synch[10]),
        .I1(ctrl_reg_synch[11]),
        .I2(ctrl_reg_synch[8]),
        .I3(\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .I4(ctrl_reg_synch[9]),
        .I5(dec_tready[17]),
        .O(\gen_AB_reg_slice.sel_rd_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_rd_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_rd_i_1__1_n_0 ),
        .Q(sel),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \gen_AB_reg_slice.sel_wr_i_1__1 
       (.I0(aclken),
        .I1(s_axis_tvalid),
        .I2(\s_axis_tready[2] ),
        .I3(sel_wr),
        .O(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.sel_wr_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.sel_wr_i_1__1_n_0 ),
        .Q(sel_wr),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAADF00FF00FF00)) 
    \gen_AB_reg_slice.state[0]_i_1__1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__1_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[2] ),
        .O(\gen_AB_reg_slice.state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_AB_reg_slice.state[1]_i_10__1 
       (.I0(ctrl_reg_synch[17]),
        .I1(ctrl_reg_synch[31]),
        .I2(m_axis_tready[4]),
        .I3(ctrl_reg_synch[16]),
        .I4(ctrl_reg_synch[19]),
        .I5(ctrl_reg_synch[18]),
        .O(dec_tready[18]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_AB_reg_slice.state[1]_i_1__1 
       (.I0(areset_r),
        .I1(ctrl_reg_synch[33]),
        .O(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h75FFFFFF20AA20AA)) 
    \gen_AB_reg_slice.state[1]_i_2__1 
       (.I0(aclken),
        .I1(\gen_AB_reg_slice.state[1]_i_3__1_n_0 ),
        .I2(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ),
        .I3(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .I4(s_axis_tvalid),
        .I5(\s_axis_tready[2] ),
        .O(\gen_AB_reg_slice.state[1]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_AB_reg_slice.state[1]_i_3__1 
       (.I0(dec_tready[15]),
        .I1(dec_tready[14]),
        .I2(dec_tready[17]),
        .I3(dec_tready[16]),
        .O(\gen_AB_reg_slice.state[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFF000000000000)) 
    \gen_AB_reg_slice.state[1]_i_4__1 
       (.I0(ctrl_reg_synch[21]),
        .I1(ctrl_reg_synch[22]),
        .I2(\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ),
        .I3(ctrl_reg_synch[20]),
        .I4(dec_tready[20]),
        .I5(dec_tready[18]),
        .O(\gen_AB_reg_slice.state[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_AB_reg_slice.state[1]_i_5__1 
       (.I0(ctrl_reg_synch[5]),
        .I1(ctrl_reg_synch[28]),
        .I2(m_axis_tready[1]),
        .I3(ctrl_reg_synch[4]),
        .I4(ctrl_reg_synch[7]),
        .I5(ctrl_reg_synch[6]),
        .O(dec_tready[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_AB_reg_slice.state[1]_i_6__1 
       (.I0(ctrl_reg_synch[1]),
        .I1(ctrl_reg_synch[27]),
        .I2(m_axis_tready[0]),
        .I3(ctrl_reg_synch[0]),
        .I4(ctrl_reg_synch[3]),
        .I5(ctrl_reg_synch[2]),
        .O(dec_tready[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_AB_reg_slice.state[1]_i_7__1 
       (.I0(ctrl_reg_synch[13]),
        .I1(ctrl_reg_synch[30]),
        .I2(m_axis_tready[3]),
        .I3(ctrl_reg_synch[12]),
        .I4(ctrl_reg_synch[15]),
        .I5(ctrl_reg_synch[14]),
        .O(dec_tready[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_AB_reg_slice.state[1]_i_8__1 
       (.I0(ctrl_reg_synch[9]),
        .I1(ctrl_reg_synch[29]),
        .I2(m_axis_tready[2]),
        .I3(ctrl_reg_synch[8]),
        .I4(ctrl_reg_synch[11]),
        .I5(ctrl_reg_synch[10]),
        .O(dec_tready[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_AB_reg_slice.state[1]_i_9__3 
       (.I0(ctrl_reg_synch[24]),
        .I1(ctrl_reg_synch[32]),
        .I2(m_axis_tready[5]),
        .I3(ctrl_reg_synch[23]),
        .I4(ctrl_reg_synch[26]),
        .I5(ctrl_reg_synch[25]),
        .O(dec_tready[20]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[0]_i_1__1_n_0 ),
        .Q(\gen_AB_reg_slice.payload_a_reg[36]_0 ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_AB_reg_slice.state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_AB_reg_slice.state[1]_i_2__1_n_0 ),
        .Q(\s_axis_tready[2] ),
        .R(\gen_AB_reg_slice.state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0_i_4 
       (.I0(payload_b[0]),
        .I1(payload_a[0]),
        .I2(sel),
        .O(p_22_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0_i_4 
       (.I0(payload_b[1]),
        .I1(payload_a[1]),
        .I2(sel),
        .O(p_22_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0_i_4 
       (.I0(payload_b[2]),
        .I1(payload_a[2]),
        .I2(sel),
        .O(p_22_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0_i_4 
       (.I0(payload_b[3]),
        .I1(payload_a[3]),
        .I2(sel),
        .O(p_22_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0_i_4 
       (.I0(payload_b[4]),
        .I1(payload_a[4]),
        .I2(sel),
        .O(p_22_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0_i_4 
       (.I0(payload_b[5]),
        .I1(payload_a[5]),
        .I2(sel),
        .O(p_22_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0_i_4 
       (.I0(payload_b[6]),
        .I1(payload_a[6]),
        .I2(sel),
        .O(p_22_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0_i_4 
       (.I0(payload_b[7]),
        .I1(payload_a[7]),
        .I2(sel),
        .O(p_22_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0_i_4 
       (.I0(payload_b[8]),
        .I1(payload_a[8]),
        .I2(sel),
        .O(p_22_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0_i_4 
       (.I0(payload_b[9]),
        .I1(payload_a[9]),
        .I2(sel),
        .O(p_22_out[9]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0_i_4 
       (.I0(payload_b[10]),
        .I1(payload_a[10]),
        .I2(sel),
        .O(p_22_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0_i_4 
       (.I0(payload_b[11]),
        .I1(payload_a[11]),
        .I2(sel),
        .O(p_22_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0_i_4 
       (.I0(payload_b[12]),
        .I1(payload_a[12]),
        .I2(sel),
        .O(p_22_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0_i_4 
       (.I0(payload_b[13]),
        .I1(payload_a[13]),
        .I2(sel),
        .O(p_22_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0_i_4 
       (.I0(payload_b[14]),
        .I1(payload_a[14]),
        .I2(sel),
        .O(p_22_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0_i_4 
       (.I0(payload_b[15]),
        .I1(payload_a[15]),
        .I2(sel),
        .O(p_22_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0_i_4 
       (.I0(payload_b[16]),
        .I1(payload_a[16]),
        .I2(sel),
        .O(p_22_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0_i_4 
       (.I0(payload_b[17]),
        .I1(payload_a[17]),
        .I2(sel),
        .O(p_22_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0_i_4 
       (.I0(payload_b[18]),
        .I1(payload_a[18]),
        .I2(sel),
        .O(p_22_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0_i_4 
       (.I0(payload_b[19]),
        .I1(payload_a[19]),
        .I2(sel),
        .O(p_22_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0_i_4 
       (.I0(payload_b[20]),
        .I1(payload_a[20]),
        .I2(sel),
        .O(p_22_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0_i_4 
       (.I0(payload_b[21]),
        .I1(payload_a[21]),
        .I2(sel),
        .O(p_22_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0_i_4 
       (.I0(payload_b[22]),
        .I1(payload_a[22]),
        .I2(sel),
        .O(p_22_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0_i_4 
       (.I0(payload_b[23]),
        .I1(payload_a[23]),
        .I2(sel),
        .O(p_22_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0_i_4 
       (.I0(payload_b[24]),
        .I1(payload_a[24]),
        .I2(sel),
        .O(p_22_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0_i_4 
       (.I0(payload_b[25]),
        .I1(payload_a[25]),
        .I2(sel),
        .O(p_22_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0_i_4 
       (.I0(payload_b[26]),
        .I1(payload_a[26]),
        .I2(sel),
        .O(p_22_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0_i_4 
       (.I0(payload_b[27]),
        .I1(payload_a[27]),
        .I2(sel),
        .O(p_22_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0_i_4 
       (.I0(payload_b[28]),
        .I1(payload_a[28]),
        .I2(sel),
        .O(p_22_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0_i_4 
       (.I0(payload_b[29]),
        .I1(payload_a[29]),
        .I2(sel),
        .O(p_22_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0_i_4 
       (.I0(payload_b[30]),
        .I1(payload_a[30]),
        .I2(sel),
        .O(p_22_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0_i_4 
       (.I0(payload_b[31]),
        .I1(payload_a[31]),
        .I2(sel),
        .O(p_22_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[24]_INST_0_i_4 
       (.I0(payload_b[32]),
        .I1(payload_a[32]),
        .I2(sel),
        .O(p_22_out[32]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[25]_INST_0_i_4 
       (.I0(payload_b[33]),
        .I1(payload_a[33]),
        .I2(sel),
        .O(p_22_out[33]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[26]_INST_0_i_4 
       (.I0(payload_b[34]),
        .I1(payload_a[34]),
        .I2(sel),
        .O(p_22_out[34]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tkeep[27]_INST_0_i_4 
       (.I0(payload_b[35]),
        .I1(payload_a[35]),
        .I2(sel),
        .O(p_22_out[35]));
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tlast[6]_INST_0_i_4 
       (.I0(payload_b[36]),
        .I1(payload_a[36]),
        .I2(sel),
        .O(p_22_out[36]));
endmodule

module top_xbar_4_axis_switch_v1_1_8_axi_ctrl_read
   (Q,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rdata,
    \gen_reg[3].reg_data_reg[127] ,
    \gen_reg[6].reg_data_reg[223] ,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[3].reg_data_reg[96] ,
    \gen_reg[3].reg_data_reg[97] ,
    \gen_reg[3].reg_data_reg[98] ,
    \gen_reg[3].reg_data_reg[99] ,
    \gen_reg[3].reg_data_reg[100] ,
    \gen_reg[3].reg_data_reg[101] ,
    \gen_reg[3].reg_data_reg[102] ,
    \gen_reg[3].reg_data_reg[103] ,
    \gen_reg[3].reg_data_reg[104] ,
    \gen_reg[3].reg_data_reg[105] ,
    \gen_reg[3].reg_data_reg[106] ,
    \gen_reg[3].reg_data_reg[107] ,
    \gen_reg[3].reg_data_reg[108] ,
    \gen_reg[3].reg_data_reg[109] ,
    \gen_reg[3].reg_data_reg[110] ,
    \gen_reg[3].reg_data_reg[111] ,
    \gen_reg[3].reg_data_reg[112] ,
    \gen_reg[3].reg_data_reg[113] ,
    \gen_reg[3].reg_data_reg[114] ,
    \gen_reg[3].reg_data_reg[115] ,
    \gen_reg[3].reg_data_reg[116] ,
    \gen_reg[3].reg_data_reg[117] ,
    \gen_reg[3].reg_data_reg[118] ,
    \gen_reg[3].reg_data_reg[119] ,
    \gen_reg[3].reg_data_reg[120] ,
    \gen_reg[3].reg_data_reg[121] ,
    \gen_reg[3].reg_data_reg[122] ,
    \gen_reg[3].reg_data_reg[123] ,
    \gen_reg[3].reg_data_reg[124] ,
    \gen_reg[3].reg_data_reg[125] ,
    \gen_reg[3].reg_data_reg[126] ,
    \gen_reg[4].reg_data_reg[158] ,
    \gen_reg[5].reg_data_reg[190] ,
    \gen_reg[6].reg_data_reg[222] ,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_areset,
    s_axi_ctrl_aclk,
    s_axi_ctrl_araddr);
  output [1:0]Q;
  output [1:0]s_axi_ctrl_rvalid;
  output [31:0]s_axi_ctrl_rdata;
  input \gen_reg[3].reg_data_reg[127] ;
  input \gen_reg[6].reg_data_reg[223] ;
  input [31:0]\gen_reg[0].reg_data_reg[31] ;
  input \gen_reg[3].reg_data_reg[96] ;
  input \gen_reg[3].reg_data_reg[97] ;
  input \gen_reg[3].reg_data_reg[98] ;
  input \gen_reg[3].reg_data_reg[99] ;
  input \gen_reg[3].reg_data_reg[100] ;
  input \gen_reg[3].reg_data_reg[101] ;
  input \gen_reg[3].reg_data_reg[102] ;
  input \gen_reg[3].reg_data_reg[103] ;
  input \gen_reg[3].reg_data_reg[104] ;
  input \gen_reg[3].reg_data_reg[105] ;
  input \gen_reg[3].reg_data_reg[106] ;
  input \gen_reg[3].reg_data_reg[107] ;
  input \gen_reg[3].reg_data_reg[108] ;
  input \gen_reg[3].reg_data_reg[109] ;
  input \gen_reg[3].reg_data_reg[110] ;
  input \gen_reg[3].reg_data_reg[111] ;
  input \gen_reg[3].reg_data_reg[112] ;
  input \gen_reg[3].reg_data_reg[113] ;
  input \gen_reg[3].reg_data_reg[114] ;
  input \gen_reg[3].reg_data_reg[115] ;
  input \gen_reg[3].reg_data_reg[116] ;
  input \gen_reg[3].reg_data_reg[117] ;
  input \gen_reg[3].reg_data_reg[118] ;
  input \gen_reg[3].reg_data_reg[119] ;
  input \gen_reg[3].reg_data_reg[120] ;
  input \gen_reg[3].reg_data_reg[121] ;
  input \gen_reg[3].reg_data_reg[122] ;
  input \gen_reg[3].reg_data_reg[123] ;
  input \gen_reg[3].reg_data_reg[124] ;
  input \gen_reg[3].reg_data_reg[125] ;
  input \gen_reg[3].reg_data_reg[126] ;
  input [30:0]\gen_reg[4].reg_data_reg[158] ;
  input [30:0]\gen_reg[5].reg_data_reg[190] ;
  input [30:0]\gen_reg[6].reg_data_reg[222] ;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input s_axi_ctrl_areset;
  input s_axi_ctrl_aclk;
  input [4:0]s_axi_ctrl_araddr;

  wire [1:0]Q;
  wire \addr_r_reg_n_0_[6] ;
  wire \data[0]_i_1_n_0 ;
  wire \data[0]_i_2_n_0 ;
  wire \data[10]_i_1_n_0 ;
  wire \data[10]_i_2_n_0 ;
  wire \data[11]_i_1_n_0 ;
  wire \data[11]_i_2_n_0 ;
  wire \data[12]_i_1_n_0 ;
  wire \data[12]_i_2_n_0 ;
  wire \data[13]_i_1_n_0 ;
  wire \data[13]_i_2_n_0 ;
  wire \data[14]_i_1_n_0 ;
  wire \data[14]_i_2_n_0 ;
  wire \data[15]_i_1_n_0 ;
  wire \data[15]_i_2_n_0 ;
  wire \data[16]_i_1_n_0 ;
  wire \data[16]_i_2_n_0 ;
  wire \data[17]_i_1_n_0 ;
  wire \data[17]_i_2_n_0 ;
  wire \data[18]_i_1_n_0 ;
  wire \data[18]_i_2_n_0 ;
  wire \data[19]_i_1_n_0 ;
  wire \data[19]_i_2_n_0 ;
  wire \data[1]_i_1_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[20]_i_1_n_0 ;
  wire \data[20]_i_2_n_0 ;
  wire \data[21]_i_1_n_0 ;
  wire \data[21]_i_2_n_0 ;
  wire \data[22]_i_1_n_0 ;
  wire \data[22]_i_2_n_0 ;
  wire \data[23]_i_1_n_0 ;
  wire \data[23]_i_2_n_0 ;
  wire \data[24]_i_1_n_0 ;
  wire \data[24]_i_2_n_0 ;
  wire \data[25]_i_1_n_0 ;
  wire \data[25]_i_2_n_0 ;
  wire \data[26]_i_1_n_0 ;
  wire \data[26]_i_2_n_0 ;
  wire \data[27]_i_1_n_0 ;
  wire \data[27]_i_2_n_0 ;
  wire \data[28]_i_1_n_0 ;
  wire \data[28]_i_2_n_0 ;
  wire \data[29]_i_1_n_0 ;
  wire \data[29]_i_2_n_0 ;
  wire \data[2]_i_1_n_0 ;
  wire \data[2]_i_2_n_0 ;
  wire \data[30]_i_1_n_0 ;
  wire \data[30]_i_2_n_0 ;
  wire \data[30]_i_3_n_0 ;
  wire \data[30]_i_4_n_0 ;
  wire \data[31]_i_1_n_0 ;
  wire \data[31]_i_4_n_0 ;
  wire \data[3]_i_1_n_0 ;
  wire \data[3]_i_2_n_0 ;
  wire \data[4]_i_1_n_0 ;
  wire \data[4]_i_2_n_0 ;
  wire \data[5]_i_1_n_0 ;
  wire \data[5]_i_2_n_0 ;
  wire \data[6]_i_1_n_0 ;
  wire \data[6]_i_2_n_0 ;
  wire \data[7]_i_1_n_0 ;
  wire \data[7]_i_2_n_0 ;
  wire \data[8]_i_1_n_0 ;
  wire \data[8]_i_2_n_0 ;
  wire \data[9]_i_1_n_0 ;
  wire \data[9]_i_2_n_0 ;
  wire [31:0]\gen_reg[0].reg_data_reg[31] ;
  wire \gen_reg[3].reg_data_reg[100] ;
  wire \gen_reg[3].reg_data_reg[101] ;
  wire \gen_reg[3].reg_data_reg[102] ;
  wire \gen_reg[3].reg_data_reg[103] ;
  wire \gen_reg[3].reg_data_reg[104] ;
  wire \gen_reg[3].reg_data_reg[105] ;
  wire \gen_reg[3].reg_data_reg[106] ;
  wire \gen_reg[3].reg_data_reg[107] ;
  wire \gen_reg[3].reg_data_reg[108] ;
  wire \gen_reg[3].reg_data_reg[109] ;
  wire \gen_reg[3].reg_data_reg[110] ;
  wire \gen_reg[3].reg_data_reg[111] ;
  wire \gen_reg[3].reg_data_reg[112] ;
  wire \gen_reg[3].reg_data_reg[113] ;
  wire \gen_reg[3].reg_data_reg[114] ;
  wire \gen_reg[3].reg_data_reg[115] ;
  wire \gen_reg[3].reg_data_reg[116] ;
  wire \gen_reg[3].reg_data_reg[117] ;
  wire \gen_reg[3].reg_data_reg[118] ;
  wire \gen_reg[3].reg_data_reg[119] ;
  wire \gen_reg[3].reg_data_reg[120] ;
  wire \gen_reg[3].reg_data_reg[121] ;
  wire \gen_reg[3].reg_data_reg[122] ;
  wire \gen_reg[3].reg_data_reg[123] ;
  wire \gen_reg[3].reg_data_reg[124] ;
  wire \gen_reg[3].reg_data_reg[125] ;
  wire \gen_reg[3].reg_data_reg[126] ;
  wire \gen_reg[3].reg_data_reg[127] ;
  wire \gen_reg[3].reg_data_reg[96] ;
  wire \gen_reg[3].reg_data_reg[97] ;
  wire \gen_reg[3].reg_data_reg[98] ;
  wire \gen_reg[3].reg_data_reg[99] ;
  wire [30:0]\gen_reg[4].reg_data_reg[158] ;
  wire [30:0]\gen_reg[5].reg_data_reg[190] ;
  wire [30:0]\gen_reg[6].reg_data_reg[222] ;
  wire \gen_reg[6].reg_data_reg[223] ;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_areset;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rvalid;
  wire [3:2]sel0;
  wire [1:0]state;

  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_araddr[4]),
        .Q(\addr_r_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[0]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [0]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[0]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[96] ),
        .O(\data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[0]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [0]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [0]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [0]),
        .O(\data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[10]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [10]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[10]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[106] ),
        .O(\data[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[10]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [10]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [10]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [10]),
        .O(\data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[11]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [11]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[11]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[107] ),
        .O(\data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[11]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [11]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [11]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [11]),
        .O(\data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[12]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [12]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[12]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[108] ),
        .O(\data[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[12]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [12]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [12]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [12]),
        .O(\data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[13]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [13]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[13]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[109] ),
        .O(\data[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[13]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [13]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [13]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [13]),
        .O(\data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[14]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [14]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[14]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[110] ),
        .O(\data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[14]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [14]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [14]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [14]),
        .O(\data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[15]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [15]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[15]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[111] ),
        .O(\data[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[15]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [15]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [15]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [15]),
        .O(\data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[16]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [16]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[16]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[112] ),
        .O(\data[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[16]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [16]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [16]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [16]),
        .O(\data[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[17]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [17]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[17]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[113] ),
        .O(\data[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[17]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [17]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [17]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [17]),
        .O(\data[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[18]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [18]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[18]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[114] ),
        .O(\data[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[18]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [18]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [18]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [18]),
        .O(\data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[19]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [19]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[19]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[115] ),
        .O(\data[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[19]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [19]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [19]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [19]),
        .O(\data[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[1]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [1]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[1]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[97] ),
        .O(\data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[1]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [1]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [1]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [1]),
        .O(\data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[20]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [20]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[20]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[116] ),
        .O(\data[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[20]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [20]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [20]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [20]),
        .O(\data[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[21]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [21]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[21]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[117] ),
        .O(\data[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[21]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [21]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [21]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [21]),
        .O(\data[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[22]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [22]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[22]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[118] ),
        .O(\data[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[22]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [22]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [22]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [22]),
        .O(\data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[23]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [23]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[23]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[119] ),
        .O(\data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[23]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [23]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [23]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [23]),
        .O(\data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[24]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [24]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[24]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[120] ),
        .O(\data[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[24]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [24]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [24]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [24]),
        .O(\data[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[25]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [25]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[25]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[121] ),
        .O(\data[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[25]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [25]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [25]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [25]),
        .O(\data[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[26]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [26]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[26]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[122] ),
        .O(\data[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[26]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [26]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [26]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [26]),
        .O(\data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[27]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [27]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[27]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[123] ),
        .O(\data[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[27]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [27]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [27]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [27]),
        .O(\data[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[28]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [28]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[28]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[124] ),
        .O(\data[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[28]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [28]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [28]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [28]),
        .O(\data[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[29]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [29]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[29]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[125] ),
        .O(\data[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[29]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [29]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [29]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [29]),
        .O(\data[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[2]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [2]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[2]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[98] ),
        .O(\data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[2]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [2]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [2]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [2]),
        .O(\data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[30]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [30]),
        .I2(\data[30]_i_3_n_0 ),
        .I3(\data[30]_i_4_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[126] ),
        .O(\data[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data[30]_i_2 
       (.I0(Q[1]),
        .I1(\addr_r_reg_n_0_[6] ),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .I4(Q[0]),
        .O(\data[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[30]_i_3 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [30]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [30]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [30]),
        .O(\data[30]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \data[30]_i_4 
       (.I0(sel0[3]),
        .I1(\addr_r_reg_n_0_[6] ),
        .O(\data[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEAEFFFFFEAE0000)) 
    \data[31]_i_1 
       (.I0(sel0[3]),
        .I1(\gen_reg[3].reg_data_reg[127] ),
        .I2(sel0[2]),
        .I3(\gen_reg[6].reg_data_reg[223] ),
        .I4(\addr_r_reg_n_0_[6] ),
        .I5(\data[31]_i_4_n_0 ),
        .O(\data[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \data[31]_i_4 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(Q[0]),
        .I3(\gen_reg[0].reg_data_reg[31] [31]),
        .I4(Q[1]),
        .O(\data[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[3]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [3]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[3]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[99] ),
        .O(\data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[3]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [3]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [3]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [3]),
        .O(\data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[4]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [4]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[4]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[100] ),
        .O(\data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[4]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [4]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [4]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [4]),
        .O(\data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[5]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [5]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[5]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[101] ),
        .O(\data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[5]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [5]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [5]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [5]),
        .O(\data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[6]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [6]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[6]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[102] ),
        .O(\data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[6]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [6]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [6]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [6]),
        .O(\data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[7]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [7]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[7]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[103] ),
        .O(\data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[7]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [7]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [7]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [7]),
        .O(\data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[8]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [8]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[8]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[104] ),
        .O(\data[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[8]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [8]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [8]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [8]),
        .O(\data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \data[9]_i_1 
       (.I0(\data[30]_i_2_n_0 ),
        .I1(\gen_reg[0].reg_data_reg[31] [9]),
        .I2(\data[30]_i_4_n_0 ),
        .I3(\data[9]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(\gen_reg[3].reg_data_reg[105] ),
        .O(\data[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \data[9]_i_2 
       (.I0(sel0[2]),
        .I1(\gen_reg[4].reg_data_reg[158] [9]),
        .I2(Q[0]),
        .I3(\gen_reg[5].reg_data_reg[190] [9]),
        .I4(Q[1]),
        .I5(\gen_reg[6].reg_data_reg[222] [9]),
        .O(\data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[0]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[10]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[11]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[12]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[13]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[14]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[15]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[16]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[17]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[18]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[19]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[1]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[20]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[21]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[22]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[23]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[24]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[25]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[26]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[27]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[28]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[29]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[2]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[30]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[31]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[3]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[4]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[5]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[6]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[7]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[8]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(s_axi_ctrl_rvalid[0]),
        .D(\data[9]_i_1_n_0 ),
        .Q(s_axi_ctrl_rdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \state[0]_i_1 
       (.I0(s_axi_ctrl_arvalid),
        .I1(s_axi_ctrl_rvalid[0]),
        .I2(s_axi_ctrl_rvalid[1]),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'h26)) 
    \state[1]_i_1 
       (.I0(s_axi_ctrl_rvalid[0]),
        .I1(s_axi_ctrl_rvalid[1]),
        .I2(s_axi_ctrl_rready),
        .O(state[1]));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(s_axi_ctrl_rvalid[0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(s_axi_ctrl_rvalid[1]),
        .R(s_axi_ctrl_areset));
endmodule

module top_xbar_4_axis_switch_v1_1_8_axi_ctrl_top
   (Q,
    s_axi_ctrl_rvalid,
    \state_reg[0] ,
    \gen_mi_mux_in[0].mi_mux_in_reg[3] ,
    \gen_mi_mux_in[1].mi_mux_in_reg[7] ,
    \gen_mi_mux_in[2].mi_mux_in_reg[11] ,
    \gen_mi_mux_in[3].mi_mux_in_reg[15] ,
    \gen_mi_mux_in[4].mi_mux_in_reg[19] ,
    \gen_mi_mux_in[5].mi_mux_in_reg[23] ,
    \gen_mi_mux_in[6].mi_mux_in_reg[27] ,
    s_axi_ctrl_rdata,
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ,
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ,
    \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ,
    \gen_mi_mux_in[5].mi_mux_en_in_reg[5] ,
    \gen_mi_mux_in[6].mi_mux_en_in_reg[6] ,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_areset,
    s_axi_ctrl_aclk,
    s_axi_ctrl_wdata,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    out0);
  output [1:0]Q;
  output [1:0]s_axi_ctrl_rvalid;
  output [0:0]\state_reg[0] ;
  output [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  output [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  output [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  output [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;
  output [3:0]\gen_mi_mux_in[4].mi_mux_in_reg[19] ;
  output [3:0]\gen_mi_mux_in[5].mi_mux_in_reg[23] ;
  output [3:0]\gen_mi_mux_in[6].mi_mux_in_reg[27] ;
  output [31:0]s_axi_ctrl_rdata;
  output \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  output \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  output \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  output \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  output \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ;
  output \gen_mi_mux_in[5].mi_mux_en_in_reg[5] ;
  output \gen_mi_mux_in[6].mi_mux_en_in_reg[6] ;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input s_axi_ctrl_areset;
  input s_axi_ctrl_aclk;
  input [31:0]s_axi_ctrl_wdata;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input out0;

  wire [1:0]Q;
  wire [31:0]data_r;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  wire [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  wire [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  wire \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  wire [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;
  wire \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ;
  wire [3:0]\gen_mi_mux_in[4].mi_mux_in_reg[19] ;
  wire \gen_mi_mux_in[5].mi_mux_en_in_reg[5] ;
  wire [3:0]\gen_mi_mux_in[5].mi_mux_in_reg[23] ;
  wire \gen_mi_mux_in[6].mi_mux_en_in_reg[6] ;
  wire [3:0]\gen_mi_mux_in[6].mi_mux_in_reg[27] ;
  wire [31:0]\gen_reg[0].reg_data_reg ;
  wire [30:4]\gen_reg[4].reg_data_reg ;
  wire [30:4]\gen_reg[5].reg_data_reg ;
  wire [30:4]\gen_reg[6].reg_data_reg ;
  wire inst_axi_ctrl_write_n_0;
  wire inst_axi_ctrl_write_n_3;
  wire inst_axi_ctrl_write_n_9;
  wire inst_reg_bank_1_n_100;
  wire inst_reg_bank_1_n_101;
  wire inst_reg_bank_1_n_102;
  wire inst_reg_bank_1_n_103;
  wire inst_reg_bank_1_n_104;
  wire inst_reg_bank_1_n_105;
  wire inst_reg_bank_1_n_106;
  wire inst_reg_bank_1_n_107;
  wire inst_reg_bank_1_n_108;
  wire inst_reg_bank_1_n_109;
  wire inst_reg_bank_1_n_110;
  wire inst_reg_bank_1_n_111;
  wire inst_reg_bank_1_n_112;
  wire inst_reg_bank_1_n_113;
  wire inst_reg_bank_1_n_114;
  wire inst_reg_bank_1_n_115;
  wire inst_reg_bank_1_n_116;
  wire inst_reg_bank_1_n_117;
  wire inst_reg_bank_1_n_118;
  wire inst_reg_bank_1_n_119;
  wire inst_reg_bank_1_n_120;
  wire inst_reg_bank_1_n_121;
  wire inst_reg_bank_1_n_122;
  wire inst_reg_bank_1_n_123;
  wire inst_reg_bank_1_n_124;
  wire inst_reg_bank_1_n_125;
  wire inst_reg_bank_1_n_126;
  wire inst_reg_bank_1_n_127;
  wire inst_reg_bank_1_n_128;
  wire inst_reg_bank_1_n_129;
  wire inst_reg_bank_1_n_146;
  wire inst_reg_bank_1_n_147;
  wire inst_reg_bank_1_n_148;
  wire out0;
  wire p_0_in;
  wire p_1_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire [31:0]rb0_wdata;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_areset;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [1:0]sel0;
  wire [0:0]\state_reg[0] ;

  top_xbar_4_axis_switch_v1_1_8_axi_ctrl_read inst_axi_ctrl_read
       (.Q(sel0),
        .\gen_reg[0].reg_data_reg[31] ({\gen_reg[0].reg_data_reg [31:2],\state_reg[0] ,\gen_reg[0].reg_data_reg [0]}),
        .\gen_reg[3].reg_data_reg[100] (inst_reg_bank_1_n_128),
        .\gen_reg[3].reg_data_reg[101] (inst_reg_bank_1_n_127),
        .\gen_reg[3].reg_data_reg[102] (inst_reg_bank_1_n_126),
        .\gen_reg[3].reg_data_reg[103] (inst_reg_bank_1_n_125),
        .\gen_reg[3].reg_data_reg[104] (inst_reg_bank_1_n_124),
        .\gen_reg[3].reg_data_reg[105] (inst_reg_bank_1_n_123),
        .\gen_reg[3].reg_data_reg[106] (inst_reg_bank_1_n_122),
        .\gen_reg[3].reg_data_reg[107] (inst_reg_bank_1_n_121),
        .\gen_reg[3].reg_data_reg[108] (inst_reg_bank_1_n_120),
        .\gen_reg[3].reg_data_reg[109] (inst_reg_bank_1_n_119),
        .\gen_reg[3].reg_data_reg[110] (inst_reg_bank_1_n_118),
        .\gen_reg[3].reg_data_reg[111] (inst_reg_bank_1_n_117),
        .\gen_reg[3].reg_data_reg[112] (inst_reg_bank_1_n_116),
        .\gen_reg[3].reg_data_reg[113] (inst_reg_bank_1_n_115),
        .\gen_reg[3].reg_data_reg[114] (inst_reg_bank_1_n_114),
        .\gen_reg[3].reg_data_reg[115] (inst_reg_bank_1_n_113),
        .\gen_reg[3].reg_data_reg[116] (inst_reg_bank_1_n_112),
        .\gen_reg[3].reg_data_reg[117] (inst_reg_bank_1_n_111),
        .\gen_reg[3].reg_data_reg[118] (inst_reg_bank_1_n_110),
        .\gen_reg[3].reg_data_reg[119] (inst_reg_bank_1_n_109),
        .\gen_reg[3].reg_data_reg[120] (inst_reg_bank_1_n_108),
        .\gen_reg[3].reg_data_reg[121] (inst_reg_bank_1_n_107),
        .\gen_reg[3].reg_data_reg[122] (inst_reg_bank_1_n_106),
        .\gen_reg[3].reg_data_reg[123] (inst_reg_bank_1_n_105),
        .\gen_reg[3].reg_data_reg[124] (inst_reg_bank_1_n_104),
        .\gen_reg[3].reg_data_reg[125] (inst_reg_bank_1_n_103),
        .\gen_reg[3].reg_data_reg[126] (inst_reg_bank_1_n_102),
        .\gen_reg[3].reg_data_reg[127] (inst_reg_bank_1_n_101),
        .\gen_reg[3].reg_data_reg[96] (inst_reg_bank_1_n_148),
        .\gen_reg[3].reg_data_reg[97] (inst_reg_bank_1_n_147),
        .\gen_reg[3].reg_data_reg[98] (inst_reg_bank_1_n_146),
        .\gen_reg[3].reg_data_reg[99] (inst_reg_bank_1_n_129),
        .\gen_reg[4].reg_data_reg[158] ({\gen_reg[4].reg_data_reg ,\gen_mi_mux_in[4].mi_mux_in_reg[19] }),
        .\gen_reg[5].reg_data_reg[190] ({\gen_reg[5].reg_data_reg ,\gen_mi_mux_in[5].mi_mux_in_reg[23] }),
        .\gen_reg[6].reg_data_reg[222] ({\gen_reg[6].reg_data_reg ,\gen_mi_mux_in[6].mi_mux_in_reg[27] }),
        .\gen_reg[6].reg_data_reg[223] (inst_reg_bank_1_n_100),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_areset(s_axi_ctrl_areset),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid));
  top_xbar_4_axis_switch_v1_1_8_axi_ctrl_write inst_axi_ctrl_write
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_0),
        .Q(Q),
        .\gen_reg[0].reg_data_reg[1] (\state_reg[0] ),
        .\gen_reg[0].reg_data_reg[31] (inst_axi_ctrl_write_n_9),
        .\gen_reg[0].reg_data_reg[31]_0 (data_r),
        .\gen_reg[1].reg_data_reg[63] (p_5_in),
        .\gen_reg[2].reg_data_reg[95] (p_4_in),
        .\gen_reg[3].reg_data_reg[127] (p_3_in),
        .\gen_reg[4].reg_data_reg[128] (inst_axi_ctrl_write_n_3),
        .\gen_reg[5].reg_data_reg[191] (p_1_in),
        .\gen_reg[6].reg_data_reg[223] (p_0_in),
        .out0(out0),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_areset(s_axi_ctrl_areset),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid));
  top_xbar_4_axis_switch_v1_1_8_reg_bank_16x32 inst_reg_bank_0
       (.D(rb0_wdata),
        .E(inst_axi_ctrl_write_n_9),
        .Q({\gen_reg[0].reg_data_reg [31:2],\state_reg[0] ,\gen_reg[0].reg_data_reg [0]}),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_areset(s_axi_ctrl_areset));
  top_xbar_4_axis_switch_v1_1_8_reg_bank_16x32__parameterized0 inst_reg_bank_1
       (.D(data_r),
        .E(inst_axi_ctrl_write_n_0),
        .Q({\gen_reg[4].reg_data_reg ,\gen_mi_mux_in[4].mi_mux_in_reg[19] }),
        .\addr_r_reg[2] (p_5_in),
        .\addr_r_reg[2]_0 (p_4_in),
        .\addr_r_reg[2]_1 (p_3_in),
        .\addr_r_reg[2]_2 (inst_axi_ctrl_write_n_3),
        .\addr_r_reg[2]_3 (p_1_in),
        .\addr_r_reg[2]_4 (p_0_in),
        .\addr_r_reg[3] (sel0),
        .\data_reg[0] (inst_reg_bank_1_n_148),
        .\data_reg[10] (inst_reg_bank_1_n_122),
        .\data_reg[11] (inst_reg_bank_1_n_121),
        .\data_reg[12] (inst_reg_bank_1_n_120),
        .\data_reg[13] (inst_reg_bank_1_n_119),
        .\data_reg[14] (inst_reg_bank_1_n_118),
        .\data_reg[15] (inst_reg_bank_1_n_117),
        .\data_reg[16] (inst_reg_bank_1_n_116),
        .\data_reg[17] (inst_reg_bank_1_n_115),
        .\data_reg[18] (inst_reg_bank_1_n_114),
        .\data_reg[19] (inst_reg_bank_1_n_113),
        .\data_reg[1] (inst_reg_bank_1_n_147),
        .\data_reg[20] (inst_reg_bank_1_n_112),
        .\data_reg[21] (inst_reg_bank_1_n_111),
        .\data_reg[22] (inst_reg_bank_1_n_110),
        .\data_reg[23] (inst_reg_bank_1_n_109),
        .\data_reg[24] (inst_reg_bank_1_n_108),
        .\data_reg[25] (inst_reg_bank_1_n_107),
        .\data_reg[26] (inst_reg_bank_1_n_106),
        .\data_reg[27] (inst_reg_bank_1_n_105),
        .\data_reg[28] (inst_reg_bank_1_n_104),
        .\data_reg[29] (inst_reg_bank_1_n_103),
        .\data_reg[2] (inst_reg_bank_1_n_146),
        .\data_reg[30] ({\gen_reg[5].reg_data_reg ,\gen_mi_mux_in[5].mi_mux_in_reg[23] }),
        .\data_reg[30]_0 ({\gen_reg[6].reg_data_reg ,\gen_mi_mux_in[6].mi_mux_in_reg[27] }),
        .\data_reg[30]_1 (inst_reg_bank_1_n_102),
        .\data_reg[31] (inst_reg_bank_1_n_100),
        .\data_reg[31]_0 (inst_reg_bank_1_n_101),
        .\data_reg[3] (inst_reg_bank_1_n_129),
        .\data_reg[4] (inst_reg_bank_1_n_128),
        .\data_reg[5] (inst_reg_bank_1_n_127),
        .\data_reg[6] (inst_reg_bank_1_n_126),
        .\data_reg[7] (inst_reg_bank_1_n_125),
        .\data_reg[8] (inst_reg_bank_1_n_124),
        .\data_reg[9] (inst_reg_bank_1_n_123),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0] (\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ),
        .\gen_mi_mux_in[0].mi_mux_in_reg[3] (\gen_mi_mux_in[0].mi_mux_in_reg[3] ),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1] (\gen_mi_mux_in[1].mi_mux_en_in_reg[1] ),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7] (\gen_mi_mux_in[1].mi_mux_in_reg[7] ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2] (\gen_mi_mux_in[2].mi_mux_en_in_reg[2] ),
        .\gen_mi_mux_in[2].mi_mux_in_reg[11] (\gen_mi_mux_in[2].mi_mux_in_reg[11] ),
        .\gen_mi_mux_in[3].mi_mux_en_in_reg[3] (\gen_mi_mux_in[3].mi_mux_en_in_reg[3] ),
        .\gen_mi_mux_in[3].mi_mux_in_reg[15] (\gen_mi_mux_in[3].mi_mux_in_reg[15] ),
        .\gen_mi_mux_in[4].mi_mux_en_in_reg[4] (\gen_mi_mux_in[4].mi_mux_en_in_reg[4] ),
        .\gen_mi_mux_in[5].mi_mux_en_in_reg[5] (\gen_mi_mux_in[5].mi_mux_en_in_reg[5] ),
        .\gen_mi_mux_in[6].mi_mux_en_in_reg[6] (\gen_mi_mux_in[6].mi_mux_en_in_reg[6] ),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_areset(s_axi_ctrl_areset));
endmodule

module top_xbar_4_axis_switch_v1_1_8_axi_ctrl_write
   (E,
    Q,
    \gen_reg[4].reg_data_reg[128] ,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[2].reg_data_reg[95] ,
    \gen_reg[3].reg_data_reg[127] ,
    \gen_reg[5].reg_data_reg[191] ,
    \gen_reg[6].reg_data_reg[223] ,
    \gen_reg[0].reg_data_reg[31] ,
    D,
    \gen_reg[0].reg_data_reg[31]_0 ,
    \gen_reg[0].reg_data_reg[1] ,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid,
    out0,
    s_axi_ctrl_wdata,
    s_axi_ctrl_aclk,
    s_axi_ctrl_areset,
    s_axi_ctrl_awaddr);
  output [0:0]E;
  output [1:0]Q;
  output [0:0]\gen_reg[4].reg_data_reg[128] ;
  output [0:0]\gen_reg[1].reg_data_reg[63] ;
  output [0:0]\gen_reg[2].reg_data_reg[95] ;
  output [0:0]\gen_reg[3].reg_data_reg[127] ;
  output [0:0]\gen_reg[5].reg_data_reg[191] ;
  output [0:0]\gen_reg[6].reg_data_reg[223] ;
  output [0:0]\gen_reg[0].reg_data_reg[31] ;
  output [31:0]D;
  output [31:0]\gen_reg[0].reg_data_reg[31]_0 ;
  input [0:0]\gen_reg[0].reg_data_reg[1] ;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;
  input out0;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_areset;
  input [4:0]s_axi_ctrl_awaddr;

  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \gen_reg[0].reg_data[31]_i_3_n_0 ;
  wire [0:0]\gen_reg[0].reg_data_reg[1] ;
  wire [0:0]\gen_reg[0].reg_data_reg[31] ;
  wire [31:0]\gen_reg[0].reg_data_reg[31]_0 ;
  wire [0:0]\gen_reg[1].reg_data_reg[63] ;
  wire [0:0]\gen_reg[2].reg_data_reg[95] ;
  wire [0:0]\gen_reg[3].reg_data_reg[127] ;
  wire [0:0]\gen_reg[4].reg_data_reg[128] ;
  wire [0:0]\gen_reg[5].reg_data_reg[191] ;
  wire [0:0]\gen_reg[6].reg_data_reg[223] ;
  wire out0;
  wire p_0_in;
  wire s_axi_ctrl_aclk;
  wire s_axi_ctrl_areset;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [2:0]state;
  wire \state_reg_n_0_[2] ;
  wire [3:0]write_addr;

  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[0]),
        .Q(write_addr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[1]),
        .Q(write_addr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[2]),
        .Q(write_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[3]),
        .Q(write_addr[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_awaddr[4]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[0]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[10]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[11]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[12]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[13]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[14]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[15]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[16]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[17]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[18]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[19]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[1]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[20]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[21]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[22]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[23]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[24]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[25]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[26]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[27]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[28]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[29]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[2]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[30]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[31]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[3]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[4]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[5]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[6]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[7]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[8]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(s_axi_ctrl_wdata[9]),
        .Q(\gen_reg[0].reg_data_reg[31]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[0]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [0]),
        .I1(out0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[10]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [10]),
        .I1(out0),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[11]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [11]),
        .I1(out0),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[12]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [12]),
        .I1(out0),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[13]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [13]),
        .I1(out0),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[14]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [14]),
        .I1(out0),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[15]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [15]),
        .I1(out0),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[16]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [16]),
        .I1(out0),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[17]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [17]),
        .I1(out0),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[18]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [18]),
        .I1(out0),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[19]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [19]),
        .I1(out0),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[1]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [1]),
        .I1(out0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[20]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [20]),
        .I1(out0),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[21]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [21]),
        .I1(out0),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[22]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [22]),
        .I1(out0),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[23]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [23]),
        .I1(out0),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[24]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [24]),
        .I1(out0),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[25]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [25]),
        .I1(out0),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[26]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [26]),
        .I1(out0),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[27]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [27]),
        .I1(out0),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[28]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [28]),
        .I1(out0),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[29]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [29]),
        .I1(out0),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[2]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [2]),
        .I1(out0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[30]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [30]),
        .I1(out0),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \gen_reg[0].reg_data[31]_i_1 
       (.I0(out0),
        .I1(\gen_reg[0].reg_data[31]_i_3_n_0 ),
        .I2(write_addr[1]),
        .I3(p_0_in),
        .I4(write_addr[0]),
        .I5(write_addr[2]),
        .O(\gen_reg[0].reg_data_reg[31] ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \gen_reg[0].reg_data[31]_i_1__0 
       (.I0(write_addr[0]),
        .I1(write_addr[2]),
        .I2(p_0_in),
        .I3(write_addr[3]),
        .I4(Q[0]),
        .I5(write_addr[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[31]_i_2 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [31]),
        .I1(out0),
        .O(D[31]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_reg[0].reg_data[31]_i_3 
       (.I0(write_addr[3]),
        .I1(Q[0]),
        .O(\gen_reg[0].reg_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[3]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [3]),
        .I1(out0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[4]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [4]),
        .I1(out0),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[5]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [5]),
        .I1(out0),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[6]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [6]),
        .I1(out0),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[7]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [7]),
        .I1(out0),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[8]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [8]),
        .I1(out0),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_reg[0].reg_data[9]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[31]_0 [9]),
        .I1(out0),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \gen_reg[1].reg_data[63]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[2]),
        .I2(p_0_in),
        .I3(write_addr[3]),
        .I4(Q[0]),
        .I5(write_addr[1]),
        .O(\gen_reg[1].reg_data_reg[63] ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \gen_reg[2].reg_data[95]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(Q[0]),
        .I3(write_addr[3]),
        .I4(p_0_in),
        .I5(write_addr[2]),
        .O(\gen_reg[2].reg_data_reg[95] ));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \gen_reg[3].reg_data[127]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(Q[0]),
        .I3(write_addr[3]),
        .I4(p_0_in),
        .I5(write_addr[2]),
        .O(\gen_reg[3].reg_data_reg[127] ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \gen_reg[4].reg_data[159]_i_1 
       (.I0(write_addr[0]),
        .I1(p_0_in),
        .I2(write_addr[3]),
        .I3(Q[0]),
        .I4(write_addr[2]),
        .I5(write_addr[1]),
        .O(\gen_reg[4].reg_data_reg[128] ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \gen_reg[5].reg_data[191]_i_1 
       (.I0(write_addr[0]),
        .I1(p_0_in),
        .I2(write_addr[3]),
        .I3(Q[0]),
        .I4(write_addr[2]),
        .I5(write_addr[1]),
        .O(\gen_reg[5].reg_data_reg[191] ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \gen_reg[6].reg_data[223]_i_1 
       (.I0(write_addr[0]),
        .I1(write_addr[1]),
        .I2(write_addr[2]),
        .I3(Q[0]),
        .I4(write_addr[3]),
        .I5(p_0_in),
        .O(\gen_reg[6].reg_data_reg[223] ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(s_axi_ctrl_awvalid),
        .I3(s_axi_ctrl_wvalid),
        .I4(\gen_reg[0].reg_data_reg[1] ),
        .I5(Q[1]),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00000350)) 
    \state[1]_i_1 
       (.I0(s_axi_ctrl_bready),
        .I1(\gen_reg[0].reg_data_reg[1] ),
        .I2(Q[1]),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[0]),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h1140)) 
    \state[2]_i_1 
       (.I0(Q[1]),
        .I1(\state_reg_n_0_[2] ),
        .I2(\gen_reg[0].reg_data_reg[1] ),
        .I3(Q[0]),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(s_axi_ctrl_areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(s_axi_ctrl_areset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(s_axi_ctrl_areset));
endmodule

(* C_ARB_ALGORITHM = "0" *) (* C_ARB_ON_MAX_XFERS = "1" *) (* C_ARB_ON_NUM_CYCLES = "0" *) 
(* C_ARB_ON_TLAST = "0" *) (* C_AXIS_SIGNAL_SET = "27" *) (* C_AXIS_TDATA_WIDTH = "32" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_COMMON_CLOCK = "0" *) (* C_DECODER_REG = "1" *) (* C_FAMILY = "virtex7" *) 
(* C_INCLUDE_ARBITER = "1" *) (* C_LOG_SI_SLOTS = "3" *) (* C_M_AXIS_BASETDEST_ARRAY = "7'b0101010" *) 
(* C_M_AXIS_CONNECTIVITY_ARRAY = "49'b1111111111111111111111111111111111111111111111111" *) (* C_M_AXIS_HIGHTDEST_ARRAY = "7'b0101010" *) (* C_NUM_MI_SLOTS = "7" *) 
(* C_NUM_SI_SLOTS = "7" *) (* C_OUTPUT_REG = "0" *) (* C_ROUTING_MODE = "1" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CTRL_REG_WIDTH = "70" *) (* LP_MERGEDOWN_MUX = "0" *) 
(* LP_NUM_SYNCHRONIZER_STAGES = "4" *) (* P_DECODER_CONNECTIVITY_ARRAY = "49'b1111111111111111111111111111111111111111111111111" *) (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "7'b0000000" *) 
(* P_TPAYLOAD_WIDTH = "37" *) 
module top_xbar_4_axis_switch_v1_1_8_axis_switch
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    arb_req,
    arb_done,
    arb_gnt,
    arb_sel,
    arb_last,
    arb_id,
    arb_dest,
    arb_user,
    s_req_suppress,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_decode_err);
  input aclk;
  input aresetn;
  input aclken;
  input [6:0]s_axis_tvalid;
  output [6:0]s_axis_tready;
  input [223:0]s_axis_tdata;
  input [27:0]s_axis_tstrb;
  input [27:0]s_axis_tkeep;
  input [6:0]s_axis_tlast;
  input [6:0]s_axis_tid;
  input [6:0]s_axis_tdest;
  input [6:0]s_axis_tuser;
  output [6:0]m_axis_tvalid;
  input [6:0]m_axis_tready;
  output [223:0]m_axis_tdata;
  output [27:0]m_axis_tstrb;
  output [27:0]m_axis_tkeep;
  output [6:0]m_axis_tlast;
  output [6:0]m_axis_tid;
  output [6:0]m_axis_tdest;
  output [6:0]m_axis_tuser;
  output [48:0]arb_req;
  output [6:0]arb_done;
  input [48:0]arb_gnt;
  input [20:0]arb_sel;
  output [48:0]arb_last;
  output [48:0]arb_id;
  output [48:0]arb_dest;
  output [48:0]arb_user;
  input [6:0]s_req_suppress;
  input s_axi_ctrl_aclk;
  input s_axi_ctrl_aresetn;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [6:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  input [31:0]s_axi_ctrl_wdata;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  output [1:0]s_axi_ctrl_bresp;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  input [6:0]s_axi_ctrl_araddr;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output [6:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire [69:0]cdc_handshake_data_out;
  wire cdc_handshake_data_valid;
  wire ctrl_ack;
  wire [69:0]ctrl_reg;
  wire ctrl_req;
  wire ctrl_soft_reset;
  wire \gen_decoder[4].axisc_decoder_0_n_0 ;
  wire \gen_decoder[4].axisc_decoder_0_n_3 ;
  wire \gen_decoder[5].axisc_decoder_0_n_0 ;
  wire \gen_decoder[6].axisc_decoder_0_n_0 ;
  wire \gen_decoder[6].axisc_decoder_0_n_1 ;
  wire \gen_decoder[6].axisc_decoder_0_n_10 ;
  wire \gen_decoder[6].axisc_decoder_0_n_100 ;
  wire \gen_decoder[6].axisc_decoder_0_n_101 ;
  wire \gen_decoder[6].axisc_decoder_0_n_102 ;
  wire \gen_decoder[6].axisc_decoder_0_n_103 ;
  wire \gen_decoder[6].axisc_decoder_0_n_104 ;
  wire \gen_decoder[6].axisc_decoder_0_n_105 ;
  wire \gen_decoder[6].axisc_decoder_0_n_106 ;
  wire \gen_decoder[6].axisc_decoder_0_n_107 ;
  wire \gen_decoder[6].axisc_decoder_0_n_108 ;
  wire \gen_decoder[6].axisc_decoder_0_n_109 ;
  wire \gen_decoder[6].axisc_decoder_0_n_11 ;
  wire \gen_decoder[6].axisc_decoder_0_n_110 ;
  wire \gen_decoder[6].axisc_decoder_0_n_111 ;
  wire \gen_decoder[6].axisc_decoder_0_n_112 ;
  wire \gen_decoder[6].axisc_decoder_0_n_113 ;
  wire \gen_decoder[6].axisc_decoder_0_n_114 ;
  wire \gen_decoder[6].axisc_decoder_0_n_115 ;
  wire \gen_decoder[6].axisc_decoder_0_n_116 ;
  wire \gen_decoder[6].axisc_decoder_0_n_117 ;
  wire \gen_decoder[6].axisc_decoder_0_n_118 ;
  wire \gen_decoder[6].axisc_decoder_0_n_119 ;
  wire \gen_decoder[6].axisc_decoder_0_n_12 ;
  wire \gen_decoder[6].axisc_decoder_0_n_120 ;
  wire \gen_decoder[6].axisc_decoder_0_n_121 ;
  wire \gen_decoder[6].axisc_decoder_0_n_122 ;
  wire \gen_decoder[6].axisc_decoder_0_n_123 ;
  wire \gen_decoder[6].axisc_decoder_0_n_124 ;
  wire \gen_decoder[6].axisc_decoder_0_n_125 ;
  wire \gen_decoder[6].axisc_decoder_0_n_126 ;
  wire \gen_decoder[6].axisc_decoder_0_n_127 ;
  wire \gen_decoder[6].axisc_decoder_0_n_128 ;
  wire \gen_decoder[6].axisc_decoder_0_n_129 ;
  wire \gen_decoder[6].axisc_decoder_0_n_13 ;
  wire \gen_decoder[6].axisc_decoder_0_n_130 ;
  wire \gen_decoder[6].axisc_decoder_0_n_131 ;
  wire \gen_decoder[6].axisc_decoder_0_n_132 ;
  wire \gen_decoder[6].axisc_decoder_0_n_133 ;
  wire \gen_decoder[6].axisc_decoder_0_n_134 ;
  wire \gen_decoder[6].axisc_decoder_0_n_135 ;
  wire \gen_decoder[6].axisc_decoder_0_n_136 ;
  wire \gen_decoder[6].axisc_decoder_0_n_137 ;
  wire \gen_decoder[6].axisc_decoder_0_n_138 ;
  wire \gen_decoder[6].axisc_decoder_0_n_139 ;
  wire \gen_decoder[6].axisc_decoder_0_n_14 ;
  wire \gen_decoder[6].axisc_decoder_0_n_140 ;
  wire \gen_decoder[6].axisc_decoder_0_n_141 ;
  wire \gen_decoder[6].axisc_decoder_0_n_142 ;
  wire \gen_decoder[6].axisc_decoder_0_n_143 ;
  wire \gen_decoder[6].axisc_decoder_0_n_144 ;
  wire \gen_decoder[6].axisc_decoder_0_n_145 ;
  wire \gen_decoder[6].axisc_decoder_0_n_146 ;
  wire \gen_decoder[6].axisc_decoder_0_n_147 ;
  wire \gen_decoder[6].axisc_decoder_0_n_148 ;
  wire \gen_decoder[6].axisc_decoder_0_n_149 ;
  wire \gen_decoder[6].axisc_decoder_0_n_15 ;
  wire \gen_decoder[6].axisc_decoder_0_n_150 ;
  wire \gen_decoder[6].axisc_decoder_0_n_151 ;
  wire \gen_decoder[6].axisc_decoder_0_n_152 ;
  wire \gen_decoder[6].axisc_decoder_0_n_153 ;
  wire \gen_decoder[6].axisc_decoder_0_n_154 ;
  wire \gen_decoder[6].axisc_decoder_0_n_155 ;
  wire \gen_decoder[6].axisc_decoder_0_n_156 ;
  wire \gen_decoder[6].axisc_decoder_0_n_157 ;
  wire \gen_decoder[6].axisc_decoder_0_n_158 ;
  wire \gen_decoder[6].axisc_decoder_0_n_159 ;
  wire \gen_decoder[6].axisc_decoder_0_n_16 ;
  wire \gen_decoder[6].axisc_decoder_0_n_160 ;
  wire \gen_decoder[6].axisc_decoder_0_n_161 ;
  wire \gen_decoder[6].axisc_decoder_0_n_162 ;
  wire \gen_decoder[6].axisc_decoder_0_n_163 ;
  wire \gen_decoder[6].axisc_decoder_0_n_164 ;
  wire \gen_decoder[6].axisc_decoder_0_n_165 ;
  wire \gen_decoder[6].axisc_decoder_0_n_166 ;
  wire \gen_decoder[6].axisc_decoder_0_n_167 ;
  wire \gen_decoder[6].axisc_decoder_0_n_168 ;
  wire \gen_decoder[6].axisc_decoder_0_n_169 ;
  wire \gen_decoder[6].axisc_decoder_0_n_17 ;
  wire \gen_decoder[6].axisc_decoder_0_n_170 ;
  wire \gen_decoder[6].axisc_decoder_0_n_171 ;
  wire \gen_decoder[6].axisc_decoder_0_n_172 ;
  wire \gen_decoder[6].axisc_decoder_0_n_173 ;
  wire \gen_decoder[6].axisc_decoder_0_n_174 ;
  wire \gen_decoder[6].axisc_decoder_0_n_175 ;
  wire \gen_decoder[6].axisc_decoder_0_n_176 ;
  wire \gen_decoder[6].axisc_decoder_0_n_177 ;
  wire \gen_decoder[6].axisc_decoder_0_n_178 ;
  wire \gen_decoder[6].axisc_decoder_0_n_179 ;
  wire \gen_decoder[6].axisc_decoder_0_n_18 ;
  wire \gen_decoder[6].axisc_decoder_0_n_180 ;
  wire \gen_decoder[6].axisc_decoder_0_n_181 ;
  wire \gen_decoder[6].axisc_decoder_0_n_182 ;
  wire \gen_decoder[6].axisc_decoder_0_n_183 ;
  wire \gen_decoder[6].axisc_decoder_0_n_184 ;
  wire \gen_decoder[6].axisc_decoder_0_n_185 ;
  wire \gen_decoder[6].axisc_decoder_0_n_186 ;
  wire \gen_decoder[6].axisc_decoder_0_n_187 ;
  wire \gen_decoder[6].axisc_decoder_0_n_188 ;
  wire \gen_decoder[6].axisc_decoder_0_n_189 ;
  wire \gen_decoder[6].axisc_decoder_0_n_19 ;
  wire \gen_decoder[6].axisc_decoder_0_n_190 ;
  wire \gen_decoder[6].axisc_decoder_0_n_191 ;
  wire \gen_decoder[6].axisc_decoder_0_n_192 ;
  wire \gen_decoder[6].axisc_decoder_0_n_193 ;
  wire \gen_decoder[6].axisc_decoder_0_n_194 ;
  wire \gen_decoder[6].axisc_decoder_0_n_195 ;
  wire \gen_decoder[6].axisc_decoder_0_n_196 ;
  wire \gen_decoder[6].axisc_decoder_0_n_197 ;
  wire \gen_decoder[6].axisc_decoder_0_n_198 ;
  wire \gen_decoder[6].axisc_decoder_0_n_199 ;
  wire \gen_decoder[6].axisc_decoder_0_n_2 ;
  wire \gen_decoder[6].axisc_decoder_0_n_20 ;
  wire \gen_decoder[6].axisc_decoder_0_n_200 ;
  wire \gen_decoder[6].axisc_decoder_0_n_201 ;
  wire \gen_decoder[6].axisc_decoder_0_n_202 ;
  wire \gen_decoder[6].axisc_decoder_0_n_203 ;
  wire \gen_decoder[6].axisc_decoder_0_n_204 ;
  wire \gen_decoder[6].axisc_decoder_0_n_205 ;
  wire \gen_decoder[6].axisc_decoder_0_n_206 ;
  wire \gen_decoder[6].axisc_decoder_0_n_207 ;
  wire \gen_decoder[6].axisc_decoder_0_n_208 ;
  wire \gen_decoder[6].axisc_decoder_0_n_209 ;
  wire \gen_decoder[6].axisc_decoder_0_n_21 ;
  wire \gen_decoder[6].axisc_decoder_0_n_210 ;
  wire \gen_decoder[6].axisc_decoder_0_n_211 ;
  wire \gen_decoder[6].axisc_decoder_0_n_212 ;
  wire \gen_decoder[6].axisc_decoder_0_n_213 ;
  wire \gen_decoder[6].axisc_decoder_0_n_214 ;
  wire \gen_decoder[6].axisc_decoder_0_n_215 ;
  wire \gen_decoder[6].axisc_decoder_0_n_216 ;
  wire \gen_decoder[6].axisc_decoder_0_n_217 ;
  wire \gen_decoder[6].axisc_decoder_0_n_218 ;
  wire \gen_decoder[6].axisc_decoder_0_n_219 ;
  wire \gen_decoder[6].axisc_decoder_0_n_22 ;
  wire \gen_decoder[6].axisc_decoder_0_n_220 ;
  wire \gen_decoder[6].axisc_decoder_0_n_221 ;
  wire \gen_decoder[6].axisc_decoder_0_n_222 ;
  wire \gen_decoder[6].axisc_decoder_0_n_223 ;
  wire \gen_decoder[6].axisc_decoder_0_n_224 ;
  wire \gen_decoder[6].axisc_decoder_0_n_225 ;
  wire \gen_decoder[6].axisc_decoder_0_n_226 ;
  wire \gen_decoder[6].axisc_decoder_0_n_227 ;
  wire \gen_decoder[6].axisc_decoder_0_n_228 ;
  wire \gen_decoder[6].axisc_decoder_0_n_229 ;
  wire \gen_decoder[6].axisc_decoder_0_n_23 ;
  wire \gen_decoder[6].axisc_decoder_0_n_230 ;
  wire \gen_decoder[6].axisc_decoder_0_n_231 ;
  wire \gen_decoder[6].axisc_decoder_0_n_232 ;
  wire \gen_decoder[6].axisc_decoder_0_n_233 ;
  wire \gen_decoder[6].axisc_decoder_0_n_234 ;
  wire \gen_decoder[6].axisc_decoder_0_n_235 ;
  wire \gen_decoder[6].axisc_decoder_0_n_236 ;
  wire \gen_decoder[6].axisc_decoder_0_n_237 ;
  wire \gen_decoder[6].axisc_decoder_0_n_238 ;
  wire \gen_decoder[6].axisc_decoder_0_n_239 ;
  wire \gen_decoder[6].axisc_decoder_0_n_24 ;
  wire \gen_decoder[6].axisc_decoder_0_n_240 ;
  wire \gen_decoder[6].axisc_decoder_0_n_241 ;
  wire \gen_decoder[6].axisc_decoder_0_n_242 ;
  wire \gen_decoder[6].axisc_decoder_0_n_243 ;
  wire \gen_decoder[6].axisc_decoder_0_n_244 ;
  wire \gen_decoder[6].axisc_decoder_0_n_245 ;
  wire \gen_decoder[6].axisc_decoder_0_n_246 ;
  wire \gen_decoder[6].axisc_decoder_0_n_247 ;
  wire \gen_decoder[6].axisc_decoder_0_n_248 ;
  wire \gen_decoder[6].axisc_decoder_0_n_249 ;
  wire \gen_decoder[6].axisc_decoder_0_n_25 ;
  wire \gen_decoder[6].axisc_decoder_0_n_250 ;
  wire \gen_decoder[6].axisc_decoder_0_n_251 ;
  wire \gen_decoder[6].axisc_decoder_0_n_252 ;
  wire \gen_decoder[6].axisc_decoder_0_n_253 ;
  wire \gen_decoder[6].axisc_decoder_0_n_254 ;
  wire \gen_decoder[6].axisc_decoder_0_n_255 ;
  wire \gen_decoder[6].axisc_decoder_0_n_256 ;
  wire \gen_decoder[6].axisc_decoder_0_n_257 ;
  wire \gen_decoder[6].axisc_decoder_0_n_258 ;
  wire \gen_decoder[6].axisc_decoder_0_n_259 ;
  wire \gen_decoder[6].axisc_decoder_0_n_26 ;
  wire \gen_decoder[6].axisc_decoder_0_n_260 ;
  wire \gen_decoder[6].axisc_decoder_0_n_261 ;
  wire \gen_decoder[6].axisc_decoder_0_n_262 ;
  wire \gen_decoder[6].axisc_decoder_0_n_263 ;
  wire \gen_decoder[6].axisc_decoder_0_n_264 ;
  wire \gen_decoder[6].axisc_decoder_0_n_265 ;
  wire \gen_decoder[6].axisc_decoder_0_n_266 ;
  wire \gen_decoder[6].axisc_decoder_0_n_268 ;
  wire \gen_decoder[6].axisc_decoder_0_n_269 ;
  wire \gen_decoder[6].axisc_decoder_0_n_27 ;
  wire \gen_decoder[6].axisc_decoder_0_n_28 ;
  wire \gen_decoder[6].axisc_decoder_0_n_29 ;
  wire \gen_decoder[6].axisc_decoder_0_n_3 ;
  wire \gen_decoder[6].axisc_decoder_0_n_30 ;
  wire \gen_decoder[6].axisc_decoder_0_n_31 ;
  wire \gen_decoder[6].axisc_decoder_0_n_32 ;
  wire \gen_decoder[6].axisc_decoder_0_n_33 ;
  wire \gen_decoder[6].axisc_decoder_0_n_34 ;
  wire \gen_decoder[6].axisc_decoder_0_n_35 ;
  wire \gen_decoder[6].axisc_decoder_0_n_36 ;
  wire \gen_decoder[6].axisc_decoder_0_n_37 ;
  wire \gen_decoder[6].axisc_decoder_0_n_38 ;
  wire \gen_decoder[6].axisc_decoder_0_n_39 ;
  wire \gen_decoder[6].axisc_decoder_0_n_4 ;
  wire \gen_decoder[6].axisc_decoder_0_n_40 ;
  wire \gen_decoder[6].axisc_decoder_0_n_41 ;
  wire \gen_decoder[6].axisc_decoder_0_n_42 ;
  wire \gen_decoder[6].axisc_decoder_0_n_43 ;
  wire \gen_decoder[6].axisc_decoder_0_n_44 ;
  wire \gen_decoder[6].axisc_decoder_0_n_45 ;
  wire \gen_decoder[6].axisc_decoder_0_n_46 ;
  wire \gen_decoder[6].axisc_decoder_0_n_47 ;
  wire \gen_decoder[6].axisc_decoder_0_n_48 ;
  wire \gen_decoder[6].axisc_decoder_0_n_49 ;
  wire \gen_decoder[6].axisc_decoder_0_n_5 ;
  wire \gen_decoder[6].axisc_decoder_0_n_50 ;
  wire \gen_decoder[6].axisc_decoder_0_n_51 ;
  wire \gen_decoder[6].axisc_decoder_0_n_52 ;
  wire \gen_decoder[6].axisc_decoder_0_n_53 ;
  wire \gen_decoder[6].axisc_decoder_0_n_54 ;
  wire \gen_decoder[6].axisc_decoder_0_n_55 ;
  wire \gen_decoder[6].axisc_decoder_0_n_56 ;
  wire \gen_decoder[6].axisc_decoder_0_n_57 ;
  wire \gen_decoder[6].axisc_decoder_0_n_58 ;
  wire \gen_decoder[6].axisc_decoder_0_n_59 ;
  wire \gen_decoder[6].axisc_decoder_0_n_6 ;
  wire \gen_decoder[6].axisc_decoder_0_n_60 ;
  wire \gen_decoder[6].axisc_decoder_0_n_61 ;
  wire \gen_decoder[6].axisc_decoder_0_n_62 ;
  wire \gen_decoder[6].axisc_decoder_0_n_63 ;
  wire \gen_decoder[6].axisc_decoder_0_n_64 ;
  wire \gen_decoder[6].axisc_decoder_0_n_65 ;
  wire \gen_decoder[6].axisc_decoder_0_n_66 ;
  wire \gen_decoder[6].axisc_decoder_0_n_67 ;
  wire \gen_decoder[6].axisc_decoder_0_n_68 ;
  wire \gen_decoder[6].axisc_decoder_0_n_69 ;
  wire \gen_decoder[6].axisc_decoder_0_n_7 ;
  wire \gen_decoder[6].axisc_decoder_0_n_70 ;
  wire \gen_decoder[6].axisc_decoder_0_n_71 ;
  wire \gen_decoder[6].axisc_decoder_0_n_72 ;
  wire \gen_decoder[6].axisc_decoder_0_n_73 ;
  wire \gen_decoder[6].axisc_decoder_0_n_74 ;
  wire \gen_decoder[6].axisc_decoder_0_n_75 ;
  wire \gen_decoder[6].axisc_decoder_0_n_76 ;
  wire \gen_decoder[6].axisc_decoder_0_n_77 ;
  wire \gen_decoder[6].axisc_decoder_0_n_78 ;
  wire \gen_decoder[6].axisc_decoder_0_n_79 ;
  wire \gen_decoder[6].axisc_decoder_0_n_8 ;
  wire \gen_decoder[6].axisc_decoder_0_n_80 ;
  wire \gen_decoder[6].axisc_decoder_0_n_81 ;
  wire \gen_decoder[6].axisc_decoder_0_n_82 ;
  wire \gen_decoder[6].axisc_decoder_0_n_83 ;
  wire \gen_decoder[6].axisc_decoder_0_n_84 ;
  wire \gen_decoder[6].axisc_decoder_0_n_85 ;
  wire \gen_decoder[6].axisc_decoder_0_n_86 ;
  wire \gen_decoder[6].axisc_decoder_0_n_87 ;
  wire \gen_decoder[6].axisc_decoder_0_n_88 ;
  wire \gen_decoder[6].axisc_decoder_0_n_89 ;
  wire \gen_decoder[6].axisc_decoder_0_n_9 ;
  wire \gen_decoder[6].axisc_decoder_0_n_90 ;
  wire \gen_decoder[6].axisc_decoder_0_n_91 ;
  wire \gen_decoder[6].axisc_decoder_0_n_92 ;
  wire \gen_decoder[6].axisc_decoder_0_n_93 ;
  wire \gen_decoder[6].axisc_decoder_0_n_94 ;
  wire \gen_decoder[6].axisc_decoder_0_n_95 ;
  wire \gen_decoder[6].axisc_decoder_0_n_96 ;
  wire \gen_decoder[6].axisc_decoder_0_n_97 ;
  wire \gen_decoder[6].axisc_decoder_0_n_98 ;
  wire \gen_decoder[6].axisc_decoder_0_n_99 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[20] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ;
  wire \gen_static_router.gen_synch.inst_rst_synch_n_0 ;
  wire [223:0]m_axis_tdata;
  wire [27:0]m_axis_tkeep;
  wire [6:0]m_axis_tlast;
  wire [6:0]m_axis_tready;
  wire [6:0]m_axis_tvalid;
  wire [6:0]mi_enable;
  wire [47:42]mux_tvalid;
  wire p_0_in;
  wire [36:0]p_12_out;
  wire [36:0]p_22_out;
  wire [36:0]p_27_out;
  wire [36:0]p_32_out;
  wire [36:0]p_7_out;
  wire s_axi_ctrl_aclk;
  wire [6:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_areset;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [6:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [223:0]s_axis_tdata;
  wire [27:0]s_axis_tkeep;
  wire [6:0]s_axis_tlast;
  wire [6:0]s_axis_tready;
  wire [6:0]s_axis_tvalid;
  wire [6:0]si_enable;

  assign arb_dest[48] = \<const0> ;
  assign arb_dest[47] = \<const0> ;
  assign arb_dest[46] = \<const0> ;
  assign arb_dest[45] = \<const0> ;
  assign arb_dest[44] = \<const0> ;
  assign arb_dest[43] = \<const0> ;
  assign arb_dest[42] = \<const0> ;
  assign arb_dest[41] = \<const0> ;
  assign arb_dest[40] = \<const0> ;
  assign arb_dest[39] = \<const0> ;
  assign arb_dest[38] = \<const0> ;
  assign arb_dest[37] = \<const0> ;
  assign arb_dest[36] = \<const0> ;
  assign arb_dest[35] = \<const0> ;
  assign arb_dest[34] = \<const0> ;
  assign arb_dest[33] = \<const0> ;
  assign arb_dest[32] = \<const0> ;
  assign arb_dest[31] = \<const0> ;
  assign arb_dest[30] = \<const0> ;
  assign arb_dest[29] = \<const0> ;
  assign arb_dest[28] = \<const0> ;
  assign arb_dest[27] = \<const0> ;
  assign arb_dest[26] = \<const0> ;
  assign arb_dest[25] = \<const0> ;
  assign arb_dest[24] = \<const0> ;
  assign arb_dest[23] = \<const0> ;
  assign arb_dest[22] = \<const0> ;
  assign arb_dest[21] = \<const0> ;
  assign arb_dest[20] = \<const0> ;
  assign arb_dest[19] = \<const0> ;
  assign arb_dest[18] = \<const0> ;
  assign arb_dest[17] = \<const0> ;
  assign arb_dest[16] = \<const0> ;
  assign arb_dest[15] = \<const0> ;
  assign arb_dest[14] = \<const0> ;
  assign arb_dest[13] = \<const0> ;
  assign arb_dest[12] = \<const0> ;
  assign arb_dest[11] = \<const0> ;
  assign arb_dest[10] = \<const0> ;
  assign arb_dest[9] = \<const0> ;
  assign arb_dest[8] = \<const0> ;
  assign arb_dest[7] = \<const0> ;
  assign arb_dest[6] = \<const0> ;
  assign arb_dest[5] = \<const0> ;
  assign arb_dest[4] = \<const0> ;
  assign arb_dest[3] = \<const0> ;
  assign arb_dest[2] = \<const0> ;
  assign arb_dest[1] = \<const0> ;
  assign arb_dest[0] = \<const0> ;
  assign arb_done[6] = \<const0> ;
  assign arb_done[5] = \<const0> ;
  assign arb_done[4] = \<const0> ;
  assign arb_done[3] = \<const0> ;
  assign arb_done[2] = \<const0> ;
  assign arb_done[1] = \<const0> ;
  assign arb_done[0] = \<const0> ;
  assign arb_id[48] = \<const0> ;
  assign arb_id[47] = \<const0> ;
  assign arb_id[46] = \<const0> ;
  assign arb_id[45] = \<const0> ;
  assign arb_id[44] = \<const0> ;
  assign arb_id[43] = \<const0> ;
  assign arb_id[42] = \<const0> ;
  assign arb_id[41] = \<const0> ;
  assign arb_id[40] = \<const0> ;
  assign arb_id[39] = \<const0> ;
  assign arb_id[38] = \<const0> ;
  assign arb_id[37] = \<const0> ;
  assign arb_id[36] = \<const0> ;
  assign arb_id[35] = \<const0> ;
  assign arb_id[34] = \<const0> ;
  assign arb_id[33] = \<const0> ;
  assign arb_id[32] = \<const0> ;
  assign arb_id[31] = \<const0> ;
  assign arb_id[30] = \<const0> ;
  assign arb_id[29] = \<const0> ;
  assign arb_id[28] = \<const0> ;
  assign arb_id[27] = \<const0> ;
  assign arb_id[26] = \<const0> ;
  assign arb_id[25] = \<const0> ;
  assign arb_id[24] = \<const0> ;
  assign arb_id[23] = \<const0> ;
  assign arb_id[22] = \<const0> ;
  assign arb_id[21] = \<const0> ;
  assign arb_id[20] = \<const0> ;
  assign arb_id[19] = \<const0> ;
  assign arb_id[18] = \<const0> ;
  assign arb_id[17] = \<const0> ;
  assign arb_id[16] = \<const0> ;
  assign arb_id[15] = \<const0> ;
  assign arb_id[14] = \<const0> ;
  assign arb_id[13] = \<const0> ;
  assign arb_id[12] = \<const0> ;
  assign arb_id[11] = \<const0> ;
  assign arb_id[10] = \<const0> ;
  assign arb_id[9] = \<const0> ;
  assign arb_id[8] = \<const0> ;
  assign arb_id[7] = \<const0> ;
  assign arb_id[6] = \<const0> ;
  assign arb_id[5] = \<const0> ;
  assign arb_id[4] = \<const0> ;
  assign arb_id[3] = \<const0> ;
  assign arb_id[2] = \<const0> ;
  assign arb_id[1] = \<const0> ;
  assign arb_id[0] = \<const0> ;
  assign arb_last[48] = \<const0> ;
  assign arb_last[47] = \<const0> ;
  assign arb_last[46] = \<const0> ;
  assign arb_last[45] = \<const0> ;
  assign arb_last[44] = \<const0> ;
  assign arb_last[43] = \<const0> ;
  assign arb_last[42] = \<const0> ;
  assign arb_last[41] = \<const0> ;
  assign arb_last[40] = \<const0> ;
  assign arb_last[39] = \<const0> ;
  assign arb_last[38] = \<const0> ;
  assign arb_last[37] = \<const0> ;
  assign arb_last[36] = \<const0> ;
  assign arb_last[35] = \<const0> ;
  assign arb_last[34] = \<const0> ;
  assign arb_last[33] = \<const0> ;
  assign arb_last[32] = \<const0> ;
  assign arb_last[31] = \<const0> ;
  assign arb_last[30] = \<const0> ;
  assign arb_last[29] = \<const0> ;
  assign arb_last[28] = \<const0> ;
  assign arb_last[27] = \<const0> ;
  assign arb_last[26] = \<const0> ;
  assign arb_last[25] = \<const0> ;
  assign arb_last[24] = \<const0> ;
  assign arb_last[23] = \<const0> ;
  assign arb_last[22] = \<const0> ;
  assign arb_last[21] = \<const0> ;
  assign arb_last[20] = \<const0> ;
  assign arb_last[19] = \<const0> ;
  assign arb_last[18] = \<const0> ;
  assign arb_last[17] = \<const0> ;
  assign arb_last[16] = \<const0> ;
  assign arb_last[15] = \<const0> ;
  assign arb_last[14] = \<const0> ;
  assign arb_last[13] = \<const0> ;
  assign arb_last[12] = \<const0> ;
  assign arb_last[11] = \<const0> ;
  assign arb_last[10] = \<const0> ;
  assign arb_last[9] = \<const0> ;
  assign arb_last[8] = \<const0> ;
  assign arb_last[7] = \<const0> ;
  assign arb_last[6] = \<const0> ;
  assign arb_last[5] = \<const0> ;
  assign arb_last[4] = \<const0> ;
  assign arb_last[3] = \<const0> ;
  assign arb_last[2] = \<const0> ;
  assign arb_last[1] = \<const0> ;
  assign arb_last[0] = \<const0> ;
  assign arb_req[48] = \<const0> ;
  assign arb_req[47] = \<const0> ;
  assign arb_req[46] = \<const0> ;
  assign arb_req[45] = \<const0> ;
  assign arb_req[44] = \<const0> ;
  assign arb_req[43] = \<const0> ;
  assign arb_req[42] = \<const0> ;
  assign arb_req[41] = \<const0> ;
  assign arb_req[40] = \<const0> ;
  assign arb_req[39] = \<const0> ;
  assign arb_req[38] = \<const0> ;
  assign arb_req[37] = \<const0> ;
  assign arb_req[36] = \<const0> ;
  assign arb_req[35] = \<const0> ;
  assign arb_req[34] = \<const0> ;
  assign arb_req[33] = \<const0> ;
  assign arb_req[32] = \<const0> ;
  assign arb_req[31] = \<const0> ;
  assign arb_req[30] = \<const0> ;
  assign arb_req[29] = \<const0> ;
  assign arb_req[28] = \<const0> ;
  assign arb_req[27] = \<const0> ;
  assign arb_req[26] = \<const0> ;
  assign arb_req[25] = \<const0> ;
  assign arb_req[24] = \<const0> ;
  assign arb_req[23] = \<const0> ;
  assign arb_req[22] = \<const0> ;
  assign arb_req[21] = \<const0> ;
  assign arb_req[20] = \<const0> ;
  assign arb_req[19] = \<const0> ;
  assign arb_req[18] = \<const0> ;
  assign arb_req[17] = \<const0> ;
  assign arb_req[16] = \<const0> ;
  assign arb_req[15] = \<const0> ;
  assign arb_req[14] = \<const0> ;
  assign arb_req[13] = \<const0> ;
  assign arb_req[12] = \<const0> ;
  assign arb_req[11] = \<const0> ;
  assign arb_req[10] = \<const0> ;
  assign arb_req[9] = \<const0> ;
  assign arb_req[8] = \<const0> ;
  assign arb_req[7] = \<const0> ;
  assign arb_req[6] = \<const0> ;
  assign arb_req[5] = \<const0> ;
  assign arb_req[4] = \<const0> ;
  assign arb_req[3] = \<const0> ;
  assign arb_req[2] = \<const0> ;
  assign arb_req[1] = \<const0> ;
  assign arb_req[0] = \<const0> ;
  assign arb_user[48] = \<const0> ;
  assign arb_user[47] = \<const0> ;
  assign arb_user[46] = \<const0> ;
  assign arb_user[45] = \<const0> ;
  assign arb_user[44] = \<const0> ;
  assign arb_user[43] = \<const0> ;
  assign arb_user[42] = \<const0> ;
  assign arb_user[41] = \<const0> ;
  assign arb_user[40] = \<const0> ;
  assign arb_user[39] = \<const0> ;
  assign arb_user[38] = \<const0> ;
  assign arb_user[37] = \<const0> ;
  assign arb_user[36] = \<const0> ;
  assign arb_user[35] = \<const0> ;
  assign arb_user[34] = \<const0> ;
  assign arb_user[33] = \<const0> ;
  assign arb_user[32] = \<const0> ;
  assign arb_user[31] = \<const0> ;
  assign arb_user[30] = \<const0> ;
  assign arb_user[29] = \<const0> ;
  assign arb_user[28] = \<const0> ;
  assign arb_user[27] = \<const0> ;
  assign arb_user[26] = \<const0> ;
  assign arb_user[25] = \<const0> ;
  assign arb_user[24] = \<const0> ;
  assign arb_user[23] = \<const0> ;
  assign arb_user[22] = \<const0> ;
  assign arb_user[21] = \<const0> ;
  assign arb_user[20] = \<const0> ;
  assign arb_user[19] = \<const0> ;
  assign arb_user[18] = \<const0> ;
  assign arb_user[17] = \<const0> ;
  assign arb_user[16] = \<const0> ;
  assign arb_user[15] = \<const0> ;
  assign arb_user[14] = \<const0> ;
  assign arb_user[13] = \<const0> ;
  assign arb_user[12] = \<const0> ;
  assign arb_user[11] = \<const0> ;
  assign arb_user[10] = \<const0> ;
  assign arb_user[9] = \<const0> ;
  assign arb_user[8] = \<const0> ;
  assign arb_user[7] = \<const0> ;
  assign arb_user[6] = \<const0> ;
  assign arb_user[5] = \<const0> ;
  assign arb_user[4] = \<const0> ;
  assign arb_user[3] = \<const0> ;
  assign arb_user[2] = \<const0> ;
  assign arb_user[1] = \<const0> ;
  assign arb_user[0] = \<const0> ;
  assign m_axis_tdest[6] = \<const0> ;
  assign m_axis_tdest[5] = \<const0> ;
  assign m_axis_tdest[4] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[27] = \<const0> ;
  assign m_axis_tstrb[26] = \<const0> ;
  assign m_axis_tstrb[25] = \<const0> ;
  assign m_axis_tstrb[24] = \<const0> ;
  assign m_axis_tstrb[23] = \<const0> ;
  assign m_axis_tstrb[22] = \<const0> ;
  assign m_axis_tstrb[21] = \<const0> ;
  assign m_axis_tstrb[20] = \<const0> ;
  assign m_axis_tstrb[19] = \<const0> ;
  assign m_axis_tstrb[18] = \<const0> ;
  assign m_axis_tstrb[17] = \<const0> ;
  assign m_axis_tstrb[16] = \<const0> ;
  assign m_axis_tstrb[15] = \<const0> ;
  assign m_axis_tstrb[14] = \<const0> ;
  assign m_axis_tstrb[13] = \<const0> ;
  assign m_axis_tstrb[12] = \<const0> ;
  assign m_axis_tstrb[11] = \<const0> ;
  assign m_axis_tstrb[10] = \<const0> ;
  assign m_axis_tstrb[9] = \<const0> ;
  assign m_axis_tstrb[8] = \<const0> ;
  assign m_axis_tstrb[7] = \<const0> ;
  assign m_axis_tstrb[6] = \<const0> ;
  assign m_axis_tstrb[5] = \<const0> ;
  assign m_axis_tstrb[4] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[6] = \<const0> ;
  assign m_axis_tuser[5] = \<const0> ;
  assign m_axis_tuser[4] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign s_axi_ctrl_awready = s_axi_ctrl_wready;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_decode_err[6] = \<const0> ;
  assign s_decode_err[5] = \<const0> ;
  assign s_decode_err[4] = \<const0> ;
  assign s_decode_err[3] = \<const0> ;
  assign s_decode_err[2] = \<const0> ;
  assign s_decode_err[1] = \<const0> ;
  assign s_decode_err[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_static_router.gen_synch.inst_rst_synch_n_0 ),
        .Q(areset_r),
        .R(1'b0));
  top_xbar_4_axis_switch_v1_1_8_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.S_AXIS_TPAYLOAD({s_axis_tlast[0],s_axis_tkeep[3:0],s_axis_tdata[31:0]}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch({si_enable[0],mi_enable[6],mi_enable[4:0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] (\gen_decoder[4].axisc_decoder_0_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_decoder[6].axisc_decoder_0_n_268 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_decoder[6].axisc_decoder_0_n_269 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] (\gen_decoder[4].axisc_decoder_0_n_3 ),
        .m_axis_tready({m_axis_tready[6],m_axis_tready[4:0]}),
        .mux_tvalid(mux_tvalid[42]),
        .p_32_out(p_32_out),
        .\s_axis_tready[0] (s_axis_tready[0]),
        .s_axis_tvalid(s_axis_tvalid[0]));
  top_xbar_4_axis_switch_v1_1_8_axisc_decoder_0 \gen_decoder[1].axisc_decoder_0 
       (.S_AXIS_TPAYLOAD({s_axis_tlast[1],s_axis_tkeep[7:4],s_axis_tdata[63:32]}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch({si_enable[1],mi_enable[6],mi_enable[4:0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[20] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] (\gen_decoder[5].axisc_decoder_0_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_decoder[6].axisc_decoder_0_n_268 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_decoder[6].axisc_decoder_0_n_269 ),
        .m_axis_tready({m_axis_tready[6],m_axis_tready[4:0]}),
        .mux_tvalid(mux_tvalid[43]),
        .p_27_out(p_27_out),
        .\s_axis_tready[1] (s_axis_tready[1]),
        .s_axis_tvalid(s_axis_tvalid[1]));
  top_xbar_4_axis_switch_v1_1_8_axisc_decoder_1 \gen_decoder[2].axisc_decoder_0 
       (.S_AXIS_TPAYLOAD({s_axis_tlast[2],s_axis_tkeep[11:8],s_axis_tdata[95:64]}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch({si_enable[2],mi_enable[6],mi_enable[4:0],\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_decoder[6].axisc_decoder_0_n_268 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_decoder[6].axisc_decoder_0_n_269 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] (\gen_decoder[6].axisc_decoder_0_n_227 ),
        .m_axis_tready({m_axis_tready[6],m_axis_tready[4:0]}),
        .mux_tvalid(mux_tvalid[44]),
        .p_22_out(p_22_out),
        .\s_axis_tready[2] (s_axis_tready[2]),
        .s_axis_tvalid(s_axis_tvalid[2]));
  top_xbar_4_axis_switch_v1_1_8_axisc_decoder_2 \gen_decoder[3].axisc_decoder_0 
       (.S_AXIS_TPAYLOAD({s_axis_tlast[3],s_axis_tkeep[15:12],s_axis_tdata[127:96]}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch({si_enable[3],mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[20] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .\gen_AB_reg_slice.state_reg[0] (\gen_decoder[6].axisc_decoder_0_n_37 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (mux_tvalid[44:42]),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_decoder[6].axisc_decoder_0_n_75 ),
        .\gen_AB_reg_slice.state_reg[0]_2 (\gen_decoder[6].axisc_decoder_0_n_113 ),
        .\gen_AB_reg_slice.state_reg[0]_3 (\gen_decoder[6].axisc_decoder_0_n_151 ),
        .\gen_AB_reg_slice.state_reg[0]_4 (\gen_decoder[6].axisc_decoder_0_n_189 ),
        .\gen_AB_reg_slice.state_reg[0]_5 (\gen_decoder[6].axisc_decoder_0_n_228 ),
        .\gen_AB_reg_slice.state_reg[0]_6 (\gen_decoder[6].axisc_decoder_0_n_266 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] (\gen_decoder[6].axisc_decoder_0_n_114 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 (\gen_decoder[6].axisc_decoder_0_n_115 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 (\gen_decoder[6].axisc_decoder_0_n_116 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 (\gen_decoder[6].axisc_decoder_0_n_125 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 (\gen_decoder[6].axisc_decoder_0_n_126 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 (\gen_decoder[6].axisc_decoder_0_n_127 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 (\gen_decoder[6].axisc_decoder_0_n_128 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 (\gen_decoder[6].axisc_decoder_0_n_129 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 (\gen_decoder[6].axisc_decoder_0_n_130 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 (\gen_decoder[6].axisc_decoder_0_n_131 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 (\gen_decoder[6].axisc_decoder_0_n_132 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 (\gen_decoder[6].axisc_decoder_0_n_133 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 (\gen_decoder[6].axisc_decoder_0_n_134 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 (\gen_decoder[6].axisc_decoder_0_n_117 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 (\gen_decoder[6].axisc_decoder_0_n_135 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 (\gen_decoder[6].axisc_decoder_0_n_136 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 (\gen_decoder[6].axisc_decoder_0_n_137 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 (\gen_decoder[6].axisc_decoder_0_n_138 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 (\gen_decoder[6].axisc_decoder_0_n_139 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 (\gen_decoder[6].axisc_decoder_0_n_140 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 (\gen_decoder[6].axisc_decoder_0_n_141 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 (\gen_decoder[6].axisc_decoder_0_n_142 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 (\gen_decoder[6].axisc_decoder_0_n_143 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 (\gen_decoder[6].axisc_decoder_0_n_144 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 (\gen_decoder[6].axisc_decoder_0_n_118 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 (\gen_decoder[6].axisc_decoder_0_n_145 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 (\gen_decoder[6].axisc_decoder_0_n_146 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 (\gen_decoder[6].axisc_decoder_0_n_147 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 (\gen_decoder[6].axisc_decoder_0_n_148 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 (\gen_decoder[6].axisc_decoder_0_n_149 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 (\gen_decoder[6].axisc_decoder_0_n_150 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 (\gen_decoder[6].axisc_decoder_0_n_119 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 (\gen_decoder[6].axisc_decoder_0_n_120 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 (\gen_decoder[6].axisc_decoder_0_n_121 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 (\gen_decoder[6].axisc_decoder_0_n_122 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 (\gen_decoder[6].axisc_decoder_0_n_123 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 (\gen_decoder[6].axisc_decoder_0_n_124 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] (\gen_decoder[6].axisc_decoder_0_n_152 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 (\gen_decoder[6].axisc_decoder_0_n_153 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 (\gen_decoder[6].axisc_decoder_0_n_154 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 (\gen_decoder[6].axisc_decoder_0_n_163 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 (\gen_decoder[6].axisc_decoder_0_n_164 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 (\gen_decoder[6].axisc_decoder_0_n_165 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 (\gen_decoder[6].axisc_decoder_0_n_166 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 (\gen_decoder[6].axisc_decoder_0_n_167 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 (\gen_decoder[6].axisc_decoder_0_n_168 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 (\gen_decoder[6].axisc_decoder_0_n_169 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 (\gen_decoder[6].axisc_decoder_0_n_170 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 (\gen_decoder[6].axisc_decoder_0_n_171 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 (\gen_decoder[6].axisc_decoder_0_n_172 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 (\gen_decoder[6].axisc_decoder_0_n_155 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 (\gen_decoder[6].axisc_decoder_0_n_173 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 (\gen_decoder[6].axisc_decoder_0_n_174 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 (\gen_decoder[6].axisc_decoder_0_n_175 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 (\gen_decoder[6].axisc_decoder_0_n_176 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 (\gen_decoder[6].axisc_decoder_0_n_177 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 (\gen_decoder[6].axisc_decoder_0_n_178 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 (\gen_decoder[6].axisc_decoder_0_n_179 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 (\gen_decoder[6].axisc_decoder_0_n_180 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 (\gen_decoder[6].axisc_decoder_0_n_181 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 (\gen_decoder[6].axisc_decoder_0_n_182 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 (\gen_decoder[6].axisc_decoder_0_n_156 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 (\gen_decoder[6].axisc_decoder_0_n_183 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 (\gen_decoder[6].axisc_decoder_0_n_184 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 (\gen_decoder[6].axisc_decoder_0_n_185 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 (\gen_decoder[6].axisc_decoder_0_n_186 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 (\gen_decoder[6].axisc_decoder_0_n_187 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 (\gen_decoder[6].axisc_decoder_0_n_188 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 (\gen_decoder[6].axisc_decoder_0_n_157 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 (\gen_decoder[6].axisc_decoder_0_n_158 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 (\gen_decoder[6].axisc_decoder_0_n_159 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 (\gen_decoder[6].axisc_decoder_0_n_160 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 (\gen_decoder[6].axisc_decoder_0_n_161 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 (\gen_decoder[6].axisc_decoder_0_n_162 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] (\gen_decoder[6].axisc_decoder_0_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 (\gen_decoder[6].axisc_decoder_0_n_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 (\gen_decoder[6].axisc_decoder_0_n_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 (\gen_decoder[6].axisc_decoder_0_n_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 (\gen_decoder[6].axisc_decoder_0_n_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 (\gen_decoder[6].axisc_decoder_0_n_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 (\gen_decoder[6].axisc_decoder_0_n_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 (\gen_decoder[6].axisc_decoder_0_n_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 (\gen_decoder[6].axisc_decoder_0_n_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 (\gen_decoder[6].axisc_decoder_0_n_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 (\gen_decoder[6].axisc_decoder_0_n_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 (\gen_decoder[6].axisc_decoder_0_n_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 (\gen_decoder[6].axisc_decoder_0_n_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 (\gen_decoder[6].axisc_decoder_0_n_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 (\gen_decoder[6].axisc_decoder_0_n_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 (\gen_decoder[6].axisc_decoder_0_n_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 (\gen_decoder[6].axisc_decoder_0_n_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 (\gen_decoder[6].axisc_decoder_0_n_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 (\gen_decoder[6].axisc_decoder_0_n_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 (\gen_decoder[6].axisc_decoder_0_n_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 (\gen_decoder[6].axisc_decoder_0_n_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 (\gen_decoder[6].axisc_decoder_0_n_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 (\gen_decoder[6].axisc_decoder_0_n_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 (\gen_decoder[6].axisc_decoder_0_n_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 (\gen_decoder[6].axisc_decoder_0_n_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 (\gen_decoder[6].axisc_decoder_0_n_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 (\gen_decoder[6].axisc_decoder_0_n_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 (\gen_decoder[6].axisc_decoder_0_n_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 (\gen_decoder[6].axisc_decoder_0_n_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 (\gen_decoder[6].axisc_decoder_0_n_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 (\gen_decoder[6].axisc_decoder_0_n_36 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 (\gen_decoder[6].axisc_decoder_0_n_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 (\gen_decoder[6].axisc_decoder_0_n_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 (\gen_decoder[6].axisc_decoder_0_n_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 (\gen_decoder[6].axisc_decoder_0_n_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 (\gen_decoder[6].axisc_decoder_0_n_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 (\gen_decoder[6].axisc_decoder_0_n_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] (\gen_decoder[6].axisc_decoder_0_n_190 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 (\gen_decoder[6].axisc_decoder_0_n_191 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 (\gen_decoder[6].axisc_decoder_0_n_192 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 (\gen_decoder[6].axisc_decoder_0_n_201 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 (\gen_decoder[6].axisc_decoder_0_n_202 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 (\gen_decoder[6].axisc_decoder_0_n_203 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 (\gen_decoder[6].axisc_decoder_0_n_204 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 (\gen_decoder[6].axisc_decoder_0_n_205 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 (\gen_decoder[6].axisc_decoder_0_n_206 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 (\gen_decoder[6].axisc_decoder_0_n_207 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 (\gen_decoder[6].axisc_decoder_0_n_208 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 (\gen_decoder[6].axisc_decoder_0_n_209 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 (\gen_decoder[6].axisc_decoder_0_n_210 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 (\gen_decoder[6].axisc_decoder_0_n_193 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 (\gen_decoder[6].axisc_decoder_0_n_211 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 (\gen_decoder[6].axisc_decoder_0_n_212 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 (\gen_decoder[6].axisc_decoder_0_n_213 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 (\gen_decoder[6].axisc_decoder_0_n_214 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 (\gen_decoder[6].axisc_decoder_0_n_215 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 (\gen_decoder[6].axisc_decoder_0_n_216 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 (\gen_decoder[6].axisc_decoder_0_n_217 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 (\gen_decoder[6].axisc_decoder_0_n_218 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 (\gen_decoder[6].axisc_decoder_0_n_219 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 (\gen_decoder[6].axisc_decoder_0_n_220 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 (\gen_decoder[6].axisc_decoder_0_n_194 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 (\gen_decoder[6].axisc_decoder_0_n_221 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 (\gen_decoder[6].axisc_decoder_0_n_222 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 (\gen_decoder[6].axisc_decoder_0_n_223 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 (\gen_decoder[6].axisc_decoder_0_n_224 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 (\gen_decoder[6].axisc_decoder_0_n_225 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 (\gen_decoder[6].axisc_decoder_0_n_226 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 (\gen_decoder[6].axisc_decoder_0_n_195 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 (\gen_decoder[6].axisc_decoder_0_n_196 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 (\gen_decoder[6].axisc_decoder_0_n_197 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 (\gen_decoder[6].axisc_decoder_0_n_198 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 (\gen_decoder[6].axisc_decoder_0_n_199 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 (\gen_decoder[6].axisc_decoder_0_n_200 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25] (\gen_decoder[6].axisc_decoder_0_n_229 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 (\gen_decoder[6].axisc_decoder_0_n_230 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 (\gen_decoder[6].axisc_decoder_0_n_231 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 (\gen_decoder[6].axisc_decoder_0_n_240 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 (\gen_decoder[6].axisc_decoder_0_n_241 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 (\gen_decoder[6].axisc_decoder_0_n_242 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 (\gen_decoder[6].axisc_decoder_0_n_243 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 (\gen_decoder[6].axisc_decoder_0_n_244 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 (\gen_decoder[6].axisc_decoder_0_n_245 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 (\gen_decoder[6].axisc_decoder_0_n_246 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 (\gen_decoder[6].axisc_decoder_0_n_247 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 (\gen_decoder[6].axisc_decoder_0_n_248 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 (\gen_decoder[6].axisc_decoder_0_n_249 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 (\gen_decoder[6].axisc_decoder_0_n_232 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 (\gen_decoder[6].axisc_decoder_0_n_250 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 (\gen_decoder[6].axisc_decoder_0_n_251 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 (\gen_decoder[6].axisc_decoder_0_n_252 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 (\gen_decoder[6].axisc_decoder_0_n_253 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 (\gen_decoder[6].axisc_decoder_0_n_254 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 (\gen_decoder[6].axisc_decoder_0_n_255 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 (\gen_decoder[6].axisc_decoder_0_n_256 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 (\gen_decoder[6].axisc_decoder_0_n_257 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 (\gen_decoder[6].axisc_decoder_0_n_258 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 (\gen_decoder[6].axisc_decoder_0_n_259 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 (\gen_decoder[6].axisc_decoder_0_n_233 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 (\gen_decoder[6].axisc_decoder_0_n_260 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 (\gen_decoder[6].axisc_decoder_0_n_261 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 (\gen_decoder[6].axisc_decoder_0_n_262 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 (\gen_decoder[6].axisc_decoder_0_n_263 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 (\gen_decoder[6].axisc_decoder_0_n_264 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 (\gen_decoder[6].axisc_decoder_0_n_265 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 (\gen_decoder[6].axisc_decoder_0_n_234 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 (\gen_decoder[6].axisc_decoder_0_n_235 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 (\gen_decoder[6].axisc_decoder_0_n_236 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 (\gen_decoder[6].axisc_decoder_0_n_237 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 (\gen_decoder[6].axisc_decoder_0_n_238 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 (\gen_decoder[6].axisc_decoder_0_n_239 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_decoder[6].axisc_decoder_0_n_268 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_decoder[6].axisc_decoder_0_n_269 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] (\gen_decoder[4].axisc_decoder_0_n_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] (\gen_decoder[6].axisc_decoder_0_n_38 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 (\gen_decoder[6].axisc_decoder_0_n_39 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 (\gen_decoder[6].axisc_decoder_0_n_40 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 (\gen_decoder[6].axisc_decoder_0_n_49 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 (\gen_decoder[6].axisc_decoder_0_n_50 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 (\gen_decoder[6].axisc_decoder_0_n_51 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 (\gen_decoder[6].axisc_decoder_0_n_52 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 (\gen_decoder[6].axisc_decoder_0_n_53 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 (\gen_decoder[6].axisc_decoder_0_n_54 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 (\gen_decoder[6].axisc_decoder_0_n_55 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 (\gen_decoder[6].axisc_decoder_0_n_56 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 (\gen_decoder[6].axisc_decoder_0_n_57 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 (\gen_decoder[6].axisc_decoder_0_n_58 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 (\gen_decoder[6].axisc_decoder_0_n_41 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 (\gen_decoder[6].axisc_decoder_0_n_59 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 (\gen_decoder[6].axisc_decoder_0_n_60 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 (\gen_decoder[6].axisc_decoder_0_n_61 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 (\gen_decoder[6].axisc_decoder_0_n_62 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 (\gen_decoder[6].axisc_decoder_0_n_63 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 (\gen_decoder[6].axisc_decoder_0_n_64 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 (\gen_decoder[6].axisc_decoder_0_n_65 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 (\gen_decoder[6].axisc_decoder_0_n_66 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 (\gen_decoder[6].axisc_decoder_0_n_67 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 (\gen_decoder[6].axisc_decoder_0_n_68 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 (\gen_decoder[6].axisc_decoder_0_n_42 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 (\gen_decoder[6].axisc_decoder_0_n_69 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 (\gen_decoder[6].axisc_decoder_0_n_70 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 (\gen_decoder[6].axisc_decoder_0_n_71 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 (\gen_decoder[6].axisc_decoder_0_n_72 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 (\gen_decoder[6].axisc_decoder_0_n_73 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 (\gen_decoder[6].axisc_decoder_0_n_74 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 (\gen_decoder[6].axisc_decoder_0_n_43 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 (\gen_decoder[6].axisc_decoder_0_n_44 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 (\gen_decoder[6].axisc_decoder_0_n_45 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 (\gen_decoder[6].axisc_decoder_0_n_46 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 (\gen_decoder[6].axisc_decoder_0_n_47 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 (\gen_decoder[6].axisc_decoder_0_n_48 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] (\gen_decoder[6].axisc_decoder_0_n_76 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 (\gen_decoder[6].axisc_decoder_0_n_77 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 (\gen_decoder[6].axisc_decoder_0_n_78 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 (\gen_decoder[6].axisc_decoder_0_n_87 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 (\gen_decoder[6].axisc_decoder_0_n_88 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 (\gen_decoder[6].axisc_decoder_0_n_89 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 (\gen_decoder[6].axisc_decoder_0_n_90 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 (\gen_decoder[6].axisc_decoder_0_n_91 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 (\gen_decoder[6].axisc_decoder_0_n_92 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 (\gen_decoder[6].axisc_decoder_0_n_93 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 (\gen_decoder[6].axisc_decoder_0_n_94 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 (\gen_decoder[6].axisc_decoder_0_n_95 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 (\gen_decoder[6].axisc_decoder_0_n_96 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 (\gen_decoder[6].axisc_decoder_0_n_79 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 (\gen_decoder[6].axisc_decoder_0_n_97 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 (\gen_decoder[6].axisc_decoder_0_n_98 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 (\gen_decoder[6].axisc_decoder_0_n_99 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 (\gen_decoder[6].axisc_decoder_0_n_100 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 (\gen_decoder[6].axisc_decoder_0_n_101 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 (\gen_decoder[6].axisc_decoder_0_n_102 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 (\gen_decoder[6].axisc_decoder_0_n_103 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 (\gen_decoder[6].axisc_decoder_0_n_104 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 (\gen_decoder[6].axisc_decoder_0_n_105 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 (\gen_decoder[6].axisc_decoder_0_n_106 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 (\gen_decoder[6].axisc_decoder_0_n_80 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 (\gen_decoder[6].axisc_decoder_0_n_107 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 (\gen_decoder[6].axisc_decoder_0_n_108 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 (\gen_decoder[6].axisc_decoder_0_n_109 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 (\gen_decoder[6].axisc_decoder_0_n_110 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 (\gen_decoder[6].axisc_decoder_0_n_111 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 (\gen_decoder[6].axisc_decoder_0_n_112 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 (\gen_decoder[6].axisc_decoder_0_n_81 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 (\gen_decoder[6].axisc_decoder_0_n_82 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 (\gen_decoder[6].axisc_decoder_0_n_83 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 (\gen_decoder[6].axisc_decoder_0_n_84 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 (\gen_decoder[6].axisc_decoder_0_n_85 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 (\gen_decoder[6].axisc_decoder_0_n_86 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready({m_axis_tready[6],m_axis_tready[4:0]}),
        .m_axis_tvalid(m_axis_tvalid),
        .p_22_out(p_22_out),
        .p_27_out(p_27_out),
        .p_32_out(p_32_out),
        .\s_axis_tready[3] (s_axis_tready[3]),
        .s_axis_tvalid(s_axis_tvalid[3]));
  top_xbar_4_axis_switch_v1_1_8_axisc_decoder_3 \gen_decoder[4].axisc_decoder_0 
       (.S_AXIS_TPAYLOAD({s_axis_tlast[4],s_axis_tkeep[19:16],s_axis_tdata[159:128]}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch({si_enable[4],mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[20] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .\gen_AB_reg_slice.sel_rd_reg (\gen_decoder[4].axisc_decoder_0_n_0 ),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_decoder[4].axisc_decoder_0_n_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_decoder[6].axisc_decoder_0_n_268 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_decoder[6].axisc_decoder_0_n_269 ),
        .m_axis_tready(m_axis_tready),
        .mux_tvalid(mux_tvalid[46]),
        .p_12_out(p_12_out),
        .\s_axis_tready[4] (s_axis_tready[4]),
        .s_axis_tvalid(s_axis_tvalid[4]));
  top_xbar_4_axis_switch_v1_1_8_axisc_decoder_4 \gen_decoder[5].axisc_decoder_0 
       (.S_AXIS_TPAYLOAD({s_axis_tlast[5],s_axis_tkeep[23:20],s_axis_tdata[191:160]}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch({si_enable[5],mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[20] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .\gen_AB_reg_slice.sel_rd_reg (\gen_decoder[5].axisc_decoder_0_n_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_decoder[6].axisc_decoder_0_n_268 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_decoder[6].axisc_decoder_0_n_269 ),
        .m_axis_tready(m_axis_tready),
        .mux_tvalid(mux_tvalid[47]),
        .p_7_out(p_7_out),
        .\s_axis_tready[5] (s_axis_tready[5]),
        .s_axis_tvalid(s_axis_tvalid[5]));
  top_xbar_4_axis_switch_v1_1_8_axisc_decoder_5 \gen_decoder[6].axisc_decoder_0 
       (.S_AXIS_TPAYLOAD({s_axis_tlast[6],s_axis_tkeep[27:24],s_axis_tdata[223:192]}),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch({si_enable[6],mi_enable,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[20] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ,\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] }),
        .\gen_AB_reg_slice.sel_rd_reg (\gen_decoder[6].axisc_decoder_0_n_227 ),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_decoder[6].axisc_decoder_0_n_268 ),
        .\gen_AB_reg_slice.sel_rd_reg_1 (\gen_decoder[6].axisc_decoder_0_n_269 ),
        .\gen_AB_reg_slice.state_reg[0] (mux_tvalid[47:46]),
        .\m_axis_tdata[0] (\gen_decoder[6].axisc_decoder_0_n_0 ),
        .\m_axis_tdata[100] (\gen_decoder[6].axisc_decoder_0_n_118 ),
        .\m_axis_tdata[101] (\gen_decoder[6].axisc_decoder_0_n_119 ),
        .\m_axis_tdata[102] (\gen_decoder[6].axisc_decoder_0_n_120 ),
        .\m_axis_tdata[103] (\gen_decoder[6].axisc_decoder_0_n_121 ),
        .\m_axis_tdata[104] (\gen_decoder[6].axisc_decoder_0_n_122 ),
        .\m_axis_tdata[105] (\gen_decoder[6].axisc_decoder_0_n_123 ),
        .\m_axis_tdata[106] (\gen_decoder[6].axisc_decoder_0_n_124 ),
        .\m_axis_tdata[107] (\gen_decoder[6].axisc_decoder_0_n_125 ),
        .\m_axis_tdata[108] (\gen_decoder[6].axisc_decoder_0_n_126 ),
        .\m_axis_tdata[109] (\gen_decoder[6].axisc_decoder_0_n_127 ),
        .\m_axis_tdata[10] (\gen_decoder[6].axisc_decoder_0_n_10 ),
        .\m_axis_tdata[110] (\gen_decoder[6].axisc_decoder_0_n_128 ),
        .\m_axis_tdata[111] (\gen_decoder[6].axisc_decoder_0_n_129 ),
        .\m_axis_tdata[112] (\gen_decoder[6].axisc_decoder_0_n_130 ),
        .\m_axis_tdata[113] (\gen_decoder[6].axisc_decoder_0_n_131 ),
        .\m_axis_tdata[114] (\gen_decoder[6].axisc_decoder_0_n_132 ),
        .\m_axis_tdata[115] (\gen_decoder[6].axisc_decoder_0_n_133 ),
        .\m_axis_tdata[116] (\gen_decoder[6].axisc_decoder_0_n_134 ),
        .\m_axis_tdata[117] (\gen_decoder[6].axisc_decoder_0_n_135 ),
        .\m_axis_tdata[118] (\gen_decoder[6].axisc_decoder_0_n_136 ),
        .\m_axis_tdata[119] (\gen_decoder[6].axisc_decoder_0_n_137 ),
        .\m_axis_tdata[11] (\gen_decoder[6].axisc_decoder_0_n_11 ),
        .\m_axis_tdata[120] (\gen_decoder[6].axisc_decoder_0_n_138 ),
        .\m_axis_tdata[121] (\gen_decoder[6].axisc_decoder_0_n_139 ),
        .\m_axis_tdata[122] (\gen_decoder[6].axisc_decoder_0_n_140 ),
        .\m_axis_tdata[123] (\gen_decoder[6].axisc_decoder_0_n_141 ),
        .\m_axis_tdata[124] (\gen_decoder[6].axisc_decoder_0_n_142 ),
        .\m_axis_tdata[125] (\gen_decoder[6].axisc_decoder_0_n_143 ),
        .\m_axis_tdata[126] (\gen_decoder[6].axisc_decoder_0_n_144 ),
        .\m_axis_tdata[127] (\gen_decoder[6].axisc_decoder_0_n_145 ),
        .\m_axis_tdata[128] (\gen_decoder[6].axisc_decoder_0_n_152 ),
        .\m_axis_tdata[129] (\gen_decoder[6].axisc_decoder_0_n_153 ),
        .\m_axis_tdata[12] (\gen_decoder[6].axisc_decoder_0_n_12 ),
        .\m_axis_tdata[130] (\gen_decoder[6].axisc_decoder_0_n_154 ),
        .\m_axis_tdata[131] (\gen_decoder[6].axisc_decoder_0_n_155 ),
        .\m_axis_tdata[132] (\gen_decoder[6].axisc_decoder_0_n_156 ),
        .\m_axis_tdata[133] (\gen_decoder[6].axisc_decoder_0_n_157 ),
        .\m_axis_tdata[134] (\gen_decoder[6].axisc_decoder_0_n_158 ),
        .\m_axis_tdata[135] (\gen_decoder[6].axisc_decoder_0_n_159 ),
        .\m_axis_tdata[136] (\gen_decoder[6].axisc_decoder_0_n_160 ),
        .\m_axis_tdata[137] (\gen_decoder[6].axisc_decoder_0_n_161 ),
        .\m_axis_tdata[138] (\gen_decoder[6].axisc_decoder_0_n_162 ),
        .\m_axis_tdata[139] (\gen_decoder[6].axisc_decoder_0_n_163 ),
        .\m_axis_tdata[13] (\gen_decoder[6].axisc_decoder_0_n_13 ),
        .\m_axis_tdata[140] (\gen_decoder[6].axisc_decoder_0_n_164 ),
        .\m_axis_tdata[141] (\gen_decoder[6].axisc_decoder_0_n_165 ),
        .\m_axis_tdata[142] (\gen_decoder[6].axisc_decoder_0_n_166 ),
        .\m_axis_tdata[143] (\gen_decoder[6].axisc_decoder_0_n_167 ),
        .\m_axis_tdata[144] (\gen_decoder[6].axisc_decoder_0_n_168 ),
        .\m_axis_tdata[145] (\gen_decoder[6].axisc_decoder_0_n_169 ),
        .\m_axis_tdata[146] (\gen_decoder[6].axisc_decoder_0_n_170 ),
        .\m_axis_tdata[147] (\gen_decoder[6].axisc_decoder_0_n_171 ),
        .\m_axis_tdata[148] (\gen_decoder[6].axisc_decoder_0_n_172 ),
        .\m_axis_tdata[149] (\gen_decoder[6].axisc_decoder_0_n_173 ),
        .\m_axis_tdata[14] (\gen_decoder[6].axisc_decoder_0_n_14 ),
        .\m_axis_tdata[150] (\gen_decoder[6].axisc_decoder_0_n_174 ),
        .\m_axis_tdata[151] (\gen_decoder[6].axisc_decoder_0_n_175 ),
        .\m_axis_tdata[152] (\gen_decoder[6].axisc_decoder_0_n_176 ),
        .\m_axis_tdata[153] (\gen_decoder[6].axisc_decoder_0_n_177 ),
        .\m_axis_tdata[154] (\gen_decoder[6].axisc_decoder_0_n_178 ),
        .\m_axis_tdata[155] (\gen_decoder[6].axisc_decoder_0_n_179 ),
        .\m_axis_tdata[156] (\gen_decoder[6].axisc_decoder_0_n_180 ),
        .\m_axis_tdata[157] (\gen_decoder[6].axisc_decoder_0_n_181 ),
        .\m_axis_tdata[158] (\gen_decoder[6].axisc_decoder_0_n_182 ),
        .\m_axis_tdata[159] (\gen_decoder[6].axisc_decoder_0_n_183 ),
        .\m_axis_tdata[15] (\gen_decoder[6].axisc_decoder_0_n_15 ),
        .\m_axis_tdata[160] (\gen_decoder[6].axisc_decoder_0_n_190 ),
        .\m_axis_tdata[161] (\gen_decoder[6].axisc_decoder_0_n_191 ),
        .\m_axis_tdata[162] (\gen_decoder[6].axisc_decoder_0_n_192 ),
        .\m_axis_tdata[163] (\gen_decoder[6].axisc_decoder_0_n_193 ),
        .\m_axis_tdata[164] (\gen_decoder[6].axisc_decoder_0_n_194 ),
        .\m_axis_tdata[165] (\gen_decoder[6].axisc_decoder_0_n_195 ),
        .\m_axis_tdata[166] (\gen_decoder[6].axisc_decoder_0_n_196 ),
        .\m_axis_tdata[167] (\gen_decoder[6].axisc_decoder_0_n_197 ),
        .\m_axis_tdata[168] (\gen_decoder[6].axisc_decoder_0_n_198 ),
        .\m_axis_tdata[169] (\gen_decoder[6].axisc_decoder_0_n_199 ),
        .\m_axis_tdata[16] (\gen_decoder[6].axisc_decoder_0_n_16 ),
        .\m_axis_tdata[170] (\gen_decoder[6].axisc_decoder_0_n_200 ),
        .\m_axis_tdata[171] (\gen_decoder[6].axisc_decoder_0_n_201 ),
        .\m_axis_tdata[172] (\gen_decoder[6].axisc_decoder_0_n_202 ),
        .\m_axis_tdata[173] (\gen_decoder[6].axisc_decoder_0_n_203 ),
        .\m_axis_tdata[174] (\gen_decoder[6].axisc_decoder_0_n_204 ),
        .\m_axis_tdata[175] (\gen_decoder[6].axisc_decoder_0_n_205 ),
        .\m_axis_tdata[176] (\gen_decoder[6].axisc_decoder_0_n_206 ),
        .\m_axis_tdata[177] (\gen_decoder[6].axisc_decoder_0_n_207 ),
        .\m_axis_tdata[178] (\gen_decoder[6].axisc_decoder_0_n_208 ),
        .\m_axis_tdata[179] (\gen_decoder[6].axisc_decoder_0_n_209 ),
        .\m_axis_tdata[17] (\gen_decoder[6].axisc_decoder_0_n_17 ),
        .\m_axis_tdata[180] (\gen_decoder[6].axisc_decoder_0_n_210 ),
        .\m_axis_tdata[181] (\gen_decoder[6].axisc_decoder_0_n_211 ),
        .\m_axis_tdata[182] (\gen_decoder[6].axisc_decoder_0_n_212 ),
        .\m_axis_tdata[183] (\gen_decoder[6].axisc_decoder_0_n_213 ),
        .\m_axis_tdata[184] (\gen_decoder[6].axisc_decoder_0_n_214 ),
        .\m_axis_tdata[185] (\gen_decoder[6].axisc_decoder_0_n_215 ),
        .\m_axis_tdata[186] (\gen_decoder[6].axisc_decoder_0_n_216 ),
        .\m_axis_tdata[187] (\gen_decoder[6].axisc_decoder_0_n_217 ),
        .\m_axis_tdata[188] (\gen_decoder[6].axisc_decoder_0_n_218 ),
        .\m_axis_tdata[189] (\gen_decoder[6].axisc_decoder_0_n_219 ),
        .\m_axis_tdata[18] (\gen_decoder[6].axisc_decoder_0_n_18 ),
        .\m_axis_tdata[190] (\gen_decoder[6].axisc_decoder_0_n_220 ),
        .\m_axis_tdata[191] (\gen_decoder[6].axisc_decoder_0_n_221 ),
        .\m_axis_tdata[192] (\gen_decoder[6].axisc_decoder_0_n_229 ),
        .\m_axis_tdata[193] (\gen_decoder[6].axisc_decoder_0_n_230 ),
        .\m_axis_tdata[194] (\gen_decoder[6].axisc_decoder_0_n_231 ),
        .\m_axis_tdata[195] (\gen_decoder[6].axisc_decoder_0_n_232 ),
        .\m_axis_tdata[196] (\gen_decoder[6].axisc_decoder_0_n_233 ),
        .\m_axis_tdata[197] (\gen_decoder[6].axisc_decoder_0_n_234 ),
        .\m_axis_tdata[198] (\gen_decoder[6].axisc_decoder_0_n_235 ),
        .\m_axis_tdata[199] (\gen_decoder[6].axisc_decoder_0_n_236 ),
        .\m_axis_tdata[19] (\gen_decoder[6].axisc_decoder_0_n_19 ),
        .\m_axis_tdata[1] (\gen_decoder[6].axisc_decoder_0_n_1 ),
        .\m_axis_tdata[200] (\gen_decoder[6].axisc_decoder_0_n_237 ),
        .\m_axis_tdata[201] (\gen_decoder[6].axisc_decoder_0_n_238 ),
        .\m_axis_tdata[202] (\gen_decoder[6].axisc_decoder_0_n_239 ),
        .\m_axis_tdata[203] (\gen_decoder[6].axisc_decoder_0_n_240 ),
        .\m_axis_tdata[204] (\gen_decoder[6].axisc_decoder_0_n_241 ),
        .\m_axis_tdata[205] (\gen_decoder[6].axisc_decoder_0_n_242 ),
        .\m_axis_tdata[206] (\gen_decoder[6].axisc_decoder_0_n_243 ),
        .\m_axis_tdata[207] (\gen_decoder[6].axisc_decoder_0_n_244 ),
        .\m_axis_tdata[208] (\gen_decoder[6].axisc_decoder_0_n_245 ),
        .\m_axis_tdata[209] (\gen_decoder[6].axisc_decoder_0_n_246 ),
        .\m_axis_tdata[20] (\gen_decoder[6].axisc_decoder_0_n_20 ),
        .\m_axis_tdata[210] (\gen_decoder[6].axisc_decoder_0_n_247 ),
        .\m_axis_tdata[211] (\gen_decoder[6].axisc_decoder_0_n_248 ),
        .\m_axis_tdata[212] (\gen_decoder[6].axisc_decoder_0_n_249 ),
        .\m_axis_tdata[213] (\gen_decoder[6].axisc_decoder_0_n_250 ),
        .\m_axis_tdata[214] (\gen_decoder[6].axisc_decoder_0_n_251 ),
        .\m_axis_tdata[215] (\gen_decoder[6].axisc_decoder_0_n_252 ),
        .\m_axis_tdata[216] (\gen_decoder[6].axisc_decoder_0_n_253 ),
        .\m_axis_tdata[217] (\gen_decoder[6].axisc_decoder_0_n_254 ),
        .\m_axis_tdata[218] (\gen_decoder[6].axisc_decoder_0_n_255 ),
        .\m_axis_tdata[219] (\gen_decoder[6].axisc_decoder_0_n_256 ),
        .\m_axis_tdata[21] (\gen_decoder[6].axisc_decoder_0_n_21 ),
        .\m_axis_tdata[220] (\gen_decoder[6].axisc_decoder_0_n_257 ),
        .\m_axis_tdata[221] (\gen_decoder[6].axisc_decoder_0_n_258 ),
        .\m_axis_tdata[222] (\gen_decoder[6].axisc_decoder_0_n_259 ),
        .\m_axis_tdata[223] (\gen_decoder[6].axisc_decoder_0_n_260 ),
        .\m_axis_tdata[22] (\gen_decoder[6].axisc_decoder_0_n_22 ),
        .\m_axis_tdata[23] (\gen_decoder[6].axisc_decoder_0_n_23 ),
        .\m_axis_tdata[24] (\gen_decoder[6].axisc_decoder_0_n_24 ),
        .\m_axis_tdata[25] (\gen_decoder[6].axisc_decoder_0_n_25 ),
        .\m_axis_tdata[26] (\gen_decoder[6].axisc_decoder_0_n_26 ),
        .\m_axis_tdata[27] (\gen_decoder[6].axisc_decoder_0_n_27 ),
        .\m_axis_tdata[28] (\gen_decoder[6].axisc_decoder_0_n_28 ),
        .\m_axis_tdata[29] (\gen_decoder[6].axisc_decoder_0_n_29 ),
        .\m_axis_tdata[2] (\gen_decoder[6].axisc_decoder_0_n_2 ),
        .\m_axis_tdata[30] (\gen_decoder[6].axisc_decoder_0_n_30 ),
        .\m_axis_tdata[31] (\gen_decoder[6].axisc_decoder_0_n_31 ),
        .\m_axis_tdata[32] (\gen_decoder[6].axisc_decoder_0_n_38 ),
        .\m_axis_tdata[33] (\gen_decoder[6].axisc_decoder_0_n_39 ),
        .\m_axis_tdata[34] (\gen_decoder[6].axisc_decoder_0_n_40 ),
        .\m_axis_tdata[35] (\gen_decoder[6].axisc_decoder_0_n_41 ),
        .\m_axis_tdata[36] (\gen_decoder[6].axisc_decoder_0_n_42 ),
        .\m_axis_tdata[37] (\gen_decoder[6].axisc_decoder_0_n_43 ),
        .\m_axis_tdata[38] (\gen_decoder[6].axisc_decoder_0_n_44 ),
        .\m_axis_tdata[39] (\gen_decoder[6].axisc_decoder_0_n_45 ),
        .\m_axis_tdata[3] (\gen_decoder[6].axisc_decoder_0_n_3 ),
        .\m_axis_tdata[40] (\gen_decoder[6].axisc_decoder_0_n_46 ),
        .\m_axis_tdata[41] (\gen_decoder[6].axisc_decoder_0_n_47 ),
        .\m_axis_tdata[42] (\gen_decoder[6].axisc_decoder_0_n_48 ),
        .\m_axis_tdata[43] (\gen_decoder[6].axisc_decoder_0_n_49 ),
        .\m_axis_tdata[44] (\gen_decoder[6].axisc_decoder_0_n_50 ),
        .\m_axis_tdata[45] (\gen_decoder[6].axisc_decoder_0_n_51 ),
        .\m_axis_tdata[46] (\gen_decoder[6].axisc_decoder_0_n_52 ),
        .\m_axis_tdata[47] (\gen_decoder[6].axisc_decoder_0_n_53 ),
        .\m_axis_tdata[48] (\gen_decoder[6].axisc_decoder_0_n_54 ),
        .\m_axis_tdata[49] (\gen_decoder[6].axisc_decoder_0_n_55 ),
        .\m_axis_tdata[4] (\gen_decoder[6].axisc_decoder_0_n_4 ),
        .\m_axis_tdata[50] (\gen_decoder[6].axisc_decoder_0_n_56 ),
        .\m_axis_tdata[51] (\gen_decoder[6].axisc_decoder_0_n_57 ),
        .\m_axis_tdata[52] (\gen_decoder[6].axisc_decoder_0_n_58 ),
        .\m_axis_tdata[53] (\gen_decoder[6].axisc_decoder_0_n_59 ),
        .\m_axis_tdata[54] (\gen_decoder[6].axisc_decoder_0_n_60 ),
        .\m_axis_tdata[55] (\gen_decoder[6].axisc_decoder_0_n_61 ),
        .\m_axis_tdata[56] (\gen_decoder[6].axisc_decoder_0_n_62 ),
        .\m_axis_tdata[57] (\gen_decoder[6].axisc_decoder_0_n_63 ),
        .\m_axis_tdata[58] (\gen_decoder[6].axisc_decoder_0_n_64 ),
        .\m_axis_tdata[59] (\gen_decoder[6].axisc_decoder_0_n_65 ),
        .\m_axis_tdata[5] (\gen_decoder[6].axisc_decoder_0_n_5 ),
        .\m_axis_tdata[60] (\gen_decoder[6].axisc_decoder_0_n_66 ),
        .\m_axis_tdata[61] (\gen_decoder[6].axisc_decoder_0_n_67 ),
        .\m_axis_tdata[62] (\gen_decoder[6].axisc_decoder_0_n_68 ),
        .\m_axis_tdata[63] (\gen_decoder[6].axisc_decoder_0_n_69 ),
        .\m_axis_tdata[64] (\gen_decoder[6].axisc_decoder_0_n_76 ),
        .\m_axis_tdata[65] (\gen_decoder[6].axisc_decoder_0_n_77 ),
        .\m_axis_tdata[66] (\gen_decoder[6].axisc_decoder_0_n_78 ),
        .\m_axis_tdata[67] (\gen_decoder[6].axisc_decoder_0_n_79 ),
        .\m_axis_tdata[68] (\gen_decoder[6].axisc_decoder_0_n_80 ),
        .\m_axis_tdata[69] (\gen_decoder[6].axisc_decoder_0_n_81 ),
        .\m_axis_tdata[6] (\gen_decoder[6].axisc_decoder_0_n_6 ),
        .\m_axis_tdata[70] (\gen_decoder[6].axisc_decoder_0_n_82 ),
        .\m_axis_tdata[71] (\gen_decoder[6].axisc_decoder_0_n_83 ),
        .\m_axis_tdata[72] (\gen_decoder[6].axisc_decoder_0_n_84 ),
        .\m_axis_tdata[73] (\gen_decoder[6].axisc_decoder_0_n_85 ),
        .\m_axis_tdata[74] (\gen_decoder[6].axisc_decoder_0_n_86 ),
        .\m_axis_tdata[75] (\gen_decoder[6].axisc_decoder_0_n_87 ),
        .\m_axis_tdata[76] (\gen_decoder[6].axisc_decoder_0_n_88 ),
        .\m_axis_tdata[77] (\gen_decoder[6].axisc_decoder_0_n_89 ),
        .\m_axis_tdata[78] (\gen_decoder[6].axisc_decoder_0_n_90 ),
        .\m_axis_tdata[79] (\gen_decoder[6].axisc_decoder_0_n_91 ),
        .\m_axis_tdata[7] (\gen_decoder[6].axisc_decoder_0_n_7 ),
        .\m_axis_tdata[80] (\gen_decoder[6].axisc_decoder_0_n_92 ),
        .\m_axis_tdata[81] (\gen_decoder[6].axisc_decoder_0_n_93 ),
        .\m_axis_tdata[82] (\gen_decoder[6].axisc_decoder_0_n_94 ),
        .\m_axis_tdata[83] (\gen_decoder[6].axisc_decoder_0_n_95 ),
        .\m_axis_tdata[84] (\gen_decoder[6].axisc_decoder_0_n_96 ),
        .\m_axis_tdata[85] (\gen_decoder[6].axisc_decoder_0_n_97 ),
        .\m_axis_tdata[86] (\gen_decoder[6].axisc_decoder_0_n_98 ),
        .\m_axis_tdata[87] (\gen_decoder[6].axisc_decoder_0_n_99 ),
        .\m_axis_tdata[88] (\gen_decoder[6].axisc_decoder_0_n_100 ),
        .\m_axis_tdata[89] (\gen_decoder[6].axisc_decoder_0_n_101 ),
        .\m_axis_tdata[8] (\gen_decoder[6].axisc_decoder_0_n_8 ),
        .\m_axis_tdata[90] (\gen_decoder[6].axisc_decoder_0_n_102 ),
        .\m_axis_tdata[91] (\gen_decoder[6].axisc_decoder_0_n_103 ),
        .\m_axis_tdata[92] (\gen_decoder[6].axisc_decoder_0_n_104 ),
        .\m_axis_tdata[93] (\gen_decoder[6].axisc_decoder_0_n_105 ),
        .\m_axis_tdata[94] (\gen_decoder[6].axisc_decoder_0_n_106 ),
        .\m_axis_tdata[95] (\gen_decoder[6].axisc_decoder_0_n_107 ),
        .\m_axis_tdata[96] (\gen_decoder[6].axisc_decoder_0_n_114 ),
        .\m_axis_tdata[97] (\gen_decoder[6].axisc_decoder_0_n_115 ),
        .\m_axis_tdata[98] (\gen_decoder[6].axisc_decoder_0_n_116 ),
        .\m_axis_tdata[99] (\gen_decoder[6].axisc_decoder_0_n_117 ),
        .\m_axis_tdata[9] (\gen_decoder[6].axisc_decoder_0_n_9 ),
        .\m_axis_tkeep[0] (\gen_decoder[6].axisc_decoder_0_n_32 ),
        .\m_axis_tkeep[10] (\gen_decoder[6].axisc_decoder_0_n_110 ),
        .\m_axis_tkeep[11] (\gen_decoder[6].axisc_decoder_0_n_111 ),
        .\m_axis_tkeep[12] (\gen_decoder[6].axisc_decoder_0_n_146 ),
        .\m_axis_tkeep[13] (\gen_decoder[6].axisc_decoder_0_n_147 ),
        .\m_axis_tkeep[14] (\gen_decoder[6].axisc_decoder_0_n_148 ),
        .\m_axis_tkeep[15] (\gen_decoder[6].axisc_decoder_0_n_149 ),
        .\m_axis_tkeep[16] (\gen_decoder[6].axisc_decoder_0_n_184 ),
        .\m_axis_tkeep[17] (\gen_decoder[6].axisc_decoder_0_n_185 ),
        .\m_axis_tkeep[18] (\gen_decoder[6].axisc_decoder_0_n_186 ),
        .\m_axis_tkeep[19] (\gen_decoder[6].axisc_decoder_0_n_187 ),
        .\m_axis_tkeep[1] (\gen_decoder[6].axisc_decoder_0_n_33 ),
        .\m_axis_tkeep[20] (\gen_decoder[6].axisc_decoder_0_n_222 ),
        .\m_axis_tkeep[21] (\gen_decoder[6].axisc_decoder_0_n_223 ),
        .\m_axis_tkeep[22] (\gen_decoder[6].axisc_decoder_0_n_224 ),
        .\m_axis_tkeep[23] (\gen_decoder[6].axisc_decoder_0_n_225 ),
        .\m_axis_tkeep[24] (\gen_decoder[6].axisc_decoder_0_n_261 ),
        .\m_axis_tkeep[25] (\gen_decoder[6].axisc_decoder_0_n_262 ),
        .\m_axis_tkeep[26] (\gen_decoder[6].axisc_decoder_0_n_263 ),
        .\m_axis_tkeep[27] (\gen_decoder[6].axisc_decoder_0_n_264 ),
        .\m_axis_tkeep[2] (\gen_decoder[6].axisc_decoder_0_n_34 ),
        .\m_axis_tkeep[3] (\gen_decoder[6].axisc_decoder_0_n_35 ),
        .\m_axis_tkeep[4] (\gen_decoder[6].axisc_decoder_0_n_70 ),
        .\m_axis_tkeep[5] (\gen_decoder[6].axisc_decoder_0_n_71 ),
        .\m_axis_tkeep[6] (\gen_decoder[6].axisc_decoder_0_n_72 ),
        .\m_axis_tkeep[7] (\gen_decoder[6].axisc_decoder_0_n_73 ),
        .\m_axis_tkeep[8] (\gen_decoder[6].axisc_decoder_0_n_108 ),
        .\m_axis_tkeep[9] (\gen_decoder[6].axisc_decoder_0_n_109 ),
        .\m_axis_tlast[0] (\gen_decoder[6].axisc_decoder_0_n_36 ),
        .\m_axis_tlast[1] (\gen_decoder[6].axisc_decoder_0_n_74 ),
        .\m_axis_tlast[2] (\gen_decoder[6].axisc_decoder_0_n_112 ),
        .\m_axis_tlast[3] (\gen_decoder[6].axisc_decoder_0_n_150 ),
        .\m_axis_tlast[4] (\gen_decoder[6].axisc_decoder_0_n_188 ),
        .\m_axis_tlast[5] (\gen_decoder[6].axisc_decoder_0_n_226 ),
        .\m_axis_tlast[6] (\gen_decoder[6].axisc_decoder_0_n_265 ),
        .m_axis_tready(m_axis_tready),
        .\m_axis_tvalid[0] (\gen_decoder[6].axisc_decoder_0_n_37 ),
        .\m_axis_tvalid[1] (\gen_decoder[6].axisc_decoder_0_n_75 ),
        .\m_axis_tvalid[2] (\gen_decoder[6].axisc_decoder_0_n_113 ),
        .\m_axis_tvalid[3] (\gen_decoder[6].axisc_decoder_0_n_151 ),
        .\m_axis_tvalid[4] (\gen_decoder[6].axisc_decoder_0_n_189 ),
        .\m_axis_tvalid[5] (\gen_decoder[6].axisc_decoder_0_n_228 ),
        .\m_axis_tvalid[6] (\gen_decoder[6].axisc_decoder_0_n_266 ),
        .p_12_out(p_12_out),
        .p_7_out(p_7_out),
        .\s_axis_tready[6] (s_axis_tready[6]),
        .s_axis_tvalid(s_axis_tvalid[6]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[0] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[0]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[10]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[11] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[11]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[12] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[12]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[13]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[14]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[15] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[15]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[16] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[16]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[17]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[18] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[18]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[19] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[19]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[1]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[20] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[20]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[21]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[22] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[22]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[23] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[23]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[24] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[24]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[25]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[26] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[26]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[27] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[27]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[28]),
        .Q(mi_enable[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[29] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[29]),
        .Q(mi_enable[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[2]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[30]),
        .Q(mi_enable[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[31] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[31]),
        .Q(mi_enable[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[32] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[32]),
        .Q(mi_enable[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[33]),
        .Q(mi_enable[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[34] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[34]),
        .Q(mi_enable[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[3] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[3]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[4] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[4]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[5]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[63] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[63]),
        .Q(si_enable[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[64] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[64]),
        .Q(si_enable[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[65] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[65]),
        .Q(si_enable[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[66] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[66]),
        .Q(si_enable[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[67] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[67]),
        .Q(si_enable[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[68] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[68]),
        .Q(si_enable[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[69] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[69]),
        .Q(si_enable[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[6]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[7] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[7]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[8] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[8]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] 
       (.C(aclk),
        .CE(cdc_handshake_data_valid),
        .D(cdc_handshake_data_out[9]),
        .Q(\gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9] ),
        .R(1'b0));
  top_xbar_4_axis_infrastructure_v1_1_0_cdc_handshake \gen_static_router.gen_synch.inst_cdc_handshake 
       (.E(cdc_handshake_data_valid),
        .Q(ctrl_reg),
        .aclk(aclk),
        .dest_out({cdc_handshake_data_out[69:63],cdc_handshake_data_out[34:0]}),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .src_rcv(ctrl_ack),
        .src_send(ctrl_req));
  top_xbar_4_axis_infrastructure_v1_1_0_clock_synchronizer \gen_static_router.gen_synch.inst_rst_synch 
       (.I27(\gen_static_router.gen_synch.inst_rst_synch_n_0 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .src_in(ctrl_soft_reset));
  top_xbar_4_axis_switch_v1_1_8_static_router \gen_static_router.inst_static_router 
       (.ctrl_reg(ctrl_reg),
        .s_axi_arready(s_axi_ctrl_arready),
        .s_axi_awready(s_axi_ctrl_wready),
        .s_axi_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr[6:2]),
        .s_axi_ctrl_areset(s_axi_ctrl_areset),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr[6:2]),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .src_in(ctrl_soft_reset),
        .src_rcv(ctrl_ack),
        .src_send(ctrl_req));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_static_router.s_axi_ctrl_areset_i_1 
       (.I0(s_axi_ctrl_aresetn),
        .O(p_0_in));
  FDRE \gen_static_router.s_axi_ctrl_areset_reg 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(s_axi_ctrl_areset),
        .R(1'b0));
endmodule

module top_xbar_4_axis_switch_v1_1_8_axisc_decoder
   (\s_axis_tready[0] ,
    mux_tvalid,
    p_32_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] );
  output \s_axis_tready[0] ;
  output [0:0]mux_tvalid;
  output [36:0]p_32_out;
  input [32:0]ctrl_reg_synch;
  input [5:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [32:0]ctrl_reg_synch;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  wire [5:0]m_axis_tready;
  wire [0:0]mux_tvalid;
  wire [36:0]p_32_out;
  wire \s_axis_tready[0] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_11 \gen_static_routing.inst_decoder_pipeline 
       (.S_AXIS_TPAYLOAD(S_AXIS_TPAYLOAD),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch(ctrl_reg_synch),
        .\gen_AB_reg_slice.payload_a_reg[36]_0 (mux_tvalid),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ),
        .m_axis_tready(m_axis_tready),
        .p_32_out(p_32_out),
        .\s_axis_tready[0] (\s_axis_tready[0] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_8_axisc_decoder_0
   (\s_axis_tready[1] ,
    mux_tvalid,
    p_27_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] );
  output \s_axis_tready[1] ;
  output [0:0]mux_tvalid;
  output [36:0]p_27_out;
  input [33:0]ctrl_reg_synch;
  input [5:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [33:0]ctrl_reg_synch;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire [5:0]m_axis_tready;
  wire [0:0]mux_tvalid;
  wire [36:0]p_27_out;
  wire \s_axis_tready[1] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_10 \gen_static_routing.inst_decoder_pipeline 
       (.S_AXIS_TPAYLOAD(S_AXIS_TPAYLOAD),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch(ctrl_reg_synch),
        .\gen_AB_reg_slice.payload_a_reg[36]_0 (mux_tvalid),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .m_axis_tready(m_axis_tready),
        .p_27_out(p_27_out),
        .\s_axis_tready[1] (\s_axis_tready[1] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_8_axisc_decoder_1
   (\s_axis_tready[2] ,
    mux_tvalid,
    p_22_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] );
  output \s_axis_tready[2] ;
  output [0:0]mux_tvalid;
  output [36:0]p_22_out;
  input [33:0]ctrl_reg_synch;
  input [5:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [33:0]ctrl_reg_synch;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  wire [5:0]m_axis_tready;
  wire [0:0]mux_tvalid;
  wire [36:0]p_22_out;
  wire \s_axis_tready[2] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_9 \gen_static_routing.inst_decoder_pipeline 
       (.S_AXIS_TPAYLOAD(S_AXIS_TPAYLOAD),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch(ctrl_reg_synch),
        .\gen_AB_reg_slice.payload_a_reg[36]_0 (mux_tvalid),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ),
        .m_axis_tready(m_axis_tready),
        .p_22_out(p_22_out),
        .\s_axis_tready[2] (\s_axis_tready[2] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_8_axisc_decoder_2
   (m_axis_tvalid,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    \s_axis_tready[3] ,
    p_22_out,
    ctrl_reg_synch,
    p_27_out,
    p_32_out,
    \gen_AB_reg_slice.state_reg[0] ,
    m_axis_tready,
    \gen_AB_reg_slice.state_reg[0]_0 ,
    \gen_AB_reg_slice.state_reg[0]_1 ,
    \gen_AB_reg_slice.state_reg[0]_2 ,
    \gen_AB_reg_slice.state_reg[0]_3 ,
    \gen_AB_reg_slice.state_reg[0]_4 ,
    \gen_AB_reg_slice.state_reg[0]_5 ,
    \gen_AB_reg_slice.state_reg[0]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] );
  output [6:0]m_axis_tvalid;
  output [223:0]m_axis_tdata;
  output [27:0]m_axis_tkeep;
  output [6:0]m_axis_tlast;
  output \s_axis_tready[3] ;
  input [36:0]p_22_out;
  input [35:0]ctrl_reg_synch;
  input [36:0]p_27_out;
  input [36:0]p_32_out;
  input \gen_AB_reg_slice.state_reg[0] ;
  input [5:0]m_axis_tready;
  input [2:0]\gen_AB_reg_slice.state_reg[0]_0 ;
  input \gen_AB_reg_slice.state_reg[0]_1 ;
  input \gen_AB_reg_slice.state_reg[0]_2 ;
  input \gen_AB_reg_slice.state_reg[0]_3 ;
  input \gen_AB_reg_slice.state_reg[0]_4 ;
  input \gen_AB_reg_slice.state_reg[0]_5 ;
  input \gen_AB_reg_slice.state_reg[0]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire \gen_AB_reg_slice.state_reg[0] ;
  wire [2:0]\gen_AB_reg_slice.state_reg[0]_0 ;
  wire \gen_AB_reg_slice.state_reg[0]_1 ;
  wire \gen_AB_reg_slice.state_reg[0]_2 ;
  wire \gen_AB_reg_slice.state_reg[0]_3 ;
  wire \gen_AB_reg_slice.state_reg[0]_4 ;
  wire \gen_AB_reg_slice.state_reg[0]_5 ;
  wire \gen_AB_reg_slice.state_reg[0]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ;
  wire [223:0]m_axis_tdata;
  wire [27:0]m_axis_tkeep;
  wire [6:0]m_axis_tlast;
  wire [5:0]m_axis_tready;
  wire [6:0]m_axis_tvalid;
  wire [36:0]p_22_out;
  wire [36:0]p_27_out;
  wire [36:0]p_32_out;
  wire \s_axis_tready[3] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_8 \gen_static_routing.inst_decoder_pipeline 
       (.S_AXIS_TPAYLOAD(S_AXIS_TPAYLOAD),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch(ctrl_reg_synch),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\gen_AB_reg_slice.state_reg[0]_1 (\gen_AB_reg_slice.state_reg[0]_0 ),
        .\gen_AB_reg_slice.state_reg[0]_2 (\gen_AB_reg_slice.state_reg[0]_1 ),
        .\gen_AB_reg_slice.state_reg[0]_3 (\gen_AB_reg_slice.state_reg[0]_2 ),
        .\gen_AB_reg_slice.state_reg[0]_4 (\gen_AB_reg_slice.state_reg[0]_3 ),
        .\gen_AB_reg_slice.state_reg[0]_5 (\gen_AB_reg_slice.state_reg[0]_4 ),
        .\gen_AB_reg_slice.state_reg[0]_6 (\gen_AB_reg_slice.state_reg[0]_5 ),
        .\gen_AB_reg_slice.state_reg[0]_7 (\gen_AB_reg_slice.state_reg[0]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[17]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[21]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[25]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[33] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]_9 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_1 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_10 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_11 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_12 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_13 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_14 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_15 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_16 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_17 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_18 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_19 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_2 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_20 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_21 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_22 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_23 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_24 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_25 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_26 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_27 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_28 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_29 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_3 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_30 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_31 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_32 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_33 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_34 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_35 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_4 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_5 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_6 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_7 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_8 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 (\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]_9 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_22_out(p_22_out),
        .p_27_out(p_27_out),
        .p_32_out(p_32_out),
        .\s_axis_tready[3] (\s_axis_tready[3] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_8_axisc_decoder_3
   (\gen_AB_reg_slice.sel_rd_reg ,
    \s_axis_tready[4] ,
    mux_tvalid,
    \gen_AB_reg_slice.sel_rd_reg_0 ,
    p_12_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] );
  output \gen_AB_reg_slice.sel_rd_reg ;
  output \s_axis_tready[4] ;
  output [0:0]mux_tvalid;
  output \gen_AB_reg_slice.sel_rd_reg_0 ;
  output [36:0]p_12_out;
  input [35:0]ctrl_reg_synch;
  input [6:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire \gen_AB_reg_slice.sel_rd_reg ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire [6:0]m_axis_tready;
  wire [0:0]mux_tvalid;
  wire [36:0]p_12_out;
  wire \s_axis_tready[4] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_7 \gen_static_routing.inst_decoder_pipeline 
       (.S_AXIS_TPAYLOAD(S_AXIS_TPAYLOAD),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch(ctrl_reg_synch),
        .\gen_AB_reg_slice.payload_a_reg[36]_0 (mux_tvalid),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_AB_reg_slice.sel_rd_reg ),
        .\gen_AB_reg_slice.sel_rd_reg_1 (\gen_AB_reg_slice.sel_rd_reg_0 ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .m_axis_tready(m_axis_tready),
        .p_12_out(p_12_out),
        .\s_axis_tready[4] (\s_axis_tready[4] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_8_axisc_decoder_4
   (\gen_AB_reg_slice.sel_rd_reg ,
    \s_axis_tready[5] ,
    mux_tvalid,
    p_7_out,
    ctrl_reg_synch,
    m_axis_tready,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ,
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] );
  output \gen_AB_reg_slice.sel_rd_reg ;
  output \s_axis_tready[5] ;
  output [0:0]mux_tvalid;
  output [36:0]p_7_out;
  input [35:0]ctrl_reg_synch;
  input [6:0]m_axis_tready;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  input \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire \gen_AB_reg_slice.sel_rd_reg ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ;
  wire \gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ;
  wire [6:0]m_axis_tready;
  wire [0:0]mux_tvalid;
  wire [36:0]p_7_out;
  wire \s_axis_tready[5] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice_6 \gen_static_routing.inst_decoder_pipeline 
       (.S_AXIS_TPAYLOAD(S_AXIS_TPAYLOAD),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch(ctrl_reg_synch),
        .\gen_AB_reg_slice.payload_a_reg[36]_0 (mux_tvalid),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_AB_reg_slice.sel_rd_reg ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[28] ),
        .\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] (\gen_static_router.gen_synch.ctrl_reg_synch_reg[30] ),
        .m_axis_tready(m_axis_tready),
        .p_7_out(p_7_out),
        .\s_axis_tready[5] (\s_axis_tready[5] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_axisc_decoder" *) 
module top_xbar_4_axis_switch_v1_1_8_axisc_decoder_5
   (\m_axis_tdata[0] ,
    \m_axis_tdata[1] ,
    \m_axis_tdata[2] ,
    \m_axis_tdata[3] ,
    \m_axis_tdata[4] ,
    \m_axis_tdata[5] ,
    \m_axis_tdata[6] ,
    \m_axis_tdata[7] ,
    \m_axis_tdata[8] ,
    \m_axis_tdata[9] ,
    \m_axis_tdata[10] ,
    \m_axis_tdata[11] ,
    \m_axis_tdata[12] ,
    \m_axis_tdata[13] ,
    \m_axis_tdata[14] ,
    \m_axis_tdata[15] ,
    \m_axis_tdata[16] ,
    \m_axis_tdata[17] ,
    \m_axis_tdata[18] ,
    \m_axis_tdata[19] ,
    \m_axis_tdata[20] ,
    \m_axis_tdata[21] ,
    \m_axis_tdata[22] ,
    \m_axis_tdata[23] ,
    \m_axis_tdata[24] ,
    \m_axis_tdata[25] ,
    \m_axis_tdata[26] ,
    \m_axis_tdata[27] ,
    \m_axis_tdata[28] ,
    \m_axis_tdata[29] ,
    \m_axis_tdata[30] ,
    \m_axis_tdata[31] ,
    \m_axis_tkeep[0] ,
    \m_axis_tkeep[1] ,
    \m_axis_tkeep[2] ,
    \m_axis_tkeep[3] ,
    \m_axis_tlast[0] ,
    \m_axis_tvalid[0] ,
    \m_axis_tdata[32] ,
    \m_axis_tdata[33] ,
    \m_axis_tdata[34] ,
    \m_axis_tdata[35] ,
    \m_axis_tdata[36] ,
    \m_axis_tdata[37] ,
    \m_axis_tdata[38] ,
    \m_axis_tdata[39] ,
    \m_axis_tdata[40] ,
    \m_axis_tdata[41] ,
    \m_axis_tdata[42] ,
    \m_axis_tdata[43] ,
    \m_axis_tdata[44] ,
    \m_axis_tdata[45] ,
    \m_axis_tdata[46] ,
    \m_axis_tdata[47] ,
    \m_axis_tdata[48] ,
    \m_axis_tdata[49] ,
    \m_axis_tdata[50] ,
    \m_axis_tdata[51] ,
    \m_axis_tdata[52] ,
    \m_axis_tdata[53] ,
    \m_axis_tdata[54] ,
    \m_axis_tdata[55] ,
    \m_axis_tdata[56] ,
    \m_axis_tdata[57] ,
    \m_axis_tdata[58] ,
    \m_axis_tdata[59] ,
    \m_axis_tdata[60] ,
    \m_axis_tdata[61] ,
    \m_axis_tdata[62] ,
    \m_axis_tdata[63] ,
    \m_axis_tkeep[4] ,
    \m_axis_tkeep[5] ,
    \m_axis_tkeep[6] ,
    \m_axis_tkeep[7] ,
    \m_axis_tlast[1] ,
    \m_axis_tvalid[1] ,
    \m_axis_tdata[64] ,
    \m_axis_tdata[65] ,
    \m_axis_tdata[66] ,
    \m_axis_tdata[67] ,
    \m_axis_tdata[68] ,
    \m_axis_tdata[69] ,
    \m_axis_tdata[70] ,
    \m_axis_tdata[71] ,
    \m_axis_tdata[72] ,
    \m_axis_tdata[73] ,
    \m_axis_tdata[74] ,
    \m_axis_tdata[75] ,
    \m_axis_tdata[76] ,
    \m_axis_tdata[77] ,
    \m_axis_tdata[78] ,
    \m_axis_tdata[79] ,
    \m_axis_tdata[80] ,
    \m_axis_tdata[81] ,
    \m_axis_tdata[82] ,
    \m_axis_tdata[83] ,
    \m_axis_tdata[84] ,
    \m_axis_tdata[85] ,
    \m_axis_tdata[86] ,
    \m_axis_tdata[87] ,
    \m_axis_tdata[88] ,
    \m_axis_tdata[89] ,
    \m_axis_tdata[90] ,
    \m_axis_tdata[91] ,
    \m_axis_tdata[92] ,
    \m_axis_tdata[93] ,
    \m_axis_tdata[94] ,
    \m_axis_tdata[95] ,
    \m_axis_tkeep[8] ,
    \m_axis_tkeep[9] ,
    \m_axis_tkeep[10] ,
    \m_axis_tkeep[11] ,
    \m_axis_tlast[2] ,
    \m_axis_tvalid[2] ,
    \m_axis_tdata[96] ,
    \m_axis_tdata[97] ,
    \m_axis_tdata[98] ,
    \m_axis_tdata[99] ,
    \m_axis_tdata[100] ,
    \m_axis_tdata[101] ,
    \m_axis_tdata[102] ,
    \m_axis_tdata[103] ,
    \m_axis_tdata[104] ,
    \m_axis_tdata[105] ,
    \m_axis_tdata[106] ,
    \m_axis_tdata[107] ,
    \m_axis_tdata[108] ,
    \m_axis_tdata[109] ,
    \m_axis_tdata[110] ,
    \m_axis_tdata[111] ,
    \m_axis_tdata[112] ,
    \m_axis_tdata[113] ,
    \m_axis_tdata[114] ,
    \m_axis_tdata[115] ,
    \m_axis_tdata[116] ,
    \m_axis_tdata[117] ,
    \m_axis_tdata[118] ,
    \m_axis_tdata[119] ,
    \m_axis_tdata[120] ,
    \m_axis_tdata[121] ,
    \m_axis_tdata[122] ,
    \m_axis_tdata[123] ,
    \m_axis_tdata[124] ,
    \m_axis_tdata[125] ,
    \m_axis_tdata[126] ,
    \m_axis_tdata[127] ,
    \m_axis_tkeep[12] ,
    \m_axis_tkeep[13] ,
    \m_axis_tkeep[14] ,
    \m_axis_tkeep[15] ,
    \m_axis_tlast[3] ,
    \m_axis_tvalid[3] ,
    \m_axis_tdata[128] ,
    \m_axis_tdata[129] ,
    \m_axis_tdata[130] ,
    \m_axis_tdata[131] ,
    \m_axis_tdata[132] ,
    \m_axis_tdata[133] ,
    \m_axis_tdata[134] ,
    \m_axis_tdata[135] ,
    \m_axis_tdata[136] ,
    \m_axis_tdata[137] ,
    \m_axis_tdata[138] ,
    \m_axis_tdata[139] ,
    \m_axis_tdata[140] ,
    \m_axis_tdata[141] ,
    \m_axis_tdata[142] ,
    \m_axis_tdata[143] ,
    \m_axis_tdata[144] ,
    \m_axis_tdata[145] ,
    \m_axis_tdata[146] ,
    \m_axis_tdata[147] ,
    \m_axis_tdata[148] ,
    \m_axis_tdata[149] ,
    \m_axis_tdata[150] ,
    \m_axis_tdata[151] ,
    \m_axis_tdata[152] ,
    \m_axis_tdata[153] ,
    \m_axis_tdata[154] ,
    \m_axis_tdata[155] ,
    \m_axis_tdata[156] ,
    \m_axis_tdata[157] ,
    \m_axis_tdata[158] ,
    \m_axis_tdata[159] ,
    \m_axis_tkeep[16] ,
    \m_axis_tkeep[17] ,
    \m_axis_tkeep[18] ,
    \m_axis_tkeep[19] ,
    \m_axis_tlast[4] ,
    \m_axis_tvalid[4] ,
    \m_axis_tdata[160] ,
    \m_axis_tdata[161] ,
    \m_axis_tdata[162] ,
    \m_axis_tdata[163] ,
    \m_axis_tdata[164] ,
    \m_axis_tdata[165] ,
    \m_axis_tdata[166] ,
    \m_axis_tdata[167] ,
    \m_axis_tdata[168] ,
    \m_axis_tdata[169] ,
    \m_axis_tdata[170] ,
    \m_axis_tdata[171] ,
    \m_axis_tdata[172] ,
    \m_axis_tdata[173] ,
    \m_axis_tdata[174] ,
    \m_axis_tdata[175] ,
    \m_axis_tdata[176] ,
    \m_axis_tdata[177] ,
    \m_axis_tdata[178] ,
    \m_axis_tdata[179] ,
    \m_axis_tdata[180] ,
    \m_axis_tdata[181] ,
    \m_axis_tdata[182] ,
    \m_axis_tdata[183] ,
    \m_axis_tdata[184] ,
    \m_axis_tdata[185] ,
    \m_axis_tdata[186] ,
    \m_axis_tdata[187] ,
    \m_axis_tdata[188] ,
    \m_axis_tdata[189] ,
    \m_axis_tdata[190] ,
    \m_axis_tdata[191] ,
    \m_axis_tkeep[20] ,
    \m_axis_tkeep[21] ,
    \m_axis_tkeep[22] ,
    \m_axis_tkeep[23] ,
    \m_axis_tlast[5] ,
    \gen_AB_reg_slice.sel_rd_reg ,
    \m_axis_tvalid[5] ,
    \m_axis_tdata[192] ,
    \m_axis_tdata[193] ,
    \m_axis_tdata[194] ,
    \m_axis_tdata[195] ,
    \m_axis_tdata[196] ,
    \m_axis_tdata[197] ,
    \m_axis_tdata[198] ,
    \m_axis_tdata[199] ,
    \m_axis_tdata[200] ,
    \m_axis_tdata[201] ,
    \m_axis_tdata[202] ,
    \m_axis_tdata[203] ,
    \m_axis_tdata[204] ,
    \m_axis_tdata[205] ,
    \m_axis_tdata[206] ,
    \m_axis_tdata[207] ,
    \m_axis_tdata[208] ,
    \m_axis_tdata[209] ,
    \m_axis_tdata[210] ,
    \m_axis_tdata[211] ,
    \m_axis_tdata[212] ,
    \m_axis_tdata[213] ,
    \m_axis_tdata[214] ,
    \m_axis_tdata[215] ,
    \m_axis_tdata[216] ,
    \m_axis_tdata[217] ,
    \m_axis_tdata[218] ,
    \m_axis_tdata[219] ,
    \m_axis_tdata[220] ,
    \m_axis_tdata[221] ,
    \m_axis_tdata[222] ,
    \m_axis_tdata[223] ,
    \m_axis_tkeep[24] ,
    \m_axis_tkeep[25] ,
    \m_axis_tkeep[26] ,
    \m_axis_tkeep[27] ,
    \m_axis_tlast[6] ,
    \m_axis_tvalid[6] ,
    \s_axis_tready[6] ,
    \gen_AB_reg_slice.sel_rd_reg_0 ,
    \gen_AB_reg_slice.sel_rd_reg_1 ,
    ctrl_reg_synch,
    p_7_out,
    p_12_out,
    m_axis_tready,
    \gen_AB_reg_slice.state_reg[0] ,
    aclken,
    areset_r,
    s_axis_tvalid,
    aclk,
    S_AXIS_TPAYLOAD);
  output \m_axis_tdata[0] ;
  output \m_axis_tdata[1] ;
  output \m_axis_tdata[2] ;
  output \m_axis_tdata[3] ;
  output \m_axis_tdata[4] ;
  output \m_axis_tdata[5] ;
  output \m_axis_tdata[6] ;
  output \m_axis_tdata[7] ;
  output \m_axis_tdata[8] ;
  output \m_axis_tdata[9] ;
  output \m_axis_tdata[10] ;
  output \m_axis_tdata[11] ;
  output \m_axis_tdata[12] ;
  output \m_axis_tdata[13] ;
  output \m_axis_tdata[14] ;
  output \m_axis_tdata[15] ;
  output \m_axis_tdata[16] ;
  output \m_axis_tdata[17] ;
  output \m_axis_tdata[18] ;
  output \m_axis_tdata[19] ;
  output \m_axis_tdata[20] ;
  output \m_axis_tdata[21] ;
  output \m_axis_tdata[22] ;
  output \m_axis_tdata[23] ;
  output \m_axis_tdata[24] ;
  output \m_axis_tdata[25] ;
  output \m_axis_tdata[26] ;
  output \m_axis_tdata[27] ;
  output \m_axis_tdata[28] ;
  output \m_axis_tdata[29] ;
  output \m_axis_tdata[30] ;
  output \m_axis_tdata[31] ;
  output \m_axis_tkeep[0] ;
  output \m_axis_tkeep[1] ;
  output \m_axis_tkeep[2] ;
  output \m_axis_tkeep[3] ;
  output \m_axis_tlast[0] ;
  output \m_axis_tvalid[0] ;
  output \m_axis_tdata[32] ;
  output \m_axis_tdata[33] ;
  output \m_axis_tdata[34] ;
  output \m_axis_tdata[35] ;
  output \m_axis_tdata[36] ;
  output \m_axis_tdata[37] ;
  output \m_axis_tdata[38] ;
  output \m_axis_tdata[39] ;
  output \m_axis_tdata[40] ;
  output \m_axis_tdata[41] ;
  output \m_axis_tdata[42] ;
  output \m_axis_tdata[43] ;
  output \m_axis_tdata[44] ;
  output \m_axis_tdata[45] ;
  output \m_axis_tdata[46] ;
  output \m_axis_tdata[47] ;
  output \m_axis_tdata[48] ;
  output \m_axis_tdata[49] ;
  output \m_axis_tdata[50] ;
  output \m_axis_tdata[51] ;
  output \m_axis_tdata[52] ;
  output \m_axis_tdata[53] ;
  output \m_axis_tdata[54] ;
  output \m_axis_tdata[55] ;
  output \m_axis_tdata[56] ;
  output \m_axis_tdata[57] ;
  output \m_axis_tdata[58] ;
  output \m_axis_tdata[59] ;
  output \m_axis_tdata[60] ;
  output \m_axis_tdata[61] ;
  output \m_axis_tdata[62] ;
  output \m_axis_tdata[63] ;
  output \m_axis_tkeep[4] ;
  output \m_axis_tkeep[5] ;
  output \m_axis_tkeep[6] ;
  output \m_axis_tkeep[7] ;
  output \m_axis_tlast[1] ;
  output \m_axis_tvalid[1] ;
  output \m_axis_tdata[64] ;
  output \m_axis_tdata[65] ;
  output \m_axis_tdata[66] ;
  output \m_axis_tdata[67] ;
  output \m_axis_tdata[68] ;
  output \m_axis_tdata[69] ;
  output \m_axis_tdata[70] ;
  output \m_axis_tdata[71] ;
  output \m_axis_tdata[72] ;
  output \m_axis_tdata[73] ;
  output \m_axis_tdata[74] ;
  output \m_axis_tdata[75] ;
  output \m_axis_tdata[76] ;
  output \m_axis_tdata[77] ;
  output \m_axis_tdata[78] ;
  output \m_axis_tdata[79] ;
  output \m_axis_tdata[80] ;
  output \m_axis_tdata[81] ;
  output \m_axis_tdata[82] ;
  output \m_axis_tdata[83] ;
  output \m_axis_tdata[84] ;
  output \m_axis_tdata[85] ;
  output \m_axis_tdata[86] ;
  output \m_axis_tdata[87] ;
  output \m_axis_tdata[88] ;
  output \m_axis_tdata[89] ;
  output \m_axis_tdata[90] ;
  output \m_axis_tdata[91] ;
  output \m_axis_tdata[92] ;
  output \m_axis_tdata[93] ;
  output \m_axis_tdata[94] ;
  output \m_axis_tdata[95] ;
  output \m_axis_tkeep[8] ;
  output \m_axis_tkeep[9] ;
  output \m_axis_tkeep[10] ;
  output \m_axis_tkeep[11] ;
  output \m_axis_tlast[2] ;
  output \m_axis_tvalid[2] ;
  output \m_axis_tdata[96] ;
  output \m_axis_tdata[97] ;
  output \m_axis_tdata[98] ;
  output \m_axis_tdata[99] ;
  output \m_axis_tdata[100] ;
  output \m_axis_tdata[101] ;
  output \m_axis_tdata[102] ;
  output \m_axis_tdata[103] ;
  output \m_axis_tdata[104] ;
  output \m_axis_tdata[105] ;
  output \m_axis_tdata[106] ;
  output \m_axis_tdata[107] ;
  output \m_axis_tdata[108] ;
  output \m_axis_tdata[109] ;
  output \m_axis_tdata[110] ;
  output \m_axis_tdata[111] ;
  output \m_axis_tdata[112] ;
  output \m_axis_tdata[113] ;
  output \m_axis_tdata[114] ;
  output \m_axis_tdata[115] ;
  output \m_axis_tdata[116] ;
  output \m_axis_tdata[117] ;
  output \m_axis_tdata[118] ;
  output \m_axis_tdata[119] ;
  output \m_axis_tdata[120] ;
  output \m_axis_tdata[121] ;
  output \m_axis_tdata[122] ;
  output \m_axis_tdata[123] ;
  output \m_axis_tdata[124] ;
  output \m_axis_tdata[125] ;
  output \m_axis_tdata[126] ;
  output \m_axis_tdata[127] ;
  output \m_axis_tkeep[12] ;
  output \m_axis_tkeep[13] ;
  output \m_axis_tkeep[14] ;
  output \m_axis_tkeep[15] ;
  output \m_axis_tlast[3] ;
  output \m_axis_tvalid[3] ;
  output \m_axis_tdata[128] ;
  output \m_axis_tdata[129] ;
  output \m_axis_tdata[130] ;
  output \m_axis_tdata[131] ;
  output \m_axis_tdata[132] ;
  output \m_axis_tdata[133] ;
  output \m_axis_tdata[134] ;
  output \m_axis_tdata[135] ;
  output \m_axis_tdata[136] ;
  output \m_axis_tdata[137] ;
  output \m_axis_tdata[138] ;
  output \m_axis_tdata[139] ;
  output \m_axis_tdata[140] ;
  output \m_axis_tdata[141] ;
  output \m_axis_tdata[142] ;
  output \m_axis_tdata[143] ;
  output \m_axis_tdata[144] ;
  output \m_axis_tdata[145] ;
  output \m_axis_tdata[146] ;
  output \m_axis_tdata[147] ;
  output \m_axis_tdata[148] ;
  output \m_axis_tdata[149] ;
  output \m_axis_tdata[150] ;
  output \m_axis_tdata[151] ;
  output \m_axis_tdata[152] ;
  output \m_axis_tdata[153] ;
  output \m_axis_tdata[154] ;
  output \m_axis_tdata[155] ;
  output \m_axis_tdata[156] ;
  output \m_axis_tdata[157] ;
  output \m_axis_tdata[158] ;
  output \m_axis_tdata[159] ;
  output \m_axis_tkeep[16] ;
  output \m_axis_tkeep[17] ;
  output \m_axis_tkeep[18] ;
  output \m_axis_tkeep[19] ;
  output \m_axis_tlast[4] ;
  output \m_axis_tvalid[4] ;
  output \m_axis_tdata[160] ;
  output \m_axis_tdata[161] ;
  output \m_axis_tdata[162] ;
  output \m_axis_tdata[163] ;
  output \m_axis_tdata[164] ;
  output \m_axis_tdata[165] ;
  output \m_axis_tdata[166] ;
  output \m_axis_tdata[167] ;
  output \m_axis_tdata[168] ;
  output \m_axis_tdata[169] ;
  output \m_axis_tdata[170] ;
  output \m_axis_tdata[171] ;
  output \m_axis_tdata[172] ;
  output \m_axis_tdata[173] ;
  output \m_axis_tdata[174] ;
  output \m_axis_tdata[175] ;
  output \m_axis_tdata[176] ;
  output \m_axis_tdata[177] ;
  output \m_axis_tdata[178] ;
  output \m_axis_tdata[179] ;
  output \m_axis_tdata[180] ;
  output \m_axis_tdata[181] ;
  output \m_axis_tdata[182] ;
  output \m_axis_tdata[183] ;
  output \m_axis_tdata[184] ;
  output \m_axis_tdata[185] ;
  output \m_axis_tdata[186] ;
  output \m_axis_tdata[187] ;
  output \m_axis_tdata[188] ;
  output \m_axis_tdata[189] ;
  output \m_axis_tdata[190] ;
  output \m_axis_tdata[191] ;
  output \m_axis_tkeep[20] ;
  output \m_axis_tkeep[21] ;
  output \m_axis_tkeep[22] ;
  output \m_axis_tkeep[23] ;
  output \m_axis_tlast[5] ;
  output \gen_AB_reg_slice.sel_rd_reg ;
  output \m_axis_tvalid[5] ;
  output \m_axis_tdata[192] ;
  output \m_axis_tdata[193] ;
  output \m_axis_tdata[194] ;
  output \m_axis_tdata[195] ;
  output \m_axis_tdata[196] ;
  output \m_axis_tdata[197] ;
  output \m_axis_tdata[198] ;
  output \m_axis_tdata[199] ;
  output \m_axis_tdata[200] ;
  output \m_axis_tdata[201] ;
  output \m_axis_tdata[202] ;
  output \m_axis_tdata[203] ;
  output \m_axis_tdata[204] ;
  output \m_axis_tdata[205] ;
  output \m_axis_tdata[206] ;
  output \m_axis_tdata[207] ;
  output \m_axis_tdata[208] ;
  output \m_axis_tdata[209] ;
  output \m_axis_tdata[210] ;
  output \m_axis_tdata[211] ;
  output \m_axis_tdata[212] ;
  output \m_axis_tdata[213] ;
  output \m_axis_tdata[214] ;
  output \m_axis_tdata[215] ;
  output \m_axis_tdata[216] ;
  output \m_axis_tdata[217] ;
  output \m_axis_tdata[218] ;
  output \m_axis_tdata[219] ;
  output \m_axis_tdata[220] ;
  output \m_axis_tdata[221] ;
  output \m_axis_tdata[222] ;
  output \m_axis_tdata[223] ;
  output \m_axis_tkeep[24] ;
  output \m_axis_tkeep[25] ;
  output \m_axis_tkeep[26] ;
  output \m_axis_tkeep[27] ;
  output \m_axis_tlast[6] ;
  output \m_axis_tvalid[6] ;
  output \s_axis_tready[6] ;
  output \gen_AB_reg_slice.sel_rd_reg_0 ;
  output \gen_AB_reg_slice.sel_rd_reg_1 ;
  input [35:0]ctrl_reg_synch;
  input [36:0]p_7_out;
  input [36:0]p_12_out;
  input [6:0]m_axis_tready;
  input [1:0]\gen_AB_reg_slice.state_reg[0] ;
  input aclken;
  input areset_r;
  input [0:0]s_axis_tvalid;
  input aclk;
  input [36:0]S_AXIS_TPAYLOAD;

  wire [36:0]S_AXIS_TPAYLOAD;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire [35:0]ctrl_reg_synch;
  wire \gen_AB_reg_slice.sel_rd_reg ;
  wire \gen_AB_reg_slice.sel_rd_reg_0 ;
  wire \gen_AB_reg_slice.sel_rd_reg_1 ;
  wire [1:0]\gen_AB_reg_slice.state_reg[0] ;
  wire \m_axis_tdata[0] ;
  wire \m_axis_tdata[100] ;
  wire \m_axis_tdata[101] ;
  wire \m_axis_tdata[102] ;
  wire \m_axis_tdata[103] ;
  wire \m_axis_tdata[104] ;
  wire \m_axis_tdata[105] ;
  wire \m_axis_tdata[106] ;
  wire \m_axis_tdata[107] ;
  wire \m_axis_tdata[108] ;
  wire \m_axis_tdata[109] ;
  wire \m_axis_tdata[10] ;
  wire \m_axis_tdata[110] ;
  wire \m_axis_tdata[111] ;
  wire \m_axis_tdata[112] ;
  wire \m_axis_tdata[113] ;
  wire \m_axis_tdata[114] ;
  wire \m_axis_tdata[115] ;
  wire \m_axis_tdata[116] ;
  wire \m_axis_tdata[117] ;
  wire \m_axis_tdata[118] ;
  wire \m_axis_tdata[119] ;
  wire \m_axis_tdata[11] ;
  wire \m_axis_tdata[120] ;
  wire \m_axis_tdata[121] ;
  wire \m_axis_tdata[122] ;
  wire \m_axis_tdata[123] ;
  wire \m_axis_tdata[124] ;
  wire \m_axis_tdata[125] ;
  wire \m_axis_tdata[126] ;
  wire \m_axis_tdata[127] ;
  wire \m_axis_tdata[128] ;
  wire \m_axis_tdata[129] ;
  wire \m_axis_tdata[12] ;
  wire \m_axis_tdata[130] ;
  wire \m_axis_tdata[131] ;
  wire \m_axis_tdata[132] ;
  wire \m_axis_tdata[133] ;
  wire \m_axis_tdata[134] ;
  wire \m_axis_tdata[135] ;
  wire \m_axis_tdata[136] ;
  wire \m_axis_tdata[137] ;
  wire \m_axis_tdata[138] ;
  wire \m_axis_tdata[139] ;
  wire \m_axis_tdata[13] ;
  wire \m_axis_tdata[140] ;
  wire \m_axis_tdata[141] ;
  wire \m_axis_tdata[142] ;
  wire \m_axis_tdata[143] ;
  wire \m_axis_tdata[144] ;
  wire \m_axis_tdata[145] ;
  wire \m_axis_tdata[146] ;
  wire \m_axis_tdata[147] ;
  wire \m_axis_tdata[148] ;
  wire \m_axis_tdata[149] ;
  wire \m_axis_tdata[14] ;
  wire \m_axis_tdata[150] ;
  wire \m_axis_tdata[151] ;
  wire \m_axis_tdata[152] ;
  wire \m_axis_tdata[153] ;
  wire \m_axis_tdata[154] ;
  wire \m_axis_tdata[155] ;
  wire \m_axis_tdata[156] ;
  wire \m_axis_tdata[157] ;
  wire \m_axis_tdata[158] ;
  wire \m_axis_tdata[159] ;
  wire \m_axis_tdata[15] ;
  wire \m_axis_tdata[160] ;
  wire \m_axis_tdata[161] ;
  wire \m_axis_tdata[162] ;
  wire \m_axis_tdata[163] ;
  wire \m_axis_tdata[164] ;
  wire \m_axis_tdata[165] ;
  wire \m_axis_tdata[166] ;
  wire \m_axis_tdata[167] ;
  wire \m_axis_tdata[168] ;
  wire \m_axis_tdata[169] ;
  wire \m_axis_tdata[16] ;
  wire \m_axis_tdata[170] ;
  wire \m_axis_tdata[171] ;
  wire \m_axis_tdata[172] ;
  wire \m_axis_tdata[173] ;
  wire \m_axis_tdata[174] ;
  wire \m_axis_tdata[175] ;
  wire \m_axis_tdata[176] ;
  wire \m_axis_tdata[177] ;
  wire \m_axis_tdata[178] ;
  wire \m_axis_tdata[179] ;
  wire \m_axis_tdata[17] ;
  wire \m_axis_tdata[180] ;
  wire \m_axis_tdata[181] ;
  wire \m_axis_tdata[182] ;
  wire \m_axis_tdata[183] ;
  wire \m_axis_tdata[184] ;
  wire \m_axis_tdata[185] ;
  wire \m_axis_tdata[186] ;
  wire \m_axis_tdata[187] ;
  wire \m_axis_tdata[188] ;
  wire \m_axis_tdata[189] ;
  wire \m_axis_tdata[18] ;
  wire \m_axis_tdata[190] ;
  wire \m_axis_tdata[191] ;
  wire \m_axis_tdata[192] ;
  wire \m_axis_tdata[193] ;
  wire \m_axis_tdata[194] ;
  wire \m_axis_tdata[195] ;
  wire \m_axis_tdata[196] ;
  wire \m_axis_tdata[197] ;
  wire \m_axis_tdata[198] ;
  wire \m_axis_tdata[199] ;
  wire \m_axis_tdata[19] ;
  wire \m_axis_tdata[1] ;
  wire \m_axis_tdata[200] ;
  wire \m_axis_tdata[201] ;
  wire \m_axis_tdata[202] ;
  wire \m_axis_tdata[203] ;
  wire \m_axis_tdata[204] ;
  wire \m_axis_tdata[205] ;
  wire \m_axis_tdata[206] ;
  wire \m_axis_tdata[207] ;
  wire \m_axis_tdata[208] ;
  wire \m_axis_tdata[209] ;
  wire \m_axis_tdata[20] ;
  wire \m_axis_tdata[210] ;
  wire \m_axis_tdata[211] ;
  wire \m_axis_tdata[212] ;
  wire \m_axis_tdata[213] ;
  wire \m_axis_tdata[214] ;
  wire \m_axis_tdata[215] ;
  wire \m_axis_tdata[216] ;
  wire \m_axis_tdata[217] ;
  wire \m_axis_tdata[218] ;
  wire \m_axis_tdata[219] ;
  wire \m_axis_tdata[21] ;
  wire \m_axis_tdata[220] ;
  wire \m_axis_tdata[221] ;
  wire \m_axis_tdata[222] ;
  wire \m_axis_tdata[223] ;
  wire \m_axis_tdata[22] ;
  wire \m_axis_tdata[23] ;
  wire \m_axis_tdata[24] ;
  wire \m_axis_tdata[25] ;
  wire \m_axis_tdata[26] ;
  wire \m_axis_tdata[27] ;
  wire \m_axis_tdata[28] ;
  wire \m_axis_tdata[29] ;
  wire \m_axis_tdata[2] ;
  wire \m_axis_tdata[30] ;
  wire \m_axis_tdata[31] ;
  wire \m_axis_tdata[32] ;
  wire \m_axis_tdata[33] ;
  wire \m_axis_tdata[34] ;
  wire \m_axis_tdata[35] ;
  wire \m_axis_tdata[36] ;
  wire \m_axis_tdata[37] ;
  wire \m_axis_tdata[38] ;
  wire \m_axis_tdata[39] ;
  wire \m_axis_tdata[3] ;
  wire \m_axis_tdata[40] ;
  wire \m_axis_tdata[41] ;
  wire \m_axis_tdata[42] ;
  wire \m_axis_tdata[43] ;
  wire \m_axis_tdata[44] ;
  wire \m_axis_tdata[45] ;
  wire \m_axis_tdata[46] ;
  wire \m_axis_tdata[47] ;
  wire \m_axis_tdata[48] ;
  wire \m_axis_tdata[49] ;
  wire \m_axis_tdata[4] ;
  wire \m_axis_tdata[50] ;
  wire \m_axis_tdata[51] ;
  wire \m_axis_tdata[52] ;
  wire \m_axis_tdata[53] ;
  wire \m_axis_tdata[54] ;
  wire \m_axis_tdata[55] ;
  wire \m_axis_tdata[56] ;
  wire \m_axis_tdata[57] ;
  wire \m_axis_tdata[58] ;
  wire \m_axis_tdata[59] ;
  wire \m_axis_tdata[5] ;
  wire \m_axis_tdata[60] ;
  wire \m_axis_tdata[61] ;
  wire \m_axis_tdata[62] ;
  wire \m_axis_tdata[63] ;
  wire \m_axis_tdata[64] ;
  wire \m_axis_tdata[65] ;
  wire \m_axis_tdata[66] ;
  wire \m_axis_tdata[67] ;
  wire \m_axis_tdata[68] ;
  wire \m_axis_tdata[69] ;
  wire \m_axis_tdata[6] ;
  wire \m_axis_tdata[70] ;
  wire \m_axis_tdata[71] ;
  wire \m_axis_tdata[72] ;
  wire \m_axis_tdata[73] ;
  wire \m_axis_tdata[74] ;
  wire \m_axis_tdata[75] ;
  wire \m_axis_tdata[76] ;
  wire \m_axis_tdata[77] ;
  wire \m_axis_tdata[78] ;
  wire \m_axis_tdata[79] ;
  wire \m_axis_tdata[7] ;
  wire \m_axis_tdata[80] ;
  wire \m_axis_tdata[81] ;
  wire \m_axis_tdata[82] ;
  wire \m_axis_tdata[83] ;
  wire \m_axis_tdata[84] ;
  wire \m_axis_tdata[85] ;
  wire \m_axis_tdata[86] ;
  wire \m_axis_tdata[87] ;
  wire \m_axis_tdata[88] ;
  wire \m_axis_tdata[89] ;
  wire \m_axis_tdata[8] ;
  wire \m_axis_tdata[90] ;
  wire \m_axis_tdata[91] ;
  wire \m_axis_tdata[92] ;
  wire \m_axis_tdata[93] ;
  wire \m_axis_tdata[94] ;
  wire \m_axis_tdata[95] ;
  wire \m_axis_tdata[96] ;
  wire \m_axis_tdata[97] ;
  wire \m_axis_tdata[98] ;
  wire \m_axis_tdata[99] ;
  wire \m_axis_tdata[9] ;
  wire \m_axis_tkeep[0] ;
  wire \m_axis_tkeep[10] ;
  wire \m_axis_tkeep[11] ;
  wire \m_axis_tkeep[12] ;
  wire \m_axis_tkeep[13] ;
  wire \m_axis_tkeep[14] ;
  wire \m_axis_tkeep[15] ;
  wire \m_axis_tkeep[16] ;
  wire \m_axis_tkeep[17] ;
  wire \m_axis_tkeep[18] ;
  wire \m_axis_tkeep[19] ;
  wire \m_axis_tkeep[1] ;
  wire \m_axis_tkeep[20] ;
  wire \m_axis_tkeep[21] ;
  wire \m_axis_tkeep[22] ;
  wire \m_axis_tkeep[23] ;
  wire \m_axis_tkeep[24] ;
  wire \m_axis_tkeep[25] ;
  wire \m_axis_tkeep[26] ;
  wire \m_axis_tkeep[27] ;
  wire \m_axis_tkeep[2] ;
  wire \m_axis_tkeep[3] ;
  wire \m_axis_tkeep[4] ;
  wire \m_axis_tkeep[5] ;
  wire \m_axis_tkeep[6] ;
  wire \m_axis_tkeep[7] ;
  wire \m_axis_tkeep[8] ;
  wire \m_axis_tkeep[9] ;
  wire \m_axis_tlast[0] ;
  wire \m_axis_tlast[1] ;
  wire \m_axis_tlast[2] ;
  wire \m_axis_tlast[3] ;
  wire \m_axis_tlast[4] ;
  wire \m_axis_tlast[5] ;
  wire \m_axis_tlast[6] ;
  wire [6:0]m_axis_tready;
  wire \m_axis_tvalid[0] ;
  wire \m_axis_tvalid[1] ;
  wire \m_axis_tvalid[2] ;
  wire \m_axis_tvalid[3] ;
  wire \m_axis_tvalid[4] ;
  wire \m_axis_tvalid[5] ;
  wire \m_axis_tvalid[6] ;
  wire [36:0]p_12_out;
  wire [36:0]p_7_out;
  wire \s_axis_tready[6] ;
  wire [0:0]s_axis_tvalid;

  top_xbar_4_axis_register_slice_v1_1_8_axisc_register_slice \gen_static_routing.inst_decoder_pipeline 
       (.S_AXIS_TPAYLOAD(S_AXIS_TPAYLOAD),
        .aclk(aclk),
        .aclken(aclken),
        .areset_r(areset_r),
        .ctrl_reg_synch(ctrl_reg_synch),
        .\gen_AB_reg_slice.sel_rd_reg_0 (\gen_AB_reg_slice.sel_rd_reg ),
        .\gen_AB_reg_slice.sel_rd_reg_1 (\gen_AB_reg_slice.sel_rd_reg_0 ),
        .\gen_AB_reg_slice.sel_rd_reg_2 (\gen_AB_reg_slice.sel_rd_reg_1 ),
        .\gen_AB_reg_slice.state_reg[0]_0 (\gen_AB_reg_slice.state_reg[0] ),
        .\m_axis_tdata[0] (\m_axis_tdata[0] ),
        .\m_axis_tdata[100] (\m_axis_tdata[100] ),
        .\m_axis_tdata[101] (\m_axis_tdata[101] ),
        .\m_axis_tdata[102] (\m_axis_tdata[102] ),
        .\m_axis_tdata[103] (\m_axis_tdata[103] ),
        .\m_axis_tdata[104] (\m_axis_tdata[104] ),
        .\m_axis_tdata[105] (\m_axis_tdata[105] ),
        .\m_axis_tdata[106] (\m_axis_tdata[106] ),
        .\m_axis_tdata[107] (\m_axis_tdata[107] ),
        .\m_axis_tdata[108] (\m_axis_tdata[108] ),
        .\m_axis_tdata[109] (\m_axis_tdata[109] ),
        .\m_axis_tdata[10] (\m_axis_tdata[10] ),
        .\m_axis_tdata[110] (\m_axis_tdata[110] ),
        .\m_axis_tdata[111] (\m_axis_tdata[111] ),
        .\m_axis_tdata[112] (\m_axis_tdata[112] ),
        .\m_axis_tdata[113] (\m_axis_tdata[113] ),
        .\m_axis_tdata[114] (\m_axis_tdata[114] ),
        .\m_axis_tdata[115] (\m_axis_tdata[115] ),
        .\m_axis_tdata[116] (\m_axis_tdata[116] ),
        .\m_axis_tdata[117] (\m_axis_tdata[117] ),
        .\m_axis_tdata[118] (\m_axis_tdata[118] ),
        .\m_axis_tdata[119] (\m_axis_tdata[119] ),
        .\m_axis_tdata[11] (\m_axis_tdata[11] ),
        .\m_axis_tdata[120] (\m_axis_tdata[120] ),
        .\m_axis_tdata[121] (\m_axis_tdata[121] ),
        .\m_axis_tdata[122] (\m_axis_tdata[122] ),
        .\m_axis_tdata[123] (\m_axis_tdata[123] ),
        .\m_axis_tdata[124] (\m_axis_tdata[124] ),
        .\m_axis_tdata[125] (\m_axis_tdata[125] ),
        .\m_axis_tdata[126] (\m_axis_tdata[126] ),
        .\m_axis_tdata[127] (\m_axis_tdata[127] ),
        .\m_axis_tdata[128] (\m_axis_tdata[128] ),
        .\m_axis_tdata[129] (\m_axis_tdata[129] ),
        .\m_axis_tdata[12] (\m_axis_tdata[12] ),
        .\m_axis_tdata[130] (\m_axis_tdata[130] ),
        .\m_axis_tdata[131] (\m_axis_tdata[131] ),
        .\m_axis_tdata[132] (\m_axis_tdata[132] ),
        .\m_axis_tdata[133] (\m_axis_tdata[133] ),
        .\m_axis_tdata[134] (\m_axis_tdata[134] ),
        .\m_axis_tdata[135] (\m_axis_tdata[135] ),
        .\m_axis_tdata[136] (\m_axis_tdata[136] ),
        .\m_axis_tdata[137] (\m_axis_tdata[137] ),
        .\m_axis_tdata[138] (\m_axis_tdata[138] ),
        .\m_axis_tdata[139] (\m_axis_tdata[139] ),
        .\m_axis_tdata[13] (\m_axis_tdata[13] ),
        .\m_axis_tdata[140] (\m_axis_tdata[140] ),
        .\m_axis_tdata[141] (\m_axis_tdata[141] ),
        .\m_axis_tdata[142] (\m_axis_tdata[142] ),
        .\m_axis_tdata[143] (\m_axis_tdata[143] ),
        .\m_axis_tdata[144] (\m_axis_tdata[144] ),
        .\m_axis_tdata[145] (\m_axis_tdata[145] ),
        .\m_axis_tdata[146] (\m_axis_tdata[146] ),
        .\m_axis_tdata[147] (\m_axis_tdata[147] ),
        .\m_axis_tdata[148] (\m_axis_tdata[148] ),
        .\m_axis_tdata[149] (\m_axis_tdata[149] ),
        .\m_axis_tdata[14] (\m_axis_tdata[14] ),
        .\m_axis_tdata[150] (\m_axis_tdata[150] ),
        .\m_axis_tdata[151] (\m_axis_tdata[151] ),
        .\m_axis_tdata[152] (\m_axis_tdata[152] ),
        .\m_axis_tdata[153] (\m_axis_tdata[153] ),
        .\m_axis_tdata[154] (\m_axis_tdata[154] ),
        .\m_axis_tdata[155] (\m_axis_tdata[155] ),
        .\m_axis_tdata[156] (\m_axis_tdata[156] ),
        .\m_axis_tdata[157] (\m_axis_tdata[157] ),
        .\m_axis_tdata[158] (\m_axis_tdata[158] ),
        .\m_axis_tdata[159] (\m_axis_tdata[159] ),
        .\m_axis_tdata[15] (\m_axis_tdata[15] ),
        .\m_axis_tdata[160] (\m_axis_tdata[160] ),
        .\m_axis_tdata[161] (\m_axis_tdata[161] ),
        .\m_axis_tdata[162] (\m_axis_tdata[162] ),
        .\m_axis_tdata[163] (\m_axis_tdata[163] ),
        .\m_axis_tdata[164] (\m_axis_tdata[164] ),
        .\m_axis_tdata[165] (\m_axis_tdata[165] ),
        .\m_axis_tdata[166] (\m_axis_tdata[166] ),
        .\m_axis_tdata[167] (\m_axis_tdata[167] ),
        .\m_axis_tdata[168] (\m_axis_tdata[168] ),
        .\m_axis_tdata[169] (\m_axis_tdata[169] ),
        .\m_axis_tdata[16] (\m_axis_tdata[16] ),
        .\m_axis_tdata[170] (\m_axis_tdata[170] ),
        .\m_axis_tdata[171] (\m_axis_tdata[171] ),
        .\m_axis_tdata[172] (\m_axis_tdata[172] ),
        .\m_axis_tdata[173] (\m_axis_tdata[173] ),
        .\m_axis_tdata[174] (\m_axis_tdata[174] ),
        .\m_axis_tdata[175] (\m_axis_tdata[175] ),
        .\m_axis_tdata[176] (\m_axis_tdata[176] ),
        .\m_axis_tdata[177] (\m_axis_tdata[177] ),
        .\m_axis_tdata[178] (\m_axis_tdata[178] ),
        .\m_axis_tdata[179] (\m_axis_tdata[179] ),
        .\m_axis_tdata[17] (\m_axis_tdata[17] ),
        .\m_axis_tdata[180] (\m_axis_tdata[180] ),
        .\m_axis_tdata[181] (\m_axis_tdata[181] ),
        .\m_axis_tdata[182] (\m_axis_tdata[182] ),
        .\m_axis_tdata[183] (\m_axis_tdata[183] ),
        .\m_axis_tdata[184] (\m_axis_tdata[184] ),
        .\m_axis_tdata[185] (\m_axis_tdata[185] ),
        .\m_axis_tdata[186] (\m_axis_tdata[186] ),
        .\m_axis_tdata[187] (\m_axis_tdata[187] ),
        .\m_axis_tdata[188] (\m_axis_tdata[188] ),
        .\m_axis_tdata[189] (\m_axis_tdata[189] ),
        .\m_axis_tdata[18] (\m_axis_tdata[18] ),
        .\m_axis_tdata[190] (\m_axis_tdata[190] ),
        .\m_axis_tdata[191] (\m_axis_tdata[191] ),
        .\m_axis_tdata[192] (\m_axis_tdata[192] ),
        .\m_axis_tdata[193] (\m_axis_tdata[193] ),
        .\m_axis_tdata[194] (\m_axis_tdata[194] ),
        .\m_axis_tdata[195] (\m_axis_tdata[195] ),
        .\m_axis_tdata[196] (\m_axis_tdata[196] ),
        .\m_axis_tdata[197] (\m_axis_tdata[197] ),
        .\m_axis_tdata[198] (\m_axis_tdata[198] ),
        .\m_axis_tdata[199] (\m_axis_tdata[199] ),
        .\m_axis_tdata[19] (\m_axis_tdata[19] ),
        .\m_axis_tdata[1] (\m_axis_tdata[1] ),
        .\m_axis_tdata[200] (\m_axis_tdata[200] ),
        .\m_axis_tdata[201] (\m_axis_tdata[201] ),
        .\m_axis_tdata[202] (\m_axis_tdata[202] ),
        .\m_axis_tdata[203] (\m_axis_tdata[203] ),
        .\m_axis_tdata[204] (\m_axis_tdata[204] ),
        .\m_axis_tdata[205] (\m_axis_tdata[205] ),
        .\m_axis_tdata[206] (\m_axis_tdata[206] ),
        .\m_axis_tdata[207] (\m_axis_tdata[207] ),
        .\m_axis_tdata[208] (\m_axis_tdata[208] ),
        .\m_axis_tdata[209] (\m_axis_tdata[209] ),
        .\m_axis_tdata[20] (\m_axis_tdata[20] ),
        .\m_axis_tdata[210] (\m_axis_tdata[210] ),
        .\m_axis_tdata[211] (\m_axis_tdata[211] ),
        .\m_axis_tdata[212] (\m_axis_tdata[212] ),
        .\m_axis_tdata[213] (\m_axis_tdata[213] ),
        .\m_axis_tdata[214] (\m_axis_tdata[214] ),
        .\m_axis_tdata[215] (\m_axis_tdata[215] ),
        .\m_axis_tdata[216] (\m_axis_tdata[216] ),
        .\m_axis_tdata[217] (\m_axis_tdata[217] ),
        .\m_axis_tdata[218] (\m_axis_tdata[218] ),
        .\m_axis_tdata[219] (\m_axis_tdata[219] ),
        .\m_axis_tdata[21] (\m_axis_tdata[21] ),
        .\m_axis_tdata[220] (\m_axis_tdata[220] ),
        .\m_axis_tdata[221] (\m_axis_tdata[221] ),
        .\m_axis_tdata[222] (\m_axis_tdata[222] ),
        .\m_axis_tdata[223] (\m_axis_tdata[223] ),
        .\m_axis_tdata[22] (\m_axis_tdata[22] ),
        .\m_axis_tdata[23] (\m_axis_tdata[23] ),
        .\m_axis_tdata[24] (\m_axis_tdata[24] ),
        .\m_axis_tdata[25] (\m_axis_tdata[25] ),
        .\m_axis_tdata[26] (\m_axis_tdata[26] ),
        .\m_axis_tdata[27] (\m_axis_tdata[27] ),
        .\m_axis_tdata[28] (\m_axis_tdata[28] ),
        .\m_axis_tdata[29] (\m_axis_tdata[29] ),
        .\m_axis_tdata[2] (\m_axis_tdata[2] ),
        .\m_axis_tdata[30] (\m_axis_tdata[30] ),
        .\m_axis_tdata[31] (\m_axis_tdata[31] ),
        .\m_axis_tdata[32] (\m_axis_tdata[32] ),
        .\m_axis_tdata[33] (\m_axis_tdata[33] ),
        .\m_axis_tdata[34] (\m_axis_tdata[34] ),
        .\m_axis_tdata[35] (\m_axis_tdata[35] ),
        .\m_axis_tdata[36] (\m_axis_tdata[36] ),
        .\m_axis_tdata[37] (\m_axis_tdata[37] ),
        .\m_axis_tdata[38] (\m_axis_tdata[38] ),
        .\m_axis_tdata[39] (\m_axis_tdata[39] ),
        .\m_axis_tdata[3] (\m_axis_tdata[3] ),
        .\m_axis_tdata[40] (\m_axis_tdata[40] ),
        .\m_axis_tdata[41] (\m_axis_tdata[41] ),
        .\m_axis_tdata[42] (\m_axis_tdata[42] ),
        .\m_axis_tdata[43] (\m_axis_tdata[43] ),
        .\m_axis_tdata[44] (\m_axis_tdata[44] ),
        .\m_axis_tdata[45] (\m_axis_tdata[45] ),
        .\m_axis_tdata[46] (\m_axis_tdata[46] ),
        .\m_axis_tdata[47] (\m_axis_tdata[47] ),
        .\m_axis_tdata[48] (\m_axis_tdata[48] ),
        .\m_axis_tdata[49] (\m_axis_tdata[49] ),
        .\m_axis_tdata[4] (\m_axis_tdata[4] ),
        .\m_axis_tdata[50] (\m_axis_tdata[50] ),
        .\m_axis_tdata[51] (\m_axis_tdata[51] ),
        .\m_axis_tdata[52] (\m_axis_tdata[52] ),
        .\m_axis_tdata[53] (\m_axis_tdata[53] ),
        .\m_axis_tdata[54] (\m_axis_tdata[54] ),
        .\m_axis_tdata[55] (\m_axis_tdata[55] ),
        .\m_axis_tdata[56] (\m_axis_tdata[56] ),
        .\m_axis_tdata[57] (\m_axis_tdata[57] ),
        .\m_axis_tdata[58] (\m_axis_tdata[58] ),
        .\m_axis_tdata[59] (\m_axis_tdata[59] ),
        .\m_axis_tdata[5] (\m_axis_tdata[5] ),
        .\m_axis_tdata[60] (\m_axis_tdata[60] ),
        .\m_axis_tdata[61] (\m_axis_tdata[61] ),
        .\m_axis_tdata[62] (\m_axis_tdata[62] ),
        .\m_axis_tdata[63] (\m_axis_tdata[63] ),
        .\m_axis_tdata[64] (\m_axis_tdata[64] ),
        .\m_axis_tdata[65] (\m_axis_tdata[65] ),
        .\m_axis_tdata[66] (\m_axis_tdata[66] ),
        .\m_axis_tdata[67] (\m_axis_tdata[67] ),
        .\m_axis_tdata[68] (\m_axis_tdata[68] ),
        .\m_axis_tdata[69] (\m_axis_tdata[69] ),
        .\m_axis_tdata[6] (\m_axis_tdata[6] ),
        .\m_axis_tdata[70] (\m_axis_tdata[70] ),
        .\m_axis_tdata[71] (\m_axis_tdata[71] ),
        .\m_axis_tdata[72] (\m_axis_tdata[72] ),
        .\m_axis_tdata[73] (\m_axis_tdata[73] ),
        .\m_axis_tdata[74] (\m_axis_tdata[74] ),
        .\m_axis_tdata[75] (\m_axis_tdata[75] ),
        .\m_axis_tdata[76] (\m_axis_tdata[76] ),
        .\m_axis_tdata[77] (\m_axis_tdata[77] ),
        .\m_axis_tdata[78] (\m_axis_tdata[78] ),
        .\m_axis_tdata[79] (\m_axis_tdata[79] ),
        .\m_axis_tdata[7] (\m_axis_tdata[7] ),
        .\m_axis_tdata[80] (\m_axis_tdata[80] ),
        .\m_axis_tdata[81] (\m_axis_tdata[81] ),
        .\m_axis_tdata[82] (\m_axis_tdata[82] ),
        .\m_axis_tdata[83] (\m_axis_tdata[83] ),
        .\m_axis_tdata[84] (\m_axis_tdata[84] ),
        .\m_axis_tdata[85] (\m_axis_tdata[85] ),
        .\m_axis_tdata[86] (\m_axis_tdata[86] ),
        .\m_axis_tdata[87] (\m_axis_tdata[87] ),
        .\m_axis_tdata[88] (\m_axis_tdata[88] ),
        .\m_axis_tdata[89] (\m_axis_tdata[89] ),
        .\m_axis_tdata[8] (\m_axis_tdata[8] ),
        .\m_axis_tdata[90] (\m_axis_tdata[90] ),
        .\m_axis_tdata[91] (\m_axis_tdata[91] ),
        .\m_axis_tdata[92] (\m_axis_tdata[92] ),
        .\m_axis_tdata[93] (\m_axis_tdata[93] ),
        .\m_axis_tdata[94] (\m_axis_tdata[94] ),
        .\m_axis_tdata[95] (\m_axis_tdata[95] ),
        .\m_axis_tdata[96] (\m_axis_tdata[96] ),
        .\m_axis_tdata[97] (\m_axis_tdata[97] ),
        .\m_axis_tdata[98] (\m_axis_tdata[98] ),
        .\m_axis_tdata[99] (\m_axis_tdata[99] ),
        .\m_axis_tdata[9] (\m_axis_tdata[9] ),
        .\m_axis_tkeep[0] (\m_axis_tkeep[0] ),
        .\m_axis_tkeep[10] (\m_axis_tkeep[10] ),
        .\m_axis_tkeep[11] (\m_axis_tkeep[11] ),
        .\m_axis_tkeep[12] (\m_axis_tkeep[12] ),
        .\m_axis_tkeep[13] (\m_axis_tkeep[13] ),
        .\m_axis_tkeep[14] (\m_axis_tkeep[14] ),
        .\m_axis_tkeep[15] (\m_axis_tkeep[15] ),
        .\m_axis_tkeep[16] (\m_axis_tkeep[16] ),
        .\m_axis_tkeep[17] (\m_axis_tkeep[17] ),
        .\m_axis_tkeep[18] (\m_axis_tkeep[18] ),
        .\m_axis_tkeep[19] (\m_axis_tkeep[19] ),
        .\m_axis_tkeep[1] (\m_axis_tkeep[1] ),
        .\m_axis_tkeep[20] (\m_axis_tkeep[20] ),
        .\m_axis_tkeep[21] (\m_axis_tkeep[21] ),
        .\m_axis_tkeep[22] (\m_axis_tkeep[22] ),
        .\m_axis_tkeep[23] (\m_axis_tkeep[23] ),
        .\m_axis_tkeep[24] (\m_axis_tkeep[24] ),
        .\m_axis_tkeep[25] (\m_axis_tkeep[25] ),
        .\m_axis_tkeep[26] (\m_axis_tkeep[26] ),
        .\m_axis_tkeep[27] (\m_axis_tkeep[27] ),
        .\m_axis_tkeep[2] (\m_axis_tkeep[2] ),
        .\m_axis_tkeep[3] (\m_axis_tkeep[3] ),
        .\m_axis_tkeep[4] (\m_axis_tkeep[4] ),
        .\m_axis_tkeep[5] (\m_axis_tkeep[5] ),
        .\m_axis_tkeep[6] (\m_axis_tkeep[6] ),
        .\m_axis_tkeep[7] (\m_axis_tkeep[7] ),
        .\m_axis_tkeep[8] (\m_axis_tkeep[8] ),
        .\m_axis_tkeep[9] (\m_axis_tkeep[9] ),
        .\m_axis_tlast[0] (\m_axis_tlast[0] ),
        .\m_axis_tlast[1] (\m_axis_tlast[1] ),
        .\m_axis_tlast[2] (\m_axis_tlast[2] ),
        .\m_axis_tlast[3] (\m_axis_tlast[3] ),
        .\m_axis_tlast[4] (\m_axis_tlast[4] ),
        .\m_axis_tlast[5] (\m_axis_tlast[5] ),
        .\m_axis_tlast[6] (\m_axis_tlast[6] ),
        .m_axis_tready(m_axis_tready),
        .\m_axis_tvalid[0] (\m_axis_tvalid[0] ),
        .\m_axis_tvalid[1] (\m_axis_tvalid[1] ),
        .\m_axis_tvalid[2] (\m_axis_tvalid[2] ),
        .\m_axis_tvalid[3] (\m_axis_tvalid[3] ),
        .\m_axis_tvalid[4] (\m_axis_tvalid[4] ),
        .\m_axis_tvalid[5] (\m_axis_tvalid[5] ),
        .\m_axis_tvalid[6] (\m_axis_tvalid[6] ),
        .p_12_out(p_12_out),
        .p_7_out(p_7_out),
        .\s_axis_tready[6] (\s_axis_tready[6] ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module top_xbar_4_axis_switch_v1_1_8_reg_bank_16x32
   (Q,
    s_axi_ctrl_areset,
    E,
    D,
    s_axi_ctrl_aclk);
  output [31:0]Q;
  input s_axi_ctrl_areset;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire s_axi_ctrl_aclk;
  wire s_axi_ctrl_areset;

  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .S(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(s_axi_ctrl_areset));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_8_reg_bank_16x32" *) 
module top_xbar_4_axis_switch_v1_1_8_reg_bank_16x32__parameterized0
   (\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ,
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ,
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ,
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ,
    \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ,
    Q,
    \gen_mi_mux_in[5].mi_mux_en_in_reg[5] ,
    \data_reg[30] ,
    \gen_mi_mux_in[6].mi_mux_en_in_reg[6] ,
    \data_reg[30]_0 ,
    \data_reg[31] ,
    \data_reg[31]_0 ,
    \data_reg[30]_1 ,
    \data_reg[29] ,
    \data_reg[28] ,
    \data_reg[27] ,
    \data_reg[26] ,
    \data_reg[25] ,
    \data_reg[24] ,
    \data_reg[23] ,
    \data_reg[22] ,
    \data_reg[21] ,
    \data_reg[20] ,
    \data_reg[19] ,
    \data_reg[18] ,
    \data_reg[17] ,
    \data_reg[16] ,
    \data_reg[15] ,
    \data_reg[14] ,
    \data_reg[13] ,
    \data_reg[12] ,
    \data_reg[11] ,
    \data_reg[10] ,
    \data_reg[9] ,
    \data_reg[8] ,
    \data_reg[7] ,
    \data_reg[6] ,
    \data_reg[5] ,
    \data_reg[4] ,
    \data_reg[3] ,
    \gen_mi_mux_in[3].mi_mux_in_reg[15] ,
    \gen_mi_mux_in[2].mi_mux_in_reg[11] ,
    \gen_mi_mux_in[1].mi_mux_in_reg[7] ,
    \gen_mi_mux_in[0].mi_mux_in_reg[3] ,
    \data_reg[2] ,
    \data_reg[1] ,
    \data_reg[0] ,
    \addr_r_reg[3] ,
    s_axi_ctrl_areset,
    E,
    D,
    s_axi_ctrl_aclk,
    \addr_r_reg[2] ,
    \addr_r_reg[2]_0 ,
    \addr_r_reg[2]_1 ,
    \addr_r_reg[2]_2 ,
    \addr_r_reg[2]_3 ,
    \addr_r_reg[2]_4 );
  output \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  output \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  output \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  output \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  output \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ;
  output [30:0]Q;
  output \gen_mi_mux_in[5].mi_mux_en_in_reg[5] ;
  output [30:0]\data_reg[30] ;
  output \gen_mi_mux_in[6].mi_mux_en_in_reg[6] ;
  output [30:0]\data_reg[30]_0 ;
  output \data_reg[31] ;
  output \data_reg[31]_0 ;
  output \data_reg[30]_1 ;
  output \data_reg[29] ;
  output \data_reg[28] ;
  output \data_reg[27] ;
  output \data_reg[26] ;
  output \data_reg[25] ;
  output \data_reg[24] ;
  output \data_reg[23] ;
  output \data_reg[22] ;
  output \data_reg[21] ;
  output \data_reg[20] ;
  output \data_reg[19] ;
  output \data_reg[18] ;
  output \data_reg[17] ;
  output \data_reg[16] ;
  output \data_reg[15] ;
  output \data_reg[14] ;
  output \data_reg[13] ;
  output \data_reg[12] ;
  output \data_reg[11] ;
  output \data_reg[10] ;
  output \data_reg[9] ;
  output \data_reg[8] ;
  output \data_reg[7] ;
  output \data_reg[6] ;
  output \data_reg[5] ;
  output \data_reg[4] ;
  output \data_reg[3] ;
  output [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;
  output [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  output [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  output [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  output \data_reg[2] ;
  output \data_reg[1] ;
  output \data_reg[0] ;
  input [1:0]\addr_r_reg[3] ;
  input s_axi_ctrl_areset;
  input [0:0]E;
  input [31:0]D;
  input s_axi_ctrl_aclk;
  input [0:0]\addr_r_reg[2] ;
  input [0:0]\addr_r_reg[2]_0 ;
  input [0:0]\addr_r_reg[2]_1 ;
  input [0:0]\addr_r_reg[2]_2 ;
  input [0:0]\addr_r_reg[2]_3 ;
  input [0:0]\addr_r_reg[2]_4 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [30:0]Q;
  wire [0:0]\addr_r_reg[2] ;
  wire [0:0]\addr_r_reg[2]_0 ;
  wire [0:0]\addr_r_reg[2]_1 ;
  wire [0:0]\addr_r_reg[2]_2 ;
  wire [0:0]\addr_r_reg[2]_3 ;
  wire [0:0]\addr_r_reg[2]_4 ;
  wire [1:0]\addr_r_reg[3] ;
  wire \data_reg[0] ;
  wire \data_reg[10] ;
  wire \data_reg[11] ;
  wire \data_reg[12] ;
  wire \data_reg[13] ;
  wire \data_reg[14] ;
  wire \data_reg[15] ;
  wire \data_reg[16] ;
  wire \data_reg[17] ;
  wire \data_reg[18] ;
  wire \data_reg[19] ;
  wire \data_reg[1] ;
  wire \data_reg[20] ;
  wire \data_reg[21] ;
  wire \data_reg[22] ;
  wire \data_reg[23] ;
  wire \data_reg[24] ;
  wire \data_reg[25] ;
  wire \data_reg[26] ;
  wire \data_reg[27] ;
  wire \data_reg[28] ;
  wire \data_reg[29] ;
  wire \data_reg[2] ;
  wire [30:0]\data_reg[30] ;
  wire [30:0]\data_reg[30]_0 ;
  wire \data_reg[30]_1 ;
  wire \data_reg[31] ;
  wire \data_reg[31]_0 ;
  wire \data_reg[3] ;
  wire \data_reg[4] ;
  wire \data_reg[5] ;
  wire \data_reg[6] ;
  wire \data_reg[7] ;
  wire \data_reg[8] ;
  wire \data_reg[9] ;
  wire \gen_mi_mux_in[0].mi_mux_en_in_reg[0] ;
  wire [3:0]\gen_mi_mux_in[0].mi_mux_in_reg[3] ;
  wire \gen_mi_mux_in[1].mi_mux_en_in_reg[1] ;
  wire [3:0]\gen_mi_mux_in[1].mi_mux_in_reg[7] ;
  wire \gen_mi_mux_in[2].mi_mux_en_in_reg[2] ;
  wire [3:0]\gen_mi_mux_in[2].mi_mux_in_reg[11] ;
  wire \gen_mi_mux_in[3].mi_mux_en_in_reg[3] ;
  wire [3:0]\gen_mi_mux_in[3].mi_mux_in_reg[15] ;
  wire \gen_mi_mux_in[4].mi_mux_en_in_reg[4] ;
  wire \gen_mi_mux_in[5].mi_mux_en_in_reg[5] ;
  wire \gen_mi_mux_in[6].mi_mux_en_in_reg[6] ;
  wire \gen_reg[0].reg_data_reg_n_0_[10] ;
  wire \gen_reg[0].reg_data_reg_n_0_[11] ;
  wire \gen_reg[0].reg_data_reg_n_0_[12] ;
  wire \gen_reg[0].reg_data_reg_n_0_[13] ;
  wire \gen_reg[0].reg_data_reg_n_0_[14] ;
  wire \gen_reg[0].reg_data_reg_n_0_[15] ;
  wire \gen_reg[0].reg_data_reg_n_0_[16] ;
  wire \gen_reg[0].reg_data_reg_n_0_[17] ;
  wire \gen_reg[0].reg_data_reg_n_0_[18] ;
  wire \gen_reg[0].reg_data_reg_n_0_[19] ;
  wire \gen_reg[0].reg_data_reg_n_0_[20] ;
  wire \gen_reg[0].reg_data_reg_n_0_[21] ;
  wire \gen_reg[0].reg_data_reg_n_0_[22] ;
  wire \gen_reg[0].reg_data_reg_n_0_[23] ;
  wire \gen_reg[0].reg_data_reg_n_0_[24] ;
  wire \gen_reg[0].reg_data_reg_n_0_[25] ;
  wire \gen_reg[0].reg_data_reg_n_0_[26] ;
  wire \gen_reg[0].reg_data_reg_n_0_[27] ;
  wire \gen_reg[0].reg_data_reg_n_0_[28] ;
  wire \gen_reg[0].reg_data_reg_n_0_[29] ;
  wire \gen_reg[0].reg_data_reg_n_0_[30] ;
  wire \gen_reg[0].reg_data_reg_n_0_[31] ;
  wire \gen_reg[0].reg_data_reg_n_0_[4] ;
  wire \gen_reg[0].reg_data_reg_n_0_[5] ;
  wire \gen_reg[0].reg_data_reg_n_0_[6] ;
  wire \gen_reg[0].reg_data_reg_n_0_[7] ;
  wire \gen_reg[0].reg_data_reg_n_0_[8] ;
  wire \gen_reg[0].reg_data_reg_n_0_[9] ;
  wire [31:4]\gen_reg[1].reg_data_reg ;
  wire [31:4]\gen_reg[2].reg_data_reg ;
  wire [31:4]\gen_reg[3].reg_data_reg ;
  wire [31:31]\gen_reg[4].reg_data_reg ;
  wire [31:31]\gen_reg[5].reg_data_reg ;
  wire [31:31]\gen_reg[6].reg_data_reg ;
  wire s_axi_ctrl_aclk;
  wire s_axi_ctrl_areset;

  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[0]_i_3 
       (.I0(\gen_mi_mux_in[3].mi_mux_in_reg[15] [0]),
        .I1(\gen_mi_mux_in[2].mi_mux_in_reg[11] [0]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_mi_mux_in[1].mi_mux_in_reg[7] [0]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_mi_mux_in[0].mi_mux_in_reg[3] [0]),
        .O(\data_reg[0] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[10]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [10]),
        .I1(\gen_reg[2].reg_data_reg [10]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [10]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[10] ),
        .O(\data_reg[10] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[11]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [11]),
        .I1(\gen_reg[2].reg_data_reg [11]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [11]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[11] ),
        .O(\data_reg[11] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[12]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [12]),
        .I1(\gen_reg[2].reg_data_reg [12]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [12]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[12] ),
        .O(\data_reg[12] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[13]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [13]),
        .I1(\gen_reg[2].reg_data_reg [13]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [13]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[13] ),
        .O(\data_reg[13] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[14]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [14]),
        .I1(\gen_reg[2].reg_data_reg [14]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [14]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[14] ),
        .O(\data_reg[14] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[15]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [15]),
        .I1(\gen_reg[2].reg_data_reg [15]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [15]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[15] ),
        .O(\data_reg[15] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[16]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [16]),
        .I1(\gen_reg[2].reg_data_reg [16]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [16]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[16] ),
        .O(\data_reg[16] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[17]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [17]),
        .I1(\gen_reg[2].reg_data_reg [17]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [17]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[17] ),
        .O(\data_reg[17] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[18]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [18]),
        .I1(\gen_reg[2].reg_data_reg [18]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [18]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[18] ),
        .O(\data_reg[18] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[19]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [19]),
        .I1(\gen_reg[2].reg_data_reg [19]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [19]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[19] ),
        .O(\data_reg[19] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[1]_i_3 
       (.I0(\gen_mi_mux_in[3].mi_mux_in_reg[15] [1]),
        .I1(\gen_mi_mux_in[2].mi_mux_in_reg[11] [1]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_mi_mux_in[1].mi_mux_in_reg[7] [1]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_mi_mux_in[0].mi_mux_in_reg[3] [1]),
        .O(\data_reg[1] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[20]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [20]),
        .I1(\gen_reg[2].reg_data_reg [20]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [20]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[20] ),
        .O(\data_reg[20] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[21]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [21]),
        .I1(\gen_reg[2].reg_data_reg [21]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [21]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[21] ),
        .O(\data_reg[21] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[22]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [22]),
        .I1(\gen_reg[2].reg_data_reg [22]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [22]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[22] ),
        .O(\data_reg[22] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[23]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [23]),
        .I1(\gen_reg[2].reg_data_reg [23]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [23]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[23] ),
        .O(\data_reg[23] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[24]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [24]),
        .I1(\gen_reg[2].reg_data_reg [24]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [24]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[24] ),
        .O(\data_reg[24] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[25]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [25]),
        .I1(\gen_reg[2].reg_data_reg [25]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [25]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[25] ),
        .O(\data_reg[25] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[26]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [26]),
        .I1(\gen_reg[2].reg_data_reg [26]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [26]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[26] ),
        .O(\data_reg[26] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[27]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [27]),
        .I1(\gen_reg[2].reg_data_reg [27]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [27]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[27] ),
        .O(\data_reg[27] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[28]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [28]),
        .I1(\gen_reg[2].reg_data_reg [28]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [28]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[28] ),
        .O(\data_reg[28] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[29]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [29]),
        .I1(\gen_reg[2].reg_data_reg [29]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [29]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[29] ),
        .O(\data_reg[29] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[2]_i_3 
       (.I0(\gen_mi_mux_in[3].mi_mux_in_reg[15] [2]),
        .I1(\gen_mi_mux_in[2].mi_mux_in_reg[11] [2]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_mi_mux_in[1].mi_mux_in_reg[7] [2]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_mi_mux_in[0].mi_mux_in_reg[3] [2]),
        .O(\data_reg[2] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[30]_i_5 
       (.I0(\gen_reg[3].reg_data_reg [30]),
        .I1(\gen_reg[2].reg_data_reg [30]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [30]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[30] ),
        .O(\data_reg[30]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data[31]_i_2 
       (.I0(\gen_reg[3].reg_data_reg [31]),
        .I1(\gen_reg[2].reg_data_reg [31]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [31]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[31] ),
        .O(\data_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \data[31]_i_3 
       (.I0(\gen_reg[6].reg_data_reg ),
        .I1(\addr_r_reg[3] [1]),
        .I2(\gen_reg[5].reg_data_reg ),
        .I3(\addr_r_reg[3] [0]),
        .I4(\gen_reg[4].reg_data_reg ),
        .O(\data_reg[31] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[3]_i_3 
       (.I0(\gen_mi_mux_in[3].mi_mux_in_reg[15] [3]),
        .I1(\gen_mi_mux_in[2].mi_mux_in_reg[11] [3]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_mi_mux_in[1].mi_mux_in_reg[7] [3]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_mi_mux_in[0].mi_mux_in_reg[3] [3]),
        .O(\data_reg[3] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[4]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [4]),
        .I1(\gen_reg[2].reg_data_reg [4]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [4]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[4] ),
        .O(\data_reg[4] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[5]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [5]),
        .I1(\gen_reg[2].reg_data_reg [5]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [5]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[5] ),
        .O(\data_reg[5] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[6]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [6]),
        .I1(\gen_reg[2].reg_data_reg [6]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [6]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[6] ),
        .O(\data_reg[6] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[7]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [7]),
        .I1(\gen_reg[2].reg_data_reg [7]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [7]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[7] ),
        .O(\data_reg[7] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[8]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [8]),
        .I1(\gen_reg[2].reg_data_reg [8]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [8]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[8] ),
        .O(\data_reg[8] ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \data[9]_i_3 
       (.I0(\gen_reg[3].reg_data_reg [9]),
        .I1(\gen_reg[2].reg_data_reg [9]),
        .I2(\addr_r_reg[3] [1]),
        .I3(\gen_reg[1].reg_data_reg [9]),
        .I4(\addr_r_reg[3] [0]),
        .I5(\gen_reg[0].reg_data_reg_n_0_[9] ),
        .O(\data_reg[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[0].mi_mux_en_in[0]_i_1 
       (.I0(\gen_reg[0].reg_data_reg_n_0_[31] ),
        .O(\gen_mi_mux_in[0].mi_mux_en_in_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[1].mi_mux_en_in[1]_i_1 
       (.I0(\gen_reg[1].reg_data_reg [31]),
        .O(\gen_mi_mux_in[1].mi_mux_en_in_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[2].mi_mux_en_in[2]_i_1 
       (.I0(\gen_reg[2].reg_data_reg [31]),
        .O(\gen_mi_mux_in[2].mi_mux_en_in_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[3].mi_mux_en_in[3]_i_1 
       (.I0(\gen_reg[3].reg_data_reg [31]),
        .O(\gen_mi_mux_in[3].mi_mux_en_in_reg[3] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[4].mi_mux_en_in[4]_i_1 
       (.I0(\gen_reg[4].reg_data_reg ),
        .O(\gen_mi_mux_in[4].mi_mux_en_in_reg[4] ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[5].mi_mux_en_in[5]_i_1 
       (.I0(\gen_reg[5].reg_data_reg ),
        .O(\gen_mi_mux_in[5].mi_mux_en_in_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_mi_mux_in[6].mi_mux_en_in[6]_i_1 
       (.I0(\gen_reg[6].reg_data_reg ),
        .O(\gen_mi_mux_in[6].mi_mux_en_in_reg[6] ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\gen_mi_mux_in[0].mi_mux_in_reg[3] [0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[10]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[10] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[11]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[11] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[12]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[12] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[13]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[13] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[14]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[14] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[15]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[15] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[16]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[16] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[17]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[17] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[18]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[18] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[19]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[19] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\gen_mi_mux_in[0].mi_mux_in_reg[3] [1]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[20]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[20] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[21]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[21] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[22]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[22] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[23]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[23] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[24]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[24] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[25]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[25] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[26]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[26] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[27]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[27] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[28]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[28] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[29]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[29] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[2]),
        .Q(\gen_mi_mux_in[0].mi_mux_in_reg[3] [2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[30]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[30] ),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[0].reg_data_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[31]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[31] ),
        .S(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[3]),
        .Q(\gen_mi_mux_in[0].mi_mux_in_reg[3] [3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[4]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[4] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[5]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[5] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[6]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[6] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[7]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[7] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[8]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[8] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[0].reg_data_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(E),
        .D(D[9]),
        .Q(\gen_reg[0].reg_data_reg_n_0_[9] ),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[0]),
        .Q(\gen_mi_mux_in[1].mi_mux_in_reg[7] [0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[1]),
        .Q(\gen_mi_mux_in[1].mi_mux_in_reg[7] [1]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[2]),
        .Q(\gen_mi_mux_in[1].mi_mux_in_reg[7] [2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[3]),
        .Q(\gen_mi_mux_in[1].mi_mux_in_reg[7] [3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[4]),
        .Q(\gen_reg[1].reg_data_reg [4]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[5]),
        .Q(\gen_reg[1].reg_data_reg [5]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[6]),
        .Q(\gen_reg[1].reg_data_reg [6]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[7]),
        .Q(\gen_reg[1].reg_data_reg [7]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[8]),
        .Q(\gen_reg[1].reg_data_reg [8]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[9]),
        .Q(\gen_reg[1].reg_data_reg [9]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[10]),
        .Q(\gen_reg[1].reg_data_reg [10]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[11]),
        .Q(\gen_reg[1].reg_data_reg [11]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[12]),
        .Q(\gen_reg[1].reg_data_reg [12]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[13]),
        .Q(\gen_reg[1].reg_data_reg [13]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[14]),
        .Q(\gen_reg[1].reg_data_reg [14]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[15]),
        .Q(\gen_reg[1].reg_data_reg [15]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[16]),
        .Q(\gen_reg[1].reg_data_reg [16]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[17]),
        .Q(\gen_reg[1].reg_data_reg [17]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[18]),
        .Q(\gen_reg[1].reg_data_reg [18]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[19]),
        .Q(\gen_reg[1].reg_data_reg [19]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[20]),
        .Q(\gen_reg[1].reg_data_reg [20]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[21]),
        .Q(\gen_reg[1].reg_data_reg [21]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[22]),
        .Q(\gen_reg[1].reg_data_reg [22]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[23]),
        .Q(\gen_reg[1].reg_data_reg [23]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[24]),
        .Q(\gen_reg[1].reg_data_reg [24]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[25]),
        .Q(\gen_reg[1].reg_data_reg [25]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[26]),
        .Q(\gen_reg[1].reg_data_reg [26]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[27]),
        .Q(\gen_reg[1].reg_data_reg [27]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[28]),
        .Q(\gen_reg[1].reg_data_reg [28]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[29]),
        .Q(\gen_reg[1].reg_data_reg [29]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[1].reg_data_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[30]),
        .Q(\gen_reg[1].reg_data_reg [30]),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[1].reg_data_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2] ),
        .D(D[31]),
        .Q(\gen_reg[1].reg_data_reg [31]),
        .S(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[64] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[0]),
        .Q(\gen_mi_mux_in[2].mi_mux_in_reg[11] [0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[65] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[1]),
        .Q(\gen_mi_mux_in[2].mi_mux_in_reg[11] [1]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[66] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[2]),
        .Q(\gen_mi_mux_in[2].mi_mux_in_reg[11] [2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[67] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[3]),
        .Q(\gen_mi_mux_in[2].mi_mux_in_reg[11] [3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[68] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[4]),
        .Q(\gen_reg[2].reg_data_reg [4]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[69] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[5]),
        .Q(\gen_reg[2].reg_data_reg [5]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[70] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[6]),
        .Q(\gen_reg[2].reg_data_reg [6]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[71] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[7]),
        .Q(\gen_reg[2].reg_data_reg [7]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[72] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[8]),
        .Q(\gen_reg[2].reg_data_reg [8]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[73] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[9]),
        .Q(\gen_reg[2].reg_data_reg [9]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[74] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[10]),
        .Q(\gen_reg[2].reg_data_reg [10]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[75] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[11]),
        .Q(\gen_reg[2].reg_data_reg [11]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[76] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[12]),
        .Q(\gen_reg[2].reg_data_reg [12]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[77] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[13]),
        .Q(\gen_reg[2].reg_data_reg [13]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[78] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[14]),
        .Q(\gen_reg[2].reg_data_reg [14]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[79] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[15]),
        .Q(\gen_reg[2].reg_data_reg [15]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[80] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[16]),
        .Q(\gen_reg[2].reg_data_reg [16]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[81] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[17]),
        .Q(\gen_reg[2].reg_data_reg [17]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[82] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[18]),
        .Q(\gen_reg[2].reg_data_reg [18]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[83] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[19]),
        .Q(\gen_reg[2].reg_data_reg [19]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[84] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[20]),
        .Q(\gen_reg[2].reg_data_reg [20]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[85] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[21]),
        .Q(\gen_reg[2].reg_data_reg [21]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[86] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[22]),
        .Q(\gen_reg[2].reg_data_reg [22]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[87] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[23]),
        .Q(\gen_reg[2].reg_data_reg [23]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[88] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[24]),
        .Q(\gen_reg[2].reg_data_reg [24]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[89] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[25]),
        .Q(\gen_reg[2].reg_data_reg [25]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[90] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[26]),
        .Q(\gen_reg[2].reg_data_reg [26]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[91] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[27]),
        .Q(\gen_reg[2].reg_data_reg [27]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[92] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[28]),
        .Q(\gen_reg[2].reg_data_reg [28]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[93] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[29]),
        .Q(\gen_reg[2].reg_data_reg [29]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[2].reg_data_reg[94] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[30]),
        .Q(\gen_reg[2].reg_data_reg [30]),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[2].reg_data_reg[95] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_0 ),
        .D(D[31]),
        .Q(\gen_reg[2].reg_data_reg [31]),
        .S(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[100] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[4]),
        .Q(\gen_reg[3].reg_data_reg [4]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[101] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[5]),
        .Q(\gen_reg[3].reg_data_reg [5]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[102] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[6]),
        .Q(\gen_reg[3].reg_data_reg [6]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[103] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[7]),
        .Q(\gen_reg[3].reg_data_reg [7]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[104] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[8]),
        .Q(\gen_reg[3].reg_data_reg [8]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[105] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[9]),
        .Q(\gen_reg[3].reg_data_reg [9]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[106] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[10]),
        .Q(\gen_reg[3].reg_data_reg [10]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[107] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[11]),
        .Q(\gen_reg[3].reg_data_reg [11]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[108] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[12]),
        .Q(\gen_reg[3].reg_data_reg [12]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[109] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[13]),
        .Q(\gen_reg[3].reg_data_reg [13]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[110] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[14]),
        .Q(\gen_reg[3].reg_data_reg [14]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[111] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[15]),
        .Q(\gen_reg[3].reg_data_reg [15]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[112] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[16]),
        .Q(\gen_reg[3].reg_data_reg [16]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[113] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[17]),
        .Q(\gen_reg[3].reg_data_reg [17]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[114] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[18]),
        .Q(\gen_reg[3].reg_data_reg [18]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[115] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[19]),
        .Q(\gen_reg[3].reg_data_reg [19]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[116] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[20]),
        .Q(\gen_reg[3].reg_data_reg [20]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[117] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[21]),
        .Q(\gen_reg[3].reg_data_reg [21]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[118] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[22]),
        .Q(\gen_reg[3].reg_data_reg [22]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[119] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[23]),
        .Q(\gen_reg[3].reg_data_reg [23]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[120] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[24]),
        .Q(\gen_reg[3].reg_data_reg [24]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[121] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[25]),
        .Q(\gen_reg[3].reg_data_reg [25]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[122] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[26]),
        .Q(\gen_reg[3].reg_data_reg [26]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[123] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[27]),
        .Q(\gen_reg[3].reg_data_reg [27]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[124] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[28]),
        .Q(\gen_reg[3].reg_data_reg [28]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[125] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[29]),
        .Q(\gen_reg[3].reg_data_reg [29]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[126] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[30]),
        .Q(\gen_reg[3].reg_data_reg [30]),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[3].reg_data_reg[127] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[31]),
        .Q(\gen_reg[3].reg_data_reg [31]),
        .S(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[96] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[0]),
        .Q(\gen_mi_mux_in[3].mi_mux_in_reg[15] [0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[97] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[1]),
        .Q(\gen_mi_mux_in[3].mi_mux_in_reg[15] [1]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[98] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[2]),
        .Q(\gen_mi_mux_in[3].mi_mux_in_reg[15] [2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[3].reg_data_reg[99] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_1 ),
        .D(D[3]),
        .Q(\gen_mi_mux_in[3].mi_mux_in_reg[15] [3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[128] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[129] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[130] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[131] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[132] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[133] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[134] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[135] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[136] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[137] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[138] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[139] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[140] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[141] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[142] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[143] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[144] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[145] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[146] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[147] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[148] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[149] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[150] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[151] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[152] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[153] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[154] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[155] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[156] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[157] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[29]),
        .Q(Q[29]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[4].reg_data_reg[158] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[30]),
        .Q(Q[30]),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[4].reg_data_reg[159] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_2 ),
        .D(D[31]),
        .Q(\gen_reg[4].reg_data_reg ),
        .S(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[160] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[0]),
        .Q(\data_reg[30] [0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[161] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[1]),
        .Q(\data_reg[30] [1]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[162] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[2]),
        .Q(\data_reg[30] [2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[163] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[3]),
        .Q(\data_reg[30] [3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[164] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[4]),
        .Q(\data_reg[30] [4]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[165] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[5]),
        .Q(\data_reg[30] [5]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[166] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[6]),
        .Q(\data_reg[30] [6]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[167] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[7]),
        .Q(\data_reg[30] [7]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[168] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[8]),
        .Q(\data_reg[30] [8]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[169] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[9]),
        .Q(\data_reg[30] [9]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[170] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[10]),
        .Q(\data_reg[30] [10]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[171] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[11]),
        .Q(\data_reg[30] [11]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[172] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[12]),
        .Q(\data_reg[30] [12]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[173] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[13]),
        .Q(\data_reg[30] [13]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[174] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[14]),
        .Q(\data_reg[30] [14]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[175] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[15]),
        .Q(\data_reg[30] [15]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[176] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[16]),
        .Q(\data_reg[30] [16]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[177] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[17]),
        .Q(\data_reg[30] [17]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[178] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[18]),
        .Q(\data_reg[30] [18]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[179] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[19]),
        .Q(\data_reg[30] [19]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[180] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[20]),
        .Q(\data_reg[30] [20]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[181] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[21]),
        .Q(\data_reg[30] [21]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[182] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[22]),
        .Q(\data_reg[30] [22]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[183] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[23]),
        .Q(\data_reg[30] [23]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[184] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[24]),
        .Q(\data_reg[30] [24]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[185] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[25]),
        .Q(\data_reg[30] [25]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[186] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[26]),
        .Q(\data_reg[30] [26]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[187] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[27]),
        .Q(\data_reg[30] [27]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[188] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[28]),
        .Q(\data_reg[30] [28]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[189] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[29]),
        .Q(\data_reg[30] [29]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[5].reg_data_reg[190] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[30]),
        .Q(\data_reg[30] [30]),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[5].reg_data_reg[191] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_3 ),
        .D(D[31]),
        .Q(\gen_reg[5].reg_data_reg ),
        .S(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[192] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[0]),
        .Q(\data_reg[30]_0 [0]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[193] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[1]),
        .Q(\data_reg[30]_0 [1]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[194] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[2]),
        .Q(\data_reg[30]_0 [2]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[195] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[3]),
        .Q(\data_reg[30]_0 [3]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[196] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[4]),
        .Q(\data_reg[30]_0 [4]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[197] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[5]),
        .Q(\data_reg[30]_0 [5]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[198] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[6]),
        .Q(\data_reg[30]_0 [6]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[199] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[7]),
        .Q(\data_reg[30]_0 [7]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[200] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[8]),
        .Q(\data_reg[30]_0 [8]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[201] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[9]),
        .Q(\data_reg[30]_0 [9]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[202] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[10]),
        .Q(\data_reg[30]_0 [10]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[203] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[11]),
        .Q(\data_reg[30]_0 [11]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[204] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[12]),
        .Q(\data_reg[30]_0 [12]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[205] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[13]),
        .Q(\data_reg[30]_0 [13]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[206] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[14]),
        .Q(\data_reg[30]_0 [14]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[207] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[15]),
        .Q(\data_reg[30]_0 [15]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[208] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[16]),
        .Q(\data_reg[30]_0 [16]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[209] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[17]),
        .Q(\data_reg[30]_0 [17]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[210] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[18]),
        .Q(\data_reg[30]_0 [18]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[211] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[19]),
        .Q(\data_reg[30]_0 [19]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[212] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[20]),
        .Q(\data_reg[30]_0 [20]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[213] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[21]),
        .Q(\data_reg[30]_0 [21]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[214] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[22]),
        .Q(\data_reg[30]_0 [22]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[215] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[23]),
        .Q(\data_reg[30]_0 [23]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[216] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[24]),
        .Q(\data_reg[30]_0 [24]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[217] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[25]),
        .Q(\data_reg[30]_0 [25]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[218] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[26]),
        .Q(\data_reg[30]_0 [26]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[219] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[27]),
        .Q(\data_reg[30]_0 [27]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[220] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[28]),
        .Q(\data_reg[30]_0 [28]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[221] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[29]),
        .Q(\data_reg[30]_0 [29]),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_reg[6].reg_data_reg[222] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[30]),
        .Q(\data_reg[30]_0 [30]),
        .R(s_axi_ctrl_areset));
  FDSE #(
    .INIT(1'b1)) 
    \gen_reg[6].reg_data_reg[223] 
       (.C(s_axi_ctrl_aclk),
        .CE(\addr_r_reg[2]_4 ),
        .D(D[31]),
        .Q(\gen_reg[6].reg_data_reg ),
        .S(s_axi_ctrl_areset));
endmodule

module top_xbar_4_axis_switch_v1_1_8_static_router
   (s_axi_awready,
    s_axi_arready,
    s_axi_ctrl_rvalid,
    s_axi_bvalid,
    s_axi_ctrl_rdata,
    ctrl_reg,
    src_in,
    src_send,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_areset,
    s_axi_ctrl_aclk,
    src_rcv,
    s_axi_ctrl_wdata,
    s_axi_ctrl_araddr,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_bready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_wvalid);
  output s_axi_awready;
  output s_axi_arready;
  output s_axi_ctrl_rvalid;
  output s_axi_bvalid;
  output [31:0]s_axi_ctrl_rdata;
  output [69:0]ctrl_reg;
  output src_in;
  output src_send;
  input s_axi_ctrl_arvalid;
  input s_axi_ctrl_rready;
  input s_axi_ctrl_areset;
  input s_axi_ctrl_aclk;
  input src_rcv;
  input [31:0]s_axi_ctrl_wdata;
  input [4:0]s_axi_ctrl_araddr;
  input [4:0]s_axi_ctrl_awaddr;
  input s_axi_ctrl_bready;
  input s_axi_ctrl_awvalid;
  input s_axi_ctrl_wvalid;

  wire commit_reset;
  wire [69:0]ctrl_reg;
  wire [3:0]\gen_reg[1].reg_data_reg ;
  wire [3:0]\gen_reg[2].reg_data_reg ;
  wire [3:0]\gen_reg[3].reg_data_reg ;
  wire [3:0]\gen_reg[4].reg_data_reg ;
  wire [3:0]\gen_reg[5].reg_data_reg ;
  wire [3:0]\gen_reg[6].reg_data_reg ;
  wire inst_axi_ctrl_top_n_5;
  wire inst_axi_ctrl_top_n_6;
  wire inst_axi_ctrl_top_n_65;
  wire inst_axi_ctrl_top_n_66;
  wire inst_axi_ctrl_top_n_67;
  wire inst_axi_ctrl_top_n_68;
  wire inst_axi_ctrl_top_n_69;
  wire inst_axi_ctrl_top_n_7;
  wire inst_axi_ctrl_top_n_70;
  wire inst_axi_ctrl_top_n_71;
  wire inst_axi_ctrl_top_n_8;
  wire reg_commit;
  wire s_axi_arready;
  wire s_axi_awready;
  wire s_axi_bvalid;
  wire s_axi_ctrl_aclk;
  wire [4:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_areset;
  wire s_axi_ctrl_arvalid;
  wire [4:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire src_in;
  wire src_rcv;
  wire src_send;

  top_xbar_4_axis_switch_v1_1_8_axi_ctrl_top inst_axi_ctrl_top
       (.Q({s_axi_bvalid,s_axi_awready}),
        .\gen_mi_mux_in[0].mi_mux_en_in_reg[0] (inst_axi_ctrl_top_n_65),
        .\gen_mi_mux_in[0].mi_mux_in_reg[3] ({inst_axi_ctrl_top_n_5,inst_axi_ctrl_top_n_6,inst_axi_ctrl_top_n_7,inst_axi_ctrl_top_n_8}),
        .\gen_mi_mux_in[1].mi_mux_en_in_reg[1] (inst_axi_ctrl_top_n_66),
        .\gen_mi_mux_in[1].mi_mux_in_reg[7] (\gen_reg[1].reg_data_reg ),
        .\gen_mi_mux_in[2].mi_mux_en_in_reg[2] (inst_axi_ctrl_top_n_67),
        .\gen_mi_mux_in[2].mi_mux_in_reg[11] (\gen_reg[2].reg_data_reg ),
        .\gen_mi_mux_in[3].mi_mux_en_in_reg[3] (inst_axi_ctrl_top_n_68),
        .\gen_mi_mux_in[3].mi_mux_in_reg[15] (\gen_reg[3].reg_data_reg ),
        .\gen_mi_mux_in[4].mi_mux_en_in_reg[4] (inst_axi_ctrl_top_n_69),
        .\gen_mi_mux_in[4].mi_mux_in_reg[19] (\gen_reg[4].reg_data_reg ),
        .\gen_mi_mux_in[5].mi_mux_en_in_reg[5] (inst_axi_ctrl_top_n_70),
        .\gen_mi_mux_in[5].mi_mux_in_reg[23] (\gen_reg[5].reg_data_reg ),
        .\gen_mi_mux_in[6].mi_mux_en_in_reg[6] (inst_axi_ctrl_top_n_71),
        .\gen_mi_mux_in[6].mi_mux_in_reg[27] (\gen_reg[6].reg_data_reg ),
        .out0(commit_reset),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_areset(s_axi_ctrl_areset),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rvalid({s_axi_ctrl_rvalid,s_axi_arready}),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .\state_reg[0] (reg_commit));
  top_xbar_4_axis_switch_v1_1_8_static_router_config inst_start_router_config
       (.D({inst_axi_ctrl_top_n_5,inst_axi_ctrl_top_n_6,inst_axi_ctrl_top_n_7,inst_axi_ctrl_top_n_8}),
        .ctrl_reg(ctrl_reg),
        .\gen_reg[0].reg_data_reg[1] (reg_commit),
        .\gen_reg[0].reg_data_reg[31] (inst_axi_ctrl_top_n_65),
        .\gen_reg[1].reg_data_reg[35] (\gen_reg[1].reg_data_reg ),
        .\gen_reg[1].reg_data_reg[63] (inst_axi_ctrl_top_n_66),
        .\gen_reg[2].reg_data_reg[67] (\gen_reg[2].reg_data_reg ),
        .\gen_reg[2].reg_data_reg[95] (inst_axi_ctrl_top_n_67),
        .\gen_reg[3].reg_data_reg[127] (inst_axi_ctrl_top_n_68),
        .\gen_reg[3].reg_data_reg[99] (\gen_reg[3].reg_data_reg ),
        .\gen_reg[4].reg_data_reg[131] (\gen_reg[4].reg_data_reg ),
        .\gen_reg[4].reg_data_reg[159] (inst_axi_ctrl_top_n_69),
        .\gen_reg[5].reg_data_reg[163] (\gen_reg[5].reg_data_reg ),
        .\gen_reg[5].reg_data_reg[191] (inst_axi_ctrl_top_n_70),
        .\gen_reg[6].reg_data_reg[195] (\gen_reg[6].reg_data_reg ),
        .\gen_reg[6].reg_data_reg[223] (inst_axi_ctrl_top_n_71),
        .out0(commit_reset),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_areset(s_axi_ctrl_areset),
        .src_in(src_in),
        .src_rcv(src_rcv),
        .src_send(src_send));
endmodule

module top_xbar_4_axis_switch_v1_1_8_static_router_config
   (src_send,
    ctrl_reg,
    src_in,
    out0,
    s_axi_ctrl_aclk,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[2].reg_data_reg[95] ,
    \gen_reg[3].reg_data_reg[127] ,
    \gen_reg[4].reg_data_reg[159] ,
    \gen_reg[5].reg_data_reg[191] ,
    \gen_reg[6].reg_data_reg[223] ,
    s_axi_ctrl_areset,
    src_rcv,
    D,
    \gen_reg[1].reg_data_reg[35] ,
    \gen_reg[2].reg_data_reg[67] ,
    \gen_reg[3].reg_data_reg[99] ,
    \gen_reg[4].reg_data_reg[131] ,
    \gen_reg[5].reg_data_reg[163] ,
    \gen_reg[6].reg_data_reg[195] ,
    \gen_reg[0].reg_data_reg[1] );
  output src_send;
  output [69:0]ctrl_reg;
  output src_in;
  output out0;
  input s_axi_ctrl_aclk;
  input \gen_reg[0].reg_data_reg[31] ;
  input \gen_reg[1].reg_data_reg[63] ;
  input \gen_reg[2].reg_data_reg[95] ;
  input \gen_reg[3].reg_data_reg[127] ;
  input \gen_reg[4].reg_data_reg[159] ;
  input \gen_reg[5].reg_data_reg[191] ;
  input \gen_reg[6].reg_data_reg[223] ;
  input s_axi_ctrl_areset;
  input src_rcv;
  input [3:0]D;
  input [3:0]\gen_reg[1].reg_data_reg[35] ;
  input [3:0]\gen_reg[2].reg_data_reg[67] ;
  input [3:0]\gen_reg[3].reg_data_reg[99] ;
  input [3:0]\gen_reg[4].reg_data_reg[131] ;
  input [3:0]\gen_reg[5].reg_data_reg[163] ;
  input [3:0]\gen_reg[6].reg_data_reg[195] ;
  input [0:0]\gen_reg[0].reg_data_reg[1] ;

  wire [3:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [69:0]ctrl_reg;
  (* RTL_KEEP = "yes" *) wire ctrl_soft_reset_r0;
  wire ctrl_soft_reset_r_i_1_n_0;
  wire done;
  wire [0:0]\gen_reg[0].reg_data_reg[1] ;
  wire \gen_reg[0].reg_data_reg[31] ;
  wire [3:0]\gen_reg[1].reg_data_reg[35] ;
  wire \gen_reg[1].reg_data_reg[63] ;
  wire [3:0]\gen_reg[2].reg_data_reg[67] ;
  wire \gen_reg[2].reg_data_reg[95] ;
  wire \gen_reg[3].reg_data_reg[127] ;
  wire [3:0]\gen_reg[3].reg_data_reg[99] ;
  wire [3:0]\gen_reg[4].reg_data_reg[131] ;
  wire \gen_reg[4].reg_data_reg[159] ;
  wire [3:0]\gen_reg[5].reg_data_reg[163] ;
  wire \gen_reg[5].reg_data_reg[191] ;
  wire [3:0]\gen_reg[6].reg_data_reg[195] ;
  wire \gen_reg[6].reg_data_reg[223] ;
  wire [3:0]\gen_si_mux[0].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[1].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[2].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[3].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[4].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[5].si_mux_r_reg ;
  wire [3:0]\gen_si_mux[6].si_mux_r_reg ;
  wire \inst_start_router_config_dp/_n_0 ;
  wire inst_start_router_config_dp_n_75;
  wire [6:0]mi_enable;
  wire [27:0]mi_mux;
  (* RTL_KEEP = "yes" *) wire out0;
  wire s_axi_ctrl_aclk;
  wire s_axi_ctrl_areset;
  wire [3:0]selector;
  wire [6:0]si_enable;
  wire src_in;
  wire src_rcv;
  wire src_send;
  (* RTL_KEEP = "yes" *) wire start;

  LUT5 #(
    .INIT(32'h44444447)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[1] ),
        .I1(ctrl_soft_reset_r0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(start),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\gen_reg[0].reg_data_reg[1] ),
        .I1(ctrl_soft_reset_r0),
        .I2(done),
        .I3(start),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(start),
        .I2(done),
        .I3(ctrl_soft_reset_r0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1111010000000100)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(start),
        .I1(ctrl_soft_reset_r0),
        .I2(src_rcv),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(done),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(src_rcv),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(ctrl_soft_reset_r0),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(ctrl_soft_reset_r0),
        .S(s_axi_ctrl_areset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(start),
        .R(s_axi_ctrl_areset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(s_axi_ctrl_areset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(s_axi_ctrl_areset));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(out0),
        .R(s_axi_ctrl_areset));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[0]),
        .Q(ctrl_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[10]),
        .Q(ctrl_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[11]),
        .Q(ctrl_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[12]),
        .Q(ctrl_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[13]),
        .Q(ctrl_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[14]),
        .Q(ctrl_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[15]),
        .Q(ctrl_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[16]),
        .Q(ctrl_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[17]),
        .Q(ctrl_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[18]),
        .Q(ctrl_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[19]),
        .Q(ctrl_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[1]),
        .Q(ctrl_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[20]),
        .Q(ctrl_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[21]),
        .Q(ctrl_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[22]),
        .Q(ctrl_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[23]),
        .Q(ctrl_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[24]),
        .Q(ctrl_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[25]),
        .Q(ctrl_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[26]),
        .Q(ctrl_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[27]),
        .Q(ctrl_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[28] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[0]),
        .Q(ctrl_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[29] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[1]),
        .Q(ctrl_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[2]),
        .Q(ctrl_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[30] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[2]),
        .Q(ctrl_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[31] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[3]),
        .Q(ctrl_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[32] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[4]),
        .Q(ctrl_reg[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[33] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[5]),
        .Q(ctrl_reg[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[34] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_enable[6]),
        .Q(ctrl_reg[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[35] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [0]),
        .Q(ctrl_reg[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[36] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [1]),
        .Q(ctrl_reg[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[37] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [2]),
        .Q(ctrl_reg[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[38] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[0].si_mux_r_reg [3]),
        .Q(ctrl_reg[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[39] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [0]),
        .Q(ctrl_reg[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[3]),
        .Q(ctrl_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[40] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [1]),
        .Q(ctrl_reg[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[41] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [2]),
        .Q(ctrl_reg[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[42] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[1].si_mux_r_reg [3]),
        .Q(ctrl_reg[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[43] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [0]),
        .Q(ctrl_reg[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[44] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [1]),
        .Q(ctrl_reg[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[45] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [2]),
        .Q(ctrl_reg[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[46] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[2].si_mux_r_reg [3]),
        .Q(ctrl_reg[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[47] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [0]),
        .Q(ctrl_reg[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[48] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [1]),
        .Q(ctrl_reg[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[49] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [2]),
        .Q(ctrl_reg[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[4]),
        .Q(ctrl_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[50] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[3].si_mux_r_reg [3]),
        .Q(ctrl_reg[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[51] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [0]),
        .Q(ctrl_reg[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[52] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [1]),
        .Q(ctrl_reg[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[53] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [2]),
        .Q(ctrl_reg[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[54] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[4].si_mux_r_reg [3]),
        .Q(ctrl_reg[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[55] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[5].si_mux_r_reg [0]),
        .Q(ctrl_reg[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[56] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[5].si_mux_r_reg [1]),
        .Q(ctrl_reg[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[57] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[5].si_mux_r_reg [2]),
        .Q(ctrl_reg[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[58] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[5].si_mux_r_reg [3]),
        .Q(ctrl_reg[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[59] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[6].si_mux_r_reg [0]),
        .Q(ctrl_reg[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[5]),
        .Q(ctrl_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[60] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[6].si_mux_r_reg [1]),
        .Q(ctrl_reg[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[61] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[6].si_mux_r_reg [2]),
        .Q(ctrl_reg[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[62] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_si_mux[6].si_mux_r_reg [3]),
        .Q(ctrl_reg[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[63] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[0]),
        .Q(ctrl_reg[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[64] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[1]),
        .Q(ctrl_reg[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[65] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[2]),
        .Q(ctrl_reg[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[66] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[3]),
        .Q(ctrl_reg[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[67] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[4]),
        .Q(ctrl_reg[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[68] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[5]),
        .Q(ctrl_reg[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[69] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(si_enable[6]),
        .Q(ctrl_reg[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[6]),
        .Q(ctrl_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[7]),
        .Q(ctrl_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[8]),
        .Q(ctrl_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_mux[9]),
        .Q(ctrl_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_req_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(inst_start_router_config_dp_n_75),
        .Q(src_send),
        .R(s_axi_ctrl_areset));
  LUT1 #(
    .INIT(2'h1)) 
    ctrl_soft_reset_r_i_1
       (.I0(ctrl_soft_reset_r0),
        .O(ctrl_soft_reset_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_soft_reset_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(ctrl_soft_reset_r_i_1_n_0),
        .Q(src_in),
        .R(1'b0));
  top_xbar_4_axis_switch_v1_1_8_static_router_config_dp inst_start_router_config_dp
       (.D({\gen_si_mux[6].si_mux_r_reg ,\gen_si_mux[5].si_mux_r_reg ,\gen_si_mux[4].si_mux_r_reg ,\gen_si_mux[3].si_mux_r_reg ,\gen_si_mux[2].si_mux_r_reg ,\gen_si_mux[1].si_mux_r_reg ,\gen_si_mux[0].si_mux_r_reg ,mi_enable,mi_mux}),
        .Q(selector),
        .ctrl_req_r_reg(inst_start_router_config_dp_n_75),
        .done(done),
        .\gen_reg[0].reg_data_reg[31] (\gen_reg[0].reg_data_reg[31] ),
        .\gen_reg[0].reg_data_reg[3] (D),
        .\gen_reg[1].reg_data_reg[35] (\gen_reg[1].reg_data_reg[35] ),
        .\gen_reg[1].reg_data_reg[63] (\gen_reg[1].reg_data_reg[63] ),
        .\gen_reg[2].reg_data_reg[67] (\gen_reg[2].reg_data_reg[67] ),
        .\gen_reg[2].reg_data_reg[95] (\gen_reg[2].reg_data_reg[95] ),
        .\gen_reg[3].reg_data_reg[127] (\gen_reg[3].reg_data_reg[127] ),
        .\gen_reg[3].reg_data_reg[99] (\gen_reg[3].reg_data_reg[99] ),
        .\gen_reg[4].reg_data_reg[131] (\gen_reg[4].reg_data_reg[131] ),
        .\gen_reg[4].reg_data_reg[159] (\gen_reg[4].reg_data_reg[159] ),
        .\gen_reg[5].reg_data_reg[163] (\gen_reg[5].reg_data_reg[163] ),
        .\gen_reg[5].reg_data_reg[191] (\gen_reg[5].reg_data_reg[191] ),
        .\gen_reg[6].reg_data_reg[195] (\gen_reg[6].reg_data_reg[195] ),
        .\gen_reg[6].reg_data_reg[223] (\gen_reg[6].reg_data_reg[223] ),
        .out({\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,start}),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .\selector_reg[3]_0 (\inst_start_router_config_dp/_n_0 ),
        .si_enable(si_enable),
        .src_rcv(src_rcv),
        .src_send(src_send));
  LUT4 #(
    .INIT(16'h0001)) 
    \inst_start_router_config_dp/ 
       (.I0(selector[3]),
        .I1(selector[2]),
        .I2(selector[0]),
        .I3(selector[1]),
        .O(\inst_start_router_config_dp/_n_0 ));
endmodule

module top_xbar_4_axis_switch_v1_1_8_static_router_config_dp
   (si_enable,
    done,
    D,
    Q,
    ctrl_req_r_reg,
    out,
    s_axi_ctrl_aclk,
    \gen_reg[0].reg_data_reg[31] ,
    \gen_reg[1].reg_data_reg[63] ,
    \gen_reg[2].reg_data_reg[95] ,
    \gen_reg[3].reg_data_reg[127] ,
    \gen_reg[4].reg_data_reg[159] ,
    \gen_reg[5].reg_data_reg[191] ,
    \gen_reg[6].reg_data_reg[223] ,
    src_rcv,
    src_send,
    \selector_reg[3]_0 ,
    \gen_reg[0].reg_data_reg[3] ,
    \gen_reg[1].reg_data_reg[35] ,
    \gen_reg[2].reg_data_reg[67] ,
    \gen_reg[3].reg_data_reg[99] ,
    \gen_reg[4].reg_data_reg[131] ,
    \gen_reg[5].reg_data_reg[163] ,
    \gen_reg[6].reg_data_reg[195] );
  output [6:0]si_enable;
  output done;
  output [62:0]D;
  output [3:0]Q;
  output ctrl_req_r_reg;
  input [2:0]out;
  input s_axi_ctrl_aclk;
  input \gen_reg[0].reg_data_reg[31] ;
  input \gen_reg[1].reg_data_reg[63] ;
  input \gen_reg[2].reg_data_reg[95] ;
  input \gen_reg[3].reg_data_reg[127] ;
  input \gen_reg[4].reg_data_reg[159] ;
  input \gen_reg[5].reg_data_reg[191] ;
  input \gen_reg[6].reg_data_reg[223] ;
  input src_rcv;
  input src_send;
  input \selector_reg[3]_0 ;
  input [3:0]\gen_reg[0].reg_data_reg[3] ;
  input [3:0]\gen_reg[1].reg_data_reg[35] ;
  input [3:0]\gen_reg[2].reg_data_reg[67] ;
  input [3:0]\gen_reg[3].reg_data_reg[99] ;
  input [3:0]\gen_reg[4].reg_data_reg[131] ;
  input [3:0]\gen_reg[5].reg_data_reg[163] ;
  input [3:0]\gen_reg[6].reg_data_reg[195] ;

  wire [62:0]D;
  wire [3:0]Q;
  wire __3_n_0;
  wire __5_n_0;
  wire __6_n_0;
  wire ctrl_req_r_reg;
  wire done;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ;
  wire \gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ;
  wire \gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ;
  wire \gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ;
  wire \gen_mi_enable[2].mi_enable_r[2]_i_2_n_0 ;
  wire \gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ;
  wire \gen_mi_enable[4].mi_enable_r[4]_i_1_n_0 ;
  wire \gen_mi_enable[4].mi_enable_r[4]_i_2_n_0 ;
  wire \gen_mi_enable[5].mi_enable_r[5]_i_1_n_0 ;
  wire \gen_mi_enable[6].mi_enable_r[6]_i_1_n_0 ;
  wire \gen_reg[0].reg_data_reg[31] ;
  wire [3:0]\gen_reg[0].reg_data_reg[3] ;
  wire [3:0]\gen_reg[1].reg_data_reg[35] ;
  wire \gen_reg[1].reg_data_reg[63] ;
  wire [3:0]\gen_reg[2].reg_data_reg[67] ;
  wire \gen_reg[2].reg_data_reg[95] ;
  wire \gen_reg[3].reg_data_reg[127] ;
  wire [3:0]\gen_reg[3].reg_data_reg[99] ;
  wire [3:0]\gen_reg[4].reg_data_reg[131] ;
  wire \gen_reg[4].reg_data_reg[159] ;
  wire [3:0]\gen_reg[5].reg_data_reg[163] ;
  wire \gen_reg[5].reg_data_reg[191] ;
  wire [3:0]\gen_reg[6].reg_data_reg[195] ;
  wire \gen_reg[6].reg_data_reg[223] ;
  wire \gen_si_enable[0].si_enable_r[0]_i_2_n_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_3_n_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_4_n_0 ;
  wire \gen_si_enable[0].si_enable_r[0]_i_5_n_0 ;
  wire \gen_si_enable[2].si_enable_r[2]_i_2_n_0 ;
  wire \gen_si_enable[4].si_enable_r[4]_i_2_n_0 ;
  wire \gen_si_enable[6].si_enable_r[6]_i_2_n_0 ;
  wire \gen_si_mux[0].si_mux_r[3]_i_1_n_0 ;
  wire \gen_si_mux[1].si_mux_r[7]_i_1_n_0 ;
  wire \gen_si_mux[2].si_mux_r[11]_i_1_n_0 ;
  wire \gen_si_mux[3].si_mux_r[15]_i_1_n_0 ;
  wire \gen_si_mux[4].si_mux_r[19]_i_1_n_0 ;
  wire \gen_si_mux[5].si_mux_r[23]_i_1_n_0 ;
  wire \gen_si_mux[6].si_mux_r[27]_i_1_n_0 ;
  wire \mi_cntr[0]_i_1_n_0 ;
  wire \mi_cntr[1]_i_1_n_0 ;
  wire [3:0]mi_cntr_reg__0;
  wire [6:0]mi_connectivity;
  wire \mi_connectivity[0]_i_1_n_0 ;
  wire \mi_connectivity[1]_i_1_n_0 ;
  wire \mi_connectivity[2]_i_1_n_0 ;
  wire \mi_connectivity[3]_i_1_n_0 ;
  wire \mi_connectivity[6]_i_1_n_0 ;
  wire \mi_connectivity[6]_i_2_n_0 ;
  wire [6:0]mi_mux_en_in;
  wire [2:0]out;
  wire [3:2]p_0_in;
  wire [4:0]p_0_in_0;
  wire p_36_out;
  wire p_38_out;
  wire p_40_out;
  wire p_43_out;
  wire p_45_out;
  wire p_47_out;
  wire p_49_out;
  wire s_axi_ctrl_aclk;
  wire sel;
  wire \selectee[0]_i_2_n_0 ;
  wire \selectee[0]_i_3_n_0 ;
  wire \selectee[1]_i_2_n_0 ;
  wire \selectee[1]_i_3_n_0 ;
  wire \selectee[2]_i_2_n_0 ;
  wire \selectee[2]_i_3_n_0 ;
  wire \selectee[3]_i_2_n_0 ;
  wire \selectee[3]_i_3_n_0 ;
  wire \selectee_reg[0]_i_1_n_0 ;
  wire \selectee_reg[1]_i_1_n_0 ;
  wire \selectee_reg[2]_i_1_n_0 ;
  wire \selectee_reg[3]_i_1_n_0 ;
  wire selector_enable_i_2_n_0;
  wire selector_enable_i_3_n_0;
  wire selector_enable_reg_i_1_n_0;
  wire \selector_reg[3]_0 ;
  wire [6:0]si_enable;
  wire src_rcv;
  wire src_send;
  wire start_r;
  wire stg1_done;
  wire stg1_done_i_1_n_0;
  wire stg1_reset;
  wire stg1_reset_i_1_n_0;
  wire stg2_done_i_1_n_0;
  wire stg2_reset;

  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    __3
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    __5
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    __6
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(__6_n_0));
  LUT5 #(
    .INIT(32'h8FFF8888)) 
    ctrl_req_r_i_1
       (.I0(done),
        .I1(out[1]),
        .I2(src_rcv),
        .I3(out[2]),
        .I4(src_send),
        .O(ctrl_req_r_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .I4(\selector_reg[3]_0 ),
        .I5(D[28]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_3 
       (.I0(si_enable[3]),
        .I1(si_enable[2]),
        .I2(p_0_in_0[1]),
        .I3(si_enable[1]),
        .I4(p_0_in_0[0]),
        .I5(si_enable[0]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \gen_mi_enable[0].mi_enable_r[0]_i_4 
       (.I0(si_enable[6]),
        .I1(p_0_in_0[1]),
        .I2(si_enable[5]),
        .I3(p_0_in_0[0]),
        .I4(si_enable[4]),
        .O(\gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[0].mi_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[0].mi_enable_r[0]_i_1_n_0 ),
        .Q(D[28]),
        .R(stg2_reset));
  MUXF7 \gen_mi_enable[0].mi_enable_r_reg[0]_i_2 
       (.I0(\gen_mi_enable[0].mi_enable_r[0]_i_3_n_0 ),
        .I1(\gen_mi_enable[0].mi_enable_r[0]_i_4_n_0 ),
        .O(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .S(p_0_in_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .I4(\gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ),
        .I5(D[29]),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_mi_enable[1].mi_enable_r[1]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\gen_mi_enable[1].mi_enable_r[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[1].mi_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[1].mi_enable_r[1]_i_1_n_0 ),
        .Q(D[29]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \gen_mi_enable[2].mi_enable_r[2]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .I4(\gen_mi_enable[2].mi_enable_r[2]_i_2_n_0 ),
        .I5(D[30]),
        .O(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_mi_enable[2].mi_enable_r[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\gen_mi_enable[2].mi_enable_r[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[2].mi_enable_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[2].mi_enable_r[2]_i_1_n_0 ),
        .Q(D[30]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \gen_mi_enable[3].mi_enable_r[3]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .I4(__3_n_0),
        .I5(D[31]),
        .O(\gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[3].mi_enable_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[3].mi_enable_r[3]_i_1_n_0 ),
        .Q(D[31]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \gen_mi_enable[4].mi_enable_r[4]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .I4(\gen_mi_enable[4].mi_enable_r[4]_i_2_n_0 ),
        .I5(D[32]),
        .O(\gen_mi_enable[4].mi_enable_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_mi_enable[4].mi_enable_r[4]_i_2 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\gen_mi_enable[4].mi_enable_r[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[4].mi_enable_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[4].mi_enable_r[4]_i_1_n_0 ),
        .Q(D[32]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \gen_mi_enable[5].mi_enable_r[5]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .I4(__5_n_0),
        .I5(D[33]),
        .O(\gen_mi_enable[5].mi_enable_r[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[5].mi_enable_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[5].mi_enable_r[5]_i_1_n_0 ),
        .Q(D[33]),
        .R(stg2_reset));
  LUT6 #(
    .INIT(64'hFFFFFFFF00080000)) 
    \gen_mi_enable[6].mi_enable_r[6]_i_1 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I1(p_0_in_0[4]),
        .I2(p_0_in_0[3]),
        .I3(\gen_mi_enable[0].mi_enable_r_reg[0]_i_2_n_0 ),
        .I4(__6_n_0),
        .I5(D[34]),
        .O(\gen_mi_enable[6].mi_enable_r[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_enable[6].mi_enable_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\gen_mi_enable[6].mi_enable_r[6]_i_1_n_0 ),
        .Q(D[34]),
        .R(stg2_reset));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[31] ),
        .Q(mi_mux_en_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[0].mi_mux_in_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[0].reg_data_reg[3] [3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[63] ),
        .Q(mi_mux_en_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [0]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [1]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [2]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[1].mi_mux_in_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[1].reg_data_reg[35] [3]),
        .Q(D[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[95] ),
        .Q(mi_mux_en_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [2]),
        .Q(D[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [3]),
        .Q(D[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [0]),
        .Q(D[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[2].mi_mux_in_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[2].reg_data_reg[67] [1]),
        .Q(D[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_en_in_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[3].reg_data_reg[127] ),
        .Q(mi_mux_en_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[3].reg_data_reg[99] [0]),
        .Q(D[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[3].reg_data_reg[99] [1]),
        .Q(D[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[3].reg_data_reg[99] [2]),
        .Q(D[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[3].mi_mux_in_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[3].reg_data_reg[99] [3]),
        .Q(D[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_en_in_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[4].reg_data_reg[159] ),
        .Q(mi_mux_en_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[4].reg_data_reg[131] [0]),
        .Q(D[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[4].reg_data_reg[131] [1]),
        .Q(D[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[4].reg_data_reg[131] [2]),
        .Q(D[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[4].mi_mux_in_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[4].reg_data_reg[131] [3]),
        .Q(D[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[5].mi_mux_en_in_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[5].reg_data_reg[191] ),
        .Q(mi_mux_en_in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[5].mi_mux_in_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[5].reg_data_reg[163] [0]),
        .Q(D[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[5].mi_mux_in_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[5].reg_data_reg[163] [1]),
        .Q(D[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[5].mi_mux_in_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[5].reg_data_reg[163] [2]),
        .Q(D[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[5].mi_mux_in_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[5].reg_data_reg[163] [3]),
        .Q(D[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[6].mi_mux_en_in_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[6].reg_data_reg[223] ),
        .Q(mi_mux_en_in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[6].mi_mux_in_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[6].reg_data_reg[195] [0]),
        .Q(D[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[6].mi_mux_in_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[6].reg_data_reg[195] [1]),
        .Q(D[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[6].mi_mux_in_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[6].reg_data_reg[195] [2]),
        .Q(D[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_mi_mux_in[6].mi_mux_in_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(stg1_reset),
        .D(\gen_reg[6].reg_data_reg[195] [3]),
        .Q(D[27]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    \gen_si_enable[0].si_enable_r[0]_i_1 
       (.I0(si_enable[0]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(\gen_si_enable[0].si_enable_r[0]_i_3_n_0 ),
        .I3(p_0_in_0[0]),
        .O(p_49_out));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \gen_si_enable[0].si_enable_r[0]_i_2 
       (.I0(\gen_si_enable[0].si_enable_r[0]_i_4_n_0 ),
        .I1(p_0_in_0[2]),
        .I2(\gen_si_enable[0].si_enable_r[0]_i_5_n_0 ),
        .I3(p_0_in_0[3]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \gen_si_enable[0].si_enable_r[0]_i_3 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gen_si_enable[0].si_enable_r[0]_i_4 
       (.I0(mi_connectivity[3]),
        .I1(mi_connectivity[2]),
        .I2(p_0_in_0[1]),
        .I3(mi_connectivity[1]),
        .I4(p_0_in_0[0]),
        .I5(mi_connectivity[0]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \gen_si_enable[0].si_enable_r[0]_i_5 
       (.I0(mi_connectivity[6]),
        .I1(p_0_in_0[1]),
        .I2(mi_connectivity[6]),
        .I3(p_0_in_0[0]),
        .I4(mi_connectivity[1]),
        .O(\gen_si_enable[0].si_enable_r[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[0].si_enable_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_49_out),
        .Q(si_enable[0]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \gen_si_enable[1].si_enable_r[1]_i_1 
       (.I0(si_enable[1]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(\gen_si_enable[0].si_enable_r[0]_i_3_n_0 ),
        .O(p_47_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[1].si_enable_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_47_out),
        .Q(si_enable[1]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    \gen_si_enable[2].si_enable_r[2]_i_1 
       (.I0(si_enable[2]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(\gen_si_enable[2].si_enable_r[2]_i_2_n_0 ),
        .I3(p_0_in_0[0]),
        .O(p_45_out));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \gen_si_enable[2].si_enable_r[2]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[4]),
        .I3(p_0_in_0[3]),
        .O(\gen_si_enable[2].si_enable_r[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[2].si_enable_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_45_out),
        .Q(si_enable[2]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \gen_si_enable[3].si_enable_r[3]_i_1 
       (.I0(si_enable[3]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(\gen_si_enable[2].si_enable_r[2]_i_2_n_0 ),
        .O(p_43_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[3].si_enable_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_43_out),
        .Q(si_enable[3]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hAAAE)) 
    \gen_si_enable[4].si_enable_r[4]_i_1 
       (.I0(si_enable[4]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(\gen_si_enable[4].si_enable_r[4]_i_2_n_0 ),
        .I3(p_0_in_0[0]),
        .O(p_40_out));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \gen_si_enable[4].si_enable_r[4]_i_2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[3]),
        .I3(p_0_in_0[4]),
        .O(\gen_si_enable[4].si_enable_r[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[4].si_enable_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_40_out),
        .Q(si_enable[4]),
        .R(stg2_reset));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \gen_si_enable[5].si_enable_r[5]_i_1 
       (.I0(si_enable[5]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(p_0_in_0[0]),
        .I3(\gen_si_enable[4].si_enable_r[4]_i_2_n_0 ),
        .O(p_38_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[5].si_enable_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_38_out),
        .Q(si_enable[5]),
        .R(stg2_reset));
  LUT5 #(
    .INIT(32'hAAAAAEAA)) 
    \gen_si_enable[6].si_enable_r[6]_i_1 
       (.I0(si_enable[6]),
        .I1(\gen_si_enable[0].si_enable_r[0]_i_2_n_0 ),
        .I2(\gen_si_enable[6].si_enable_r[6]_i_2_n_0 ),
        .I3(p_0_in_0[1]),
        .I4(p_0_in_0[0]),
        .O(p_36_out));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_si_enable[6].si_enable_r[6]_i_2 
       (.I0(p_0_in_0[2]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[4]),
        .O(\gen_si_enable[6].si_enable_r[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_enable[6].si_enable_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(p_36_out),
        .Q(si_enable[6]),
        .R(stg2_reset));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[0].si_mux_r[3]_i_1 
       (.I0(si_enable[0]),
        .O(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[0].si_mux_r_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[0].si_mux_r[3]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[38]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[1].si_mux_r[7]_i_1 
       (.I0(si_enable[1]),
        .O(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[4] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[5] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[1].si_mux_r_reg[7] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[1].si_mux_r[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[42]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[2].si_mux_r[11]_i_1 
       (.I0(si_enable[2]),
        .O(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[10] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[11] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[8] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[2].si_mux_r_reg[9] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[2].si_mux_r[11]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[44]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[3].si_mux_r[15]_i_1 
       (.I0(si_enable[3]),
        .O(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[12] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[13] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[14] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[3].si_mux_r_reg[15] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[3].si_mux_r[15]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[50]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[4].si_mux_r[19]_i_1 
       (.I0(si_enable[4]),
        .O(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[16] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[17] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[18] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[4].si_mux_r_reg[19] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[4].si_mux_r[19]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[54]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[5].si_mux_r[23]_i_1 
       (.I0(si_enable[5]),
        .O(\gen_si_mux[5].si_mux_r[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[5].si_mux_r_reg[20] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[5].si_mux_r[23]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[5].si_mux_r_reg[21] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[5].si_mux_r[23]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[5].si_mux_r_reg[22] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[5].si_mux_r[23]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[5].si_mux_r_reg[23] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[5].si_mux_r[23]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[58]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_si_mux[6].si_mux_r[27]_i_1 
       (.I0(si_enable[6]),
        .O(\gen_si_mux[6].si_mux_r[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[6].si_mux_r_reg[24] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[6].si_mux_r[27]_i_1_n_0 ),
        .D(Q[0]),
        .Q(D[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[6].si_mux_r_reg[25] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[6].si_mux_r[27]_i_1_n_0 ),
        .D(Q[1]),
        .Q(D[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[6].si_mux_r_reg[26] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[6].si_mux_r[27]_i_1_n_0 ),
        .D(Q[2]),
        .Q(D[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_si_mux[6].si_mux_r_reg[27] 
       (.C(s_axi_ctrl_aclk),
        .CE(\gen_si_mux[6].si_mux_r[27]_i_1_n_0 ),
        .D(Q[3]),
        .Q(D[62]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mi_cntr[0]_i_1 
       (.I0(mi_cntr_reg__0[0]),
        .O(\mi_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mi_cntr[1]_i_1 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[0]),
        .O(\mi_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \mi_cntr[2]_i_1 
       (.I0(mi_cntr_reg__0[0]),
        .I1(mi_cntr_reg__0[1]),
        .I2(mi_cntr_reg__0[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \mi_cntr[3]_i_1 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[2]),
        .I2(mi_cntr_reg__0[0]),
        .I3(mi_cntr_reg__0[3]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mi_cntr[3]_i_2 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[2]),
        .I3(mi_cntr_reg__0[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(\mi_cntr[0]_i_1_n_0 ),
        .Q(mi_cntr_reg__0[0]),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b1)) 
    \mi_cntr_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(\mi_cntr[1]_i_1_n_0 ),
        .Q(mi_cntr_reg__0[1]),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b1)) 
    \mi_cntr_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(mi_cntr_reg__0[2]),
        .R(stg1_reset));
  FDRE #(
    .INIT(1'b0)) 
    \mi_cntr_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(mi_cntr_reg__0[3]),
        .R(stg1_reset));
  LUT4 #(
    .INIT(16'hDFBB)) 
    \mi_connectivity[0]_i_1 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[3]),
        .I2(mi_cntr_reg__0[0]),
        .I3(mi_cntr_reg__0[2]),
        .O(\mi_connectivity[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hF7AF)) 
    \mi_connectivity[1]_i_1 
       (.I0(mi_cntr_reg__0[2]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[3]),
        .I3(mi_cntr_reg__0[1]),
        .O(\mi_connectivity[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hFFBF)) 
    \mi_connectivity[2]_i_1 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[3]),
        .I3(mi_cntr_reg__0[2]),
        .O(\mi_connectivity[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \mi_connectivity[3]_i_1 
       (.I0(mi_cntr_reg__0[3]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[1]),
        .I3(mi_cntr_reg__0[2]),
        .O(\mi_connectivity[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2044)) 
    \mi_connectivity[6]_i_1 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[3]),
        .I2(mi_cntr_reg__0[0]),
        .I3(mi_cntr_reg__0[2]),
        .O(\mi_connectivity[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \mi_connectivity[6]_i_2 
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[0]),
        .I2(mi_cntr_reg__0[2]),
        .I3(mi_cntr_reg__0[3]),
        .O(\mi_connectivity[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[0]_i_1_n_0 ),
        .Q(mi_connectivity[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[1]_i_1_n_0 ),
        .Q(mi_connectivity[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[2]_i_1_n_0 ),
        .Q(mi_connectivity[2]),
        .R(\mi_connectivity[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[3]_i_1_n_0 ),
        .Q(mi_connectivity[3]),
        .R(\mi_connectivity[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mi_connectivity_reg[6] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\mi_connectivity[6]_i_2_n_0 ),
        .Q(mi_connectivity[6]),
        .R(\mi_connectivity[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[0]_i_2 
       (.I0(D[24]),
        .I1(D[8]),
        .I2(mi_cntr_reg__0[1]),
        .I3(D[16]),
        .I4(mi_cntr_reg__0[2]),
        .I5(D[0]),
        .O(\selectee[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[0]_i_3 
       (.I0(D[12]),
        .I1(mi_cntr_reg__0[1]),
        .I2(D[20]),
        .I3(mi_cntr_reg__0[2]),
        .I4(D[4]),
        .O(\selectee[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[1]_i_2 
       (.I0(D[25]),
        .I1(D[9]),
        .I2(mi_cntr_reg__0[1]),
        .I3(D[17]),
        .I4(mi_cntr_reg__0[2]),
        .I5(D[1]),
        .O(\selectee[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[1]_i_3 
       (.I0(D[13]),
        .I1(mi_cntr_reg__0[1]),
        .I2(D[21]),
        .I3(mi_cntr_reg__0[2]),
        .I4(D[5]),
        .O(\selectee[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[2]_i_2 
       (.I0(D[26]),
        .I1(D[10]),
        .I2(mi_cntr_reg__0[1]),
        .I3(D[18]),
        .I4(mi_cntr_reg__0[2]),
        .I5(D[2]),
        .O(\selectee[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[2]_i_3 
       (.I0(D[14]),
        .I1(mi_cntr_reg__0[1]),
        .I2(D[22]),
        .I3(mi_cntr_reg__0[2]),
        .I4(D[6]),
        .O(\selectee[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \selectee[3]_i_2 
       (.I0(D[27]),
        .I1(D[11]),
        .I2(mi_cntr_reg__0[1]),
        .I3(D[19]),
        .I4(mi_cntr_reg__0[2]),
        .I5(D[3]),
        .O(\selectee[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \selectee[3]_i_3 
       (.I0(D[15]),
        .I1(mi_cntr_reg__0[1]),
        .I2(D[23]),
        .I3(mi_cntr_reg__0[2]),
        .I4(D[7]),
        .O(\selectee[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee_reg[0]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  MUXF7 \selectee_reg[0]_i_1 
       (.I0(\selectee[0]_i_2_n_0 ),
        .I1(\selectee[0]_i_3_n_0 ),
        .O(\selectee_reg[0]_i_1_n_0 ),
        .S(mi_cntr_reg__0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee_reg[1]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  MUXF7 \selectee_reg[1]_i_1 
       (.I0(\selectee[1]_i_2_n_0 ),
        .I1(\selectee[1]_i_3_n_0 ),
        .O(\selectee_reg[1]_i_1_n_0 ),
        .S(mi_cntr_reg__0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee_reg[2]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  MUXF7 \selectee_reg[2]_i_1 
       (.I0(\selectee[2]_i_2_n_0 ),
        .I1(\selectee[2]_i_3_n_0 ),
        .O(\selectee_reg[2]_i_1_n_0 ),
        .S(mi_cntr_reg__0[0]));
  FDRE #(
    .INIT(1'b0)) 
    \selectee_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(\selectee_reg[3]_i_1_n_0 ),
        .Q(p_0_in_0[3]),
        .R(1'b0));
  MUXF7 \selectee_reg[3]_i_1 
       (.I0(\selectee[3]_i_2_n_0 ),
        .I1(\selectee[3]_i_3_n_0 ),
        .O(\selectee_reg[3]_i_1_n_0 ),
        .S(mi_cntr_reg__0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    selector_enable_i_2
       (.I0(mi_mux_en_in[3]),
        .I1(mi_mux_en_in[2]),
        .I2(mi_cntr_reg__0[1]),
        .I3(mi_mux_en_in[1]),
        .I4(mi_cntr_reg__0[0]),
        .I5(mi_mux_en_in[0]),
        .O(selector_enable_i_2_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    selector_enable_i_3
       (.I0(mi_mux_en_in[6]),
        .I1(mi_cntr_reg__0[1]),
        .I2(mi_mux_en_in[5]),
        .I3(mi_cntr_reg__0[0]),
        .I4(mi_mux_en_in[4]),
        .O(selector_enable_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    selector_enable_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(selector_enable_reg_i_1_n_0),
        .Q(p_0_in_0[4]),
        .R(1'b0));
  MUXF7 selector_enable_reg_i_1
       (.I0(selector_enable_i_2_n_0),
        .I1(selector_enable_i_3_n_0),
        .O(selector_enable_reg_i_1_n_0),
        .S(mi_cntr_reg__0[2]));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[0] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[1] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[2] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \selector_reg[3] 
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(mi_cntr_reg__0[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_r_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(out[0]),
        .Q(start_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    stg1_done_i_1
       (.I0(mi_cntr_reg__0[1]),
        .I1(mi_cntr_reg__0[2]),
        .I2(mi_cntr_reg__0[0]),
        .I3(mi_cntr_reg__0[3]),
        .I4(stg1_reset),
        .O(stg1_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    stg1_done_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_done_i_1_n_0),
        .Q(stg1_done),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    stg1_reset_i_1
       (.I0(out[0]),
        .I1(start_r),
        .O(stg1_reset_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stg1_reset_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_reset_i_1_n_0),
        .Q(stg1_reset),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    stg2_done_i_1
       (.I0(stg1_done),
        .I1(stg1_reset),
        .O(stg2_done_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    stg2_done_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg2_done_i_1_n_0),
        .Q(done),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    stg2_reset_reg
       (.C(s_axi_ctrl_aclk),
        .CE(1'b1),
        .D(stg1_reset),
        .Q(stg2_reset),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "top_xbar_4,axis_switch_v1_1_8_axis_switch,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_switch_v1_1_8_axis_switch,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module top_xbar_4
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    s_axi_ctrl_aclk,
    s_axi_ctrl_aresetn,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TVALID [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TVALID [0:0] [6:6]" *) input [6:0]s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TREADY [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TREADY [0:0] [6:6]" *) output [6:0]s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 S01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 S02_AXIS TDATA [31:0] [95:64], xilinx.com:interface:axis:1.0 S03_AXIS TDATA [31:0] [127:96], xilinx.com:interface:axis:1.0 S04_AXIS TDATA [31:0] [159:128], xilinx.com:interface:axis:1.0 S05_AXIS TDATA [31:0] [191:160], xilinx.com:interface:axis:1.0 S06_AXIS TDATA [31:0] [223:192]" *) input [223:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 S01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 S02_AXIS TKEEP [3:0] [11:8], xilinx.com:interface:axis:1.0 S03_AXIS TKEEP [3:0] [15:12], xilinx.com:interface:axis:1.0 S04_AXIS TKEEP [3:0] [19:16], xilinx.com:interface:axis:1.0 S05_AXIS TKEEP [3:0] [23:20], xilinx.com:interface:axis:1.0 S06_AXIS TKEEP [3:0] [27:24]" *) input [27:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 S01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 S02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 S03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 S04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 S05_AXIS TLAST [0:0] [5:5], xilinx.com:interface:axis:1.0 S06_AXIS TLAST [0:0] [6:6]" *) input [6:0]s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TVALID [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TVALID [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TVALID [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TVALID [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TVALID [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TVALID [0:0] [6:6]" *) output [6:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TREADY [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TREADY [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TREADY [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TREADY [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TREADY [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TREADY [0:0] [6:6]" *) input [6:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA [31:0] [31:0], xilinx.com:interface:axis:1.0 M01_AXIS TDATA [31:0] [63:32], xilinx.com:interface:axis:1.0 M02_AXIS TDATA [31:0] [95:64], xilinx.com:interface:axis:1.0 M03_AXIS TDATA [31:0] [127:96], xilinx.com:interface:axis:1.0 M04_AXIS TDATA [31:0] [159:128], xilinx.com:interface:axis:1.0 M05_AXIS TDATA [31:0] [191:160], xilinx.com:interface:axis:1.0 M06_AXIS TDATA [31:0] [223:192]" *) output [223:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP [3:0] [3:0], xilinx.com:interface:axis:1.0 M01_AXIS TKEEP [3:0] [7:4], xilinx.com:interface:axis:1.0 M02_AXIS TKEEP [3:0] [11:8], xilinx.com:interface:axis:1.0 M03_AXIS TKEEP [3:0] [15:12], xilinx.com:interface:axis:1.0 M04_AXIS TKEEP [3:0] [19:16], xilinx.com:interface:axis:1.0 M05_AXIS TKEEP [3:0] [23:20], xilinx.com:interface:axis:1.0 M06_AXIS TKEEP [3:0] [27:24]" *) output [27:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST [0:0] [0:0], xilinx.com:interface:axis:1.0 M01_AXIS TLAST [0:0] [1:1], xilinx.com:interface:axis:1.0 M02_AXIS TLAST [0:0] [2:2], xilinx.com:interface:axis:1.0 M03_AXIS TLAST [0:0] [3:3], xilinx.com:interface:axis:1.0 M04_AXIS TLAST [0:0] [4:4], xilinx.com:interface:axis:1.0 M05_AXIS TLAST [0:0] [5:5], xilinx.com:interface:axis:1.0 M06_AXIS TLAST [0:0] [6:6]" *) output [6:0]m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_CTRL_ACLK CLK" *) input s_axi_ctrl_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_CTRL_ARESETN RST" *) input s_axi_ctrl_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input s_axi_ctrl_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output s_axi_ctrl_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [6:0]s_axi_ctrl_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input s_axi_ctrl_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output s_axi_ctrl_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]s_axi_ctrl_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output s_axi_ctrl_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input s_axi_ctrl_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]s_axi_ctrl_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input s_axi_ctrl_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output s_axi_ctrl_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) input [6:0]s_axi_ctrl_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output s_axi_ctrl_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input s_axi_ctrl_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]s_axi_ctrl_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]s_axi_ctrl_rresp;

  wire aclk;
  wire aresetn;
  wire [223:0]m_axis_tdata;
  wire [27:0]m_axis_tkeep;
  wire [6:0]m_axis_tlast;
  wire [6:0]m_axis_tready;
  wire [6:0]m_axis_tvalid;
  wire s_axi_ctrl_aclk;
  wire [6:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_aresetn;
  wire s_axi_ctrl_arready;
  wire s_axi_ctrl_arvalid;
  wire [6:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awready;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire [1:0]s_axi_ctrl_bresp;
  wire s_axi_ctrl_bvalid;
  wire [31:0]s_axi_ctrl_rdata;
  wire s_axi_ctrl_rready;
  wire [1:0]s_axi_ctrl_rresp;
  wire s_axi_ctrl_rvalid;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wready;
  wire s_axi_ctrl_wvalid;
  wire [223:0]s_axis_tdata;
  wire [27:0]s_axis_tkeep;
  wire [6:0]s_axis_tlast;
  wire [6:0]s_axis_tready;
  wire [6:0]s_axis_tvalid;
  wire [48:0]NLW_inst_arb_dest_UNCONNECTED;
  wire [6:0]NLW_inst_arb_done_UNCONNECTED;
  wire [48:0]NLW_inst_arb_id_UNCONNECTED;
  wire [48:0]NLW_inst_arb_last_UNCONNECTED;
  wire [48:0]NLW_inst_arb_req_UNCONNECTED;
  wire [48:0]NLW_inst_arb_user_UNCONNECTED;
  wire [6:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [6:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [27:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [6:0]NLW_inst_m_axis_tuser_UNCONNECTED;
  wire [6:0]NLW_inst_s_decode_err_UNCONNECTED;

  (* C_ARB_ALGORITHM = "0" *) 
  (* C_ARB_ON_MAX_XFERS = "1" *) 
  (* C_ARB_ON_NUM_CYCLES = "0" *) 
  (* C_ARB_ON_TLAST = "0" *) 
  (* C_AXIS_SIGNAL_SET = "27" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_DECODER_REG = "1" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_INCLUDE_ARBITER = "1" *) 
  (* C_LOG_SI_SLOTS = "3" *) 
  (* C_M_AXIS_BASETDEST_ARRAY = "7'b0101010" *) 
  (* C_M_AXIS_CONNECTIVITY_ARRAY = "49'b1111111111111111111111111111111111111111111111111" *) 
  (* C_M_AXIS_HIGHTDEST_ARRAY = "7'b0101010" *) 
  (* C_NUM_MI_SLOTS = "7" *) 
  (* C_NUM_SI_SLOTS = "7" *) 
  (* C_OUTPUT_REG = "0" *) 
  (* C_ROUTING_MODE = "1" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "7" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* LP_CTRL_REG_WIDTH = "70" *) 
  (* LP_MERGEDOWN_MUX = "0" *) 
  (* LP_NUM_SYNCHRONIZER_STAGES = "4" *) 
  (* P_DECODER_CONNECTIVITY_ARRAY = "49'b1111111111111111111111111111111111111111111111111" *) 
  (* P_SINGLE_SLAVE_CONNECTIVITY_ARRAY = "7'b0000000" *) 
  (* P_TPAYLOAD_WIDTH = "37" *) 
  top_xbar_4_axis_switch_v1_1_8_axis_switch inst
       (.aclk(aclk),
        .aclken(1'b1),
        .arb_dest(NLW_inst_arb_dest_UNCONNECTED[48:0]),
        .arb_done(NLW_inst_arb_done_UNCONNECTED[6:0]),
        .arb_gnt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_id(NLW_inst_arb_id_UNCONNECTED[48:0]),
        .arb_last(NLW_inst_arb_last_UNCONNECTED[48:0]),
        .arb_req(NLW_inst_arb_req_UNCONNECTED[48:0]),
        .arb_sel({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arb_user(NLW_inst_arb_user_UNCONNECTED[48:0]),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[6:0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[6:0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[27:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[6:0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_ctrl_aclk(s_axi_ctrl_aclk),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(s_axis_tvalid),
        .s_decode_err(NLW_inst_s_decode_err_UNCONNECTED[6:0]),
        .s_req_suppress({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* DEST_EXT_HSK = "0" *) (* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_SYNC_FF = "4" *) (* VERSION = "0" *) 
(* WIDTH = "70" *) (* XPM_CDC = "HANDSHAKE" *) (* XPM_MODULE = "TRUE" *) 
module top_xbar_4_xpm_cdc_handshake
   (src_clk,
    src_in,
    src_send,
    src_rcv,
    dest_clk,
    dest_out,
    dest_req,
    dest_ack);
  input src_clk;
  input [69:0]src_in;
  input src_send;
  output src_rcv;
  input dest_clk;
  output [69:0]dest_out;
  output dest_req;
  input dest_ack;

  wire dest_clk;
  (* DIRECT_ENABLE *) wire dest_hsdata_en;
  (* RTL_KEEP = "true" *) (* XPM_CDC = "HANDSHAKE" *) wire [69:0]dest_hsdata_ff;
  wire dest_req;
  wire dest_req_ff;
  wire dest_req_nxt;
  wire p_0_in;
  wire src_clk;
  wire [69:0]src_hsdata_ff;
  wire [69:0]src_in;
  wire src_rcv;
  wire src_send;
  wire src_sendd_ff;

  assign dest_out[69:0] = dest_hsdata_ff;
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[0] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[0]),
        .Q(dest_hsdata_ff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[10] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[10]),
        .Q(dest_hsdata_ff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[11] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[11]),
        .Q(dest_hsdata_ff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[12] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[12]),
        .Q(dest_hsdata_ff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[13] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[13]),
        .Q(dest_hsdata_ff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[14] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[14]),
        .Q(dest_hsdata_ff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[15] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[15]),
        .Q(dest_hsdata_ff[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[16] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[16]),
        .Q(dest_hsdata_ff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[17] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[17]),
        .Q(dest_hsdata_ff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[18] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[18]),
        .Q(dest_hsdata_ff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[19] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[19]),
        .Q(dest_hsdata_ff[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[1] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[1]),
        .Q(dest_hsdata_ff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[20] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[20]),
        .Q(dest_hsdata_ff[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[21] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[21]),
        .Q(dest_hsdata_ff[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[22] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[22]),
        .Q(dest_hsdata_ff[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[23] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[23]),
        .Q(dest_hsdata_ff[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[24] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[24]),
        .Q(dest_hsdata_ff[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[25] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[25]),
        .Q(dest_hsdata_ff[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[26] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[26]),
        .Q(dest_hsdata_ff[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[27] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[27]),
        .Q(dest_hsdata_ff[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[28] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[28]),
        .Q(dest_hsdata_ff[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[29] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[29]),
        .Q(dest_hsdata_ff[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[2] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[2]),
        .Q(dest_hsdata_ff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[30] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[30]),
        .Q(dest_hsdata_ff[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[31] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[31]),
        .Q(dest_hsdata_ff[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[32] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[32]),
        .Q(dest_hsdata_ff[32]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[33] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[33]),
        .Q(dest_hsdata_ff[33]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[34] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[34]),
        .Q(dest_hsdata_ff[34]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[35] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[35]),
        .Q(dest_hsdata_ff[35]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[36] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[36]),
        .Q(dest_hsdata_ff[36]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[37] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[37]),
        .Q(dest_hsdata_ff[37]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[38] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[38]),
        .Q(dest_hsdata_ff[38]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[39] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[39]),
        .Q(dest_hsdata_ff[39]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[3] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[3]),
        .Q(dest_hsdata_ff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[40] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[40]),
        .Q(dest_hsdata_ff[40]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[41] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[41]),
        .Q(dest_hsdata_ff[41]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[42] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[42]),
        .Q(dest_hsdata_ff[42]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[43] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[43]),
        .Q(dest_hsdata_ff[43]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[44] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[44]),
        .Q(dest_hsdata_ff[44]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[45] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[45]),
        .Q(dest_hsdata_ff[45]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[46] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[46]),
        .Q(dest_hsdata_ff[46]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[47] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[47]),
        .Q(dest_hsdata_ff[47]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[48] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[48]),
        .Q(dest_hsdata_ff[48]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[49] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[49]),
        .Q(dest_hsdata_ff[49]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[4] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[4]),
        .Q(dest_hsdata_ff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[50] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[50]),
        .Q(dest_hsdata_ff[50]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[51] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[51]),
        .Q(dest_hsdata_ff[51]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[52] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[52]),
        .Q(dest_hsdata_ff[52]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[53] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[53]),
        .Q(dest_hsdata_ff[53]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[54] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[54]),
        .Q(dest_hsdata_ff[54]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[55] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[55]),
        .Q(dest_hsdata_ff[55]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[56] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[56]),
        .Q(dest_hsdata_ff[56]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[57] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[57]),
        .Q(dest_hsdata_ff[57]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[58] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[58]),
        .Q(dest_hsdata_ff[58]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[59] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[59]),
        .Q(dest_hsdata_ff[59]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[5] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[5]),
        .Q(dest_hsdata_ff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[60] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[60]),
        .Q(dest_hsdata_ff[60]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[61] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[61]),
        .Q(dest_hsdata_ff[61]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[62] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[62]),
        .Q(dest_hsdata_ff[62]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[63] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[63]),
        .Q(dest_hsdata_ff[63]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[64] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[64]),
        .Q(dest_hsdata_ff[64]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[65] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[65]),
        .Q(dest_hsdata_ff[65]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[66] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[66]),
        .Q(dest_hsdata_ff[66]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[67] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[67]),
        .Q(dest_hsdata_ff[67]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[68] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[68]),
        .Q(dest_hsdata_ff[68]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[69] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[69]),
        .Q(dest_hsdata_ff[69]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[6] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[6]),
        .Q(dest_hsdata_ff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[7] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[7]),
        .Q(dest_hsdata_ff[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[8] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[8]),
        .Q(dest_hsdata_ff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* XPM_CDC = "HANDSHAKE" *) 
  FDRE \dest_hsdata_ff_reg[9] 
       (.C(dest_clk),
        .CE(dest_hsdata_en),
        .D(src_hsdata_ff[9]),
        .Q(dest_hsdata_ff[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    dest_req_ext_ff_i_1
       (.I0(dest_req_nxt),
        .I1(dest_req_ff),
        .O(dest_hsdata_en));
  FDRE dest_req_ext_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_hsdata_en),
        .Q(dest_req),
        .R(1'b0));
  FDRE dest_req_ff_reg
       (.C(dest_clk),
        .CE(1'b1),
        .D(dest_req_nxt),
        .Q(dest_req_ff),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \src_hsdata_ff[69]_i_1 
       (.I0(src_sendd_ff),
        .O(p_0_in));
  FDRE \src_hsdata_ff_reg[0] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[0]),
        .Q(src_hsdata_ff[0]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[10] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[10]),
        .Q(src_hsdata_ff[10]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[11] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[11]),
        .Q(src_hsdata_ff[11]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[12] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[12]),
        .Q(src_hsdata_ff[12]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[13] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[13]),
        .Q(src_hsdata_ff[13]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[14] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[14]),
        .Q(src_hsdata_ff[14]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[15] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[15]),
        .Q(src_hsdata_ff[15]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[16] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[16]),
        .Q(src_hsdata_ff[16]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[17] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[17]),
        .Q(src_hsdata_ff[17]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[18] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[18]),
        .Q(src_hsdata_ff[18]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[19] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[19]),
        .Q(src_hsdata_ff[19]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[1] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[1]),
        .Q(src_hsdata_ff[1]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[20] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[20]),
        .Q(src_hsdata_ff[20]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[21] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[21]),
        .Q(src_hsdata_ff[21]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[22] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[22]),
        .Q(src_hsdata_ff[22]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[23] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[23]),
        .Q(src_hsdata_ff[23]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[24] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[24]),
        .Q(src_hsdata_ff[24]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[25] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[25]),
        .Q(src_hsdata_ff[25]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[26] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[26]),
        .Q(src_hsdata_ff[26]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[27] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[27]),
        .Q(src_hsdata_ff[27]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[28] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[28]),
        .Q(src_hsdata_ff[28]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[29] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[29]),
        .Q(src_hsdata_ff[29]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[2] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[2]),
        .Q(src_hsdata_ff[2]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[30] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[30]),
        .Q(src_hsdata_ff[30]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[31] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[31]),
        .Q(src_hsdata_ff[31]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[32] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[32]),
        .Q(src_hsdata_ff[32]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[33] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[33]),
        .Q(src_hsdata_ff[33]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[34] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[34]),
        .Q(src_hsdata_ff[34]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[35] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[35]),
        .Q(src_hsdata_ff[35]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[36] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[36]),
        .Q(src_hsdata_ff[36]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[37] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[37]),
        .Q(src_hsdata_ff[37]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[38] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[38]),
        .Q(src_hsdata_ff[38]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[39] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[39]),
        .Q(src_hsdata_ff[39]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[3] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[3]),
        .Q(src_hsdata_ff[3]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[40] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[40]),
        .Q(src_hsdata_ff[40]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[41] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[41]),
        .Q(src_hsdata_ff[41]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[42] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[42]),
        .Q(src_hsdata_ff[42]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[43] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[43]),
        .Q(src_hsdata_ff[43]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[44] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[44]),
        .Q(src_hsdata_ff[44]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[45] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[45]),
        .Q(src_hsdata_ff[45]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[46] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[46]),
        .Q(src_hsdata_ff[46]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[47] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[47]),
        .Q(src_hsdata_ff[47]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[48] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[48]),
        .Q(src_hsdata_ff[48]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[49] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[49]),
        .Q(src_hsdata_ff[49]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[4] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[4]),
        .Q(src_hsdata_ff[4]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[50] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[50]),
        .Q(src_hsdata_ff[50]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[51] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[51]),
        .Q(src_hsdata_ff[51]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[52] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[52]),
        .Q(src_hsdata_ff[52]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[53] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[53]),
        .Q(src_hsdata_ff[53]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[54] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[54]),
        .Q(src_hsdata_ff[54]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[55] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[55]),
        .Q(src_hsdata_ff[55]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[56] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[56]),
        .Q(src_hsdata_ff[56]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[57] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[57]),
        .Q(src_hsdata_ff[57]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[58] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[58]),
        .Q(src_hsdata_ff[58]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[59] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[59]),
        .Q(src_hsdata_ff[59]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[5] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[5]),
        .Q(src_hsdata_ff[5]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[60] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[60]),
        .Q(src_hsdata_ff[60]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[61] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[61]),
        .Q(src_hsdata_ff[61]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[62] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[62]),
        .Q(src_hsdata_ff[62]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[63] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[63]),
        .Q(src_hsdata_ff[63]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[64] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[64]),
        .Q(src_hsdata_ff[64]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[65] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[65]),
        .Q(src_hsdata_ff[65]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[66] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[66]),
        .Q(src_hsdata_ff[66]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[67] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[67]),
        .Q(src_hsdata_ff[67]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[68] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[68]),
        .Q(src_hsdata_ff[68]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[69] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[69]),
        .Q(src_hsdata_ff[69]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[6] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[6]),
        .Q(src_hsdata_ff[6]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[7] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[7]),
        .Q(src_hsdata_ff[7]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[8] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[8]),
        .Q(src_hsdata_ff[8]),
        .R(1'b0));
  FDRE \src_hsdata_ff_reg[9] 
       (.C(src_clk),
        .CE(p_0_in),
        .D(src_in[9]),
        .Q(src_hsdata_ff[9]),
        .R(1'b0));
  FDRE src_sendd_ff_reg
       (.C(src_clk),
        .CE(1'b1),
        .D(src_send),
        .Q(src_sendd_ff),
        .R(1'b0));
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_single__parameterized1 xpm_cdc_single_dest2src_inst
       (.dest_clk(src_clk),
        .dest_out(src_rcv),
        .src_clk(dest_clk),
        .src_in(dest_req_ff));
  (* DEST_SYNC_FF = "4" *) 
  (* KEEP_HIERARCHY = "true" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  top_xbar_4_xpm_cdc_single__parameterized0 xpm_cdc_single_src2dest_inst
       (.dest_clk(dest_clk),
        .dest_out(dest_req_nxt),
        .src_clk(src_clk),
        .src_in(src_sendd_ff));
endmodule

(* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_CDC = "SINGLE" *) 
(* XPM_MODULE = "TRUE" *) 
module top_xbar_4_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* ASYNC_REG = "true" *) (* RTL_KEEP = "true" *) (* XPM_CDC = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_CDC = "SINGLE" *) (* XPM_MODULE = "TRUE" *) 
module top_xbar_4_xpm_cdc_single__parameterized0
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* ASYNC_REG = "true" *) (* RTL_KEEP = "true" *) (* XPM_CDC = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* KEEP_HIERARCHY = "true" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_CDC = "SINGLE" *) (* XPM_MODULE = "TRUE" *) 
module top_xbar_4_xpm_cdc_single__parameterized1
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* ASYNC_REG = "true" *) (* RTL_KEEP = "true" *) (* XPM_CDC = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
