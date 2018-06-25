-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Mon Jun 13 15:34:46 2016
-- Host        : E265 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               d:/svo/gtfpga/vc707/vc707_villas_simple/bd/top/ip/top_xbar_6/top_xbar_6_sim_netlist.vhdl
-- Design      : top_xbar_6
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice is
  port (
    \s_axis_tready[2]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_0\ : out STD_LOGIC;
    p_2_out : out STD_LOGIC_VECTOR ( 36 downto 0 );
    aclk : in STD_LOGIC;
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice : entity is "axis_register_slice_v1_1_8_axisc_register_slice";
end top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice;

architecture STRUCTURE of top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice is
  signal \^gen_ab_reg_slice.payload_a_reg[0]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_6_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_7_n_0\ : STD_LOGIC;
  signal payload_a : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal payload_a_1 : STD_LOGIC;
  signal payload_b : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal payload_b_0 : STD_LOGIC;
  signal \^s_axis_tready[2]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sel_wr : STD_LOGIC;
  signal \tready_mux__1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1__1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_2__1\ : label is "soft_lutpair38";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tdata[65]_INST_0_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[66]_INST_0_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[67]_INST_0_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[68]_INST_0_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[69]_INST_0_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[70]_INST_0_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[71]_INST_0_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[72]_INST_0_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[73]_INST_0_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[74]_INST_0_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[75]_INST_0_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[76]_INST_0_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[77]_INST_0_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[78]_INST_0_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[79]_INST_0_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[80]_INST_0_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[81]_INST_0_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[82]_INST_0_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tdata[83]_INST_0_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[84]_INST_0_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[85]_INST_0_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[86]_INST_0_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tdata[87]_INST_0_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[88]_INST_0_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[89]_INST_0_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[90]_INST_0_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[91]_INST_0_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[92]_INST_0_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[93]_INST_0_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[94]_INST_0_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[95]_INST_0_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tkeep[10]_INST_0_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tkeep[11]_INST_0_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tkeep[8]_INST_0_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tkeep[9]_INST_0_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tlast[2]_INST_0_i_2\ : label is "soft_lutpair39";
begin
  \gen_AB_reg_slice.payload_a_reg[0]_0\ <= \^gen_ab_reg_slice.payload_a_reg[0]_0\;
  \s_axis_tready[2]\ <= \^s_axis_tready[2]\;
\gen_AB_reg_slice.payload_a[36]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => aclken,
      I1 => \^s_axis_tready[2]\,
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => sel_wr,
      O => payload_a_1
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(0),
      Q => payload_a(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(10),
      Q => payload_a(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(11),
      Q => payload_a(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(12),
      Q => payload_a(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(13),
      Q => payload_a(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(14),
      Q => payload_a(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(15),
      Q => payload_a(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(16),
      Q => payload_a(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(17),
      Q => payload_a(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(18),
      Q => payload_a(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(19),
      Q => payload_a(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(1),
      Q => payload_a(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(20),
      Q => payload_a(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(21),
      Q => payload_a(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(22),
      Q => payload_a(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(23),
      Q => payload_a(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(24),
      Q => payload_a(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(25),
      Q => payload_a(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(26),
      Q => payload_a(26),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(27),
      Q => payload_a(27),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(28),
      Q => payload_a(28),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(29),
      Q => payload_a(29),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(2),
      Q => payload_a(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(30),
      Q => payload_a(30),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(31),
      Q => payload_a(31),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(32),
      Q => payload_a(32),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(33),
      Q => payload_a(33),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(34),
      Q => payload_a(34),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(35),
      Q => payload_a(35),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(36),
      Q => payload_a(36),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(3),
      Q => payload_a(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(4),
      Q => payload_a(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(5),
      Q => payload_a(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(6),
      Q => payload_a(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(7),
      Q => payload_a(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(8),
      Q => payload_a(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(9),
      Q => payload_a(9),
      R => '0'
    );
\gen_AB_reg_slice.payload_b[36]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => aclken,
      I1 => \^s_axis_tready[2]\,
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => sel_wr,
      O => payload_b_0
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(0),
      Q => payload_b(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(10),
      Q => payload_b(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(11),
      Q => payload_b(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(12),
      Q => payload_b(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(13),
      Q => payload_b(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(14),
      Q => payload_b(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(15),
      Q => payload_b(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(16),
      Q => payload_b(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(17),
      Q => payload_b(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(18),
      Q => payload_b(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(19),
      Q => payload_b(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(1),
      Q => payload_b(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(20),
      Q => payload_b(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(21),
      Q => payload_b(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(22),
      Q => payload_b(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(23),
      Q => payload_b(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(24),
      Q => payload_b(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(25),
      Q => payload_b(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(26),
      Q => payload_b(26),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(27),
      Q => payload_b(27),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(28),
      Q => payload_b(28),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(29),
      Q => payload_b(29),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(2),
      Q => payload_b(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(30),
      Q => payload_b(30),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(31),
      Q => payload_b(31),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(32),
      Q => payload_b(32),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(33),
      Q => payload_b(33),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(34),
      Q => payload_b(34),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(35),
      Q => payload_b(35),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(36),
      Q => payload_b(36),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(3),
      Q => payload_b(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(4),
      Q => payload_b(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(5),
      Q => payload_b(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(6),
      Q => payload_b(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(7),
      Q => payload_b(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(8),
      Q => payload_b(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(9),
      Q => payload_b(9),
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \tready_mux__1\,
      I1 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I2 => aclken,
      I3 => sel,
      O => \gen_AB_reg_slice.sel_rd_i_1_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1_n_0\,
      Q => sel,
      R => \gen_AB_reg_slice.state[1]_i_1__1_n_0\
    );
\gen_AB_reg_slice.sel_wr_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => s_axis_tvalid(0),
      I1 => \^s_axis_tready[2]\,
      I2 => aclken,
      I3 => sel_wr,
      O => \gen_AB_reg_slice.sel_wr_i_1__1_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__1_n_0\,
      Q => sel_wr,
      R => \gen_AB_reg_slice.state[1]_i_1__1_n_0\
    );
\gen_AB_reg_slice.state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8F8F0F0"
    )
        port map (
      I0 => aclken,
      I1 => s_axis_tvalid(0),
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => \tready_mux__1\,
      I4 => \^s_axis_tready[2]\,
      O => \gen_AB_reg_slice.state[0]_i_1__1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => areset_r,
      I1 => Q(10),
      O => \gen_AB_reg_slice.state[1]_i_1__1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FAA0A"
    )
        port map (
      I0 => aclken,
      I1 => s_axis_tvalid(0),
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => \tready_mux__1\,
      I4 => \^s_axis_tready[2]\,
      O => \gen_AB_reg_slice.state[1]_i_2__1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0E0E0E0E0E"
    )
        port map (
      I0 => \gen_AB_reg_slice.state[1]_i_4__1_n_0\,
      I1 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\,
      I2 => \gen_AB_reg_slice.state[1]_i_6_n_0\,
      I3 => Q(8),
      I4 => \gen_AB_reg_slice.state[1]_i_7_n_0\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\,
      O => \tready_mux__1\
    );
\gen_AB_reg_slice.state[1]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \gen_AB_reg_slice.state[1]_i_4__1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(9),
      I5 => m_axis_tready(0),
      O => \gen_AB_reg_slice.state[1]_i_6_n_0\
    );
\gen_AB_reg_slice.state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      O => \gen_AB_reg_slice.state[1]_i_7_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1__1_n_0\,
      Q => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      R => \gen_AB_reg_slice.state[1]_i_1__1_n_0\
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_2__1_n_0\,
      Q => \^s_axis_tready[2]\,
      R => \gen_AB_reg_slice.state[1]_i_1__1_n_0\
    );
\m_axis_tdata[64]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(0),
      I1 => sel,
      I2 => payload_a(0),
      O => p_2_out(0)
    );
\m_axis_tdata[65]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(1),
      I1 => sel,
      I2 => payload_a(1),
      O => p_2_out(1)
    );
\m_axis_tdata[66]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(2),
      I1 => sel,
      I2 => payload_a(2),
      O => p_2_out(2)
    );
\m_axis_tdata[67]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(3),
      I1 => sel,
      I2 => payload_a(3),
      O => p_2_out(3)
    );
\m_axis_tdata[68]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(4),
      I1 => sel,
      I2 => payload_a(4),
      O => p_2_out(4)
    );
\m_axis_tdata[69]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(5),
      I1 => sel,
      I2 => payload_a(5),
      O => p_2_out(5)
    );
\m_axis_tdata[70]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(6),
      I1 => sel,
      I2 => payload_a(6),
      O => p_2_out(6)
    );
\m_axis_tdata[71]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(7),
      I1 => sel,
      I2 => payload_a(7),
      O => p_2_out(7)
    );
\m_axis_tdata[72]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(8),
      I1 => sel,
      I2 => payload_a(8),
      O => p_2_out(8)
    );
\m_axis_tdata[73]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(9),
      I1 => sel,
      I2 => payload_a(9),
      O => p_2_out(9)
    );
\m_axis_tdata[74]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(10),
      I1 => sel,
      I2 => payload_a(10),
      O => p_2_out(10)
    );
\m_axis_tdata[75]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(11),
      I1 => sel,
      I2 => payload_a(11),
      O => p_2_out(11)
    );
\m_axis_tdata[76]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(12),
      I1 => sel,
      I2 => payload_a(12),
      O => p_2_out(12)
    );
\m_axis_tdata[77]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(13),
      I1 => sel,
      I2 => payload_a(13),
      O => p_2_out(13)
    );
\m_axis_tdata[78]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(14),
      I1 => sel,
      I2 => payload_a(14),
      O => p_2_out(14)
    );
\m_axis_tdata[79]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(15),
      I1 => sel,
      I2 => payload_a(15),
      O => p_2_out(15)
    );
\m_axis_tdata[80]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(16),
      I1 => sel,
      I2 => payload_a(16),
      O => p_2_out(16)
    );
\m_axis_tdata[81]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(17),
      I1 => sel,
      I2 => payload_a(17),
      O => p_2_out(17)
    );
\m_axis_tdata[82]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(18),
      I1 => sel,
      I2 => payload_a(18),
      O => p_2_out(18)
    );
\m_axis_tdata[83]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(19),
      I1 => sel,
      I2 => payload_a(19),
      O => p_2_out(19)
    );
\m_axis_tdata[84]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(20),
      I1 => sel,
      I2 => payload_a(20),
      O => p_2_out(20)
    );
\m_axis_tdata[85]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(21),
      I1 => sel,
      I2 => payload_a(21),
      O => p_2_out(21)
    );
\m_axis_tdata[86]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(22),
      I1 => sel,
      I2 => payload_a(22),
      O => p_2_out(22)
    );
\m_axis_tdata[87]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(23),
      I1 => sel,
      I2 => payload_a(23),
      O => p_2_out(23)
    );
\m_axis_tdata[88]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(24),
      I1 => sel,
      I2 => payload_a(24),
      O => p_2_out(24)
    );
\m_axis_tdata[89]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(25),
      I1 => sel,
      I2 => payload_a(25),
      O => p_2_out(25)
    );
\m_axis_tdata[90]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(26),
      I1 => sel,
      I2 => payload_a(26),
      O => p_2_out(26)
    );
\m_axis_tdata[91]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(27),
      I1 => sel,
      I2 => payload_a(27),
      O => p_2_out(27)
    );
\m_axis_tdata[92]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(28),
      I1 => sel,
      I2 => payload_a(28),
      O => p_2_out(28)
    );
\m_axis_tdata[93]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(29),
      I1 => sel,
      I2 => payload_a(29),
      O => p_2_out(29)
    );
\m_axis_tdata[94]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(30),
      I1 => sel,
      I2 => payload_a(30),
      O => p_2_out(30)
    );
\m_axis_tdata[95]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(31),
      I1 => sel,
      I2 => payload_a(31),
      O => p_2_out(31)
    );
\m_axis_tkeep[10]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(34),
      I1 => sel,
      I2 => payload_a(34),
      O => p_2_out(34)
    );
\m_axis_tkeep[11]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(35),
      I1 => sel,
      I2 => payload_a(35),
      O => p_2_out(35)
    );
\m_axis_tkeep[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(32),
      I1 => sel,
      I2 => payload_a(32),
      O => p_2_out(32)
    );
\m_axis_tkeep[9]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(33),
      I1 => sel,
      I2 => payload_a(33),
      O => p_2_out(33)
    );
\m_axis_tlast[2]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(36),
      I1 => sel,
      I2 => payload_a(36),
      O => p_2_out(36)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_2 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axis_tready[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\ : in STD_LOGIC;
    p_2_out : in STD_LOGIC_VECTOR ( 36 downto 0 );
    p_12_out : in STD_LOGIC_VECTOR ( 36 downto 0 );
    \gen_AB_reg_slice.state_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\ : in STD_LOGIC;
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\ : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_2 : entity is "axis_register_slice_v1_1_8_axisc_register_slice";
end top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_2;

architecture STRUCTURE of top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_2 is
  signal \gen_AB_reg_slice.sel_rd_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_5_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_6__1_n_0\ : STD_LOGIC;
  signal mux_tvalid : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_7_out : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal payload_a : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal payload_a_1 : STD_LOGIC;
  signal payload_b : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal payload_b_0 : STD_LOGIC;
  signal \^s_axis_tready[1]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sel_wr : STD_LOGIC;
  signal \tready_mux__1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_2__0\ : label is "soft_lutpair19";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tdata[64]_INST_0_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[65]_INST_0_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[67]_INST_0_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[68]_INST_0_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[69]_INST_0_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[70]_INST_0_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[71]_INST_0_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[72]_INST_0_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[73]_INST_0_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[74]_INST_0_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[75]_INST_0_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[76]_INST_0_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[77]_INST_0_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[78]_INST_0_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[79]_INST_0_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[80]_INST_0_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[81]_INST_0_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[82]_INST_0_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[83]_INST_0_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[84]_INST_0_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[85]_INST_0_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[86]_INST_0_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[87]_INST_0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[88]_INST_0_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[89]_INST_0_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[90]_INST_0_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[91]_INST_0_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[92]_INST_0_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[93]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[94]_INST_0_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[95]_INST_0_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tkeep[10]_INST_0_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tkeep[11]_INST_0_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tkeep[8]_INST_0_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tkeep[9]_INST_0_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tlast[2]_INST_0_i_1\ : label is "soft_lutpair20";
begin
  \s_axis_tready[1]\ <= \^s_axis_tready[1]\;
\gen_AB_reg_slice.payload_a[36]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => aclken,
      I1 => \^s_axis_tready[1]\,
      I2 => mux_tvalid(1),
      I3 => sel_wr,
      O => payload_a_1
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(0),
      Q => payload_a(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(10),
      Q => payload_a(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(11),
      Q => payload_a(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(12),
      Q => payload_a(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(13),
      Q => payload_a(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(14),
      Q => payload_a(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(15),
      Q => payload_a(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(16),
      Q => payload_a(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(17),
      Q => payload_a(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(18),
      Q => payload_a(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(19),
      Q => payload_a(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(1),
      Q => payload_a(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(20),
      Q => payload_a(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(21),
      Q => payload_a(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(22),
      Q => payload_a(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(23),
      Q => payload_a(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(24),
      Q => payload_a(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(25),
      Q => payload_a(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(26),
      Q => payload_a(26),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(27),
      Q => payload_a(27),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(28),
      Q => payload_a(28),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(29),
      Q => payload_a(29),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(2),
      Q => payload_a(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(30),
      Q => payload_a(30),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(31),
      Q => payload_a(31),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(32),
      Q => payload_a(32),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(33),
      Q => payload_a(33),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(34),
      Q => payload_a(34),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(35),
      Q => payload_a(35),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(36),
      Q => payload_a(36),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(3),
      Q => payload_a(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(4),
      Q => payload_a(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(5),
      Q => payload_a(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(6),
      Q => payload_a(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(7),
      Q => payload_a(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(8),
      Q => payload_a(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(9),
      Q => payload_a(9),
      R => '0'
    );
\gen_AB_reg_slice.payload_b[36]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => aclken,
      I1 => \^s_axis_tready[1]\,
      I2 => mux_tvalid(1),
      I3 => sel_wr,
      O => payload_b_0
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(0),
      Q => payload_b(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(10),
      Q => payload_b(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(11),
      Q => payload_b(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(12),
      Q => payload_b(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(13),
      Q => payload_b(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(14),
      Q => payload_b(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(15),
      Q => payload_b(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(16),
      Q => payload_b(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(17),
      Q => payload_b(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(18),
      Q => payload_b(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(19),
      Q => payload_b(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(1),
      Q => payload_b(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(20),
      Q => payload_b(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(21),
      Q => payload_b(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(22),
      Q => payload_b(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(23),
      Q => payload_b(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(24),
      Q => payload_b(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(25),
      Q => payload_b(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(26),
      Q => payload_b(26),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(27),
      Q => payload_b(27),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(28),
      Q => payload_b(28),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(29),
      Q => payload_b(29),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(2),
      Q => payload_b(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(30),
      Q => payload_b(30),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(31),
      Q => payload_b(31),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(32),
      Q => payload_b(32),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(33),
      Q => payload_b(33),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(34),
      Q => payload_b(34),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(35),
      Q => payload_b(35),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(36),
      Q => payload_b(36),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(3),
      Q => payload_b(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(4),
      Q => payload_b(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(5),
      Q => payload_b(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(6),
      Q => payload_b(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(7),
      Q => payload_b(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(8),
      Q => payload_b(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(9),
      Q => payload_b(9),
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \tready_mux__1\,
      I1 => mux_tvalid(1),
      I2 => aclken,
      I3 => sel,
      O => \gen_AB_reg_slice.sel_rd_i_1__0_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__0_n_0\,
      Q => sel,
      R => \gen_AB_reg_slice.state[1]_i_1__0_n_0\
    );
\gen_AB_reg_slice.sel_wr_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^s_axis_tready[1]\,
      I1 => s_axis_tvalid(0),
      I2 => aclken,
      I3 => sel_wr,
      O => \gen_AB_reg_slice.sel_wr_i_1__0_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1__0_n_0\,
      Q => sel_wr,
      R => \gen_AB_reg_slice.state[1]_i_1__0_n_0\
    );
\gen_AB_reg_slice.state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8F8F0F0"
    )
        port map (
      I0 => aclken,
      I1 => s_axis_tvalid(0),
      I2 => mux_tvalid(1),
      I3 => \tready_mux__1\,
      I4 => \^s_axis_tready[1]\,
      O => \gen_AB_reg_slice.state[0]_i_1__0_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => areset_r,
      I1 => Q(12),
      O => \gen_AB_reg_slice.state[1]_i_1__0_n_0\
    );
\gen_AB_reg_slice.state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FAA0A"
    )
        port map (
      I0 => aclken,
      I1 => s_axis_tvalid(0),
      I2 => mux_tvalid(1),
      I3 => \tready_mux__1\,
      I4 => \^s_axis_tready[1]\,
      O => \gen_AB_reg_slice.state[1]_i_2__0_n_0\
    );
\gen_AB_reg_slice.state[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0E0E0E0E0E"
    )
        port map (
      I0 => \gen_AB_reg_slice.state[1]_i_4__0_n_0\,
      I1 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\,
      I2 => \gen_AB_reg_slice.state[1]_i_5_n_0\,
      I3 => Q(8),
      I4 => \gen_AB_reg_slice.state[1]_i_6__1_n_0\,
      I5 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\,
      O => \tready_mux__1\
    );
\gen_AB_reg_slice.state[1]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      O => \gen_AB_reg_slice.state[1]_i_4__0_n_0\
    );
\gen_AB_reg_slice.state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(9),
      I5 => m_axis_tready(0),
      O => \gen_AB_reg_slice.state[1]_i_5_n_0\
    );
\gen_AB_reg_slice.state[1]_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => \gen_AB_reg_slice.state[1]_i_6__1_n_0\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1__0_n_0\,
      Q => mux_tvalid(1),
      R => \gen_AB_reg_slice.state[1]_i_1__0_n_0\
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_2__0_n_0\,
      Q => \^s_axis_tready[1]\,
      R => \gen_AB_reg_slice.state[1]_i_1__0_n_0\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(0),
      I4 => p_2_out(0),
      I5 => p_12_out(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(10),
      I4 => p_2_out(10),
      I5 => p_12_out(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(11),
      I4 => p_2_out(11),
      I5 => p_12_out(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(12),
      I4 => p_2_out(12),
      I5 => p_12_out(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(13),
      I4 => p_2_out(13),
      I5 => p_12_out(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(14),
      I4 => p_2_out(14),
      I5 => p_12_out(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(15),
      I4 => p_2_out(15),
      I5 => p_12_out(15),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(16),
      I4 => p_2_out(16),
      I5 => p_12_out(16),
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(17),
      I4 => p_2_out(17),
      I5 => p_12_out(17),
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(18),
      I4 => p_2_out(18),
      I5 => p_12_out(18),
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(19),
      I4 => p_2_out(19),
      I5 => p_12_out(19),
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(1),
      I4 => p_2_out(1),
      I5 => p_12_out(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(20),
      I4 => p_2_out(20),
      I5 => p_12_out(20),
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(21),
      I4 => p_2_out(21),
      I5 => p_12_out(21),
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(22),
      I4 => p_2_out(22),
      I5 => p_12_out(22),
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(23),
      I4 => p_2_out(23),
      I5 => p_12_out(23),
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(24),
      I4 => p_2_out(24),
      I5 => p_12_out(24),
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(25),
      I4 => p_2_out(25),
      I5 => p_12_out(25),
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(26),
      I4 => p_2_out(26),
      I5 => p_12_out(26),
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(27),
      I4 => p_2_out(27),
      I5 => p_12_out(27),
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(28),
      I4 => p_2_out(28),
      I5 => p_12_out(28),
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(29),
      I4 => p_2_out(29),
      I5 => p_12_out(29),
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(2),
      I4 => p_2_out(2),
      I5 => p_12_out(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(30),
      I4 => p_2_out(30),
      I5 => p_12_out(30),
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(31),
      I4 => p_2_out(31),
      I5 => p_12_out(31),
      O => m_axis_tdata(31)
    );
\m_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(0),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(0),
      I5 => p_12_out(0),
      O => m_axis_tdata(32)
    );
\m_axis_tdata[33]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(1),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(1),
      I5 => p_12_out(1),
      O => m_axis_tdata(33)
    );
\m_axis_tdata[34]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(2),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(2),
      I5 => p_12_out(2),
      O => m_axis_tdata(34)
    );
\m_axis_tdata[35]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(3),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(3),
      I5 => p_12_out(3),
      O => m_axis_tdata(35)
    );
\m_axis_tdata[36]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(4),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(4),
      I5 => p_12_out(4),
      O => m_axis_tdata(36)
    );
\m_axis_tdata[37]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(5),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(5),
      I5 => p_12_out(5),
      O => m_axis_tdata(37)
    );
\m_axis_tdata[38]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(6),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(6),
      I5 => p_12_out(6),
      O => m_axis_tdata(38)
    );
\m_axis_tdata[39]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(7),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(7),
      I5 => p_12_out(7),
      O => m_axis_tdata(39)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(3),
      I4 => p_2_out(3),
      I5 => p_12_out(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[40]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(8),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(8),
      I5 => p_12_out(8),
      O => m_axis_tdata(40)
    );
\m_axis_tdata[41]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(9),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(9),
      I5 => p_12_out(9),
      O => m_axis_tdata(41)
    );
\m_axis_tdata[42]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(10),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(10),
      I5 => p_12_out(10),
      O => m_axis_tdata(42)
    );
\m_axis_tdata[43]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(11),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(11),
      I5 => p_12_out(11),
      O => m_axis_tdata(43)
    );
\m_axis_tdata[44]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(12),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(12),
      I5 => p_12_out(12),
      O => m_axis_tdata(44)
    );
\m_axis_tdata[45]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(13),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(13),
      I5 => p_12_out(13),
      O => m_axis_tdata(45)
    );
\m_axis_tdata[46]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(14),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(14),
      I5 => p_12_out(14),
      O => m_axis_tdata(46)
    );
\m_axis_tdata[47]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(15),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(15),
      I5 => p_12_out(15),
      O => m_axis_tdata(47)
    );
\m_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(16),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(16),
      I5 => p_12_out(16),
      O => m_axis_tdata(48)
    );
\m_axis_tdata[49]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(17),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(17),
      I5 => p_12_out(17),
      O => m_axis_tdata(49)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(4),
      I4 => p_2_out(4),
      I5 => p_12_out(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[50]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(18),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(18),
      I5 => p_12_out(18),
      O => m_axis_tdata(50)
    );
\m_axis_tdata[51]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(19),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(19),
      I5 => p_12_out(19),
      O => m_axis_tdata(51)
    );
\m_axis_tdata[52]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(20),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(20),
      I5 => p_12_out(20),
      O => m_axis_tdata(52)
    );
\m_axis_tdata[53]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(21),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(21),
      I5 => p_12_out(21),
      O => m_axis_tdata(53)
    );
\m_axis_tdata[54]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(22),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(22),
      I5 => p_12_out(22),
      O => m_axis_tdata(54)
    );
\m_axis_tdata[55]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(23),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(23),
      I5 => p_12_out(23),
      O => m_axis_tdata(55)
    );
\m_axis_tdata[56]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(24),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(24),
      I5 => p_12_out(24),
      O => m_axis_tdata(56)
    );
\m_axis_tdata[57]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(25),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(25),
      I5 => p_12_out(25),
      O => m_axis_tdata(57)
    );
\m_axis_tdata[58]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(26),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(26),
      I5 => p_12_out(26),
      O => m_axis_tdata(58)
    );
\m_axis_tdata[59]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(27),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(27),
      I5 => p_12_out(27),
      O => m_axis_tdata(59)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(5),
      I4 => p_2_out(5),
      I5 => p_12_out(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[60]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(28),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(28),
      I5 => p_12_out(28),
      O => m_axis_tdata(60)
    );
\m_axis_tdata[61]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(29),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(29),
      I5 => p_12_out(29),
      O => m_axis_tdata(61)
    );
\m_axis_tdata[62]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(30),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(30),
      I5 => p_12_out(30),
      O => m_axis_tdata(62)
    );
\m_axis_tdata[63]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(31),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(31),
      I5 => p_12_out(31),
      O => m_axis_tdata(63)
    );
\m_axis_tdata[64]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(0),
      I4 => p_2_out(0),
      I5 => p_12_out(0),
      O => m_axis_tdata(64)
    );
\m_axis_tdata[64]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(0),
      I1 => sel,
      I2 => payload_a(0),
      O => p_7_out(0)
    );
\m_axis_tdata[65]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(1),
      I4 => p_2_out(1),
      I5 => p_12_out(1),
      O => m_axis_tdata(65)
    );
\m_axis_tdata[65]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(1),
      I1 => sel,
      I2 => payload_a(1),
      O => p_7_out(1)
    );
\m_axis_tdata[66]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(2),
      I4 => p_2_out(2),
      I5 => p_12_out(2),
      O => m_axis_tdata(66)
    );
\m_axis_tdata[66]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(2),
      I1 => sel,
      I2 => payload_a(2),
      O => p_7_out(2)
    );
\m_axis_tdata[67]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(3),
      I4 => p_2_out(3),
      I5 => p_12_out(3),
      O => m_axis_tdata(67)
    );
\m_axis_tdata[67]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(3),
      I1 => sel,
      I2 => payload_a(3),
      O => p_7_out(3)
    );
\m_axis_tdata[68]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(4),
      I4 => p_2_out(4),
      I5 => p_12_out(4),
      O => m_axis_tdata(68)
    );
\m_axis_tdata[68]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(4),
      I1 => sel,
      I2 => payload_a(4),
      O => p_7_out(4)
    );
\m_axis_tdata[69]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(5),
      I4 => p_2_out(5),
      I5 => p_12_out(5),
      O => m_axis_tdata(69)
    );
\m_axis_tdata[69]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(5),
      I1 => sel,
      I2 => payload_a(5),
      O => p_7_out(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(6),
      I4 => p_2_out(6),
      I5 => p_12_out(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[70]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(6),
      I4 => p_2_out(6),
      I5 => p_12_out(6),
      O => m_axis_tdata(70)
    );
\m_axis_tdata[70]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(6),
      I1 => sel,
      I2 => payload_a(6),
      O => p_7_out(6)
    );
\m_axis_tdata[71]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(7),
      I4 => p_2_out(7),
      I5 => p_12_out(7),
      O => m_axis_tdata(71)
    );
\m_axis_tdata[71]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(7),
      I1 => sel,
      I2 => payload_a(7),
      O => p_7_out(7)
    );
\m_axis_tdata[72]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(8),
      I4 => p_2_out(8),
      I5 => p_12_out(8),
      O => m_axis_tdata(72)
    );
\m_axis_tdata[72]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(8),
      I1 => sel,
      I2 => payload_a(8),
      O => p_7_out(8)
    );
\m_axis_tdata[73]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(9),
      I4 => p_2_out(9),
      I5 => p_12_out(9),
      O => m_axis_tdata(73)
    );
\m_axis_tdata[73]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(9),
      I1 => sel,
      I2 => payload_a(9),
      O => p_7_out(9)
    );
\m_axis_tdata[74]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(10),
      I4 => p_2_out(10),
      I5 => p_12_out(10),
      O => m_axis_tdata(74)
    );
\m_axis_tdata[74]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(10),
      I1 => sel,
      I2 => payload_a(10),
      O => p_7_out(10)
    );
\m_axis_tdata[75]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(11),
      I4 => p_2_out(11),
      I5 => p_12_out(11),
      O => m_axis_tdata(75)
    );
\m_axis_tdata[75]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(11),
      I1 => sel,
      I2 => payload_a(11),
      O => p_7_out(11)
    );
\m_axis_tdata[76]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(12),
      I4 => p_2_out(12),
      I5 => p_12_out(12),
      O => m_axis_tdata(76)
    );
\m_axis_tdata[76]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(12),
      I1 => sel,
      I2 => payload_a(12),
      O => p_7_out(12)
    );
\m_axis_tdata[77]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(13),
      I4 => p_2_out(13),
      I5 => p_12_out(13),
      O => m_axis_tdata(77)
    );
\m_axis_tdata[77]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(13),
      I1 => sel,
      I2 => payload_a(13),
      O => p_7_out(13)
    );
\m_axis_tdata[78]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(14),
      I4 => p_2_out(14),
      I5 => p_12_out(14),
      O => m_axis_tdata(78)
    );
\m_axis_tdata[78]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(14),
      I1 => sel,
      I2 => payload_a(14),
      O => p_7_out(14)
    );
\m_axis_tdata[79]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(15),
      I4 => p_2_out(15),
      I5 => p_12_out(15),
      O => m_axis_tdata(79)
    );
\m_axis_tdata[79]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(15),
      I1 => sel,
      I2 => payload_a(15),
      O => p_7_out(15)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(7),
      I4 => p_2_out(7),
      I5 => p_12_out(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[80]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(16),
      I4 => p_2_out(16),
      I5 => p_12_out(16),
      O => m_axis_tdata(80)
    );
\m_axis_tdata[80]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(16),
      I1 => sel,
      I2 => payload_a(16),
      O => p_7_out(16)
    );
\m_axis_tdata[81]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(17),
      I4 => p_2_out(17),
      I5 => p_12_out(17),
      O => m_axis_tdata(81)
    );
\m_axis_tdata[81]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(17),
      I1 => sel,
      I2 => payload_a(17),
      O => p_7_out(17)
    );
\m_axis_tdata[82]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(18),
      I4 => p_2_out(18),
      I5 => p_12_out(18),
      O => m_axis_tdata(82)
    );
\m_axis_tdata[82]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(18),
      I1 => sel,
      I2 => payload_a(18),
      O => p_7_out(18)
    );
\m_axis_tdata[83]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(19),
      I4 => p_2_out(19),
      I5 => p_12_out(19),
      O => m_axis_tdata(83)
    );
\m_axis_tdata[83]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(19),
      I1 => sel,
      I2 => payload_a(19),
      O => p_7_out(19)
    );
