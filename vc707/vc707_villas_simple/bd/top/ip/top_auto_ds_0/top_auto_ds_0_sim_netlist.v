// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Sun Jun 26 14:14:34 2016
// Host        : E265 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top top_auto_ds_0 -prefix top_auto_ds_0_
//               top_auto_ds_0_sim_netlist.v
// Design      : top_auto_ds_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo
   (dout,
    full,
    empty,
    SR,
    din,
    split_ongoing_reg,
    E,
    wr_en,
    S,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    cmd_push_block_reg,
    \queue_id_reg[0] ,
    cmd_b_push_block_reg,
    CLK,
    rd_en,
    Q,
    fix_need_to_split_q,
    access_is_fix_q,
    m_axi_awready,
    ram_full_i_reg,
    cmd_push_block,
    command_ongoing,
    cmd_b_push_block,
    out,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    access_is_wrap_q,
    split_ongoing,
    access_is_incr_q,
    CO,
    \num_transactions_q_reg[3] ,
    \S_AXI_ALEN_Q_reg[3] ,
    S_AXI_AREADY_I_reg_0,
    s_axi_awvalid,
    \areset_d_reg[0] ,
    areset_d,
    \areset_d_reg[1] ,
    S_AXI_AID_Q,
    s_axi_bid,
    S_AXI_AREADY_I_reg_1);
  output [8:0]dout;
  output full;
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output split_ongoing_reg;
  output [0:0]E;
  output wr_en;
  output [2:0]S;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output cmd_push_block_reg;
  output \queue_id_reg[0] ;
  output cmd_b_push_block_reg;
  input CLK;
  input rd_en;
  input [7:0]Q;
  input fix_need_to_split_q;
  input access_is_fix_q;
  input m_axi_awready;
  input ram_full_i_reg;
  input cmd_push_block;
  input command_ongoing;
  input cmd_b_push_block;
  input out;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input access_is_wrap_q;
  input split_ongoing;
  input access_is_incr_q;
  input [0:0]CO;
  input [3:0]\num_transactions_q_reg[3] ;
  input [3:0]\S_AXI_ALEN_Q_reg[3] ;
  input [0:0]S_AXI_AREADY_I_reg_0;
  input s_axi_awvalid;
  input \areset_d_reg[0] ;
  input [0:0]areset_d;
  input \areset_d_reg[1] ;
  input S_AXI_AID_Q;
  input [0:0]s_axi_bid;
  input [0:0]S_AXI_AREADY_I_reg_1;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire S_AXI_AID_Q;
  wire [3:0]\S_AXI_ALEN_Q_reg[3] ;
  wire S_AXI_AREADY_I_reg;
  wire [0:0]S_AXI_AREADY_I_reg_0;
  wire [0:0]S_AXI_AREADY_I_reg_1;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire [0:0]areset_d;
  wire \areset_d_reg[0] ;
  wire \areset_d_reg[1] ;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire [0:0]din;
  wire [8:0]dout;
  wire empty;
  wire fix_need_to_split_q;
  wire full;
  wire incr_need_to_split_q;
  wire m_axi_awready;
  wire [3:0]\num_transactions_q_reg[3] ;
  wire out;
  wire \queue_id_reg[0] ;
  wire ram_full_i_reg;
  wire rd_en;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire split_ongoing;
  wire split_ongoing_reg;
  wire wr_en;
  wire wrap_need_to_split_q;

  top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen inst
       (.CLK(CLK),
        .CO(CO),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .S_AXI_AID_Q(S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[3] (\S_AXI_ALEN_Q_reg[3] ),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .S_AXI_AREADY_I_reg_1(S_AXI_AREADY_I_reg_1),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .areset_d(areset_d),
        .\areset_d_reg[0] (\areset_d_reg[0] ),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(cmd_b_push_block_reg),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_push_block_reg),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .din(din),
        .dout(dout),
        .empty(empty),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(full),
        .incr_need_to_split_q(incr_need_to_split_q),
        .m_axi_awready(m_axi_awready),
        .\num_transactions_q_reg[3] (\num_transactions_q_reg[3] ),
        .out(out),
        .\queue_id_reg[0] (\queue_id_reg[0] ),
        .ram_full_i_reg(ram_full_i_reg),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .split_ongoing(split_ongoing),
        .split_ongoing_reg(split_ongoing_reg),
        .wr_en(wr_en),
        .wrap_need_to_split_q(wrap_need_to_split_q));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_7_axic_fifo" *) 
module top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized0
   (dout,
    full,
    \m_axi_awsize[2] ,
    m_axi_awvalid,
    DI,
    \gpr1.dout_i_reg[7] ,
    \next_mi_addr_reg[8] ,
    \next_mi_addr_reg[8]_0 ,
    E,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_wdata,
    m_axi_wstrb,
    D,
    S,
    \gpr1.dout_i_reg[7]_0 ,
    CLK,
    SR,
    din,
    wr_en,
    fix_need_to_split_q,
    Q,
    split_ongoing,
    access_is_wrap_q,
    command_ongoing,
    cmd_push_block,
    ram_full_i_reg,
    \S_AXI_ALEN_Q_reg[7] ,
    \downsized_len_q_reg[7] ,
    access_is_incr_q,
    \pushed_commands_reg[7] ,
    CO,
    si_full_size_q,
    size_mask_q,
    \S_AXI_AADDR_Q_reg[3] ,
    \split_addr_mask_q_reg[3] ,
    \fix_len_q_reg[4] ,
    \unalignment_addr_q_reg[4] ,
    \wrap_unaligned_len_q_reg[7] ,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    legal_wrap_len_q,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_wlast,
    first_mi_word,
    \length_counter_1_reg[7] ,
    \goreg_dm.dout_i_reg[8] ,
    access_is_fix_q,
    s_axi_wdata,
    s_axi_wstrb,
    \current_word_1_reg[3] ,
    first_word_reg);
  output [8:0]dout;
  output full;
  output [2:0]\m_axi_awsize[2] ;
  output m_axi_awvalid;
  output [3:0]DI;
  output [2:0]\gpr1.dout_i_reg[7] ;
  output \next_mi_addr_reg[8] ;
  output \next_mi_addr_reg[8]_0 ;
  output [0:0]E;
  output m_axi_wvalid;
  output s_axi_wready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [3:0]D;
  output [3:0]S;
  output [3:0]\gpr1.dout_i_reg[7]_0 ;
  input CLK;
  input [0:0]SR;
  input [16:0]din;
  input wr_en;
  input fix_need_to_split_q;
  input [7:0]Q;
  input split_ongoing;
  input access_is_wrap_q;
  input command_ongoing;
  input cmd_push_block;
  input ram_full_i_reg;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input access_is_incr_q;
  input \pushed_commands_reg[7] ;
  input [0:0]CO;
  input si_full_size_q;
  input [2:0]size_mask_q;
  input [3:0]\S_AXI_AADDR_Q_reg[3] ;
  input [0:0]\split_addr_mask_q_reg[3] ;
  input [4:0]\fix_len_q_reg[4] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input [7:0]\wrap_unaligned_len_q_reg[7] ;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input legal_wrap_len_q;
  input s_axi_wvalid;
  input m_axi_wready;
  input m_axi_wlast;
  input first_mi_word;
  input [0:0]\length_counter_1_reg[7] ;
  input \goreg_dm.dout_i_reg[8] ;
  input access_is_fix_q;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]\current_word_1_reg[3] ;
  input first_word_reg;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [3:0]\S_AXI_AADDR_Q_reg[3] ;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire cmd_push_block;
  wire command_ongoing;
  wire [3:0]\current_word_1_reg[3] ;
  wire [16:0]din;
  wire [8:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire first_mi_word;
  wire first_word_reg;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire \goreg_dm.dout_i_reg[8] ;
  wire [2:0]\gpr1.dout_i_reg[7] ;
  wire [3:0]\gpr1.dout_i_reg[7]_0 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire [0:0]\length_counter_1_reg[7] ;
  wire [2:0]\m_axi_awsize[2] ;
  wire m_axi_awvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire \pushed_commands_reg[7] ;
  wire ram_full_i_reg;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size_q;
  wire [2:0]size_mask_q;
  wire [0:0]\split_addr_mask_q_reg[3] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wr_en;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_unaligned_len_q_reg[7] ;

  top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized0 inst
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .DI(DI),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[3] (\S_AXI_AADDR_Q_reg[3] ),
        .\S_AXI_ALEN_Q_reg[7] (\S_AXI_ALEN_Q_reg[7] ),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .din(din),
        .dout(dout),
        .\downsized_len_q_reg[7] (\downsized_len_q_reg[7] ),
        .first_mi_word(first_mi_word),
        .first_word_reg(first_word_reg),
        .\fix_len_q_reg[4] (\fix_len_q_reg[4] ),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(full),
        .\goreg_dm.dout_i_reg[8] (\goreg_dm.dout_i_reg[8] ),
        .\gpr1.dout_i_reg[7] (\gpr1.dout_i_reg[7] ),
        .\gpr1.dout_i_reg[7]_0 (\gpr1.dout_i_reg[7]_0 ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[7] (\length_counter_1_reg[7] ),
        .\m_axi_awsize[2] (\m_axi_awsize[2] ),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\next_mi_addr_reg[8] (\next_mi_addr_reg[8] ),
        .\next_mi_addr_reg[8]_0 (\next_mi_addr_reg[8]_0 ),
        .\pushed_commands_reg[7] (\pushed_commands_reg[7] ),
        .ram_full_i_reg(ram_full_i_reg),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .si_full_size_q(si_full_size_q),
        .size_mask_q(size_mask_q),
        .\split_addr_mask_q_reg[3] (\split_addr_mask_q_reg[3] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (\unalignment_addr_q_reg[4] ),
        .wr_en(wr_en),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_unaligned_len_q_reg[7] (\wrap_unaligned_len_q_reg[7] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_7_axic_fifo" *) 
module top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized1
   (dout,
    din,
    s_axi_rlast,
    E,
    m_axi_arvalid,
    DI,
    \gpr1.dout_i_reg[7] ,
    S,
    \next_mi_addr_reg[8] ,
    \next_mi_addr_reg[8]_0 ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63] ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95] ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127] ,
    first_mi_word_reg,
    m_axi_rready,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ,
    s_axi_rvalid,
    D,
    s_axi_rdata,
    \S_AXI_RRESP_ACC_reg[0] ,
    \gpr1.dout_i_reg[7]_0 ,
    \gpr1.dout_i_reg[7]_1 ,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    cmd_push_block_reg,
    \queue_id_reg[0] ,
    CLK,
    SR,
    access_fit_mi_side_q,
    \cmd_mask_q_reg[3] ,
    rd_en,
    Q,
    fix_need_to_split_q,
    access_is_fix_q,
    \wrap_rest_len_reg[7] ,
    split_ongoing,
    access_is_wrap_q,
    m_axi_rlast,
    m_axi_arready,
    cmd_push_block,
    command_ongoing,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    \S_AXI_ALEN_Q_reg[7] ,
    \downsized_len_q_reg[7] ,
    access_is_incr_q,
    CO,
    \num_transactions_q_reg[3] ,
    si_full_size_q,
    size_mask_q,
    \S_AXI_AADDR_Q_reg[3] ,
    \split_addr_mask_q_reg[3] ,
    \fix_len_q_reg[4] ,
    \unalignment_addr_q_reg[4] ,
    \wrap_unaligned_len_q_reg[7] ,
    legal_wrap_len_q,
    s_axi_rready,
    out,
    \goreg_dm.dout_i_reg[9] ,
    first_word,
    \length_counter_1_reg[7] ,
    \goreg_dm.dout_i_reg[8] ,
    \current_word_1_reg[3] ,
    m_axi_rdata,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ,
    \S_AXI_RRESP_ACC_reg[0]_0 ,
    m_axi_rvalid,
    areset_d,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    \areset_d_reg[1] ,
    S_AXI_AID_Q,
    s_axi_rid);
  output [8:0]dout;
  output [3:0]din;
  output s_axi_rlast;
  output [0:0]E;
  output m_axi_arvalid;
  output [3:0]DI;
  output [2:0]\gpr1.dout_i_reg[7] ;
  output [2:0]S;
  output \next_mi_addr_reg[8] ;
  output \next_mi_addr_reg[8]_0 ;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  output \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  output [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  output [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  output [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  output [0:0]first_mi_word_reg;
  output m_axi_rready;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ;
  output s_axi_rvalid;
  output [3:0]D;
  output [127:0]s_axi_rdata;
  output \S_AXI_RRESP_ACC_reg[0] ;
  output [3:0]\gpr1.dout_i_reg[7]_0 ;
  output [3:0]\gpr1.dout_i_reg[7]_1 ;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output cmd_push_block_reg;
  output \queue_id_reg[0] ;
  input CLK;
  input [0:0]SR;
  input access_fit_mi_side_q;
  input [14:0]\cmd_mask_q_reg[3] ;
  input rd_en;
  input [7:0]Q;
  input fix_need_to_split_q;
  input access_is_fix_q;
  input [7:0]\wrap_rest_len_reg[7] ;
  input split_ongoing;
  input access_is_wrap_q;
  input m_axi_rlast;
  input m_axi_arready;
  input cmd_push_block;
  input command_ongoing;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input access_is_incr_q;
  input [0:0]CO;
  input [3:0]\num_transactions_q_reg[3] ;
  input si_full_size_q;
  input [2:0]size_mask_q;
  input [3:0]\S_AXI_AADDR_Q_reg[3] ;
  input [0:0]\split_addr_mask_q_reg[3] ;
  input [4:0]\fix_len_q_reg[4] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input [7:0]\wrap_unaligned_len_q_reg[7] ;
  input legal_wrap_len_q;
  input s_axi_rready;
  input out;
  input \goreg_dm.dout_i_reg[9] ;
  input first_word;
  input [0:0]\length_counter_1_reg[7] ;
  input \goreg_dm.dout_i_reg[8] ;
  input [3:0]\current_word_1_reg[3] ;
  input [31:0]m_axi_rdata;
  input [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 ;
  input [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  input [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  input [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  input \S_AXI_RRESP_ACC_reg[0]_0 ;
  input m_axi_rvalid;
  input [1:0]areset_d;
  input [0:0]S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input \areset_d_reg[1] ;
  input S_AXI_AID_Q;
  input [0:0]s_axi_rid;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [3:0]\S_AXI_AADDR_Q_reg[3] ;
  wire S_AXI_AID_Q;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire S_AXI_AREADY_I_reg;
  wire [0:0]S_AXI_AREADY_I_reg_0;
  wire \S_AXI_RRESP_ACC_reg[0] ;
  wire \S_AXI_RRESP_ACC_reg[0]_0 ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  wire \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 ;
  wire [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  wire [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  wire [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  wire access_fit_mi_side_q;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire [1:0]areset_d;
  wire \areset_d_reg[1] ;
  wire [14:0]\cmd_mask_q_reg[3] ;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire [3:0]\current_word_1_reg[3] ;
  wire [3:0]din;
  wire [8:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire [0:0]first_mi_word_reg;
  wire first_word;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire \goreg_dm.dout_i_reg[8] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire [2:0]\gpr1.dout_i_reg[7] ;
  wire [3:0]\gpr1.dout_i_reg[7]_0 ;
  wire [3:0]\gpr1.dout_i_reg[7]_1 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire [0:0]\length_counter_1_reg[7] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire [3:0]\num_transactions_q_reg[3] ;
  wire out;
  wire \queue_id_reg[0] ;
  wire rd_en;
  wire s_axi_arvalid;
  wire [127:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire si_full_size_q;
  wire [2:0]size_mask_q;
  wire [0:0]\split_addr_mask_q_reg[3] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [7:0]\wrap_unaligned_len_q_reg[7] ;

  top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized1 inst
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .DI(DI),
        .E(E),
        .Q(Q),
        .S(S),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[3] (\S_AXI_AADDR_Q_reg[3] ),
        .S_AXI_AID_Q(S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[7] (\S_AXI_ALEN_Q_reg[7] ),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .S_AXI_AREADY_I_reg_0(S_AXI_AREADY_I_reg_0),
        .\S_AXI_RRESP_ACC_reg[0] (\S_AXI_RRESP_ACC_reg[0] ),
        .\S_AXI_RRESP_ACC_reg[0]_0 (\S_AXI_RRESP_ACC_reg[0]_0 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31] (\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63] (\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 (\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95] (\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 (\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127] (\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 (\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ),
        .access_fit_mi_side_q_reg({access_fit_mi_side_q,\cmd_mask_q_reg[3] }),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .areset_d(areset_d),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_push_block_reg),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(command_ongoing_reg),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .din(din),
        .dout(dout),
        .\downsized_len_q_reg[7] (\downsized_len_q_reg[7] ),
        .first_mi_word_reg(first_mi_word_reg),
        .first_word(first_word),
        .\fix_len_q_reg[4] (\fix_len_q_reg[4] ),
        .fix_need_to_split_q(fix_need_to_split_q),
        .\goreg_dm.dout_i_reg[8] (\goreg_dm.dout_i_reg[8] ),
        .\goreg_dm.dout_i_reg[9] (\goreg_dm.dout_i_reg[9] ),
        .\gpr1.dout_i_reg[7] (\gpr1.dout_i_reg[7] ),
        .\gpr1.dout_i_reg[7]_0 (\gpr1.dout_i_reg[7]_0 ),
        .\gpr1.dout_i_reg[7]_1 (\gpr1.dout_i_reg[7]_1 ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[7] (\length_counter_1_reg[7] ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .\next_mi_addr_reg[8] (\next_mi_addr_reg[8] ),
        .\next_mi_addr_reg[8]_0 (\next_mi_addr_reg[8]_0 ),
        .\num_transactions_q_reg[3] (\num_transactions_q_reg[3] ),
        .out(out),
        .\queue_id_reg[0] (\queue_id_reg[0] ),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .si_full_size_q(si_full_size_q),
        .size_mask_q(size_mask_q),
        .\split_addr_mask_q_reg[3] (\split_addr_mask_q_reg[3] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (\unalignment_addr_q_reg[4] ),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (\wrap_rest_len_reg[7] ),
        .\wrap_unaligned_len_q_reg[7] (\wrap_unaligned_len_q_reg[7] ));
endmodule

module top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen
   (dout,
    full,
    empty,
    SR,
    din,
    split_ongoing_reg,
    E,
    wr_en,
    S,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    cmd_push_block_reg,
    \queue_id_reg[0] ,
    cmd_b_push_block_reg,
    CLK,
    rd_en,
    Q,
    fix_need_to_split_q,
    access_is_fix_q,
    m_axi_awready,
    ram_full_i_reg,
    cmd_push_block,
    command_ongoing,
    cmd_b_push_block,
    out,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    access_is_wrap_q,
    split_ongoing,
    access_is_incr_q,
    CO,
    \num_transactions_q_reg[3] ,
    \S_AXI_ALEN_Q_reg[3] ,
    S_AXI_AREADY_I_reg_0,
    s_axi_awvalid,
    \areset_d_reg[0] ,
    areset_d,
    \areset_d_reg[1] ,
    S_AXI_AID_Q,
    s_axi_bid,
    S_AXI_AREADY_I_reg_1);
  output [8:0]dout;
  output full;
  output empty;
  output [0:0]SR;
  output [0:0]din;
  output split_ongoing_reg;
  output [0:0]E;
  output wr_en;
  output [2:0]S;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output cmd_push_block_reg;
  output \queue_id_reg[0] ;
  output cmd_b_push_block_reg;
  input CLK;
  input rd_en;
  input [7:0]Q;
  input fix_need_to_split_q;
  input access_is_fix_q;
  input m_axi_awready;
  input ram_full_i_reg;
  input cmd_push_block;
  input command_ongoing;
  input cmd_b_push_block;
  input out;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input access_is_wrap_q;
  input split_ongoing;
  input access_is_incr_q;
  input [0:0]CO;
  input [3:0]\num_transactions_q_reg[3] ;
  input [3:0]\S_AXI_ALEN_Q_reg[3] ;
  input [0:0]S_AXI_AREADY_I_reg_0;
  input s_axi_awvalid;
  input \areset_d_reg[0] ;
  input [0:0]areset_d;
  input \areset_d_reg[1] ;
  input S_AXI_AID_Q;
  input [0:0]s_axi_bid;
  input [0:0]S_AXI_AREADY_I_reg_1;

  wire CLK;
  wire [0:0]CO;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire S_AXI_AID_Q;
  wire [3:0]\S_AXI_ALEN_Q_reg[3] ;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_i_5_n_0;
  wire S_AXI_AREADY_I_i_6_n_0;
  wire S_AXI_AREADY_I_reg;
  wire [0:0]S_AXI_AREADY_I_reg_0;
  wire [0:0]S_AXI_AREADY_I_reg_1;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire [0:0]areset_d;
  wire \areset_d_reg[0] ;
  wire \areset_d_reg[1] ;
  wire cmd_b_push;
  wire cmd_b_push_block;
  wire cmd_b_push_block_reg;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire [0:0]din;
  wire [8:0]dout;
  wire empty;
  wire fix_need_to_split_q;
  wire full;
  wire incr_need_to_split_q;
  wire m_axi_awready;
  wire [3:0]\num_transactions_q_reg[3] ;
  wire out;
  wire [3:0]p_1_out;
  wire \queue_id_reg[0] ;
  wire ram_full_i_reg;
  wire rd_en;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire split_ongoing;
  wire split_ongoing_reg;
  wire wr_en;
  wire wrap_need_to_split_q;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(out),
        .O(SR));
  LUT6 #(
    .INIT(64'h02F2FFFF02F202F2)) 
    S_AXI_AREADY_I_i_2__0
       (.I0(E),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(S_AXI_AREADY_I_reg_0),
        .I3(s_axi_awvalid),
        .I4(\areset_d_reg[0] ),
        .I5(areset_d),
        .O(S_AXI_AREADY_I_reg));
  LUT6 #(
    .INIT(64'h00002A222A222A22)) 
    S_AXI_AREADY_I_i_3
       (.I0(split_ongoing_reg),
        .I1(access_is_wrap_q),
        .I2(split_ongoing),
        .I3(wrap_need_to_split_q),
        .I4(access_is_incr_q),
        .I5(CO),
        .O(S_AXI_AREADY_I_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    S_AXI_AREADY_I_i_4__0
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(S_AXI_AREADY_I_i_5_n_0),
        .I3(S_AXI_AREADY_I_i_6_n_0),
        .I4(fix_need_to_split_q),
        .I5(access_is_fix_q),
        .O(split_ongoing_reg));
  LUT4 #(
    .INIT(16'hEFFE)) 
    S_AXI_AREADY_I_i_5
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\S_AXI_ALEN_Q_reg[3] [3]),
        .I3(Q[3]),
        .O(S_AXI_AREADY_I_i_5_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    S_AXI_AREADY_I_i_6
       (.I0(\S_AXI_ALEN_Q_reg[3] [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\S_AXI_ALEN_Q_reg[3] [2]),
        .I4(Q[1]),
        .I5(\S_AXI_ALEN_Q_reg[3] [1]),
        .O(S_AXI_AREADY_I_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000000FFABAAAA)) 
    cmd_b_push_block_i_1
       (.I0(cmd_b_push_block),
        .I1(full),
        .I2(ram_full_i_reg),
        .I3(cmd_push_block),
        .I4(command_ongoing),
        .I5(S_AXI_AREADY_I_reg_1),
        .O(cmd_b_push_block_reg));
  LUT6 #(
    .INIT(64'h22220002AAAA0000)) 
    cmd_push_block_i_1
       (.I0(out),
        .I1(m_axi_awready),
        .I2(full),
        .I3(ram_full_i_reg),
        .I4(cmd_push_block),
        .I5(command_ongoing),
        .O(cmd_push_block_reg));
  LUT6 #(
    .INIT(64'hFFFFFDDD0000F000)) 
    command_ongoing_i_1
       (.I0(E),
        .I1(S_AXI_AREADY_I_i_3_n_0),
        .I2(S_AXI_AREADY_I_reg_0),
        .I3(s_axi_awvalid),
        .I4(\areset_d_reg[1] ),
        .I5(command_ongoing),
        .O(command_ongoing_reg));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "9" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "9" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  top_auto_ds_0_fifo_generator_v13_1_0 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({din,1'b0,1'b0,1'b0,1'b0,p_1_out}),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_b_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT4 #(
    .INIT(16'hAAA8)) 
    fifo_gen_inst_i_1
       (.I0(S_AXI_AREADY_I_i_3_n_0),
        .I1(wrap_need_to_split_q),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(din));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    fifo_gen_inst_i_10
       (.I0(full),
        .I1(ram_full_i_reg),
        .I2(command_ongoing),
        .I3(cmd_push_block),
        .O(wr_en));
  LUT4 #(
    .INIT(16'hB888)) 
    fifo_gen_inst_i_2__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [3]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[3] [3]),
        .I3(incr_need_to_split_q),
        .O(p_1_out[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    fifo_gen_inst_i_3__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [2]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[3] [2]),
        .I3(incr_need_to_split_q),
        .O(p_1_out[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    fifo_gen_inst_i_4__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [1]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[3] [1]),
        .I3(incr_need_to_split_q),
        .O(p_1_out[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    fifo_gen_inst_i_5__1
       (.I0(\S_AXI_ALEN_Q_reg[3] [0]),
        .I1(fix_need_to_split_q),
        .I2(\num_transactions_q_reg[3] [0]),
        .I3(incr_need_to_split_q),
        .I4(wrap_need_to_split_q),
        .O(p_1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h0000F100)) 
    fifo_gen_inst_i_6
       (.I0(full),
        .I1(ram_full_i_reg),
        .I2(cmd_push_block),
        .I3(command_ongoing),
        .I4(cmd_b_push_block),
        .O(cmd_b_push));
  LUT2 #(
    .INIT(4'h1)) 
    last_incr_split0_carry_i_1
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h1001)) 
    last_incr_split0_carry_i_2
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\num_transactions_q_reg[3] [3]),
        .I3(Q[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_incr_split0_carry_i_3
       (.I0(\num_transactions_q_reg[3] [2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\num_transactions_q_reg[3] [1]),
        .I4(Q[0]),
        .I5(\num_transactions_q_reg[3] [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \queue_id[0]_i_1 
       (.I0(S_AXI_AID_Q),
        .I1(full),
        .I2(ram_full_i_reg),
        .I3(command_ongoing),
        .I4(cmd_push_block),
        .I5(s_axi_bid),
        .O(\queue_id_reg[0] ));
  LUT5 #(
    .INIT(32'hAA020000)) 
    split_ongoing_i_1
       (.I0(m_axi_awready),
        .I1(full),
        .I2(ram_full_i_reg),
        .I3(cmd_push_block),
        .I4(command_ongoing),
        .O(E));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_7_fifo_gen" *) 
module top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized0
   (dout,
    full,
    \m_axi_awsize[2] ,
    m_axi_awvalid,
    DI,
    \gpr1.dout_i_reg[7] ,
    \next_mi_addr_reg[8] ,
    \next_mi_addr_reg[8]_0 ,
    E,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_wdata,
    m_axi_wstrb,
    D,
    S,
    \gpr1.dout_i_reg[7]_0 ,
    CLK,
    SR,
    din,
    wr_en,
    fix_need_to_split_q,
    Q,
    split_ongoing,
    access_is_wrap_q,
    command_ongoing,
    cmd_push_block,
    ram_full_i_reg,
    \S_AXI_ALEN_Q_reg[7] ,
    \downsized_len_q_reg[7] ,
    access_is_incr_q,
    \pushed_commands_reg[7] ,
    CO,
    si_full_size_q,
    size_mask_q,
    \S_AXI_AADDR_Q_reg[3] ,
    \split_addr_mask_q_reg[3] ,
    \fix_len_q_reg[4] ,
    \unalignment_addr_q_reg[4] ,
    \wrap_unaligned_len_q_reg[7] ,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    legal_wrap_len_q,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_wlast,
    first_mi_word,
    \length_counter_1_reg[7] ,
    \goreg_dm.dout_i_reg[8] ,
    access_is_fix_q,
    s_axi_wdata,
    s_axi_wstrb,
    \current_word_1_reg[3] ,
    first_word_reg);
  output [8:0]dout;
  output full;
  output [2:0]\m_axi_awsize[2] ;
  output m_axi_awvalid;
  output [3:0]DI;
  output [2:0]\gpr1.dout_i_reg[7] ;
  output \next_mi_addr_reg[8] ;
  output \next_mi_addr_reg[8]_0 ;
  output [0:0]E;
  output m_axi_wvalid;
  output s_axi_wready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [3:0]D;
  output [3:0]S;
  output [3:0]\gpr1.dout_i_reg[7]_0 ;
  input CLK;
  input [0:0]SR;
  input [16:0]din;
  input wr_en;
  input fix_need_to_split_q;
  input [7:0]Q;
  input split_ongoing;
  input access_is_wrap_q;
  input command_ongoing;
  input cmd_push_block;
  input ram_full_i_reg;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input access_is_incr_q;
  input \pushed_commands_reg[7] ;
  input [0:0]CO;
  input si_full_size_q;
  input [2:0]size_mask_q;
  input [3:0]\S_AXI_AADDR_Q_reg[3] ;
  input [0:0]\split_addr_mask_q_reg[3] ;
  input [4:0]\fix_len_q_reg[4] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input [7:0]\wrap_unaligned_len_q_reg[7] ;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input legal_wrap_len_q;
  input s_axi_wvalid;
  input m_axi_wready;
  input m_axi_wlast;
  input first_mi_word;
  input [0:0]\length_counter_1_reg[7] ;
  input \goreg_dm.dout_i_reg[8] ;
  input access_is_fix_q;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]\current_word_1_reg[3] ;
  input first_word_reg;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [3:0]\S_AXI_AADDR_Q_reg[3] ;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire cmd_length_i_carry__0_i_10_n_0;
  wire cmd_length_i_carry__0_i_11_n_0;
  wire cmd_length_i_carry__0_i_12_n_0;
  wire cmd_length_i_carry__0_i_13_n_0;
  wire cmd_length_i_carry__0_i_14_n_0;
  wire cmd_length_i_carry__0_i_15_n_0;
  wire cmd_length_i_carry__0_i_16_n_0;
  wire cmd_length_i_carry__0_i_17_n_0;
  wire cmd_length_i_carry__0_i_18_n_0;
  wire cmd_length_i_carry__0_i_19_n_0;
  wire cmd_length_i_carry__0_i_8_n_0;
  wire cmd_length_i_carry__0_i_9_n_0;
  wire cmd_length_i_carry_i_10_n_0;
  wire cmd_length_i_carry_i_11_n_0;
  wire cmd_length_i_carry_i_12_n_0;
  wire cmd_length_i_carry_i_13_n_0;
  wire cmd_length_i_carry_i_14_n_0;
  wire cmd_length_i_carry_i_15_n_0;
  wire cmd_length_i_carry_i_16_n_0;
  wire cmd_length_i_carry_i_9_n_0;
  wire cmd_push_block;
  wire [2:0]cmd_size_ii;
  wire command_ongoing;
  wire \current_word_1[1]_i_2_n_0 ;
  wire \current_word_1[1]_i_3_n_0 ;
  wire [3:0]\current_word_1_reg[3] ;
  wire [16:0]din;
  wire [8:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire empty;
  wire fifo_gen_inst_i_12_n_0;
  wire fifo_gen_inst_i_13_n_0;
  wire fifo_gen_inst_n_1;
  wire first_mi_word;
  wire first_word_reg;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire \goreg_dm.dout_i_reg[8] ;
  wire [2:0]\gpr1.dout_i_reg[7] ;
  wire [3:0]\gpr1.dout_i_reg[7]_0 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire [0:0]\length_counter_1_reg[7] ;
  wire [2:0]\m_axi_awsize[2] ;
  wire m_axi_awvalid;
  wire [31:0]m_axi_wdata;
  wire \m_axi_wdata[31]_INST_0_i_1_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_2_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_3_n_0 ;
  wire \m_axi_wdata[31]_INST_0_i_4_n_0 ;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire [28:18]p_0_out;
  wire \pushed_commands_reg[7] ;
  wire ram_full_i_reg;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire s_axi_wready_INST_0_i_2_n_0;
  wire s_axi_wready_INST_0_i_3_n_0;
  wire s_axi_wready_INST_0_i_4_n_0;
  wire s_axi_wready_INST_0_i_5_n_0;
  wire s_axi_wready_INST_0_i_8_n_0;
  wire s_axi_wready_INST_0_i_9_n_0;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size_q;
  wire [2:0]size_mask_q;
  wire [0:0]\split_addr_mask_q_reg[3] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire [3:0]wr_cmd_first_word;
  wire [3:0]wr_cmd_mask;
  wire wr_cmd_mirror;
  wire [3:0]wr_cmd_offset;
  wire wr_cmd_ready;
  wire [2:0]wr_cmd_size;
  wire wr_en;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_unaligned_len_q_reg[7] ;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry__0_i_1
       (.I0(\S_AXI_ALEN_Q_reg[7] [6]),
        .I1(din[15]),
        .I2(\downsized_len_q_reg[7] [6]),
        .I3(cmd_length_i_carry__0_i_8_n_0),
        .I4(cmd_length_i_carry__0_i_9_n_0),
        .O(\gpr1.dout_i_reg[7] [2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    cmd_length_i_carry__0_i_10
       (.I0(fix_need_to_split_q),
        .I1(Q[5]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_10_n_0));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry__0_i_11
       (.I0(\fix_len_q_reg[4] [4]),
        .I1(fix_need_to_split_q),
        .I2(Q[4]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    cmd_length_i_carry__0_i_12
       (.I0(\wrap_unaligned_len_q_reg[7] [7]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h4555)) 
    cmd_length_i_carry__0_i_13
       (.I0(fix_need_to_split_q),
        .I1(Q[7]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_13_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    cmd_length_i_carry__0_i_14
       (.I0(\wrap_unaligned_len_q_reg[7] [6]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    cmd_length_i_carry__0_i_15
       (.I0(\wrap_unaligned_len_q_reg[7] [5]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_15_n_0));
  LUT5 #(
    .INIT(32'hCF55CFCF)) 
    cmd_length_i_carry__0_i_16
       (.I0(\wrap_unaligned_len_q_reg[7] [4]),
        .I1(cmd_length_i_carry__0_i_19_n_0),
        .I2(\unalignment_addr_q_reg[4] [4]),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_16_n_0));
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    cmd_length_i_carry__0_i_17
       (.I0(incr_need_to_split_q),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cmd_length_i_carry__0_i_18
       (.I0(wrap_need_to_split_q),
        .I1(split_ongoing),
        .O(cmd_length_i_carry__0_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    cmd_length_i_carry__0_i_19
       (.I0(access_is_incr_q),
        .I1(din[15]),
        .I2(incr_need_to_split_q),
        .I3(split_ongoing),
        .I4(fix_need_to_split_q),
        .O(cmd_length_i_carry__0_i_19_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry__0_i_2
       (.I0(\S_AXI_ALEN_Q_reg[7] [5]),
        .I1(din[15]),
        .I2(\downsized_len_q_reg[7] [5]),
        .I3(cmd_length_i_carry__0_i_8_n_0),
        .I4(cmd_length_i_carry__0_i_10_n_0),
        .O(\gpr1.dout_i_reg[7] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry__0_i_3
       (.I0(\S_AXI_ALEN_Q_reg[7] [4]),
        .I1(din[15]),
        .I2(\downsized_len_q_reg[7] [4]),
        .I3(cmd_length_i_carry__0_i_8_n_0),
        .I4(cmd_length_i_carry__0_i_11_n_0),
        .O(\gpr1.dout_i_reg[7] [0]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    cmd_length_i_carry__0_i_4
       (.I0(cmd_length_i_carry__0_i_12_n_0),
        .I1(cmd_length_i_carry__0_i_13_n_0),
        .I2(cmd_length_i_carry__0_i_8_n_0),
        .I3(\downsized_len_q_reg[7] [7]),
        .I4(din[15]),
        .I5(\S_AXI_ALEN_Q_reg[7] [7]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry__0_i_5
       (.I0(cmd_length_i_carry__0_i_9_n_0),
        .I1(cmd_length_i_carry__0_i_8_n_0),
        .I2(\downsized_len_q_reg[7] [6]),
        .I3(din[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [6]),
        .I5(cmd_length_i_carry__0_i_14_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry__0_i_6
       (.I0(cmd_length_i_carry__0_i_10_n_0),
        .I1(cmd_length_i_carry__0_i_8_n_0),
        .I2(\downsized_len_q_reg[7] [5]),
        .I3(din[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [5]),
        .I5(cmd_length_i_carry__0_i_15_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry__0_i_7
       (.I0(cmd_length_i_carry__0_i_11_n_0),
        .I1(cmd_length_i_carry__0_i_8_n_0),
        .I2(\downsized_len_q_reg[7] [4]),
        .I3(din[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [4]),
        .I5(cmd_length_i_carry__0_i_16_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hEEEEEEEEAEAEEEAE)) 
    cmd_length_i_carry__0_i_8
       (.I0(cmd_length_i_carry__0_i_17_n_0),
        .I1(access_is_incr_q),
        .I2(\pushed_commands_reg[7] ),
        .I3(access_is_wrap_q),
        .I4(cmd_length_i_carry__0_i_18_n_0),
        .I5(CO),
        .O(cmd_length_i_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    cmd_length_i_carry__0_i_9
       (.I0(fix_need_to_split_q),
        .I1(Q[6]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_1
       (.I0(\S_AXI_ALEN_Q_reg[7] [3]),
        .I1(din[15]),
        .I2(\downsized_len_q_reg[7] [3]),
        .I3(cmd_length_i_carry__0_i_8_n_0),
        .I4(cmd_length_i_carry_i_9_n_0),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_10
       (.I0(\fix_len_q_reg[4] [2]),
        .I1(fix_need_to_split_q),
        .I2(Q[2]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_11
       (.I0(\fix_len_q_reg[4] [1]),
        .I1(fix_need_to_split_q),
        .I2(Q[1]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_12
       (.I0(\fix_len_q_reg[4] [0]),
        .I1(fix_need_to_split_q),
        .I2(Q[0]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'hCF55CFCF)) 
    cmd_length_i_carry_i_13
       (.I0(\wrap_unaligned_len_q_reg[7] [3]),
        .I1(cmd_length_i_carry__0_i_19_n_0),
        .I2(\unalignment_addr_q_reg[4] [3]),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(cmd_length_i_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'hCF55CFCF)) 
    cmd_length_i_carry_i_14
       (.I0(\wrap_unaligned_len_q_reg[7] [2]),
        .I1(cmd_length_i_carry__0_i_19_n_0),
        .I2(\unalignment_addr_q_reg[4] [2]),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(cmd_length_i_carry_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hDDDD0FDD)) 
    cmd_length_i_carry_i_15
       (.I0(\unalignment_addr_q_reg[4] [1]),
        .I1(cmd_length_i_carry__0_i_19_n_0),
        .I2(\wrap_unaligned_len_q_reg[7] [1]),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .O(cmd_length_i_carry_i_15_n_0));
  LUT5 #(
    .INIT(32'hF704F7F7)) 
    cmd_length_i_carry_i_16
       (.I0(\wrap_unaligned_len_q_reg[7] [0]),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(cmd_length_i_carry__0_i_19_n_0),
        .I4(\unalignment_addr_q_reg[4] [0]),
        .O(cmd_length_i_carry_i_16_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_2
       (.I0(\S_AXI_ALEN_Q_reg[7] [2]),
        .I1(din[15]),
        .I2(\downsized_len_q_reg[7] [2]),
        .I3(cmd_length_i_carry__0_i_8_n_0),
        .I4(cmd_length_i_carry_i_10_n_0),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_3
       (.I0(\S_AXI_ALEN_Q_reg[7] [1]),
        .I1(din[15]),
        .I2(\downsized_len_q_reg[7] [1]),
        .I3(cmd_length_i_carry__0_i_8_n_0),
        .I4(cmd_length_i_carry_i_11_n_0),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_4
       (.I0(\S_AXI_ALEN_Q_reg[7] [0]),
        .I1(din[15]),
        .I2(\downsized_len_q_reg[7] [0]),
        .I3(cmd_length_i_carry__0_i_8_n_0),
        .I4(cmd_length_i_carry_i_12_n_0),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_5
       (.I0(cmd_length_i_carry_i_9_n_0),
        .I1(cmd_length_i_carry__0_i_8_n_0),
        .I2(\downsized_len_q_reg[7] [3]),
        .I3(din[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [3]),
        .I5(cmd_length_i_carry_i_13_n_0),
        .O(\gpr1.dout_i_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_6
       (.I0(cmd_length_i_carry_i_10_n_0),
        .I1(cmd_length_i_carry__0_i_8_n_0),
        .I2(\downsized_len_q_reg[7] [2]),
        .I3(din[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [2]),
        .I5(cmd_length_i_carry_i_14_n_0),
        .O(\gpr1.dout_i_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_7
       (.I0(cmd_length_i_carry_i_11_n_0),
        .I1(cmd_length_i_carry__0_i_8_n_0),
        .I2(\downsized_len_q_reg[7] [1]),
        .I3(din[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [1]),
        .I5(cmd_length_i_carry_i_15_n_0),
        .O(\gpr1.dout_i_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_8
       (.I0(cmd_length_i_carry_i_12_n_0),
        .I1(cmd_length_i_carry__0_i_8_n_0),
        .I2(\downsized_len_q_reg[7] [0]),
        .I3(din[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [0]),
        .I5(cmd_length_i_carry_i_16_n_0),
        .O(\gpr1.dout_i_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_9
       (.I0(\fix_len_q_reg[4] [3]),
        .I1(fix_need_to_split_q),
        .I2(Q[3]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h22222228)) 
    \current_word_1[0]_i_1__0 
       (.I0(wr_cmd_mask[0]),
        .I1(\current_word_1[1]_i_3_n_0 ),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[0]),
        .I4(cmd_size_ii[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8888828888888282)) 
    \current_word_1[1]_i_1__0 
       (.I0(wr_cmd_mask[1]),
        .I1(\current_word_1[1]_i_2_n_0 ),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[0]),
        .I4(cmd_size_ii[2]),
        .I5(\current_word_1[1]_i_3_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \current_word_1[1]_i_2 
       (.I0(wr_cmd_first_word[1]),
        .I1(first_mi_word),
        .I2(dout[8]),
        .I3(\current_word_1_reg[3] [1]),
        .O(\current_word_1[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h5457)) 
    \current_word_1[1]_i_3 
       (.I0(wr_cmd_first_word[0]),
        .I1(first_mi_word),
        .I2(dout[8]),
        .I3(\current_word_1_reg[3] [0]),
        .O(\current_word_1[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8282828882828222)) 
    \current_word_1[2]_i_1__0 
       (.I0(wr_cmd_mask[2]),
        .I1(s_axi_wready_INST_0_i_9_n_0),
        .I2(wr_cmd_first_word[2]),
        .I3(first_mi_word),
        .I4(dout[8]),
        .I5(\current_word_1_reg[3] [2]),
        .O(D[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \current_word_1[3]_i_1__0 
       (.I0(s_axi_wready_INST_0_i_3_n_0),
        .O(D[3]));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "29" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "29" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  top_auto_ds_0_fifo_generator_v13_1_0__parameterized0 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({p_0_out[28],din[16:15],p_0_out[25:18],din[14:11],\m_axi_awsize[2] ,din[10:0]}),
        .dout({dout[8],fifo_gen_inst_n_1,wr_cmd_mirror,wr_cmd_first_word,wr_cmd_offset,wr_cmd_mask,cmd_size_ii,dout[7:0],wr_cmd_size}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(wr_cmd_ready),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    fifo_gen_inst_i_11
       (.I0(s_axi_wvalid),
        .I1(empty),
        .I2(m_axi_wready),
        .I3(m_axi_wlast),
        .O(wr_cmd_ready));
  LUT6 #(
    .INIT(64'h00404444CCCCCCCC)) 
    fifo_gen_inst_i_12
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg[3] [3]),
        .I2(\split_addr_mask_q_reg[3] ),
        .I3(si_full_size_q),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(fifo_gen_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'h00404444CCCCCCCC)) 
    fifo_gen_inst_i_13
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg[3] [2]),
        .I2(din[15]),
        .I3(si_full_size_q),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(fifo_gen_inst_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_14
       (.I0(access_is_incr_q),
        .I1(split_ongoing),
        .O(\next_mi_addr_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_15
       (.I0(split_ongoing),
        .I1(access_is_wrap_q),
        .O(\next_mi_addr_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_1__0
       (.I0(din[15]),
        .I1(access_is_fix_q),
        .O(p_0_out[28]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_2
       (.I0(fifo_gen_inst_i_12_n_0),
        .I1(din[14]),
        .I2(size_mask_q[2]),
        .O(p_0_out[25]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_3
       (.I0(fifo_gen_inst_i_13_n_0),
        .I1(din[13]),
        .I2(size_mask_q[2]),
        .O(p_0_out[24]));
  LUT6 #(
    .INIT(64'h0070000000000000)) 
    fifo_gen_inst_i_4
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(\S_AXI_AADDR_Q_reg[3] [1]),
        .I3(\next_mi_addr_reg[8]_0 ),
        .I4(din[12]),
        .I5(size_mask_q[1]),
        .O(p_0_out[23]));
  LUT6 #(
    .INIT(64'h0070000000000000)) 
    fifo_gen_inst_i_5
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(\S_AXI_AADDR_Q_reg[3] [0]),
        .I3(\next_mi_addr_reg[8]_0 ),
        .I4(din[11]),
        .I5(size_mask_q[0]),
        .O(p_0_out[22]));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_6__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(\split_addr_mask_q_reg[3] ),
        .I3(\S_AXI_AADDR_Q_reg[3] [3]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(din[14]),
        .O(p_0_out[21]));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_7__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(din[15]),
        .I3(\S_AXI_AADDR_Q_reg[3] [2]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(din[13]),
        .O(p_0_out[20]));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_8
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(size_mask_q[1]),
        .I3(\S_AXI_AADDR_Q_reg[3] [1]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(din[12]),
        .O(p_0_out[19]));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_9
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(size_mask_q[0]),
        .I3(\S_AXI_AADDR_Q_reg[3] [0]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(din[11]),
        .O(p_0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h20)) 
    first_word_i_1
       (.I0(m_axi_wready),
        .I1(empty),
        .I2(s_axi_wvalid),
        .O(E));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awsize[0]_INST_0 
       (.I0(din[15]),
        .I1(din[0]),
        .O(\m_axi_awsize[2] [0]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_awsize[1]_INST_0 
       (.I0(din[1]),
        .I1(din[15]),
        .O(\m_axi_awsize[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_awsize[2]_INST_0 
       (.I0(din[15]),
        .I1(din[2]),
        .O(\m_axi_awsize[2] [2]));
  LUT4 #(
    .INIT(16'h888A)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(cmd_push_block),
        .I2(full),
        .I3(ram_full_i_reg),
        .O(m_axi_awvalid));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_wdata[96]),
        .I1(s_axi_wdata[32]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[64]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[0]),
        .O(m_axi_wdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_wdata[106]),
        .I1(s_axi_wdata[42]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[74]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[10]),
        .O(m_axi_wdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_wdata[107]),
        .I1(s_axi_wdata[43]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[75]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[11]),
        .O(m_axi_wdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_wdata[108]),
        .I1(s_axi_wdata[44]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[76]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[12]),
        .O(m_axi_wdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_wdata[109]),
        .I1(s_axi_wdata[45]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[77]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[13]),
        .O(m_axi_wdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_wdata[110]),
        .I1(s_axi_wdata[46]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[78]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[14]),
        .O(m_axi_wdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_wdata[111]),
        .I1(s_axi_wdata[47]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[79]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[15]),
        .O(m_axi_wdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_wdata[112]),
        .I1(s_axi_wdata[48]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[80]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[16]),
        .O(m_axi_wdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_wdata[113]),
        .I1(s_axi_wdata[49]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[81]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[17]),
        .O(m_axi_wdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_wdata[114]),
        .I1(s_axi_wdata[50]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[82]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[18]),
        .O(m_axi_wdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_wdata[115]),
        .I1(s_axi_wdata[51]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[83]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[19]),
        .O(m_axi_wdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_wdata[97]),
        .I1(s_axi_wdata[33]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[65]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[1]),
        .O(m_axi_wdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_wdata[116]),
        .I1(s_axi_wdata[52]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[84]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[20]),
        .O(m_axi_wdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_wdata[117]),
        .I1(s_axi_wdata[53]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[85]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[21]),
        .O(m_axi_wdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_wdata[118]),
        .I1(s_axi_wdata[54]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[86]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[22]),
        .O(m_axi_wdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_wdata[119]),
        .I1(s_axi_wdata[55]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[87]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[23]),
        .O(m_axi_wdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_wdata[120]),
        .I1(s_axi_wdata[56]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[88]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[24]),
        .O(m_axi_wdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_wdata[121]),
        .I1(s_axi_wdata[57]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[89]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[25]),
        .O(m_axi_wdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_wdata[122]),
        .I1(s_axi_wdata[58]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[90]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[26]),
        .O(m_axi_wdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_wdata[123]),
        .I1(s_axi_wdata[59]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[91]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[27]),
        .O(m_axi_wdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_wdata[124]),
        .I1(s_axi_wdata[60]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[92]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[28]),
        .O(m_axi_wdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_wdata[125]),
        .I1(s_axi_wdata[61]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[93]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[29]),
        .O(m_axi_wdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_wdata[98]),
        .I1(s_axi_wdata[34]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[66]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[2]),
        .O(m_axi_wdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_wdata[126]),
        .I1(s_axi_wdata[62]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[94]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[30]),
        .O(m_axi_wdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_wdata[127]),
        .I1(s_axi_wdata[63]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[95]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[31]),
        .O(m_axi_wdata[31]));
  LUT6 #(
    .INIT(64'h999A99956665666A)) 
    \m_axi_wdata[31]_INST_0_i_1 
       (.I0(\m_axi_wdata[31]_INST_0_i_3_n_0 ),
        .I1(wr_cmd_first_word[2]),
        .I2(first_mi_word),
        .I3(dout[8]),
        .I4(\current_word_1_reg[3] [2]),
        .I5(wr_cmd_offset[2]),
        .O(\m_axi_wdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h17E8E817)) 
    \m_axi_wdata[31]_INST_0_i_2 
       (.I0(\m_axi_wdata[31]_INST_0_i_3_n_0 ),
        .I1(s_axi_wready_INST_0_i_8_n_0),
        .I2(wr_cmd_offset[2]),
        .I3(\m_axi_wdata[31]_INST_0_i_4_n_0 ),
        .I4(wr_cmd_offset[3]),
        .O(\m_axi_wdata[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE200E2000000)) 
    \m_axi_wdata[31]_INST_0_i_3 
       (.I0(\current_word_1_reg[3] [0]),
        .I1(first_word_reg),
        .I2(wr_cmd_first_word[0]),
        .I3(wr_cmd_offset[0]),
        .I4(wr_cmd_offset[1]),
        .I5(\current_word_1[1]_i_2_n_0 ),
        .O(\m_axi_wdata[31]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5457)) 
    \m_axi_wdata[31]_INST_0_i_4 
       (.I0(wr_cmd_first_word[3]),
        .I1(first_mi_word),
        .I2(dout[8]),
        .I3(\current_word_1_reg[3] [3]),
        .O(\m_axi_wdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_wdata[99]),
        .I1(s_axi_wdata[35]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[67]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[3]),
        .O(m_axi_wdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_wdata[100]),
        .I1(s_axi_wdata[36]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[68]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[4]),
        .O(m_axi_wdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_wdata[101]),
        .I1(s_axi_wdata[37]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[69]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[5]),
        .O(m_axi_wdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_wdata[102]),
        .I1(s_axi_wdata[38]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[70]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[6]),
        .O(m_axi_wdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_wdata[103]),
        .I1(s_axi_wdata[39]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[71]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[7]),
        .O(m_axi_wdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_wdata[104]),
        .I1(s_axi_wdata[40]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[72]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[8]),
        .O(m_axi_wdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_wdata[105]),
        .I1(s_axi_wdata[41]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wdata[73]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wdata[9]),
        .O(m_axi_wdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_wstrb[12]),
        .I1(s_axi_wstrb[4]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wstrb[8]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wstrb[0]),
        .O(m_axi_wstrb[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_wstrb[13]),
        .I1(s_axi_wstrb[5]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wstrb[9]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wstrb[1]),
        .O(m_axi_wstrb[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_wstrb[14]),
        .I1(s_axi_wstrb[6]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wstrb[10]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wstrb[2]),
        .O(m_axi_wstrb[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_wstrb[15]),
        .I1(s_axi_wstrb[7]),
        .I2(\m_axi_wdata[31]_INST_0_i_1_n_0 ),
        .I3(s_axi_wstrb[11]),
        .I4(\m_axi_wdata[31]_INST_0_i_2_n_0 ),
        .I5(s_axi_wstrb[3]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  LUT6 #(
    .INIT(64'h888888888888A8AA)) 
    s_axi_wready_INST_0
       (.I0(s_axi_wready_INST_0_i_1_n_0),
        .I1(s_axi_wready_INST_0_i_2_n_0),
        .I2(s_axi_wready_INST_0_i_3_n_0),
        .I3(wr_cmd_size[2]),
        .I4(s_axi_wready_INST_0_i_4_n_0),
        .I5(s_axi_wready_INST_0_i_5_n_0),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0_i_1
       (.I0(m_axi_wready),
        .I1(empty),
        .O(s_axi_wready_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4700)) 
    s_axi_wready_INST_0_i_2
       (.I0(dout[7]),
        .I1(first_mi_word),
        .I2(\length_counter_1_reg[7] ),
        .I3(\goreg_dm.dout_i_reg[8] ),
        .I4(wr_cmd_mirror),
        .I5(dout[8]),
        .O(s_axi_wready_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h4747B847FFFFFFFF)) 
    s_axi_wready_INST_0_i_3
       (.I0(wr_cmd_first_word[3]),
        .I1(first_word_reg),
        .I2(\current_word_1_reg[3] [3]),
        .I3(s_axi_wready_INST_0_i_8_n_0),
        .I4(s_axi_wready_INST_0_i_9_n_0),
        .I5(wr_cmd_mask[3]),
        .O(s_axi_wready_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9090900090009000)) 
    s_axi_wready_INST_0_i_4
       (.I0(s_axi_wready_INST_0_i_8_n_0),
        .I1(s_axi_wready_INST_0_i_9_n_0),
        .I2(wr_cmd_mask[2]),
        .I3(wr_cmd_size[2]),
        .I4(wr_cmd_size[1]),
        .I5(wr_cmd_size[0]),
        .O(s_axi_wready_INST_0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFCA8A8)) 
    s_axi_wready_INST_0_i_5
       (.I0(D[1]),
        .I1(wr_cmd_size[2]),
        .I2(wr_cmd_size[1]),
        .I3(wr_cmd_size[0]),
        .I4(D[0]),
        .O(s_axi_wready_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    s_axi_wready_INST_0_i_8
       (.I0(wr_cmd_first_word[2]),
        .I1(first_mi_word),
        .I2(dout[8]),
        .I3(\current_word_1_reg[3] [2]),
        .O(s_axi_wready_INST_0_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFC2FFF3)) 
    s_axi_wready_INST_0_i_9
       (.I0(\current_word_1[1]_i_3_n_0 ),
        .I1(cmd_size_ii[1]),
        .I2(cmd_size_ii[0]),
        .I3(cmd_size_ii[2]),
        .I4(\current_word_1[1]_i_2_n_0 ),
        .O(s_axi_wready_INST_0_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_7_fifo_gen" *) 
module top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized1
   (dout,
    din,
    s_axi_rlast,
    E,
    m_axi_arvalid,
    DI,
    \gpr1.dout_i_reg[7] ,
    S,
    \next_mi_addr_reg[8] ,
    \next_mi_addr_reg[8]_0 ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63] ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95] ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127] ,
    first_mi_word_reg,
    m_axi_rready,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ,
    s_axi_rvalid,
    D,
    s_axi_rdata,
    \S_AXI_RRESP_ACC_reg[0] ,
    \gpr1.dout_i_reg[7]_0 ,
    \gpr1.dout_i_reg[7]_1 ,
    S_AXI_AREADY_I_reg,
    command_ongoing_reg,
    cmd_push_block_reg,
    \queue_id_reg[0] ,
    CLK,
    SR,
    access_fit_mi_side_q_reg,
    rd_en,
    Q,
    fix_need_to_split_q,
    access_is_fix_q,
    \wrap_rest_len_reg[7] ,
    split_ongoing,
    access_is_wrap_q,
    m_axi_rlast,
    m_axi_arready,
    cmd_push_block,
    command_ongoing,
    wrap_need_to_split_q,
    incr_need_to_split_q,
    \S_AXI_ALEN_Q_reg[7] ,
    \downsized_len_q_reg[7] ,
    access_is_incr_q,
    CO,
    \num_transactions_q_reg[3] ,
    si_full_size_q,
    size_mask_q,
    \S_AXI_AADDR_Q_reg[3] ,
    \split_addr_mask_q_reg[3] ,
    \fix_len_q_reg[4] ,
    \unalignment_addr_q_reg[4] ,
    \wrap_unaligned_len_q_reg[7] ,
    legal_wrap_len_q,
    s_axi_rready,
    out,
    \goreg_dm.dout_i_reg[9] ,
    first_word,
    \length_counter_1_reg[7] ,
    \goreg_dm.dout_i_reg[8] ,
    \current_word_1_reg[3] ,
    m_axi_rdata,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ,
    \S_AXI_RRESP_ACC_reg[0]_0 ,
    m_axi_rvalid,
    areset_d,
    S_AXI_AREADY_I_reg_0,
    s_axi_arvalid,
    \areset_d_reg[1] ,
    S_AXI_AID_Q,
    s_axi_rid);
  output [8:0]dout;
  output [3:0]din;
  output s_axi_rlast;
  output [0:0]E;
  output m_axi_arvalid;
  output [3:0]DI;
  output [2:0]\gpr1.dout_i_reg[7] ;
  output [2:0]S;
  output \next_mi_addr_reg[8] ;
  output \next_mi_addr_reg[8]_0 ;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  output \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  output [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  output [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  output [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  output [0:0]first_mi_word_reg;
  output m_axi_rready;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ;
  output s_axi_rvalid;
  output [3:0]D;
  output [127:0]s_axi_rdata;
  output \S_AXI_RRESP_ACC_reg[0] ;
  output [3:0]\gpr1.dout_i_reg[7]_0 ;
  output [3:0]\gpr1.dout_i_reg[7]_1 ;
  output S_AXI_AREADY_I_reg;
  output command_ongoing_reg;
  output cmd_push_block_reg;
  output \queue_id_reg[0] ;
  input CLK;
  input [0:0]SR;
  input [15:0]access_fit_mi_side_q_reg;
  input rd_en;
  input [7:0]Q;
  input fix_need_to_split_q;
  input access_is_fix_q;
  input [7:0]\wrap_rest_len_reg[7] ;
  input split_ongoing;
  input access_is_wrap_q;
  input m_axi_rlast;
  input m_axi_arready;
  input cmd_push_block;
  input command_ongoing;
  input wrap_need_to_split_q;
  input incr_need_to_split_q;
  input [7:0]\S_AXI_ALEN_Q_reg[7] ;
  input [7:0]\downsized_len_q_reg[7] ;
  input access_is_incr_q;
  input [0:0]CO;
  input [3:0]\num_transactions_q_reg[3] ;
  input si_full_size_q;
  input [2:0]size_mask_q;
  input [3:0]\S_AXI_AADDR_Q_reg[3] ;
  input [0:0]\split_addr_mask_q_reg[3] ;
  input [4:0]\fix_len_q_reg[4] ;
  input [4:0]\unalignment_addr_q_reg[4] ;
  input [7:0]\wrap_unaligned_len_q_reg[7] ;
  input legal_wrap_len_q;
  input s_axi_rready;
  input out;
  input \goreg_dm.dout_i_reg[9] ;
  input first_word;
  input [0:0]\length_counter_1_reg[7] ;
  input \goreg_dm.dout_i_reg[8] ;
  input [3:0]\current_word_1_reg[3] ;
  input [31:0]m_axi_rdata;
  input [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 ;
  input [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  input [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  input [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  input \S_AXI_RRESP_ACC_reg[0]_0 ;
  input m_axi_rvalid;
  input [1:0]areset_d;
  input [0:0]S_AXI_AREADY_I_reg_0;
  input s_axi_arvalid;
  input \areset_d_reg[1] ;
  input S_AXI_AID_Q;
  input [0:0]s_axi_rid;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [2:0]S;
  wire [0:0]SR;
  wire [3:0]\S_AXI_AADDR_Q_reg[3] ;
  wire S_AXI_AID_Q;
  wire [7:0]\S_AXI_ALEN_Q_reg[7] ;
  wire S_AXI_AREADY_I_i_2_n_0;
  wire S_AXI_AREADY_I_i_3__0_n_0;
  wire S_AXI_AREADY_I_i_4_n_0;
  wire S_AXI_AREADY_I_i_5__0_n_0;
  wire S_AXI_AREADY_I_reg;
  wire [0:0]S_AXI_AREADY_I_reg_0;
  wire \S_AXI_RRESP_ACC_reg[0] ;
  wire \S_AXI_RRESP_ACC_reg[0]_0 ;
  wire \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ;
  wire \WORD_LANE[0].S_AXI_RDATA_II[31]_i_4_n_0 ;
  wire \WORD_LANE[0].S_AXI_RDATA_II[31]_i_5_n_0 ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  wire \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 ;
  wire \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  wire \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  wire \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0 ;
  wire [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  wire [15:0]access_fit_mi_side_q_reg;
  wire access_is_fix_q;
  wire access_is_incr_q;
  wire access_is_wrap_q;
  wire [1:0]areset_d;
  wire \areset_d_reg[1] ;
  wire cmd_length_i_carry__0_i_10__0_n_0;
  wire cmd_length_i_carry__0_i_11__0_n_0;
  wire cmd_length_i_carry__0_i_12__0_n_0;
  wire cmd_length_i_carry__0_i_13__0_n_0;
  wire cmd_length_i_carry__0_i_14__0_n_0;
  wire cmd_length_i_carry__0_i_15__0_n_0;
  wire cmd_length_i_carry__0_i_16__0_n_0;
  wire cmd_length_i_carry__0_i_17__0_n_0;
  wire cmd_length_i_carry__0_i_18__0_n_0;
  wire cmd_length_i_carry__0_i_19__0_n_0;
  wire cmd_length_i_carry__0_i_8__0_n_0;
  wire cmd_length_i_carry__0_i_9__0_n_0;
  wire cmd_length_i_carry_i_10__0_n_0;
  wire cmd_length_i_carry_i_11__0_n_0;
  wire cmd_length_i_carry_i_12__0_n_0;
  wire cmd_length_i_carry_i_13__0_n_0;
  wire cmd_length_i_carry_i_14__0_n_0;
  wire cmd_length_i_carry_i_15__0_n_0;
  wire cmd_length_i_carry_i_16__0_n_0;
  wire cmd_length_i_carry_i_9__0_n_0;
  wire cmd_push;
  wire cmd_push_block;
  wire cmd_push_block_reg;
  wire [2:0]cmd_size_ii;
  wire command_ongoing;
  wire command_ongoing_reg;
  wire \current_word_1[2]_i_2_n_0 ;
  wire \current_word_1[2]_i_3_n_0 ;
  wire \current_word_1[2]_i_4_n_0 ;
  wire [3:0]\current_word_1_reg[3] ;
  wire [3:0]din;
  wire [8:0]dout;
  wire [7:0]\downsized_len_q_reg[7] ;
  wire empty;
  wire fifo_gen_inst_i_13__0_n_0;
  wire fifo_gen_inst_i_14__0_n_0;
  wire [0:0]first_mi_word_reg;
  wire first_word;
  wire [4:0]\fix_len_q_reg[4] ;
  wire fix_need_to_split_q;
  wire full;
  wire \goreg_dm.dout_i_reg[8] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire [2:0]\gpr1.dout_i_reg[7] ;
  wire [3:0]\gpr1.dout_i_reg[7]_0 ;
  wire [3:0]\gpr1.dout_i_reg[7]_1 ;
  wire incr_need_to_split_q;
  wire legal_wrap_len_q;
  wire [0:0]\length_counter_1_reg[7] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rready_INST_0_i_1_n_0;
  wire m_axi_rvalid;
  wire \next_mi_addr_reg[8] ;
  wire \next_mi_addr_reg[8]_0 ;
  wire [3:0]\num_transactions_q_reg[3] ;
  wire out;
  wire [28:18]p_0_out;
  wire \queue_id_reg[0] ;
  wire [3:0]rd_cmd_first_word;
  wire rd_cmd_fix;
  wire [3:0]rd_cmd_mask;
  wire [3:0]rd_cmd_offset;
  wire [2:0]rd_cmd_size;
  wire rd_cmd_split;
  wire rd_en;
  wire s_axi_arvalid;
  wire [127:0]s_axi_rdata;
  wire \s_axi_rdata[127]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_2_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_3_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_4_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_5_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_6_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_7_n_0 ;
  wire \s_axi_rdata[127]_INST_0_i_8_n_0 ;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire \s_axi_rresp[1]_INST_0_i_2_n_0 ;
  wire \s_axi_rresp[1]_INST_0_i_3_n_0 ;
  wire s_axi_rvalid;
  wire s_axi_rvalid_INST_0_i_2_n_0;
  wire s_axi_rvalid_INST_0_i_3_n_0;
  wire s_axi_rvalid_INST_0_i_4_n_0;
  wire s_axi_rvalid_INST_0_i_6_n_0;
  wire s_axi_rvalid_INST_0_i_7_n_0;
  wire s_axi_rvalid_INST_0_i_8_n_0;
  wire si_full_size_q;
  wire [2:0]size_mask_q;
  wire [0:0]\split_addr_mask_q_reg[3] ;
  wire split_ongoing;
  wire [4:0]\unalignment_addr_q_reg[4] ;
  wire wrap_need_to_split_q;
  wire [7:0]\wrap_rest_len_reg[7] ;
  wire [7:0]\wrap_unaligned_len_q_reg[7] ;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  LUT6 #(
    .INIT(64'h444444F4FFFF44F4)) 
    S_AXI_AREADY_I_i_1__0
       (.I0(areset_d[0]),
        .I1(areset_d[1]),
        .I2(E),
        .I3(S_AXI_AREADY_I_i_2_n_0),
        .I4(S_AXI_AREADY_I_reg_0),
        .I5(s_axi_arvalid),
        .O(S_AXI_AREADY_I_reg));
  LUT6 #(
    .INIT(64'h002A2A2A002A002A)) 
    S_AXI_AREADY_I_i_2
       (.I0(S_AXI_AREADY_I_i_3__0_n_0),
        .I1(access_is_incr_q),
        .I2(CO),
        .I3(access_is_wrap_q),
        .I4(split_ongoing),
        .I5(wrap_need_to_split_q),
        .O(S_AXI_AREADY_I_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFE0000FFFFFFFF)) 
    S_AXI_AREADY_I_i_3__0
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(S_AXI_AREADY_I_i_4_n_0),
        .I3(S_AXI_AREADY_I_i_5__0_n_0),
        .I4(fix_need_to_split_q),
        .I5(access_is_fix_q),
        .O(S_AXI_AREADY_I_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hEFFE)) 
    S_AXI_AREADY_I_i_4
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\S_AXI_ALEN_Q_reg[7] [3]),
        .I3(Q[3]),
        .O(S_AXI_AREADY_I_i_4_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    S_AXI_AREADY_I_i_5__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\S_AXI_ALEN_Q_reg[7] [1]),
        .I4(Q[2]),
        .I5(\S_AXI_ALEN_Q_reg[7] [2]),
        .O(S_AXI_AREADY_I_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hD5D5D5DD55555555)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_1 
       (.I0(out),
        .I1(s_axi_rready),
        .I2(m_axi_rready_INST_0_i_1_n_0),
        .I3(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ),
        .I4(s_axi_rvalid_INST_0_i_2_n_0),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .O(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ));
  LUT6 #(
    .INIT(64'hBBBA000000000000)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_2 
       (.I0(s_axi_rready),
        .I1(m_axi_rready_INST_0_i_1_n_0),
        .I2(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ),
        .I3(s_axi_rvalid_INST_0_i_2_n_0),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .I5(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_4_n_0 ),
        .O(\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ));
  LUT6 #(
    .INIT(64'h8808000000808888)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3 
       (.I0(rd_cmd_size[2]),
        .I1(rd_cmd_mask[3]),
        .I2(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_5_n_0 ),
        .I3(\current_word_1[2]_i_2_n_0 ),
        .I4(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I5(\s_axi_rdata[127]_INST_0_i_5_n_0 ),
        .O(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h90060990)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_4 
       (.I0(rd_cmd_offset[3]),
        .I1(\s_axi_rdata[127]_INST_0_i_5_n_0 ),
        .I2(rd_cmd_offset[2]),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(\s_axi_rdata[127]_INST_0_i_4_n_0 ),
        .O(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFEFEFEFF)) 
    \WORD_LANE[0].S_AXI_RDATA_II[31]_i_5 
       (.I0(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .I1(cmd_size_ii[2]),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[0]),
        .I4(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .O(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBA000000000000)) 
    \WORD_LANE[1].S_AXI_RDATA_II[63]_i_1 
       (.I0(s_axi_rready),
        .I1(m_axi_rready_INST_0_i_1_n_0),
        .I2(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ),
        .I3(s_axi_rvalid_INST_0_i_2_n_0),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .I5(\WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0 ),
        .O(\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h06609006)) 
    \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2 
       (.I0(rd_cmd_offset[3]),
        .I1(\s_axi_rdata[127]_INST_0_i_5_n_0 ),
        .I2(rd_cmd_offset[2]),
        .I3(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I4(\s_axi_rdata[127]_INST_0_i_4_n_0 ),
        .O(\WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBA000000000000)) 
    \WORD_LANE[2].S_AXI_RDATA_II[95]_i_1 
       (.I0(s_axi_rready),
        .I1(m_axi_rready_INST_0_i_1_n_0),
        .I2(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ),
        .I3(s_axi_rvalid_INST_0_i_2_n_0),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .I5(\WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0 ),
        .O(\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h60060690)) 
    \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2 
       (.I0(rd_cmd_offset[3]),
        .I1(\s_axi_rdata[127]_INST_0_i_5_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_4_n_0 ),
        .I3(rd_cmd_offset[2]),
        .I4(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .O(\WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBA000000000000)) 
    \WORD_LANE[3].S_AXI_RDATA_II[127]_i_1 
       (.I0(s_axi_rready),
        .I1(m_axi_rready_INST_0_i_1_n_0),
        .I2(\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0 ),
        .I3(s_axi_rvalid_INST_0_i_2_n_0),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .I5(\WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0 ),
        .O(\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h06909009)) 
    \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2 
       (.I0(rd_cmd_offset[3]),
        .I1(\s_axi_rdata[127]_INST_0_i_5_n_0 ),
        .I2(\s_axi_rdata[127]_INST_0_i_4_n_0 ),
        .I3(rd_cmd_offset[2]),
        .I4(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .O(\WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    cmd_length_i_carry__0_i_10__0
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [5]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_10__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry__0_i_11__0
       (.I0(\fix_len_q_reg[4] [4]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [4]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_11__0_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    cmd_length_i_carry__0_i_12__0
       (.I0(\wrap_unaligned_len_q_reg[7] [7]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    cmd_length_i_carry__0_i_13__0
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [7]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    cmd_length_i_carry__0_i_14__0
       (.I0(\wrap_unaligned_len_q_reg[7] [6]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    cmd_length_i_carry__0_i_15__0
       (.I0(\wrap_unaligned_len_q_reg[7] [5]),
        .I1(split_ongoing),
        .I2(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_15__0_n_0));
  LUT5 #(
    .INIT(32'hCF55CFCF)) 
    cmd_length_i_carry__0_i_16__0
       (.I0(\wrap_unaligned_len_q_reg[7] [4]),
        .I1(cmd_length_i_carry__0_i_19__0_n_0),
        .I2(\unalignment_addr_q_reg[4] [4]),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(cmd_length_i_carry__0_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFF4F4444)) 
    cmd_length_i_carry__0_i_17__0
       (.I0(incr_need_to_split_q),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(legal_wrap_len_q),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_17__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cmd_length_i_carry__0_i_18__0
       (.I0(wrap_need_to_split_q),
        .I1(split_ongoing),
        .O(cmd_length_i_carry__0_i_18__0_n_0));
  LUT5 #(
    .INIT(32'h0000FD0D)) 
    cmd_length_i_carry__0_i_19__0
       (.I0(access_is_incr_q),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(incr_need_to_split_q),
        .I3(split_ongoing),
        .I4(fix_need_to_split_q),
        .O(cmd_length_i_carry__0_i_19__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry__0_i_1__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [6]),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(\downsized_len_q_reg[7] [6]),
        .I3(cmd_length_i_carry__0_i_8__0_n_0),
        .I4(cmd_length_i_carry__0_i_9__0_n_0),
        .O(\gpr1.dout_i_reg[7] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry__0_i_2__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [5]),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(\downsized_len_q_reg[7] [5]),
        .I3(cmd_length_i_carry__0_i_8__0_n_0),
        .I4(cmd_length_i_carry__0_i_10__0_n_0),
        .O(\gpr1.dout_i_reg[7] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry__0_i_3__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [4]),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(\downsized_len_q_reg[7] [4]),
        .I3(cmd_length_i_carry__0_i_8__0_n_0),
        .I4(cmd_length_i_carry__0_i_11__0_n_0),
        .O(\gpr1.dout_i_reg[7] [0]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    cmd_length_i_carry__0_i_4__0
       (.I0(cmd_length_i_carry__0_i_12__0_n_0),
        .I1(cmd_length_i_carry__0_i_13__0_n_0),
        .I2(cmd_length_i_carry__0_i_8__0_n_0),
        .I3(\downsized_len_q_reg[7] [7]),
        .I4(access_fit_mi_side_q_reg[15]),
        .I5(\S_AXI_ALEN_Q_reg[7] [7]),
        .O(\gpr1.dout_i_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry__0_i_5__0
       (.I0(cmd_length_i_carry__0_i_9__0_n_0),
        .I1(cmd_length_i_carry__0_i_8__0_n_0),
        .I2(\downsized_len_q_reg[7] [6]),
        .I3(access_fit_mi_side_q_reg[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [6]),
        .I5(cmd_length_i_carry__0_i_14__0_n_0),
        .O(\gpr1.dout_i_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry__0_i_6__0
       (.I0(cmd_length_i_carry__0_i_10__0_n_0),
        .I1(cmd_length_i_carry__0_i_8__0_n_0),
        .I2(\downsized_len_q_reg[7] [5]),
        .I3(access_fit_mi_side_q_reg[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [5]),
        .I5(cmd_length_i_carry__0_i_15__0_n_0),
        .O(\gpr1.dout_i_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry__0_i_7__0
       (.I0(cmd_length_i_carry__0_i_11__0_n_0),
        .I1(cmd_length_i_carry__0_i_8__0_n_0),
        .I2(\downsized_len_q_reg[7] [4]),
        .I3(access_fit_mi_side_q_reg[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [4]),
        .I5(cmd_length_i_carry__0_i_16__0_n_0),
        .O(\gpr1.dout_i_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'hEEAEEEAEEEEEEEAE)) 
    cmd_length_i_carry__0_i_8__0
       (.I0(cmd_length_i_carry__0_i_17__0_n_0),
        .I1(access_is_incr_q),
        .I2(S_AXI_AREADY_I_i_3__0_n_0),
        .I3(CO),
        .I4(access_is_wrap_q),
        .I5(cmd_length_i_carry__0_i_18__0_n_0),
        .O(cmd_length_i_carry__0_i_8__0_n_0));
  LUT4 #(
    .INIT(16'h4555)) 
    cmd_length_i_carry__0_i_9__0
       (.I0(fix_need_to_split_q),
        .I1(\wrap_rest_len_reg[7] [6]),
        .I2(split_ongoing),
        .I3(access_is_wrap_q),
        .O(cmd_length_i_carry__0_i_9__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_10__0
       (.I0(\fix_len_q_reg[4] [2]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [2]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_10__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_11__0
       (.I0(\fix_len_q_reg[4] [1]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [1]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_12__0
       (.I0(\fix_len_q_reg[4] [0]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [0]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_12__0_n_0));
  LUT5 #(
    .INIT(32'hCF55CFCF)) 
    cmd_length_i_carry_i_13__0
       (.I0(\wrap_unaligned_len_q_reg[7] [3]),
        .I1(cmd_length_i_carry__0_i_19__0_n_0),
        .I2(\unalignment_addr_q_reg[4] [3]),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(cmd_length_i_carry_i_13__0_n_0));
  LUT5 #(
    .INIT(32'hCF55CFCF)) 
    cmd_length_i_carry_i_14__0
       (.I0(\wrap_unaligned_len_q_reg[7] [2]),
        .I1(cmd_length_i_carry__0_i_19__0_n_0),
        .I2(\unalignment_addr_q_reg[4] [2]),
        .I3(split_ongoing),
        .I4(wrap_need_to_split_q),
        .O(cmd_length_i_carry_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDDDD0FDD)) 
    cmd_length_i_carry_i_15__0
       (.I0(\unalignment_addr_q_reg[4] [1]),
        .I1(cmd_length_i_carry__0_i_19__0_n_0),
        .I2(\wrap_unaligned_len_q_reg[7] [1]),
        .I3(wrap_need_to_split_q),
        .I4(split_ongoing),
        .O(cmd_length_i_carry_i_15__0_n_0));
  LUT5 #(
    .INIT(32'hF704F7F7)) 
    cmd_length_i_carry_i_16__0
       (.I0(\wrap_unaligned_len_q_reg[7] [0]),
        .I1(wrap_need_to_split_q),
        .I2(split_ongoing),
        .I3(cmd_length_i_carry__0_i_19__0_n_0),
        .I4(\unalignment_addr_q_reg[4] [0]),
        .O(cmd_length_i_carry_i_16__0_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_1__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [3]),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(\downsized_len_q_reg[7] [3]),
        .I3(cmd_length_i_carry__0_i_8__0_n_0),
        .I4(cmd_length_i_carry_i_9__0_n_0),
        .O(DI[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_2__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [2]),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(\downsized_len_q_reg[7] [2]),
        .I3(cmd_length_i_carry__0_i_8__0_n_0),
        .I4(cmd_length_i_carry_i_10__0_n_0),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_3__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [1]),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(\downsized_len_q_reg[7] [1]),
        .I3(cmd_length_i_carry__0_i_8__0_n_0),
        .I4(cmd_length_i_carry_i_11__0_n_0),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    cmd_length_i_carry_i_4__0
       (.I0(\S_AXI_ALEN_Q_reg[7] [0]),
        .I1(access_fit_mi_side_q_reg[15]),
        .I2(\downsized_len_q_reg[7] [0]),
        .I3(cmd_length_i_carry__0_i_8__0_n_0),
        .I4(cmd_length_i_carry_i_12__0_n_0),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_5__0
       (.I0(cmd_length_i_carry_i_9__0_n_0),
        .I1(cmd_length_i_carry__0_i_8__0_n_0),
        .I2(\downsized_len_q_reg[7] [3]),
        .I3(access_fit_mi_side_q_reg[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [3]),
        .I5(cmd_length_i_carry_i_13__0_n_0),
        .O(\gpr1.dout_i_reg[7]_1 [3]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_6__0
       (.I0(cmd_length_i_carry_i_10__0_n_0),
        .I1(cmd_length_i_carry__0_i_8__0_n_0),
        .I2(\downsized_len_q_reg[7] [2]),
        .I3(access_fit_mi_side_q_reg[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [2]),
        .I5(cmd_length_i_carry_i_14__0_n_0),
        .O(\gpr1.dout_i_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_7__0
       (.I0(cmd_length_i_carry_i_11__0_n_0),
        .I1(cmd_length_i_carry__0_i_8__0_n_0),
        .I2(\downsized_len_q_reg[7] [1]),
        .I3(access_fit_mi_side_q_reg[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [1]),
        .I5(cmd_length_i_carry_i_15__0_n_0),
        .O(\gpr1.dout_i_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    cmd_length_i_carry_i_8__0
       (.I0(cmd_length_i_carry_i_12__0_n_0),
        .I1(cmd_length_i_carry__0_i_8__0_n_0),
        .I2(\downsized_len_q_reg[7] [0]),
        .I3(access_fit_mi_side_q_reg[15]),
        .I4(\S_AXI_ALEN_Q_reg[7] [0]),
        .I5(cmd_length_i_carry_i_16__0_n_0),
        .O(\gpr1.dout_i_reg[7]_1 [0]));
  LUT5 #(
    .INIT(32'hB8BBBBBB)) 
    cmd_length_i_carry_i_9__0
       (.I0(\fix_len_q_reg[4] [3]),
        .I1(fix_need_to_split_q),
        .I2(\wrap_rest_len_reg[7] [3]),
        .I3(split_ongoing),
        .I4(access_is_wrap_q),
        .O(cmd_length_i_carry_i_9__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h2202AA00)) 
    cmd_push_block_i_1__0
       (.I0(out),
        .I1(m_axi_arready),
        .I2(full),
        .I3(cmd_push_block),
        .I4(command_ongoing),
        .O(cmd_push_block_reg));
  LUT6 #(
    .INIT(64'hFFFBFBFB55000000)) 
    command_ongoing_i_1__0
       (.I0(\areset_d_reg[1] ),
        .I1(E),
        .I2(S_AXI_AREADY_I_i_2_n_0),
        .I3(S_AXI_AREADY_I_reg_0),
        .I4(s_axi_arvalid),
        .I5(command_ongoing),
        .O(command_ongoing_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h88888882)) 
    \current_word_1[0]_i_1 
       (.I0(rd_cmd_mask[0]),
        .I1(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .I2(cmd_size_ii[2]),
        .I3(cmd_size_ii[1]),
        .I4(cmd_size_ii[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h02020200A8A8A8AA)) 
    \current_word_1[1]_i_1 
       (.I0(rd_cmd_mask[1]),
        .I1(cmd_size_ii[2]),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[0]),
        .I4(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .I5(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2828288228282828)) 
    \current_word_1[2]_i_1 
       (.I0(rd_cmd_mask[2]),
        .I1(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I2(\current_word_1[2]_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .I4(\current_word_1[2]_i_3_n_0 ),
        .I5(\current_word_1[2]_i_4_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_word_1[2]_i_2 
       (.I0(cmd_size_ii[2]),
        .I1(cmd_size_ii[1]),
        .I2(cmd_size_ii[0]),
        .O(\current_word_1[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \current_word_1[2]_i_3 
       (.I0(cmd_size_ii[2]),
        .I1(cmd_size_ii[1]),
        .O(\current_word_1[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAE)) 
    \current_word_1[2]_i_4 
       (.I0(cmd_size_ii[0]),
        .I1(\current_word_1_reg[3] [0]),
        .I2(first_word),
        .I3(rd_cmd_fix),
        .I4(rd_cmd_first_word[0]),
        .O(\current_word_1[2]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_word_1[3]_i_1 
       (.I0(s_axi_rvalid_INST_0_i_3_n_0),
        .O(D[3]));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "29" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "29" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "true" *) 
  top_auto_ds_0_fifo_generator_v13_1_0__parameterized1 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(CLK),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({p_0_out[28],din[3],access_fit_mi_side_q_reg[15],p_0_out[25:18],access_fit_mi_side_q_reg[14:11],din[2:0],access_fit_mi_side_q_reg[10:0]}),
        .dout({rd_cmd_fix,rd_cmd_split,dout[8],rd_cmd_first_word,rd_cmd_offset,rd_cmd_mask,cmd_size_ii,dout[7:0],rd_cmd_size}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_10__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(size_mask_q[0]),
        .I3(\S_AXI_AADDR_Q_reg[3] [0]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(access_fit_mi_side_q_reg[11]),
        .O(p_0_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    fifo_gen_inst_i_11__0
       (.I0(full),
        .I1(command_ongoing),
        .I2(cmd_push_block),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'h00404444CCCCCCCC)) 
    fifo_gen_inst_i_13__0
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg[3] [3]),
        .I2(\split_addr_mask_q_reg[3] ),
        .I3(si_full_size_q),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(fifo_gen_inst_i_13__0_n_0));
  LUT6 #(
    .INIT(64'h00404444CCCCCCCC)) 
    fifo_gen_inst_i_14__0
       (.I0(access_is_wrap_q),
        .I1(\S_AXI_AADDR_Q_reg[3] [2]),
        .I2(access_fit_mi_side_q_reg[15]),
        .I3(si_full_size_q),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(fifo_gen_inst_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_15__0
       (.I0(access_is_incr_q),
        .I1(split_ongoing),
        .O(\next_mi_addr_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_16
       (.I0(split_ongoing),
        .I1(access_is_wrap_q),
        .O(\next_mi_addr_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_gen_inst_i_1__1
       (.I0(access_fit_mi_side_q_reg[15]),
        .I1(access_is_fix_q),
        .O(p_0_out[28]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    fifo_gen_inst_i_2__0
       (.I0(S_AXI_AREADY_I_i_2_n_0),
        .I1(wrap_need_to_split_q),
        .I2(fix_need_to_split_q),
        .I3(incr_need_to_split_q),
        .O(din[3]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_3__0
       (.I0(fifo_gen_inst_i_13__0_n_0),
        .I1(access_fit_mi_side_q_reg[14]),
        .I2(size_mask_q[2]),
        .O(p_0_out[25]));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_4__0
       (.I0(fifo_gen_inst_i_14__0_n_0),
        .I1(access_fit_mi_side_q_reg[13]),
        .I2(size_mask_q[2]),
        .O(p_0_out[24]));
  LUT6 #(
    .INIT(64'h0070000000000000)) 
    fifo_gen_inst_i_5__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(\S_AXI_AADDR_Q_reg[3] [1]),
        .I3(\next_mi_addr_reg[8]_0 ),
        .I4(access_fit_mi_side_q_reg[12]),
        .I5(size_mask_q[1]),
        .O(p_0_out[23]));
  LUT6 #(
    .INIT(64'h0070000000000000)) 
    fifo_gen_inst_i_6__1
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(\S_AXI_AADDR_Q_reg[3] [0]),
        .I3(\next_mi_addr_reg[8]_0 ),
        .I4(access_fit_mi_side_q_reg[11]),
        .I5(size_mask_q[0]),
        .O(p_0_out[22]));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_7__1
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(\split_addr_mask_q_reg[3] ),
        .I3(\S_AXI_AADDR_Q_reg[3] [3]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(access_fit_mi_side_q_reg[14]),
        .O(p_0_out[21]));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_8__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(access_fit_mi_side_q_reg[15]),
        .I3(\S_AXI_AADDR_Q_reg[3] [2]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(access_fit_mi_side_q_reg[13]),
        .O(p_0_out[20]));
  LUT6 #(
    .INIT(64'h0000000000007500)) 
    fifo_gen_inst_i_9__0
       (.I0(\next_mi_addr_reg[8] ),
        .I1(si_full_size_q),
        .I2(size_mask_q[1]),
        .I3(\S_AXI_AADDR_Q_reg[3] [1]),
        .I4(\next_mi_addr_reg[8]_0 ),
        .I5(access_fit_mi_side_q_reg[12]),
        .O(p_0_out[19]));
  LUT6 #(
    .INIT(64'hAAAAAAAA000088A8)) 
    first_mi_word_i_1__0
       (.I0(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(rd_cmd_size[2]),
        .I3(s_axi_rvalid_INST_0_i_3_n_0),
        .I4(m_axi_rready_INST_0_i_1_n_0),
        .I5(s_axi_rready),
        .O(first_mi_word_reg));
  LUT2 #(
    .INIT(4'h1)) 
    last_incr_split0_carry_i_1__0
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h1001)) 
    last_incr_split0_carry_i_2__0
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\num_transactions_q_reg[3] [3]),
        .I3(Q[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    last_incr_split0_carry_i_3__0
       (.I0(\num_transactions_q_reg[3] [2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\num_transactions_q_reg[3] [1]),
        .I4(Q[0]),
        .I5(\num_transactions_q_reg[3] [0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arsize[0]_INST_0 
       (.I0(access_fit_mi_side_q_reg[15]),
        .I1(access_fit_mi_side_q_reg[0]),
        .O(din[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_axi_arsize[1]_INST_0 
       (.I0(access_fit_mi_side_q_reg[1]),
        .I1(access_fit_mi_side_q_reg[15]),
        .O(din[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arsize[2]_INST_0 
       (.I0(access_fit_mi_side_q_reg[15]),
        .I1(access_fit_mi_side_q_reg[2]),
        .O(din[2]));
  LUT3 #(
    .INIT(8'h8A)) 
    m_axi_arvalid_INST_0
       (.I0(command_ongoing),
        .I1(cmd_push_block),
        .I2(full),
        .O(m_axi_arvalid));
  LUT6 #(
    .INIT(64'h5555555500004454)) 
    m_axi_rready_INST_0
       (.I0(empty),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(rd_cmd_size[2]),
        .I3(s_axi_rvalid_INST_0_i_3_n_0),
        .I4(m_axi_rready_INST_0_i_1_n_0),
        .I5(s_axi_rready),
        .O(m_axi_rready));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4700)) 
    m_axi_rready_INST_0_i_1
       (.I0(dout[7]),
        .I1(first_word),
        .I2(\length_counter_1_reg[7] ),
        .I3(\goreg_dm.dout_i_reg[8] ),
        .I4(rd_cmd_fix),
        .I5(dout[8]),
        .O(m_axi_rready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \queue_id[0]_i_1__0 
       (.I0(S_AXI_AID_Q),
        .I1(full),
        .I2(command_ongoing),
        .I3(cmd_push_block),
        .I4(s_axi_rid),
        .O(\queue_id_reg[0] ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [0]),
        .O(s_axi_rdata[0]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[100]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [4]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[4]),
        .O(s_axi_rdata[100]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[101]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [5]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[5]),
        .O(s_axi_rdata[101]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[102]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [6]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[6]),
        .O(s_axi_rdata[102]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[103]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [7]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[7]),
        .O(s_axi_rdata[103]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[104]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [8]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[8]),
        .O(s_axi_rdata[104]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[105]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [9]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[9]),
        .O(s_axi_rdata[105]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[106]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [10]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[10]),
        .O(s_axi_rdata[106]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[107]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [11]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[11]),
        .O(s_axi_rdata[107]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[108]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [12]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[12]),
        .O(s_axi_rdata[108]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[109]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [13]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[13]),
        .O(s_axi_rdata[109]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [10]),
        .O(s_axi_rdata[10]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[110]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [14]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[14]),
        .O(s_axi_rdata[110]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[111]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [15]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[15]),
        .O(s_axi_rdata[111]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[112]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [16]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[16]),
        .O(s_axi_rdata[112]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[113]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [17]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[17]),
        .O(s_axi_rdata[113]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[114]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [18]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[18]),
        .O(s_axi_rdata[114]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[115]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [19]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[19]),
        .O(s_axi_rdata[115]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[116]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [20]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[20]),
        .O(s_axi_rdata[116]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[117]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [21]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[21]),
        .O(s_axi_rdata[117]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[118]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [22]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[22]),
        .O(s_axi_rdata[118]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[119]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [23]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[23]),
        .O(s_axi_rdata[119]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [11]),
        .O(s_axi_rdata[11]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[120]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [24]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[24]),
        .O(s_axi_rdata[120]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[121]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [25]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[25]),
        .O(s_axi_rdata[121]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[122]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [26]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[26]),
        .O(s_axi_rdata[122]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[123]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [27]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[27]),
        .O(s_axi_rdata[123]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[124]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [28]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[28]),
        .O(s_axi_rdata[124]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[125]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [29]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[29]),
        .O(s_axi_rdata[125]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[126]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [30]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[30]),
        .O(s_axi_rdata[126]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[127]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [31]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[31]),
        .O(s_axi_rdata[127]));
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \s_axi_rdata[127]_INST_0_i_1 
       (.I0(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I1(rd_cmd_offset[2]),
        .I2(\s_axi_rdata[127]_INST_0_i_4_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_5_n_0 ),
        .I4(rd_cmd_offset[3]),
        .O(\s_axi_rdata[127]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2BBBD444D4442BBB)) 
    \s_axi_rdata[127]_INST_0_i_2 
       (.I0(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .I1(rd_cmd_offset[1]),
        .I2(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .I3(rd_cmd_offset[0]),
        .I4(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I5(rd_cmd_offset[2]),
        .O(\s_axi_rdata[127]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \s_axi_rdata[127]_INST_0_i_3 
       (.I0(rd_cmd_first_word[2]),
        .I1(rd_cmd_fix),
        .I2(first_word),
        .I3(\current_word_1_reg[3] [2]),
        .O(\s_axi_rdata[127]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h57F7FFFF000057F7)) 
    \s_axi_rdata[127]_INST_0_i_4 
       (.I0(rd_cmd_offset[0]),
        .I1(\current_word_1_reg[3] [0]),
        .I2(\s_axi_rdata[127]_INST_0_i_8_n_0 ),
        .I3(rd_cmd_first_word[0]),
        .I4(rd_cmd_offset[1]),
        .I5(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .O(\s_axi_rdata[127]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5457)) 
    \s_axi_rdata[127]_INST_0_i_5 
       (.I0(rd_cmd_first_word[3]),
        .I1(rd_cmd_fix),
        .I2(first_word),
        .I3(\current_word_1_reg[3] [3]),
        .O(\s_axi_rdata[127]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h5457)) 
    \s_axi_rdata[127]_INST_0_i_6 
       (.I0(rd_cmd_first_word[1]),
        .I1(rd_cmd_fix),
        .I2(first_word),
        .I3(\current_word_1_reg[3] [1]),
        .O(\s_axi_rdata[127]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    \s_axi_rdata[127]_INST_0_i_7 
       (.I0(rd_cmd_first_word[0]),
        .I1(rd_cmd_fix),
        .I2(first_word),
        .I3(\current_word_1_reg[3] [0]),
        .O(\s_axi_rdata[127]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[127]_INST_0_i_8 
       (.I0(rd_cmd_fix),
        .I1(first_word),
        .O(\s_axi_rdata[127]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [12]),
        .O(s_axi_rdata[12]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [13]),
        .O(s_axi_rdata[13]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [14]),
        .O(s_axi_rdata[14]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [15]),
        .O(s_axi_rdata[15]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [16]),
        .O(s_axi_rdata[16]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [17]),
        .O(s_axi_rdata[17]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [18]),
        .O(s_axi_rdata[18]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [19]),
        .O(s_axi_rdata[19]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [1]),
        .O(s_axi_rdata[1]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [20]),
        .O(s_axi_rdata[20]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [21]),
        .O(s_axi_rdata[21]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [22]),
        .O(s_axi_rdata[22]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [23]),
        .O(s_axi_rdata[23]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [24]),
        .O(s_axi_rdata[24]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [25]),
        .O(s_axi_rdata[25]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [26]),
        .O(s_axi_rdata[26]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [27]),
        .O(s_axi_rdata[27]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [28]),
        .O(s_axi_rdata[28]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [29]),
        .O(s_axi_rdata[29]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [2]),
        .O(s_axi_rdata[2]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [30]),
        .O(s_axi_rdata[30]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [31]),
        .O(s_axi_rdata[31]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [0]),
        .O(s_axi_rdata[32]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [1]),
        .O(s_axi_rdata[33]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [2]),
        .O(s_axi_rdata[34]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [3]),
        .O(s_axi_rdata[35]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [4]),
        .O(s_axi_rdata[36]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [5]),
        .O(s_axi_rdata[37]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [6]),
        .O(s_axi_rdata[38]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [7]),
        .O(s_axi_rdata[39]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [3]),
        .O(s_axi_rdata[3]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [8]),
        .O(s_axi_rdata[40]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [9]),
        .O(s_axi_rdata[41]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [10]),
        .O(s_axi_rdata[42]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [11]),
        .O(s_axi_rdata[43]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [12]),
        .O(s_axi_rdata[44]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [13]),
        .O(s_axi_rdata[45]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [14]),
        .O(s_axi_rdata[46]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [15]),
        .O(s_axi_rdata[47]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [16]),
        .O(s_axi_rdata[48]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [17]),
        .O(s_axi_rdata[49]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [4]),
        .O(s_axi_rdata[4]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [18]),
        .O(s_axi_rdata[50]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [19]),
        .O(s_axi_rdata[51]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [20]),
        .O(s_axi_rdata[52]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [21]),
        .O(s_axi_rdata[53]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [22]),
        .O(s_axi_rdata[54]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [23]),
        .O(s_axi_rdata[55]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [24]),
        .O(s_axi_rdata[56]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [25]),
        .O(s_axi_rdata[57]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [26]),
        .O(s_axi_rdata[58]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [27]),
        .O(s_axi_rdata[59]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [5]),
        .O(s_axi_rdata[5]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [28]),
        .O(s_axi_rdata[60]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [29]),
        .O(s_axi_rdata[61]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [30]),
        .O(s_axi_rdata[62]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 [31]),
        .O(s_axi_rdata[63]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[64]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [0]),
        .O(s_axi_rdata[64]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[65]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [1]),
        .O(s_axi_rdata[65]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[66]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [2]),
        .O(s_axi_rdata[66]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[67]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [3]),
        .O(s_axi_rdata[67]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[68]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [4]),
        .O(s_axi_rdata[68]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[69]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [5]),
        .O(s_axi_rdata[69]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [6]),
        .O(s_axi_rdata[6]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[70]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [6]),
        .O(s_axi_rdata[70]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[71]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [7]),
        .O(s_axi_rdata[71]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[72]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [8]),
        .O(s_axi_rdata[72]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[73]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [9]),
        .O(s_axi_rdata[73]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[74]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [10]),
        .O(s_axi_rdata[74]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[75]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [11]),
        .O(s_axi_rdata[75]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[76]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [12]),
        .O(s_axi_rdata[76]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[77]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [13]),
        .O(s_axi_rdata[77]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[78]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [14]),
        .O(s_axi_rdata[78]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[79]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [15]),
        .O(s_axi_rdata[79]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [7]),
        .O(s_axi_rdata[7]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[80]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [16]),
        .O(s_axi_rdata[80]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[81]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [17]),
        .O(s_axi_rdata[81]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[82]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [18]),
        .O(s_axi_rdata[82]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[83]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [19]),
        .O(s_axi_rdata[83]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[84]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [20]),
        .O(s_axi_rdata[84]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[85]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [21]),
        .O(s_axi_rdata[85]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[86]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [22]),
        .O(s_axi_rdata[86]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[87]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [23]),
        .O(s_axi_rdata[87]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[88]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [24]),
        .O(s_axi_rdata[88]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[89]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [25]),
        .O(s_axi_rdata[89]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [8]),
        .O(s_axi_rdata[8]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[90]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [26]),
        .O(s_axi_rdata[90]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[91]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [27]),
        .O(s_axi_rdata[91]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[92]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [28]),
        .O(s_axi_rdata[92]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[93]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [29]),
        .O(s_axi_rdata[93]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[94]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [30]),
        .O(s_axi_rdata[94]));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \s_axi_rdata[95]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 [31]),
        .O(s_axi_rdata[95]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[96]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [0]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[0]),
        .O(s_axi_rdata[96]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[97]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [1]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[1]),
        .O(s_axi_rdata[97]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[98]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [2]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[2]),
        .O(s_axi_rdata[98]));
  LUT5 #(
    .INIT(32'hEEEF2220)) 
    \s_axi_rdata[99]_INST_0 
       (.I0(\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 [3]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I4(m_axi_rdata[3]),
        .O(s_axi_rdata[99]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(dout[8]),
        .I2(\s_axi_rdata[127]_INST_0_i_2_n_0 ),
        .I3(\s_axi_rdata[127]_INST_0_i_1_n_0 ),
        .I4(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 [9]),
        .O(s_axi_rdata[9]));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rlast_INST_0
       (.I0(m_axi_rlast),
        .I1(rd_cmd_split),
        .O(s_axi_rlast));
  LUT6 #(
    .INIT(64'h00000000FFAFABAB)) 
    \s_axi_rresp[1]_INST_0_i_1 
       (.I0(\s_axi_rresp[1]_INST_0_i_2_n_0 ),
        .I1(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .I2(\s_axi_rresp[1]_INST_0_i_3_n_0 ),
        .I3(rd_cmd_size[0]),
        .I4(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .I5(\S_AXI_RRESP_ACC_reg[0]_0 ),
        .O(\S_AXI_RRESP_ACC_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFC05500)) 
    \s_axi_rresp[1]_INST_0_i_2 
       (.I0(\s_axi_rdata[127]_INST_0_i_5_n_0 ),
        .I1(rd_cmd_size[1]),
        .I2(rd_cmd_size[0]),
        .I3(rd_cmd_size[2]),
        .I4(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .O(\s_axi_rresp[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_axi_rresp[1]_INST_0_i_3 
       (.I0(rd_cmd_size[2]),
        .I1(rd_cmd_size[1]),
        .O(\s_axi_rresp[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA2202)) 
    s_axi_rvalid_INST_0
       (.I0(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .I1(s_axi_rvalid_INST_0_i_2_n_0),
        .I2(rd_cmd_size[2]),
        .I3(s_axi_rvalid_INST_0_i_3_n_0),
        .I4(s_axi_rvalid_INST_0_i_4_n_0),
        .I5(\goreg_dm.dout_i_reg[9] ),
        .O(s_axi_rvalid));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_rvalid_INST_0_i_1
       (.I0(m_axi_rvalid),
        .I1(empty),
        .O(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hA8A0FFFCFFF0FFFC)) 
    s_axi_rvalid_INST_0_i_2
       (.I0(D[2]),
        .I1(rd_cmd_size[0]),
        .I2(rd_cmd_size[2]),
        .I3(rd_cmd_size[1]),
        .I4(s_axi_rvalid_INST_0_i_6_n_0),
        .I5(s_axi_rvalid_INST_0_i_7_n_0),
        .O(s_axi_rvalid_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hABA85457FFFFFFFF)) 
    s_axi_rvalid_INST_0_i_3
       (.I0(rd_cmd_first_word[3]),
        .I1(rd_cmd_fix),
        .I2(first_word),
        .I3(\current_word_1_reg[3] [3]),
        .I4(s_axi_rvalid_INST_0_i_8_n_0),
        .I5(rd_cmd_mask[3]),
        .O(s_axi_rvalid_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_rvalid_INST_0_i_4
       (.I0(dout[8]),
        .I1(rd_cmd_fix),
        .O(s_axi_rvalid_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h01FEFFFF)) 
    s_axi_rvalid_INST_0_i_6
       (.I0(cmd_size_ii[0]),
        .I1(cmd_size_ii[1]),
        .I2(cmd_size_ii[2]),
        .I3(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .I4(rd_cmd_mask[0]),
        .O(s_axi_rvalid_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAAAA56FFFFFFFF)) 
    s_axi_rvalid_INST_0_i_7
       (.I0(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .I1(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .I2(cmd_size_ii[0]),
        .I3(cmd_size_ii[1]),
        .I4(cmd_size_ii[2]),
        .I5(rd_cmd_mask[1]),
        .O(s_axi_rvalid_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0020022200200220)) 
    s_axi_rvalid_INST_0_i_8
       (.I0(\s_axi_rdata[127]_INST_0_i_3_n_0 ),
        .I1(cmd_size_ii[2]),
        .I2(cmd_size_ii[1]),
        .I3(cmd_size_ii[0]),
        .I4(\s_axi_rdata[127]_INST_0_i_6_n_0 ),
        .I5(\s_axi_rdata[127]_INST_0_i_7_n_0 ),
        .O(s_axi_rvalid_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA200)) 
    split_ongoing_i_1__0
       (.I0(m_axi_arready),
        .I1(full),
        .I2(cmd_push_block),
        .I3(command_ongoing),
        .O(E));
endmodule

module top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer
   (dout,
    empty,
    SR,
    \current_word_1_reg[2] ,
    din,
    s_axi_awready,
    areset_d,
    s_axi_bid,
    m_axi_awvalid,
    m_axi_awaddr,
    E,
    m_axi_wvalid,
    s_axi_wready,
    command_ongoing_reg_0,
    m_axi_awlock,
    m_axi_awburst,
    m_axi_wdata,
    m_axi_wstrb,
    D,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    CLK,
    rd_en,
    s_axi_awid,
    s_axi_awlock,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awaddr,
    m_axi_awready,
    out,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_wlast,
    first_mi_word,
    Q,
    \goreg_dm.dout_i_reg[8] ,
    s_axi_wdata,
    s_axi_wstrb,
    \current_word_1_reg[3] ,
    first_word_reg,
    s_axi_awvalid,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos);
  output [8:0]dout;
  output empty;
  output [0:0]SR;
  output [8:0]\current_word_1_reg[2] ;
  output [10:0]din;
  output s_axi_awready;
  output [1:0]areset_d;
  output [0:0]s_axi_bid;
  output m_axi_awvalid;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output m_axi_wvalid;
  output s_axi_wready;
  output command_ongoing_reg_0;
  output [0:0]m_axi_awlock;
  output [1:0]m_axi_awburst;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [3:0]D;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  input CLK;
  input rd_en;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_awlock;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [31:0]s_axi_awaddr;
  input m_axi_awready;
  input out;
  input s_axi_wvalid;
  input m_axi_wready;
  input m_axi_wlast;
  input first_mi_word;
  input [0:0]Q;
  input \goreg_dm.dout_i_reg[8] ;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [3:0]\current_word_1_reg[3] ;
  input first_word_reg;
  input s_axi_awvalid;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \S_AXI_AADDR_Q_reg_n_0_[0] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[10] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[11] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[12] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[13] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[14] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[15] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[16] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[17] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[18] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[19] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[1] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[20] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[21] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[22] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[23] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[24] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[25] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[26] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[27] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[28] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[29] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[2] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[30] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[31] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[3] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[4] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[5] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[6] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[7] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[8] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[9] ;
  wire [1:0]S_AXI_ABURST_Q;
  wire S_AXI_AID_Q;
  wire \S_AXI_ALEN_Q_reg_n_0_[4] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[5] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[6] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[7] ;
  wire [0:0]S_AXI_ALOCK_Q;
  wire [2:0]S_AXI_ASIZE_Q;
  wire \USE_B_CHANNEL.cmd_b_queue_n_13 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_16 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_17 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_18 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_19 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_20 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_21 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_22 ;
  wire \USE_B_CHANNEL.cmd_b_queue_n_23 ;
  wire access_fit_mi_side_q;
  wire access_fit_mi_side_q_i_1_n_0;
  wire access_is_fix;
  wire access_is_fix_q;
  wire access_is_incr;
  wire access_is_incr_q;
  wire access_is_wrap;
  wire access_is_wrap_q;
  wire [1:0]areset_d;
  wire cmd_b_push_block;
  wire cmd_length_i_carry__0_n_1;
  wire cmd_length_i_carry__0_n_2;
  wire cmd_length_i_carry__0_n_3;
  wire cmd_length_i_carry_n_0;
  wire cmd_length_i_carry_n_1;
  wire cmd_length_i_carry_n_2;
  wire cmd_length_i_carry_n_3;
  wire cmd_mask_q;
  wire \cmd_mask_q[0]_i_1_n_0 ;
  wire \cmd_mask_q[1]_i_1_n_0 ;
  wire \cmd_mask_q[2]_i_1_n_0 ;
  wire \cmd_mask_q[3]_i_1_n_0 ;
  wire \cmd_mask_q_reg_n_0_[0] ;
  wire \cmd_mask_q_reg_n_0_[1] ;
  wire \cmd_mask_q_reg_n_0_[2] ;
  wire \cmd_mask_q_reg_n_0_[3] ;
  wire cmd_push;
  wire cmd_push_block;
  wire cmd_queue_n_14;
  wire cmd_queue_n_15;
  wire cmd_queue_n_16;
  wire cmd_queue_n_17;
  wire cmd_queue_n_18;
  wire cmd_queue_n_19;
  wire cmd_queue_n_20;
  wire cmd_queue_n_21;
  wire cmd_queue_n_22;
  wire cmd_queue_n_66;
  wire cmd_queue_n_67;
  wire cmd_queue_n_68;
  wire cmd_queue_n_69;
  wire cmd_queue_n_70;
  wire cmd_queue_n_71;
  wire cmd_queue_n_72;
  wire cmd_queue_n_73;
  wire cmd_split_i;
  wire command_ongoing;
  wire command_ongoing_reg_0;
  wire [8:0]\current_word_1_reg[2] ;
  wire [3:0]\current_word_1_reg[3] ;
  wire [10:0]din;
  wire [8:0]dout;
  wire [7:0]downsized_len_q;
  wire \downsized_len_q[0]_i_1_n_0 ;
  wire \downsized_len_q[1]_i_1_n_0 ;
  wire \downsized_len_q[2]_i_1_n_0 ;
  wire \downsized_len_q[3]_i_1_n_0 ;
  wire \downsized_len_q[4]_i_1_n_0 ;
  wire \downsized_len_q[5]_i_1_n_0 ;
  wire \downsized_len_q[6]_i_1_n_0 ;
  wire \downsized_len_q[7]_i_1_n_0 ;
  wire \downsized_len_q[7]_i_2_n_0 ;
  wire empty;
  wire first_mi_word;
  wire first_word_reg;
  wire [3:0]fix_len;
  wire [4:0]fix_len_q;
  wire \fix_len_q[4]_i_1_n_0 ;
  wire fix_need_to_split;
  wire fix_need_to_split_q;
  wire \goreg_dm.dout_i_reg[8] ;
  wire incr_need_to_split;
  wire incr_need_to_split_q;
  wire \inst/full ;
  wire \inst/full_0 ;
  wire last_incr_split0;
  wire last_incr_split0_carry_n_2;
  wire last_incr_split0_carry_n_3;
  wire legal_wrap_len_q;
  wire legal_wrap_len_q_i_1_n_0;
  wire legal_wrap_len_q_i_2_n_0;
  wire legal_wrap_len_q_i_3_n_0;
  wire legal_wrap_len_q_i_4_n_0;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire m_axi_awvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [14:0]masked_addr;
  wire [31:0]masked_addr_q;
  wire \masked_addr_q[2]_i_2_n_0 ;
  wire \masked_addr_q[3]_i_2_n_0 ;
  wire \masked_addr_q[3]_i_3_n_0 ;
  wire \masked_addr_q[4]_i_2_n_0 ;
  wire \masked_addr_q[5]_i_2_n_0 ;
  wire \masked_addr_q[6]_i_2_n_0 ;
  wire \masked_addr_q[7]_i_2_n_0 ;
  wire \masked_addr_q[7]_i_3_n_0 ;
  wire \masked_addr_q[8]_i_2_n_0 ;
  wire \masked_addr_q[8]_i_3_n_0 ;
  wire \masked_addr_q[9]_i_2_n_0 ;
  wire [31:2]next_mi_addr;
  wire next_mi_addr0_carry__0_i_1_n_0;
  wire next_mi_addr0_carry__0_i_2_n_0;
  wire next_mi_addr0_carry__0_i_3_n_0;
  wire next_mi_addr0_carry__0_i_4_n_0;
  wire next_mi_addr0_carry__0_n_0;
  wire next_mi_addr0_carry__0_n_1;
  wire next_mi_addr0_carry__0_n_2;
  wire next_mi_addr0_carry__0_n_3;
  wire next_mi_addr0_carry__0_n_4;
  wire next_mi_addr0_carry__0_n_5;
  wire next_mi_addr0_carry__0_n_6;
  wire next_mi_addr0_carry__0_n_7;
  wire next_mi_addr0_carry__1_i_1_n_0;
  wire next_mi_addr0_carry__1_i_2_n_0;
  wire next_mi_addr0_carry__1_i_3_n_0;
  wire next_mi_addr0_carry__1_i_4_n_0;
  wire next_mi_addr0_carry__1_n_0;
  wire next_mi_addr0_carry__1_n_1;
  wire next_mi_addr0_carry__1_n_2;
  wire next_mi_addr0_carry__1_n_3;
  wire next_mi_addr0_carry__1_n_4;
  wire next_mi_addr0_carry__1_n_5;
  wire next_mi_addr0_carry__1_n_6;
  wire next_mi_addr0_carry__1_n_7;
  wire next_mi_addr0_carry__2_i_1_n_0;
  wire next_mi_addr0_carry__2_i_2_n_0;
  wire next_mi_addr0_carry__2_i_3_n_0;
  wire next_mi_addr0_carry__2_i_4_n_0;
  wire next_mi_addr0_carry__2_n_0;
  wire next_mi_addr0_carry__2_n_1;
  wire next_mi_addr0_carry__2_n_2;
  wire next_mi_addr0_carry__2_n_3;
  wire next_mi_addr0_carry__2_n_4;
  wire next_mi_addr0_carry__2_n_5;
  wire next_mi_addr0_carry__2_n_6;
  wire next_mi_addr0_carry__2_n_7;
  wire next_mi_addr0_carry__3_i_1_n_0;
  wire next_mi_addr0_carry__3_i_2_n_0;
  wire next_mi_addr0_carry__3_i_3_n_0;
  wire next_mi_addr0_carry__3_i_4_n_0;
  wire next_mi_addr0_carry__3_n_0;
  wire next_mi_addr0_carry__3_n_1;
  wire next_mi_addr0_carry__3_n_2;
  wire next_mi_addr0_carry__3_n_3;
  wire next_mi_addr0_carry__3_n_4;
  wire next_mi_addr0_carry__3_n_5;
  wire next_mi_addr0_carry__3_n_6;
  wire next_mi_addr0_carry__3_n_7;
  wire next_mi_addr0_carry__4_i_1_n_0;
  wire next_mi_addr0_carry__4_i_2_n_0;
  wire next_mi_addr0_carry__4_i_3_n_0;
  wire next_mi_addr0_carry__4_n_2;
  wire next_mi_addr0_carry__4_n_3;
  wire next_mi_addr0_carry__4_n_5;
  wire next_mi_addr0_carry__4_n_6;
  wire next_mi_addr0_carry__4_n_7;
  wire next_mi_addr0_carry_i_1_n_0;
  wire next_mi_addr0_carry_i_2_n_0;
  wire next_mi_addr0_carry_i_3_n_0;
  wire next_mi_addr0_carry_i_4_n_0;
  wire next_mi_addr0_carry_i_5_n_0;
  wire next_mi_addr0_carry_n_0;
  wire next_mi_addr0_carry_n_1;
  wire next_mi_addr0_carry_n_2;
  wire next_mi_addr0_carry_n_3;
  wire next_mi_addr0_carry_n_4;
  wire next_mi_addr0_carry_n_5;
  wire next_mi_addr0_carry_n_6;
  wire next_mi_addr0_carry_n_7;
  wire \next_mi_addr[2]_i_1_n_0 ;
  wire \next_mi_addr[7]_i_1_n_0 ;
  wire \next_mi_addr[8]_i_1_n_0 ;
  wire [3:0]num_transactions;
  wire \num_transactions_q[0]_i_2_n_0 ;
  wire \num_transactions_q[1]_i_1_n_0 ;
  wire \num_transactions_q[1]_i_2_n_0 ;
  wire \num_transactions_q[2]_i_1_n_0 ;
  wire \num_transactions_q_reg_n_0_[0] ;
  wire \num_transactions_q_reg_n_0_[1] ;
  wire \num_transactions_q_reg_n_0_[2] ;
  wire \num_transactions_q_reg_n_0_[3] ;
  wire out;
  wire [7:0]p_0_in;
  wire [3:0]p_0_in_0;
  wire [6:3]pre_mi_addr;
  wire \pushed_commands[7]_i_1_n_0 ;
  wire \pushed_commands[7]_i_3_n_0 ;
  wire [7:0]pushed_commands_reg__0;
  wire pushed_new_cmd;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire si_full_size_q;
  wire si_full_size_q_i_1_n_0;
  wire [0:0]size_mask;
  wire [3:0]size_mask_q;
  wire [6:1]split_addr_mask;
  wire \split_addr_mask_q_reg_n_0_[3] ;
  wire \split_addr_mask_q_reg_n_0_[4] ;
  wire \split_addr_mask_q_reg_n_0_[5] ;
  wire \split_addr_mask_q_reg_n_0_[6] ;
  wire split_ongoing;
  wire [4:0]unalignment_addr;
  wire [4:0]unalignment_addr_q;
  wire wrap_need_to_split;
  wire wrap_need_to_split_q;
  wire wrap_need_to_split_q_i_2_n_0;
  wire wrap_need_to_split_q_i_3_n_0;
  wire [7:0]wrap_rest_len;
  wire [7:0]wrap_rest_len0;
  wire \wrap_rest_len[1]_i_1_n_0 ;
  wire \wrap_rest_len[7]_i_2_n_0 ;
  wire [7:0]wrap_unaligned_len;
  wire [7:0]wrap_unaligned_len_q;
  wire [3:3]NLW_cmd_length_i_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_last_incr_split0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_last_incr_split0_carry_O_UNCONNECTED;
  wire [3:2]NLW_next_mi_addr0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_next_mi_addr0_carry__4_O_UNCONNECTED;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[0]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[10]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[11]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[12]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[13]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[14]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[15]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[16]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[17]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[18]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[19]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[1]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[20]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[21]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[22]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[23]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[24]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[25]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[26]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[27]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[28]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[29]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[2]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[30]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[31]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[3]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[4]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[5]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[6]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[7]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[8]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[9]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awburst[0]),
        .Q(S_AXI_ABURST_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awburst[1]),
        .Q(S_AXI_ABURST_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awid),
        .Q(S_AXI_AID_Q),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[0]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[1]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[2]),
        .Q(p_0_in_0[2]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[3]),
        .Q(p_0_in_0[3]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[4]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[5]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[6]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlen[7]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awlock),
        .Q(S_AXI_ALOCK_Q),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(1'b0));
  FDRE S_AXI_AREADY_I_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_19 ),
        .Q(s_axi_awready),
        .R(SR));
  FDRE \S_AXI_AREGION_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[0]),
        .Q(m_axi_awregion[0]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[1]),
        .Q(m_axi_awregion[1]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[2]),
        .Q(m_axi_awregion[2]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awregion[3]),
        .Q(m_axi_awregion[3]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[0]),
        .Q(S_AXI_ASIZE_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[1]),
        .Q(S_AXI_ASIZE_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[2]),
        .Q(S_AXI_ASIZE_Q[2]),
        .R(1'b0));
  top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo \USE_B_CHANNEL.cmd_b_queue 
       (.CLK(CLK),
        .CO(last_incr_split0),
        .E(pushed_new_cmd),
        .Q(pushed_commands_reg__0),
        .S({\USE_B_CHANNEL.cmd_b_queue_n_16 ,\USE_B_CHANNEL.cmd_b_queue_n_17 ,\USE_B_CHANNEL.cmd_b_queue_n_18 }),
        .SR(SR),
        .S_AXI_AID_Q(S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[3] (p_0_in_0),
        .S_AXI_AREADY_I_reg(\USE_B_CHANNEL.cmd_b_queue_n_19 ),
        .S_AXI_AREADY_I_reg_0(s_axi_awready),
        .S_AXI_AREADY_I_reg_1(\pushed_commands[7]_i_1_n_0 ),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .areset_d(areset_d[1]),
        .\areset_d_reg[0] (areset_d[0]),
        .\areset_d_reg[1] (command_ongoing_reg_0),
        .cmd_b_push_block(cmd_b_push_block),
        .cmd_b_push_block_reg(\USE_B_CHANNEL.cmd_b_queue_n_23 ),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(\USE_B_CHANNEL.cmd_b_queue_n_21 ),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(\USE_B_CHANNEL.cmd_b_queue_n_20 ),
        .din(cmd_split_i),
        .dout(dout),
        .empty(empty),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(\inst/full ),
        .incr_need_to_split_q(incr_need_to_split_q),
        .m_axi_awready(m_axi_awready),
        .\num_transactions_q_reg[3] ({\num_transactions_q_reg_n_0_[3] ,\num_transactions_q_reg_n_0_[2] ,\num_transactions_q_reg_n_0_[1] ,\num_transactions_q_reg_n_0_[0] }),
        .out(out),
        .\queue_id_reg[0] (\USE_B_CHANNEL.cmd_b_queue_n_22 ),
        .ram_full_i_reg(\inst/full_0 ),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .split_ongoing(split_ongoing),
        .split_ongoing_reg(\USE_B_CHANNEL.cmd_b_queue_n_13 ),
        .wr_en(cmd_push),
        .wrap_need_to_split_q(wrap_need_to_split_q));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h15)) 
    access_fit_mi_side_q_i_1
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(access_fit_mi_side_q_i_1_n_0));
  FDRE access_fit_mi_side_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(access_fit_mi_side_q_i_1_n_0),
        .Q(access_fit_mi_side_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h1)) 
    access_is_fix_q_i_1
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(access_is_fix));
  FDRE access_is_fix_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(access_is_fix),
        .Q(access_is_fix_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .O(access_is_incr));
  FDRE access_is_incr_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    access_is_wrap_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(access_is_wrap));
  FDRE access_is_wrap_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(access_is_wrap),
        .Q(access_is_wrap_q),
        .R(SR));
  FDRE \areset_d_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE \areset_d_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE cmd_b_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_23 ),
        .Q(cmd_b_push_block),
        .R(1'b0));
  CARRY4 cmd_length_i_carry
       (.CI(1'b0),
        .CO({cmd_length_i_carry_n_0,cmd_length_i_carry_n_1,cmd_length_i_carry_n_2,cmd_length_i_carry_n_3}),
        .CYINIT(1'b1),
        .DI({cmd_queue_n_14,cmd_queue_n_15,cmd_queue_n_16,cmd_queue_n_17}),
        .O(din[3:0]),
        .S({cmd_queue_n_70,cmd_queue_n_71,cmd_queue_n_72,cmd_queue_n_73}));
  CARRY4 cmd_length_i_carry__0
       (.CI(cmd_length_i_carry_n_0),
        .CO({NLW_cmd_length_i_carry__0_CO_UNCONNECTED[3],cmd_length_i_carry__0_n_1,cmd_length_i_carry__0_n_2,cmd_length_i_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cmd_queue_n_18,cmd_queue_n_19,cmd_queue_n_20}),
        .O(din[7:4]),
        .S({cmd_queue_n_66,cmd_queue_n_67,cmd_queue_n_68,cmd_queue_n_69}));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cmd_mask_q[0]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(cmd_mask_q),
        .O(\cmd_mask_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEEE)) 
    \cmd_mask_q[1]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[1]),
        .I5(cmd_mask_q),
        .O(\cmd_mask_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cmd_mask_q[1]_i_2 
       (.I0(s_axi_awready),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .O(cmd_mask_q));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \cmd_mask_q[2]_i_1 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awready),
        .I3(\masked_addr_q[2]_i_2_n_0 ),
        .O(\cmd_mask_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \cmd_mask_q[3]_i_1 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awready),
        .I3(\masked_addr_q[3]_i_2_n_0 ),
        .O(\cmd_mask_q[3]_i_1_n_0 ));
  FDRE \cmd_mask_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[0]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[1]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[2]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\cmd_mask_q[3]_i_1_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE cmd_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_21 ),
        .Q(cmd_push_block),
        .R(1'b0));
  top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized0 cmd_queue
       (.CLK(CLK),
        .CO(last_incr_split0),
        .D(D),
        .DI({cmd_queue_n_14,cmd_queue_n_15,cmd_queue_n_16,cmd_queue_n_17}),
        .E(E),
        .Q(wrap_rest_len),
        .S({cmd_queue_n_66,cmd_queue_n_67,cmd_queue_n_68,cmd_queue_n_69}),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[3] ({\S_AXI_AADDR_Q_reg_n_0_[3] ,\S_AXI_AADDR_Q_reg_n_0_[2] ,\S_AXI_AADDR_Q_reg_n_0_[1] ,\S_AXI_AADDR_Q_reg_n_0_[0] }),
        .\S_AXI_ALEN_Q_reg[7] ({\S_AXI_ALEN_Q_reg_n_0_[7] ,\S_AXI_ALEN_Q_reg_n_0_[6] ,\S_AXI_ALEN_Q_reg_n_0_[5] ,\S_AXI_ALEN_Q_reg_n_0_[4] ,p_0_in_0}),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .cmd_push_block(cmd_push_block),
        .command_ongoing(command_ongoing),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .din({cmd_split_i,access_fit_mi_side_q,\cmd_mask_q_reg_n_0_[3] ,\cmd_mask_q_reg_n_0_[2] ,\cmd_mask_q_reg_n_0_[1] ,\cmd_mask_q_reg_n_0_[0] ,din[7:0],S_AXI_ASIZE_Q}),
        .dout(\current_word_1_reg[2] ),
        .\downsized_len_q_reg[7] (downsized_len_q),
        .first_mi_word(first_mi_word),
        .first_word_reg(first_word_reg),
        .\fix_len_q_reg[4] (fix_len_q),
        .fix_need_to_split_q(fix_need_to_split_q),
        .full(\inst/full_0 ),
        .\goreg_dm.dout_i_reg[8] (\goreg_dm.dout_i_reg[8] ),
        .\gpr1.dout_i_reg[7] ({cmd_queue_n_18,cmd_queue_n_19,cmd_queue_n_20}),
        .\gpr1.dout_i_reg[7]_0 ({cmd_queue_n_70,cmd_queue_n_71,cmd_queue_n_72,cmd_queue_n_73}),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[7] (Q),
        .\m_axi_awsize[2] (din[10:8]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\next_mi_addr_reg[8] (cmd_queue_n_21),
        .\next_mi_addr_reg[8]_0 (cmd_queue_n_22),
        .\pushed_commands_reg[7] (\USE_B_CHANNEL.cmd_b_queue_n_13 ),
        .ram_full_i_reg(\inst/full ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .si_full_size_q(si_full_size_q),
        .size_mask_q({size_mask_q[3],size_mask_q[1:0]}),
        .\split_addr_mask_q_reg[3] (\split_addr_mask_q_reg_n_0_[3] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (unalignment_addr_q),
        .wr_en(cmd_push),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_unaligned_len_q_reg[7] (wrap_unaligned_len_q));
  LUT2 #(
    .INIT(4'h2)) 
    command_ongoing_i_2
       (.I0(areset_d[1]),
        .I1(areset_d[0]),
        .O(command_ongoing_reg_0));
  FDRE command_ongoing_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_20 ),
        .Q(command_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \downsized_len_q[0]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .O(\downsized_len_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h0222FEEE)) 
    \downsized_len_q[1]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(\masked_addr_q[3]_i_2_n_0 ),
        .O(\downsized_len_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEE2CEEECEE2)) 
    \downsized_len_q[2]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[0]),
        .I5(\masked_addr_q[4]_i_2_n_0 ),
        .O(\downsized_len_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFEEE0222)) 
    \downsized_len_q[3]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(\masked_addr_q[5]_i_2_n_0 ),
        .O(\downsized_len_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BB88BB88BB88)) 
    \downsized_len_q[4]_i_1 
       (.I0(\masked_addr_q[6]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\num_transactions_q[0]_i_2_n_0 ),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[0]),
        .O(\downsized_len_q[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BB88BB88BB88)) 
    \downsized_len_q[5]_i_1 
       (.I0(\masked_addr_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\masked_addr_q[7]_i_3_n_0 ),
        .I3(s_axi_awlen[5]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[0]),
        .O(\downsized_len_q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hFEEE0222)) 
    \downsized_len_q[6]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(\masked_addr_q[8]_i_2_n_0 ),
        .O(\downsized_len_q[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55EA40BF15AA00)) 
    \downsized_len_q[7]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(\downsized_len_q[7]_i_2_n_0 ),
        .I4(s_axi_awlen[7]),
        .I5(s_axi_awlen[6]),
        .O(\downsized_len_q[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \downsized_len_q[7]_i_2 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[5]),
        .O(\downsized_len_q[7]_i_2_n_0 ));
  FDRE \downsized_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[0]_i_1_n_0 ),
        .Q(downsized_len_q[0]),
        .R(SR));
  FDRE \downsized_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[1]_i_1_n_0 ),
        .Q(downsized_len_q[1]),
        .R(SR));
  FDRE \downsized_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[2]_i_1_n_0 ),
        .Q(downsized_len_q[2]),
        .R(SR));
  FDRE \downsized_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[3]_i_1_n_0 ),
        .Q(downsized_len_q[3]),
        .R(SR));
  FDRE \downsized_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[4]_i_1_n_0 ),
        .Q(downsized_len_q[4]),
        .R(SR));
  FDRE \downsized_len_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[5]_i_1_n_0 ),
        .Q(downsized_len_q[5]),
        .R(SR));
  FDRE \downsized_len_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[6]_i_1_n_0 ),
        .Q(downsized_len_q[6]),
        .R(SR));
  FDRE \downsized_len_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\downsized_len_q[7]_i_1_n_0 ),
        .Q(downsized_len_q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \fix_len_q[0]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(fix_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \fix_len_q[2]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(fix_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fix_len_q[3]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(fix_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \fix_len_q[4]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(\fix_len_q[4]_i_1_n_0 ));
  FDRE \fix_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_len[0]),
        .Q(fix_len_q[0]),
        .R(SR));
  FDRE \fix_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awsize[2]),
        .Q(fix_len_q[1]),
        .R(SR));
  FDRE \fix_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_len[2]),
        .Q(fix_len_q[2]),
        .R(SR));
  FDRE \fix_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_len[3]),
        .Q(fix_len_q[3]),
        .R(SR));
  FDRE \fix_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\fix_len_q[4]_i_1_n_0 ),
        .Q(fix_len_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h11111000)) 
    fix_need_to_split_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(fix_need_to_split));
  FDRE fix_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(fix_need_to_split),
        .Q(fix_need_to_split_q),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split_q_i_1
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .I2(\num_transactions_q[1]_i_1_n_0 ),
        .I3(num_transactions[0]),
        .I4(num_transactions[3]),
        .I5(\num_transactions_q[2]_i_1_n_0 ),
        .O(incr_need_to_split));
  FDRE incr_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(incr_need_to_split),
        .Q(incr_need_to_split_q),
        .R(SR));
  CARRY4 last_incr_split0_carry
       (.CI(1'b0),
        .CO({NLW_last_incr_split0_carry_CO_UNCONNECTED[3],last_incr_split0,last_incr_split0_carry_n_2,last_incr_split0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_incr_split0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,\USE_B_CHANNEL.cmd_b_queue_n_16 ,\USE_B_CHANNEL.cmd_b_queue_n_17 ,\USE_B_CHANNEL.cmd_b_queue_n_18 }));
  LUT6 #(
    .INIT(64'h00000000555555F7)) 
    legal_wrap_len_q_i_1
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awlen[1]),
        .I2(legal_wrap_len_q_i_2_n_0),
        .I3(legal_wrap_len_q_i_3_n_0),
        .I4(s_axi_awlen[2]),
        .I5(legal_wrap_len_q_i_4_n_0),
        .O(legal_wrap_len_q_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h1)) 
    legal_wrap_len_q_i_2
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .O(legal_wrap_len_q_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    legal_wrap_len_q_i_3
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[0]),
        .O(legal_wrap_len_q_i_3_n_0));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    legal_wrap_len_q_i_4
       (.I0(access_fit_mi_side_q_i_1_n_0),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awlen[4]),
        .I5(s_axi_awlen[5]),
        .O(legal_wrap_len_q_i_4_n_0));
  FDRE legal_wrap_len_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(legal_wrap_len_q_i_1_n_0),
        .Q(legal_wrap_len_q),
        .R(SR));
  LUT5 #(
    .INIT(32'h00AAE2AA)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[0]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .O(m_axi_awaddr[0]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[10]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .O(m_axi_awaddr[10]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[11]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .O(m_axi_awaddr[11]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[12]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .O(m_axi_awaddr[12]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[13]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .O(m_axi_awaddr[13]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[14]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .O(m_axi_awaddr[14]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[15]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .O(m_axi_awaddr[15]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[16]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .O(m_axi_awaddr[16]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[17]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .O(m_axi_awaddr[17]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[18]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .O(m_axi_awaddr[18]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[19]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .O(m_axi_awaddr[19]));
  LUT5 #(
    .INIT(32'h00AAE2AA)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[1]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .O(m_axi_awaddr[1]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[20]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .O(m_axi_awaddr[20]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[21]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .O(m_axi_awaddr[21]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[22]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .O(m_axi_awaddr[22]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[23]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .O(m_axi_awaddr[23]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[24]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .O(m_axi_awaddr[24]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[25]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .O(m_axi_awaddr[25]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[26]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .O(m_axi_awaddr[26]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[27]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .O(m_axi_awaddr[27]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[28]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .O(m_axi_awaddr[28]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[29]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .O(m_axi_awaddr[29]));
  LUT6 #(
    .INIT(64'hFF00B8B8F0F0F0F0)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(masked_addr_q[2]),
        .I1(access_is_wrap_q),
        .I2(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .I3(next_mi_addr[2]),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(m_axi_awaddr[2]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[30]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .O(m_axi_awaddr[30]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[31]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .O(m_axi_awaddr[31]));
  LUT6 #(
    .INIT(64'hFF00B8B8F0F0F0F0)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(masked_addr_q[3]),
        .I1(access_is_wrap_q),
        .I2(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .I3(next_mi_addr[3]),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(m_axi_awaddr[3]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(next_mi_addr[4]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[4]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .O(m_axi_awaddr[4]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[5]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .O(m_axi_awaddr[5]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[6]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .O(m_axi_awaddr[6]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[7]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .O(m_axi_awaddr[7]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[8]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .O(m_axi_awaddr[8]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_awaddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[9]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .O(m_axi_awaddr[9]));
  LUT5 #(
    .INIT(32'hAAAAEFEE)) 
    \m_axi_awburst[0]_INST_0 
       (.I0(S_AXI_ABURST_Q[0]),
        .I1(access_is_fix_q),
        .I2(legal_wrap_len_q),
        .I3(access_is_wrap_q),
        .I4(access_fit_mi_side_q),
        .O(m_axi_awburst[0]));
  LUT5 #(
    .INIT(32'hAAAA2022)) 
    \m_axi_awburst[1]_INST_0 
       (.I0(S_AXI_ABURST_Q[1]),
        .I1(access_is_fix_q),
        .I2(legal_wrap_len_q),
        .I3(access_is_wrap_q),
        .I4(access_fit_mi_side_q),
        .O(m_axi_awburst[1]));
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axi_awlock[0]_INST_0 
       (.I0(S_AXI_ALOCK_Q),
        .I1(wrap_need_to_split_q),
        .I2(incr_need_to_split_q),
        .I3(fix_need_to_split_q),
        .O(m_axi_awlock));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \masked_addr_q[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(s_axi_awlen[0]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(masked_addr[0]));
  LUT6 #(
    .INIT(64'h00002AAAAAAA2AAA)) 
    \masked_addr_q[10]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awsize[2]),
        .I5(\num_transactions_q[0]_i_2_n_0 ),
        .O(masked_addr[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[11]_i_1 
       (.I0(s_axi_awaddr[11]),
        .I1(\num_transactions_q[1]_i_1_n_0 ),
        .O(masked_addr[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[12]_i_1 
       (.I0(s_axi_awaddr[12]),
        .I1(\num_transactions_q[2]_i_1_n_0 ),
        .O(masked_addr[12]));
  LUT6 #(
    .INIT(64'h202AAAAAAAAAAAAA)) 
    \masked_addr_q[13]_i_1 
       (.I0(s_axi_awaddr[13]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(masked_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \masked_addr_q[14]_i_1 
       (.I0(s_axi_awaddr[14]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(masked_addr[14]));
  LUT6 #(
    .INIT(64'h0002000000020202)) 
    \masked_addr_q[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[1]),
        .O(masked_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \masked_addr_q[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(\masked_addr_q[2]_i_2_n_0 ),
        .O(masked_addr[2]));
  LUT6 #(
    .INIT(64'h0000015105050151)) 
    \masked_addr_q[2]_i_2 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awlen[0]),
        .O(\masked_addr_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \masked_addr_q[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\masked_addr_q[3]_i_2_n_0 ),
        .O(masked_addr[3]));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \masked_addr_q[3]_i_2 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awsize[1]),
        .I5(\masked_addr_q[3]_i_3_n_0 ),
        .O(\masked_addr_q[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[3]_i_3 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[1]),
        .O(\masked_addr_q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02020202020202A2)) 
    \masked_addr_q[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awsize[1]),
        .O(masked_addr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[4]_i_2 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[3]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[4]),
        .O(\masked_addr_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(\masked_addr_q[5]_i_2_n_0 ),
        .O(masked_addr[5]));
  LUT6 #(
    .INIT(64'hFEAEFFFFFEAE0000)) 
    \masked_addr_q[5]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[2]),
        .I5(\downsized_len_q[7]_i_2_n_0 ),
        .O(\masked_addr_q[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \masked_addr_q[6]_i_1 
       (.I0(\masked_addr_q[6]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\num_transactions_q[0]_i_2_n_0 ),
        .I3(s_axi_awaddr[6]),
        .O(masked_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \masked_addr_q[6]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[2]),
        .O(\masked_addr_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \masked_addr_q[7]_i_1 
       (.I0(\masked_addr_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\masked_addr_q[7]_i_3_n_0 ),
        .I3(s_axi_awaddr[7]),
        .O(masked_addr[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[7]_i_2 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[3]),
        .O(\masked_addr_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[7]_i_3 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[6]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[7]),
        .O(\masked_addr_q[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[8]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(\masked_addr_q[8]_i_2_n_0 ),
        .O(masked_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[8]_i_2 
       (.I0(\masked_addr_q[4]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(\masked_addr_q[8]_i_3_n_0 ),
        .O(\masked_addr_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \masked_addr_q[8]_i_3 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[7]),
        .O(\masked_addr_q[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[9]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(\masked_addr_q[9]_i_2_n_0 ),
        .O(masked_addr[9]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \masked_addr_q[9]_i_2 
       (.I0(\downsized_len_q[7]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[6]),
        .I5(s_axi_awsize[1]),
        .O(\masked_addr_q[9]_i_2_n_0 ));
  FDRE \masked_addr_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[0]),
        .Q(masked_addr_q[0]),
        .R(SR));
  FDRE \masked_addr_q_reg[10] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[10]),
        .Q(masked_addr_q[10]),
        .R(SR));
  FDRE \masked_addr_q_reg[11] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[11]),
        .Q(masked_addr_q[11]),
        .R(SR));
  FDRE \masked_addr_q_reg[12] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[12]),
        .Q(masked_addr_q[12]),
        .R(SR));
  FDRE \masked_addr_q_reg[13] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[13]),
        .Q(masked_addr_q[13]),
        .R(SR));
  FDRE \masked_addr_q_reg[14] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[14]),
        .Q(masked_addr_q[14]),
        .R(SR));
  FDRE \masked_addr_q_reg[15] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[15]),
        .Q(masked_addr_q[15]),
        .R(SR));
  FDRE \masked_addr_q_reg[16] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[16]),
        .Q(masked_addr_q[16]),
        .R(SR));
  FDRE \masked_addr_q_reg[17] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[17]),
        .Q(masked_addr_q[17]),
        .R(SR));
  FDRE \masked_addr_q_reg[18] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[18]),
        .Q(masked_addr_q[18]),
        .R(SR));
  FDRE \masked_addr_q_reg[19] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[19]),
        .Q(masked_addr_q[19]),
        .R(SR));
  FDRE \masked_addr_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[1]),
        .Q(masked_addr_q[1]),
        .R(SR));
  FDRE \masked_addr_q_reg[20] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[20]),
        .Q(masked_addr_q[20]),
        .R(SR));
  FDRE \masked_addr_q_reg[21] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[21]),
        .Q(masked_addr_q[21]),
        .R(SR));
  FDRE \masked_addr_q_reg[22] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[22]),
        .Q(masked_addr_q[22]),
        .R(SR));
  FDRE \masked_addr_q_reg[23] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[23]),
        .Q(masked_addr_q[23]),
        .R(SR));
  FDRE \masked_addr_q_reg[24] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[24]),
        .Q(masked_addr_q[24]),
        .R(SR));
  FDRE \masked_addr_q_reg[25] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[25]),
        .Q(masked_addr_q[25]),
        .R(SR));
  FDRE \masked_addr_q_reg[26] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[26]),
        .Q(masked_addr_q[26]),
        .R(SR));
  FDRE \masked_addr_q_reg[27] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[27]),
        .Q(masked_addr_q[27]),
        .R(SR));
  FDRE \masked_addr_q_reg[28] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[28]),
        .Q(masked_addr_q[28]),
        .R(SR));
  FDRE \masked_addr_q_reg[29] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[29]),
        .Q(masked_addr_q[29]),
        .R(SR));
  FDRE \masked_addr_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[2]),
        .Q(masked_addr_q[2]),
        .R(SR));
  FDRE \masked_addr_q_reg[30] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[30]),
        .Q(masked_addr_q[30]),
        .R(SR));
  FDRE \masked_addr_q_reg[31] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(s_axi_awaddr[31]),
        .Q(masked_addr_q[31]),
        .R(SR));
  FDRE \masked_addr_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[3]),
        .Q(masked_addr_q[3]),
        .R(SR));
  FDRE \masked_addr_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[4]),
        .Q(masked_addr_q[4]),
        .R(SR));
  FDRE \masked_addr_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[5]),
        .Q(masked_addr_q[5]),
        .R(SR));
  FDRE \masked_addr_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[6]),
        .Q(masked_addr_q[6]),
        .R(SR));
  FDRE \masked_addr_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[7]),
        .Q(masked_addr_q[7]),
        .R(SR));
  FDRE \masked_addr_q_reg[8] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[8]),
        .Q(masked_addr_q[8]),
        .R(SR));
  FDRE \masked_addr_q_reg[9] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(masked_addr[9]),
        .Q(masked_addr_q[9]),
        .R(SR));
  CARRY4 next_mi_addr0_carry
       (.CI(1'b0),
        .CO({next_mi_addr0_carry_n_0,next_mi_addr0_carry_n_1,next_mi_addr0_carry_n_2,next_mi_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,next_mi_addr0_carry_i_1_n_0,1'b0}),
        .O({next_mi_addr0_carry_n_4,next_mi_addr0_carry_n_5,next_mi_addr0_carry_n_6,next_mi_addr0_carry_n_7}),
        .S({next_mi_addr0_carry_i_2_n_0,next_mi_addr0_carry_i_3_n_0,next_mi_addr0_carry_i_4_n_0,next_mi_addr0_carry_i_5_n_0}));
  CARRY4 next_mi_addr0_carry__0
       (.CI(next_mi_addr0_carry_n_0),
        .CO({next_mi_addr0_carry__0_n_0,next_mi_addr0_carry__0_n_1,next_mi_addr0_carry__0_n_2,next_mi_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__0_n_4,next_mi_addr0_carry__0_n_5,next_mi_addr0_carry__0_n_6,next_mi_addr0_carry__0_n_7}),
        .S({next_mi_addr0_carry__0_i_1_n_0,next_mi_addr0_carry__0_i_2_n_0,next_mi_addr0_carry__0_i_3_n_0,next_mi_addr0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_1
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[16]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[16]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_2
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[15]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[15]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_3
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[14]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[14]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_4
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[13]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[13]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_4_n_0));
  CARRY4 next_mi_addr0_carry__1
       (.CI(next_mi_addr0_carry__0_n_0),
        .CO({next_mi_addr0_carry__1_n_0,next_mi_addr0_carry__1_n_1,next_mi_addr0_carry__1_n_2,next_mi_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__1_n_4,next_mi_addr0_carry__1_n_5,next_mi_addr0_carry__1_n_6,next_mi_addr0_carry__1_n_7}),
        .S({next_mi_addr0_carry__1_i_1_n_0,next_mi_addr0_carry__1_i_2_n_0,next_mi_addr0_carry__1_i_3_n_0,next_mi_addr0_carry__1_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_1
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[20]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[20]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_2
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[19]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[19]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_3
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[18]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[18]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_4
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[17]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[17]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_4_n_0));
  CARRY4 next_mi_addr0_carry__2
       (.CI(next_mi_addr0_carry__1_n_0),
        .CO({next_mi_addr0_carry__2_n_0,next_mi_addr0_carry__2_n_1,next_mi_addr0_carry__2_n_2,next_mi_addr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__2_n_4,next_mi_addr0_carry__2_n_5,next_mi_addr0_carry__2_n_6,next_mi_addr0_carry__2_n_7}),
        .S({next_mi_addr0_carry__2_i_1_n_0,next_mi_addr0_carry__2_i_2_n_0,next_mi_addr0_carry__2_i_3_n_0,next_mi_addr0_carry__2_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_1
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[24]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[24]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_2
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[23]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[23]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_3
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[22]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[22]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_4
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[21]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[21]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_4_n_0));
  CARRY4 next_mi_addr0_carry__3
       (.CI(next_mi_addr0_carry__2_n_0),
        .CO({next_mi_addr0_carry__3_n_0,next_mi_addr0_carry__3_n_1,next_mi_addr0_carry__3_n_2,next_mi_addr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__3_n_4,next_mi_addr0_carry__3_n_5,next_mi_addr0_carry__3_n_6,next_mi_addr0_carry__3_n_7}),
        .S({next_mi_addr0_carry__3_i_1_n_0,next_mi_addr0_carry__3_i_2_n_0,next_mi_addr0_carry__3_i_3_n_0,next_mi_addr0_carry__3_i_4_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_1
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[28]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[28]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_2
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[27]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[27]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_3
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[26]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[26]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_4
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[25]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[25]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_4_n_0));
  CARRY4 next_mi_addr0_carry__4
       (.CI(next_mi_addr0_carry__3_n_0),
        .CO({NLW_next_mi_addr0_carry__4_CO_UNCONNECTED[3:2],next_mi_addr0_carry__4_n_2,next_mi_addr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_mi_addr0_carry__4_O_UNCONNECTED[3],next_mi_addr0_carry__4_n_5,next_mi_addr0_carry__4_n_6,next_mi_addr0_carry__4_n_7}),
        .S({1'b0,next_mi_addr0_carry__4_i_1_n_0,next_mi_addr0_carry__4_i_2_n_0,next_mi_addr0_carry__4_i_3_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__4_i_1
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[31]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[31]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__4_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__4_i_2
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[30]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[30]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__4_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__4_i_3
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[29]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[29]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__4_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_1
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[10]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[10]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_2
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[12]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[12]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_3
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[11]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[11]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h757F7575757F7F7F)) 
    next_mi_addr0_carry_i_4
       (.I0(size_mask_q[3]),
        .I1(next_mi_addr[10]),
        .I2(cmd_queue_n_21),
        .I3(masked_addr_q[10]),
        .I4(cmd_queue_n_22),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .O(next_mi_addr0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_5
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[9]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[9]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hDDD888D800000000)) 
    \next_mi_addr[2]_i_1 
       (.I0(cmd_queue_n_21),
        .I1(next_mi_addr[2]),
        .I2(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .I3(cmd_queue_n_22),
        .I4(masked_addr_q[2]),
        .I5(access_fit_mi_side_q),
        .O(\next_mi_addr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2808080A280)) 
    \next_mi_addr[3]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[3] ),
        .I1(cmd_queue_n_21),
        .I2(next_mi_addr[3]),
        .I3(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .I4(cmd_queue_n_22),
        .I5(masked_addr_q[3]),
        .O(pre_mi_addr[3]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[4]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[4] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .I2(cmd_queue_n_22),
        .I3(masked_addr_q[4]),
        .I4(cmd_queue_n_21),
        .I5(next_mi_addr[4]),
        .O(pre_mi_addr[4]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[5]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[5] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .I2(cmd_queue_n_22),
        .I3(masked_addr_q[5]),
        .I4(cmd_queue_n_21),
        .I5(next_mi_addr[5]),
        .O(pre_mi_addr[5]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[6]_i_1 
       (.I0(\split_addr_mask_q_reg_n_0_[6] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .I2(cmd_queue_n_22),
        .I3(masked_addr_q[6]),
        .I4(cmd_queue_n_21),
        .I5(next_mi_addr[6]),
        .O(pre_mi_addr[6]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \next_mi_addr[7]_i_1 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[7]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[7]),
        .I5(size_mask_q[3]),
        .O(\next_mi_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \next_mi_addr[8]_i_1 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .I1(cmd_queue_n_22),
        .I2(masked_addr_q[8]),
        .I3(cmd_queue_n_21),
        .I4(next_mi_addr[8]),
        .I5(size_mask_q[3]),
        .O(\next_mi_addr[8]_i_1_n_0 ));
  FDRE \next_mi_addr_reg[10] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_6),
        .Q(next_mi_addr[10]),
        .R(SR));
  FDRE \next_mi_addr_reg[11] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_5),
        .Q(next_mi_addr[11]),
        .R(SR));
  FDRE \next_mi_addr_reg[12] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_4),
        .Q(next_mi_addr[12]),
        .R(SR));
  FDRE \next_mi_addr_reg[13] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_7),
        .Q(next_mi_addr[13]),
        .R(SR));
  FDRE \next_mi_addr_reg[14] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_6),
        .Q(next_mi_addr[14]),
        .R(SR));
  FDRE \next_mi_addr_reg[15] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_5),
        .Q(next_mi_addr[15]),
        .R(SR));
  FDRE \next_mi_addr_reg[16] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_4),
        .Q(next_mi_addr[16]),
        .R(SR));
  FDRE \next_mi_addr_reg[17] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_7),
        .Q(next_mi_addr[17]),
        .R(SR));
  FDRE \next_mi_addr_reg[18] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_6),
        .Q(next_mi_addr[18]),
        .R(SR));
  FDRE \next_mi_addr_reg[19] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_5),
        .Q(next_mi_addr[19]),
        .R(SR));
  FDRE \next_mi_addr_reg[20] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_4),
        .Q(next_mi_addr[20]),
        .R(SR));
  FDRE \next_mi_addr_reg[21] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_7),
        .Q(next_mi_addr[21]),
        .R(SR));
  FDRE \next_mi_addr_reg[22] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_6),
        .Q(next_mi_addr[22]),
        .R(SR));
  FDRE \next_mi_addr_reg[23] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_5),
        .Q(next_mi_addr[23]),
        .R(SR));
  FDRE \next_mi_addr_reg[24] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_4),
        .Q(next_mi_addr[24]),
        .R(SR));
  FDRE \next_mi_addr_reg[25] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_7),
        .Q(next_mi_addr[25]),
        .R(SR));
  FDRE \next_mi_addr_reg[26] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_6),
        .Q(next_mi_addr[26]),
        .R(SR));
  FDRE \next_mi_addr_reg[27] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_5),
        .Q(next_mi_addr[27]),
        .R(SR));
  FDRE \next_mi_addr_reg[28] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_4),
        .Q(next_mi_addr[28]),
        .R(SR));
  FDRE \next_mi_addr_reg[29] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__4_n_7),
        .Q(next_mi_addr[29]),
        .R(SR));
  FDRE \next_mi_addr_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr[2]_i_1_n_0 ),
        .Q(next_mi_addr[2]),
        .R(SR));
  FDRE \next_mi_addr_reg[30] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__4_n_6),
        .Q(next_mi_addr[30]),
        .R(SR));
  FDRE \next_mi_addr_reg[31] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__4_n_5),
        .Q(next_mi_addr[31]),
        .R(SR));
  FDRE \next_mi_addr_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[3]),
        .Q(next_mi_addr[3]),
        .R(SR));
  FDRE \next_mi_addr_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[4]),
        .Q(next_mi_addr[4]),
        .R(SR));
  FDRE \next_mi_addr_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[5]),
        .Q(next_mi_addr[5]),
        .R(SR));
  FDRE \next_mi_addr_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[6]),
        .Q(next_mi_addr[6]),
        .R(SR));
  FDRE \next_mi_addr_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr[7]_i_1_n_0 ),
        .Q(next_mi_addr[7]),
        .R(SR));
  FDRE \next_mi_addr_reg[8] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr[8]_i_1_n_0 ),
        .Q(next_mi_addr[8]),
        .R(SR));
  FDRE \next_mi_addr_reg[9] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_7),
        .Q(next_mi_addr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hB8888888)) 
    \num_transactions_q[0]_i_1 
       (.I0(\num_transactions_q[0]_i_2_n_0 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize[1]),
        .O(num_transactions[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \num_transactions_q[0]_i_2 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[5]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[6]),
        .O(\num_transactions_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \num_transactions_q[1]_i_1 
       (.I0(\num_transactions_q[1]_i_2_n_0 ),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[4]),
        .I5(s_axi_awsize[2]),
        .O(\num_transactions_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \num_transactions_q[1]_i_2 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[7]),
        .O(\num_transactions_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \num_transactions_q[2]_i_1 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awlen[6]),
        .I4(s_axi_awlen[5]),
        .I5(s_axi_awsize[2]),
        .O(\num_transactions_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h88800080)) 
    \num_transactions_q[3]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[7]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[6]),
        .O(num_transactions[3]));
  FDRE \num_transactions_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(num_transactions[0]),
        .Q(\num_transactions_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \num_transactions_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\num_transactions_q[1]_i_1_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \num_transactions_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(\num_transactions_q[2]_i_1_n_0 ),
        .Q(\num_transactions_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \num_transactions_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(num_transactions[3]),
        .Q(\num_transactions_q_reg_n_0_[3] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1 
       (.I0(pushed_commands_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1 
       (.I0(pushed_commands_reg__0[0]),
        .I1(pushed_commands_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[2]_i_1 
       (.I0(pushed_commands_reg__0[2]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pushed_commands[3]_i_1 
       (.I0(pushed_commands_reg__0[3]),
        .I1(pushed_commands_reg__0[2]),
        .I2(pushed_commands_reg__0[0]),
        .I3(pushed_commands_reg__0[1]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pushed_commands[4]_i_1 
       (.I0(pushed_commands_reg__0[4]),
        .I1(pushed_commands_reg__0[1]),
        .I2(pushed_commands_reg__0[0]),
        .I3(pushed_commands_reg__0[2]),
        .I4(pushed_commands_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pushed_commands[5]_i_1 
       (.I0(pushed_commands_reg__0[5]),
        .I1(pushed_commands_reg__0[3]),
        .I2(pushed_commands_reg__0[2]),
        .I3(pushed_commands_reg__0[0]),
        .I4(pushed_commands_reg__0[1]),
        .I5(pushed_commands_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[6]_i_1 
       (.I0(pushed_commands_reg__0[6]),
        .I1(\pushed_commands[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[7]_i_1 
       (.I0(s_axi_awready),
        .I1(out),
        .O(\pushed_commands[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[7]_i_2 
       (.I0(pushed_commands_reg__0[7]),
        .I1(\pushed_commands[7]_i_3_n_0 ),
        .I2(pushed_commands_reg__0[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pushed_commands[7]_i_3 
       (.I0(pushed_commands_reg__0[5]),
        .I1(pushed_commands_reg__0[3]),
        .I2(pushed_commands_reg__0[2]),
        .I3(pushed_commands_reg__0[0]),
        .I4(pushed_commands_reg__0[1]),
        .I5(pushed_commands_reg__0[4]),
        .O(\pushed_commands[7]_i_3_n_0 ));
  FDRE \pushed_commands_reg[0] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[0]),
        .Q(pushed_commands_reg__0[0]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[1] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[1]),
        .Q(pushed_commands_reg__0[1]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[2]),
        .Q(pushed_commands_reg__0[2]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[3]),
        .Q(pushed_commands_reg__0[3]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[4]),
        .Q(pushed_commands_reg__0[4]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[5]),
        .Q(pushed_commands_reg__0[5]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[6]),
        .Q(pushed_commands_reg__0[6]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \pushed_commands_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in[7]),
        .Q(pushed_commands_reg__0[7]),
        .R(\pushed_commands[7]_i_1_n_0 ));
  FDRE \queue_id_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\USE_B_CHANNEL.cmd_b_queue_n_22 ),
        .Q(s_axi_bid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h10)) 
    si_full_size_q_i_1
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(si_full_size_q_i_1_n_0));
  FDRE si_full_size_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(si_full_size_q_i_1_n_0),
        .Q(si_full_size_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(size_mask));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(split_addr_mask[1]));
  FDRE \size_mask_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(size_mask),
        .Q(size_mask_q[0]),
        .R(SR));
  FDRE \size_mask_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[1]),
        .Q(size_mask_q[1]),
        .R(SR));
  FDRE \size_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(1'b1),
        .Q(size_mask_q[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \split_addr_mask_q[3]_i_1 
       (.I0(s_axi_awsize[2]),
        .O(split_addr_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \split_addr_mask_q[4]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(split_addr_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \split_addr_mask_q[5]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .O(split_addr_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \split_addr_mask_q[6]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .O(split_addr_mask[6]));
  FDRE \split_addr_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[3]),
        .Q(\split_addr_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[4]),
        .Q(\split_addr_mask_q_reg_n_0_[4] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[5]),
        .Q(\split_addr_mask_q_reg_n_0_[5] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(split_addr_mask[6]),
        .Q(\split_addr_mask_q_reg_n_0_[6] ),
        .R(SR));
  FDRE split_ongoing_reg
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(cmd_split_i),
        .Q(split_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \unalignment_addr_q[0]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .O(unalignment_addr[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \unalignment_addr_q[1]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awsize[2]),
        .O(unalignment_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \unalignment_addr_q[2]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .O(unalignment_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \unalignment_addr_q[3]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(unalignment_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \unalignment_addr_q[4]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .O(unalignment_addr[4]));
  FDRE \unalignment_addr_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[0]),
        .Q(unalignment_addr_q[0]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[1]),
        .Q(unalignment_addr_q[1]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[2]),
        .Q(unalignment_addr_q[2]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[3]),
        .Q(unalignment_addr_q[3]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(unalignment_addr[4]),
        .Q(unalignment_addr_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    wrap_need_to_split_q_i_1
       (.I0(wrap_need_to_split_q_i_2_n_0),
        .I1(wrap_need_to_split_q_i_3_n_0),
        .I2(s_axi_awburst[1]),
        .I3(s_axi_awburst[0]),
        .I4(legal_wrap_len_q_i_1_n_0),
        .O(wrap_need_to_split));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFAEFFAE)) 
    wrap_need_to_split_q_i_2
       (.I0(wrap_unaligned_len[0]),
        .I1(s_axi_awaddr[3]),
        .I2(\masked_addr_q[3]_i_2_n_0 ),
        .I3(wrap_unaligned_len[2]),
        .I4(s_axi_awaddr[5]),
        .I5(\masked_addr_q[5]_i_2_n_0 ),
        .O(wrap_need_to_split_q_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    wrap_need_to_split_q_i_3
       (.I0(s_axi_awaddr[8]),
        .I1(\masked_addr_q[8]_i_2_n_0 ),
        .I2(s_axi_awaddr[9]),
        .I3(\masked_addr_q[9]_i_2_n_0 ),
        .I4(wrap_unaligned_len[4]),
        .I5(wrap_unaligned_len[5]),
        .O(wrap_need_to_split_q_i_3_n_0));
  FDRE wrap_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_need_to_split),
        .Q(wrap_need_to_split_q),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wrap_rest_len[0]_i_1 
       (.I0(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_rest_len[1]_i_1 
       (.I0(wrap_unaligned_len_q[1]),
        .I1(wrap_unaligned_len_q[0]),
        .O(\wrap_rest_len[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wrap_rest_len[2]_i_1 
       (.I0(wrap_unaligned_len_q[2]),
        .I1(wrap_unaligned_len_q[0]),
        .I2(wrap_unaligned_len_q[1]),
        .O(wrap_rest_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wrap_rest_len[3]_i_1 
       (.I0(wrap_unaligned_len_q[3]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[3]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wrap_rest_len[4]_i_1 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[3]),
        .I2(wrap_unaligned_len_q[0]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[2]),
        .O(wrap_rest_len0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wrap_rest_len[5]_i_1 
       (.I0(wrap_unaligned_len_q[5]),
        .I1(wrap_unaligned_len_q[4]),
        .I2(wrap_unaligned_len_q[2]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[0]),
        .I5(wrap_unaligned_len_q[3]),
        .O(wrap_rest_len0[5]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wrap_rest_len[6]_i_1 
       (.I0(wrap_unaligned_len_q[6]),
        .I1(\wrap_rest_len[7]_i_2_n_0 ),
        .O(wrap_rest_len0[6]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wrap_rest_len[7]_i_1 
       (.I0(wrap_unaligned_len_q[7]),
        .I1(wrap_unaligned_len_q[6]),
        .I2(\wrap_rest_len[7]_i_2_n_0 ),
        .O(wrap_rest_len0[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wrap_rest_len[7]_i_2 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .I4(wrap_unaligned_len_q[3]),
        .I5(wrap_unaligned_len_q[5]),
        .O(\wrap_rest_len[7]_i_2_n_0 ));
  FDRE \wrap_rest_len_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[0]),
        .Q(wrap_rest_len[0]),
        .R(SR));
  FDRE \wrap_rest_len_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wrap_rest_len[1]_i_1_n_0 ),
        .Q(wrap_rest_len[1]),
        .R(SR));
  FDRE \wrap_rest_len_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[2]),
        .Q(wrap_rest_len[2]),
        .R(SR));
  FDRE \wrap_rest_len_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[3]),
        .Q(wrap_rest_len[3]),
        .R(SR));
  FDRE \wrap_rest_len_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[4]),
        .Q(wrap_rest_len[4]),
        .R(SR));
  FDRE \wrap_rest_len_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[5]),
        .Q(wrap_rest_len[5]),
        .R(SR));
  FDRE \wrap_rest_len_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[6]),
        .Q(wrap_rest_len[6]),
        .R(SR));
  FDRE \wrap_rest_len_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[7]),
        .Q(wrap_rest_len[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wrap_unaligned_len_q[0]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(\masked_addr_q[2]_i_2_n_0 ),
        .O(wrap_unaligned_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wrap_unaligned_len_q[1]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(\masked_addr_q[3]_i_2_n_0 ),
        .O(wrap_unaligned_len[1]));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A808)) 
    \wrap_unaligned_len_q[2]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(\masked_addr_q[4]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awsize[1]),
        .O(wrap_unaligned_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[3]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(\masked_addr_q[5]_i_2_n_0 ),
        .O(wrap_unaligned_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \wrap_unaligned_len_q[4]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(\num_transactions_q[0]_i_2_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(\masked_addr_q[6]_i_2_n_0 ),
        .O(wrap_unaligned_len[4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \wrap_unaligned_len_q[5]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(\masked_addr_q[7]_i_3_n_0 ),
        .I2(s_axi_awsize[2]),
        .I3(\masked_addr_q[7]_i_2_n_0 ),
        .O(wrap_unaligned_len[5]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[6]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(\masked_addr_q[8]_i_2_n_0 ),
        .O(wrap_unaligned_len[6]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[7]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(\masked_addr_q[9]_i_2_n_0 ),
        .O(wrap_unaligned_len[7]));
  FDRE \wrap_unaligned_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[0]),
        .Q(wrap_unaligned_len_q[0]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[1]),
        .Q(wrap_unaligned_len_q[1]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[2]),
        .Q(wrap_unaligned_len_q[2]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[3]),
        .Q(wrap_unaligned_len_q[3]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[4]),
        .Q(wrap_unaligned_len_q[4]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[5]),
        .Q(wrap_unaligned_len_q[5]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[6]),
        .Q(wrap_unaligned_len_q[6]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_awready),
        .D(wrap_unaligned_len[7]),
        .Q(wrap_unaligned_len_q[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_8_a_downsizer" *) 
module top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer__parameterized0
   (dout,
    \m_axi_arsize[2] ,
    s_axi_arready,
    s_axi_rid,
    s_axi_rlast,
    m_axi_arvalid,
    m_axi_araddr,
    E,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63] ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95] ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127] ,
    first_mi_word_reg,
    m_axi_rready,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ,
    s_axi_rvalid,
    D,
    s_axi_rdata,
    \S_AXI_RRESP_ACC_reg[0] ,
    m_axi_arlock,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    CLK,
    SR,
    rd_en,
    s_axi_arid,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_arburst,
    m_axi_rlast,
    s_axi_araddr,
    m_axi_arready,
    out,
    s_axi_rready,
    \goreg_dm.dout_i_reg[9] ,
    first_word,
    Q,
    \goreg_dm.dout_i_reg[8] ,
    \current_word_1_reg[3] ,
    m_axi_rdata,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ,
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ,
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ,
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ,
    \S_AXI_RRESP_ACC_reg[0]_0 ,
    m_axi_rvalid,
    areset_d,
    s_axi_arvalid,
    \areset_d_reg[1] ,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos);
  output [8:0]dout;
  output [10:0]\m_axi_arsize[2] ;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output s_axi_rlast;
  output m_axi_arvalid;
  output [31:0]m_axi_araddr;
  output [0:0]E;
  output \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  output [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  output [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  output [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  output [0:0]first_mi_word_reg;
  output m_axi_rready;
  output [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  output s_axi_rvalid;
  output [3:0]D;
  output [127:0]s_axi_rdata;
  output \S_AXI_RRESP_ACC_reg[0] ;
  output [0:0]m_axi_arlock;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  input CLK;
  input [0:0]SR;
  input rd_en;
  input [0:0]s_axi_arid;
  input [0:0]s_axi_arlock;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input m_axi_rlast;
  input [31:0]s_axi_araddr;
  input m_axi_arready;
  input out;
  input s_axi_rready;
  input \goreg_dm.dout_i_reg[9] ;
  input first_word;
  input [0:0]Q;
  input \goreg_dm.dout_i_reg[8] ;
  input [3:0]\current_word_1_reg[3] ;
  input [31:0]m_axi_rdata;
  input [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ;
  input [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  input [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  input [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  input \S_AXI_RRESP_ACC_reg[0]_0 ;
  input m_axi_rvalid;
  input [1:0]areset_d;
  input s_axi_arvalid;
  input \areset_d_reg[1] ;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \S_AXI_AADDR_Q_reg_n_0_[0] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[10] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[11] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[12] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[13] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[14] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[15] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[16] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[17] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[18] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[19] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[1] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[20] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[21] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[22] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[23] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[24] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[25] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[26] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[27] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[28] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[29] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[2] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[30] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[31] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[3] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[4] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[5] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[6] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[7] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[8] ;
  wire \S_AXI_AADDR_Q_reg_n_0_[9] ;
  wire [1:0]S_AXI_ABURST_Q;
  wire S_AXI_AID_Q;
  wire \S_AXI_ALEN_Q_reg_n_0_[4] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[5] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[6] ;
  wire \S_AXI_ALEN_Q_reg_n_0_[7] ;
  wire [0:0]S_AXI_ALOCK_Q;
  wire [2:0]S_AXI_ASIZE_Q;
  wire \S_AXI_RRESP_ACC_reg[0] ;
  wire \S_AXI_RRESP_ACC_reg[0]_0 ;
  wire \WORD_LANE[0].S_AXI_RDATA_II_reg[31] ;
  wire [0:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ;
  wire [0:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ;
  wire [0:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ;
  wire [0:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ;
  wire access_fit_mi_side_q;
  wire access_fit_mi_side_q_i_1__0_n_0;
  wire access_is_fix;
  wire access_is_fix_q;
  wire access_is_incr;
  wire access_is_incr_q;
  wire access_is_wrap;
  wire access_is_wrap_q;
  wire [1:0]areset_d;
  wire \areset_d_reg[1] ;
  wire cmd_length_i_carry__0_n_1;
  wire cmd_length_i_carry__0_n_2;
  wire cmd_length_i_carry__0_n_3;
  wire cmd_length_i_carry_n_0;
  wire cmd_length_i_carry_n_1;
  wire cmd_length_i_carry_n_2;
  wire cmd_length_i_carry_n_3;
  wire cmd_mask_q;
  wire \cmd_mask_q[0]_i_1__0_n_0 ;
  wire \cmd_mask_q[1]_i_1__0_n_0 ;
  wire \cmd_mask_q[2]_i_1__0_n_0 ;
  wire \cmd_mask_q[3]_i_1__0_n_0 ;
  wire \cmd_mask_q_reg_n_0_[0] ;
  wire \cmd_mask_q_reg_n_0_[1] ;
  wire \cmd_mask_q_reg_n_0_[2] ;
  wire \cmd_mask_q_reg_n_0_[3] ;
  wire cmd_push_block;
  wire cmd_queue_n_16;
  wire cmd_queue_n_17;
  wire cmd_queue_n_170;
  wire cmd_queue_n_171;
  wire cmd_queue_n_172;
  wire cmd_queue_n_173;
  wire cmd_queue_n_174;
  wire cmd_queue_n_175;
  wire cmd_queue_n_176;
  wire cmd_queue_n_177;
  wire cmd_queue_n_178;
  wire cmd_queue_n_179;
  wire cmd_queue_n_18;
  wire cmd_queue_n_180;
  wire cmd_queue_n_181;
  wire cmd_queue_n_19;
  wire cmd_queue_n_20;
  wire cmd_queue_n_21;
  wire cmd_queue_n_22;
  wire cmd_queue_n_23;
  wire cmd_queue_n_24;
  wire cmd_queue_n_25;
  wire cmd_queue_n_26;
  wire cmd_queue_n_27;
  wire cmd_split_i;
  wire command_ongoing;
  wire [3:0]\current_word_1_reg[3] ;
  wire [8:0]dout;
  wire [7:0]downsized_len_q;
  wire \downsized_len_q[0]_i_1__0_n_0 ;
  wire \downsized_len_q[1]_i_1__0_n_0 ;
  wire \downsized_len_q[2]_i_1__0_n_0 ;
  wire \downsized_len_q[3]_i_1__0_n_0 ;
  wire \downsized_len_q[4]_i_1__0_n_0 ;
  wire \downsized_len_q[5]_i_1__0_n_0 ;
  wire \downsized_len_q[6]_i_1__0_n_0 ;
  wire \downsized_len_q[7]_i_1__0_n_0 ;
  wire \downsized_len_q[7]_i_2__0_n_0 ;
  wire [0:0]first_mi_word_reg;
  wire first_word;
  wire [3:0]fix_len;
  wire [4:0]fix_len_q;
  wire \fix_len_q[4]_i_1__0_n_0 ;
  wire fix_need_to_split;
  wire fix_need_to_split_q;
  wire \goreg_dm.dout_i_reg[8] ;
  wire \goreg_dm.dout_i_reg[9] ;
  wire incr_need_to_split;
  wire incr_need_to_split_q;
  wire last_incr_split0;
  wire last_incr_split0_carry_n_2;
  wire last_incr_split0_carry_n_3;
  wire legal_wrap_len_q;
  wire legal_wrap_len_q_i_1__0_n_0;
  wire legal_wrap_len_q_i_2__0_n_0;
  wire legal_wrap_len_q_i_3__0_n_0;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [10:0]\m_axi_arsize[2] ;
  wire m_axi_arvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [14:0]masked_addr;
  wire [31:0]masked_addr_q;
  wire \masked_addr_q[2]_i_2__0_n_0 ;
  wire \masked_addr_q[3]_i_2__0_n_0 ;
  wire \masked_addr_q[3]_i_3__0_n_0 ;
  wire \masked_addr_q[4]_i_2__0_n_0 ;
  wire \masked_addr_q[5]_i_2__0_n_0 ;
  wire \masked_addr_q[6]_i_2__0_n_0 ;
  wire \masked_addr_q[7]_i_2__0_n_0 ;
  wire \masked_addr_q[7]_i_3__0_n_0 ;
  wire \masked_addr_q[8]_i_2__0_n_0 ;
  wire \masked_addr_q[8]_i_3__0_n_0 ;
  wire \masked_addr_q[9]_i_2__0_n_0 ;
  wire [31:2]next_mi_addr;
  wire next_mi_addr0_carry__0_i_1__0_n_0;
  wire next_mi_addr0_carry__0_i_2__0_n_0;
  wire next_mi_addr0_carry__0_i_3__0_n_0;
  wire next_mi_addr0_carry__0_i_4__0_n_0;
  wire next_mi_addr0_carry__0_n_0;
  wire next_mi_addr0_carry__0_n_1;
  wire next_mi_addr0_carry__0_n_2;
  wire next_mi_addr0_carry__0_n_3;
  wire next_mi_addr0_carry__0_n_4;
  wire next_mi_addr0_carry__0_n_5;
  wire next_mi_addr0_carry__0_n_6;
  wire next_mi_addr0_carry__0_n_7;
  wire next_mi_addr0_carry__1_i_1__0_n_0;
  wire next_mi_addr0_carry__1_i_2__0_n_0;
  wire next_mi_addr0_carry__1_i_3__0_n_0;
  wire next_mi_addr0_carry__1_i_4__0_n_0;
  wire next_mi_addr0_carry__1_n_0;
  wire next_mi_addr0_carry__1_n_1;
  wire next_mi_addr0_carry__1_n_2;
  wire next_mi_addr0_carry__1_n_3;
  wire next_mi_addr0_carry__1_n_4;
  wire next_mi_addr0_carry__1_n_5;
  wire next_mi_addr0_carry__1_n_6;
  wire next_mi_addr0_carry__1_n_7;
  wire next_mi_addr0_carry__2_i_1__0_n_0;
  wire next_mi_addr0_carry__2_i_2__0_n_0;
  wire next_mi_addr0_carry__2_i_3__0_n_0;
  wire next_mi_addr0_carry__2_i_4__0_n_0;
  wire next_mi_addr0_carry__2_n_0;
  wire next_mi_addr0_carry__2_n_1;
  wire next_mi_addr0_carry__2_n_2;
  wire next_mi_addr0_carry__2_n_3;
  wire next_mi_addr0_carry__2_n_4;
  wire next_mi_addr0_carry__2_n_5;
  wire next_mi_addr0_carry__2_n_6;
  wire next_mi_addr0_carry__2_n_7;
  wire next_mi_addr0_carry__3_i_1__0_n_0;
  wire next_mi_addr0_carry__3_i_2__0_n_0;
  wire next_mi_addr0_carry__3_i_3__0_n_0;
  wire next_mi_addr0_carry__3_i_4__0_n_0;
  wire next_mi_addr0_carry__3_n_0;
  wire next_mi_addr0_carry__3_n_1;
  wire next_mi_addr0_carry__3_n_2;
  wire next_mi_addr0_carry__3_n_3;
  wire next_mi_addr0_carry__3_n_4;
  wire next_mi_addr0_carry__3_n_5;
  wire next_mi_addr0_carry__3_n_6;
  wire next_mi_addr0_carry__3_n_7;
  wire next_mi_addr0_carry__4_i_1__0_n_0;
  wire next_mi_addr0_carry__4_i_2__0_n_0;
  wire next_mi_addr0_carry__4_i_3__0_n_0;
  wire next_mi_addr0_carry__4_n_2;
  wire next_mi_addr0_carry__4_n_3;
  wire next_mi_addr0_carry__4_n_5;
  wire next_mi_addr0_carry__4_n_6;
  wire next_mi_addr0_carry__4_n_7;
  wire next_mi_addr0_carry_i_1__0_n_0;
  wire next_mi_addr0_carry_i_2__0_n_0;
  wire next_mi_addr0_carry_i_3__0_n_0;
  wire next_mi_addr0_carry_i_4__0_n_0;
  wire next_mi_addr0_carry_i_5__0_n_0;
  wire next_mi_addr0_carry_n_0;
  wire next_mi_addr0_carry_n_1;
  wire next_mi_addr0_carry_n_2;
  wire next_mi_addr0_carry_n_3;
  wire next_mi_addr0_carry_n_4;
  wire next_mi_addr0_carry_n_5;
  wire next_mi_addr0_carry_n_6;
  wire next_mi_addr0_carry_n_7;
  wire \next_mi_addr[2]_i_1__0_n_0 ;
  wire \next_mi_addr[7]_i_1__0_n_0 ;
  wire \next_mi_addr[8]_i_1__0_n_0 ;
  wire [3:0]num_transactions;
  wire [3:0]num_transactions_q;
  wire \num_transactions_q[0]_i_2__0_n_0 ;
  wire \num_transactions_q[1]_i_1__0_n_0 ;
  wire \num_transactions_q[1]_i_2__0_n_0 ;
  wire \num_transactions_q[2]_i_1__0_n_0 ;
  wire out;
  wire [3:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [6:3]pre_mi_addr;
  wire \pushed_commands[7]_i_1__0_n_0 ;
  wire \pushed_commands[7]_i_3__0_n_0 ;
  wire [7:0]pushed_commands_reg;
  wire pushed_new_cmd;
  wire rd_en;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [127:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire si_full_size_q;
  wire si_full_size_q_i_1__0_n_0;
  wire [0:0]size_mask;
  wire [3:0]size_mask_q;
  wire [6:1]split_addr_mask;
  wire \split_addr_mask_q_reg_n_0_[3] ;
  wire \split_addr_mask_q_reg_n_0_[4] ;
  wire \split_addr_mask_q_reg_n_0_[5] ;
  wire \split_addr_mask_q_reg_n_0_[6] ;
  wire split_ongoing;
  wire [4:0]unalignment_addr;
  wire [4:0]unalignment_addr_q;
  wire wrap_need_to_split;
  wire wrap_need_to_split_q;
  wire wrap_need_to_split_q_i_2__0_n_0;
  wire wrap_need_to_split_q_i_3__0_n_0;
  wire [7:0]wrap_rest_len;
  wire [7:0]wrap_rest_len0;
  wire \wrap_rest_len[1]_i_1__0_n_0 ;
  wire \wrap_rest_len[7]_i_2__0_n_0 ;
  wire [7:0]wrap_unaligned_len;
  wire [7:0]wrap_unaligned_len_q;
  wire [3:3]NLW_cmd_length_i_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_last_incr_split0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_last_incr_split0_carry_O_UNCONNECTED;
  wire [3:2]NLW_next_mi_addr0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_next_mi_addr0_carry__4_O_UNCONNECTED;

  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[0]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[10]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[11]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[12]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[13]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[14]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[15]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[16]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[17]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[18]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[19]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[1]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[20]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[21]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[22]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[23]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[24]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[25]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[26]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[27]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[28]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[29]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[2]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[30]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[31]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[3]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[4]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[5]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[6]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[7]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[8]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[9]),
        .Q(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arburst[0]),
        .Q(S_AXI_ABURST_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arburst[1]),
        .Q(S_AXI_ABURST_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arcache[0]),
        .Q(m_axi_arcache[0]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arcache[1]),
        .Q(m_axi_arcache[1]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arcache[2]),
        .Q(m_axi_arcache[2]),
        .R(1'b0));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arcache[3]),
        .Q(m_axi_arcache[3]),
        .R(1'b0));
  FDRE \S_AXI_AID_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arid),
        .Q(S_AXI_AID_Q),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[0]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[1]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[2]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[3]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[4]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[5] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[5]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[6] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[6]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \S_AXI_ALEN_Q_reg[7] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlen[7]),
        .Q(\S_AXI_ALEN_Q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arlock),
        .Q(S_AXI_ALOCK_Q),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arprot[0]),
        .Q(m_axi_arprot[0]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arprot[1]),
        .Q(m_axi_arprot[1]),
        .R(1'b0));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arprot[2]),
        .Q(m_axi_arprot[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arqos[0]),
        .Q(m_axi_arqos[0]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arqos[1]),
        .Q(m_axi_arqos[1]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arqos[2]),
        .Q(m_axi_arqos[2]),
        .R(1'b0));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arqos[3]),
        .Q(m_axi_arqos[3]),
        .R(1'b0));
  FDRE S_AXI_AREADY_I_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_178),
        .Q(s_axi_arready),
        .R(SR));
  FDRE \S_AXI_AREGION_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arregion[0]),
        .Q(m_axi_arregion[0]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arregion[1]),
        .Q(m_axi_arregion[1]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arregion[2]),
        .Q(m_axi_arregion[2]),
        .R(1'b0));
  FDRE \S_AXI_AREGION_Q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arregion[3]),
        .Q(m_axi_arregion[3]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arsize[0]),
        .Q(S_AXI_ASIZE_Q[0]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arsize[1]),
        .Q(S_AXI_ASIZE_Q[1]),
        .R(1'b0));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arsize[2]),
        .Q(S_AXI_ASIZE_Q[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h15)) 
    access_fit_mi_side_q_i_1__0
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(access_fit_mi_side_q_i_1__0_n_0));
  FDRE access_fit_mi_side_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(access_fit_mi_side_q_i_1__0_n_0),
        .Q(access_fit_mi_side_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    access_is_fix_q_i_1__0
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_fix));
  FDRE access_is_fix_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(access_is_fix),
        .Q(access_is_fix_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    access_is_incr_q_i_1__0
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(access_is_incr));
  FDRE access_is_incr_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(access_is_incr),
        .Q(access_is_incr_q),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    access_is_wrap_q_i_1__0
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(access_is_wrap));
  FDRE access_is_wrap_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(access_is_wrap),
        .Q(access_is_wrap_q),
        .R(SR));
  CARRY4 cmd_length_i_carry
       (.CI(1'b0),
        .CO({cmd_length_i_carry_n_0,cmd_length_i_carry_n_1,cmd_length_i_carry_n_2,cmd_length_i_carry_n_3}),
        .CYINIT(1'b1),
        .DI({cmd_queue_n_16,cmd_queue_n_17,cmd_queue_n_18,cmd_queue_n_19}),
        .O(\m_axi_arsize[2] [3:0]),
        .S({cmd_queue_n_174,cmd_queue_n_175,cmd_queue_n_176,cmd_queue_n_177}));
  CARRY4 cmd_length_i_carry__0
       (.CI(cmd_length_i_carry_n_0),
        .CO({NLW_cmd_length_i_carry__0_CO_UNCONNECTED[3],cmd_length_i_carry__0_n_1,cmd_length_i_carry__0_n_2,cmd_length_i_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,cmd_queue_n_20,cmd_queue_n_21,cmd_queue_n_22}),
        .O(\m_axi_arsize[2] [7:4]),
        .S({cmd_queue_n_170,cmd_queue_n_171,cmd_queue_n_172,cmd_queue_n_173}));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cmd_mask_q[0]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[0]),
        .I4(cmd_mask_q),
        .O(\cmd_mask_q[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEEE)) 
    \cmd_mask_q[1]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[1]),
        .I5(cmd_mask_q),
        .O(\cmd_mask_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \cmd_mask_q[1]_i_2__0 
       (.I0(s_axi_arready),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arburst[1]),
        .O(cmd_mask_q));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \cmd_mask_q[2]_i_1__0 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arready),
        .I3(\masked_addr_q[2]_i_2__0_n_0 ),
        .O(\cmd_mask_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \cmd_mask_q[3]_i_1__0 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arready),
        .I3(\masked_addr_q[3]_i_2__0_n_0 ),
        .O(\cmd_mask_q[3]_i_1__0_n_0 ));
  FDRE \cmd_mask_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\cmd_mask_q[0]_i_1__0_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[0] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\cmd_mask_q[1]_i_1__0_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[1] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\cmd_mask_q[2]_i_1__0_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[2] ),
        .R(SR));
  FDRE \cmd_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\cmd_mask_q[3]_i_1__0_n_0 ),
        .Q(\cmd_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE cmd_push_block_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_180),
        .Q(cmd_push_block),
        .R(1'b0));
  top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized1 cmd_queue
       (.CLK(CLK),
        .CO(last_incr_split0),
        .D(D),
        .DI({cmd_queue_n_16,cmd_queue_n_17,cmd_queue_n_18,cmd_queue_n_19}),
        .E(pushed_new_cmd),
        .Q(pushed_commands_reg),
        .S({cmd_queue_n_23,cmd_queue_n_24,cmd_queue_n_25}),
        .SR(SR),
        .\S_AXI_AADDR_Q_reg[3] ({\S_AXI_AADDR_Q_reg_n_0_[3] ,\S_AXI_AADDR_Q_reg_n_0_[2] ,\S_AXI_AADDR_Q_reg_n_0_[1] ,\S_AXI_AADDR_Q_reg_n_0_[0] }),
        .S_AXI_AID_Q(S_AXI_AID_Q),
        .\S_AXI_ALEN_Q_reg[7] ({\S_AXI_ALEN_Q_reg_n_0_[7] ,\S_AXI_ALEN_Q_reg_n_0_[6] ,\S_AXI_ALEN_Q_reg_n_0_[5] ,\S_AXI_ALEN_Q_reg_n_0_[4] ,p_0_in}),
        .S_AXI_AREADY_I_reg(cmd_queue_n_178),
        .S_AXI_AREADY_I_reg_0(s_axi_arready),
        .\S_AXI_RRESP_ACC_reg[0] (\S_AXI_RRESP_ACC_reg[0] ),
        .\S_AXI_RRESP_ACC_reg[0]_0 (\S_AXI_RRESP_ACC_reg[0]_0 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31] (E),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31] ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2 (\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63] (\WORD_LANE[1].S_AXI_RDATA_II_reg[63] ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 (\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95] (\WORD_LANE[2].S_AXI_RDATA_II_reg[95] ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 (\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127] (\WORD_LANE[3].S_AXI_RDATA_II_reg[127] ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 (\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 ),
        .access_fit_mi_side_q(access_fit_mi_side_q),
        .access_is_fix_q(access_is_fix_q),
        .access_is_incr_q(access_is_incr_q),
        .access_is_wrap_q(access_is_wrap_q),
        .areset_d(areset_d),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .\cmd_mask_q_reg[3] ({\cmd_mask_q_reg_n_0_[3] ,\cmd_mask_q_reg_n_0_[2] ,\cmd_mask_q_reg_n_0_[1] ,\cmd_mask_q_reg_n_0_[0] ,\m_axi_arsize[2] [7:0],S_AXI_ASIZE_Q}),
        .cmd_push_block(cmd_push_block),
        .cmd_push_block_reg(cmd_queue_n_180),
        .command_ongoing(command_ongoing),
        .command_ongoing_reg(cmd_queue_n_179),
        .\current_word_1_reg[3] (\current_word_1_reg[3] ),
        .din({cmd_split_i,\m_axi_arsize[2] [10:8]}),
        .dout(dout),
        .\downsized_len_q_reg[7] (downsized_len_q),
        .first_mi_word_reg(first_mi_word_reg),
        .first_word(first_word),
        .\fix_len_q_reg[4] (fix_len_q),
        .fix_need_to_split_q(fix_need_to_split_q),
        .\goreg_dm.dout_i_reg[8] (\goreg_dm.dout_i_reg[8] ),
        .\goreg_dm.dout_i_reg[9] (\goreg_dm.dout_i_reg[9] ),
        .\gpr1.dout_i_reg[7] ({cmd_queue_n_20,cmd_queue_n_21,cmd_queue_n_22}),
        .\gpr1.dout_i_reg[7]_0 ({cmd_queue_n_170,cmd_queue_n_171,cmd_queue_n_172,cmd_queue_n_173}),
        .\gpr1.dout_i_reg[7]_1 ({cmd_queue_n_174,cmd_queue_n_175,cmd_queue_n_176,cmd_queue_n_177}),
        .incr_need_to_split_q(incr_need_to_split_q),
        .legal_wrap_len_q(legal_wrap_len_q),
        .\length_counter_1_reg[7] (Q),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .\next_mi_addr_reg[8] (cmd_queue_n_26),
        .\next_mi_addr_reg[8]_0 (cmd_queue_n_27),
        .\num_transactions_q_reg[3] (num_transactions_q),
        .out(out),
        .\queue_id_reg[0] (cmd_queue_n_181),
        .rd_en(rd_en),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .si_full_size_q(si_full_size_q),
        .size_mask_q({size_mask_q[3],size_mask_q[1:0]}),
        .\split_addr_mask_q_reg[3] (\split_addr_mask_q_reg_n_0_[3] ),
        .split_ongoing(split_ongoing),
        .\unalignment_addr_q_reg[4] (unalignment_addr_q),
        .wrap_need_to_split_q(wrap_need_to_split_q),
        .\wrap_rest_len_reg[7] (wrap_rest_len),
        .\wrap_unaligned_len_q_reg[7] (wrap_unaligned_len_q));
  FDRE command_ongoing_reg
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_179),
        .Q(command_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \downsized_len_q[0]_i_1__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .O(\downsized_len_q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h0222FEEE)) 
    \downsized_len_q[1]_i_1__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\masked_addr_q[3]_i_2__0_n_0 ),
        .O(\downsized_len_q[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEE2CEEECEE2)) 
    \downsized_len_q[2]_i_1__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arlen[0]),
        .I5(\masked_addr_q[4]_i_2__0_n_0 ),
        .O(\downsized_len_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFEEE0222)) 
    \downsized_len_q[3]_i_1__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\masked_addr_q[5]_i_2__0_n_0 ),
        .O(\downsized_len_q[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BB88BB88BB88)) 
    \downsized_len_q[4]_i_1__0 
       (.I0(\masked_addr_q[6]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\num_transactions_q[0]_i_2__0_n_0 ),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arsize[1]),
        .O(\downsized_len_q[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BB88BB88BB88)) 
    \downsized_len_q[5]_i_1__0 
       (.I0(\masked_addr_q[7]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\masked_addr_q[7]_i_3__0_n_0 ),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arsize[1]),
        .O(\downsized_len_q[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFEEE0222)) 
    \downsized_len_q[6]_i_1__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[1]),
        .I4(\masked_addr_q[8]_i_2__0_n_0 ),
        .O(\downsized_len_q[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF55EA40BF15AA00)) 
    \downsized_len_q[7]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(\downsized_len_q[7]_i_2__0_n_0 ),
        .I4(s_axi_arlen[7]),
        .I5(s_axi_arlen[6]),
        .O(\downsized_len_q[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \downsized_len_q[7]_i_2__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[5]),
        .O(\downsized_len_q[7]_i_2__0_n_0 ));
  FDRE \downsized_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[0]_i_1__0_n_0 ),
        .Q(downsized_len_q[0]),
        .R(SR));
  FDRE \downsized_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[1]_i_1__0_n_0 ),
        .Q(downsized_len_q[1]),
        .R(SR));
  FDRE \downsized_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[2]_i_1__0_n_0 ),
        .Q(downsized_len_q[2]),
        .R(SR));
  FDRE \downsized_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[3]_i_1__0_n_0 ),
        .Q(downsized_len_q[3]),
        .R(SR));
  FDRE \downsized_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[4]_i_1__0_n_0 ),
        .Q(downsized_len_q[4]),
        .R(SR));
  FDRE \downsized_len_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[5]_i_1__0_n_0 ),
        .Q(downsized_len_q[5]),
        .R(SR));
  FDRE \downsized_len_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[6]_i_1__0_n_0 ),
        .Q(downsized_len_q[6]),
        .R(SR));
  FDRE \downsized_len_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\downsized_len_q[7]_i_1__0_n_0 ),
        .Q(downsized_len_q[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \fix_len_q[0]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(fix_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \fix_len_q[2]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .O(fix_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fix_len_q[3]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(fix_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \fix_len_q[4]_i_1__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(\fix_len_q[4]_i_1__0_n_0 ));
  FDRE \fix_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(fix_len[0]),
        .Q(fix_len_q[0]),
        .R(SR));
  FDRE \fix_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_arsize[2]),
        .Q(fix_len_q[1]),
        .R(SR));
  FDRE \fix_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(fix_len[2]),
        .Q(fix_len_q[2]),
        .R(SR));
  FDRE \fix_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(fix_len[3]),
        .Q(fix_len_q[3]),
        .R(SR));
  FDRE \fix_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\fix_len_q[4]_i_1__0_n_0 ),
        .Q(fix_len_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h11111000)) 
    fix_need_to_split_q_i_1__0
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[2]),
        .O(fix_need_to_split));
  FDRE fix_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(fix_need_to_split),
        .Q(fix_need_to_split_q),
        .R(SR));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    incr_need_to_split_q_i_1__0
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(\num_transactions_q[1]_i_1__0_n_0 ),
        .I3(num_transactions[0]),
        .I4(num_transactions[3]),
        .I5(\num_transactions_q[2]_i_1__0_n_0 ),
        .O(incr_need_to_split));
  FDRE incr_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(incr_need_to_split),
        .Q(incr_need_to_split_q),
        .R(SR));
  CARRY4 last_incr_split0_carry
       (.CI(1'b0),
        .CO({NLW_last_incr_split0_carry_CO_UNCONNECTED[3],last_incr_split0,last_incr_split0_carry_n_2,last_incr_split0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_last_incr_split0_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,cmd_queue_n_23,cmd_queue_n_24,cmd_queue_n_25}));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h888A8A8A)) 
    legal_wrap_len_q_i_1__0
       (.I0(legal_wrap_len_q_i_2__0_n_0),
        .I1(legal_wrap_len_q_i_3__0_n_0),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .O(legal_wrap_len_q_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00010555FFFFFFFF)) 
    legal_wrap_len_q_i_2__0
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(legal_wrap_len_q_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    legal_wrap_len_q_i_3__0
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arlen[3]),
        .O(legal_wrap_len_q_i_3__0_n_0));
  FDRE legal_wrap_len_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(legal_wrap_len_q_i_1__0_n_0),
        .Q(legal_wrap_len_q),
        .R(SR));
  LUT5 #(
    .INIT(32'h00AAE2AA)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[0] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[0]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .O(m_axi_araddr[0]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(next_mi_addr[10]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[10]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .O(m_axi_araddr[10]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(next_mi_addr[11]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[11]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .O(m_axi_araddr[11]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(next_mi_addr[12]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[12]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .O(m_axi_araddr[12]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(next_mi_addr[13]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[13]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .O(m_axi_araddr[13]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(next_mi_addr[14]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[14]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .O(m_axi_araddr[14]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(next_mi_addr[15]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[15]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .O(m_axi_araddr[15]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(next_mi_addr[16]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[16]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .O(m_axi_araddr[16]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(next_mi_addr[17]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[17]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .O(m_axi_araddr[17]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(next_mi_addr[18]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[18]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .O(m_axi_araddr[18]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(next_mi_addr[19]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[19]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .O(m_axi_araddr[19]));
  LUT5 #(
    .INIT(32'h00AAE2AA)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[1] ),
        .I1(access_is_wrap_q),
        .I2(masked_addr_q[1]),
        .I3(split_ongoing),
        .I4(access_is_incr_q),
        .O(m_axi_araddr[1]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(next_mi_addr[20]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[20]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .O(m_axi_araddr[20]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(next_mi_addr[21]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[21]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .O(m_axi_araddr[21]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(next_mi_addr[22]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[22]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .O(m_axi_araddr[22]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(next_mi_addr[23]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[23]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .O(m_axi_araddr[23]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(next_mi_addr[24]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[24]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .O(m_axi_araddr[24]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(next_mi_addr[25]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[25]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .O(m_axi_araddr[25]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(next_mi_addr[26]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[26]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .O(m_axi_araddr[26]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(next_mi_addr[27]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[27]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .O(m_axi_araddr[27]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(next_mi_addr[28]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[28]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .O(m_axi_araddr[28]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(next_mi_addr[29]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[29]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .O(m_axi_araddr[29]));
  LUT6 #(
    .INIT(64'hFF00B8B8F0F0F0F0)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(masked_addr_q[2]),
        .I1(access_is_wrap_q),
        .I2(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .I3(next_mi_addr[2]),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(m_axi_araddr[2]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(next_mi_addr[30]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[30]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .O(m_axi_araddr[30]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(next_mi_addr[31]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[31]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .O(m_axi_araddr[31]));
  LUT6 #(
    .INIT(64'hFF00B8B8F0F0F0F0)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(masked_addr_q[3]),
        .I1(access_is_wrap_q),
        .I2(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .I3(next_mi_addr[3]),
        .I4(access_is_incr_q),
        .I5(split_ongoing),
        .O(m_axi_araddr[3]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(next_mi_addr[4]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[4]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .O(m_axi_araddr[4]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(next_mi_addr[5]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[5]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .O(m_axi_araddr[5]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(next_mi_addr[6]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[6]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .O(m_axi_araddr[6]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(next_mi_addr[7]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[7]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .O(m_axi_araddr[7]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(next_mi_addr[8]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[8]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .O(m_axi_araddr[8]));
  LUT6 #(
    .INIT(64'hBF8FBFBFB0808080)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(next_mi_addr[9]),
        .I1(access_is_incr_q),
        .I2(split_ongoing),
        .I3(masked_addr_q[9]),
        .I4(access_is_wrap_q),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .O(m_axi_araddr[9]));
  LUT5 #(
    .INIT(32'hAAAAEFEE)) 
    \m_axi_arburst[0]_INST_0 
       (.I0(S_AXI_ABURST_Q[0]),
        .I1(access_is_fix_q),
        .I2(legal_wrap_len_q),
        .I3(access_is_wrap_q),
        .I4(access_fit_mi_side_q),
        .O(m_axi_arburst[0]));
  LUT5 #(
    .INIT(32'hAAAA2022)) 
    \m_axi_arburst[1]_INST_0 
       (.I0(S_AXI_ABURST_Q[1]),
        .I1(access_is_fix_q),
        .I2(legal_wrap_len_q),
        .I3(access_is_wrap_q),
        .I4(access_fit_mi_side_q),
        .O(m_axi_arburst[1]));
  LUT4 #(
    .INIT(16'h0002)) 
    \m_axi_arlock[0]_INST_0 
       (.I0(S_AXI_ALOCK_Q),
        .I1(wrap_need_to_split_q),
        .I2(fix_need_to_split_q),
        .I3(incr_need_to_split_q),
        .O(m_axi_arlock));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \masked_addr_q[0]_i_1__0 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[0]),
        .O(masked_addr[0]));
  LUT6 #(
    .INIT(64'h00002AAAAAAA2AAA)) 
    \masked_addr_q[10]_i_1__0 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[7]),
        .I4(s_axi_arsize[2]),
        .I5(\num_transactions_q[0]_i_2__0_n_0 ),
        .O(masked_addr[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[11]_i_1__0 
       (.I0(s_axi_araddr[11]),
        .I1(\num_transactions_q[1]_i_1__0_n_0 ),
        .O(masked_addr[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[12]_i_1__0 
       (.I0(s_axi_araddr[12]),
        .I1(\num_transactions_q[2]_i_1__0_n_0 ),
        .O(masked_addr[12]));
  LUT6 #(
    .INIT(64'h202AAAAAAAAAAAAA)) 
    \masked_addr_q[13]_i_1__0 
       (.I0(s_axi_araddr[13]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[7]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(masked_addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \masked_addr_q[14]_i_1__0 
       (.I0(s_axi_araddr[14]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[2]),
        .O(masked_addr[14]));
  LUT6 #(
    .INIT(64'h0002000000020202)) 
    \masked_addr_q[1]_i_1__0 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[1]),
        .O(masked_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \masked_addr_q[2]_i_1__0 
       (.I0(s_axi_araddr[2]),
        .I1(\masked_addr_q[2]_i_2__0_n_0 ),
        .O(masked_addr[2]));
  LUT6 #(
    .INIT(64'h0000015105050151)) 
    \masked_addr_q[2]_i_2__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[0]),
        .O(\masked_addr_q[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \masked_addr_q[3]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(\masked_addr_q[3]_i_2__0_n_0 ),
        .O(masked_addr[3]));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \masked_addr_q[3]_i_2__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arsize[1]),
        .I5(\masked_addr_q[3]_i_3__0_n_0 ),
        .O(\masked_addr_q[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[3]_i_3__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[1]),
        .O(\masked_addr_q[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h02020202020202A2)) 
    \masked_addr_q[4]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(\masked_addr_q[4]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arsize[1]),
        .O(masked_addr[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[4]_i_2__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[4]),
        .O(\masked_addr_q[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[5]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(\masked_addr_q[5]_i_2__0_n_0 ),
        .O(masked_addr[5]));
  LUT6 #(
    .INIT(64'hFEAEFFFFFEAE0000)) 
    \masked_addr_q[5]_i_2__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arsize[2]),
        .I5(\downsized_len_q[7]_i_2__0_n_0 ),
        .O(\masked_addr_q[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \masked_addr_q[6]_i_1__0 
       (.I0(\masked_addr_q[6]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\num_transactions_q[0]_i_2__0_n_0 ),
        .I3(s_axi_araddr[6]),
        .O(masked_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \masked_addr_q[6]_i_2__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[2]),
        .O(\masked_addr_q[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \masked_addr_q[7]_i_1__0 
       (.I0(\masked_addr_q[7]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\masked_addr_q[7]_i_3__0_n_0 ),
        .I3(s_axi_araddr[7]),
        .O(masked_addr[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[7]_i_2__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[3]),
        .O(\masked_addr_q[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \masked_addr_q[7]_i_3__0 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[7]),
        .O(\masked_addr_q[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[8]_i_1__0 
       (.I0(s_axi_araddr[8]),
        .I1(\masked_addr_q[8]_i_2__0_n_0 ),
        .O(masked_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \masked_addr_q[8]_i_2__0 
       (.I0(\masked_addr_q[4]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\masked_addr_q[8]_i_3__0_n_0 ),
        .O(\masked_addr_q[8]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \masked_addr_q[8]_i_3__0 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[7]),
        .O(\masked_addr_q[8]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \masked_addr_q[9]_i_1__0 
       (.I0(s_axi_araddr[9]),
        .I1(\masked_addr_q[9]_i_2__0_n_0 ),
        .O(masked_addr[9]));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \masked_addr_q[9]_i_2__0 
       (.I0(\downsized_len_q[7]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[6]),
        .I5(s_axi_arsize[1]),
        .O(\masked_addr_q[9]_i_2__0_n_0 ));
  FDRE \masked_addr_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[0]),
        .Q(masked_addr_q[0]),
        .R(SR));
  FDRE \masked_addr_q_reg[10] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[10]),
        .Q(masked_addr_q[10]),
        .R(SR));
  FDRE \masked_addr_q_reg[11] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[11]),
        .Q(masked_addr_q[11]),
        .R(SR));
  FDRE \masked_addr_q_reg[12] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[12]),
        .Q(masked_addr_q[12]),
        .R(SR));
  FDRE \masked_addr_q_reg[13] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[13]),
        .Q(masked_addr_q[13]),
        .R(SR));
  FDRE \masked_addr_q_reg[14] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[14]),
        .Q(masked_addr_q[14]),
        .R(SR));
  FDRE \masked_addr_q_reg[15] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[15]),
        .Q(masked_addr_q[15]),
        .R(SR));
  FDRE \masked_addr_q_reg[16] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[16]),
        .Q(masked_addr_q[16]),
        .R(SR));
  FDRE \masked_addr_q_reg[17] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[17]),
        .Q(masked_addr_q[17]),
        .R(SR));
  FDRE \masked_addr_q_reg[18] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[18]),
        .Q(masked_addr_q[18]),
        .R(SR));
  FDRE \masked_addr_q_reg[19] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[19]),
        .Q(masked_addr_q[19]),
        .R(SR));
  FDRE \masked_addr_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[1]),
        .Q(masked_addr_q[1]),
        .R(SR));
  FDRE \masked_addr_q_reg[20] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[20]),
        .Q(masked_addr_q[20]),
        .R(SR));
  FDRE \masked_addr_q_reg[21] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[21]),
        .Q(masked_addr_q[21]),
        .R(SR));
  FDRE \masked_addr_q_reg[22] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[22]),
        .Q(masked_addr_q[22]),
        .R(SR));
  FDRE \masked_addr_q_reg[23] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[23]),
        .Q(masked_addr_q[23]),
        .R(SR));
  FDRE \masked_addr_q_reg[24] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[24]),
        .Q(masked_addr_q[24]),
        .R(SR));
  FDRE \masked_addr_q_reg[25] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[25]),
        .Q(masked_addr_q[25]),
        .R(SR));
  FDRE \masked_addr_q_reg[26] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[26]),
        .Q(masked_addr_q[26]),
        .R(SR));
  FDRE \masked_addr_q_reg[27] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[27]),
        .Q(masked_addr_q[27]),
        .R(SR));
  FDRE \masked_addr_q_reg[28] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[28]),
        .Q(masked_addr_q[28]),
        .R(SR));
  FDRE \masked_addr_q_reg[29] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[29]),
        .Q(masked_addr_q[29]),
        .R(SR));
  FDRE \masked_addr_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[2]),
        .Q(masked_addr_q[2]),
        .R(SR));
  FDRE \masked_addr_q_reg[30] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[30]),
        .Q(masked_addr_q[30]),
        .R(SR));
  FDRE \masked_addr_q_reg[31] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(s_axi_araddr[31]),
        .Q(masked_addr_q[31]),
        .R(SR));
  FDRE \masked_addr_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[3]),
        .Q(masked_addr_q[3]),
        .R(SR));
  FDRE \masked_addr_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[4]),
        .Q(masked_addr_q[4]),
        .R(SR));
  FDRE \masked_addr_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[5]),
        .Q(masked_addr_q[5]),
        .R(SR));
  FDRE \masked_addr_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[6]),
        .Q(masked_addr_q[6]),
        .R(SR));
  FDRE \masked_addr_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[7]),
        .Q(masked_addr_q[7]),
        .R(SR));
  FDRE \masked_addr_q_reg[8] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[8]),
        .Q(masked_addr_q[8]),
        .R(SR));
  FDRE \masked_addr_q_reg[9] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(masked_addr[9]),
        .Q(masked_addr_q[9]),
        .R(SR));
  CARRY4 next_mi_addr0_carry
       (.CI(1'b0),
        .CO({next_mi_addr0_carry_n_0,next_mi_addr0_carry_n_1,next_mi_addr0_carry_n_2,next_mi_addr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,next_mi_addr0_carry_i_1__0_n_0,1'b0}),
        .O({next_mi_addr0_carry_n_4,next_mi_addr0_carry_n_5,next_mi_addr0_carry_n_6,next_mi_addr0_carry_n_7}),
        .S({next_mi_addr0_carry_i_2__0_n_0,next_mi_addr0_carry_i_3__0_n_0,next_mi_addr0_carry_i_4__0_n_0,next_mi_addr0_carry_i_5__0_n_0}));
  CARRY4 next_mi_addr0_carry__0
       (.CI(next_mi_addr0_carry_n_0),
        .CO({next_mi_addr0_carry__0_n_0,next_mi_addr0_carry__0_n_1,next_mi_addr0_carry__0_n_2,next_mi_addr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__0_n_4,next_mi_addr0_carry__0_n_5,next_mi_addr0_carry__0_n_6,next_mi_addr0_carry__0_n_7}),
        .S({next_mi_addr0_carry__0_i_1__0_n_0,next_mi_addr0_carry__0_i_2__0_n_0,next_mi_addr0_carry__0_i_3__0_n_0,next_mi_addr0_carry__0_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_1__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[16] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[16]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[16]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_2__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[15] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[15]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[15]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_3__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[14] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[14]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[14]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__0_i_4__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[13] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[13]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[13]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__0_i_4__0_n_0));
  CARRY4 next_mi_addr0_carry__1
       (.CI(next_mi_addr0_carry__0_n_0),
        .CO({next_mi_addr0_carry__1_n_0,next_mi_addr0_carry__1_n_1,next_mi_addr0_carry__1_n_2,next_mi_addr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__1_n_4,next_mi_addr0_carry__1_n_5,next_mi_addr0_carry__1_n_6,next_mi_addr0_carry__1_n_7}),
        .S({next_mi_addr0_carry__1_i_1__0_n_0,next_mi_addr0_carry__1_i_2__0_n_0,next_mi_addr0_carry__1_i_3__0_n_0,next_mi_addr0_carry__1_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_1__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[20] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[20]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[20]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_2__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[19] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[19]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[19]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_3__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[18] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[18]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[18]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__1_i_4__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[17] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[17]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[17]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__1_i_4__0_n_0));
  CARRY4 next_mi_addr0_carry__2
       (.CI(next_mi_addr0_carry__1_n_0),
        .CO({next_mi_addr0_carry__2_n_0,next_mi_addr0_carry__2_n_1,next_mi_addr0_carry__2_n_2,next_mi_addr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__2_n_4,next_mi_addr0_carry__2_n_5,next_mi_addr0_carry__2_n_6,next_mi_addr0_carry__2_n_7}),
        .S({next_mi_addr0_carry__2_i_1__0_n_0,next_mi_addr0_carry__2_i_2__0_n_0,next_mi_addr0_carry__2_i_3__0_n_0,next_mi_addr0_carry__2_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_1__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[24] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[24]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[24]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_2__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[23] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[23]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[23]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_3__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[22] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[22]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[22]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__2_i_4__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[21] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[21]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[21]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__2_i_4__0_n_0));
  CARRY4 next_mi_addr0_carry__3
       (.CI(next_mi_addr0_carry__2_n_0),
        .CO({next_mi_addr0_carry__3_n_0,next_mi_addr0_carry__3_n_1,next_mi_addr0_carry__3_n_2,next_mi_addr0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({next_mi_addr0_carry__3_n_4,next_mi_addr0_carry__3_n_5,next_mi_addr0_carry__3_n_6,next_mi_addr0_carry__3_n_7}),
        .S({next_mi_addr0_carry__3_i_1__0_n_0,next_mi_addr0_carry__3_i_2__0_n_0,next_mi_addr0_carry__3_i_3__0_n_0,next_mi_addr0_carry__3_i_4__0_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_1__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[28] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[28]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[28]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_2__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[27] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[27]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[27]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_3__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[26] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[26]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[26]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__3_i_4__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[25] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[25]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[25]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__3_i_4__0_n_0));
  CARRY4 next_mi_addr0_carry__4
       (.CI(next_mi_addr0_carry__3_n_0),
        .CO({NLW_next_mi_addr0_carry__4_CO_UNCONNECTED[3:2],next_mi_addr0_carry__4_n_2,next_mi_addr0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_next_mi_addr0_carry__4_O_UNCONNECTED[3],next_mi_addr0_carry__4_n_5,next_mi_addr0_carry__4_n_6,next_mi_addr0_carry__4_n_7}),
        .S({1'b0,next_mi_addr0_carry__4_i_1__0_n_0,next_mi_addr0_carry__4_i_2__0_n_0,next_mi_addr0_carry__4_i_3__0_n_0}));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__4_i_1__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[31] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[31]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[31]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__4_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__4_i_2__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[30] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[30]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[30]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__4_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry__4_i_3__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[29] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[29]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[29]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry__4_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_1__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[10]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[10]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_2__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[12] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[12]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[12]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_3__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[11] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[11]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[11]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h757F7575757F7F7F)) 
    next_mi_addr0_carry_i_4__0
       (.I0(size_mask_q[3]),
        .I1(next_mi_addr[10]),
        .I2(cmd_queue_n_26),
        .I3(masked_addr_q[10]),
        .I4(cmd_queue_n_27),
        .I5(\S_AXI_AADDR_Q_reg_n_0_[10] ),
        .O(next_mi_addr0_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    next_mi_addr0_carry_i_5__0
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[9] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[9]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[9]),
        .I5(size_mask_q[3]),
        .O(next_mi_addr0_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hDDD888D800000000)) 
    \next_mi_addr[2]_i_1__0 
       (.I0(cmd_queue_n_26),
        .I1(next_mi_addr[2]),
        .I2(\S_AXI_AADDR_Q_reg_n_0_[2] ),
        .I3(cmd_queue_n_27),
        .I4(masked_addr_q[2]),
        .I5(access_fit_mi_side_q),
        .O(\next_mi_addr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2808080A280)) 
    \next_mi_addr[3]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[3] ),
        .I1(cmd_queue_n_26),
        .I2(next_mi_addr[3]),
        .I3(\S_AXI_AADDR_Q_reg_n_0_[3] ),
        .I4(cmd_queue_n_27),
        .I5(masked_addr_q[3]),
        .O(pre_mi_addr[3]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[4]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[4] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[4] ),
        .I2(cmd_queue_n_27),
        .I3(masked_addr_q[4]),
        .I4(cmd_queue_n_26),
        .I5(next_mi_addr[4]),
        .O(pre_mi_addr[4]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[5]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[5] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[5] ),
        .I2(cmd_queue_n_27),
        .I3(masked_addr_q[5]),
        .I4(cmd_queue_n_26),
        .I5(next_mi_addr[5]),
        .O(pre_mi_addr[5]));
  LUT6 #(
    .INIT(64'hAAAAA8080000A808)) 
    \next_mi_addr[6]_i_1__0 
       (.I0(\split_addr_mask_q_reg_n_0_[6] ),
        .I1(\S_AXI_AADDR_Q_reg_n_0_[6] ),
        .I2(cmd_queue_n_27),
        .I3(masked_addr_q[6]),
        .I4(cmd_queue_n_26),
        .I5(next_mi_addr[6]),
        .O(pre_mi_addr[6]));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \next_mi_addr[7]_i_1__0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[7] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[7]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[7]),
        .I5(size_mask_q[3]),
        .O(\next_mi_addr[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFE200E200000000)) 
    \next_mi_addr[8]_i_1__0 
       (.I0(\S_AXI_AADDR_Q_reg_n_0_[8] ),
        .I1(cmd_queue_n_27),
        .I2(masked_addr_q[8]),
        .I3(cmd_queue_n_26),
        .I4(next_mi_addr[8]),
        .I5(size_mask_q[3]),
        .O(\next_mi_addr[8]_i_1__0_n_0 ));
  FDRE \next_mi_addr_reg[10] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_6),
        .Q(next_mi_addr[10]),
        .R(SR));
  FDRE \next_mi_addr_reg[11] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_5),
        .Q(next_mi_addr[11]),
        .R(SR));
  FDRE \next_mi_addr_reg[12] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_4),
        .Q(next_mi_addr[12]),
        .R(SR));
  FDRE \next_mi_addr_reg[13] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_7),
        .Q(next_mi_addr[13]),
        .R(SR));
  FDRE \next_mi_addr_reg[14] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_6),
        .Q(next_mi_addr[14]),
        .R(SR));
  FDRE \next_mi_addr_reg[15] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_5),
        .Q(next_mi_addr[15]),
        .R(SR));
  FDRE \next_mi_addr_reg[16] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__0_n_4),
        .Q(next_mi_addr[16]),
        .R(SR));
  FDRE \next_mi_addr_reg[17] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_7),
        .Q(next_mi_addr[17]),
        .R(SR));
  FDRE \next_mi_addr_reg[18] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_6),
        .Q(next_mi_addr[18]),
        .R(SR));
  FDRE \next_mi_addr_reg[19] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_5),
        .Q(next_mi_addr[19]),
        .R(SR));
  FDRE \next_mi_addr_reg[20] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__1_n_4),
        .Q(next_mi_addr[20]),
        .R(SR));
  FDRE \next_mi_addr_reg[21] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_7),
        .Q(next_mi_addr[21]),
        .R(SR));
  FDRE \next_mi_addr_reg[22] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_6),
        .Q(next_mi_addr[22]),
        .R(SR));
  FDRE \next_mi_addr_reg[23] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_5),
        .Q(next_mi_addr[23]),
        .R(SR));
  FDRE \next_mi_addr_reg[24] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__2_n_4),
        .Q(next_mi_addr[24]),
        .R(SR));
  FDRE \next_mi_addr_reg[25] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_7),
        .Q(next_mi_addr[25]),
        .R(SR));
  FDRE \next_mi_addr_reg[26] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_6),
        .Q(next_mi_addr[26]),
        .R(SR));
  FDRE \next_mi_addr_reg[27] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_5),
        .Q(next_mi_addr[27]),
        .R(SR));
  FDRE \next_mi_addr_reg[28] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__3_n_4),
        .Q(next_mi_addr[28]),
        .R(SR));
  FDRE \next_mi_addr_reg[29] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__4_n_7),
        .Q(next_mi_addr[29]),
        .R(SR));
  FDRE \next_mi_addr_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr[2]_i_1__0_n_0 ),
        .Q(next_mi_addr[2]),
        .R(SR));
  FDRE \next_mi_addr_reg[30] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__4_n_6),
        .Q(next_mi_addr[30]),
        .R(SR));
  FDRE \next_mi_addr_reg[31] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry__4_n_5),
        .Q(next_mi_addr[31]),
        .R(SR));
  FDRE \next_mi_addr_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[3]),
        .Q(next_mi_addr[3]),
        .R(SR));
  FDRE \next_mi_addr_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[4]),
        .Q(next_mi_addr[4]),
        .R(SR));
  FDRE \next_mi_addr_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[5]),
        .Q(next_mi_addr[5]),
        .R(SR));
  FDRE \next_mi_addr_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(pre_mi_addr[6]),
        .Q(next_mi_addr[6]),
        .R(SR));
  FDRE \next_mi_addr_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr[7]_i_1__0_n_0 ),
        .Q(next_mi_addr[7]),
        .R(SR));
  FDRE \next_mi_addr_reg[8] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(\next_mi_addr[8]_i_1__0_n_0 ),
        .Q(next_mi_addr[8]),
        .R(SR));
  FDRE \next_mi_addr_reg[9] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(next_mi_addr0_carry_n_7),
        .Q(next_mi_addr[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB8888888)) 
    \num_transactions_q[0]_i_1__0 
       (.I0(\num_transactions_q[0]_i_2__0_n_0 ),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .O(num_transactions[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \num_transactions_q[0]_i_2__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[6]),
        .O(\num_transactions_q[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \num_transactions_q[1]_i_1__0 
       (.I0(\num_transactions_q[1]_i_2__0_n_0 ),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[4]),
        .I5(s_axi_arsize[2]),
        .O(\num_transactions_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \num_transactions_q[1]_i_2__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .O(\num_transactions_q[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF8C8380800000000)) 
    \num_transactions_q[2]_i_1__0 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arlen[6]),
        .I4(s_axi_arlen[5]),
        .I5(s_axi_arsize[2]),
        .O(\num_transactions_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h88800080)) 
    \num_transactions_q[3]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[6]),
        .O(num_transactions[3]));
  FDRE \num_transactions_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(num_transactions[0]),
        .Q(num_transactions_q[0]),
        .R(SR));
  FDRE \num_transactions_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\num_transactions_q[1]_i_1__0_n_0 ),
        .Q(num_transactions_q[1]),
        .R(SR));
  FDRE \num_transactions_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(\num_transactions_q[2]_i_1__0_n_0 ),
        .Q(num_transactions_q[2]),
        .R(SR));
  FDRE \num_transactions_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(num_transactions[3]),
        .Q(num_transactions_q[3]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \pushed_commands[0]_i_1__0 
       (.I0(pushed_commands_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[1]_i_1__0 
       (.I0(pushed_commands_reg[0]),
        .I1(pushed_commands_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[2]_i_1__0 
       (.I0(pushed_commands_reg[2]),
        .I1(pushed_commands_reg[1]),
        .I2(pushed_commands_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pushed_commands[3]_i_1__0 
       (.I0(pushed_commands_reg[3]),
        .I1(pushed_commands_reg[2]),
        .I2(pushed_commands_reg[0]),
        .I3(pushed_commands_reg[1]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pushed_commands[4]_i_1__0 
       (.I0(pushed_commands_reg[4]),
        .I1(pushed_commands_reg[1]),
        .I2(pushed_commands_reg[0]),
        .I3(pushed_commands_reg[2]),
        .I4(pushed_commands_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pushed_commands[5]_i_1__0 
       (.I0(pushed_commands_reg[5]),
        .I1(pushed_commands_reg[3]),
        .I2(pushed_commands_reg[2]),
        .I3(pushed_commands_reg[0]),
        .I4(pushed_commands_reg[1]),
        .I5(pushed_commands_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pushed_commands[6]_i_1__0 
       (.I0(pushed_commands_reg[6]),
        .I1(\pushed_commands[7]_i_3__0_n_0 ),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \pushed_commands[7]_i_1__0 
       (.I0(s_axi_arready),
        .I1(out),
        .O(\pushed_commands[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pushed_commands[7]_i_2__0 
       (.I0(pushed_commands_reg[7]),
        .I1(\pushed_commands[7]_i_3__0_n_0 ),
        .I2(pushed_commands_reg[6]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pushed_commands[7]_i_3__0 
       (.I0(pushed_commands_reg[5]),
        .I1(pushed_commands_reg[3]),
        .I2(pushed_commands_reg[2]),
        .I3(pushed_commands_reg[0]),
        .I4(pushed_commands_reg[1]),
        .I5(pushed_commands_reg[4]),
        .O(\pushed_commands[7]_i_3__0_n_0 ));
  FDRE \pushed_commands_reg[0] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[0]),
        .Q(pushed_commands_reg[0]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[1] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[1]),
        .Q(pushed_commands_reg[1]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[2] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[2]),
        .Q(pushed_commands_reg[2]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[3] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[3]),
        .Q(pushed_commands_reg[3]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[4] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[4]),
        .Q(pushed_commands_reg[4]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[5] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[5]),
        .Q(pushed_commands_reg[5]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[6] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[6]),
        .Q(pushed_commands_reg[6]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \pushed_commands_reg[7] 
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(p_0_in__0[7]),
        .Q(pushed_commands_reg[7]),
        .R(\pushed_commands[7]_i_1__0_n_0 ));
  FDRE \queue_id_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(cmd_queue_n_181),
        .Q(s_axi_rid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h10)) 
    si_full_size_q_i_1__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(si_full_size_q_i_1__0_n_0));
  FDRE si_full_size_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(si_full_size_q_i_1__0_n_0),
        .Q(si_full_size_q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \size_mask_q[0]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(size_mask));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \size_mask_q[1]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(split_addr_mask[1]));
  FDRE \size_mask_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(size_mask),
        .Q(size_mask_q[0]),
        .R(SR));
  FDRE \size_mask_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(split_addr_mask[1]),
        .Q(size_mask_q[1]),
        .R(SR));
  FDRE \size_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(1'b1),
        .Q(size_mask_q[3]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \split_addr_mask_q[3]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .O(split_addr_mask[3]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \split_addr_mask_q[4]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(split_addr_mask[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \split_addr_mask_q[5]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .O(split_addr_mask[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \split_addr_mask_q[6]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(split_addr_mask[6]));
  FDRE \split_addr_mask_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(split_addr_mask[3]),
        .Q(\split_addr_mask_q_reg_n_0_[3] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(split_addr_mask[4]),
        .Q(\split_addr_mask_q_reg_n_0_[4] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(split_addr_mask[5]),
        .Q(\split_addr_mask_q_reg_n_0_[5] ),
        .R(SR));
  FDRE \split_addr_mask_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(split_addr_mask[6]),
        .Q(\split_addr_mask_q_reg_n_0_[6] ),
        .R(SR));
  FDRE split_ongoing_reg
       (.C(CLK),
        .CE(pushed_new_cmd),
        .D(cmd_split_i),
        .Q(split_ongoing),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \unalignment_addr_q[0]_i_1__0 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .O(unalignment_addr[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \unalignment_addr_q[1]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arsize[2]),
        .O(unalignment_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \unalignment_addr_q[2]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .O(unalignment_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \unalignment_addr_q[3]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(unalignment_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \unalignment_addr_q[4]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .O(unalignment_addr[4]));
  FDRE \unalignment_addr_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(unalignment_addr[0]),
        .Q(unalignment_addr_q[0]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(unalignment_addr[1]),
        .Q(unalignment_addr_q[1]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(unalignment_addr[2]),
        .Q(unalignment_addr_q[2]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(unalignment_addr[3]),
        .Q(unalignment_addr_q[3]),
        .R(SR));
  FDRE \unalignment_addr_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(unalignment_addr[4]),
        .Q(unalignment_addr_q[4]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    wrap_need_to_split_q_i_1__0
       (.I0(wrap_need_to_split_q_i_2__0_n_0),
        .I1(wrap_need_to_split_q_i_3__0_n_0),
        .I2(s_axi_arburst[1]),
        .I3(s_axi_arburst[0]),
        .I4(legal_wrap_len_q_i_1__0_n_0),
        .O(wrap_need_to_split));
  LUT6 #(
    .INIT(64'hFFFFFFAEFFAEFFAE)) 
    wrap_need_to_split_q_i_2__0
       (.I0(wrap_unaligned_len[0]),
        .I1(s_axi_araddr[3]),
        .I2(\masked_addr_q[3]_i_2__0_n_0 ),
        .I3(wrap_unaligned_len[2]),
        .I4(s_axi_araddr[5]),
        .I5(\masked_addr_q[5]_i_2__0_n_0 ),
        .O(wrap_need_to_split_q_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    wrap_need_to_split_q_i_3__0
       (.I0(s_axi_araddr[8]),
        .I1(\masked_addr_q[8]_i_2__0_n_0 ),
        .I2(s_axi_araddr[9]),
        .I3(\masked_addr_q[9]_i_2__0_n_0 ),
        .I4(wrap_unaligned_len[4]),
        .I5(wrap_unaligned_len[5]),
        .O(wrap_need_to_split_q_i_3__0_n_0));
  FDRE wrap_need_to_split_q_reg
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_need_to_split),
        .Q(wrap_need_to_split_q),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \wrap_rest_len[0]_i_1__0 
       (.I0(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wrap_rest_len[1]_i_1__0 
       (.I0(wrap_unaligned_len_q[1]),
        .I1(wrap_unaligned_len_q[0]),
        .O(\wrap_rest_len[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wrap_rest_len[2]_i_1__0 
       (.I0(wrap_unaligned_len_q[2]),
        .I1(wrap_unaligned_len_q[0]),
        .I2(wrap_unaligned_len_q[1]),
        .O(wrap_rest_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \wrap_rest_len[3]_i_1__0 
       (.I0(wrap_unaligned_len_q[3]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .O(wrap_rest_len0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \wrap_rest_len[4]_i_1__0 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[3]),
        .I2(wrap_unaligned_len_q[0]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[2]),
        .O(wrap_rest_len0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \wrap_rest_len[5]_i_1__0 
       (.I0(wrap_unaligned_len_q[5]),
        .I1(wrap_unaligned_len_q[4]),
        .I2(wrap_unaligned_len_q[2]),
        .I3(wrap_unaligned_len_q[1]),
        .I4(wrap_unaligned_len_q[0]),
        .I5(wrap_unaligned_len_q[3]),
        .O(wrap_rest_len0[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wrap_rest_len[6]_i_1__0 
       (.I0(wrap_unaligned_len_q[6]),
        .I1(\wrap_rest_len[7]_i_2__0_n_0 ),
        .O(wrap_rest_len0[6]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \wrap_rest_len[7]_i_1__0 
       (.I0(wrap_unaligned_len_q[7]),
        .I1(wrap_unaligned_len_q[6]),
        .I2(\wrap_rest_len[7]_i_2__0_n_0 ),
        .O(wrap_rest_len0[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wrap_rest_len[7]_i_2__0 
       (.I0(wrap_unaligned_len_q[4]),
        .I1(wrap_unaligned_len_q[2]),
        .I2(wrap_unaligned_len_q[1]),
        .I3(wrap_unaligned_len_q[0]),
        .I4(wrap_unaligned_len_q[3]),
        .I5(wrap_unaligned_len_q[5]),
        .O(\wrap_rest_len[7]_i_2__0_n_0 ));
  FDRE \wrap_rest_len_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[0]),
        .Q(wrap_rest_len[0]),
        .R(SR));
  FDRE \wrap_rest_len_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\wrap_rest_len[1]_i_1__0_n_0 ),
        .Q(wrap_rest_len[1]),
        .R(SR));
  FDRE \wrap_rest_len_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[2]),
        .Q(wrap_rest_len[2]),
        .R(SR));
  FDRE \wrap_rest_len_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[3]),
        .Q(wrap_rest_len[3]),
        .R(SR));
  FDRE \wrap_rest_len_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[4]),
        .Q(wrap_rest_len[4]),
        .R(SR));
  FDRE \wrap_rest_len_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[5]),
        .Q(wrap_rest_len[5]),
        .R(SR));
  FDRE \wrap_rest_len_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[6]),
        .Q(wrap_rest_len[6]),
        .R(SR));
  FDRE \wrap_rest_len_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(wrap_rest_len0[7]),
        .Q(wrap_rest_len[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wrap_unaligned_len_q[0]_i_1__0 
       (.I0(s_axi_araddr[2]),
        .I1(\masked_addr_q[2]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wrap_unaligned_len_q[1]_i_1__0 
       (.I0(s_axi_araddr[3]),
        .I1(\masked_addr_q[3]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[1]));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A808)) 
    \wrap_unaligned_len_q[2]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(\masked_addr_q[4]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arsize[1]),
        .O(wrap_unaligned_len[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[3]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(\masked_addr_q[5]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \wrap_unaligned_len_q[4]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(\num_transactions_q[0]_i_2__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(\masked_addr_q[6]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hA808)) 
    \wrap_unaligned_len_q[5]_i_1__0 
       (.I0(s_axi_araddr[7]),
        .I1(\masked_addr_q[7]_i_3__0_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(\masked_addr_q[7]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[6]_i_1__0 
       (.I0(s_axi_araddr[8]),
        .I1(\masked_addr_q[8]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wrap_unaligned_len_q[7]_i_1__0 
       (.I0(s_axi_araddr[9]),
        .I1(\masked_addr_q[9]_i_2__0_n_0 ),
        .O(wrap_unaligned_len[7]));
  FDRE \wrap_unaligned_len_q_reg[0] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[0]),
        .Q(wrap_unaligned_len_q[0]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[1] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[1]),
        .Q(wrap_unaligned_len_q[1]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[2] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[2]),
        .Q(wrap_unaligned_len_q[2]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[3] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[3]),
        .Q(wrap_unaligned_len_q[3]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[4] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[4]),
        .Q(wrap_unaligned_len_q[4]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[5] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[5]),
        .Q(wrap_unaligned_len_q[5]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[6] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[6]),
        .Q(wrap_unaligned_len_q[6]),
        .R(SR));
  FDRE \wrap_unaligned_len_q_reg[7] 
       (.C(CLK),
        .CE(s_axi_arready),
        .D(wrap_unaligned_len[7]),
        .Q(wrap_unaligned_len_q[7]),
        .R(SR));
endmodule

module top_auto_ds_0_axi_dwidth_converter_v2_1_8_axi_downsizer
   (E,
    s_axi_arready,
    s_axi_rlast,
    s_axi_bresp,
    din,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_wlast,
    \m_axi_arsize[2] ,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    s_axi_rresp,
    s_axi_bvalid,
    m_axi_bready,
    m_axi_awvalid,
    m_axi_awaddr,
    m_axi_wvalid,
    s_axi_wready,
    m_axi_arvalid,
    m_axi_araddr,
    m_axi_rready,
    s_axi_rvalid,
    s_axi_rdata,
    m_axi_awlock,
    m_axi_awburst,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_arlock,
    m_axi_arburst,
    s_axi_bid,
    s_axi_rid,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_arsize,
    s_axi_arlen,
    s_axi_arburst,
    m_axi_rlast,
    s_axi_awaddr,
    s_axi_araddr,
    CLK,
    s_axi_awid,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_arid,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    m_axi_rdata,
    m_axi_bvalid,
    s_axi_bready,
    m_axi_awready,
    out,
    s_axi_wvalid,
    m_axi_wready,
    m_axi_arready,
    s_axi_rready,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_bresp,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_awvalid,
    s_axi_arvalid);
  output [0:0]E;
  output [0:0]s_axi_arready;
  output s_axi_rlast;
  output [1:0]s_axi_bresp;
  output [10:0]din;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_wlast;
  output [10:0]\m_axi_arsize[2] ;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [1:0]s_axi_rresp;
  output s_axi_bvalid;
  output m_axi_bready;
  output m_axi_awvalid;
  output [31:0]m_axi_awaddr;
  output m_axi_wvalid;
  output s_axi_wready;
  output m_axi_arvalid;
  output [31:0]m_axi_araddr;
  output m_axi_rready;
  output s_axi_rvalid;
  output [127:0]s_axi_rdata;
  output [0:0]m_axi_awlock;
  output [1:0]m_axi_awburst;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output [0:0]m_axi_arlock;
  output [1:0]m_axi_arburst;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_arsize;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input m_axi_rlast;
  input [31:0]s_axi_awaddr;
  input [31:0]s_axi_araddr;
  input CLK;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_arid;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [31:0]m_axi_rdata;
  input m_axi_bvalid;
  input s_axi_bready;
  input m_axi_awready;
  input out;
  input s_axi_wvalid;
  input m_axi_wready;
  input m_axi_arready;
  input s_axi_rready;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  input [1:0]m_axi_bresp;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_awvalid;
  input s_axi_arvalid;

  wire CLK;
  wire [0:0]E;
  wire S_AXI_RDATA_II;
  wire \USE_B_CHANNEL.cmd_b_queue/inst/empty ;
  wire \USE_READ.read_addr_inst_n_197 ;
  wire \USE_READ.read_addr_inst_n_57 ;
  wire \USE_READ.read_addr_inst_n_65 ;
  wire \USE_READ.read_addr_inst_n_66 ;
  wire \USE_READ.read_addr_inst_n_67 ;
  wire \USE_READ.read_addr_inst_n_68 ;
  wire \USE_READ.read_data_inst_n_2 ;
  wire \USE_READ.read_data_inst_n_3 ;
  wire \USE_READ.read_data_inst_n_6 ;
  wire \USE_WRITE.write_addr_inst_n_10 ;
  wire \USE_WRITE.write_addr_inst_n_71 ;
  wire \USE_WRITE.write_data_inst_n_3 ;
  wire \USE_WRITE.write_data_inst_n_4 ;
  wire [31:0]\WORD_LANE[0].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[1].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[2].S_AXI_RDATA_II_reg ;
  wire [31:0]\WORD_LANE[3].S_AXI_RDATA_II_reg ;
  wire [1:0]areset_d;
  wire [3:0]current_word_1;
  wire [3:0]current_word_1_0;
  wire [10:0]din;
  wire first_mi_word;
  wire first_word;
  wire [7:7]length_counter_1_reg;
  wire [7:7]length_counter_1_reg_1;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [10:0]\m_axi_arsize[2] ;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire out;
  wire [3:0]p_0_in;
  wire p_10_out;
  wire p_2_in;
  wire p_2_out;
  wire p_5_out;
  wire p_8_out;
  wire pop_mi_data;
  wire [7:0]rd_cmd_length;
  wire rd_cmd_mirror;
  wire rd_cmd_ready;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [0:0]s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_cmd_b_ready;
  wire [7:0]wr_cmd_b_repeat;
  wire wr_cmd_b_split;
  wire wr_cmd_fix;
  wire [7:0]wr_cmd_length;

  top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer__parameterized0 \USE_READ.read_addr_inst 
       (.CLK(CLK),
        .D({\USE_READ.read_addr_inst_n_65 ,\USE_READ.read_addr_inst_n_66 ,\USE_READ.read_addr_inst_n_67 ,\USE_READ.read_addr_inst_n_68 }),
        .E(p_10_out),
        .Q(length_counter_1_reg),
        .SR(\USE_WRITE.write_addr_inst_n_10 ),
        .\S_AXI_RRESP_ACC_reg[0] (\USE_READ.read_addr_inst_n_197 ),
        .\S_AXI_RRESP_ACC_reg[0]_0 (\USE_READ.read_data_inst_n_6 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31] (\USE_READ.read_addr_inst_n_57 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 (S_AXI_RDATA_II),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1 (\WORD_LANE[0].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63] (p_8_out),
        .\WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0 (\WORD_LANE[1].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95] (p_5_out),
        .\WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0 (\WORD_LANE[2].S_AXI_RDATA_II_reg ),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127] (p_2_out),
        .\WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0 (\WORD_LANE[3].S_AXI_RDATA_II_reg ),
        .areset_d(areset_d),
        .\areset_d_reg[1] (\USE_WRITE.write_addr_inst_n_71 ),
        .\current_word_1_reg[3] (current_word_1),
        .dout({rd_cmd_mirror,rd_cmd_length}),
        .first_mi_word_reg(pop_mi_data),
        .first_word(first_word),
        .\goreg_dm.dout_i_reg[8] (\USE_READ.read_data_inst_n_3 ),
        .\goreg_dm.dout_i_reg[9] (\USE_READ.read_data_inst_n_2 ),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .\m_axi_arsize[2] (\m_axi_arsize[2] ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .rd_en(rd_cmd_ready),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  top_auto_ds_0_axi_dwidth_converter_v2_1_8_r_downsizer \USE_READ.read_data_inst 
       (.CLK(CLK),
        .D({\USE_READ.read_addr_inst_n_65 ,\USE_READ.read_addr_inst_n_66 ,\USE_READ.read_addr_inst_n_67 ,\USE_READ.read_addr_inst_n_68 }),
        .E(pop_mi_data),
        .Q(length_counter_1_reg),
        .SR(\USE_WRITE.write_addr_inst_n_10 ),
        .\S_AXI_RRESP_ACC_reg[0]_0 (\USE_READ.read_data_inst_n_6 ),
        .\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 (\USE_READ.read_data_inst_n_3 ),
        .\current_word_1_reg[3]_0 (current_word_1),
        .dout({rd_cmd_mirror,rd_cmd_length}),
        .empty_fwft_i_reg(\USE_READ.read_addr_inst_n_57 ),
        .first_word(first_word),
        .\goreg_dm.dout_i_reg[0] (\USE_READ.read_addr_inst_n_197 ),
        .\goreg_dm.dout_i_reg[10] (S_AXI_RDATA_II),
        .\goreg_dm.dout_i_reg[10]_0 (p_10_out),
        .\goreg_dm.dout_i_reg[10]_1 (p_8_out),
        .\goreg_dm.dout_i_reg[10]_2 (p_5_out),
        .\goreg_dm.dout_i_reg[10]_3 (p_2_out),
        .\gpregsm1.curr_fwft_state_reg[0] (\USE_READ.read_data_inst_n_2 ),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .rd_en(rd_cmd_ready),
        .\s_axi_rdata[127] (\WORD_LANE[3].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[31] (\WORD_LANE[0].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[63] (\WORD_LANE[1].S_AXI_RDATA_II_reg ),
        .\s_axi_rdata[95] (\WORD_LANE[2].S_AXI_RDATA_II_reg ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp));
  top_auto_ds_0_axi_dwidth_converter_v2_1_8_b_downsizer \USE_WRITE.USE_SPLIT.write_resp_inst 
       (.CLK(CLK),
        .SR(\USE_WRITE.write_addr_inst_n_10 ),
        .dout({wr_cmd_b_split,wr_cmd_b_repeat}),
        .empty(\USE_B_CHANNEL.cmd_b_queue/inst/empty ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .rd_en(wr_cmd_b_ready),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid));
  top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer \USE_WRITE.write_addr_inst 
       (.CLK(CLK),
        .D(p_0_in),
        .E(p_2_in),
        .Q(length_counter_1_reg_1),
        .SR(\USE_WRITE.write_addr_inst_n_10 ),
        .areset_d(areset_d),
        .command_ongoing_reg_0(\USE_WRITE.write_addr_inst_n_71 ),
        .\current_word_1_reg[2] ({wr_cmd_fix,wr_cmd_length}),
        .\current_word_1_reg[3] (current_word_1_0),
        .din(din),
        .dout({wr_cmd_b_split,wr_cmd_b_repeat}),
        .empty(\USE_B_CHANNEL.cmd_b_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .first_word_reg(\USE_WRITE.write_data_inst_n_4 ),
        .\goreg_dm.dout_i_reg[8] (\USE_WRITE.write_data_inst_n_3 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(out),
        .rd_en(wr_cmd_b_ready),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(E),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
  top_auto_ds_0_axi_dwidth_converter_v2_1_8_w_downsizer \USE_WRITE.write_data_inst 
       (.CLK(CLK),
        .D(p_0_in),
        .E(p_2_in),
        .Q(length_counter_1_reg_1),
        .SR(\USE_WRITE.write_addr_inst_n_10 ),
        .\current_word_1_reg[3]_0 (\USE_WRITE.write_data_inst_n_4 ),
        .\current_word_1_reg[3]_1 (current_word_1_0),
        .first_mi_word(first_mi_word),
        .\goreg_dm.dout_i_reg[28] ({wr_cmd_fix,wr_cmd_length}),
        .m_axi_wlast(m_axi_wlast),
        .s_axi_wready(\USE_WRITE.write_data_inst_n_3 ));
endmodule

module top_auto_ds_0_axi_dwidth_converter_v2_1_8_b_downsizer
   (rd_en,
    s_axi_bvalid,
    m_axi_bready,
    s_axi_bresp,
    SR,
    CLK,
    dout,
    m_axi_bvalid,
    s_axi_bready,
    empty,
    m_axi_bresp);
  output rd_en;
  output s_axi_bvalid;
  output m_axi_bready;
  output [1:0]s_axi_bresp;
  input [0:0]SR;
  input CLK;
  input [8:0]dout;
  input m_axi_bvalid;
  input s_axi_bready;
  input empty;
  input [1:0]m_axi_bresp;

  wire CLK;
  wire [0:0]SR;
  wire [1:0]S_AXI_BRESP_ACC;
  wire [8:0]dout;
  wire empty;
  wire first_mi_word;
  wire last_word;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [7:0]next_repeat_cnt;
  wire p_1_in;
  wire rd_en;
  wire \repeat_cnt[1]_i_1_n_0 ;
  wire \repeat_cnt[2]_i_2_n_0 ;
  wire \repeat_cnt[3]_i_2_n_0 ;
  wire \repeat_cnt[4]_i_2_n_0 ;
  wire \repeat_cnt[5]_i_2_n_0 ;
  wire \repeat_cnt[6]_i_2_n_0 ;
  wire \repeat_cnt[7]_i_2_n_0 ;
  wire [7:0]repeat_cnt_reg__0;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_bvalid_INST_0_i_1_n_0;
  wire s_axi_bvalid_INST_0_i_2_n_0;

  FDRE \S_AXI_BRESP_ACC_reg[0] 
       (.C(CLK),
        .CE(p_1_in),
        .D(s_axi_bresp[0]),
        .Q(S_AXI_BRESP_ACC[0]),
        .R(SR));
  FDRE \S_AXI_BRESP_ACC_reg[1] 
       (.C(CLK),
        .CE(p_1_in),
        .D(s_axi_bresp[1]),
        .Q(S_AXI_BRESP_ACC[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    fifo_gen_inst_i_7
       (.I0(s_axi_bvalid_INST_0_i_1_n_0),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .I3(empty),
        .O(rd_en));
  LUT3 #(
    .INIT(8'hA8)) 
    first_mi_word_i_1
       (.I0(m_axi_bvalid),
        .I1(s_axi_bvalid_INST_0_i_1_n_0),
        .I2(s_axi_bready),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT1 #(
    .INIT(2'h1)) 
    first_mi_word_i_2
       (.I0(s_axi_bvalid_INST_0_i_1_n_0),
        .O(last_word));
  FDSE first_mi_word_reg
       (.C(CLK),
        .CE(p_1_in),
        .D(last_word),
        .Q(first_mi_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    m_axi_bready_INST_0
       (.I0(s_axi_bvalid_INST_0_i_1_n_0),
        .I1(s_axi_bready),
        .O(m_axi_bready));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \repeat_cnt[0]_i_1 
       (.I0(repeat_cnt_reg__0[0]),
        .I1(first_mi_word),
        .I2(dout[0]),
        .O(next_repeat_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \repeat_cnt[1]_i_1 
       (.I0(repeat_cnt_reg__0[0]),
        .I1(dout[0]),
        .I2(repeat_cnt_reg__0[1]),
        .I3(first_mi_word),
        .I4(dout[1]),
        .O(\repeat_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFC030505FC03)) 
    \repeat_cnt[2]_i_1 
       (.I0(dout[1]),
        .I1(repeat_cnt_reg__0[1]),
        .I2(\repeat_cnt[2]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(next_repeat_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \repeat_cnt[2]_i_2 
       (.I0(dout[0]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[0]),
        .O(\repeat_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[3]_i_1 
       (.I0(dout[2]),
        .I1(repeat_cnt_reg__0[2]),
        .I2(\repeat_cnt[3]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[3]),
        .I4(first_mi_word),
        .I5(dout[3]),
        .O(next_repeat_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \repeat_cnt[3]_i_2 
       (.I0(repeat_cnt_reg__0[0]),
        .I1(dout[0]),
        .I2(repeat_cnt_reg__0[1]),
        .I3(first_mi_word),
        .I4(dout[1]),
        .O(\repeat_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[4]_i_1 
       (.I0(dout[3]),
        .I1(repeat_cnt_reg__0[3]),
        .I2(\repeat_cnt[4]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[4]),
        .I4(first_mi_word),
        .I5(dout[4]),
        .O(next_repeat_cnt[4]));
  LUT6 #(
    .INIT(64'h0000000305050003)) 
    \repeat_cnt[4]_i_2 
       (.I0(dout[1]),
        .I1(repeat_cnt_reg__0[1]),
        .I2(\repeat_cnt[2]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(\repeat_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[5]_i_1 
       (.I0(dout[4]),
        .I1(repeat_cnt_reg__0[4]),
        .I2(\repeat_cnt[5]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[5]),
        .I4(first_mi_word),
        .I5(dout[5]),
        .O(next_repeat_cnt[5]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \repeat_cnt[5]_i_2 
       (.I0(dout[2]),
        .I1(repeat_cnt_reg__0[2]),
        .I2(\repeat_cnt[3]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[3]),
        .I4(first_mi_word),
        .I5(dout[3]),
        .O(\repeat_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[6]_i_1 
       (.I0(dout[5]),
        .I1(repeat_cnt_reg__0[5]),
        .I2(\repeat_cnt[6]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[6]),
        .I4(first_mi_word),
        .I5(dout[6]),
        .O(next_repeat_cnt[6]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \repeat_cnt[6]_i_2 
       (.I0(dout[3]),
        .I1(repeat_cnt_reg__0[3]),
        .I2(\repeat_cnt[4]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[4]),
        .I4(first_mi_word),
        .I5(dout[4]),
        .O(\repeat_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \repeat_cnt[7]_i_1 
       (.I0(dout[6]),
        .I1(repeat_cnt_reg__0[6]),
        .I2(\repeat_cnt[7]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[7]),
        .I4(first_mi_word),
        .I5(dout[7]),
        .O(next_repeat_cnt[7]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \repeat_cnt[7]_i_2 
       (.I0(dout[4]),
        .I1(repeat_cnt_reg__0[4]),
        .I2(\repeat_cnt[5]_i_2_n_0 ),
        .I3(repeat_cnt_reg__0[5]),
        .I4(first_mi_word),
        .I5(dout[5]),
        .O(\repeat_cnt[7]_i_2_n_0 ));
  FDRE \repeat_cnt_reg[0] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[0]),
        .Q(repeat_cnt_reg__0[0]),
        .R(SR));
  FDRE \repeat_cnt_reg[1] 
       (.C(CLK),
        .CE(p_1_in),
        .D(\repeat_cnt[1]_i_1_n_0 ),
        .Q(repeat_cnt_reg__0[1]),
        .R(SR));
  FDRE \repeat_cnt_reg[2] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[2]),
        .Q(repeat_cnt_reg__0[2]),
        .R(SR));
  FDRE \repeat_cnt_reg[3] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[3]),
        .Q(repeat_cnt_reg__0[3]),
        .R(SR));
  FDRE \repeat_cnt_reg[4] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[4]),
        .Q(repeat_cnt_reg__0[4]),
        .R(SR));
  FDRE \repeat_cnt_reg[5] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[5]),
        .Q(repeat_cnt_reg__0[5]),
        .R(SR));
  FDRE \repeat_cnt_reg[6] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[6]),
        .Q(repeat_cnt_reg__0[6]),
        .R(SR));
  FDRE \repeat_cnt_reg[7] 
       (.C(CLK),
        .CE(p_1_in),
        .D(next_repeat_cnt[7]),
        .Q(repeat_cnt_reg__0[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFF40FF00FB40FF40)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(first_mi_word),
        .I1(dout[8]),
        .I2(S_AXI_BRESP_ACC[0]),
        .I3(m_axi_bresp[0]),
        .I4(S_AXI_BRESP_ACC[1]),
        .I5(m_axi_bresp[1]),
        .O(s_axi_bresp[0]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(first_mi_word),
        .I1(dout[8]),
        .I2(S_AXI_BRESP_ACC[1]),
        .I3(m_axi_bresp[1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_bvalid_INST_0
       (.I0(m_axi_bvalid),
        .I1(s_axi_bvalid_INST_0_i_1_n_0),
        .O(s_axi_bvalid));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    s_axi_bvalid_INST_0_i_1
       (.I0(dout[8]),
        .I1(s_axi_bvalid_INST_0_i_2_n_0),
        .I2(repeat_cnt_reg__0[1]),
        .I3(repeat_cnt_reg__0[7]),
        .I4(repeat_cnt_reg__0[5]),
        .O(s_axi_bvalid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    s_axi_bvalid_INST_0_i_2
       (.I0(repeat_cnt_reg__0[2]),
        .I1(first_mi_word),
        .I2(repeat_cnt_reg__0[6]),
        .I3(repeat_cnt_reg__0[4]),
        .I4(repeat_cnt_reg__0[0]),
        .I5(repeat_cnt_reg__0[3]),
        .O(s_axi_bvalid_INST_0_i_2_n_0));
endmodule

module top_auto_ds_0_axi_dwidth_converter_v2_1_8_r_downsizer
   (first_word,
    Q,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ,
    s_axi_rresp,
    \S_AXI_RRESP_ACC_reg[0]_0 ,
    rd_en,
    \current_word_1_reg[3]_0 ,
    \s_axi_rdata[31] ,
    \s_axi_rdata[63] ,
    \s_axi_rdata[95] ,
    \s_axi_rdata[127] ,
    SR,
    E,
    m_axi_rlast,
    CLK,
    dout,
    \goreg_dm.dout_i_reg[0] ,
    m_axi_rresp,
    s_axi_rready,
    empty_fwft_i_reg,
    D,
    \goreg_dm.dout_i_reg[10] ,
    \goreg_dm.dout_i_reg[10]_0 ,
    m_axi_rdata,
    \goreg_dm.dout_i_reg[10]_1 ,
    \goreg_dm.dout_i_reg[10]_2 ,
    \goreg_dm.dout_i_reg[10]_3 );
  output first_word;
  output [0:0]Q;
  output \gpregsm1.curr_fwft_state_reg[0] ;
  output \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  output [1:0]s_axi_rresp;
  output \S_AXI_RRESP_ACC_reg[0]_0 ;
  output rd_en;
  output [3:0]\current_word_1_reg[3]_0 ;
  output [31:0]\s_axi_rdata[31] ;
  output [31:0]\s_axi_rdata[63] ;
  output [31:0]\s_axi_rdata[95] ;
  output [31:0]\s_axi_rdata[127] ;
  input [0:0]SR;
  input [0:0]E;
  input m_axi_rlast;
  input CLK;
  input [8:0]dout;
  input \goreg_dm.dout_i_reg[0] ;
  input [1:0]m_axi_rresp;
  input s_axi_rready;
  input empty_fwft_i_reg;
  input [3:0]D;
  input [0:0]\goreg_dm.dout_i_reg[10] ;
  input [0:0]\goreg_dm.dout_i_reg[10]_0 ;
  input [31:0]m_axi_rdata;
  input [0:0]\goreg_dm.dout_i_reg[10]_1 ;
  input [0:0]\goreg_dm.dout_i_reg[10]_2 ;
  input [0:0]\goreg_dm.dout_i_reg[10]_3 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [1:0]S_AXI_RRESP_ACC;
  wire \S_AXI_RRESP_ACC_reg[0]_0 ;
  wire \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ;
  wire [3:0]\current_word_1_reg[3]_0 ;
  wire [8:0]dout;
  wire empty_fwft_i_reg;
  wire first_word;
  wire \goreg_dm.dout_i_reg[0] ;
  wire [0:0]\goreg_dm.dout_i_reg[10] ;
  wire [0:0]\goreg_dm.dout_i_reg[10]_0 ;
  wire [0:0]\goreg_dm.dout_i_reg[10]_1 ;
  wire [0:0]\goreg_dm.dout_i_reg[10]_2 ;
  wire [0:0]\goreg_dm.dout_i_reg[10]_3 ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire \length_counter_1[1]_i_1__0_n_0 ;
  wire \length_counter_1[2]_i_2__0_n_0 ;
  wire \length_counter_1[3]_i_2_n_0 ;
  wire \length_counter_1[4]_i_2__0_n_0 ;
  wire \length_counter_1[5]_i_2__0_n_0 ;
  wire \length_counter_1[6]_i_2__0_n_0 ;
  wire [6:0]length_counter_1_reg;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready_INST_0_i_3_n_0;
  wire [1:0]m_axi_rresp;
  wire [7:0]next_length_counter__0;
  wire rd_en;
  wire [31:0]\s_axi_rdata[127] ;
  wire [31:0]\s_axi_rdata[31] ;
  wire [31:0]\s_axi_rdata[63] ;
  wire [31:0]\s_axi_rdata[95] ;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid_INST_0_i_10_n_0;
  wire s_axi_rvalid_INST_0_i_11_n_0;
  wire s_axi_rvalid_INST_0_i_12_n_0;
  wire s_axi_rvalid_INST_0_i_13_n_0;
  wire s_axi_rvalid_INST_0_i_9_n_0;

  FDRE \S_AXI_RRESP_ACC_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_rresp[0]),
        .Q(S_AXI_RRESP_ACC[0]),
        .R(SR));
  FDRE \S_AXI_RRESP_ACC_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(s_axi_rresp[1]),
        .Q(S_AXI_RRESP_ACC[1]),
        .R(SR));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[0] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[31] [0]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[10] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[31] [10]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[11] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[31] [11]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[12] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[31] [12]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[13] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[31] [13]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[14] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[31] [14]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[15] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[31] [15]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[16] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[31] [16]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[17] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[31] [17]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[18] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[31] [18]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[19] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[31] [19]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[1] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[31] [1]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[20] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[31] [20]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[21] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[31] [21]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[22] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[31] [22]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[23] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[31] [23]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[24] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[31] [24]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[25] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[31] [25]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[26] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[31] [26]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[27] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[31] [27]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[28] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[31] [28]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[29] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[31] [29]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[2] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[31] [2]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[30] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[31] [30]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[31] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[31] [31]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[3] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[31] [3]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[4] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[31] [4]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[5] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[31] [5]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[6] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[31] [6]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[7] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[31] [7]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[8] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[31] [8]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[0].S_AXI_RDATA_II_reg[9] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_0 ),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[31] [9]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[32] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[63] [0]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[33] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[63] [1]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[34] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[63] [2]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[35] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[63] [3]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[36] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[63] [4]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[37] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[63] [5]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[38] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[63] [6]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[39] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[63] [7]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[40] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[63] [8]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[41] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[63] [9]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[42] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[63] [10]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[43] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[63] [11]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[44] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[63] [12]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[45] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[63] [13]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[46] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[63] [14]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[47] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[63] [15]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[48] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[63] [16]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[49] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[63] [17]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[50] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[63] [18]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[51] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[63] [19]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[52] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[63] [20]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[53] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[63] [21]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[54] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[63] [22]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[55] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[63] [23]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[56] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[63] [24]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[57] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[63] [25]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[58] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[63] [26]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[59] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[63] [27]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[60] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[63] [28]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[61] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[63] [29]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[62] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[63] [30]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[1].S_AXI_RDATA_II_reg[63] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_1 ),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[63] [31]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[64] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[95] [0]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[65] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[95] [1]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[66] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[95] [2]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[67] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[95] [3]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[68] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[95] [4]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[69] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[95] [5]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[70] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[95] [6]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[71] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[95] [7]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[72] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[95] [8]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[73] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[95] [9]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[74] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[95] [10]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[75] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[95] [11]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[76] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[95] [12]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[77] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[95] [13]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[78] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[95] [14]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[79] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[95] [15]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[80] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[95] [16]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[81] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[95] [17]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[82] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[95] [18]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[83] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[95] [19]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[84] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[95] [20]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[85] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[95] [21]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[86] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[95] [22]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[87] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[95] [23]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[88] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[95] [24]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[89] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[95] [25]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[90] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[95] [26]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[91] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[95] [27]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[92] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[95] [28]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[93] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[95] [29]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[94] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[95] [30]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[2].S_AXI_RDATA_II_reg[95] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_2 ),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[95] [31]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[100] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[4]),
        .Q(\s_axi_rdata[127] [4]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[101] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[5]),
        .Q(\s_axi_rdata[127] [5]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[102] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[6]),
        .Q(\s_axi_rdata[127] [6]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[103] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[7]),
        .Q(\s_axi_rdata[127] [7]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[104] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[8]),
        .Q(\s_axi_rdata[127] [8]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[105] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[9]),
        .Q(\s_axi_rdata[127] [9]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[106] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[10]),
        .Q(\s_axi_rdata[127] [10]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[107] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[11]),
        .Q(\s_axi_rdata[127] [11]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[108] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[12]),
        .Q(\s_axi_rdata[127] [12]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[109] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[13]),
        .Q(\s_axi_rdata[127] [13]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[110] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[14]),
        .Q(\s_axi_rdata[127] [14]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[111] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[15]),
        .Q(\s_axi_rdata[127] [15]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[112] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[16]),
        .Q(\s_axi_rdata[127] [16]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[113] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[17]),
        .Q(\s_axi_rdata[127] [17]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[114] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[18]),
        .Q(\s_axi_rdata[127] [18]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[115] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[19]),
        .Q(\s_axi_rdata[127] [19]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[116] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[20]),
        .Q(\s_axi_rdata[127] [20]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[117] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[21]),
        .Q(\s_axi_rdata[127] [21]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[118] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[22]),
        .Q(\s_axi_rdata[127] [22]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[119] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[23]),
        .Q(\s_axi_rdata[127] [23]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[120] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[24]),
        .Q(\s_axi_rdata[127] [24]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[121] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[25]),
        .Q(\s_axi_rdata[127] [25]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[122] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[26]),
        .Q(\s_axi_rdata[127] [26]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[123] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[27]),
        .Q(\s_axi_rdata[127] [27]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[124] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[28]),
        .Q(\s_axi_rdata[127] [28]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[125] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[29]),
        .Q(\s_axi_rdata[127] [29]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[126] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[30]),
        .Q(\s_axi_rdata[127] [30]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[127] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[31]),
        .Q(\s_axi_rdata[127] [31]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[96] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[0]),
        .Q(\s_axi_rdata[127] [0]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[97] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[1]),
        .Q(\s_axi_rdata[127] [1]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[98] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[2]),
        .Q(\s_axi_rdata[127] [2]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \WORD_LANE[3].S_AXI_RDATA_II_reg[99] 
       (.C(CLK),
        .CE(\goreg_dm.dout_i_reg[10]_3 ),
        .D(m_axi_rdata[3]),
        .Q(\s_axi_rdata[127] [3]),
        .R(\goreg_dm.dout_i_reg[10] ));
  FDRE \current_word_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\current_word_1_reg[3]_0 [0]),
        .R(SR));
  FDRE \current_word_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\current_word_1_reg[3]_0 [1]),
        .R(SR));
  FDRE \current_word_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\current_word_1_reg[3]_0 [2]),
        .R(SR));
  FDRE \current_word_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\current_word_1_reg[3]_0 [3]),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_gen_inst_i_12__0
       (.I0(s_axi_rready),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(empty_fwft_i_reg),
        .O(rd_en));
  FDSE first_mi_word_reg
       (.C(CLK),
        .CE(E),
        .D(m_axi_rlast),
        .Q(first_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \length_counter_1[0]_i_1__0 
       (.I0(length_counter_1_reg[0]),
        .I1(first_word),
        .I2(dout[0]),
        .O(next_length_counter__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \length_counter_1[1]_i_1__0 
       (.I0(length_counter_1_reg[0]),
        .I1(dout[0]),
        .I2(length_counter_1_reg[1]),
        .I3(first_word),
        .I4(dout[1]),
        .O(\length_counter_1[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFC030505FC03)) 
    \length_counter_1[2]_i_1__0 
       (.I0(dout[1]),
        .I1(length_counter_1_reg[1]),
        .I2(\length_counter_1[2]_i_2__0_n_0 ),
        .I3(length_counter_1_reg[2]),
        .I4(first_word),
        .I5(dout[2]),
        .O(next_length_counter__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \length_counter_1[2]_i_2__0 
       (.I0(dout[0]),
        .I1(first_word),
        .I2(length_counter_1_reg[0]),
        .O(\length_counter_1[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[3]_i_1__0 
       (.I0(dout[2]),
        .I1(length_counter_1_reg[2]),
        .I2(\length_counter_1[3]_i_2_n_0 ),
        .I3(length_counter_1_reg[3]),
        .I4(first_word),
        .I5(dout[3]),
        .O(next_length_counter__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \length_counter_1[3]_i_2 
       (.I0(length_counter_1_reg[0]),
        .I1(dout[0]),
        .I2(length_counter_1_reg[1]),
        .I3(first_word),
        .I4(dout[1]),
        .O(\length_counter_1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[4]_i_1__0 
       (.I0(dout[3]),
        .I1(length_counter_1_reg[3]),
        .I2(\length_counter_1[4]_i_2__0_n_0 ),
        .I3(length_counter_1_reg[4]),
        .I4(first_word),
        .I5(dout[4]),
        .O(next_length_counter__0[4]));
  LUT6 #(
    .INIT(64'h0000000305050003)) 
    \length_counter_1[4]_i_2__0 
       (.I0(dout[1]),
        .I1(length_counter_1_reg[1]),
        .I2(\length_counter_1[2]_i_2__0_n_0 ),
        .I3(length_counter_1_reg[2]),
        .I4(first_word),
        .I5(dout[2]),
        .O(\length_counter_1[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[5]_i_1__0 
       (.I0(dout[4]),
        .I1(length_counter_1_reg[4]),
        .I2(\length_counter_1[5]_i_2__0_n_0 ),
        .I3(length_counter_1_reg[5]),
        .I4(first_word),
        .I5(dout[5]),
        .O(next_length_counter__0[5]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \length_counter_1[5]_i_2__0 
       (.I0(dout[2]),
        .I1(length_counter_1_reg[2]),
        .I2(\length_counter_1[3]_i_2_n_0 ),
        .I3(length_counter_1_reg[3]),
        .I4(first_word),
        .I5(dout[3]),
        .O(\length_counter_1[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[6]_i_1__0 
       (.I0(dout[5]),
        .I1(length_counter_1_reg[5]),
        .I2(\length_counter_1[6]_i_2__0_n_0 ),
        .I3(length_counter_1_reg[6]),
        .I4(first_word),
        .I5(dout[6]),
        .O(next_length_counter__0[6]));
  LUT6 #(
    .INIT(64'h0000000000044404)) 
    \length_counter_1[6]_i_2__0 
       (.I0(s_axi_rvalid_INST_0_i_12_n_0),
        .I1(\length_counter_1[3]_i_2_n_0 ),
        .I2(length_counter_1_reg[2]),
        .I3(first_word),
        .I4(dout[2]),
        .I5(s_axi_rvalid_INST_0_i_10_n_0),
        .O(\length_counter_1[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[7]_i_1__0 
       (.I0(dout[6]),
        .I1(length_counter_1_reg[6]),
        .I2(s_axi_rvalid_INST_0_i_9_n_0),
        .I3(Q),
        .I4(first_word),
        .I5(dout[7]),
        .O(next_length_counter__0[7]));
  FDRE \length_counter_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[0]),
        .Q(length_counter_1_reg[0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\length_counter_1[1]_i_1__0_n_0 ),
        .Q(length_counter_1_reg[1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[2]),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[3]),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[4]),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[5]),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[6]),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter__0[7]),
        .Q(Q),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    m_axi_rready_INST_0_i_2
       (.I0(s_axi_rvalid_INST_0_i_13_n_0),
        .I1(s_axi_rvalid_INST_0_i_12_n_0),
        .I2(\length_counter_1[3]_i_2_n_0 ),
        .I3(s_axi_rvalid_INST_0_i_11_n_0),
        .I4(s_axi_rvalid_INST_0_i_10_n_0),
        .I5(m_axi_rready_INST_0_i_3_n_0),
        .O(\WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_rready_INST_0_i_3
       (.I0(dout[6]),
        .I1(first_word),
        .I2(length_counter_1_reg[6]),
        .O(m_axi_rready_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(S_AXI_RRESP_ACC[0]),
        .I1(\goreg_dm.dout_i_reg[0] ),
        .I2(m_axi_rresp[0]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(S_AXI_RRESP_ACC[1]),
        .I1(\goreg_dm.dout_i_reg[0] ),
        .I2(m_axi_rresp[1]),
        .O(s_axi_rresp[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF40F2)) 
    \s_axi_rresp[1]_INST_0_i_4 
       (.I0(S_AXI_RRESP_ACC[0]),
        .I1(m_axi_rresp[0]),
        .I2(m_axi_rresp[1]),
        .I3(S_AXI_RRESP_ACC[1]),
        .I4(first_word),
        .I5(dout[8]),
        .O(\S_AXI_RRESP_ACC_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_rvalid_INST_0_i_10
       (.I0(dout[4]),
        .I1(first_word),
        .I2(length_counter_1_reg[4]),
        .O(s_axi_rvalid_INST_0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_rvalid_INST_0_i_11
       (.I0(dout[2]),
        .I1(first_word),
        .I2(length_counter_1_reg[2]),
        .O(s_axi_rvalid_INST_0_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_rvalid_INST_0_i_12
       (.I0(dout[3]),
        .I1(first_word),
        .I2(length_counter_1_reg[3]),
        .O(s_axi_rvalid_INST_0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_rvalid_INST_0_i_13
       (.I0(dout[5]),
        .I1(first_word),
        .I2(length_counter_1_reg[5]),
        .O(s_axi_rvalid_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    s_axi_rvalid_INST_0_i_5
       (.I0(dout[6]),
        .I1(length_counter_1_reg[6]),
        .I2(s_axi_rvalid_INST_0_i_9_n_0),
        .I3(Q),
        .I4(first_word),
        .I5(dout[7]),
        .O(\gpregsm1.curr_fwft_state_reg[0] ));
  LUT5 #(
    .INIT(32'h00000010)) 
    s_axi_rvalid_INST_0_i_9
       (.I0(s_axi_rvalid_INST_0_i_10_n_0),
        .I1(s_axi_rvalid_INST_0_i_11_n_0),
        .I2(\length_counter_1[3]_i_2_n_0 ),
        .I3(s_axi_rvalid_INST_0_i_12_n_0),
        .I4(s_axi_rvalid_INST_0_i_13_n_0),
        .O(s_axi_rvalid_INST_0_i_9_n_0));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "virtex7" *) 
(* C_FIFO_MODE = "0" *) (* C_MAX_SPLIT_BEATS = "256" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "2" *) (* C_M_AXI_DATA_WIDTH = "32" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "4" *) (* C_RATIO_LOG = "2" *) (* C_SUPPORTS_ID = "0" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "4" *) 
(* C_S_AXI_DATA_WIDTH = "128" *) (* C_S_AXI_ID_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "256" *) 
module top_auto_ds_0_axi_dwidth_converter_v2_1_8_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* KEEP = "true" *) input s_axi_aclk;
  (* KEEP = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* KEEP = "true" *) input m_axi_aclk;
  (* KEEP = "true" *) input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;

  top_auto_ds_0_axi_dwidth_converter_v2_1_8_axi_downsizer \gen_downsizer.gen_simple_downsizer.axi_downsizer_inst 
       (.CLK(s_axi_aclk),
        .E(s_axi_awready),
        .din({m_axi_awsize,m_axi_awlen}),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .\m_axi_arsize[2] ({m_axi_arsize,m_axi_arlen}),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .out(s_axi_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module top_auto_ds_0_axi_dwidth_converter_v2_1_8_w_downsizer
   (first_mi_word,
    m_axi_wlast,
    Q,
    s_axi_wready,
    \current_word_1_reg[3]_0 ,
    \current_word_1_reg[3]_1 ,
    SR,
    E,
    CLK,
    \goreg_dm.dout_i_reg[28] ,
    D);
  output first_mi_word;
  output m_axi_wlast;
  output [0:0]Q;
  output s_axi_wready;
  output \current_word_1_reg[3]_0 ;
  output [3:0]\current_word_1_reg[3]_1 ;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input [8:0]\goreg_dm.dout_i_reg[28] ;
  input [3:0]D;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \current_word_1_reg[3]_0 ;
  wire [3:0]\current_word_1_reg[3]_1 ;
  wire first_mi_word;
  wire [8:0]\goreg_dm.dout_i_reg[28] ;
  wire \length_counter_1[1]_i_1_n_0 ;
  wire \length_counter_1[2]_i_2_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_2_n_0 ;
  wire \length_counter_1[6]_i_2_n_0 ;
  wire [6:0]length_counter_1_reg;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wlast_INST_0_i_4_n_0;
  wire m_axi_wlast_INST_0_i_5_n_0;
  wire m_axi_wlast_INST_0_i_6_n_0;
  wire [7:0]next_length_counter;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_10_n_0;

  FDRE \current_word_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\current_word_1_reg[3]_1 [0]),
        .R(SR));
  FDRE \current_word_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\current_word_1_reg[3]_1 [1]),
        .R(SR));
  FDRE \current_word_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\current_word_1_reg[3]_1 [2]),
        .R(SR));
  FDRE \current_word_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\current_word_1_reg[3]_1 [3]),
        .R(SR));
  FDSE first_word_reg
       (.C(CLK),
        .CE(E),
        .D(m_axi_wlast),
        .Q(first_mi_word),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \length_counter_1[0]_i_1 
       (.I0(length_counter_1_reg[0]),
        .I1(first_mi_word),
        .I2(\goreg_dm.dout_i_reg[28] [0]),
        .O(next_length_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hCCA533A5)) 
    \length_counter_1[1]_i_1 
       (.I0(length_counter_1_reg[0]),
        .I1(\goreg_dm.dout_i_reg[28] [0]),
        .I2(length_counter_1_reg[1]),
        .I3(first_mi_word),
        .I4(\goreg_dm.dout_i_reg[28] [1]),
        .O(\length_counter_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFC030505FC03)) 
    \length_counter_1[2]_i_1 
       (.I0(\goreg_dm.dout_i_reg[28] [1]),
        .I1(length_counter_1_reg[1]),
        .I2(\length_counter_1[2]_i_2_n_0 ),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [2]),
        .O(next_length_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \length_counter_1[2]_i_2 
       (.I0(\goreg_dm.dout_i_reg[28] [0]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[0]),
        .O(\length_counter_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[3]_i_1 
       (.I0(\goreg_dm.dout_i_reg[28] [2]),
        .I1(length_counter_1_reg[2]),
        .I2(m_axi_wlast_INST_0_i_4_n_0),
        .I3(length_counter_1_reg[3]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [3]),
        .O(next_length_counter[3]));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[4]_i_1 
       (.I0(\goreg_dm.dout_i_reg[28] [3]),
        .I1(length_counter_1_reg[3]),
        .I2(\length_counter_1[4]_i_2_n_0 ),
        .I3(length_counter_1_reg[4]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [4]),
        .O(next_length_counter[4]));
  LUT6 #(
    .INIT(64'h0000000305050003)) 
    \length_counter_1[4]_i_2 
       (.I0(\goreg_dm.dout_i_reg[28] [1]),
        .I1(length_counter_1_reg[1]),
        .I2(\length_counter_1[2]_i_2_n_0 ),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[5]_i_1 
       (.I0(\goreg_dm.dout_i_reg[28] [4]),
        .I1(length_counter_1_reg[4]),
        .I2(\length_counter_1[5]_i_2_n_0 ),
        .I3(length_counter_1_reg[5]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [5]),
        .O(next_length_counter[5]));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    \length_counter_1[5]_i_2 
       (.I0(\goreg_dm.dout_i_reg[28] [2]),
        .I1(length_counter_1_reg[2]),
        .I2(m_axi_wlast_INST_0_i_4_n_0),
        .I3(length_counter_1_reg[3]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [3]),
        .O(\length_counter_1[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[6]_i_1 
       (.I0(\goreg_dm.dout_i_reg[28] [5]),
        .I1(length_counter_1_reg[5]),
        .I2(\length_counter_1[6]_i_2_n_0 ),
        .I3(length_counter_1_reg[6]),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [6]),
        .O(next_length_counter[6]));
  LUT6 #(
    .INIT(64'h0000000000044404)) 
    \length_counter_1[6]_i_2 
       (.I0(m_axi_wlast_INST_0_i_5_n_0),
        .I1(m_axi_wlast_INST_0_i_4_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(\goreg_dm.dout_i_reg[28] [2]),
        .I5(m_axi_wlast_INST_0_i_2_n_0),
        .O(\length_counter_1[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCF305050CF30)) 
    \length_counter_1[7]_i_1 
       (.I0(\goreg_dm.dout_i_reg[28] [6]),
        .I1(length_counter_1_reg[6]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(Q),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [7]),
        .O(next_length_counter[7]));
  FDRE \length_counter_1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[0]),
        .Q(length_counter_1_reg[0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\length_counter_1[1]_i_1_n_0 ),
        .Q(length_counter_1_reg[1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[2]),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[3]),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[4]),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[5]),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[6]),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(next_length_counter[7]),
        .Q(Q),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000003050500030)) 
    m_axi_wlast_INST_0
       (.I0(\goreg_dm.dout_i_reg[28] [6]),
        .I1(length_counter_1_reg[6]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(Q),
        .I4(first_mi_word),
        .I5(\goreg_dm.dout_i_reg[28] [7]),
        .O(m_axi_wlast));
  LUT5 #(
    .INIT(32'h00000010)) 
    m_axi_wlast_INST_0_i_1
       (.I0(m_axi_wlast_INST_0_i_2_n_0),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(m_axi_wlast_INST_0_i_4_n_0),
        .I3(m_axi_wlast_INST_0_i_5_n_0),
        .I4(m_axi_wlast_INST_0_i_6_n_0),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(\goreg_dm.dout_i_reg[28] [4]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[4]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\goreg_dm.dout_i_reg[28] [2]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[2]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    m_axi_wlast_INST_0_i_4
       (.I0(length_counter_1_reg[0]),
        .I1(\goreg_dm.dout_i_reg[28] [0]),
        .I2(length_counter_1_reg[1]),
        .I3(first_mi_word),
        .I4(\goreg_dm.dout_i_reg[28] [1]),
        .O(m_axi_wlast_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_5
       (.I0(\goreg_dm.dout_i_reg[28] [3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_6
       (.I0(\goreg_dm.dout_i_reg[28] [5]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[5]),
        .O(m_axi_wlast_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_wready_INST_0_i_10
       (.I0(\goreg_dm.dout_i_reg[28] [6]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[6]),
        .O(s_axi_wready_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    s_axi_wready_INST_0_i_6
       (.I0(m_axi_wlast_INST_0_i_6_n_0),
        .I1(m_axi_wlast_INST_0_i_5_n_0),
        .I2(m_axi_wlast_INST_0_i_4_n_0),
        .I3(m_axi_wlast_INST_0_i_3_n_0),
        .I4(m_axi_wlast_INST_0_i_2_n_0),
        .I5(s_axi_wready_INST_0_i_10_n_0),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_wready_INST_0_i_7
       (.I0(first_mi_word),
        .I1(\goreg_dm.dout_i_reg[28] [8]),
        .O(\current_word_1_reg[3]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "top_auto_ds_0,axi_dwidth_converter_v2_1_8_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dwidth_converter_v2_1_8_top,Vivado 2016.1" *) 
(* NotValidForBitStream *)
module top_auto_ds_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREGION" *) output [3:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output m_axi_rready;

  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "virtex7" *) 
  (* C_FIFO_MODE = "0" *) 
  (* C_MAX_SPLIT_BEATS = "256" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "2" *) 
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "4" *) 
  (* C_RATIO_LOG = "2" *) 
  (* C_SUPPORTS_ID = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "256" *) 
  top_auto_ds_0_axi_dwidth_converter_v2_1_8_top inst
       (.m_axi_aclk(1'b0),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_aresetn(1'b0),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module top_auto_ds_0_dmem
   (dout_i,
    clk,
    p_17_out,
    din,
    \gc0.count_d1_reg[4] ,
    count_d10_in,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [8:0]dout_i;
  input clk;
  input p_17_out;
  input [8:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]count_d10_in;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire clk;
  wire [4:0]count_d10_in;
  wire [8:0]din;
  wire [8:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [8:0]p_0_out;
  wire p_17_out;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_6_8_DOB_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_8_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_8_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(count_d10_in),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_17_out));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_6_8
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(count_d10_in),
        .DIA(din[7:6]),
        .DIB({1'b0,din[8]}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB({NLW_RAM_reg_0_31_6_8_DOB_UNCONNECTED[1],p_0_out[8]}),
        .DOC(NLW_RAM_reg_0_31_6_8_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_RAM_reg_0_31_6_8_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(p_17_out));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[8]),
        .Q(dout_i[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module top_auto_ds_0_dmem__parameterized0
   (dout_i,
    clk,
    ram_full_fb_i_reg,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [28:0]dout_i;
  input clk;
  input [0:0]ram_full_fb_i_reg;
  input [28:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire clk;
  wire [28:0]din;
  wire [28:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [28:0]p_0_out;
  wire [0:0]ram_full_fb_i_reg;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[13:12]),
        .DIB(din[15:14]),
        .DIC(din[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[13:12]),
        .DOB(p_0_out[15:14]),
        .DOC(p_0_out[17:16]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[19:18]),
        .DIB(din[21:20]),
        .DIC(din[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[19:18]),
        .DOB(p_0_out[21:20]),
        .DOC(p_0_out[23:22]),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_24_28
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[25:24]),
        .DIB(din[27:26]),
        .DIC({1'b0,din[28]}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[25:24]),
        .DOB(p_0_out[27:26]),
        .DOC({NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED[1],p_0_out[28]}),
        .DOD(NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[7:6]),
        .DIB(din[9:8]),
        .DIC(din[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(p_0_out[11:10]),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[10]),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[11]),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[12]),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[13]),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[14]),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[15]),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[16]),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[17]),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[18]),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[19]),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[20]),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[21]),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[22]),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[23]),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[24]),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[25]),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[26]),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[27]),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[28]),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[8]),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[9]),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module top_auto_ds_0_dmem__parameterized1
   (dout_i,
    clk,
    ram_full_fb_i_reg,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [28:0]dout_i;
  input clk;
  input [0:0]ram_full_fb_i_reg;
  input [28:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire clk;
  wire [28:0]din;
  wire [28:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [28:0]p_0_out;
  wire [0:0]ram_full_fb_i_reg;
  wire [1:0]NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:1]NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_0_5
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[1:0]),
        .DIB(din[3:2]),
        .DIC(din[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[1:0]),
        .DOB(p_0_out[3:2]),
        .DOC(p_0_out[5:4]),
        .DOD(NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_12_17
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[13:12]),
        .DIB(din[15:14]),
        .DIC(din[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[13:12]),
        .DOB(p_0_out[15:14]),
        .DOC(p_0_out[17:16]),
        .DOD(NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_18_23
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[19:18]),
        .DIB(din[21:20]),
        .DIC(din[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[19:18]),
        .DOB(p_0_out[21:20]),
        .DOC(p_0_out[23:22]),
        .DOD(NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_24_28
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[25:24]),
        .DIB(din[27:26]),
        .DIC({1'b0,din[28]}),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[25:24]),
        .DOB(p_0_out[27:26]),
        .DOC({NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED[1],p_0_out[28]}),
        .DOD(NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M RAM_reg_0_31_6_11
       (.ADDRA(\gc0.count_d1_reg[4] ),
        .ADDRB(\gc0.count_d1_reg[4] ),
        .ADDRC(\gc0.count_d1_reg[4] ),
        .ADDRD(\gcc0.gc0.count_d1_reg[4] ),
        .DIA(din[7:6]),
        .DIB(din[9:8]),
        .DIC(din[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(p_0_out[7:6]),
        .DOB(p_0_out[9:8]),
        .DOC(p_0_out[11:10]),
        .DOD(NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(ram_full_fb_i_reg));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[0]),
        .Q(dout_i[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[10] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[10]),
        .Q(dout_i[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[11] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[11]),
        .Q(dout_i[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[12] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[12]),
        .Q(dout_i[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[13] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[13]),
        .Q(dout_i[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[14] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[14]),
        .Q(dout_i[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[15] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[15]),
        .Q(dout_i[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[16] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[16]),
        .Q(dout_i[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[17] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[17]),
        .Q(dout_i[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[18] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[18]),
        .Q(dout_i[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[19] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[19]),
        .Q(dout_i[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[1]),
        .Q(dout_i[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[20] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[20]),
        .Q(dout_i[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[21] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[21]),
        .Q(dout_i[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[22] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[22]),
        .Q(dout_i[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[23] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[23]),
        .Q(dout_i[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[24] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[24]),
        .Q(dout_i[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[25] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[25]),
        .Q(dout_i[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[26] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[26]),
        .Q(dout_i[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[27] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[27]),
        .Q(dout_i[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[28] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[28]),
        .Q(dout_i[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[2]),
        .Q(dout_i[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[3]),
        .Q(dout_i[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[4]),
        .Q(dout_i[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[5]),
        .Q(dout_i[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[6]),
        .Q(dout_i[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[7]),
        .Q(dout_i[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[8] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[8]),
        .Q(dout_i[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[9] 
       (.C(clk),
        .CE(\gpregsm1.curr_fwft_state_reg[1] ),
        .D(p_0_out[9]),
        .Q(dout_i[9]),
        .R(1'b0));
endmodule

module top_auto_ds_0_fifo_generator_ramfifo
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [8:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [8:0]din;
  input wr_en;
  input rd_en;

  wire RD_RST;
  wire RST_FULL_FF;
  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_1 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_12 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire [4:0]p_0_out_0;
  wire [4:0]p_11_out;
  wire p_1_out;
  wire ram_rd_en_i;
  wire ram_wr_en_into_logic;
  wire rd_en;
  wire [2:0]rd_pntr_plus1;
  wire [0:0]rd_rst_i;
  wire rst;
  wire rstblk_n_2;
  wire wr_en;

  top_auto_ds_0_rd_logic_0 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q({RD_RST,rd_rst_i}),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[2] (rd_pntr_plus1),
        .\gcc0.gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .\gcc0.gc0.count_d1_reg[4] (p_11_out),
        .\goreg_dm.dout_i_reg[8] (\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .\gpr1.dout_i_reg[1] (p_0_out_0),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .rd_en(rd_en),
        .wr_en(wr_en));
  top_auto_ds_0_wr_logic_1 \gntv_or_sync_fifo.gl0.wr 
       (.E(ram_wr_en_into_logic),
        .Q({rstblk_n_2,RST_FULL_FF}),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gc0.count_reg[2] (rd_pntr_plus1),
        .\gpr1.dout_i_reg[1] (p_11_out),
        .\gpregsm1.curr_fwft_state_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .wr_en(wr_en));
  top_auto_ds_0_memory \gntv_or_sync_fifo.mem 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .clk(clk),
        .count_d10_in(p_11_out),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en_i),
        .p_17_out(ram_wr_en_into_logic));
  top_auto_ds_0_reset_blk_ramfifo_2 rstblk
       (.Q({RD_RST,rd_rst_i}),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[0] ({rstblk_n_2,RST_FULL_FF}),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module top_auto_ds_0_fifo_generator_ramfifo__parameterized0
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [28:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [28:0]din;
  input wr_en;
  input rd_en;

  wire RD_RST;
  wire RST_FULL_FF;
  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_1 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_12 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire [4:0]p_0_out_0;
  wire [4:0]p_11_out;
  wire p_1_out;
  wire ram_rd_en_i;
  wire ram_wr_en_into_logic;
  wire rd_en;
  wire [2:0]rd_pntr_plus1;
  wire [0:0]rd_rst_i;
  wire rst;
  wire rstblk_n_2;
  wire wr_en;

  top_auto_ds_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q({RD_RST,rd_rst_i}),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[2] (rd_pntr_plus1),
        .\gcc0.gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .\gcc0.gc0.count_d1_reg[4] (p_11_out),
        .\goreg_dm.dout_i_reg[28] (\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .\gpr1.dout_i_reg[1] (p_0_out_0),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .rd_en(rd_en),
        .wr_en(wr_en));
  top_auto_ds_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(ram_wr_en_into_logic),
        .Q({rstblk_n_2,RST_FULL_FF}),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gc0.count_reg[2] (rd_pntr_plus1),
        .\gpr1.dout_i_reg[1] (p_11_out),
        .\gpregsm1.curr_fwft_state_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .wr_en(wr_en));
  top_auto_ds_0_memory__parameterized0 \gntv_or_sync_fifo.mem 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gcc0.gc0.count_d1_reg[4] (p_11_out),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en_i),
        .ram_full_fb_i_reg(ram_wr_en_into_logic));
  top_auto_ds_0_reset_blk_ramfifo rstblk
       (.Q({RD_RST,rd_rst_i}),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[0] ({rstblk_n_2,RST_FULL_FF}),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module top_auto_ds_0_fifo_generator_ramfifo__parameterized1
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [28:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [28:0]din;
  input wr_en;
  input rd_en;

  wire RD_RST;
  wire RST_FULL_FF;
  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gl0.rd_n_1 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_12 ;
  wire \gntv_or_sync_fifo.gl0.rd_n_6 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_3 ;
  wire [4:0]p_0_out_0;
  wire [4:0]p_11_out;
  wire p_1_out;
  wire ram_rd_en_i;
  wire ram_wr_en_into_logic;
  wire rd_en;
  wire [2:0]rd_pntr_plus1;
  wire [0:0]rd_rst_i;
  wire rst;
  wire rstblk_n_2;
  wire wr_en;

  top_auto_ds_0_rd_logic_8 \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q({RD_RST,rd_rst_i}),
        .clk(clk),
        .empty(empty),
        .\gc0.count_d1_reg[2] (rd_pntr_plus1),
        .\gcc0.gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .\gcc0.gc0.count_d1_reg[4] (p_11_out),
        .\goreg_dm.dout_i_reg[28] (\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .\gpr1.dout_i_reg[1] (p_0_out_0),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .rd_en(rd_en),
        .wr_en(wr_en));
  top_auto_ds_0_wr_logic_9 \gntv_or_sync_fifo.gl0.wr 
       (.E(ram_wr_en_into_logic),
        .Q({rstblk_n_2,RST_FULL_FF}),
        .clk(clk),
        .full(full),
        .\gc0.count_d1_reg[2] (\gntv_or_sync_fifo.gl0.rd_n_1 ),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gc0.count_reg[2] (rd_pntr_plus1),
        .\gpr1.dout_i_reg[1] (p_11_out),
        .\gpregsm1.curr_fwft_state_reg[0] (\gntv_or_sync_fifo.gl0.rd_n_12 ),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_3 ),
        .wr_en(wr_en));
  top_auto_ds_0_memory__parameterized1 \gntv_or_sync_fifo.mem 
       (.E(\gntv_or_sync_fifo.gl0.rd_n_6 ),
        .clk(clk),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_0_out_0),
        .\gcc0.gc0.count_d1_reg[4] (p_11_out),
        .\gpregsm1.curr_fwft_state_reg[1] (ram_rd_en_i),
        .ram_full_fb_i_reg(ram_wr_en_into_logic));
  top_auto_ds_0_reset_blk_ramfifo_10 rstblk
       (.Q({RD_RST,rd_rst_i}),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[0] ({rstblk_n_2,RST_FULL_FF}),
        .rst(rst));
endmodule

module top_auto_ds_0_fifo_generator_top
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [8:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [8:0]din;
  input wr_en;
  input rd_en;

  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  top_auto_ds_0_fifo_generator_ramfifo \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module top_auto_ds_0_fifo_generator_top__parameterized0
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [28:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [28:0]din;
  input wr_en;
  input rd_en;

  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  top_auto_ds_0_fifo_generator_ramfifo__parameterized0 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module top_auto_ds_0_fifo_generator_top__parameterized1
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [28:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [28:0]din;
  input wr_en;
  input rd_en;

  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  top_auto_ds_0_fifo_generator_ramfifo__parameterized1 \grf.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "9" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "9" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "6" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) 
module top_auto_ds_0_fifo_generator_v13_1_0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
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
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [8:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [8:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  top_auto_ds_0_fifo_generator_v13_1_0_synth inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "29" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "29" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "6" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_0" *) 
module top_auto_ds_0_fifo_generator_v13_1_0__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
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
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [28:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [28:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized0 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "64" *) (* C_AXIS_TDEST_WIDTH = "4" *) 
(* C_AXIS_TID_WIDTH = "8" *) (* C_AXIS_TKEEP_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "4" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "2" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "6" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "29" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "29" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "0" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "0" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "0" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "6" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "3" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "1" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "6" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_0" *) 
module top_auto_ds_0_fifo_generator_v13_1_0__parameterized1
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
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
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [28:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [28:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [5:0]data_count;
  output [5:0]rd_data_count;
  output [5:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [3:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [63:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [7:0]s_axis_tid;
  input [3:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [7:0]m_axis_tid;
  output [3:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[7] = \<const0> ;
  assign m_axis_tid[6] = \<const0> ;
  assign m_axis_tid[5] = \<const0> ;
  assign m_axis_tid[4] = \<const0> ;
  assign m_axis_tid[3] = \<const0> ;
  assign m_axis_tid[2] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized1 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

module top_auto_ds_0_fifo_generator_v13_1_0_synth
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [8:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [8:0]din;
  input wr_en;
  input rd_en;

  wire clk;
  wire [8:0]din;
  wire [8:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  top_auto_ds_0_fifo_generator_top \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_0_synth" *) 
module top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized0
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [28:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [28:0]din;
  input wr_en;
  input rd_en;

  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  top_auto_ds_0_fifo_generator_top__parameterized0 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_0_synth" *) 
module top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized1
   (dout,
    empty,
    full,
    clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [28:0]dout;
  output empty;
  output full;
  input clk;
  input rst;
  input [28:0]din;
  input wr_en;
  input rd_en;

  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  top_auto_ds_0_fifo_generator_top__parameterized1 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

module top_auto_ds_0_memory
   (dout,
    E,
    clk,
    p_17_out,
    din,
    \gc0.count_d1_reg[4] ,
    count_d10_in,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [8:0]dout;
  input [0:0]E;
  input clk;
  input p_17_out;
  input [8:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]count_d10_in;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [0:0]E;
  wire clk;
  wire [4:0]count_d10_in;
  wire [8:0]din;
  wire [8:0]dout;
  wire [8:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire p_17_out;

  top_auto_ds_0_dmem \gdm.dm_gen.dm 
       (.clk(clk),
        .count_d10_in(count_d10_in),
        .din(din),
        .dout_i(dout_i),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .p_17_out(p_17_out));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(dout_i[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(dout_i[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(dout_i[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(dout_i[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(dout_i[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(dout_i[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(dout_i[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(dout_i[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(E),
        .D(dout_i[8]),
        .Q(dout[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module top_auto_ds_0_memory__parameterized0
   (dout,
    E,
    clk,
    ram_full_fb_i_reg,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [28:0]dout;
  input [0:0]E;
  input clk;
  input [0:0]ram_full_fb_i_reg;
  input [28:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [0:0]E;
  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire [28:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [0:0]ram_full_fb_i_reg;

  top_auto_ds_0_dmem__parameterized0 \gdm.dm_gen.dm 
       (.clk(clk),
        .din(din),
        .dout_i(dout_i),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(dout_i[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(clk),
        .CE(E),
        .D(dout_i[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(clk),
        .CE(E),
        .D(dout_i[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(clk),
        .CE(E),
        .D(dout_i[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(clk),
        .CE(E),
        .D(dout_i[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(clk),
        .CE(E),
        .D(dout_i[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(clk),
        .CE(E),
        .D(dout_i[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(clk),
        .CE(E),
        .D(dout_i[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(clk),
        .CE(E),
        .D(dout_i[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(clk),
        .CE(E),
        .D(dout_i[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(clk),
        .CE(E),
        .D(dout_i[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(dout_i[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(clk),
        .CE(E),
        .D(dout_i[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(clk),
        .CE(E),
        .D(dout_i[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(clk),
        .CE(E),
        .D(dout_i[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(clk),
        .CE(E),
        .D(dout_i[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(clk),
        .CE(E),
        .D(dout_i[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(clk),
        .CE(E),
        .D(dout_i[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(clk),
        .CE(E),
        .D(dout_i[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(clk),
        .CE(E),
        .D(dout_i[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(clk),
        .CE(E),
        .D(dout_i[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(dout_i[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(dout_i[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(dout_i[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(dout_i[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(dout_i[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(dout_i[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(E),
        .D(dout_i[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(clk),
        .CE(E),
        .D(dout_i[9]),
        .Q(dout[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module top_auto_ds_0_memory__parameterized1
   (dout,
    E,
    clk,
    ram_full_fb_i_reg,
    din,
    \gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[1] );
  output [28:0]dout;
  input [0:0]E;
  input clk;
  input [0:0]ram_full_fb_i_reg;
  input [28:0]din;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input [0:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire [0:0]E;
  wire clk;
  wire [28:0]din;
  wire [28:0]dout;
  wire [28:0]dout_i;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [0:0]ram_full_fb_i_reg;

  top_auto_ds_0_dmem__parameterized1 \gdm.dm_gen.dm 
       (.clk(clk),
        .din(din),
        .dout_i(dout_i),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[0] 
       (.C(clk),
        .CE(E),
        .D(dout_i[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[10] 
       (.C(clk),
        .CE(E),
        .D(dout_i[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[11] 
       (.C(clk),
        .CE(E),
        .D(dout_i[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[12] 
       (.C(clk),
        .CE(E),
        .D(dout_i[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[13] 
       (.C(clk),
        .CE(E),
        .D(dout_i[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[14] 
       (.C(clk),
        .CE(E),
        .D(dout_i[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[15] 
       (.C(clk),
        .CE(E),
        .D(dout_i[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[16] 
       (.C(clk),
        .CE(E),
        .D(dout_i[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[17] 
       (.C(clk),
        .CE(E),
        .D(dout_i[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[18] 
       (.C(clk),
        .CE(E),
        .D(dout_i[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[19] 
       (.C(clk),
        .CE(E),
        .D(dout_i[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[1] 
       (.C(clk),
        .CE(E),
        .D(dout_i[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[20] 
       (.C(clk),
        .CE(E),
        .D(dout_i[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[21] 
       (.C(clk),
        .CE(E),
        .D(dout_i[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[22] 
       (.C(clk),
        .CE(E),
        .D(dout_i[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[23] 
       (.C(clk),
        .CE(E),
        .D(dout_i[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[24] 
       (.C(clk),
        .CE(E),
        .D(dout_i[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[25] 
       (.C(clk),
        .CE(E),
        .D(dout_i[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[26] 
       (.C(clk),
        .CE(E),
        .D(dout_i[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[27] 
       (.C(clk),
        .CE(E),
        .D(dout_i[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[28] 
       (.C(clk),
        .CE(E),
        .D(dout_i[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[2] 
       (.C(clk),
        .CE(E),
        .D(dout_i[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[3] 
       (.C(clk),
        .CE(E),
        .D(dout_i[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[4] 
       (.C(clk),
        .CE(E),
        .D(dout_i[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[5] 
       (.C(clk),
        .CE(E),
        .D(dout_i[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[6] 
       (.C(clk),
        .CE(E),
        .D(dout_i[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[7] 
       (.C(clk),
        .CE(E),
        .D(dout_i[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[8] 
       (.C(clk),
        .CE(E),
        .D(dout_i[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_dm.dout_i_reg[9] 
       (.C(clk),
        .CE(E),
        .D(dout_i[9]),
        .Q(dout[9]),
        .R(1'b0));
endmodule

module top_auto_ds_0_rd_bin_cntr
   (ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    Q,
    \gpr1.dout_i_reg[1] ,
    wr_en,
    p_1_out,
    p_2_out,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output ram_empty_fb_i_reg;
  output ram_empty_fb_i_reg_0;
  output [2:0]Q;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input wr_en;
  input p_1_out;
  input p_2_out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gcc0.gc0.count_d1_reg[2] ;
  input [0:0]E;
  input clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire p_1_out;
  wire p_2_out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_i_i_7_n_0;
  wire [4:3]rd_pntr_plus1;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT5 #(
    .INIT(32'hFFA2F3A2)) 
    ram_empty_fb_i_i_1
       (.I0(ram_empty_fb_i_i_2_n_0),
        .I1(wr_en),
        .I2(p_1_out),
        .I3(p_2_out),
        .I4(ram_empty_fb_i_reg_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .I4(\gpregsm1.curr_fwft_state_reg[0] ),
        .I5(\gcc0.gc0.count_d1_reg[2] ),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_full_i_i_4
       (.I0(ram_full_i_i_7_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_empty_fb_i_reg_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_7
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_full_i_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module top_auto_ds_0_rd_bin_cntr_15
   (ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    Q,
    \gpr1.dout_i_reg[1] ,
    wr_en,
    p_1_out,
    p_2_out,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output ram_empty_fb_i_reg;
  output ram_empty_fb_i_reg_0;
  output [2:0]Q;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input wr_en;
  input p_1_out;
  input p_2_out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gcc0.gc0.count_d1_reg[2] ;
  input [0:0]E;
  input clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire p_1_out;
  wire p_2_out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_i_i_7_n_0;
  wire [4:3]rd_pntr_plus1;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT5 #(
    .INIT(32'hFFA2F3A2)) 
    ram_empty_fb_i_i_1
       (.I0(ram_empty_fb_i_i_2_n_0),
        .I1(wr_en),
        .I2(p_1_out),
        .I3(p_2_out),
        .I4(ram_empty_fb_i_reg_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .I4(\gpregsm1.curr_fwft_state_reg[0] ),
        .I5(\gcc0.gc0.count_d1_reg[2] ),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_full_i_i_4
       (.I0(ram_full_i_i_7_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_empty_fb_i_reg_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_7
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_full_i_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module top_auto_ds_0_rd_bin_cntr_7
   (ram_empty_fb_i_reg,
    ram_empty_fb_i_reg_0,
    Q,
    \gpr1.dout_i_reg[1] ,
    wr_en,
    p_1_out,
    p_2_out,
    \gcc0.gc0.count_d1_reg[4] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gcc0.gc0.count_d1_reg[2] ,
    E,
    clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] );
  output ram_empty_fb_i_reg;
  output ram_empty_fb_i_reg_0;
  output [2:0]Q;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input wr_en;
  input p_1_out;
  input p_2_out;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gcc0.gc0.count_d1_reg[2] ;
  input [0:0]E;
  input clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;

  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ;
  wire p_1_out;
  wire p_2_out;
  wire [4:0]plusOp;
  wire ram_empty_fb_i_i_2_n_0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire ram_full_i_i_7_n_0;
  wire [4:3]rd_pntr_plus1;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(Q[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(rd_pntr_plus1[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(rd_pntr_plus1[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] ),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]));
  LUT5 #(
    .INIT(32'hFFA2F3A2)) 
    ram_empty_fb_i_i_1
       (.I0(ram_empty_fb_i_i_2_n_0),
        .I1(wr_en),
        .I2(p_1_out),
        .I3(p_2_out),
        .I4(ram_empty_fb_i_reg_0),
        .O(ram_empty_fb_i_reg));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    ram_empty_fb_i_i_2
       (.I0(rd_pntr_plus1[3]),
        .I1(\gcc0.gc0.count_d1_reg[4] [3]),
        .I2(rd_pntr_plus1[4]),
        .I3(\gcc0.gc0.count_d1_reg[4] [4]),
        .I4(\gpregsm1.curr_fwft_state_reg[0] ),
        .I5(\gcc0.gc0.count_d1_reg[2] ),
        .O(ram_empty_fb_i_i_2_n_0));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    ram_full_i_i_4
       (.I0(ram_full_i_i_7_n_0),
        .I1(\gpr1.dout_i_reg[1] [2]),
        .I2(\gcc0.gc0.count_d1_reg[4] [2]),
        .I3(\gpr1.dout_i_reg[1] [1]),
        .I4(\gcc0.gc0.count_d1_reg[4] [1]),
        .O(ram_empty_fb_i_reg_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ram_full_i_i_7
       (.I0(\gpr1.dout_i_reg[1] [4]),
        .I1(\gcc0.gc0.count_d1_reg[4] [4]),
        .I2(\gpr1.dout_i_reg[1] [3]),
        .I3(\gcc0.gc0.count_d1_reg[4] [3]),
        .I4(\gcc0.gc0.count_d1_reg[4] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_full_i_i_7_n_0));
endmodule

module top_auto_ds_0_rd_fwft
   (empty,
    E,
    ram_empty_fb_i_reg,
    \goreg_dm.dout_i_reg[28] ,
    ram_full_fb_i_reg,
    clk,
    Q,
    rd_en,
    p_2_out);
  output empty;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [0:0]\goreg_dm.dout_i_reg[28] ;
  output ram_full_fb_i_reg;
  input clk;
  input [1:0]Q;
  input rd_en;
  input p_2_out;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire [0:0]curr_fwft_state;
  wire empty;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire [0:0]\goreg_dm.dout_i_reg[28] ;
  wire \gpregsm1.curr_fwft_state_reg_n_0_[1] ;
  wire [1:0]next_fwft_state;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
  LUT4 #(
    .INIT(16'hF540)) 
    empty_fwft_i_i_1
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_2_out),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[28]_i_1 
       (.I0(Q[0]),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(curr_fwft_state),
        .I3(rd_en),
        .O(\goreg_dm.dout_i_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(curr_fwft_state),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_2_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\gpregsm1.curr_fwft_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_3
       (.I0(curr_fwft_state),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(ram_empty_fb_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_i_i_3
       (.I0(curr_fwft_state),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(rd_en),
        .I3(p_2_out),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module top_auto_ds_0_rd_fwft_13
   (empty,
    E,
    ram_empty_fb_i_reg,
    \goreg_dm.dout_i_reg[28] ,
    ram_full_fb_i_reg,
    clk,
    Q,
    rd_en,
    p_2_out);
  output empty;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [0:0]\goreg_dm.dout_i_reg[28] ;
  output ram_full_fb_i_reg;
  input clk;
  input [1:0]Q;
  input rd_en;
  input p_2_out;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire [0:0]curr_fwft_state;
  wire empty;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire [0:0]\goreg_dm.dout_i_reg[28] ;
  wire \gpregsm1.curr_fwft_state_reg_n_0_[1] ;
  wire [1:0]next_fwft_state;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
  LUT4 #(
    .INIT(16'hF540)) 
    empty_fwft_i_i_1
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_2_out),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[28]_i_1 
       (.I0(Q[0]),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(curr_fwft_state),
        .I3(rd_en),
        .O(\goreg_dm.dout_i_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(curr_fwft_state),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_2_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\gpregsm1.curr_fwft_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_3
       (.I0(curr_fwft_state),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(ram_empty_fb_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_i_i_3
       (.I0(curr_fwft_state),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(rd_en),
        .I3(p_2_out),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "rd_fwft" *) 
module top_auto_ds_0_rd_fwft_5
   (empty,
    E,
    ram_empty_fb_i_reg,
    \goreg_dm.dout_i_reg[8] ,
    ram_full_fb_i_reg,
    clk,
    Q,
    rd_en,
    p_2_out);
  output empty;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [0:0]\goreg_dm.dout_i_reg[8] ;
  output ram_full_fb_i_reg;
  input clk;
  input [1:0]Q;
  input rd_en;
  input p_2_out;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire [0:0]curr_fwft_state;
  wire empty;
  wire empty_fwft_fb;
  wire empty_fwft_i0;
  wire [0:0]\goreg_dm.dout_i_reg[8] ;
  wire \gpregsm1.curr_fwft_state_reg_n_0_[1] ;
  wire [1:0]next_fwft_state;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
  LUT4 #(
    .INIT(16'hF540)) 
    empty_fwft_i_i_1
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(empty_fwft_fb),
        .O(empty_fwft_i0));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h00DF)) 
    \gc0.count_d1[4]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_2_out),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h4404)) 
    \goreg_dm.dout_i[8]_i_1 
       (.I0(Q[0]),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(curr_fwft_state),
        .I3(rd_en),
        .O(\goreg_dm.dout_i_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(curr_fwft_state),
        .I2(rd_en),
        .O(next_fwft_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I1(rd_en),
        .I2(curr_fwft_state),
        .I3(p_2_out),
        .O(next_fwft_state[1]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\gpregsm1.curr_fwft_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    ram_empty_fb_i_i_3
       (.I0(curr_fwft_state),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .O(ram_empty_fb_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    ram_full_i_i_3
       (.I0(curr_fwft_state),
        .I1(\gpregsm1.curr_fwft_state_reg_n_0_[1] ),
        .I2(rd_en),
        .I3(p_2_out),
        .O(ram_full_fb_i_reg));
endmodule

module top_auto_ds_0_rd_logic
   (empty,
    ram_empty_fb_i_reg,
    \gc0.count_d1_reg[2] ,
    E,
    \goreg_dm.dout_i_reg[28] ,
    \gpr1.dout_i_reg[1] ,
    ram_full_fb_i_reg,
    clk,
    Q,
    wr_en,
    p_1_out,
    rd_en,
    \gcc0.gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[2] );
  output empty;
  output ram_empty_fb_i_reg;
  output [2:0]\gc0.count_d1_reg[2] ;
  output [0:0]E;
  output [0:0]\goreg_dm.dout_i_reg[28] ;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_fb_i_reg;
  input clk;
  input [1:0]Q;
  input wr_en;
  input p_1_out;
  input rd_en;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gcc0.gc0.count_d1_reg[2] ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire empty;
  wire [2:0]\gc0.count_d1_reg[2] ;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\goreg_dm.dout_i_reg[28] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.gr1_int.rfwft_n_2 ;
  wire p_1_out;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire rpntr_n_0;
  wire wr_en;

  top_auto_ds_0_rd_fwft \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .empty(empty),
        .\goreg_dm.dout_i_reg[28] (\goreg_dm.dout_i_reg[28] ),
        .p_2_out(p_2_out),
        .ram_empty_fb_i_reg(\gr1.gr1_int.rfwft_n_2 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_en(rd_en));
  top_auto_ds_0_rd_status_flags_ss \grss.rsts 
       (.Q(Q[1]),
        .clk(clk),
        .p_2_out(p_2_out),
        .ram_full_fb_i_reg(rpntr_n_0));
  top_auto_ds_0_rd_bin_cntr rpntr
       (.E(E),
        .Q(\gc0.count_d1_reg[2] ),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[2] (\gcc0.gc0.count_d1_reg[2] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.gr1_int.rfwft_n_2 ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (Q[0]),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module top_auto_ds_0_rd_logic_0
   (empty,
    ram_empty_fb_i_reg,
    \gc0.count_d1_reg[2] ,
    E,
    \goreg_dm.dout_i_reg[8] ,
    \gpr1.dout_i_reg[1] ,
    ram_full_fb_i_reg,
    clk,
    Q,
    wr_en,
    p_1_out,
    rd_en,
    \gcc0.gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[2] );
  output empty;
  output ram_empty_fb_i_reg;
  output [2:0]\gc0.count_d1_reg[2] ;
  output [0:0]E;
  output [0:0]\goreg_dm.dout_i_reg[8] ;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_fb_i_reg;
  input clk;
  input [1:0]Q;
  input wr_en;
  input p_1_out;
  input rd_en;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gcc0.gc0.count_d1_reg[2] ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire empty;
  wire [2:0]\gc0.count_d1_reg[2] ;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\goreg_dm.dout_i_reg[8] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.gr1_int.rfwft_n_2 ;
  wire p_1_out;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire rpntr_n_0;
  wire wr_en;

  top_auto_ds_0_rd_fwft_5 \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .empty(empty),
        .\goreg_dm.dout_i_reg[8] (\goreg_dm.dout_i_reg[8] ),
        .p_2_out(p_2_out),
        .ram_empty_fb_i_reg(\gr1.gr1_int.rfwft_n_2 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_en(rd_en));
  top_auto_ds_0_rd_status_flags_ss_6 \grss.rsts 
       (.Q(Q[1]),
        .clk(clk),
        .p_2_out(p_2_out),
        .ram_full_fb_i_reg(rpntr_n_0));
  top_auto_ds_0_rd_bin_cntr_7 rpntr
       (.E(E),
        .Q(\gc0.count_d1_reg[2] ),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[2] (\gcc0.gc0.count_d1_reg[2] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.gr1_int.rfwft_n_2 ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (Q[0]),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module top_auto_ds_0_rd_logic_8
   (empty,
    ram_empty_fb_i_reg,
    \gc0.count_d1_reg[2] ,
    E,
    \goreg_dm.dout_i_reg[28] ,
    \gpr1.dout_i_reg[1] ,
    ram_full_fb_i_reg,
    clk,
    Q,
    wr_en,
    p_1_out,
    rd_en,
    \gcc0.gc0.count_d1_reg[4] ,
    \gcc0.gc0.count_d1_reg[2] );
  output empty;
  output ram_empty_fb_i_reg;
  output [2:0]\gc0.count_d1_reg[2] ;
  output [0:0]E;
  output [0:0]\goreg_dm.dout_i_reg[28] ;
  output [4:0]\gpr1.dout_i_reg[1] ;
  output ram_full_fb_i_reg;
  input clk;
  input [1:0]Q;
  input wr_en;
  input p_1_out;
  input rd_en;
  input [4:0]\gcc0.gc0.count_d1_reg[4] ;
  input \gcc0.gc0.count_d1_reg[2] ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire empty;
  wire [2:0]\gc0.count_d1_reg[2] ;
  wire \gcc0.gc0.count_d1_reg[2] ;
  wire [4:0]\gcc0.gc0.count_d1_reg[4] ;
  wire [0:0]\goreg_dm.dout_i_reg[28] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gr1.gr1_int.rfwft_n_2 ;
  wire p_1_out;
  wire p_2_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_fb_i_reg;
  wire rd_en;
  wire rpntr_n_0;
  wire wr_en;

  top_auto_ds_0_rd_fwft_13 \gr1.gr1_int.rfwft 
       (.E(E),
        .Q(Q),
        .clk(clk),
        .empty(empty),
        .\goreg_dm.dout_i_reg[28] (\goreg_dm.dout_i_reg[28] ),
        .p_2_out(p_2_out),
        .ram_empty_fb_i_reg(\gr1.gr1_int.rfwft_n_2 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_en(rd_en));
  top_auto_ds_0_rd_status_flags_ss_14 \grss.rsts 
       (.Q(Q[1]),
        .clk(clk),
        .p_2_out(p_2_out),
        .ram_full_fb_i_reg(rpntr_n_0));
  top_auto_ds_0_rd_bin_cntr_15 rpntr
       (.E(E),
        .Q(\gc0.count_d1_reg[2] ),
        .clk(clk),
        .\gcc0.gc0.count_d1_reg[2] (\gcc0.gc0.count_d1_reg[2] ),
        .\gcc0.gc0.count_d1_reg[4] (\gcc0.gc0.count_d1_reg[4] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gr1.gr1_int.rfwft_n_2 ),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] (Q[0]),
        .p_1_out(p_1_out),
        .p_2_out(p_2_out),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .wr_en(wr_en));
endmodule

module top_auto_ds_0_rd_status_flags_ss
   (p_2_out,
    ram_full_fb_i_reg,
    clk,
    Q);
  output p_2_out;
  input ram_full_fb_i_reg;
  input clk;
  input [0:0]Q;

  wire [0:0]Q;
  wire clk;
  wire p_2_out;
  wire ram_full_fb_i_reg;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .PRE(Q),
        .Q(p_2_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module top_auto_ds_0_rd_status_flags_ss_14
   (p_2_out,
    ram_full_fb_i_reg,
    clk,
    Q);
  output p_2_out;
  input ram_full_fb_i_reg;
  input clk;
  input [0:0]Q;

  wire [0:0]Q;
  wire clk;
  wire p_2_out;
  wire ram_full_fb_i_reg;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .PRE(Q),
        .Q(p_2_out));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_ss" *) 
module top_auto_ds_0_rd_status_flags_ss_6
   (p_2_out,
    ram_full_fb_i_reg,
    clk,
    Q);
  output p_2_out;
  input ram_full_fb_i_reg;
  input clk;
  input [0:0]Q;

  wire [0:0]Q;
  wire clk;
  wire p_2_out;
  wire ram_full_fb_i_reg;

  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg),
        .PRE(Q),
        .Q(p_2_out));
endmodule

module top_auto_ds_0_reset_blk_ramfifo
   (Q,
    \gcc0.gc0.count_d1_reg[0] ,
    clk,
    rst);
  output [1:0]Q;
  output [1:0]\gcc0.gc0.count_d1_reg[0] ;
  input clk;
  input rst;

  wire [1:0]Q;
  wire clk;
  wire [1:0]\gcc0.gc0.count_d1_reg[0] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_d1_reg[0] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_d1_reg[0] [1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module top_auto_ds_0_reset_blk_ramfifo_10
   (Q,
    \gcc0.gc0.count_d1_reg[0] ,
    clk,
    rst);
  output [1:0]Q;
  output [1:0]\gcc0.gc0.count_d1_reg[0] ;
  input clk;
  input rst;

  wire [1:0]Q;
  wire clk;
  wire [1:0]\gcc0.gc0.count_d1_reg[0] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_d1_reg[0] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_d1_reg[0] [1]));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module top_auto_ds_0_reset_blk_ramfifo_2
   (Q,
    \gcc0.gc0.count_d1_reg[0] ,
    clk,
    rst);
  output [1:0]Q;
  output [1:0]\gcc0.gc0.count_d1_reg[0] ;
  input clk;
  input rst;

  wire [1:0]Q;
  wire clk;
  wire [1:0]\gcc0.gc0.count_d1_reg[0] ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0 ),
        .Q(Q[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_d1_reg[0] [0]));
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0 ),
        .Q(\gcc0.gc0.count_d1_reg[0] [1]));
endmodule

module top_auto_ds_0_wr_bin_cntr
   (ram_full_comb,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    p_1_out,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    wr_en,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    Q);
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input p_1_out;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input wr_en;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [4:0]p_12_out;
  wire p_1_out;
  wire [4:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_i_6_n_0;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(p_12_out[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(p_12_out[0]),
        .I1(p_12_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(p_12_out[1]),
        .I1(p_12_out[0]),
        .I2(p_12_out[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(p_12_out[2]),
        .I1(p_12_out[0]),
        .I2(p_12_out[1]),
        .I3(p_12_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_12_out[3]),
        .I1(p_12_out[1]),
        .I2(p_12_out[0]),
        .I3(p_12_out[2]),
        .I4(p_12_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(Q),
        .Q(p_12_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[1]),
        .Q(p_12_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[2]),
        .Q(p_12_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[3]),
        .Q(p_12_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[4]),
        .Q(p_12_out[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_4
       (.I0(\gpr1.dout_i_reg[1] [2]),
        .I1(\gc0.count_reg[2] [2]),
        .I2(\gpr1.dout_i_reg[1] [1]),
        .I3(\gc0.count_reg[2] [1]),
        .I4(\gc0.count_reg[2] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'hF8C8)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(p_1_out),
        .I3(\gc0.count_d1_reg[2] ),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'h80000080)) 
    ram_full_i_i_2
       (.I0(ram_full_i_i_5_n_0),
        .I1(ram_full_i_i_6_n_0),
        .I2(wr_en),
        .I3(\gc0.count_d1_reg[4] [4]),
        .I4(p_12_out[4]),
        .O(ram_full_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_5
       (.I0(p_12_out[2]),
        .I1(\gc0.count_d1_reg[4] [2]),
        .I2(p_12_out[3]),
        .I3(\gc0.count_d1_reg[4] [3]),
        .O(ram_full_i_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_6
       (.I0(p_12_out[0]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_12_out[1]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module top_auto_ds_0_wr_bin_cntr_12
   (ram_full_comb,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    p_1_out,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    wr_en,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    Q);
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input p_1_out;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input wr_en;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [4:0]p_12_out;
  wire p_1_out;
  wire [4:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_i_6_n_0;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(p_12_out[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(p_12_out[0]),
        .I1(p_12_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(p_12_out[1]),
        .I1(p_12_out[0]),
        .I2(p_12_out[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(p_12_out[2]),
        .I1(p_12_out[0]),
        .I2(p_12_out[1]),
        .I3(p_12_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_12_out[3]),
        .I1(p_12_out[1]),
        .I2(p_12_out[0]),
        .I3(p_12_out[2]),
        .I4(p_12_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(Q),
        .Q(p_12_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[1]),
        .Q(p_12_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[2]),
        .Q(p_12_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[3]),
        .Q(p_12_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[4]),
        .Q(p_12_out[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_4
       (.I0(\gpr1.dout_i_reg[1] [2]),
        .I1(\gc0.count_reg[2] [2]),
        .I2(\gpr1.dout_i_reg[1] [1]),
        .I3(\gc0.count_reg[2] [1]),
        .I4(\gc0.count_reg[2] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'hF8C8)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(p_1_out),
        .I3(\gc0.count_d1_reg[2] ),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'h80000080)) 
    ram_full_i_i_2
       (.I0(ram_full_i_i_5_n_0),
        .I1(ram_full_i_i_6_n_0),
        .I2(wr_en),
        .I3(\gc0.count_d1_reg[4] [4]),
        .I4(p_12_out[4]),
        .O(ram_full_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_5
       (.I0(p_12_out[2]),
        .I1(\gc0.count_d1_reg[4] [2]),
        .I2(p_12_out[3]),
        .I3(\gc0.count_d1_reg[4] [3]),
        .O(ram_full_i_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_6
       (.I0(p_12_out[0]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_12_out[1]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_i_6_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module top_auto_ds_0_wr_bin_cntr_4
   (ram_full_comb,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    \gpregsm1.curr_fwft_state_reg[0] ,
    p_1_out,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    wr_en,
    \gc0.count_d1_reg[4] ,
    E,
    clk,
    Q);
  output ram_full_comb;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input p_1_out;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input wr_en;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [0:0]E;
  input clk;
  input [0:0]Q;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire [4:0]p_12_out;
  wire p_1_out;
  wire [4:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_i_6_n_0;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \gcc0.gc0.count[0]_i_1 
       (.I0(p_12_out[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gcc0.gc0.count[1]_i_1 
       (.I0(p_12_out[0]),
        .I1(p_12_out[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gcc0.gc0.count[2]_i_1 
       (.I0(p_12_out[1]),
        .I1(p_12_out[0]),
        .I2(p_12_out[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gcc0.gc0.count[3]_i_1 
       (.I0(p_12_out[2]),
        .I1(p_12_out[0]),
        .I2(p_12_out[1]),
        .I3(p_12_out[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gcc0.gc0.count[4]_i_1 
       (.I0(p_12_out[3]),
        .I1(p_12_out[1]),
        .I2(p_12_out[0]),
        .I3(p_12_out[2]),
        .I4(p_12_out[4]),
        .O(plusOp__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[0]),
        .Q(\gpr1.dout_i_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[1]),
        .Q(\gpr1.dout_i_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[2]),
        .Q(\gpr1.dout_i_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[3]),
        .Q(\gpr1.dout_i_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_d1_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(p_12_out[4]),
        .Q(\gpr1.dout_i_reg[1] [4]));
  FDPE #(
    .INIT(1'b1)) 
    \gcc0.gc0.count_reg[0] 
       (.C(clk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(Q),
        .Q(p_12_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[1]),
        .Q(p_12_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[2]),
        .Q(p_12_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[3]),
        .Q(p_12_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gcc0.gc0.count_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(Q),
        .D(plusOp__0[4]),
        .Q(p_12_out[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_fb_i_i_4
       (.I0(\gpr1.dout_i_reg[1] [2]),
        .I1(\gc0.count_reg[2] [2]),
        .I2(\gpr1.dout_i_reg[1] [1]),
        .I3(\gc0.count_reg[2] [1]),
        .I4(\gc0.count_reg[2] [0]),
        .I5(\gpr1.dout_i_reg[1] [0]),
        .O(ram_empty_fb_i_reg));
  LUT4 #(
    .INIT(16'hF8C8)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\gpregsm1.curr_fwft_state_reg[0] ),
        .I2(p_1_out),
        .I3(\gc0.count_d1_reg[2] ),
        .O(ram_full_comb));
  LUT5 #(
    .INIT(32'h80000080)) 
    ram_full_i_i_2
       (.I0(ram_full_i_i_5_n_0),
        .I1(ram_full_i_i_6_n_0),
        .I2(wr_en),
        .I3(\gc0.count_d1_reg[4] [4]),
        .I4(p_12_out[4]),
        .O(ram_full_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_5
       (.I0(p_12_out[2]),
        .I1(\gc0.count_d1_reg[4] [2]),
        .I2(p_12_out[3]),
        .I3(\gc0.count_d1_reg[4] [3]),
        .O(ram_full_i_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_6
       (.I0(p_12_out[0]),
        .I1(\gc0.count_d1_reg[4] [0]),
        .I2(p_12_out[1]),
        .I3(\gc0.count_d1_reg[4] [1]),
        .O(ram_full_i_i_6_n_0));
endmodule

module top_auto_ds_0_wr_logic
   (p_1_out,
    full,
    E,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    clk,
    Q,
    wr_en,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    \gc0.count_d1_reg[4] );
  output p_1_out;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input clk;
  input [1:0]Q;
  input wr_en;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input [4:0]\gc0.count_d1_reg[4] ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire full;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  top_auto_ds_0_wr_status_flags_ss \gwss.wsts 
       (.E(E),
        .Q(Q[0]),
        .clk(clk),
        .full(full),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  top_auto_ds_0_wr_bin_cntr wpntr
       (.E(E),
        .Q(Q[1]),
        .clk(clk),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_reg[2] (\gc0.count_reg[2] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gpregsm1.curr_fwft_state_reg[0] ),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module top_auto_ds_0_wr_logic_1
   (p_1_out,
    full,
    E,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    clk,
    Q,
    wr_en,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    \gc0.count_d1_reg[4] );
  output p_1_out;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input clk;
  input [1:0]Q;
  input wr_en;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input [4:0]\gc0.count_d1_reg[4] ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire full;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  top_auto_ds_0_wr_status_flags_ss_3 \gwss.wsts 
       (.E(E),
        .Q(Q[0]),
        .clk(clk),
        .full(full),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  top_auto_ds_0_wr_bin_cntr_4 wpntr
       (.E(E),
        .Q(Q[1]),
        .clk(clk),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_reg[2] (\gc0.count_reg[2] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gpregsm1.curr_fwft_state_reg[0] ),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module top_auto_ds_0_wr_logic_9
   (p_1_out,
    full,
    E,
    ram_empty_fb_i_reg,
    \gpr1.dout_i_reg[1] ,
    clk,
    Q,
    wr_en,
    \gpregsm1.curr_fwft_state_reg[0] ,
    \gc0.count_d1_reg[2] ,
    \gc0.count_reg[2] ,
    \gc0.count_d1_reg[4] );
  output p_1_out;
  output full;
  output [0:0]E;
  output ram_empty_fb_i_reg;
  output [4:0]\gpr1.dout_i_reg[1] ;
  input clk;
  input [1:0]Q;
  input wr_en;
  input \gpregsm1.curr_fwft_state_reg[0] ;
  input \gc0.count_d1_reg[2] ;
  input [2:0]\gc0.count_reg[2] ;
  input [4:0]\gc0.count_d1_reg[4] ;

  wire [0:0]E;
  wire [1:0]Q;
  wire clk;
  wire full;
  wire \gc0.count_d1_reg[2] ;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [2:0]\gc0.count_reg[2] ;
  wire [4:0]\gpr1.dout_i_reg[1] ;
  wire \gpregsm1.curr_fwft_state_reg[0] ;
  wire p_1_out;
  wire ram_empty_fb_i_reg;
  wire ram_full_comb;
  wire wr_en;

  top_auto_ds_0_wr_status_flags_ss_11 \gwss.wsts 
       (.E(E),
        .Q(Q[0]),
        .clk(clk),
        .full(full),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
  top_auto_ds_0_wr_bin_cntr_12 wpntr
       (.E(E),
        .Q(Q[1]),
        .clk(clk),
        .\gc0.count_d1_reg[2] (\gc0.count_d1_reg[2] ),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gc0.count_reg[2] (\gc0.count_reg[2] ),
        .\gpr1.dout_i_reg[1] (\gpr1.dout_i_reg[1] ),
        .\gpregsm1.curr_fwft_state_reg[0] (\gpregsm1.curr_fwft_state_reg[0] ),
        .p_1_out(p_1_out),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg),
        .ram_full_comb(ram_full_comb),
        .wr_en(wr_en));
endmodule

module top_auto_ds_0_wr_status_flags_ss
   (p_1_out,
    full,
    E,
    ram_full_comb,
    clk,
    Q,
    wr_en);
  output p_1_out;
  output full;
  output [0:0]E;
  input ram_full_comb;
  input clk;
  input [0:0]Q;
  input wr_en;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire full;
  wire p_1_out;
  wire ram_full_comb;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(p_1_out),
        .O(E));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(p_1_out));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(full));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module top_auto_ds_0_wr_status_flags_ss_11
   (p_1_out,
    full,
    E,
    ram_full_comb,
    clk,
    Q,
    wr_en);
  output p_1_out;
  output full;
  output [0:0]E;
  input ram_full_comb;
  input clk;
  input [0:0]Q;
  input wr_en;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire full;
  wire p_1_out;
  wire ram_full_comb;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(p_1_out),
        .O(E));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(p_1_out));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(full));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_ss" *) 
module top_auto_ds_0_wr_status_flags_ss_3
   (p_1_out,
    full,
    E,
    ram_full_comb,
    clk,
    Q,
    wr_en);
  output p_1_out;
  output full;
  output [0:0]E;
  input ram_full_comb;
  input clk;
  input [0:0]Q;
  input wr_en;

  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire full;
  wire p_1_out;
  wire ram_full_comb;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \gcc0.gc0.count_d1[4]_i_1 
       (.I0(wr_en),
        .I1(p_1_out),
        .O(E));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(p_1_out));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(Q),
        .D(ram_full_comb),
        .Q(full));
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