\m_axis_tdata[84]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(20),
      I4 => p_2_out(20),
      I5 => p_12_out(20),
      O => m_axis_tdata(84)
    );
\m_axis_tdata[84]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(20),
      I1 => sel,
      I2 => payload_a(20),
      O => p_7_out(20)
    );
\m_axis_tdata[85]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(21),
      I4 => p_2_out(21),
      I5 => p_12_out(21),
      O => m_axis_tdata(85)
    );
\m_axis_tdata[85]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(21),
      I1 => sel,
      I2 => payload_a(21),
      O => p_7_out(21)
    );
\m_axis_tdata[86]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(22),
      I4 => p_2_out(22),
      I5 => p_12_out(22),
      O => m_axis_tdata(86)
    );
\m_axis_tdata[86]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(22),
      I1 => sel,
      I2 => payload_a(22),
      O => p_7_out(22)
    );
\m_axis_tdata[87]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(23),
      I4 => p_2_out(23),
      I5 => p_12_out(23),
      O => m_axis_tdata(87)
    );
\m_axis_tdata[87]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(23),
      I1 => sel,
      I2 => payload_a(23),
      O => p_7_out(23)
    );
\m_axis_tdata[88]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(24),
      I4 => p_2_out(24),
      I5 => p_12_out(24),
      O => m_axis_tdata(88)
    );
\m_axis_tdata[88]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(24),
      I1 => sel,
      I2 => payload_a(24),
      O => p_7_out(24)
    );
\m_axis_tdata[89]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(25),
      I4 => p_2_out(25),
      I5 => p_12_out(25),
      O => m_axis_tdata(89)
    );
\m_axis_tdata[89]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(25),
      I1 => sel,
      I2 => payload_a(25),
      O => p_7_out(25)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(8),
      I4 => p_2_out(8),
      I5 => p_12_out(8),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[90]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(26),
      I4 => p_2_out(26),
      I5 => p_12_out(26),
      O => m_axis_tdata(90)
    );
\m_axis_tdata[90]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(26),
      I1 => sel,
      I2 => payload_a(26),
      O => p_7_out(26)
    );
\m_axis_tdata[91]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(27),
      I4 => p_2_out(27),
      I5 => p_12_out(27),
      O => m_axis_tdata(91)
    );
\m_axis_tdata[91]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(27),
      I1 => sel,
      I2 => payload_a(27),
      O => p_7_out(27)
    );
\m_axis_tdata[92]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(28),
      I4 => p_2_out(28),
      I5 => p_12_out(28),
      O => m_axis_tdata(92)
    );
\m_axis_tdata[92]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(28),
      I1 => sel,
      I2 => payload_a(28),
      O => p_7_out(28)
    );
\m_axis_tdata[93]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(29),
      I4 => p_2_out(29),
      I5 => p_12_out(29),
      O => m_axis_tdata(93)
    );
\m_axis_tdata[93]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(29),
      I1 => sel,
      I2 => payload_a(29),
      O => p_7_out(29)
    );
\m_axis_tdata[94]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(30),
      I4 => p_2_out(30),
      I5 => p_12_out(30),
      O => m_axis_tdata(94)
    );
\m_axis_tdata[94]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(30),
      I1 => sel,
      I2 => payload_a(30),
      O => p_7_out(30)
    );
\m_axis_tdata[95]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(31),
      I4 => p_2_out(31),
      I5 => p_12_out(31),
      O => m_axis_tdata(95)
    );
\m_axis_tdata[95]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(31),
      I1 => sel,
      I2 => payload_a(31),
      O => p_7_out(31)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(9),
      I4 => p_2_out(9),
      I5 => p_12_out(9),
      O => m_axis_tdata(9)
    );
\m_axis_tkeep[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(32),
      I4 => p_2_out(32),
      I5 => p_12_out(32),
      O => m_axis_tkeep(0)
    );
\m_axis_tkeep[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(34),
      I4 => p_2_out(34),
      I5 => p_12_out(34),
      O => m_axis_tkeep(10)
    );
\m_axis_tkeep[10]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(34),
      I1 => sel,
      I2 => payload_a(34),
      O => p_7_out(34)
    );
\m_axis_tkeep[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(35),
      I4 => p_2_out(35),
      I5 => p_12_out(35),
      O => m_axis_tkeep(11)
    );
\m_axis_tkeep[11]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(35),
      I1 => sel,
      I2 => payload_a(35),
      O => p_7_out(35)
    );
\m_axis_tkeep[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(33),
      I4 => p_2_out(33),
      I5 => p_12_out(33),
      O => m_axis_tkeep(1)
    );
\m_axis_tkeep[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(34),
      I4 => p_2_out(34),
      I5 => p_12_out(34),
      O => m_axis_tkeep(2)
    );
\m_axis_tkeep[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(35),
      I4 => p_2_out(35),
      I5 => p_12_out(35),
      O => m_axis_tkeep(3)
    );
\m_axis_tkeep[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(32),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(32),
      I5 => p_12_out(32),
      O => m_axis_tkeep(4)
    );
\m_axis_tkeep[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(33),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(33),
      I5 => p_12_out(33),
      O => m_axis_tkeep(5)
    );
\m_axis_tkeep[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(34),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(34),
      I5 => p_12_out(34),
      O => m_axis_tkeep(6)
    );
\m_axis_tkeep[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(35),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(35),
      I5 => p_12_out(35),
      O => m_axis_tkeep(7)
    );
\m_axis_tkeep[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(32),
      I4 => p_2_out(32),
      I5 => p_12_out(32),
      O => m_axis_tkeep(8)
    );
\m_axis_tkeep[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(32),
      I1 => sel,
      I2 => payload_a(32),
      O => p_7_out(32)
    );
\m_axis_tkeep[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(33),
      I4 => p_2_out(33),
      I5 => p_12_out(33),
      O => m_axis_tkeep(9)
    );
\m_axis_tkeep[9]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(33),
      I1 => sel,
      I2 => payload_a(33),
      O => p_7_out(33)
    );
\m_axis_tlast[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => p_7_out(36),
      I4 => p_2_out(36),
      I5 => p_12_out(36),
      O => m_axis_tlast(0)
    );
\m_axis_tlast[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A8A008A0A800080"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      I1 => p_7_out(36),
      I2 => Q(4),
      I3 => Q(5),
      I4 => p_2_out(36),
      I5 => p_12_out(36),
      O => m_axis_tlast(1)
    );
\m_axis_tlast[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A0A220228082000"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      I1 => Q(7),
      I2 => Q(6),
      I3 => p_7_out(36),
      I4 => p_2_out(36),
      I5 => p_12_out(36),
      O => m_axis_tlast(2)
    );
\m_axis_tlast[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(36),
      I1 => sel,
      I2 => payload_a(36),
      O => p_7_out(36)
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7351624000000000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => mux_tvalid(1),
      I3 => \gen_AB_reg_slice.state_reg[0]_0\(1),
      I4 => \gen_AB_reg_slice.state_reg[0]_0\(0),
      I5 => Q(9),
      O => m_axis_tvalid(0)
    );
\m_axis_tvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B0B380800000000"
    )
        port map (
      I0 => mux_tvalid(1),
      I1 => Q(4),
      I2 => Q(5),
      I3 => \gen_AB_reg_slice.state_reg[0]_0\(1),
      I4 => \gen_AB_reg_slice.state_reg[0]_0\(0),
      I5 => Q(10),
      O => m_axis_tvalid(1)
    );
\m_axis_tvalid[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7351624000000000"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => mux_tvalid(1),
      I3 => \gen_AB_reg_slice.state_reg[0]_0\(1),
      I4 => \gen_AB_reg_slice.state_reg[0]_0\(0),
      I5 => Q(11),
      O => m_axis_tvalid(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_3 is
  port (
    \gen_AB_reg_slice.sel_rd_reg_0\ : out STD_LOGIC;
    \gen_AB_reg_slice.sel_rd_reg_1\ : out STD_LOGIC;
    \s_axis_tready[0]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]_0\ : out STD_LOGIC;
    p_12_out : out STD_LOGIC_VECTOR ( 36 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_3 : entity is "axis_register_slice_v1_1_8_axisc_register_slice";
end top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_3;

architecture STRUCTURE of top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_3 is
  signal \^gen_ab_reg_slice.payload_a_reg[0]_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_rd_i_1__1_n_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.sel_rd_reg_0\ : STD_LOGIC;
  signal \^gen_ab_reg_slice.sel_rd_reg_1\ : STD_LOGIC;
  signal \gen_AB_reg_slice.sel_wr_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_4_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \gen_AB_reg_slice.state[1]_i_6__0_n_0\ : STD_LOGIC;
  signal payload_a : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal payload_a_1 : STD_LOGIC;
  signal payload_b : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal payload_b_0 : STD_LOGIC;
  signal \^s_axis_tready[0]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sel_wr : STD_LOGIC;
  signal \tready_mux__1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_AB_reg_slice.state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \gen_AB_reg_slice.state_reg[1]\ : label is "none";
  attribute SOFT_HLUTNM of \m_axis_tdata[65]_INST_0_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[66]_INST_0_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[67]_INST_0_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[68]_INST_0_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[69]_INST_0_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[70]_INST_0_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[71]_INST_0_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[72]_INST_0_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[73]_INST_0_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[74]_INST_0_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[75]_INST_0_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[76]_INST_0_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[77]_INST_0_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[78]_INST_0_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[79]_INST_0_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[80]_INST_0_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[81]_INST_0_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[82]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[83]_INST_0_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[84]_INST_0_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[85]_INST_0_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[86]_INST_0_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[87]_INST_0_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[88]_INST_0_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[89]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[90]_INST_0_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[91]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[92]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[93]_INST_0_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[94]_INST_0_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[95]_INST_0_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tkeep[10]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tkeep[11]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tkeep[8]_INST_0_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tkeep[9]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tlast[2]_INST_0_i_3\ : label is "soft_lutpair1";
begin
  \gen_AB_reg_slice.payload_a_reg[0]_0\ <= \^gen_ab_reg_slice.payload_a_reg[0]_0\;
  \gen_AB_reg_slice.sel_rd_reg_0\ <= \^gen_ab_reg_slice.sel_rd_reg_0\;
  \gen_AB_reg_slice.sel_rd_reg_1\ <= \^gen_ab_reg_slice.sel_rd_reg_1\;
  \s_axis_tready[0]\ <= \^s_axis_tready[0]\;
\gen_AB_reg_slice.payload_a[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => aclken,
      I1 => \^s_axis_tready[0]\,
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => sel_wr,
      O => payload_a_1
    );
\gen_AB_reg_slice.payload_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(0),
      Q => payload_a(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(10),
      Q => payload_a(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(11),
      Q => payload_a(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(12),
      Q => payload_a(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(13),
      Q => payload_a(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(14),
      Q => payload_a(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(15),
      Q => payload_a(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(16),
      Q => payload_a(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(17),
      Q => payload_a(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(18),
      Q => payload_a(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(19),
      Q => payload_a(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(1),
      Q => payload_a(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(20),
      Q => payload_a(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(21),
      Q => payload_a(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(22),
      Q => payload_a(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(23),
      Q => payload_a(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(24),
      Q => payload_a(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(25),
      Q => payload_a(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(26),
      Q => payload_a(26),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(27),
      Q => payload_a(27),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(28),
      Q => payload_a(28),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(29),
      Q => payload_a(29),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(2),
      Q => payload_a(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(30),
      Q => payload_a(30),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(31),
      Q => payload_a(31),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(32),
      Q => payload_a(32),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(33),
      Q => payload_a(33),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(34),
      Q => payload_a(34),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(35),
      Q => payload_a(35),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(36),
      Q => payload_a(36),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(3),
      Q => payload_a(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(4),
      Q => payload_a(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(5),
      Q => payload_a(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(6),
      Q => payload_a(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(7),
      Q => payload_a(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(8),
      Q => payload_a(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_a_1,
      D => D(9),
      Q => payload_a(9),
      R => '0'
    );
\gen_AB_reg_slice.payload_b[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => aclken,
      I1 => \^s_axis_tready[0]\,
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => sel_wr,
      O => payload_b_0
    );
\gen_AB_reg_slice.payload_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(0),
      Q => payload_b(0),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(10),
      Q => payload_b(10),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(11),
      Q => payload_b(11),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(12),
      Q => payload_b(12),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(13),
      Q => payload_b(13),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(14),
      Q => payload_b(14),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(15),
      Q => payload_b(15),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(16),
      Q => payload_b(16),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(17),
      Q => payload_b(17),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(18),
      Q => payload_b(18),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(19),
      Q => payload_b(19),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(1),
      Q => payload_b(1),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(20),
      Q => payload_b(20),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(21),
      Q => payload_b(21),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(22),
      Q => payload_b(22),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(23),
      Q => payload_b(23),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(24),
      Q => payload_b(24),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(25),
      Q => payload_b(25),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(26),
      Q => payload_b(26),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(27),
      Q => payload_b(27),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(28),
      Q => payload_b(28),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(29),
      Q => payload_b(29),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(2),
      Q => payload_b(2),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(30),
      Q => payload_b(30),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(31),
      Q => payload_b(31),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(32),
      Q => payload_b(32),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(33),
      Q => payload_b(33),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(34),
      Q => payload_b(34),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(35),
      Q => payload_b(35),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(36),
      Q => payload_b(36),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(3),
      Q => payload_b(3),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(4),
      Q => payload_b(4),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(5),
      Q => payload_b(5),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(6),
      Q => payload_b(6),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(7),
      Q => payload_b(7),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(8),
      Q => payload_b(8),
      R => '0'
    );
\gen_AB_reg_slice.payload_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => payload_b_0,
      D => D(9),
      Q => payload_b(9),
      R => '0'
    );
\gen_AB_reg_slice.sel_rd_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \tready_mux__1\,
      I1 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I2 => aclken,
      I3 => sel,
      O => \gen_AB_reg_slice.sel_rd_i_1__1_n_0\
    );
\gen_AB_reg_slice.sel_rd_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_rd_i_1__1_n_0\,
      Q => sel,
      R => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.sel_wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^s_axis_tready[0]\,
      I1 => s_axis_tvalid(0),
      I2 => aclken,
      I3 => sel_wr,
      O => \gen_AB_reg_slice.sel_wr_i_1_n_0\
    );
\gen_AB_reg_slice.sel_wr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.sel_wr_i_1_n_0\,
      Q => sel_wr,
      R => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8F8F0F0"
    )
        port map (
      I0 => aclken,
      I1 => s_axis_tvalid(0),
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => \tready_mux__1\,
      I4 => \^s_axis_tready[0]\,
      O => \gen_AB_reg_slice.state[0]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => areset_r,
      I1 => Q(15),
      O => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FAA0A"
    )
        port map (
      I0 => aclken,
      I1 => s_axis_tvalid(0),
      I2 => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      I3 => \tready_mux__1\,
      I4 => \^s_axis_tready[0]\,
      O => \gen_AB_reg_slice.state[1]_i_2_n_0\
    );
\gen_AB_reg_slice.state[1]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0E0E0E0E0E"
    )
        port map (
      I0 => \gen_AB_reg_slice.state[1]_i_4_n_0\,
      I1 => \^gen_ab_reg_slice.sel_rd_reg_0\,
      I2 => \gen_AB_reg_slice.state[1]_i_5__0_n_0\,
      I3 => Q(10),
      I4 => \gen_AB_reg_slice.state[1]_i_6__0_n_0\,
      I5 => \^gen_ab_reg_slice.sel_rd_reg_1\,
      O => \tready_mux__1\
    );
\gen_AB_reg_slice.state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(4),
      I1 => Q(5),
      O => \gen_AB_reg_slice.state[1]_i_4_n_0\
    );
\gen_AB_reg_slice.state[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(12),
      I5 => m_axis_tready(0),
      O => \gen_AB_reg_slice.state[1]_i_5__0_n_0\
    );
\gen_AB_reg_slice.state[1]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(13),
      I3 => m_axis_tready(1),
      O => \^gen_ab_reg_slice.sel_rd_reg_0\
    );
\gen_AB_reg_slice.state[1]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      O => \gen_AB_reg_slice.state[1]_i_6__0_n_0\
    );
\gen_AB_reg_slice.state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => m_axis_tready(2),
      I1 => Q(14),
      I2 => Q(11),
      O => \^gen_ab_reg_slice.sel_rd_reg_1\
    );
\gen_AB_reg_slice.state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[0]_i_1_n_0\,
      Q => \^gen_ab_reg_slice.payload_a_reg[0]_0\,
      R => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\gen_AB_reg_slice.state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_AB_reg_slice.state[1]_i_2_n_0\,
      Q => \^s_axis_tready[0]\,
      R => \gen_AB_reg_slice.state[1]_i_1_n_0\
    );
\m_axis_tdata[64]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(0),
      I1 => sel,
      I2 => payload_a(0),
      O => p_12_out(0)
    );
\m_axis_tdata[65]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(1),
      I1 => sel,
      I2 => payload_a(1),
      O => p_12_out(1)
    );
\m_axis_tdata[66]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(2),
      I1 => sel,
      I2 => payload_a(2),
      O => p_12_out(2)
    );
\m_axis_tdata[67]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(3),
      I1 => sel,
      I2 => payload_a(3),
      O => p_12_out(3)
    );
\m_axis_tdata[68]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(4),
      I1 => sel,
      I2 => payload_a(4),
      O => p_12_out(4)
    );
\m_axis_tdata[69]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(5),
      I1 => sel,
      I2 => payload_a(5),
      O => p_12_out(5)
    );
\m_axis_tdata[70]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(6),
      I1 => sel,
      I2 => payload_a(6),
      O => p_12_out(6)
    );
\m_axis_tdata[71]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(7),
      I1 => sel,
      I2 => payload_a(7),
      O => p_12_out(7)
    );
\m_axis_tdata[72]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(8),
      I1 => sel,
      I2 => payload_a(8),
      O => p_12_out(8)
    );
\m_axis_tdata[73]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(9),
      I1 => sel,
      I2 => payload_a(9),
      O => p_12_out(9)
    );
\m_axis_tdata[74]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(10),
      I1 => sel,
      I2 => payload_a(10),
      O => p_12_out(10)
    );
\m_axis_tdata[75]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(11),
      I1 => sel,
      I2 => payload_a(11),
      O => p_12_out(11)
    );
\m_axis_tdata[76]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(12),
      I1 => sel,
      I2 => payload_a(12),
      O => p_12_out(12)
    );
\m_axis_tdata[77]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(13),
      I1 => sel,
      I2 => payload_a(13),
      O => p_12_out(13)
    );
\m_axis_tdata[78]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(14),
      I1 => sel,
      I2 => payload_a(14),
      O => p_12_out(14)
    );
\m_axis_tdata[79]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(15),
      I1 => sel,
      I2 => payload_a(15),
      O => p_12_out(15)
    );
\m_axis_tdata[80]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(16),
      I1 => sel,
      I2 => payload_a(16),
      O => p_12_out(16)
    );
\m_axis_tdata[81]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(17),
      I1 => sel,
      I2 => payload_a(17),
      O => p_12_out(17)
    );
\m_axis_tdata[82]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(18),
      I1 => sel,
      I2 => payload_a(18),
      O => p_12_out(18)
    );
\m_axis_tdata[83]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(19),
      I1 => sel,
      I2 => payload_a(19),
      O => p_12_out(19)
    );
\m_axis_tdata[84]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(20),
      I1 => sel,
      I2 => payload_a(20),
      O => p_12_out(20)
    );
\m_axis_tdata[85]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(21),
      I1 => sel,
      I2 => payload_a(21),
      O => p_12_out(21)
    );
\m_axis_tdata[86]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(22),
      I1 => sel,
      I2 => payload_a(22),
      O => p_12_out(22)
    );
\m_axis_tdata[87]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(23),
      I1 => sel,
      I2 => payload_a(23),
      O => p_12_out(23)
    );
\m_axis_tdata[88]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(24),
      I1 => sel,
      I2 => payload_a(24),
      O => p_12_out(24)
    );
\m_axis_tdata[89]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(25),
      I1 => sel,
      I2 => payload_a(25),
      O => p_12_out(25)
    );
\m_axis_tdata[90]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(26),
      I1 => sel,
      I2 => payload_a(26),
      O => p_12_out(26)
    );
\m_axis_tdata[91]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(27),
      I1 => sel,
      I2 => payload_a(27),
      O => p_12_out(27)
    );
\m_axis_tdata[92]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(28),
      I1 => sel,
      I2 => payload_a(28),
      O => p_12_out(28)
    );
\m_axis_tdata[93]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(29),
      I1 => sel,
      I2 => payload_a(29),
      O => p_12_out(29)
    );
\m_axis_tdata[94]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(30),
      I1 => sel,
      I2 => payload_a(30),
      O => p_12_out(30)
    );
\m_axis_tdata[95]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(31),
      I1 => sel,
      I2 => payload_a(31),
      O => p_12_out(31)
    );
\m_axis_tkeep[10]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(34),
      I1 => sel,
      I2 => payload_a(34),
      O => p_12_out(34)
    );
\m_axis_tkeep[11]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(35),
      I1 => sel,
      I2 => payload_a(35),
      O => p_12_out(35)
    );
\m_axis_tkeep[8]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(32),
      I1 => sel,
      I2 => payload_a(32),
      O => p_12_out(32)
    );
\m_axis_tkeep[9]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(33),
      I1 => sel,
      I2 => payload_a(33),
      O => p_12_out(33)
    );
\m_axis_tlast[2]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => payload_b(36),
      I1 => sel,
      I2 => payload_a(36),
      O => p_12_out(36)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_axi_ctrl_read is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[31]_0\ : out STD_LOGIC;
    s_axi_ctrl_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_reg[1].reg_data_reg[62]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \gen_reg[0].reg_data_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_reg[2].reg_data_reg[94]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \gen_reg[0].reg_data_reg[30]\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \gen_reg[0].reg_data_reg[31]_0\ : in STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_axi_ctrl_read : entity is "axis_switch_v1_1_8_axi_ctrl_read";
end top_xbar_6_axis_switch_v1_1_8_axi_ctrl_read;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_axi_ctrl_read is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \addr_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \data[0]_i_1_n_0\ : STD_LOGIC;
  signal \data[0]_i_2_n_0\ : STD_LOGIC;
  signal \data[10]_i_1_n_0\ : STD_LOGIC;
  signal \data[10]_i_2_n_0\ : STD_LOGIC;
  signal \data[11]_i_1_n_0\ : STD_LOGIC;
  signal \data[11]_i_2_n_0\ : STD_LOGIC;
  signal \data[12]_i_1_n_0\ : STD_LOGIC;
  signal \data[12]_i_2_n_0\ : STD_LOGIC;
  signal \data[13]_i_1_n_0\ : STD_LOGIC;
  signal \data[13]_i_2_n_0\ : STD_LOGIC;
  signal \data[14]_i_1_n_0\ : STD_LOGIC;
  signal \data[14]_i_2_n_0\ : STD_LOGIC;
  signal \data[15]_i_1_n_0\ : STD_LOGIC;
  signal \data[15]_i_2_n_0\ : STD_LOGIC;
  signal \data[16]_i_1_n_0\ : STD_LOGIC;
  signal \data[16]_i_2_n_0\ : STD_LOGIC;
  signal \data[17]_i_1_n_0\ : STD_LOGIC;
  signal \data[17]_i_2_n_0\ : STD_LOGIC;
  signal \data[18]_i_1_n_0\ : STD_LOGIC;
  signal \data[18]_i_2_n_0\ : STD_LOGIC;
  signal \data[19]_i_1_n_0\ : STD_LOGIC;
  signal \data[19]_i_2_n_0\ : STD_LOGIC;
  signal \data[1]_i_1_n_0\ : STD_LOGIC;
  signal \data[1]_i_2_n_0\ : STD_LOGIC;
  signal \data[20]_i_1_n_0\ : STD_LOGIC;
  signal \data[20]_i_2_n_0\ : STD_LOGIC;
  signal \data[21]_i_1_n_0\ : STD_LOGIC;
  signal \data[21]_i_2_n_0\ : STD_LOGIC;
  signal \data[22]_i_1_n_0\ : STD_LOGIC;
  signal \data[22]_i_2_n_0\ : STD_LOGIC;
  signal \data[23]_i_1_n_0\ : STD_LOGIC;
  signal \data[23]_i_2_n_0\ : STD_LOGIC;
  signal \data[24]_i_1_n_0\ : STD_LOGIC;
  signal \data[24]_i_2_n_0\ : STD_LOGIC;
  signal \data[25]_i_1_n_0\ : STD_LOGIC;
  signal \data[25]_i_2_n_0\ : STD_LOGIC;
  signal \data[26]_i_1_n_0\ : STD_LOGIC;
  signal \data[26]_i_2_n_0\ : STD_LOGIC;
  signal \data[27]_i_1_n_0\ : STD_LOGIC;
  signal \data[27]_i_2_n_0\ : STD_LOGIC;
  signal \data[28]_i_1_n_0\ : STD_LOGIC;
  signal \data[28]_i_2_n_0\ : STD_LOGIC;
  signal \data[29]_i_1_n_0\ : STD_LOGIC;
  signal \data[29]_i_2_n_0\ : STD_LOGIC;
  signal \data[2]_i_1_n_0\ : STD_LOGIC;
  signal \data[2]_i_2_n_0\ : STD_LOGIC;
  signal \data[30]_i_1_n_0\ : STD_LOGIC;
  signal \data[30]_i_2_n_0\ : STD_LOGIC;
  signal \data[30]_i_3_n_0\ : STD_LOGIC;
  signal \data[31]_i_1_n_0\ : STD_LOGIC;
  signal \data[31]_i_3_n_0\ : STD_LOGIC;
  signal \data[3]_i_1_n_0\ : STD_LOGIC;
  signal \data[3]_i_2_n_0\ : STD_LOGIC;
  signal \data[4]_i_1_n_0\ : STD_LOGIC;
  signal \data[4]_i_2_n_0\ : STD_LOGIC;
  signal \data[5]_i_1_n_0\ : STD_LOGIC;
  signal \data[5]_i_2_n_0\ : STD_LOGIC;
  signal \data[6]_i_1_n_0\ : STD_LOGIC;
  signal \data[6]_i_2_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_2_n_0\ : STD_LOGIC;
  signal \data[8]_i_1_n_0\ : STD_LOGIC;
  signal \data[8]_i_2_n_0\ : STD_LOGIC;
  signal \data[9]_i_1_n_0\ : STD_LOGIC;
  signal \data[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair57";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  s_axi_ctrl_rvalid(1 downto 0) <= \^s_axi_ctrl_rvalid\(1 downto 0);
\addr_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(0),
      Q => \^q\(0),
      R => '0'
    );
\addr_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(1),
      Q => \^q\(1),
      R => '0'
    );
\addr_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(2),
      Q => sel0(2),
      R => '0'
    );
\addr_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(3),
      Q => sel0(3),
      R => '0'
    );
\addr_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_araddr(4),
      Q => \addr_r_reg_n_0_[6]\,
      R => '0'
    );
\data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[0]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(0),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(0),
      I5 => \data[31]_i_3_n_0\,
      O => \data[0]_i_1_n_0\
    );
\data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(0),
      I1 => \gen_reg[0].reg_data_reg[30]\(0),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[0]_i_2_n_0\
    );
\data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[10]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(10),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(10),
      I5 => \data[31]_i_3_n_0\,
      O => \data[10]_i_1_n_0\
    );
\data[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(10),
      I1 => \gen_reg[0].reg_data_reg[30]\(10),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[10]_i_2_n_0\
    );
\data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[11]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(11),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(11),
      I5 => \data[31]_i_3_n_0\,
      O => \data[11]_i_1_n_0\
    );
\data[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(11),
      I1 => \gen_reg[0].reg_data_reg[30]\(11),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[11]_i_2_n_0\
    );
\data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[12]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(12),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(12),
      I5 => \data[31]_i_3_n_0\,
      O => \data[12]_i_1_n_0\
    );
\data[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(12),
      I1 => \gen_reg[0].reg_data_reg[30]\(12),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[12]_i_2_n_0\
    );
\data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[13]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(13),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(13),
      I5 => \data[31]_i_3_n_0\,
      O => \data[13]_i_1_n_0\
    );
\data[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(13),
      I1 => \gen_reg[0].reg_data_reg[30]\(13),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[13]_i_2_n_0\
    );
\data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[14]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(14),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(14),
      I5 => \data[31]_i_3_n_0\,
      O => \data[14]_i_1_n_0\
    );
\data[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(14),
      I1 => \gen_reg[0].reg_data_reg[30]\(14),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[14]_i_2_n_0\
    );
\data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[15]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(15),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(15),
      I5 => \data[31]_i_3_n_0\,
      O => \data[15]_i_1_n_0\
    );
\data[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(15),
      I1 => \gen_reg[0].reg_data_reg[30]\(15),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[15]_i_2_n_0\
    );
\data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[16]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(16),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(16),
      I5 => \data[31]_i_3_n_0\,
      O => \data[16]_i_1_n_0\
    );
\data[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(16),
      I1 => \gen_reg[0].reg_data_reg[30]\(16),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[16]_i_2_n_0\
    );
\data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[17]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(17),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(17),
      I5 => \data[31]_i_3_n_0\,
      O => \data[17]_i_1_n_0\
    );
\data[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(17),
      I1 => \gen_reg[0].reg_data_reg[30]\(17),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[17]_i_2_n_0\
    );
\data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[18]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(18),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(18),
      I5 => \data[31]_i_3_n_0\,
      O => \data[18]_i_1_n_0\
    );
\data[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(18),
      I1 => \gen_reg[0].reg_data_reg[30]\(18),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[18]_i_2_n_0\
    );
\data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[19]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(19),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(19),
      I5 => \data[31]_i_3_n_0\,
      O => \data[19]_i_1_n_0\
    );
\data[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(19),
      I1 => \gen_reg[0].reg_data_reg[30]\(19),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[19]_i_2_n_0\
    );
\data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[1]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(1),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(1),
      I5 => \data[31]_i_3_n_0\,
      O => \data[1]_i_1_n_0\
    );
\data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(1),
      I1 => \gen_reg[0].reg_data_reg[30]\(1),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[1]_i_2_n_0\
    );
\data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[20]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(20),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(20),
      I5 => \data[31]_i_3_n_0\,
      O => \data[20]_i_1_n_0\
    );
\data[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(20),
      I1 => \gen_reg[0].reg_data_reg[30]\(20),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[20]_i_2_n_0\
    );
\data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[21]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(21),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(21),
      I5 => \data[31]_i_3_n_0\,
      O => \data[21]_i_1_n_0\
    );
\data[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(21),
      I1 => \gen_reg[0].reg_data_reg[30]\(21),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[21]_i_2_n_0\
    );
\data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[22]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(22),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(22),
      I5 => \data[31]_i_3_n_0\,
      O => \data[22]_i_1_n_0\
    );
\data[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(22),
      I1 => \gen_reg[0].reg_data_reg[30]\(22),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[22]_i_2_n_0\
    );
\data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[23]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(23),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(23),
      I5 => \data[31]_i_3_n_0\,
      O => \data[23]_i_1_n_0\
    );
\data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(23),
      I1 => \gen_reg[0].reg_data_reg[30]\(23),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[23]_i_2_n_0\
    );
\data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[24]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(24),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(24),
      I5 => \data[31]_i_3_n_0\,
      O => \data[24]_i_1_n_0\
    );
\data[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(24),
      I1 => \gen_reg[0].reg_data_reg[30]\(24),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[24]_i_2_n_0\
    );
\data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[25]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(25),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(25),
      I5 => \data[31]_i_3_n_0\,
      O => \data[25]_i_1_n_0\
    );
\data[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(25),
      I1 => \gen_reg[0].reg_data_reg[30]\(25),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[25]_i_2_n_0\
    );
\data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[26]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(26),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(26),
      I5 => \data[31]_i_3_n_0\,
      O => \data[26]_i_1_n_0\
    );
\data[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(26),
      I1 => \gen_reg[0].reg_data_reg[30]\(26),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[26]_i_2_n_0\
    );
\data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[27]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(27),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(27),
      I5 => \data[31]_i_3_n_0\,
      O => \data[27]_i_1_n_0\
    );
\data[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(27),
      I1 => \gen_reg[0].reg_data_reg[30]\(27),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[27]_i_2_n_0\
    );
\data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[28]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(28),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(28),
      I5 => \data[31]_i_3_n_0\,
      O => \data[28]_i_1_n_0\
    );
\data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(28),
      I1 => \gen_reg[0].reg_data_reg[30]\(28),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[28]_i_2_n_0\
    );
\data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[29]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(29),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(29),
      I5 => \data[31]_i_3_n_0\,
      O => \data[29]_i_1_n_0\
    );
\data[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(29),
      I1 => \gen_reg[0].reg_data_reg[30]\(29),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[29]_i_2_n_0\
    );
\data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[2]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(2),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(2),
      I5 => \data[31]_i_3_n_0\,
      O => \data[2]_i_1_n_0\
    );
\data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(2),
      I1 => \gen_reg[0].reg_data_reg[30]\(2),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[2]_i_2_n_0\
    );
\data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[30]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(30),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(30),
      I5 => \data[31]_i_3_n_0\,
      O => \data[30]_i_1_n_0\
    );
\data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(30),
      I1 => \gen_reg[0].reg_data_reg[30]\(30),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[30]_i_2_n_0\
    );
\data[30]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel0(2),
      I2 => sel0(3),
      I3 => \^q\(1),
      O => \data[30]_i_3_n_0\
    );
\data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \gen_reg[0].reg_data_reg[31]_0\,
      I2 => \gen_reg[0].reg_data_reg[31]\(31),
      I3 => \data[31]_i_3_n_0\,
      O => \data[31]_i_1_n_0\
    );
\data[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \addr_r_reg_n_0_[6]\,
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(1),
      O => \data[31]_i_3_n_0\
    );
\data[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      O => \data_reg[31]_0\
    );
\data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[3]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(3),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(3),
      I5 => \data[31]_i_3_n_0\,
      O => \data[3]_i_1_n_0\
    );
\data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(3),
      I1 => \gen_reg[0].reg_data_reg[30]\(3),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[3]_i_2_n_0\
    );
\data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[4]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(4),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(4),
      I5 => \data[31]_i_3_n_0\,
      O => \data[4]_i_1_n_0\
    );
\data[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(4),
      I1 => \gen_reg[0].reg_data_reg[30]\(4),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[4]_i_2_n_0\
    );
\data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[5]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(5),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(5),
      I5 => \data[31]_i_3_n_0\,
      O => \data[5]_i_1_n_0\
    );
\data[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(5),
      I1 => \gen_reg[0].reg_data_reg[30]\(5),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[5]_i_2_n_0\
    );
\data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[6]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(6),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(6),
      I5 => \data[31]_i_3_n_0\,
      O => \data[6]_i_1_n_0\
    );
\data[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(6),
      I1 => \gen_reg[0].reg_data_reg[30]\(6),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[6]_i_2_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[7]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(7),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(7),
      I5 => \data[31]_i_3_n_0\,
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(7),
      I1 => \gen_reg[0].reg_data_reg[30]\(7),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[7]_i_2_n_0\
    );
\data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[8]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(8),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(8),
      I5 => \data[31]_i_3_n_0\,
      O => \data[8]_i_1_n_0\
    );
\data[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(8),
      I1 => \gen_reg[0].reg_data_reg[30]\(8),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[8]_i_2_n_0\
    );
\data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA888A888A888"
    )
        port map (
      I0 => \addr_r_reg_n_0_[6]\,
      I1 => \data[9]_i_2_n_0\,
      I2 => \gen_reg[1].reg_data_reg[62]\(9),
      I3 => \data[30]_i_3_n_0\,
      I4 => \gen_reg[0].reg_data_reg[31]\(9),
      I5 => \data[31]_i_3_n_0\,
      O => \data[9]_i_1_n_0\
    );
\data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000A0000000C"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg[94]\(9),
      I1 => \gen_reg[0].reg_data_reg[30]\(9),
      I2 => sel0(2),
      I3 => sel0(3),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data[9]_i_2_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[0]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(0),
      R => '0'
    );
\data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[10]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(10),
      R => '0'
    );
\data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[11]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(11),
      R => '0'
    );
\data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[12]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(12),
      R => '0'
    );
\data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[13]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(13),
      R => '0'
    );
\data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[14]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(14),
      R => '0'
    );
\data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[15]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(15),
      R => '0'
    );
\data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[16]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(16),
      R => '0'
    );
\data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[17]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(17),
      R => '0'
    );
\data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[18]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(18),
      R => '0'
    );
\data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[19]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(19),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[1]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(1),
      R => '0'
    );
\data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[20]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(20),
      R => '0'
    );
\data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[21]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(21),
      R => '0'
    );
\data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[22]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(22),
      R => '0'
    );
\data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[23]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(23),
      R => '0'
    );
\data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[24]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(24),
      R => '0'
    );
\data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[25]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(25),
      R => '0'
    );
\data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[26]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(26),
      R => '0'
    );
\data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[27]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(27),
      R => '0'
    );
\data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[28]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(28),
      R => '0'
    );
\data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[29]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(29),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[2]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(2),
      R => '0'
    );
\data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[30]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(30),
      R => '0'
    );
\data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[31]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(31),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[3]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[4]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[5]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[6]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[7]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(7),
      R => '0'
    );
\data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[8]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(8),
      R => '0'
    );
\data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \^s_axi_ctrl_rvalid\(0),
      D => \data[9]_i_1_n_0\,
      Q => s_axi_ctrl_rdata(9),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_ctrl_arvalid,
      I1 => \^s_axi_ctrl_rvalid\(0),
      I2 => \^s_axi_ctrl_rvalid\(1),
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \^s_axi_ctrl_rvalid\(0),
      I1 => \^s_axi_ctrl_rvalid\(1),
      I2 => s_axi_ctrl_rready,
      O => state(1)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(0),
      Q => \^s_axi_ctrl_rvalid\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(1),
      Q => \^s_axi_ctrl_rvalid\(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_axi_ctrl_write is
  port (
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_reg[2].reg_data_reg[95]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_reg[0].reg_data_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_reg[1].reg_data_reg[63]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_reg[0].reg_data_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    out0 : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_axi_ctrl_write : entity is "axis_switch_v1_1_8_axi_ctrl_write";
end top_xbar_6_axis_switch_v1_1_8_axi_ctrl_write;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_axi_ctrl_write is
  signal \gen_reg[0].reg_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \^gen_reg[0].reg_data_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \^s_axi_ctrl_bvalid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal write_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[10]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[11]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[12]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[13]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[14]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[15]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[16]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[17]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[18]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[19]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[20]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[21]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[22]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[23]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[24]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[25]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[26]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[27]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[28]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[29]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[30]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[31]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[4]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[7]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[8]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \gen_reg[0].reg_data[9]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair58";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  \gen_reg[0].reg_data_reg[31]_0\(31 downto 0) <= \^gen_reg[0].reg_data_reg[31]_0\(31 downto 0);
  s_axi_ctrl_bvalid(1 downto 0) <= \^s_axi_ctrl_bvalid\(1 downto 0);
\addr_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(0),
      Q => write_addr(0),
      R => '0'
    );
\addr_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(1),
      Q => write_addr(1),
      R => '0'
    );
\addr_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(2),
      Q => write_addr(2),
      R => '0'
    );
\addr_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(3),
      Q => write_addr(3),
      R => '0'
    );
\addr_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_awaddr(4),
      Q => p_0_in,
      R => '0'
    );
\data_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(0),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(0),
      R => '0'
    );
\data_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(10),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(10),
      R => '0'
    );
\data_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(11),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(11),
      R => '0'
    );
\data_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(12),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(12),
      R => '0'
    );
\data_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(13),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(13),
      R => '0'
    );
\data_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(14),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(14),
      R => '0'
    );
\data_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(15),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(15),
      R => '0'
    );
\data_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(16),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(16),
      R => '0'
    );
\data_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(17),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(17),
      R => '0'
    );
\data_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(18),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(18),
      R => '0'
    );
\data_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(19),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(19),
      R => '0'
    );
\data_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(1),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(1),
      R => '0'
    );
\data_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(20),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(20),
      R => '0'
    );
\data_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(21),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(21),
      R => '0'
    );
\data_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(22),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(22),
      R => '0'
    );
\data_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(23),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(23),
      R => '0'
    );
\data_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(24),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(24),
      R => '0'
    );
\data_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(25),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(25),
      R => '0'
    );
\data_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(26),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(26),
      R => '0'
    );
\data_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(27),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(27),
      R => '0'
    );
\data_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(28),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(28),
      R => '0'
    );
\data_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(29),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(29),
      R => '0'
    );
\data_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(2),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(2),
      R => '0'
    );
\data_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(30),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(30),
      R => '0'
    );
\data_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(31),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(31),
      R => '0'
    );
\data_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(3),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(3),
      R => '0'
    );
\data_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(4),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(4),
      R => '0'
    );
\data_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(5),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(5),
      R => '0'
    );
\data_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(6),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(6),
      R => '0'
    );
\data_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(7),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(7),
      R => '0'
    );
\data_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(8),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(8),
      R => '0'
    );
\data_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => s_axi_ctrl_wdata(9),
      Q => \^gen_reg[0].reg_data_reg[31]_0\(9),
      R => '0'
    );
\gen_reg[0].reg_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(0),
      I1 => out0,
      O => D(0)
    );
\gen_reg[0].reg_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(10),
      I1 => out0,
      O => D(10)
    );
\gen_reg[0].reg_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(11),
      I1 => out0,
      O => D(11)
    );
\gen_reg[0].reg_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(12),
      I1 => out0,
      O => D(12)
    );
\gen_reg[0].reg_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(13),
      I1 => out0,
      O => D(13)
    );
\gen_reg[0].reg_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(14),
      I1 => out0,
      O => D(14)
    );
\gen_reg[0].reg_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(15),
      I1 => out0,
      O => D(15)
    );
\gen_reg[0].reg_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(16),
      I1 => out0,
      O => D(16)
    );
\gen_reg[0].reg_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(17),
      I1 => out0,
      O => D(17)
    );
\gen_reg[0].reg_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(18),
      I1 => out0,
      O => D(18)
    );
\gen_reg[0].reg_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(19),
      I1 => out0,
      O => D(19)
    );
\gen_reg[0].reg_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(1),
      I1 => out0,
      O => D(1)
    );
\gen_reg[0].reg_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(20),
      I1 => out0,
      O => D(20)
    );
\gen_reg[0].reg_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(21),
      I1 => out0,
      O => D(21)
    );
\gen_reg[0].reg_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(22),
      I1 => out0,
      O => D(22)
    );
\gen_reg[0].reg_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(23),
      I1 => out0,
      O => D(23)
    );
\gen_reg[0].reg_data[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(24),
      I1 => out0,
      O => D(24)
    );
\gen_reg[0].reg_data[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(25),
      I1 => out0,
      O => D(25)
    );
\gen_reg[0].reg_data[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(26),
      I1 => out0,
      O => D(26)
    );
\gen_reg[0].reg_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(27),
      I1 => out0,
      O => D(27)
    );
\gen_reg[0].reg_data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(28),
      I1 => out0,
      O => D(28)
    );
\gen_reg[0].reg_data[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(29),
      I1 => out0,
      O => D(29)
    );
\gen_reg[0].reg_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(2),
      I1 => out0,
      O => D(2)
    );
\gen_reg[0].reg_data[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(30),
      I1 => out0,
      O => D(30)
    );
\gen_reg[0].reg_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00FF10"
    )
        port map (
      I0 => \gen_reg[0].reg_data[31]_i_3_n_0\,
      I1 => p_0_in,
      I2 => \^s_axi_ctrl_bvalid\(0),
      I3 => out0,
      I4 => write_addr(1),
      I5 => write_addr(2),
      O => E(0)
    );
\gen_reg[0].reg_data[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => p_0_in,
      I1 => write_addr(2),
      I2 => \^s_axi_ctrl_bvalid\(0),
      I3 => write_addr(1),
      I4 => write_addr(3),
      I5 => write_addr(0),
      O => \gen_reg[0].reg_data_reg[31]\(0)
    );
\gen_reg[0].reg_data[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(31),
      I1 => out0,
      O => D(31)
    );
\gen_reg[0].reg_data[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => write_addr(0),
      I1 => write_addr(3),
      O => \gen_reg[0].reg_data[31]_i_3_n_0\
    );
\gen_reg[0].reg_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(3),
      I1 => out0,
      O => D(3)
    );
\gen_reg[0].reg_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(4),
      I1 => out0,
      O => D(4)
    );
\gen_reg[0].reg_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(5),
      I1 => out0,
      O => D(5)
    );
\gen_reg[0].reg_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(6),
      I1 => out0,
      O => D(6)
    );
\gen_reg[0].reg_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(7),
      I1 => out0,
      O => D(7)
    );
\gen_reg[0].reg_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(8),
      I1 => out0,
      O => D(8)
    );
\gen_reg[0].reg_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gen_reg[0].reg_data_reg[31]_0\(9),
      I1 => out0,
      O => D(9)
    );
\gen_reg[1].reg_data[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => write_addr(0),
      I1 => write_addr(1),
      I2 => write_addr(3),
      I3 => write_addr(2),
      I4 => p_0_in,
      I5 => \^s_axi_ctrl_bvalid\(0),
      O => \gen_reg[1].reg_data_reg[63]\(0)
    );
\gen_reg[2].reg_data[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => write_addr(0),
      I1 => write_addr(3),
      I2 => write_addr(1),
      I3 => write_addr(2),
      I4 => p_0_in,
      I5 => \^s_axi_ctrl_bvalid\(0),
      O => \gen_reg[2].reg_data_reg[95]\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => \^s_axi_ctrl_bvalid\(0),
      I3 => \^s_axi_ctrl_bvalid\(1),
      I4 => s_axi_ctrl_awvalid,
      I5 => s_axi_ctrl_wvalid,
      O => state(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00030044"
    )
        port map (
      I0 => Q(0),
      I1 => \state_reg_n_0_[2]\,
      I2 => s_axi_ctrl_bready,
      I3 => \^s_axi_ctrl_bvalid\(0),
      I4 => \^s_axi_ctrl_bvalid\(1),
      O => state(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"020C"
    )
        port map (
      I0 => Q(0),
      I1 => \^s_axi_ctrl_bvalid\(0),
      I2 => \^s_axi_ctrl_bvalid\(1),
      I3 => \state_reg_n_0_[2]\,
      O => state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(0),
      Q => \^s_axi_ctrl_bvalid\(0),
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(1),
      Q => \^s_axi_ctrl_bvalid\(1),
      R => SR(0)
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32 is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32 : entity is "axis_switch_v1_1_8_reg_bank_16x32";
end top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32 is
begin
\gen_reg[0].reg_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(10),
      Q => Q(10),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(11),
      Q => Q(11),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(12),
      Q => Q(12),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(13),
      Q => Q(13),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(14),
      Q => Q(14),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(15),
      Q => Q(15),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(16),
      Q => Q(16),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(17),
      Q => Q(17),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(18),
      Q => Q(18),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(19),
      Q => Q(19),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      S => SR(0)
    );
\gen_reg[0].reg_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(20),
      Q => Q(20),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(21),
      Q => Q(21),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(22),
      Q => Q(22),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(23),
      Q => Q(23),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(24),
      Q => Q(24),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(25),
      Q => Q(25),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(26),
      Q => Q(26),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(27),
      Q => Q(27),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(28),
      Q => Q(28),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(29),
      Q => Q(29),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(30),
      Q => Q(30),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(31),
      Q => Q(31),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(8),
      Q => Q(8),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(9),
      Q => Q(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32__parameterized0\ is
  port (
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ : out STD_LOGIC;
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2]\ : out STD_LOGIC;
    \data_reg[30]\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \data_reg[31]\ : out STD_LOGIC;
    \data_reg[30]_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \addr_r_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \addr_r_reg[4]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    \addr_r_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_r_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32__parameterized0\ : entity is "axis_switch_v1_1_8_reg_bank_16x32";
end \top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32__parameterized0\;

architecture STRUCTURE of \top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32__parameterized0\ is
  signal \gen_reg[0].reg_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \gen_reg[1].reg_data_reg\ : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \gen_reg[2].reg_data_reg\ : STD_LOGIC_VECTOR ( 31 to 31 );
begin
\data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFAFFFCFF0A"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[31]\,
      I1 => \gen_reg[2].reg_data_reg\(31),
      I2 => \addr_r_reg[3]\(0),
      I3 => \addr_r_reg[4]\,
      I4 => \addr_r_reg[3]\(1),
      I5 => \gen_reg[1].reg_data_reg\(31),
      O => \data_reg[31]\
    );
\gen_mi_mux_in[0].mi_mux_en_in[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg_n_0_[31]\,
      O => \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\
    );
\gen_mi_mux_in[1].mi_mux_en_in[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_reg[1].reg_data_reg\(31),
      O => \gen_mi_mux_in[1].mi_mux_en_in_reg[1]\
    );
\gen_mi_mux_in[2].mi_mux_en_in[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_reg[2].reg_data_reg\(31),
      O => \gen_mi_mux_in[2].mi_mux_en_in_reg[2]\
    );
\gen_reg[0].reg_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(0),
      Q => \data_reg[30]_0\(0),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(10),
      Q => \data_reg[30]_0\(10),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(11),
      Q => \data_reg[30]_0\(11),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(12),
      Q => \data_reg[30]_0\(12),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(13),
      Q => \data_reg[30]_0\(13),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(14),
      Q => \data_reg[30]_0\(14),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(15),
      Q => \data_reg[30]_0\(15),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(16),
      Q => \data_reg[30]_0\(16),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(17),
      Q => \data_reg[30]_0\(17),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(18),
      Q => \data_reg[30]_0\(18),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(19),
      Q => \data_reg[30]_0\(19),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(1),
      Q => \data_reg[30]_0\(1),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(20),
      Q => \data_reg[30]_0\(20),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(21),
      Q => \data_reg[30]_0\(21),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(22),
      Q => \data_reg[30]_0\(22),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(23),
      Q => \data_reg[30]_0\(23),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(24),
      Q => \data_reg[30]_0\(24),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(25),
      Q => \data_reg[30]_0\(25),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(26),
      Q => \data_reg[30]_0\(26),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(27),
      Q => \data_reg[30]_0\(27),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(28),
      Q => \data_reg[30]_0\(28),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(29),
      Q => \data_reg[30]_0\(29),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(2),
      Q => \data_reg[30]_0\(2),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(30),
      Q => \data_reg[30]_0\(30),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(31),
      Q => \gen_reg[0].reg_data_reg_n_0_[31]\,
      S => SR(0)
    );
\gen_reg[0].reg_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(3),
      Q => \data_reg[30]_0\(3),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(4),
      Q => \data_reg[30]_0\(4),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(5),
      Q => \data_reg[30]_0\(5),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(6),
      Q => \data_reg[30]_0\(6),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(7),
      Q => \data_reg[30]_0\(7),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(8),
      Q => \data_reg[30]_0\(8),
      R => SR(0)
    );
\gen_reg[0].reg_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => E(0),
      D => D(9),
      Q => \data_reg[30]_0\(9),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(8),
      Q => Q(8),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(9),
      Q => Q(9),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(10),
      Q => Q(10),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(11),
      Q => Q(11),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(12),
      Q => Q(12),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(13),
      Q => Q(13),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(14),
      Q => Q(14),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(15),
      Q => Q(15),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(16),
      Q => Q(16),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(17),
      Q => Q(17),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(18),
      Q => Q(18),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(19),
      Q => Q(19),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(20),
      Q => Q(20),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(21),
      Q => Q(21),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(22),
      Q => Q(22),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(23),
      Q => Q(23),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(24),
      Q => Q(24),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(25),
      Q => Q(25),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(26),
      Q => Q(26),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(27),
      Q => Q(27),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(28),
      Q => Q(28),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(29),
      Q => Q(29),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(30),
      Q => Q(30),
      R => SR(0)
    );
\gen_reg[1].reg_data_reg[63]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]\(0),
      D => D(31),
      Q => \gen_reg[1].reg_data_reg\(31),
      S => SR(0)
    );
\gen_reg[2].reg_data_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(0),
      Q => \data_reg[30]\(0),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(1),
      Q => \data_reg[30]\(1),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(2),
      Q => \data_reg[30]\(2),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(3),
      Q => \data_reg[30]\(3),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(4),
      Q => \data_reg[30]\(4),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(5),
      Q => \data_reg[30]\(5),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(6),
      Q => \data_reg[30]\(6),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(7),
      Q => \data_reg[30]\(7),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(8),
      Q => \data_reg[30]\(8),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(9),
      Q => \data_reg[30]\(9),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(10),
      Q => \data_reg[30]\(10),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(11),
      Q => \data_reg[30]\(11),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(12),
      Q => \data_reg[30]\(12),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(13),
      Q => \data_reg[30]\(13),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(14),
      Q => \data_reg[30]\(14),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(15),
      Q => \data_reg[30]\(15),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(16),
      Q => \data_reg[30]\(16),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(17),
      Q => \data_reg[30]\(17),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(18),
      Q => \data_reg[30]\(18),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(19),
      Q => \data_reg[30]\(19),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(20),
      Q => \data_reg[30]\(20),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(21),
      Q => \data_reg[30]\(21),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(22),
      Q => \data_reg[30]\(22),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(23),
      Q => \data_reg[30]\(23),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(24),
      Q => \data_reg[30]\(24),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(25),
      Q => \data_reg[30]\(25),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(26),
      Q => \data_reg[30]\(26),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(27),
      Q => \data_reg[30]\(27),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(28),
      Q => \data_reg[30]\(28),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(29),
      Q => \data_reg[30]\(29),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(30),
      Q => \data_reg[30]\(30),
      R => SR(0)
    );
\gen_reg[2].reg_data_reg[95]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \addr_r_reg[2]_0\(0),
      D => D(31),
      Q => \gen_reg[2].reg_data_reg\(31),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_static_router_config_dp is
  port (
    si_enable : out STD_LOGIC_VECTOR ( 2 downto 0 );
    done : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 26 downto 0 );
    ctrl_req_r_reg : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[31]\ : in STD_LOGIC;
    \gen_reg[1].reg_data_reg[63]\ : in STD_LOGIC;
    \gen_reg[2].reg_data_reg[95]\ : in STD_LOGIC;
    src_rcv : in STD_LOGIC;
    src_send : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_reg[1].reg_data_reg[35]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_reg[2].reg_data_reg[67]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_static_router_config_dp : entity is "axis_switch_v1_1_8_static_router_config_dp";
end top_xbar_6_axis_switch_v1_1_8_static_router_config_dp;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_static_router_config_dp is
  signal \^d\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \^done\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[0].mi_enable_r[0]_i_5_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_mi_enable[2].mi_enable_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_si_enable[0].si_enable_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_si_mux[0].si_mux_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_si_mux[1].si_mux_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_si_mux[2].si_mux_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \mi_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \mi_cntr_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mi_connectivity : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mi_connectivity1_n_0 : STD_LOGIC;
  signal \mi_connectivity[0]_i_1_n_0\ : STD_LOGIC;
  signal \mi_connectivity[2]_i_1_n_0\ : STD_LOGIC;
  signal mi_mux_en_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_32_out : STD_LOGIC;
  signal p_34_out : STD_LOGIC;
  signal p_37_out : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \selectee[0]_i_1_n_0\ : STD_LOGIC;
  signal \selectee[1]_i_1_n_0\ : STD_LOGIC;
  signal \selectee[2]_i_1_n_0\ : STD_LOGIC;
  signal \selectee[3]_i_1_n_0\ : STD_LOGIC;
  signal selector : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal selector_enable0_n_0 : STD_LOGIC;
  signal \^si_enable\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal start_r : STD_LOGIC;
  signal stg1_done : STD_LOGIC;
  signal stg1_done_i_1_n_0 : STD_LOGIC;
  signal stg1_reset : STD_LOGIC;
  signal stg1_reset_i_1_n_0 : STD_LOGIC;
  signal stg2_done_i_1_n_0 : STD_LOGIC;
  signal stg2_reset : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_mi_enable[0].mi_enable_r[0]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \gen_mi_enable[0].mi_enable_r[0]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gen_si_enable[0].si_enable_r[0]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gen_si_enable[0].si_enable_r[0]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \mi_cntr[0]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mi_cntr[1]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \mi_cntr[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mi_cntr[3]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of mi_connectivity1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \mi_connectivity[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \mi_connectivity[2]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of stg1_done_i_1 : label is "soft_lutpair76";
begin
  D(26 downto 0) <= \^d\(26 downto 0);
  done <= \^done\;
  si_enable(2 downto 0) <= \^si_enable\(2 downto 0);
ctrl_req_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => \^done\,
      I1 => \out\(1),
      I2 => src_rcv,
      I3 => \out\(2),
      I4 => src_send,
      O => ctrl_req_r_reg
    );
\gen_mi_enable[0].mi_enable_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000000E"
    )
        port map (
      I0 => \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\,
      I1 => \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\,
      I2 => \gen_mi_enable[0].mi_enable_r[0]_i_4_n_0\,
      I3 => selector(0),
      I4 => selector(1),
      I5 => \^d\(12),
      O => \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0\
    );
\gen_mi_enable[0].mi_enable_r[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(3),
      I3 => \gen_mi_enable[0].mi_enable_r[0]_i_5_n_0\,
      O => \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\
    );
\gen_mi_enable[0].mi_enable_r[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\,
      I1 => p_0_in_0(0),
      I2 => mi_connectivity(0),
      I3 => p_0_in_0(1),
      I4 => \^si_enable\(0),
      O => \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\
    );
\gen_mi_enable[0].mi_enable_r[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => selector(2),
      I1 => selector(3),
      O => \gen_mi_enable[0].mi_enable_r[0]_i_4_n_0\
    );
\gen_mi_enable[0].mi_enable_r[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000222200F00000"
    )
        port map (
      I0 => mi_connectivity(1),
      I1 => \^si_enable\(1),
      I2 => mi_connectivity(2),
      I3 => \^si_enable\(2),
      I4 => p_0_in_0(1),
      I5 => p_0_in_0(0),
      O => \gen_mi_enable[0].mi_enable_r[0]_i_5_n_0\
    );
\gen_mi_enable[0].mi_enable_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_mi_enable[0].mi_enable_r[0]_i_1_n_0\,
      Q => \^d\(12),
      R => stg2_reset
    );
\gen_mi_enable[1].mi_enable_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000E00"
    )
        port map (
      I0 => \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\,
      I1 => \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\,
      I2 => \gen_mi_enable[0].mi_enable_r[0]_i_4_n_0\,
      I3 => selector(0),
      I4 => selector(1),
      I5 => \^d\(13),
      O => \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0\
    );
\gen_mi_enable[1].mi_enable_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_mi_enable[1].mi_enable_r[1]_i_1_n_0\,
      Q => \^d\(13),
      R => stg2_reset
    );
\gen_mi_enable[2].mi_enable_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000E00"
    )
        port map (
      I0 => \gen_mi_enable[0].mi_enable_r[0]_i_2_n_0\,
      I1 => \gen_mi_enable[0].mi_enable_r[0]_i_3_n_0\,
      I2 => \gen_mi_enable[0].mi_enable_r[0]_i_4_n_0\,
      I3 => selector(1),
      I4 => selector(0),
      I5 => \^d\(14),
      O => \gen_mi_enable[2].mi_enable_r[2]_i_1_n_0\
    );
\gen_mi_enable[2].mi_enable_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_mi_enable[2].mi_enable_r[2]_i_1_n_0\,
      Q => \^d\(14),
      R => stg2_reset
    );
\gen_mi_mux_in[0].mi_mux_en_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[31]\,
      Q => mi_mux_en_in(0),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(0),
      Q => \^d\(0),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(1),
      Q => \^d\(1),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(2),
      Q => \^d\(2),
      R => '0'
    );
\gen_mi_mux_in[0].mi_mux_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[0].reg_data_reg[3]\(3),
      Q => \^d\(3),
      R => '0'
    );
\gen_mi_mux_in[1].mi_mux_en_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[1].reg_data_reg[63]\,
      Q => mi_mux_en_in(1),
      R => '0'
    );
\gen_mi_mux_in[1].mi_mux_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[1].reg_data_reg[35]\(0),
      Q => \^d\(4),
      R => '0'
    );
\gen_mi_mux_in[1].mi_mux_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[1].reg_data_reg[35]\(1),
      Q => \^d\(5),
      R => '0'
    );
\gen_mi_mux_in[1].mi_mux_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[1].reg_data_reg[35]\(2),
      Q => \^d\(6),
      R => '0'
    );
\gen_mi_mux_in[1].mi_mux_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[1].reg_data_reg[35]\(3),
      Q => \^d\(7),
      R => '0'
    );
\gen_mi_mux_in[2].mi_mux_en_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[2].reg_data_reg[95]\,
      Q => mi_mux_en_in(2),
      R => '0'
    );
\gen_mi_mux_in[2].mi_mux_in_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[2].reg_data_reg[67]\(2),
      Q => \^d\(10),
      R => '0'
    );
\gen_mi_mux_in[2].mi_mux_in_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[2].reg_data_reg[67]\(3),
      Q => \^d\(11),
      R => '0'
    );
\gen_mi_mux_in[2].mi_mux_in_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[2].reg_data_reg[67]\(0),
      Q => \^d\(8),
      R => '0'
    );
\gen_mi_mux_in[2].mi_mux_in_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => stg1_reset,
      D => \gen_reg[2].reg_data_reg[67]\(1),
      Q => \^d\(9),
      R => '0'
    );
\gen_si_enable[0].si_enable_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\,
      I1 => p_0_in_0(0),
      I2 => mi_connectivity(0),
      I3 => p_0_in_0(1),
      I4 => \^si_enable\(0),
      O => p_37_out
    );
\gen_si_enable[0].si_enable_r[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => p_0_in_0(3),
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(4),
      O => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\
    );
\gen_si_enable[0].si_enable_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => p_37_out,
      Q => \^si_enable\(0),
      R => stg2_reset
    );
\gen_si_enable[1].si_enable_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => mi_connectivity(1),
      I4 => \^si_enable\(1),
      O => p_34_out
    );
\gen_si_enable[1].si_enable_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => p_34_out,
      Q => \^si_enable\(1),
      R => stg2_reset
    );
\gen_si_enable[2].si_enable_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \gen_si_enable[0].si_enable_r[0]_i_2_n_0\,
      I1 => p_0_in_0(0),
      I2 => mi_connectivity(2),
      I3 => p_0_in_0(1),
      I4 => \^si_enable\(2),
      O => p_32_out
    );
\gen_si_enable[2].si_enable_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => p_32_out,
      Q => \^si_enable\(2),
      R => stg2_reset
    );
\gen_si_mux[0].si_mux_r[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^si_enable\(0),
      O => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\
    );
\gen_si_mux[0].si_mux_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(0),
      Q => \^d\(15),
      R => '0'
    );
\gen_si_mux[0].si_mux_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(1),
      Q => \^d\(16),
      R => '0'
    );
\gen_si_mux[0].si_mux_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(2),
      Q => \^d\(17),
      R => '0'
    );
\gen_si_mux[0].si_mux_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[0].si_mux_r[3]_i_1_n_0\,
      D => selector(3),
      Q => \^d\(18),
      R => '0'
    );
\gen_si_mux[1].si_mux_r[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^si_enable\(1),
      O => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\
    );
\gen_si_mux[1].si_mux_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(0),
      Q => \^d\(19),
      R => '0'
    );
\gen_si_mux[1].si_mux_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(1),
      Q => \^d\(20),
      R => '0'
    );
\gen_si_mux[1].si_mux_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(2),
      Q => \^d\(21),
      R => '0'
    );
\gen_si_mux[1].si_mux_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[1].si_mux_r[7]_i_1_n_0\,
      D => selector(3),
      Q => \^d\(22),
      R => '0'
    );
\gen_si_mux[2].si_mux_r[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^si_enable\(2),
      O => \gen_si_mux[2].si_mux_r[11]_i_1_n_0\
    );
\gen_si_mux[2].si_mux_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[2].si_mux_r[11]_i_1_n_0\,
      D => selector(2),
      Q => \^d\(25),
      R => '0'
    );
\gen_si_mux[2].si_mux_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[2].si_mux_r[11]_i_1_n_0\,
      D => selector(3),
      Q => \^d\(26),
      R => '0'
    );
\gen_si_mux[2].si_mux_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[2].si_mux_r[11]_i_1_n_0\,
      D => selector(0),
      Q => \^d\(23),
      R => '0'
    );
\gen_si_mux[2].si_mux_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => \gen_si_mux[2].si_mux_r[11]_i_1_n_0\,
      D => selector(1),
      Q => \^d\(24),
      R => '0'
    );
\mi_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      O => \mi_cntr[0]_i_1_n_0\
    );
\mi_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mi_cntr_reg__0\(1),
      I1 => \mi_cntr_reg__0\(0),
      O => \mi_cntr[1]_i_1_n_0\
    );
\mi_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(1),
      I2 => \mi_cntr_reg__0\(2),
      O => p_0_in(2)
    );
\mi_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(1),
      I2 => \mi_cntr_reg__0\(3),
      I3 => \mi_cntr_reg__0\(2),
      O => sel
    );
\mi_cntr[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \mi_cntr_reg__0\(1),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \mi_cntr_reg__0\(2),
      I3 => \mi_cntr_reg__0\(3),
      O => p_0_in(3)
    );
\mi_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => \mi_cntr[0]_i_1_n_0\,
      Q => \mi_cntr_reg__0\(0),
      R => stg1_reset
    );
\mi_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => \mi_cntr[1]_i_1_n_0\,
      Q => \mi_cntr_reg__0\(1),
      R => stg1_reset
    );
\mi_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => p_0_in(2),
      Q => \mi_cntr_reg__0\(2),
      R => stg1_reset
    );
\mi_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => sel,
      D => p_0_in(3),
      Q => \mi_cntr_reg__0\(3),
      R => stg1_reset
    );
mi_connectivity1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DC3"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(2),
      I2 => \mi_cntr_reg__0\(3),
      I3 => \mi_cntr_reg__0\(1),
      O => mi_connectivity1_n_0
    );
\mi_connectivity[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A97"
    )
        port map (
      I0 => \mi_cntr_reg__0\(3),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \mi_cntr_reg__0\(1),
      I3 => \mi_cntr_reg__0\(2),
      O => \mi_connectivity[0]_i_1_n_0\
    );
\mi_connectivity[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5295"
    )
        port map (
      I0 => \mi_cntr_reg__0\(3),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \mi_cntr_reg__0\(1),
      I3 => \mi_cntr_reg__0\(2),
      O => \mi_connectivity[2]_i_1_n_0\
    );
\mi_connectivity_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_connectivity[0]_i_1_n_0\,
      Q => mi_connectivity(0),
      R => '0'
    );
\mi_connectivity_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_connectivity1_n_0,
      Q => mi_connectivity(1),
      R => '0'
    );
\mi_connectivity_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_connectivity[2]_i_1_n_0\,
      Q => mi_connectivity(2),
      R => '0'
    );
\selectee[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^d\(4),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \^d\(8),
      I3 => \mi_cntr_reg__0\(1),
      I4 => \^d\(0),
      O => \selectee[0]_i_1_n_0\
    );
\selectee[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^d\(5),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \^d\(9),
      I3 => \mi_cntr_reg__0\(1),
      I4 => \^d\(1),
      O => \selectee[1]_i_1_n_0\
    );
\selectee[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^d\(6),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \^d\(10),
      I3 => \mi_cntr_reg__0\(1),
      I4 => \^d\(2),
      O => \selectee[2]_i_1_n_0\
    );
\selectee[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^d\(7),
      I1 => \mi_cntr_reg__0\(0),
      I2 => \^d\(11),
      I3 => \mi_cntr_reg__0\(1),
      I4 => \^d\(3),
      O => \selectee[3]_i_1_n_0\
    );
\selectee_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \selectee[0]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => '0'
    );
\selectee_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \selectee[1]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => '0'
    );
\selectee_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \selectee[2]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => '0'
    );
\selectee_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \selectee[3]_i_1_n_0\,
      Q => p_0_in_0(3),
      R => '0'
    );
selector_enable0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => mi_mux_en_in(2),
      I1 => \mi_cntr_reg__0\(1),
      I2 => mi_mux_en_in(1),
      I3 => \mi_cntr_reg__0\(0),
      I4 => mi_mux_en_in(0),
      O => selector_enable0_n_0
    );
selector_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => selector_enable0_n_0,
      Q => p_0_in_0(4),
      R => '0'
    );
\selector_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(0),
      Q => selector(0),
      R => '0'
    );
\selector_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(1),
      Q => selector(1),
      R => '0'
    );
\selector_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(2),
      Q => selector(2),
      R => '0'
    );
\selector_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \mi_cntr_reg__0\(3),
      Q => selector(3),
      R => '0'
    );
start_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \out\(0),
      Q => start_r,
      R => '0'
    );
stg1_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \mi_cntr_reg__0\(0),
      I1 => \mi_cntr_reg__0\(1),
      I2 => \mi_cntr_reg__0\(3),
      I3 => \mi_cntr_reg__0\(2),
      I4 => stg1_reset,
      O => stg1_done_i_1_n_0
    );
stg1_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg1_done_i_1_n_0,
      Q => stg1_done,
      R => '0'
    );
stg1_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out\(0),
      I1 => start_r,
      O => stg1_reset_i_1_n_0
    );
stg1_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg1_reset_i_1_n_0,
      Q => stg1_reset,
      R => '0'
    );
stg2_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stg1_done,
      I1 => stg1_reset,
      O => stg2_done_i_1_n_0
    );
stg2_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg2_done_i_1_n_0,
      Q => \^done\,
      R => '0'
    );
stg2_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => stg1_reset,
      Q => stg2_reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of top_xbar_6_xpm_cdc_single : entity is 4;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of top_xbar_6_xpm_cdc_single : entity is "true";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of top_xbar_6_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of top_xbar_6_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of top_xbar_6_xpm_cdc_single : entity is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of top_xbar_6_xpm_cdc_single : entity is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of top_xbar_6_xpm_cdc_single : entity is "TRUE";
end top_xbar_6_xpm_cdc_single;

architecture STRUCTURE of top_xbar_6_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : string;
  attribute ASYNC_REG of syncstages_ff : signal is "true";
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute XPM_CDC of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_xbar_6_xpm_cdc_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is 4;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is "true";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \top_xbar_6_xpm_cdc_single__parameterized0\ : entity is "TRUE";
end \top_xbar_6_xpm_cdc_single__parameterized0\;

architecture STRUCTURE of \top_xbar_6_xpm_cdc_single__parameterized0\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : string;
  attribute ASYNC_REG of syncstages_ff : signal is "true";
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute XPM_CDC of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_xbar_6_xpm_cdc_single__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is 4;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is "true";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \top_xbar_6_xpm_cdc_single__parameterized1\ : entity is "TRUE";
end \top_xbar_6_xpm_cdc_single__parameterized1\;

architecture STRUCTURE of \top_xbar_6_xpm_cdc_single__parameterized1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ASYNC_REG : string;
  attribute ASYNC_REG of syncstages_ff : signal is "true";
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute XPM_CDC of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_infrastructure_v1_1_0_clock_synchronizer is
  port (
    p_0_in : out STD_LOGIC;
    src_in : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_infrastructure_v1_1_0_clock_synchronizer : entity is "axis_infrastructure_v1_1_0_clock_synchronizer";
end top_xbar_6_axis_infrastructure_v1_1_0_clock_synchronizer;

architecture STRUCTURE of top_xbar_6_axis_infrastructure_v1_1_0_clock_synchronizer is
  signal soft_reset : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst_xpm_cdc_single : label is 4;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst_xpm_cdc_single : label is "true";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst_xpm_cdc_single : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of inst_xpm_cdc_single : label is 0;
  attribute VERSION : integer;
  attribute VERSION of inst_xpm_cdc_single : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of inst_xpm_cdc_single : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of inst_xpm_cdc_single : label is "TRUE";
begin
areset_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => soft_reset,
      I1 => aresetn,
      O => p_0_in
    );
inst_xpm_cdc_single: entity work.top_xbar_6_xpm_cdc_single
     port map (
      dest_clk => aclk,
      dest_out => soft_reset,
      src_clk => '0',
      src_in => src_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_axi_ctrl_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_mi_mux_in[0].mi_mux_in_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_mi_mux_in[1].mi_mux_in_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_mi_mux_in[2].mi_mux_in_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ : out STD_LOGIC;
    \gen_mi_mux_in[1].mi_mux_en_in_reg[1]\ : out STD_LOGIC;
    \gen_mi_mux_in[2].mi_mux_en_in_reg[2]\ : out STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC;
    out0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_axi_ctrl_top : entity is "axis_switch_v1_1_8_axi_ctrl_top";
end top_xbar_6_axis_switch_v1_1_8_axi_ctrl_top;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_axi_ctrl_top is
  signal data_r : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^gen_mi_mux_in[0].mi_mux_in_reg[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gen_mi_mux_in[1].mi_mux_in_reg[7]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gen_mi_mux_in[2].mi_mux_in_reg[11]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_reg[0].reg_data_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \gen_reg[1].reg_data_reg\ : STD_LOGIC_VECTOR ( 30 downto 4 );
  signal \gen_reg[2].reg_data_reg\ : STD_LOGIC_VECTOR ( 30 downto 4 );
  signal inst_axi_ctrl_read_n_2 : STD_LOGIC;
  signal inst_axi_ctrl_write_n_2 : STD_LOGIC;
  signal inst_reg_bank_1_n_65 : STD_LOGIC;
  signal inst_reg_bank_1_n_66 : STD_LOGIC;
  signal inst_reg_bank_1_n_67 : STD_LOGIC;
  signal inst_reg_bank_1_n_68 : STD_LOGIC;
  signal inst_reg_bank_1_n_69 : STD_LOGIC;
  signal inst_reg_bank_1_n_70 : STD_LOGIC;
  signal inst_reg_bank_1_n_71 : STD_LOGIC;
  signal inst_reg_bank_1_n_72 : STD_LOGIC;
  signal inst_reg_bank_1_n_73 : STD_LOGIC;
  signal inst_reg_bank_1_n_74 : STD_LOGIC;
  signal inst_reg_bank_1_n_75 : STD_LOGIC;
  signal inst_reg_bank_1_n_76 : STD_LOGIC;
  signal inst_reg_bank_1_n_77 : STD_LOGIC;
  signal inst_reg_bank_1_n_78 : STD_LOGIC;
  signal inst_reg_bank_1_n_79 : STD_LOGIC;
  signal inst_reg_bank_1_n_80 : STD_LOGIC;
  signal inst_reg_bank_1_n_81 : STD_LOGIC;
  signal inst_reg_bank_1_n_82 : STD_LOGIC;
  signal inst_reg_bank_1_n_83 : STD_LOGIC;
  signal inst_reg_bank_1_n_84 : STD_LOGIC;
  signal inst_reg_bank_1_n_85 : STD_LOGIC;
  signal inst_reg_bank_1_n_86 : STD_LOGIC;
  signal inst_reg_bank_1_n_87 : STD_LOGIC;
  signal inst_reg_bank_1_n_88 : STD_LOGIC;
  signal inst_reg_bank_1_n_89 : STD_LOGIC;
  signal inst_reg_bank_1_n_90 : STD_LOGIC;
  signal inst_reg_bank_1_n_91 : STD_LOGIC;
  signal inst_reg_bank_1_n_92 : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal rb0_wdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^state_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \gen_mi_mux_in[0].mi_mux_in_reg[3]\(3 downto 0) <= \^gen_mi_mux_in[0].mi_mux_in_reg[3]\(3 downto 0);
  \gen_mi_mux_in[1].mi_mux_in_reg[7]\(3 downto 0) <= \^gen_mi_mux_in[1].mi_mux_in_reg[7]\(3 downto 0);
  \gen_mi_mux_in[2].mi_mux_in_reg[11]\(3 downto 0) <= \^gen_mi_mux_in[2].mi_mux_in_reg[11]\(3 downto 0);
  \state_reg[0]\(0) <= \^state_reg[0]\(0);
inst_axi_ctrl_read: entity work.top_xbar_6_axis_switch_v1_1_8_axi_ctrl_read
     port map (
      Q(1 downto 0) => sel0(1 downto 0),
      SR(0) => SR(0),
      \data_reg[31]_0\ => inst_axi_ctrl_read_n_2,
      \gen_reg[0].reg_data_reg[30]\(30) => inst_reg_bank_1_n_66,
      \gen_reg[0].reg_data_reg[30]\(29) => inst_reg_bank_1_n_67,
      \gen_reg[0].reg_data_reg[30]\(28) => inst_reg_bank_1_n_68,
      \gen_reg[0].reg_data_reg[30]\(27) => inst_reg_bank_1_n_69,
      \gen_reg[0].reg_data_reg[30]\(26) => inst_reg_bank_1_n_70,
      \gen_reg[0].reg_data_reg[30]\(25) => inst_reg_bank_1_n_71,
      \gen_reg[0].reg_data_reg[30]\(24) => inst_reg_bank_1_n_72,
      \gen_reg[0].reg_data_reg[30]\(23) => inst_reg_bank_1_n_73,
      \gen_reg[0].reg_data_reg[30]\(22) => inst_reg_bank_1_n_74,
      \gen_reg[0].reg_data_reg[30]\(21) => inst_reg_bank_1_n_75,
      \gen_reg[0].reg_data_reg[30]\(20) => inst_reg_bank_1_n_76,
      \gen_reg[0].reg_data_reg[30]\(19) => inst_reg_bank_1_n_77,
      \gen_reg[0].reg_data_reg[30]\(18) => inst_reg_bank_1_n_78,
      \gen_reg[0].reg_data_reg[30]\(17) => inst_reg_bank_1_n_79,
      \gen_reg[0].reg_data_reg[30]\(16) => inst_reg_bank_1_n_80,
      \gen_reg[0].reg_data_reg[30]\(15) => inst_reg_bank_1_n_81,
      \gen_reg[0].reg_data_reg[30]\(14) => inst_reg_bank_1_n_82,
      \gen_reg[0].reg_data_reg[30]\(13) => inst_reg_bank_1_n_83,
      \gen_reg[0].reg_data_reg[30]\(12) => inst_reg_bank_1_n_84,
      \gen_reg[0].reg_data_reg[30]\(11) => inst_reg_bank_1_n_85,
      \gen_reg[0].reg_data_reg[30]\(10) => inst_reg_bank_1_n_86,
      \gen_reg[0].reg_data_reg[30]\(9) => inst_reg_bank_1_n_87,
      \gen_reg[0].reg_data_reg[30]\(8) => inst_reg_bank_1_n_88,
      \gen_reg[0].reg_data_reg[30]\(7) => inst_reg_bank_1_n_89,
      \gen_reg[0].reg_data_reg[30]\(6) => inst_reg_bank_1_n_90,
      \gen_reg[0].reg_data_reg[30]\(5) => inst_reg_bank_1_n_91,
      \gen_reg[0].reg_data_reg[30]\(4) => inst_reg_bank_1_n_92,
      \gen_reg[0].reg_data_reg[30]\(3 downto 0) => \^gen_mi_mux_in[0].mi_mux_in_reg[3]\(3 downto 0),
      \gen_reg[0].reg_data_reg[31]\(31 downto 2) => \gen_reg[0].reg_data_reg\(31 downto 2),
      \gen_reg[0].reg_data_reg[31]\(1) => \^state_reg[0]\(0),
      \gen_reg[0].reg_data_reg[31]\(0) => \gen_reg[0].reg_data_reg\(0),
      \gen_reg[0].reg_data_reg[31]_0\ => inst_reg_bank_1_n_65,
      \gen_reg[1].reg_data_reg[62]\(30 downto 4) => \gen_reg[1].reg_data_reg\(30 downto 4),
      \gen_reg[1].reg_data_reg[62]\(3 downto 0) => \^gen_mi_mux_in[1].mi_mux_in_reg[7]\(3 downto 0),
      \gen_reg[2].reg_data_reg[94]\(30 downto 4) => \gen_reg[2].reg_data_reg\(30 downto 4),
      \gen_reg[2].reg_data_reg[94]\(3 downto 0) => \^gen_mi_mux_in[2].mi_mux_in_reg[11]\(3 downto 0),
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(4 downto 0) => s_axi_ctrl_araddr(4 downto 0),
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rvalid(1 downto 0) => Q(1 downto 0)
    );
inst_axi_ctrl_write: entity work.top_xbar_6_axis_switch_v1_1_8_axi_ctrl_write
     port map (
      D(31 downto 0) => rb0_wdata(31 downto 0),
      E(0) => inst_axi_ctrl_write_n_2,
      Q(0) => \^state_reg[0]\(0),
      SR(0) => SR(0),
      \gen_reg[0].reg_data_reg[31]\(0) => p_5_out,
      \gen_reg[0].reg_data_reg[31]_0\(31 downto 0) => data_r(31 downto 0),
      \gen_reg[1].reg_data_reg[63]\(0) => p_3_out,
      \gen_reg[2].reg_data_reg[95]\(0) => p_1_out,
      out0 => out0,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_awaddr(4 downto 0) => s_axi_ctrl_awaddr(4 downto 0),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bvalid(1 downto 0) => s_axi_ctrl_bvalid(1 downto 0),
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid
    );
inst_reg_bank_0: entity work.top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32
     port map (
      D(31 downto 0) => rb0_wdata(31 downto 0),
      E(0) => inst_axi_ctrl_write_n_2,
      Q(31 downto 2) => \gen_reg[0].reg_data_reg\(31 downto 2),
      Q(1) => \^state_reg[0]\(0),
      Q(0) => \gen_reg[0].reg_data_reg\(0),
      SR(0) => SR(0),
      s_axi_ctrl_aclk => s_axi_ctrl_aclk
    );
inst_reg_bank_1: entity work.\top_xbar_6_axis_switch_v1_1_8_reg_bank_16x32__parameterized0\
     port map (
      D(31 downto 0) => data_r(31 downto 0),
      E(0) => p_5_out,
      Q(30 downto 4) => \gen_reg[1].reg_data_reg\(30 downto 4),
      Q(3 downto 0) => \^gen_mi_mux_in[1].mi_mux_in_reg[7]\(3 downto 0),
      SR(0) => SR(0),
      \addr_r_reg[2]\(0) => p_3_out,
      \addr_r_reg[2]_0\(0) => p_1_out,
      \addr_r_reg[3]\(1 downto 0) => sel0(1 downto 0),
      \addr_r_reg[4]\ => inst_axi_ctrl_read_n_2,
      \data_reg[30]\(30 downto 4) => \gen_reg[2].reg_data_reg\(30 downto 4),
      \data_reg[30]\(3 downto 0) => \^gen_mi_mux_in[2].mi_mux_in_reg[11]\(3 downto 0),
      \data_reg[30]_0\(30) => inst_reg_bank_1_n_66,
      \data_reg[30]_0\(29) => inst_reg_bank_1_n_67,
      \data_reg[30]_0\(28) => inst_reg_bank_1_n_68,
      \data_reg[30]_0\(27) => inst_reg_bank_1_n_69,
      \data_reg[30]_0\(26) => inst_reg_bank_1_n_70,
      \data_reg[30]_0\(25) => inst_reg_bank_1_n_71,
      \data_reg[30]_0\(24) => inst_reg_bank_1_n_72,
      \data_reg[30]_0\(23) => inst_reg_bank_1_n_73,
      \data_reg[30]_0\(22) => inst_reg_bank_1_n_74,
      \data_reg[30]_0\(21) => inst_reg_bank_1_n_75,
      \data_reg[30]_0\(20) => inst_reg_bank_1_n_76,
      \data_reg[30]_0\(19) => inst_reg_bank_1_n_77,
      \data_reg[30]_0\(18) => inst_reg_bank_1_n_78,
      \data_reg[30]_0\(17) => inst_reg_bank_1_n_79,
      \data_reg[30]_0\(16) => inst_reg_bank_1_n_80,
      \data_reg[30]_0\(15) => inst_reg_bank_1_n_81,
      \data_reg[30]_0\(14) => inst_reg_bank_1_n_82,
      \data_reg[30]_0\(13) => inst_reg_bank_1_n_83,
      \data_reg[30]_0\(12) => inst_reg_bank_1_n_84,
      \data_reg[30]_0\(11) => inst_reg_bank_1_n_85,
      \data_reg[30]_0\(10) => inst_reg_bank_1_n_86,
      \data_reg[30]_0\(9) => inst_reg_bank_1_n_87,
      \data_reg[30]_0\(8) => inst_reg_bank_1_n_88,
      \data_reg[30]_0\(7) => inst_reg_bank_1_n_89,
      \data_reg[30]_0\(6) => inst_reg_bank_1_n_90,
      \data_reg[30]_0\(5) => inst_reg_bank_1_n_91,
      \data_reg[30]_0\(4) => inst_reg_bank_1_n_92,
      \data_reg[30]_0\(3 downto 0) => \^gen_mi_mux_in[0].mi_mux_in_reg[3]\(3 downto 0),
      \data_reg[31]\ => inst_reg_bank_1_n_65,
      \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ => \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\,
      \gen_mi_mux_in[1].mi_mux_en_in_reg[1]\ => \gen_mi_mux_in[1].mi_mux_en_in_reg[1]\,
      \gen_mi_mux_in[2].mi_mux_en_in_reg[2]\ => \gen_mi_mux_in[2].mi_mux_en_in_reg[2]\,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_axisc_decoder is
  port (
    \gen_AB_reg_slice.sel_rd_reg\ : out STD_LOGIC;
    \gen_AB_reg_slice.sel_rd_reg_0\ : out STD_LOGIC;
    \s_axis_tready[0]\ : out STD_LOGIC;
    mux_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_12_out : out STD_LOGIC_VECTOR ( 36 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_axisc_decoder : entity is "axis_switch_v1_1_8_axisc_decoder";
end top_xbar_6_axis_switch_v1_1_8_axisc_decoder;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_axisc_decoder is
begin
\gen_static_routing.inst_decoder_pipeline\: entity work.top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_3
     port map (
      D(36 downto 0) => D(36 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      aclk => aclk,
      aclken => aclken,
      areset_r => areset_r,
      \gen_AB_reg_slice.payload_a_reg[0]_0\ => mux_tvalid(0),
      \gen_AB_reg_slice.sel_rd_reg_0\ => \gen_AB_reg_slice.sel_rd_reg\,
      \gen_AB_reg_slice.sel_rd_reg_1\ => \gen_AB_reg_slice.sel_rd_reg_0\,
      m_axis_tready(2 downto 0) => m_axis_tready(2 downto 0),
      p_12_out(36 downto 0) => p_12_out(36 downto 0),
      \s_axis_tready[0]\ => \s_axis_tready[0]\,
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_axisc_decoder_0 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axis_tready[1]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\ : in STD_LOGIC;
    p_2_out : in STD_LOGIC_VECTOR ( 36 downto 0 );
    p_12_out : in STD_LOGIC_VECTOR ( 36 downto 0 );
    \gen_AB_reg_slice.state_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\ : in STD_LOGIC;
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\ : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_axisc_decoder_0 : entity is "axis_switch_v1_1_8_axisc_decoder";
end top_xbar_6_axis_switch_v1_1_8_axisc_decoder_0;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_axisc_decoder_0 is
begin
\gen_static_routing.inst_decoder_pipeline\: entity work.top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice_2
     port map (
      D(36 downto 0) => D(36 downto 0),
      Q(12 downto 0) => Q(12 downto 0),
      aclk => aclk,
      aclken => aclken,
      areset_r => areset_r,
      \gen_AB_reg_slice.state_reg[0]_0\(1 downto 0) => \gen_AB_reg_slice.state_reg[0]\(1 downto 0),
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\ => \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ => \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\ => \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\ => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\,
      m_axis_tdata(95 downto 0) => m_axis_tdata(95 downto 0),
      m_axis_tkeep(11 downto 0) => m_axis_tkeep(11 downto 0),
      m_axis_tlast(2 downto 0) => m_axis_tlast(2 downto 0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tvalid(2 downto 0) => m_axis_tvalid(2 downto 0),
      p_12_out(36 downto 0) => p_12_out(36 downto 0),
      p_2_out(36 downto 0) => p_2_out(36 downto 0),
      \s_axis_tready[1]\ => \s_axis_tready[1]\,
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_axisc_decoder_1 is
  port (
    \s_axis_tready[2]\ : out STD_LOGIC;
    \gen_AB_reg_slice.payload_a_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_2_out : out STD_LOGIC_VECTOR ( 36 downto 0 );
    aclk : in STD_LOGIC;
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    areset_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 36 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_axisc_decoder_1 : entity is "axis_switch_v1_1_8_axisc_decoder";
end top_xbar_6_axis_switch_v1_1_8_axisc_decoder_1;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_axisc_decoder_1 is
begin
\gen_static_routing.inst_decoder_pipeline\: entity work.top_xbar_6_axis_register_slice_v1_1_8_axisc_register_slice
     port map (
      D(36 downto 0) => D(36 downto 0),
      Q(10 downto 0) => Q(10 downto 0),
      aclk => aclk,
      aclken => aclken,
      areset_r => areset_r,
      \gen_AB_reg_slice.payload_a_reg[0]_0\ => \gen_AB_reg_slice.payload_a_reg[0]\(0),
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ => \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ => \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\,
      m_axis_tready(0) => m_axis_tready(0),
      p_2_out(36 downto 0) => p_2_out(36 downto 0),
      \s_axis_tready[2]\ => \s_axis_tready[2]\,
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_static_router_config is
  port (
    src_send : out STD_LOGIC;
    src_in : out STD_LOGIC;
    \src_hsdata_ff_reg[29]\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    out0 : out STD_LOGIC;
    s_axi_ctrl_aclk : in STD_LOGIC;
    \gen_reg[0].reg_data_reg[31]\ : in STD_LOGIC;
    \gen_reg[1].reg_data_reg[63]\ : in STD_LOGIC;
    \gen_reg[2].reg_data_reg[95]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    src_rcv : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_reg[1].reg_data_reg[35]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_reg[2].reg_data_reg[67]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_reg[0].reg_data_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_static_router_config : entity is "axis_switch_v1_1_8_static_router_config";
end top_xbar_6_axis_switch_v1_1_8_static_router_config;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_static_router_config is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal ctrl_soft_reset_r0 : STD_LOGIC;
  attribute RTL_KEEP of ctrl_soft_reset_r0 : signal is "yes";
  signal ctrl_soft_reset_r_i_1_n_0 : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \gen_si_mux[0].si_mux_r_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_si_mux[1].si_mux_r_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_si_mux[2].si_mux_r_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inst_start_router_config_dp_n_31 : STD_LOGIC;
  signal mi_enable : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mi_mux : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal si_enable : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^src_send\ : STD_LOGIC;
  signal start : STD_LOGIC;
  attribute RTL_KEEP of start : signal is "yes";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
begin
  src_send <= \^src_send\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444447"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg[1]\(0),
      I1 => ctrl_soft_reset_r0,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => start,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \gen_reg[0].reg_data_reg[1]\(0),
      I1 => ctrl_soft_reset_r0,
      I2 => done,
      I3 => start,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => start,
      I2 => done,
      I3 => ctrl_soft_reset_r0,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111010000000100"
    )
        port map (
      I0 => start,
      I1 => ctrl_soft_reset_r0,
      I2 => src_rcv,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[2]\,
      I5 => done,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => src_rcv,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => ctrl_soft_reset_r0,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => ctrl_soft_reset_r0,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => start,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => out0,
      R => SR(0)
    );
\ctrl_reg_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(0),
      Q => \src_hsdata_ff_reg[29]\(0),
      R => '0'
    );
\ctrl_reg_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(10),
      Q => \src_hsdata_ff_reg[29]\(10),
      R => '0'
    );
\ctrl_reg_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(11),
      Q => \src_hsdata_ff_reg[29]\(11),
      R => '0'
    );
\ctrl_reg_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_enable(0),
      Q => \src_hsdata_ff_reg[29]\(12),
      R => '0'
    );
\ctrl_reg_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_enable(1),
      Q => \src_hsdata_ff_reg[29]\(13),
      R => '0'
    );
\ctrl_reg_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_enable(2),
      Q => \src_hsdata_ff_reg[29]\(14),
      R => '0'
    );
\ctrl_reg_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(0),
      Q => \src_hsdata_ff_reg[29]\(15),
      R => '0'
    );
\ctrl_reg_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(1),
      Q => \src_hsdata_ff_reg[29]\(16),
      R => '0'
    );
\ctrl_reg_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(2),
      Q => \src_hsdata_ff_reg[29]\(17),
      R => '0'
    );
\ctrl_reg_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[0].si_mux_r_reg\(3),
      Q => \src_hsdata_ff_reg[29]\(18),
      R => '0'
    );
\ctrl_reg_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(0),
      Q => \src_hsdata_ff_reg[29]\(19),
      R => '0'
    );
\ctrl_reg_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(1),
      Q => \src_hsdata_ff_reg[29]\(1),
      R => '0'
    );
\ctrl_reg_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(1),
      Q => \src_hsdata_ff_reg[29]\(20),
      R => '0'
    );
\ctrl_reg_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(2),
      Q => \src_hsdata_ff_reg[29]\(21),
      R => '0'
    );
\ctrl_reg_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[1].si_mux_r_reg\(3),
      Q => \src_hsdata_ff_reg[29]\(22),
      R => '0'
    );
\ctrl_reg_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[2].si_mux_r_reg\(0),
      Q => \src_hsdata_ff_reg[29]\(23),
      R => '0'
    );
\ctrl_reg_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[2].si_mux_r_reg\(1),
      Q => \src_hsdata_ff_reg[29]\(24),
      R => '0'
    );
\ctrl_reg_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[2].si_mux_r_reg\(2),
      Q => \src_hsdata_ff_reg[29]\(25),
      R => '0'
    );
\ctrl_reg_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_si_mux[2].si_mux_r_reg\(3),
      Q => \src_hsdata_ff_reg[29]\(26),
      R => '0'
    );
\ctrl_reg_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => si_enable(0),
      Q => \src_hsdata_ff_reg[29]\(27),
      R => '0'
    );
\ctrl_reg_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => si_enable(1),
      Q => \src_hsdata_ff_reg[29]\(28),
      R => '0'
    );
\ctrl_reg_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => si_enable(2),
      Q => \src_hsdata_ff_reg[29]\(29),
      R => '0'
    );
\ctrl_reg_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(2),
      Q => \src_hsdata_ff_reg[29]\(2),
      R => '0'
    );
\ctrl_reg_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(3),
      Q => \src_hsdata_ff_reg[29]\(3),
      R => '0'
    );
\ctrl_reg_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(4),
      Q => \src_hsdata_ff_reg[29]\(4),
      R => '0'
    );
\ctrl_reg_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(5),
      Q => \src_hsdata_ff_reg[29]\(5),
      R => '0'
    );
\ctrl_reg_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(6),
      Q => \src_hsdata_ff_reg[29]\(6),
      R => '0'
    );
\ctrl_reg_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(7),
      Q => \src_hsdata_ff_reg[29]\(7),
      R => '0'
    );
\ctrl_reg_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(8),
      Q => \src_hsdata_ff_reg[29]\(8),
      R => '0'
    );
\ctrl_reg_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => mi_mux(9),
      Q => \src_hsdata_ff_reg[29]\(9),
      R => '0'
    );
ctrl_req_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => inst_start_router_config_dp_n_31,
      Q => \^src_send\,
      R => SR(0)
    );
ctrl_soft_reset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctrl_soft_reset_r0,
      O => ctrl_soft_reset_r_i_1_n_0
    );
ctrl_soft_reset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => ctrl_soft_reset_r_i_1_n_0,
      Q => src_in,
      R => '0'
    );
inst_start_router_config_dp: entity work.top_xbar_6_axis_switch_v1_1_8_static_router_config_dp
     port map (
      D(26 downto 23) => \gen_si_mux[2].si_mux_r_reg\(3 downto 0),
      D(22 downto 19) => \gen_si_mux[1].si_mux_r_reg\(3 downto 0),
      D(18 downto 15) => \gen_si_mux[0].si_mux_r_reg\(3 downto 0),
      D(14 downto 12) => mi_enable(2 downto 0),
      D(11 downto 0) => mi_mux(11 downto 0),
      ctrl_req_r_reg => inst_start_router_config_dp_n_31,
      done => done,
      \gen_reg[0].reg_data_reg[31]\ => \gen_reg[0].reg_data_reg[31]\,
      \gen_reg[0].reg_data_reg[3]\(3 downto 0) => D(3 downto 0),
      \gen_reg[1].reg_data_reg[35]\(3 downto 0) => \gen_reg[1].reg_data_reg[35]\(3 downto 0),
      \gen_reg[1].reg_data_reg[63]\ => \gen_reg[1].reg_data_reg[63]\,
      \gen_reg[2].reg_data_reg[67]\(3 downto 0) => \gen_reg[2].reg_data_reg[67]\(3 downto 0),
      \gen_reg[2].reg_data_reg[95]\ => \gen_reg[2].reg_data_reg[95]\,
      \out\(2) => \FSM_onehot_state_reg_n_0_[3]\,
      \out\(1) => \FSM_onehot_state_reg_n_0_[2]\,
      \out\(0) => start,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      si_enable(2 downto 0) => si_enable(2 downto 0),
      src_rcv => src_rcv,
      src_send => \^src_send\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_xpm_cdc_handshake is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 29 downto 0 );
    src_send : in STD_LOGIC;
    src_rcv : out STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 29 downto 0 );
    dest_req : out STD_LOGIC;
    dest_ack : in STD_LOGIC
  );
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of top_xbar_6_xpm_cdc_handshake : entity is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of top_xbar_6_xpm_cdc_handshake : entity is 4;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of top_xbar_6_xpm_cdc_handshake : entity is "true";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_xpm_cdc_handshake : entity is "xpm_cdc_handshake";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of top_xbar_6_xpm_cdc_handshake : entity is 0;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of top_xbar_6_xpm_cdc_handshake : entity is 4;
  attribute VERSION : integer;
  attribute VERSION of top_xbar_6_xpm_cdc_handshake : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of top_xbar_6_xpm_cdc_handshake : entity is 30;
  attribute XPM_CDC : string;
  attribute XPM_CDC of top_xbar_6_xpm_cdc_handshake : entity is "HANDSHAKE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of top_xbar_6_xpm_cdc_handshake : entity is "TRUE";
end top_xbar_6_xpm_cdc_handshake;

architecture STRUCTURE of top_xbar_6_xpm_cdc_handshake is
  signal dest_hsdata_en : STD_LOGIC;
  attribute DIRECT_ENABLE : boolean;
  attribute DIRECT_ENABLE of dest_hsdata_en : signal is std.standard.true;
  signal dest_hsdata_ff : STD_LOGIC_VECTOR ( 29 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of dest_hsdata_ff : signal is "true";
  attribute XPM_CDC of dest_hsdata_ff : signal is "HANDSHAKE";
  signal dest_req_ff : STD_LOGIC;
  signal dest_req_nxt : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal src_hsdata_ff : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal src_sendd_ff : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \dest_hsdata_ff_reg[0]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[0]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[10]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[10]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[11]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[11]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[12]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[12]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[13]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[13]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[14]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[14]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[15]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[15]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[16]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[16]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[17]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[17]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[18]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[18]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[19]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[19]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[1]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[1]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[20]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[20]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[21]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[21]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[22]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[22]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[23]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[23]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[24]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[24]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[25]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[25]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[26]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[26]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[27]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[27]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[28]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[28]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[29]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[29]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[2]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[2]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[3]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[3]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[4]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[4]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[5]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[5]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[6]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[6]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[7]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[7]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[8]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[8]\ : label is "HANDSHAKE";
  attribute KEEP of \dest_hsdata_ff_reg[9]\ : label is "yes";
  attribute XPM_CDC of \dest_hsdata_ff_reg[9]\ : label is "HANDSHAKE";
  attribute DEST_SYNC_FF of xpm_cdc_single_dest2src_inst : label is 4;
  attribute KEEP_HIERARCHY of xpm_cdc_single_dest2src_inst : label is "true";
  attribute SIM_ASSERT_CHK of xpm_cdc_single_dest2src_inst : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of xpm_cdc_single_dest2src_inst : label is 0;
  attribute VERSION of xpm_cdc_single_dest2src_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_dest2src_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_dest2src_inst : label is "TRUE";
  attribute DEST_SYNC_FF of xpm_cdc_single_src2dest_inst : label is 4;
  attribute KEEP_HIERARCHY of xpm_cdc_single_src2dest_inst : label is "true";
  attribute SIM_ASSERT_CHK of xpm_cdc_single_src2dest_inst : label is 0;
  attribute SRC_INPUT_REG of xpm_cdc_single_src2dest_inst : label is 0;
  attribute VERSION of xpm_cdc_single_src2dest_inst : label is 0;
  attribute XPM_CDC of xpm_cdc_single_src2dest_inst : label is "SINGLE";
  attribute XPM_MODULE of xpm_cdc_single_src2dest_inst : label is "TRUE";
begin
  dest_out(29 downto 0) <= dest_hsdata_ff(29 downto 0);
\dest_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(0),
      Q => dest_hsdata_ff(0),
      R => '0'
    );
\dest_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(10),
      Q => dest_hsdata_ff(10),
      R => '0'
    );
\dest_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(11),
      Q => dest_hsdata_ff(11),
      R => '0'
    );
\dest_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(12),
      Q => dest_hsdata_ff(12),
      R => '0'
    );
\dest_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(13),
      Q => dest_hsdata_ff(13),
      R => '0'
    );
\dest_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(14),
      Q => dest_hsdata_ff(14),
      R => '0'
    );
\dest_hsdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(15),
      Q => dest_hsdata_ff(15),
      R => '0'
    );
\dest_hsdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(16),
      Q => dest_hsdata_ff(16),
      R => '0'
    );
\dest_hsdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(17),
      Q => dest_hsdata_ff(17),
      R => '0'
    );
\dest_hsdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(18),
      Q => dest_hsdata_ff(18),
      R => '0'
    );
\dest_hsdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(19),
      Q => dest_hsdata_ff(19),
      R => '0'
    );
\dest_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(1),
      Q => dest_hsdata_ff(1),
      R => '0'
    );
\dest_hsdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(20),
      Q => dest_hsdata_ff(20),
      R => '0'
    );
\dest_hsdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(21),
      Q => dest_hsdata_ff(21),
      R => '0'
    );
\dest_hsdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(22),
      Q => dest_hsdata_ff(22),
      R => '0'
    );
\dest_hsdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(23),
      Q => dest_hsdata_ff(23),
      R => '0'
    );
\dest_hsdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(24),
      Q => dest_hsdata_ff(24),
      R => '0'
    );
\dest_hsdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(25),
      Q => dest_hsdata_ff(25),
      R => '0'
    );
\dest_hsdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(26),
      Q => dest_hsdata_ff(26),
      R => '0'
    );
\dest_hsdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(27),
      Q => dest_hsdata_ff(27),
      R => '0'
    );
\dest_hsdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(28),
      Q => dest_hsdata_ff(28),
      R => '0'
    );
\dest_hsdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(29),
      Q => dest_hsdata_ff(29),
      R => '0'
    );
\dest_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(2),
      Q => dest_hsdata_ff(2),
      R => '0'
    );
\dest_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(3),
      Q => dest_hsdata_ff(3),
      R => '0'
    );
\dest_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(4),
      Q => dest_hsdata_ff(4),
      R => '0'
    );
\dest_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(5),
      Q => dest_hsdata_ff(5),
      R => '0'
    );
\dest_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(6),
      Q => dest_hsdata_ff(6),
      R => '0'
    );
\dest_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(7),
      Q => dest_hsdata_ff(7),
      R => '0'
    );
\dest_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(8),
      Q => dest_hsdata_ff(8),
      R => '0'
    );
\dest_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => dest_hsdata_en,
      D => src_hsdata_ff(9),
      Q => dest_hsdata_ff(9),
      R => '0'
    );
dest_req_ext_ff_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dest_req_nxt,
      I1 => dest_req_ff,
      O => dest_hsdata_en
    );
dest_req_ext_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_hsdata_en,
      Q => dest_req,
      R => '0'
    );
dest_req_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => dest_req_nxt,
      Q => dest_req_ff,
      R => '0'
    );
\src_hsdata_ff[29]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => src_sendd_ff,
      O => p_0_in
    );
\src_hsdata_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(0),
      Q => src_hsdata_ff(0),
      R => '0'
    );
\src_hsdata_ff_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(10),
      Q => src_hsdata_ff(10),
      R => '0'
    );
\src_hsdata_ff_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(11),
      Q => src_hsdata_ff(11),
      R => '0'
    );
\src_hsdata_ff_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(12),
      Q => src_hsdata_ff(12),
      R => '0'
    );
\src_hsdata_ff_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(13),
      Q => src_hsdata_ff(13),
      R => '0'
    );
\src_hsdata_ff_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(14),
      Q => src_hsdata_ff(14),
      R => '0'
    );
\src_hsdata_ff_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(15),
      Q => src_hsdata_ff(15),
      R => '0'
    );
\src_hsdata_ff_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(16),
      Q => src_hsdata_ff(16),
      R => '0'
    );
\src_hsdata_ff_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(17),
      Q => src_hsdata_ff(17),
      R => '0'
    );
\src_hsdata_ff_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(18),
      Q => src_hsdata_ff(18),
      R => '0'
    );
\src_hsdata_ff_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(19),
      Q => src_hsdata_ff(19),
      R => '0'
    );
\src_hsdata_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(1),
      Q => src_hsdata_ff(1),
      R => '0'
    );
\src_hsdata_ff_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(20),
      Q => src_hsdata_ff(20),
      R => '0'
    );
\src_hsdata_ff_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(21),
      Q => src_hsdata_ff(21),
      R => '0'
    );
\src_hsdata_ff_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(22),
      Q => src_hsdata_ff(22),
      R => '0'
    );
\src_hsdata_ff_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(23),
      Q => src_hsdata_ff(23),
      R => '0'
    );
\src_hsdata_ff_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(24),
      Q => src_hsdata_ff(24),
      R => '0'
    );
\src_hsdata_ff_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(25),
      Q => src_hsdata_ff(25),
      R => '0'
    );
\src_hsdata_ff_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(26),
      Q => src_hsdata_ff(26),
      R => '0'
    );
\src_hsdata_ff_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(27),
      Q => src_hsdata_ff(27),
      R => '0'
    );
\src_hsdata_ff_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(28),
      Q => src_hsdata_ff(28),
      R => '0'
    );
\src_hsdata_ff_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(29),
      Q => src_hsdata_ff(29),
      R => '0'
    );
\src_hsdata_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(2),
      Q => src_hsdata_ff(2),
      R => '0'
    );
\src_hsdata_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(3),
      Q => src_hsdata_ff(3),
      R => '0'
    );
\src_hsdata_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(4),
      Q => src_hsdata_ff(4),
      R => '0'
    );
\src_hsdata_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(5),
      Q => src_hsdata_ff(5),
      R => '0'
    );
\src_hsdata_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(6),
      Q => src_hsdata_ff(6),
      R => '0'
    );
\src_hsdata_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(7),
      Q => src_hsdata_ff(7),
      R => '0'
    );
\src_hsdata_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(8),
      Q => src_hsdata_ff(8),
      R => '0'
    );
\src_hsdata_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => p_0_in,
      D => src_in(9),
      Q => src_hsdata_ff(9),
      R => '0'
    );
src_sendd_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_send,
      Q => src_sendd_ff,
      R => '0'
    );
xpm_cdc_single_dest2src_inst: entity work.\top_xbar_6_xpm_cdc_single__parameterized1\
     port map (
      dest_clk => src_clk,
      dest_out => src_rcv,
      src_clk => dest_clk,
      src_in => dest_req_ff
    );
xpm_cdc_single_src2dest_inst: entity work.\top_xbar_6_xpm_cdc_single__parameterized0\
     port map (
      dest_clk => dest_clk,
      dest_out => dest_req_nxt,
      src_clk => src_clk,
      src_in => src_sendd_ff
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_infrastructure_v1_1_0_cdc_handshake is
  port (
    src_rcv : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 17 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    ctrl_reg : in STD_LOGIC_VECTOR ( 29 downto 0 );
    src_send : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_infrastructure_v1_1_0_cdc_handshake : entity is "axis_infrastructure_v1_1_0_cdc_handshake";
end top_xbar_6_axis_infrastructure_v1_1_0_cdc_handshake;

architecture STRUCTURE of top_xbar_6_axis_infrastructure_v1_1_0_cdc_handshake is
  signal cdc_handshake_data_out : STD_LOGIC_VECTOR ( 26 downto 15 );
  attribute DEST_EXT_HSK : integer;
  attribute DEST_EXT_HSK of inst_xpm_cdc_handshake : label is 0;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of inst_xpm_cdc_handshake : label is 4;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of inst_xpm_cdc_handshake : label is "true";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst_xpm_cdc_handshake : label is 0;
  attribute SRC_SYNC_FF : integer;
  attribute SRC_SYNC_FF of inst_xpm_cdc_handshake : label is 4;
  attribute VERSION : integer;
  attribute VERSION of inst_xpm_cdc_handshake : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of inst_xpm_cdc_handshake : label is 30;
  attribute XPM_CDC : string;
  attribute XPM_CDC of inst_xpm_cdc_handshake : label is "HANDSHAKE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of inst_xpm_cdc_handshake : label is "TRUE";
begin
inst_xpm_cdc_handshake: entity work.top_xbar_6_xpm_cdc_handshake
     port map (
      dest_ack => '0',
      dest_clk => aclk,
      dest_out(29 downto 27) => D(17 downto 15),
      dest_out(26 downto 15) => cdc_handshake_data_out(26 downto 15),
      dest_out(14 downto 0) => D(14 downto 0),
      dest_req => E(0),
      src_clk => s_axi_ctrl_aclk,
      src_in(29 downto 0) => ctrl_reg(29 downto 0),
      src_rcv => src_rcv,
      src_send => src_send
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_static_router is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \src_hsdata_ff_reg[29]\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    src_send : out STD_LOGIC;
    src_in : out STD_LOGIC;
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    src_rcv : in STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_wvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_static_router : entity is "axis_switch_v1_1_8_static_router";
end top_xbar_6_axis_switch_v1_1_8_static_router;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_static_router is
  signal commit_reset : STD_LOGIC;
  signal \gen_reg[1].reg_data_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_reg[2].reg_data_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inst_axi_ctrl_top_n_49 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_5 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_50 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_51 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_6 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_7 : STD_LOGIC;
  signal inst_axi_ctrl_top_n_8 : STD_LOGIC;
  signal reg_commit : STD_LOGIC;
begin
inst_axi_ctrl_top: entity work.top_xbar_6_axis_switch_v1_1_8_axi_ctrl_top
     port map (
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      \gen_mi_mux_in[0].mi_mux_en_in_reg[0]\ => inst_axi_ctrl_top_n_49,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(3) => inst_axi_ctrl_top_n_5,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(2) => inst_axi_ctrl_top_n_6,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(1) => inst_axi_ctrl_top_n_7,
      \gen_mi_mux_in[0].mi_mux_in_reg[3]\(0) => inst_axi_ctrl_top_n_8,
      \gen_mi_mux_in[1].mi_mux_en_in_reg[1]\ => inst_axi_ctrl_top_n_50,
      \gen_mi_mux_in[1].mi_mux_in_reg[7]\(3 downto 0) => \gen_reg[1].reg_data_reg\(3 downto 0),
      \gen_mi_mux_in[2].mi_mux_en_in_reg[2]\ => inst_axi_ctrl_top_n_51,
      \gen_mi_mux_in[2].mi_mux_in_reg[11]\(3 downto 0) => \gen_reg[2].reg_data_reg\(3 downto 0),
      out0 => commit_reset,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(4 downto 0) => s_axi_ctrl_araddr(4 downto 0),
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(4 downto 0) => s_axi_ctrl_awaddr(4 downto 0),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bvalid(1 downto 0) => s_axi_ctrl_bvalid(1 downto 0),
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      \state_reg[0]\(0) => reg_commit
    );
inst_start_router_config: entity work.top_xbar_6_axis_switch_v1_1_8_static_router_config
     port map (
      D(3) => inst_axi_ctrl_top_n_5,
      D(2) => inst_axi_ctrl_top_n_6,
      D(1) => inst_axi_ctrl_top_n_7,
      D(0) => inst_axi_ctrl_top_n_8,
      SR(0) => SR(0),
      \gen_reg[0].reg_data_reg[1]\(0) => reg_commit,
      \gen_reg[0].reg_data_reg[31]\ => inst_axi_ctrl_top_n_49,
      \gen_reg[1].reg_data_reg[35]\(3 downto 0) => \gen_reg[1].reg_data_reg\(3 downto 0),
      \gen_reg[1].reg_data_reg[63]\ => inst_axi_ctrl_top_n_50,
      \gen_reg[2].reg_data_reg[67]\(3 downto 0) => \gen_reg[2].reg_data_reg\(3 downto 0),
      \gen_reg[2].reg_data_reg[95]\ => inst_axi_ctrl_top_n_51,
      out0 => commit_reset,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      \src_hsdata_ff_reg[29]\(29 downto 0) => \src_hsdata_ff_reg[29]\(29 downto 0),
      src_in => src_in,
      src_rcv => src_rcv,
      src_send => src_send
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6_axis_switch_v1_1_8_axis_switch is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_req : out STD_LOGIC_VECTOR ( 8 downto 0 );
    arb_done : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arb_gnt : in STD_LOGIC_VECTOR ( 8 downto 0 );
    arb_sel : in STD_LOGIC_VECTOR ( 5 downto 0 );
    arb_last : out STD_LOGIC_VECTOR ( 8 downto 0 );
    arb_id : out STD_LOGIC_VECTOR ( 8 downto 0 );
    arb_dest : out STD_LOGIC_VECTOR ( 8 downto 0 );
    arb_user : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 27;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "virtex7";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 2;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "3'b010";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "9'b111111111";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "3'b010";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 3;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 3;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 32;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 30;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "axis_switch_v1_1_8_axis_switch";
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "9'b111111111";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is "3'b000";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of top_xbar_6_axis_switch_v1_1_8_axis_switch : entity is 37;
end top_xbar_6_axis_switch_v1_1_8_axis_switch;

architecture STRUCTURE of top_xbar_6_axis_switch_v1_1_8_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal cdc_handshake_data_out : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal cdc_handshake_data_valid : STD_LOGIC;
  signal ctrl_ack : STD_LOGIC;
  signal ctrl_reg : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal ctrl_req : STD_LOGIC;
  signal ctrl_soft_reset : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_0\ : STD_LOGIC;
  signal \gen_decoder[0].axisc_decoder_0_n_1\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9]\ : STD_LOGIC;
  signal \gen_static_router.s_axi_ctrl_areset_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[63]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[95]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal mi_enable : STD_LOGIC;
  signal mux_tvalid : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_12_out : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal p_2_out : STD_LOGIC_VECTOR ( 36 downto 0 );
  signal s_axi_ctrl_areset : STD_LOGIC;
  signal \^s_axi_ctrl_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal si_enable : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  arb_dest(8) <= \<const0>\;
  arb_dest(7) <= \<const0>\;
  arb_dest(6) <= \<const0>\;
  arb_dest(5) <= \<const0>\;
  arb_dest(4) <= \<const0>\;
  arb_dest(3) <= \<const0>\;
  arb_dest(2) <= \<const0>\;
  arb_dest(1) <= \<const0>\;
  arb_dest(0) <= \<const0>\;
  arb_done(2) <= \<const0>\;
  arb_done(1) <= \<const0>\;
  arb_done(0) <= \<const0>\;
  arb_id(8) <= \<const0>\;
  arb_id(7) <= \<const0>\;
  arb_id(6) <= \<const0>\;
  arb_id(5) <= \<const0>\;
  arb_id(4) <= \<const0>\;
  arb_id(3) <= \<const0>\;
  arb_id(2) <= \<const0>\;
  arb_id(1) <= \<const0>\;
  arb_id(0) <= \<const0>\;
  arb_last(8) <= \<const0>\;
  arb_last(7) <= \<const0>\;
  arb_last(6) <= \<const0>\;
  arb_last(5) <= \<const0>\;
  arb_last(4) <= \<const0>\;
  arb_last(3) <= \<const0>\;
  arb_last(2) <= \<const0>\;
  arb_last(1) <= \<const0>\;
  arb_last(0) <= \<const0>\;
  arb_req(8) <= \<const0>\;
  arb_req(7) <= \<const0>\;
  arb_req(6) <= \<const0>\;
  arb_req(5) <= \<const0>\;
  arb_req(4) <= \<const0>\;
  arb_req(3) <= \<const0>\;
  arb_req(2) <= \<const0>\;
  arb_req(1) <= \<const0>\;
  arb_req(0) <= \<const0>\;
  arb_user(8) <= \<const0>\;
  arb_user(7) <= \<const0>\;
  arb_user(6) <= \<const0>\;
  arb_user(5) <= \<const0>\;
  arb_user(4) <= \<const0>\;
  arb_user(3) <= \<const0>\;
  arb_user(2) <= \<const0>\;
  arb_user(1) <= \<const0>\;
  arb_user(0) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  s_axi_ctrl_awready <= \^s_axi_ctrl_wready\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_wready <= \^s_axi_ctrl_wready\;
  s_decode_err(2) <= \<const0>\;
  s_decode_err(1) <= \<const0>\;
  s_decode_err(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
areset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => areset_r,
      R => '0'
    );
\gen_decoder[0].axisc_decoder_0\: entity work.top_xbar_6_axis_switch_v1_1_8_axisc_decoder
     port map (
      D(36) => s_axis_tlast(0),
      D(35 downto 32) => s_axis_tkeep(3 downto 0),
      D(31 downto 0) => s_axis_tdata(31 downto 0),
      Q(15) => si_enable(0),
      Q(14) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14]\,
      Q(13) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13]\,
      Q(12) => mi_enable,
      Q(11) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11]\,
      Q(10) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10]\,
      Q(9) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9]\,
      Q(8) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8]\,
      Q(7 downto 4) => sel0(3 downto 0),
      Q(3) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      Q(2) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      Q(1) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      Q(0) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      aclk => aclk,
      aclken => aclken,
      areset_r => areset_r,
      \gen_AB_reg_slice.sel_rd_reg\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      \gen_AB_reg_slice.sel_rd_reg_0\ => \gen_decoder[0].axisc_decoder_0_n_1\,
      m_axis_tready(2 downto 0) => m_axis_tready(2 downto 0),
      mux_tvalid(0) => mux_tvalid(0),
      p_12_out(36 downto 0) => p_12_out(36 downto 0),
      \s_axis_tready[0]\ => s_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
\gen_decoder[1].axisc_decoder_0\: entity work.top_xbar_6_axis_switch_v1_1_8_axisc_decoder_0
     port map (
      D(36) => s_axis_tlast(1),
      D(35 downto 32) => s_axis_tkeep(7 downto 4),
      D(31 downto 0) => s_axis_tdata(63 downto 32),
      Q(12) => si_enable(1),
      Q(11) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14]\,
      Q(10) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13]\,
      Q(9) => mi_enable,
      Q(8) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10]\,
      Q(7) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9]\,
      Q(6) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8]\,
      Q(5 downto 4) => sel0(1 downto 0),
      Q(3) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      Q(2) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      Q(1) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      Q(0) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      aclk => aclk,
      aclken => aclken,
      areset_r => areset_r,
      \gen_AB_reg_slice.state_reg[0]\(1) => mux_tvalid(2),
      \gen_AB_reg_slice.state_reg[0]\(0) => mux_tvalid(0),
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\ => \m_axis_tdata[95]_INST_0_i_1_n_0\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ => \gen_decoder[0].axisc_decoder_0_n_1\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\ => \m_axis_tdata[31]_INST_0_i_1_n_0\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]_0\ => \m_axis_tdata[63]_INST_0_i_1_n_0\,
      m_axis_tdata(95 downto 0) => m_axis_tdata(95 downto 0),
      m_axis_tkeep(11 downto 0) => m_axis_tkeep(11 downto 0),
      m_axis_tlast(2 downto 0) => m_axis_tlast(2 downto 0),
      m_axis_tready(0) => m_axis_tready(0),
      m_axis_tvalid(2 downto 0) => m_axis_tvalid(2 downto 0),
      p_12_out(36 downto 0) => p_12_out(36 downto 0),
      p_2_out(36 downto 0) => p_2_out(36 downto 0),
      \s_axis_tready[1]\ => s_axis_tready(1),
      s_axis_tvalid(0) => s_axis_tvalid(1)
    );
\gen_decoder[2].axisc_decoder_0\: entity work.top_xbar_6_axis_switch_v1_1_8_axisc_decoder_1
     port map (
      D(36) => s_axis_tlast(2),
      D(35 downto 32) => s_axis_tkeep(11 downto 8),
      D(31 downto 0) => s_axis_tdata(95 downto 64),
      Q(10) => si_enable(2),
      Q(9) => mi_enable,
      Q(8) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10]\,
      Q(7) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9]\,
      Q(6) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8]\,
      Q(5 downto 4) => sel0(1 downto 0),
      Q(3) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      Q(2) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      Q(1) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      Q(0) => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      aclk => aclk,
      aclken => aclken,
      areset_r => areset_r,
      \gen_AB_reg_slice.payload_a_reg[0]\(0) => mux_tvalid(2),
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\ => \gen_decoder[0].axisc_decoder_0_n_1\,
      \gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\ => \gen_decoder[0].axisc_decoder_0_n_0\,
      m_axis_tready(0) => m_axis_tready(0),
      p_2_out(36 downto 0) => p_2_out(36 downto 0),
      \s_axis_tready[2]\ => s_axis_tready(2),
      s_axis_tvalid(0) => s_axis_tvalid(2)
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(0),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[0]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(10),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(11),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(12),
      Q => mi_enable,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(13),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[13]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(14),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[14]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(1),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[1]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(27),
      Q => si_enable(0),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(28),
      Q => si_enable(1),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(29),
      Q => si_enable(2),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(2),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(3),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(4),
      Q => sel0(0),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(5),
      Q => sel0(1),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(6),
      Q => sel0(2),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(7),
      Q => sel0(3),
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(8),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[8]\,
      R => '0'
    );
\gen_static_router.gen_synch.ctrl_reg_synch_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => cdc_handshake_data_valid,
      D => cdc_handshake_data_out(9),
      Q => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[9]\,
      R => '0'
    );
\gen_static_router.gen_synch.inst_cdc_handshake\: entity work.top_xbar_6_axis_infrastructure_v1_1_0_cdc_handshake
     port map (
      D(17 downto 15) => cdc_handshake_data_out(29 downto 27),
      D(14 downto 0) => cdc_handshake_data_out(14 downto 0),
      E(0) => cdc_handshake_data_valid,
      aclk => aclk,
      ctrl_reg(29 downto 0) => ctrl_reg(29 downto 0),
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      src_rcv => ctrl_ack,
      src_send => ctrl_req
    );
\gen_static_router.gen_synch.inst_rst_synch\: entity work.top_xbar_6_axis_infrastructure_v1_1_0_clock_synchronizer
     port map (
      aclk => aclk,
      aresetn => aresetn,
      p_0_in => p_0_in,
      src_in => ctrl_soft_reset
    );
\gen_static_router.inst_static_router\: entity work.top_xbar_6_axis_switch_v1_1_8_static_router
     port map (
      Q(1) => s_axi_ctrl_rvalid,
      Q(0) => s_axi_ctrl_arready,
      SR(0) => s_axi_ctrl_areset,
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(4 downto 0) => s_axi_ctrl_araddr(6 downto 2),
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(4 downto 0) => s_axi_ctrl_awaddr(6 downto 2),
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bvalid(1) => s_axi_ctrl_bvalid,
      s_axi_ctrl_bvalid(0) => \^s_axi_ctrl_wready\,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      \src_hsdata_ff_reg[29]\(29 downto 0) => ctrl_reg(29 downto 0),
      src_in => ctrl_soft_reset,
      src_rcv => ctrl_ack,
      src_send => ctrl_req
    );
\gen_static_router.s_axi_ctrl_areset_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_ctrl_aresetn,
      O => \gen_static_router.s_axi_ctrl_areset_i_1_n_0\
    );
\gen_static_router.s_axi_ctrl_areset_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_ctrl_aclk,
      CE => '1',
      D => \gen_static_router.s_axi_ctrl_areset_i_1_n_0\,
      Q => s_axi_ctrl_areset,
      R => '0'
    );
\m_axis_tdata[31]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[2]\,
      I1 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[3]\,
      O => \m_axis_tdata[31]_INST_0_i_1_n_0\
    );
\m_axis_tdata[63]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      O => \m_axis_tdata[63]_INST_0_i_1_n_0\
    );
\m_axis_tdata[95]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[10]\,
      I1 => \gen_static_router.gen_synch.ctrl_reg_synch_reg_n_0_[11]\,
      O => \m_axis_tdata[95]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_xbar_6 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_ctrl_aclk : in STD_LOGIC;
    s_axi_ctrl_aresetn : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_xbar_6 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_xbar_6 : entity is "top_xbar_6,axis_switch_v1_1_8_axis_switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_xbar_6 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_xbar_6 : entity is "axis_switch_v1_1_8_axis_switch,Vivado 2016.1";
end top_xbar_6;

architecture STRUCTURE of top_xbar_6 is
  signal NLW_inst_arb_dest_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_arb_done_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_arb_id_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_arb_last_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_arb_req_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_arb_user_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_decode_err_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute C_ARB_ALGORITHM : integer;
  attribute C_ARB_ALGORITHM of inst : label is 0;
  attribute C_ARB_ON_MAX_XFERS : integer;
  attribute C_ARB_ON_MAX_XFERS of inst : label is 1;
  attribute C_ARB_ON_NUM_CYCLES : integer;
  attribute C_ARB_ON_NUM_CYCLES of inst : label is 0;
  attribute C_ARB_ON_TLAST : integer;
  attribute C_ARB_ON_TLAST of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 27;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of inst : label is 0;
  attribute C_DECODER_REG : integer;
  attribute C_DECODER_REG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtex7";
  attribute C_INCLUDE_ARBITER : integer;
  attribute C_INCLUDE_ARBITER of inst : label is 1;
  attribute C_LOG_SI_SLOTS : integer;
  attribute C_LOG_SI_SLOTS of inst : label is 2;
  attribute C_M_AXIS_BASETDEST_ARRAY : string;
  attribute C_M_AXIS_BASETDEST_ARRAY of inst : label is "3'b010";
  attribute C_M_AXIS_CONNECTIVITY_ARRAY : string;
  attribute C_M_AXIS_CONNECTIVITY_ARRAY of inst : label is "9'b111111111";
  attribute C_M_AXIS_HIGHTDEST_ARRAY : string;
  attribute C_M_AXIS_HIGHTDEST_ARRAY of inst : label is "3'b010";
  attribute C_NUM_MI_SLOTS : integer;
  attribute C_NUM_MI_SLOTS of inst : label is 3;
  attribute C_NUM_SI_SLOTS : integer;
  attribute C_NUM_SI_SLOTS of inst : label is 3;
  attribute C_OUTPUT_REG : integer;
  attribute C_OUTPUT_REG of inst : label is 0;
  attribute C_ROUTING_MODE : integer;
  attribute C_ROUTING_MODE of inst : label is 1;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 7;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_CTRL_REG_WIDTH : integer;
  attribute LP_CTRL_REG_WIDTH of inst : label is 30;
  attribute LP_MERGEDOWN_MUX : integer;
  attribute LP_MERGEDOWN_MUX of inst : label is 0;
  attribute LP_NUM_SYNCHRONIZER_STAGES : integer;
  attribute LP_NUM_SYNCHRONIZER_STAGES of inst : label is 4;
  attribute P_DECODER_CONNECTIVITY_ARRAY : string;
  attribute P_DECODER_CONNECTIVITY_ARRAY of inst : label is "9'b111111111";
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY : string;
  attribute P_SINGLE_SLAVE_CONNECTIVITY_ARRAY of inst : label is "3'b000";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 37;
begin
inst: entity work.top_xbar_6_axis_switch_v1_1_8_axis_switch
     port map (
      aclk => aclk,
      aclken => '1',
      arb_dest(8 downto 0) => NLW_inst_arb_dest_UNCONNECTED(8 downto 0),
      arb_done(2 downto 0) => NLW_inst_arb_done_UNCONNECTED(2 downto 0),
      arb_gnt(8 downto 0) => B"000000000",
      arb_id(8 downto 0) => NLW_inst_arb_id_UNCONNECTED(8 downto 0),
      arb_last(8 downto 0) => NLW_inst_arb_last_UNCONNECTED(8 downto 0),
      arb_req(8 downto 0) => NLW_inst_arb_req_UNCONNECTED(8 downto 0),
      arb_sel(5 downto 0) => B"000000",
      arb_user(8 downto 0) => NLW_inst_arb_user_UNCONNECTED(8 downto 0),
      aresetn => aresetn,
      m_axis_tdata(95 downto 0) => m_axis_tdata(95 downto 0),
      m_axis_tdest(2 downto 0) => NLW_inst_m_axis_tdest_UNCONNECTED(2 downto 0),
      m_axis_tid(2 downto 0) => NLW_inst_m_axis_tid_UNCONNECTED(2 downto 0),
      m_axis_tkeep(11 downto 0) => m_axis_tkeep(11 downto 0),
      m_axis_tlast(2 downto 0) => m_axis_tlast(2 downto 0),
      m_axis_tready(2 downto 0) => m_axis_tready(2 downto 0),
      m_axis_tstrb(11 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(11 downto 0),
      m_axis_tuser(2 downto 0) => NLW_inst_m_axis_tuser_UNCONNECTED(2 downto 0),
      m_axis_tvalid(2 downto 0) => m_axis_tvalid(2 downto 0),
      s_axi_ctrl_aclk => s_axi_ctrl_aclk,
      s_axi_ctrl_araddr(6 downto 0) => s_axi_ctrl_araddr(6 downto 0),
      s_axi_ctrl_aresetn => s_axi_ctrl_aresetn,
      s_axi_ctrl_arready => s_axi_ctrl_arready,
      s_axi_ctrl_arvalid => s_axi_ctrl_arvalid,
      s_axi_ctrl_awaddr(6 downto 0) => s_axi_ctrl_awaddr(6 downto 0),
      s_axi_ctrl_awready => s_axi_ctrl_awready,
      s_axi_ctrl_awvalid => s_axi_ctrl_awvalid,
      s_axi_ctrl_bready => s_axi_ctrl_bready,
      s_axi_ctrl_bresp(1 downto 0) => s_axi_ctrl_bresp(1 downto 0),
      s_axi_ctrl_bvalid => s_axi_ctrl_bvalid,
      s_axi_ctrl_rdata(31 downto 0) => s_axi_ctrl_rdata(31 downto 0),
      s_axi_ctrl_rready => s_axi_ctrl_rready,
      s_axi_ctrl_rresp(1 downto 0) => s_axi_ctrl_rresp(1 downto 0),
      s_axi_ctrl_rvalid => s_axi_ctrl_rvalid,
      s_axi_ctrl_wdata(31 downto 0) => s_axi_ctrl_wdata(31 downto 0),
      s_axi_ctrl_wready => s_axi_ctrl_wready,
      s_axi_ctrl_wvalid => s_axi_ctrl_wvalid,
      s_axis_tdata(95 downto 0) => s_axis_tdata(95 downto 0),
      s_axis_tdest(2 downto 0) => B"000",
      s_axis_tid(2 downto 0) => B"000",
      s_axis_tkeep(11 downto 0) => s_axis_tkeep(11 downto 0),
      s_axis_tlast(2 downto 0) => s_axis_tlast(2 downto 0),
      s_axis_tready(2 downto 0) => s_axis_tready(2 downto 0),
      s_axis_tstrb(11 downto 0) => B"111111111111",
      s_axis_tuser(2 downto 0) => B"000",
      s_axis_tvalid(2 downto 0) => s_axis_tvalid(2 downto 0),
      s_decode_err(2 downto 0) => NLW_inst_s_decode_err_UNCONNECTED(2 downto 0),
      s_req_suppress(2 downto 0) => B"000"
    );
end STRUCTURE;
