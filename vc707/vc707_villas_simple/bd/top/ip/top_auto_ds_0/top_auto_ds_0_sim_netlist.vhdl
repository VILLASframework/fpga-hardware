-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Sun Jun 26 14:14:34 2016
-- Host        : E265 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top top_auto_ds_0 -prefix top_auto_ds_0_
--               top_auto_ds_0_sim_netlist.vhdl
-- Design      : top_auto_ds_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_dwidth_converter_v2_1_8_b_downsizer\ is
  port (
    rd_en : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    empty : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end \top_auto_ds_0_axi_dwidth_converter_v2_1_8_b_downsizer\;

architecture STRUCTURE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_b_downsizer\ is
  signal S_AXI_BRESP_ACC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_mi_word : STD_LOGIC;
  signal last_word : STD_LOGIC;
  signal next_repeat_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \repeat_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \repeat_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \repeat_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_bvalid_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_bvalid_INST_0_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fifo_gen_inst_i_7 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of first_mi_word_i_2 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of m_axi_bready_INST_0 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \repeat_cnt[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \repeat_cnt[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \repeat_cnt[2]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \repeat_cnt[3]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of s_axi_bvalid_INST_0 : label is "soft_lutpair60";
begin
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
\S_AXI_BRESP_ACC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => \^s_axi_bresp\(0),
      Q => S_AXI_BRESP_ACC(0),
      R => SR(0)
    );
\S_AXI_BRESP_ACC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => \^s_axi_bresp\(1),
      Q => S_AXI_BRESP_ACC(1),
      R => SR(0)
    );
fifo_gen_inst_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => s_axi_bvalid_INST_0_i_1_n_0,
      I1 => m_axi_bvalid,
      I2 => s_axi_bready,
      I3 => empty,
      O => rd_en
    );
first_mi_word_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => s_axi_bvalid_INST_0_i_1_n_0,
      I2 => s_axi_bready,
      O => p_1_in
    );
first_mi_word_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_bvalid_INST_0_i_1_n_0,
      O => last_word
    );
first_mi_word_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => p_1_in,
      D => last_word,
      Q => first_mi_word,
      S => SR(0)
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_bvalid_INST_0_i_1_n_0,
      I1 => s_axi_bready,
      O => m_axi_bready
    );
\repeat_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(0),
      I1 => first_mi_word,
      I2 => dout(0),
      O => next_repeat_cnt(0)
    );
\repeat_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(0),
      I1 => dout(0),
      I2 => \repeat_cnt_reg__0\(1),
      I3 => first_mi_word,
      I4 => dout(1),
      O => \repeat_cnt[1]_i_1_n_0\
    );
\repeat_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFC030505FC03"
    )
        port map (
      I0 => dout(1),
      I1 => \repeat_cnt_reg__0\(1),
      I2 => \repeat_cnt[2]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(2),
      I4 => first_mi_word,
      I5 => dout(2),
      O => next_repeat_cnt(2)
    );
\repeat_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(0),
      I1 => first_mi_word,
      I2 => \repeat_cnt_reg__0\(0),
      O => \repeat_cnt[2]_i_2_n_0\
    );
\repeat_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(2),
      I1 => \repeat_cnt_reg__0\(2),
      I2 => \repeat_cnt[3]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(3),
      I4 => first_mi_word,
      I5 => dout(3),
      O => next_repeat_cnt(3)
    );
\repeat_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(0),
      I1 => dout(0),
      I2 => \repeat_cnt_reg__0\(1),
      I3 => first_mi_word,
      I4 => dout(1),
      O => \repeat_cnt[3]_i_2_n_0\
    );
\repeat_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(3),
      I1 => \repeat_cnt_reg__0\(3),
      I2 => \repeat_cnt[4]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(4),
      I4 => first_mi_word,
      I5 => dout(4),
      O => next_repeat_cnt(4)
    );
\repeat_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => dout(1),
      I1 => \repeat_cnt_reg__0\(1),
      I2 => \repeat_cnt[2]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(2),
      I4 => first_mi_word,
      I5 => dout(2),
      O => \repeat_cnt[4]_i_2_n_0\
    );
\repeat_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(4),
      I1 => \repeat_cnt_reg__0\(4),
      I2 => \repeat_cnt[5]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(5),
      I4 => first_mi_word,
      I5 => dout(5),
      O => next_repeat_cnt(5)
    );
\repeat_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(2),
      I1 => \repeat_cnt_reg__0\(2),
      I2 => \repeat_cnt[3]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(3),
      I4 => first_mi_word,
      I5 => dout(3),
      O => \repeat_cnt[5]_i_2_n_0\
    );
\repeat_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(5),
      I1 => \repeat_cnt_reg__0\(5),
      I2 => \repeat_cnt[6]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(6),
      I4 => first_mi_word,
      I5 => dout(6),
      O => next_repeat_cnt(6)
    );
\repeat_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(3),
      I1 => \repeat_cnt_reg__0\(3),
      I2 => \repeat_cnt[4]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(4),
      I4 => first_mi_word,
      I5 => dout(4),
      O => \repeat_cnt[6]_i_2_n_0\
    );
\repeat_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(6),
      I1 => \repeat_cnt_reg__0\(6),
      I2 => \repeat_cnt[7]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(7),
      I4 => first_mi_word,
      I5 => dout(7),
      O => next_repeat_cnt(7)
    );
\repeat_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(4),
      I1 => \repeat_cnt_reg__0\(4),
      I2 => \repeat_cnt[5]_i_2_n_0\,
      I3 => \repeat_cnt_reg__0\(5),
      I4 => first_mi_word,
      I5 => dout(5),
      O => \repeat_cnt[7]_i_2_n_0\
    );
\repeat_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(0),
      Q => \repeat_cnt_reg__0\(0),
      R => SR(0)
    );
\repeat_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => \repeat_cnt[1]_i_1_n_0\,
      Q => \repeat_cnt_reg__0\(1),
      R => SR(0)
    );
\repeat_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(2),
      Q => \repeat_cnt_reg__0\(2),
      R => SR(0)
    );
\repeat_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(3),
      Q => \repeat_cnt_reg__0\(3),
      R => SR(0)
    );
\repeat_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(4),
      Q => \repeat_cnt_reg__0\(4),
      R => SR(0)
    );
\repeat_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(5),
      Q => \repeat_cnt_reg__0\(5),
      R => SR(0)
    );
\repeat_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(6),
      Q => \repeat_cnt_reg__0\(6),
      R => SR(0)
    );
\repeat_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => p_1_in,
      D => next_repeat_cnt(7),
      Q => \repeat_cnt_reg__0\(7),
      R => SR(0)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF00FB40FF40"
    )
        port map (
      I0 => first_mi_word,
      I1 => dout(8),
      I2 => S_AXI_BRESP_ACC(0),
      I3 => m_axi_bresp(0),
      I4 => S_AXI_BRESP_ACC(1),
      I5 => m_axi_bresp(1),
      O => \^s_axi_bresp\(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => first_mi_word,
      I1 => dout(8),
      I2 => S_AXI_BRESP_ACC(1),
      I3 => m_axi_bresp(1),
      O => \^s_axi_bresp\(1)
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => s_axi_bvalid_INST_0_i_1_n_0,
      O => s_axi_bvalid
    );
s_axi_bvalid_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => dout(8),
      I1 => s_axi_bvalid_INST_0_i_2_n_0,
      I2 => \repeat_cnt_reg__0\(1),
      I3 => \repeat_cnt_reg__0\(7),
      I4 => \repeat_cnt_reg__0\(5),
      O => s_axi_bvalid_INST_0_i_1_n_0
    );
s_axi_bvalid_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \repeat_cnt_reg__0\(2),
      I1 => first_mi_word,
      I2 => \repeat_cnt_reg__0\(6),
      I3 => \repeat_cnt_reg__0\(4),
      I4 => \repeat_cnt_reg__0\(0),
      I5 => \repeat_cnt_reg__0\(3),
      O => s_axi_bvalid_INST_0_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_dwidth_converter_v2_1_8_r_downsizer\ is
  port (
    first_word : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : out STD_LOGIC;
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \S_AXI_RRESP_ACC_reg[0]_0\ : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    \current_word_1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata[63]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata[95]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \s_axi_rdata[127]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rlast : in STD_LOGIC;
    CLK : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \goreg_dm.dout_i_reg[0]\ : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC;
    empty_fwft_i_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \goreg_dm.dout_i_reg[10]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[10]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \goreg_dm.dout_i_reg[10]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[10]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[10]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_axi_dwidth_converter_v2_1_8_r_downsizer\;

architecture STRUCTURE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_r_downsizer\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_RRESP_ACC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^first_word\ : STD_LOGIC;
  signal \^gpregsm1.curr_fwft_state_reg[0]\ : STD_LOGIC;
  signal \length_counter_1[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \length_counter_1[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \length_counter_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \length_counter_1[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \length_counter_1[6]_i_2__0_n_0\ : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal m_axi_rready_INST_0_i_3_n_0 : STD_LOGIC;
  signal \next_length_counter__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_rvalid_INST_0_i_10_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_11_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_12_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_13_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \length_counter_1[0]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \length_counter_1[1]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \length_counter_1[2]_i_2__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \length_counter_1[3]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of m_axi_rready_INST_0_i_3 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0_i_10 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0_i_11 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0_i_13 : label is "soft_lutpair56";
begin
  Q(0) <= \^q\(0);
  first_word <= \^first_word\;
  \gpregsm1.curr_fwft_state_reg[0]\ <= \^gpregsm1.curr_fwft_state_reg[0]\;
  s_axi_rresp(1 downto 0) <= \^s_axi_rresp\(1 downto 0);
\S_AXI_RRESP_ACC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \^s_axi_rresp\(0),
      Q => S_AXI_RRESP_ACC(0),
      R => SR(0)
    );
\S_AXI_RRESP_ACC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \^s_axi_rresp\(1),
      Q => S_AXI_RRESP_ACC(1),
      R => SR(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(0),
      Q => \s_axi_rdata[31]\(0),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(10),
      Q => \s_axi_rdata[31]\(10),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(11),
      Q => \s_axi_rdata[31]\(11),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(12),
      Q => \s_axi_rdata[31]\(12),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(13),
      Q => \s_axi_rdata[31]\(13),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(14),
      Q => \s_axi_rdata[31]\(14),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(15),
      Q => \s_axi_rdata[31]\(15),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(16),
      Q => \s_axi_rdata[31]\(16),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(17),
      Q => \s_axi_rdata[31]\(17),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(18),
      Q => \s_axi_rdata[31]\(18),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(19),
      Q => \s_axi_rdata[31]\(19),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(1),
      Q => \s_axi_rdata[31]\(1),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(20),
      Q => \s_axi_rdata[31]\(20),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(21),
      Q => \s_axi_rdata[31]\(21),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(22),
      Q => \s_axi_rdata[31]\(22),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(23),
      Q => \s_axi_rdata[31]\(23),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(24),
      Q => \s_axi_rdata[31]\(24),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(25),
      Q => \s_axi_rdata[31]\(25),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(26),
      Q => \s_axi_rdata[31]\(26),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(27),
      Q => \s_axi_rdata[31]\(27),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(28),
      Q => \s_axi_rdata[31]\(28),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(29),
      Q => \s_axi_rdata[31]\(29),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(2),
      Q => \s_axi_rdata[31]\(2),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(30),
      Q => \s_axi_rdata[31]\(30),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(31),
      Q => \s_axi_rdata[31]\(31),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(3),
      Q => \s_axi_rdata[31]\(3),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(4),
      Q => \s_axi_rdata[31]\(4),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(5),
      Q => \s_axi_rdata[31]\(5),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(6),
      Q => \s_axi_rdata[31]\(6),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(7),
      Q => \s_axi_rdata[31]\(7),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(8),
      Q => \s_axi_rdata[31]\(8),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_0\(0),
      D => m_axi_rdata(9),
      Q => \s_axi_rdata[31]\(9),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(0),
      Q => \s_axi_rdata[63]\(0),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(1),
      Q => \s_axi_rdata[63]\(1),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(2),
      Q => \s_axi_rdata[63]\(2),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(3),
      Q => \s_axi_rdata[63]\(3),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(4),
      Q => \s_axi_rdata[63]\(4),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(5),
      Q => \s_axi_rdata[63]\(5),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(6),
      Q => \s_axi_rdata[63]\(6),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(7),
      Q => \s_axi_rdata[63]\(7),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(8),
      Q => \s_axi_rdata[63]\(8),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(9),
      Q => \s_axi_rdata[63]\(9),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(10),
      Q => \s_axi_rdata[63]\(10),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(11),
      Q => \s_axi_rdata[63]\(11),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(12),
      Q => \s_axi_rdata[63]\(12),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(13),
      Q => \s_axi_rdata[63]\(13),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(14),
      Q => \s_axi_rdata[63]\(14),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(15),
      Q => \s_axi_rdata[63]\(15),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(16),
      Q => \s_axi_rdata[63]\(16),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(17),
      Q => \s_axi_rdata[63]\(17),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(18),
      Q => \s_axi_rdata[63]\(18),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(19),
      Q => \s_axi_rdata[63]\(19),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(20),
      Q => \s_axi_rdata[63]\(20),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(21),
      Q => \s_axi_rdata[63]\(21),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(22),
      Q => \s_axi_rdata[63]\(22),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(23),
      Q => \s_axi_rdata[63]\(23),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(24),
      Q => \s_axi_rdata[63]\(24),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(25),
      Q => \s_axi_rdata[63]\(25),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(26),
      Q => \s_axi_rdata[63]\(26),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(27),
      Q => \s_axi_rdata[63]\(27),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(28),
      Q => \s_axi_rdata[63]\(28),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(29),
      Q => \s_axi_rdata[63]\(29),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(30),
      Q => \s_axi_rdata[63]\(30),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_1\(0),
      D => m_axi_rdata(31),
      Q => \s_axi_rdata[63]\(31),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(0),
      Q => \s_axi_rdata[95]\(0),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(1),
      Q => \s_axi_rdata[95]\(1),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(2),
      Q => \s_axi_rdata[95]\(2),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(3),
      Q => \s_axi_rdata[95]\(3),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(4),
      Q => \s_axi_rdata[95]\(4),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(5),
      Q => \s_axi_rdata[95]\(5),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(6),
      Q => \s_axi_rdata[95]\(6),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(7),
      Q => \s_axi_rdata[95]\(7),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(8),
      Q => \s_axi_rdata[95]\(8),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(9),
      Q => \s_axi_rdata[95]\(9),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(10),
      Q => \s_axi_rdata[95]\(10),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(11),
      Q => \s_axi_rdata[95]\(11),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(12),
      Q => \s_axi_rdata[95]\(12),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(13),
      Q => \s_axi_rdata[95]\(13),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(14),
      Q => \s_axi_rdata[95]\(14),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(15),
      Q => \s_axi_rdata[95]\(15),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(16),
      Q => \s_axi_rdata[95]\(16),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(17),
      Q => \s_axi_rdata[95]\(17),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(18),
      Q => \s_axi_rdata[95]\(18),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(19),
      Q => \s_axi_rdata[95]\(19),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(20),
      Q => \s_axi_rdata[95]\(20),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(21),
      Q => \s_axi_rdata[95]\(21),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(22),
      Q => \s_axi_rdata[95]\(22),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(23),
      Q => \s_axi_rdata[95]\(23),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(24),
      Q => \s_axi_rdata[95]\(24),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(25),
      Q => \s_axi_rdata[95]\(25),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(26),
      Q => \s_axi_rdata[95]\(26),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(27),
      Q => \s_axi_rdata[95]\(27),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(28),
      Q => \s_axi_rdata[95]\(28),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(29),
      Q => \s_axi_rdata[95]\(29),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(30),
      Q => \s_axi_rdata[95]\(30),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_2\(0),
      D => m_axi_rdata(31),
      Q => \s_axi_rdata[95]\(31),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(4),
      Q => \s_axi_rdata[127]\(4),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(5),
      Q => \s_axi_rdata[127]\(5),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(6),
      Q => \s_axi_rdata[127]\(6),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(7),
      Q => \s_axi_rdata[127]\(7),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(8),
      Q => \s_axi_rdata[127]\(8),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(9),
      Q => \s_axi_rdata[127]\(9),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(10),
      Q => \s_axi_rdata[127]\(10),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(11),
      Q => \s_axi_rdata[127]\(11),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(12),
      Q => \s_axi_rdata[127]\(12),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(13),
      Q => \s_axi_rdata[127]\(13),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(14),
      Q => \s_axi_rdata[127]\(14),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(15),
      Q => \s_axi_rdata[127]\(15),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(16),
      Q => \s_axi_rdata[127]\(16),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(17),
      Q => \s_axi_rdata[127]\(17),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(18),
      Q => \s_axi_rdata[127]\(18),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(19),
      Q => \s_axi_rdata[127]\(19),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(20),
      Q => \s_axi_rdata[127]\(20),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(21),
      Q => \s_axi_rdata[127]\(21),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(22),
      Q => \s_axi_rdata[127]\(22),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(23),
      Q => \s_axi_rdata[127]\(23),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(24),
      Q => \s_axi_rdata[127]\(24),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(25),
      Q => \s_axi_rdata[127]\(25),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(26),
      Q => \s_axi_rdata[127]\(26),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(27),
      Q => \s_axi_rdata[127]\(27),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(28),
      Q => \s_axi_rdata[127]\(28),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(29),
      Q => \s_axi_rdata[127]\(29),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(30),
      Q => \s_axi_rdata[127]\(30),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(31),
      Q => \s_axi_rdata[127]\(31),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(0),
      Q => \s_axi_rdata[127]\(0),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(1),
      Q => \s_axi_rdata[127]\(1),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(2),
      Q => \s_axi_rdata[127]\(2),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \goreg_dm.dout_i_reg[10]_3\(0),
      D => m_axi_rdata(3),
      Q => \s_axi_rdata[127]\(3),
      R => \goreg_dm.dout_i_reg[10]\(0)
    );
\current_word_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \current_word_1_reg[3]_0\(0),
      R => SR(0)
    );
\current_word_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \current_word_1_reg[3]_0\(1),
      R => SR(0)
    );
\current_word_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \current_word_1_reg[3]_0\(2),
      R => SR(0)
    );
\current_word_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \current_word_1_reg[3]_0\(3),
      R => SR(0)
    );
\fifo_gen_inst_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^gpregsm1.curr_fwft_state_reg[0]\,
      I2 => empty_fwft_i_reg,
      O => rd_en
    );
first_mi_word_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => E(0),
      D => m_axi_rlast,
      Q => \^first_word\,
      S => SR(0)
    );
\length_counter_1[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => \^first_word\,
      I2 => dout(0),
      O => \next_length_counter__0\(0)
    );
\length_counter_1[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => dout(0),
      I2 => length_counter_1_reg(1),
      I3 => \^first_word\,
      I4 => dout(1),
      O => \length_counter_1[1]_i_1__0_n_0\
    );
\length_counter_1[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFC030505FC03"
    )
        port map (
      I0 => dout(1),
      I1 => length_counter_1_reg(1),
      I2 => \length_counter_1[2]_i_2__0_n_0\,
      I3 => length_counter_1_reg(2),
      I4 => \^first_word\,
      I5 => dout(2),
      O => \next_length_counter__0\(2)
    );
\length_counter_1[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(0),
      I1 => \^first_word\,
      I2 => length_counter_1_reg(0),
      O => \length_counter_1[2]_i_2__0_n_0\
    );
\length_counter_1[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(2),
      I1 => length_counter_1_reg(2),
      I2 => \length_counter_1[3]_i_2_n_0\,
      I3 => length_counter_1_reg(3),
      I4 => \^first_word\,
      I5 => dout(3),
      O => \next_length_counter__0\(3)
    );
\length_counter_1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => dout(0),
      I2 => length_counter_1_reg(1),
      I3 => \^first_word\,
      I4 => dout(1),
      O => \length_counter_1[3]_i_2_n_0\
    );
\length_counter_1[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(3),
      I1 => length_counter_1_reg(3),
      I2 => \length_counter_1[4]_i_2__0_n_0\,
      I3 => length_counter_1_reg(4),
      I4 => \^first_word\,
      I5 => dout(4),
      O => \next_length_counter__0\(4)
    );
\length_counter_1[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => dout(1),
      I1 => length_counter_1_reg(1),
      I2 => \length_counter_1[2]_i_2__0_n_0\,
      I3 => length_counter_1_reg(2),
      I4 => \^first_word\,
      I5 => dout(2),
      O => \length_counter_1[4]_i_2__0_n_0\
    );
\length_counter_1[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(4),
      I1 => length_counter_1_reg(4),
      I2 => \length_counter_1[5]_i_2__0_n_0\,
      I3 => length_counter_1_reg(5),
      I4 => \^first_word\,
      I5 => dout(5),
      O => \next_length_counter__0\(5)
    );
\length_counter_1[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(2),
      I1 => length_counter_1_reg(2),
      I2 => \length_counter_1[3]_i_2_n_0\,
      I3 => length_counter_1_reg(3),
      I4 => \^first_word\,
      I5 => dout(3),
      O => \length_counter_1[5]_i_2__0_n_0\
    );
\length_counter_1[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(5),
      I1 => length_counter_1_reg(5),
      I2 => \length_counter_1[6]_i_2__0_n_0\,
      I3 => length_counter_1_reg(6),
      I4 => \^first_word\,
      I5 => dout(6),
      O => \next_length_counter__0\(6)
    );
\length_counter_1[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => s_axi_rvalid_INST_0_i_12_n_0,
      I1 => \length_counter_1[3]_i_2_n_0\,
      I2 => length_counter_1_reg(2),
      I3 => \^first_word\,
      I4 => dout(2),
      I5 => s_axi_rvalid_INST_0_i_10_n_0,
      O => \length_counter_1[6]_i_2__0_n_0\
    );
\length_counter_1[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => dout(6),
      I1 => length_counter_1_reg(6),
      I2 => s_axi_rvalid_INST_0_i_9_n_0,
      I3 => \^q\(0),
      I4 => \^first_word\,
      I5 => dout(7),
      O => \next_length_counter__0\(7)
    );
\length_counter_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \next_length_counter__0\(0),
      Q => length_counter_1_reg(0),
      R => SR(0)
    );
\length_counter_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \length_counter_1[1]_i_1__0_n_0\,
      Q => length_counter_1_reg(1),
      R => SR(0)
    );
\length_counter_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \next_length_counter__0\(2),
      Q => length_counter_1_reg(2),
      R => SR(0)
    );
\length_counter_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \next_length_counter__0\(3),
      Q => length_counter_1_reg(3),
      R => SR(0)
    );
\length_counter_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \next_length_counter__0\(4),
      Q => length_counter_1_reg(4),
      R => SR(0)
    );
\length_counter_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \next_length_counter__0\(5),
      Q => length_counter_1_reg(5),
      R => SR(0)
    );
\length_counter_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \next_length_counter__0\(6),
      Q => length_counter_1_reg(6),
      R => SR(0)
    );
\length_counter_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \next_length_counter__0\(7),
      Q => \^q\(0),
      R => SR(0)
    );
m_axi_rready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => s_axi_rvalid_INST_0_i_13_n_0,
      I1 => s_axi_rvalid_INST_0_i_12_n_0,
      I2 => \length_counter_1[3]_i_2_n_0\,
      I3 => s_axi_rvalid_INST_0_i_11_n_0,
      I4 => s_axi_rvalid_INST_0_i_10_n_0,
      I5 => m_axi_rready_INST_0_i_3_n_0,
      O => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\
    );
m_axi_rready_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(6),
      I1 => \^first_word\,
      I2 => length_counter_1_reg(6),
      O => m_axi_rready_INST_0_i_3_n_0
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_RRESP_ACC(0),
      I1 => \goreg_dm.dout_i_reg[0]\,
      I2 => m_axi_rresp(0),
      O => \^s_axi_rresp\(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_RRESP_ACC(1),
      I1 => \goreg_dm.dout_i_reg[0]\,
      I2 => m_axi_rresp(1),
      O => \^s_axi_rresp\(1)
    );
\s_axi_rresp[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF40F2"
    )
        port map (
      I0 => S_AXI_RRESP_ACC(0),
      I1 => m_axi_rresp(0),
      I2 => m_axi_rresp(1),
      I3 => S_AXI_RRESP_ACC(1),
      I4 => \^first_word\,
      I5 => dout(8),
      O => \S_AXI_RRESP_ACC_reg[0]_0\
    );
s_axi_rvalid_INST_0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(4),
      I1 => \^first_word\,
      I2 => length_counter_1_reg(4),
      O => s_axi_rvalid_INST_0_i_10_n_0
    );
s_axi_rvalid_INST_0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(2),
      I1 => \^first_word\,
      I2 => length_counter_1_reg(2),
      O => s_axi_rvalid_INST_0_i_11_n_0
    );
s_axi_rvalid_INST_0_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(3),
      I1 => \^first_word\,
      I2 => length_counter_1_reg(3),
      O => s_axi_rvalid_INST_0_i_12_n_0
    );
s_axi_rvalid_INST_0_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(5),
      I1 => \^first_word\,
      I2 => length_counter_1_reg(5),
      O => s_axi_rvalid_INST_0_i_13_n_0
    );
s_axi_rvalid_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => dout(6),
      I1 => length_counter_1_reg(6),
      I2 => s_axi_rvalid_INST_0_i_9_n_0,
      I3 => \^q\(0),
      I4 => \^first_word\,
      I5 => dout(7),
      O => \^gpregsm1.curr_fwft_state_reg[0]\
    );
s_axi_rvalid_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_rvalid_INST_0_i_10_n_0,
      I1 => s_axi_rvalid_INST_0_i_11_n_0,
      I2 => \length_counter_1[3]_i_2_n_0\,
      I3 => s_axi_rvalid_INST_0_i_12_n_0,
      I4 => s_axi_rvalid_INST_0_i_13_n_0,
      O => s_axi_rvalid_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_dwidth_converter_v2_1_8_w_downsizer\ is
  port (
    first_mi_word : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    \current_word_1_reg[3]_0\ : out STD_LOGIC;
    \current_word_1_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \goreg_dm.dout_i_reg[28]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end \top_auto_ds_0_axi_dwidth_converter_v2_1_8_w_downsizer\;

architecture STRUCTURE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_w_downsizer\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^first_mi_word\ : STD_LOGIC;
  signal \length_counter_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[4]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[5]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[6]_i_2_n_0\ : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_5_n_0 : STD_LOGIC;
  signal m_axi_wlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal next_length_counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_axi_wready_INST_0_i_10_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \length_counter_1[0]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \length_counter_1[1]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \length_counter_1[2]_i_2\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of m_axi_wlast_INST_0_i_2 : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of m_axi_wlast_INST_0_i_3 : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of m_axi_wlast_INST_0_i_4 : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of m_axi_wlast_INST_0_i_5 : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of m_axi_wlast_INST_0_i_6 : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0_i_10 : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0_i_7 : label is "soft_lutpair121";
begin
  Q(0) <= \^q\(0);
  first_mi_word <= \^first_mi_word\;
  m_axi_wlast <= \^m_axi_wlast\;
\current_word_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \current_word_1_reg[3]_1\(0),
      R => SR(0)
    );
\current_word_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \current_word_1_reg[3]_1\(1),
      R => SR(0)
    );
\current_word_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \current_word_1_reg[3]_1\(2),
      R => SR(0)
    );
\current_word_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \current_word_1_reg[3]_1\(3),
      R => SR(0)
    );
first_word_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK,
      CE => E(0),
      D => \^m_axi_wlast\,
      Q => \^first_mi_word\,
      S => SR(0)
    );
\length_counter_1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => \^first_mi_word\,
      I2 => \goreg_dm.dout_i_reg[28]\(0),
      O => next_length_counter(0)
    );
\length_counter_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => \goreg_dm.dout_i_reg[28]\(0),
      I2 => length_counter_1_reg(1),
      I3 => \^first_mi_word\,
      I4 => \goreg_dm.dout_i_reg[28]\(1),
      O => \length_counter_1[1]_i_1_n_0\
    );
\length_counter_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFC030505FC03"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(1),
      I1 => length_counter_1_reg(1),
      I2 => \length_counter_1[2]_i_2_n_0\,
      I3 => length_counter_1_reg(2),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(2),
      O => next_length_counter(2)
    );
\length_counter_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(0),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(0),
      O => \length_counter_1[2]_i_2_n_0\
    );
\length_counter_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(2),
      I1 => length_counter_1_reg(2),
      I2 => m_axi_wlast_INST_0_i_4_n_0,
      I3 => length_counter_1_reg(3),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(3),
      O => next_length_counter(3)
    );
\length_counter_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(3),
      I1 => length_counter_1_reg(3),
      I2 => \length_counter_1[4]_i_2_n_0\,
      I3 => length_counter_1_reg(4),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(4),
      O => next_length_counter(4)
    );
\length_counter_1[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000305050003"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(1),
      I1 => length_counter_1_reg(1),
      I2 => \length_counter_1[2]_i_2_n_0\,
      I3 => length_counter_1_reg(2),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(2),
      O => \length_counter_1[4]_i_2_n_0\
    );
\length_counter_1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(4),
      I1 => length_counter_1_reg(4),
      I2 => \length_counter_1[5]_i_2_n_0\,
      I3 => length_counter_1_reg(5),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(5),
      O => next_length_counter(5)
    );
\length_counter_1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(2),
      I1 => length_counter_1_reg(2),
      I2 => m_axi_wlast_INST_0_i_4_n_0,
      I3 => length_counter_1_reg(3),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(3),
      O => \length_counter_1[5]_i_2_n_0\
    );
\length_counter_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(5),
      I1 => length_counter_1_reg(5),
      I2 => \length_counter_1[6]_i_2_n_0\,
      I3 => length_counter_1_reg(6),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(6),
      O => next_length_counter(6)
    );
\length_counter_1[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000044404"
    )
        port map (
      I0 => m_axi_wlast_INST_0_i_5_n_0,
      I1 => m_axi_wlast_INST_0_i_4_n_0,
      I2 => length_counter_1_reg(2),
      I3 => \^first_mi_word\,
      I4 => \goreg_dm.dout_i_reg[28]\(2),
      I5 => m_axi_wlast_INST_0_i_2_n_0,
      O => \length_counter_1[6]_i_2_n_0\
    );
\length_counter_1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFCF305050CF30"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(6),
      I1 => length_counter_1_reg(6),
      I2 => m_axi_wlast_INST_0_i_1_n_0,
      I3 => \^q\(0),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(7),
      O => next_length_counter(7)
    );
\length_counter_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(0),
      Q => length_counter_1_reg(0),
      R => SR(0)
    );
\length_counter_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => \length_counter_1[1]_i_1_n_0\,
      Q => length_counter_1_reg(1),
      R => SR(0)
    );
\length_counter_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(2),
      Q => length_counter_1_reg(2),
      R => SR(0)
    );
\length_counter_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(3),
      Q => length_counter_1_reg(3),
      R => SR(0)
    );
\length_counter_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(4),
      Q => length_counter_1_reg(4),
      R => SR(0)
    );
\length_counter_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(5),
      Q => length_counter_1_reg(5),
      R => SR(0)
    );
\length_counter_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(6),
      Q => length_counter_1_reg(6),
      R => SR(0)
    );
\length_counter_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => E(0),
      D => next_length_counter(7),
      Q => \^q\(0),
      R => SR(0)
    );
m_axi_wlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003050500030"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(6),
      I1 => length_counter_1_reg(6),
      I2 => m_axi_wlast_INST_0_i_1_n_0,
      I3 => \^q\(0),
      I4 => \^first_mi_word\,
      I5 => \goreg_dm.dout_i_reg[28]\(7),
      O => \^m_axi_wlast\
    );
m_axi_wlast_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => m_axi_wlast_INST_0_i_2_n_0,
      I1 => m_axi_wlast_INST_0_i_3_n_0,
      I2 => m_axi_wlast_INST_0_i_4_n_0,
      I3 => m_axi_wlast_INST_0_i_5_n_0,
      I4 => m_axi_wlast_INST_0_i_6_n_0,
      O => m_axi_wlast_INST_0_i_1_n_0
    );
m_axi_wlast_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(4),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(4),
      O => m_axi_wlast_INST_0_i_2_n_0
    );
m_axi_wlast_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(2),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(2),
      O => m_axi_wlast_INST_0_i_3_n_0
    );
m_axi_wlast_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => length_counter_1_reg(0),
      I1 => \goreg_dm.dout_i_reg[28]\(0),
      I2 => length_counter_1_reg(1),
      I3 => \^first_mi_word\,
      I4 => \goreg_dm.dout_i_reg[28]\(1),
      O => m_axi_wlast_INST_0_i_4_n_0
    );
m_axi_wlast_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(3),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(3),
      O => m_axi_wlast_INST_0_i_5_n_0
    );
m_axi_wlast_INST_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(5),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(5),
      O => m_axi_wlast_INST_0_i_6_n_0
    );
s_axi_wready_INST_0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \goreg_dm.dout_i_reg[28]\(6),
      I1 => \^first_mi_word\,
      I2 => length_counter_1_reg(6),
      O => s_axi_wready_INST_0_i_10_n_0
    );
s_axi_wready_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => m_axi_wlast_INST_0_i_6_n_0,
      I1 => m_axi_wlast_INST_0_i_5_n_0,
      I2 => m_axi_wlast_INST_0_i_4_n_0,
      I3 => m_axi_wlast_INST_0_i_3_n_0,
      I4 => m_axi_wlast_INST_0_i_2_n_0,
      I5 => s_axi_wready_INST_0_i_10_n_0,
      O => s_axi_wready
    );
s_axi_wready_INST_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^first_mi_word\,
      I1 => \goreg_dm.dout_i_reg[28]\(8),
      O => \current_word_1_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_dmem\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clk : in STD_LOGIC;
    p_17_out : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_dmem\;

architecture STRUCTURE of \top_auto_ds_0_dmem\ is
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_8_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_31_6_8_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_8_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_8 : label is "";
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => din(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_17_out
    );
RAM_reg_0_31_6_8: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => count_d10_in(4 downto 0),
      DIA(1 downto 0) => din(7 downto 6),
      DIB(1) => '0',
      DIB(0) => din(8),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1) => NLW_RAM_reg_0_31_6_8_DOB_UNCONNECTED(1),
      DOB(0) => p_0_out(8),
      DOC(1 downto 0) => NLW_RAM_reg_0_31_6_8_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_8_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => p_17_out
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_dmem__parameterized0\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 28 downto 0 );
    clk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_dmem__parameterized0\ : entity is "dmem";
end \top_auto_ds_0_dmem__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_dmem__parameterized0\ is
  signal p_0_out : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_24_28 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => din(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(13 downto 12),
      DIB(1 downto 0) => din(15 downto 14),
      DIC(1 downto 0) => din(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(13 downto 12),
      DOB(1 downto 0) => p_0_out(15 downto 14),
      DOC(1 downto 0) => p_0_out(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(19 downto 18),
      DIB(1 downto 0) => din(21 downto 20),
      DIC(1 downto 0) => din(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(19 downto 18),
      DOB(1 downto 0) => p_0_out(21 downto 20),
      DOC(1 downto 0) => p_0_out(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_24_28: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(25 downto 24),
      DIB(1 downto 0) => din(27 downto 26),
      DIC(1) => '0',
      DIC(0) => din(28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(25 downto 24),
      DOB(1 downto 0) => p_0_out(27 downto 26),
      DOC(1) => NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED(1),
      DOC(0) => p_0_out(28),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(7 downto 6),
      DIB(1 downto 0) => din(9 downto 8),
      DIC(1 downto 0) => din(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(10),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(11),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(12),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(13),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(14),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(15),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(16),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(17),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(18),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(19),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(20),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(21),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(22),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(23),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(24),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(25),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(26),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(27),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(28),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(9),
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_dmem__parameterized1\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 28 downto 0 );
    clk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_dmem__parameterized1\ : entity is "dmem";
end \top_auto_ds_0_dmem__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_dmem__parameterized1\ is
  signal p_0_out : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_24_28 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_31_6_11 : label is "";
begin
RAM_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => din(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(13 downto 12),
      DIB(1 downto 0) => din(15 downto 14),
      DIC(1 downto 0) => din(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(13 downto 12),
      DOB(1 downto 0) => p_0_out(15 downto 14),
      DOC(1 downto 0) => p_0_out(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(19 downto 18),
      DIB(1 downto 0) => din(21 downto 20),
      DIC(1 downto 0) => din(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(19 downto 18),
      DOB(1 downto 0) => p_0_out(21 downto 20),
      DOC(1 downto 0) => p_0_out(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_24_28: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(25 downto 24),
      DIB(1 downto 0) => din(27 downto 26),
      DIC(1) => '0',
      DIC(0) => din(28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(25 downto 24),
      DOB(1 downto 0) => p_0_out(27 downto 26),
      DOC(1) => NLW_RAM_reg_0_31_24_28_DOC_UNCONNECTED(1),
      DOC(0) => p_0_out(28),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_24_28_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRB(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRC(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      ADDRD(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      DIA(1 downto 0) => din(7 downto 6),
      DIB(1 downto 0) => din(9 downto 8),
      DIC(1 downto 0) => din(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => ram_full_fb_i_reg(0)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(10),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(11),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(12),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(13),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(14),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(15),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(16),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(17),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(18),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(19),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(20),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(21),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(22),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(23),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(24),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(25),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(26),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(27),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(28),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(9),
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_bin_cntr\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_rd_bin_cntr\;

architecture STRUCTURE of \top_auto_ds_0_rd_bin_cntr\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_2_n_0 : STD_LOGIC;
  signal \^ram_empty_fb_i_reg_0\ : STD_LOGIC;
  signal ram_full_i_i_7_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair74";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
  ram_empty_fb_i_reg_0 <= \^ram_empty_fb_i_reg_0\;
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => rd_pntr_plus1(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => rd_pntr_plus1(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => rd_pntr_plus1(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(4),
      Q => rd_pntr_plus1(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA2F3A2"
    )
        port map (
      I0 => ram_empty_fb_i_i_2_n_0,
      I1 => wr_en,
      I2 => p_1_out,
      I3 => p_2_out,
      I4 => \^ram_empty_fb_i_reg_0\,
      O => ram_empty_fb_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \gcc0.gc0.count_d1_reg[4]\(3),
      I2 => rd_pntr_plus1(4),
      I3 => \gcc0.gc0.count_d1_reg[4]\(4),
      I4 => \gpregsm1.curr_fwft_state_reg[0]\,
      I5 => \gcc0.gc0.count_d1_reg[2]\,
      O => ram_empty_fb_i_i_2_n_0
    );
ram_full_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => ram_full_i_i_7_n_0,
      I1 => \^gpr1.dout_i_reg[1]\(2),
      I2 => \gcc0.gc0.count_d1_reg[4]\(2),
      I3 => \^gpr1.dout_i_reg[1]\(1),
      I4 => \gcc0.gc0.count_d1_reg[4]\(1),
      O => \^ram_empty_fb_i_reg_0\
    );
ram_full_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(4),
      I1 => \gcc0.gc0.count_d1_reg[4]\(4),
      I2 => \^gpr1.dout_i_reg[1]\(3),
      I3 => \gcc0.gc0.count_d1_reg[4]\(3),
      I4 => \gcc0.gc0.count_d1_reg[4]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_full_i_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_bin_cntr_15\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_bin_cntr_15\ : entity is "rd_bin_cntr";
end \top_auto_ds_0_rd_bin_cntr_15\;

architecture STRUCTURE of \top_auto_ds_0_rd_bin_cntr_15\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_2_n_0 : STD_LOGIC;
  signal \^ram_empty_fb_i_reg_0\ : STD_LOGIC;
  signal ram_full_i_i_7_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair3";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
  ram_empty_fb_i_reg_0 <= \^ram_empty_fb_i_reg_0\;
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => rd_pntr_plus1(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => rd_pntr_plus1(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => rd_pntr_plus1(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(4),
      Q => rd_pntr_plus1(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA2F3A2"
    )
        port map (
      I0 => ram_empty_fb_i_i_2_n_0,
      I1 => wr_en,
      I2 => p_1_out,
      I3 => p_2_out,
      I4 => \^ram_empty_fb_i_reg_0\,
      O => ram_empty_fb_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \gcc0.gc0.count_d1_reg[4]\(3),
      I2 => rd_pntr_plus1(4),
      I3 => \gcc0.gc0.count_d1_reg[4]\(4),
      I4 => \gpregsm1.curr_fwft_state_reg[0]\,
      I5 => \gcc0.gc0.count_d1_reg[2]\,
      O => ram_empty_fb_i_i_2_n_0
    );
ram_full_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => ram_full_i_i_7_n_0,
      I1 => \^gpr1.dout_i_reg[1]\(2),
      I2 => \gcc0.gc0.count_d1_reg[4]\(2),
      I3 => \^gpr1.dout_i_reg[1]\(1),
      I4 => \gcc0.gc0.count_d1_reg[4]\(1),
      O => \^ram_empty_fb_i_reg_0\
    );
ram_full_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(4),
      I1 => \gcc0.gc0.count_d1_reg[4]\(4),
      I2 => \^gpr1.dout_i_reg[1]\(3),
      I3 => \gcc0.gc0.count_d1_reg[4]\(3),
      I4 => \gcc0.gc0.count_d1_reg[4]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_full_i_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_bin_cntr_7\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    p_2_out : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_bin_cntr_7\ : entity is "rd_bin_cntr";
end \top_auto_ds_0_rd_bin_cntr_7\;

architecture STRUCTURE of \top_auto_ds_0_rd_bin_cntr_7\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_empty_fb_i_i_2_n_0 : STD_LOGIC;
  signal \^ram_empty_fb_i_reg_0\ : STD_LOGIC;
  signal ram_full_i_i_7_n_0 : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair66";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
  ram_empty_fb_i_reg_0 <= \^ram_empty_fb_i_reg_0\;
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => rd_pntr_plus1(4),
      O => plusOp(4)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => \^q\(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => rd_pntr_plus1(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => rd_pntr_plus1(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0),
      D => plusOp(4),
      Q => rd_pntr_plus1(4)
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA2F3A2"
    )
        port map (
      I0 => ram_empty_fb_i_i_2_n_0,
      I1 => wr_en,
      I2 => p_1_out,
      I3 => p_2_out,
      I4 => \^ram_empty_fb_i_reg_0\,
      O => ram_empty_fb_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => \gcc0.gc0.count_d1_reg[4]\(3),
      I2 => rd_pntr_plus1(4),
      I3 => \gcc0.gc0.count_d1_reg[4]\(4),
      I4 => \gpregsm1.curr_fwft_state_reg[0]\,
      I5 => \gcc0.gc0.count_d1_reg[2]\,
      O => ram_empty_fb_i_i_2_n_0
    );
ram_full_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => ram_full_i_i_7_n_0,
      I1 => \^gpr1.dout_i_reg[1]\(2),
      I2 => \gcc0.gc0.count_d1_reg[4]\(2),
      I3 => \^gpr1.dout_i_reg[1]\(1),
      I4 => \gcc0.gc0.count_d1_reg[4]\(1),
      O => \^ram_empty_fb_i_reg_0\
    );
ram_full_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(4),
      I1 => \gcc0.gc0.count_d1_reg[4]\(4),
      I2 => \^gpr1.dout_i_reg[1]\(3),
      I3 => \gcc0.gc0.count_d1_reg[4]\(3),
      I4 => \gcc0.gc0.count_d1_reg[4]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_full_i_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_fwft\ is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    \goreg_dm.dout_i_reg[28]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    p_2_out : in STD_LOGIC
  );
end \top_auto_ds_0_rd_fwft\;

architecture STRUCTURE of \top_auto_ds_0_rd_fwft\ is
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal empty_fwft_fb : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \gpregsm1.curr_fwft_state_reg_n_0_[1]\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of empty_fwft_fb_reg : label is "no";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count_d1[4]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \goreg_dm.dout_i[28]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[1]_i_1\ : label is "soft_lutpair73";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM of ram_empty_fb_i_i_3 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of ram_full_i_i_3 : label is "soft_lutpair71";
begin
empty_fwft_fb_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty_fwft_fb
    );
empty_fwft_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F540"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb,
      O => empty_fwft_i0
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => p_2_out,
      O => E(0)
    );
\goreg_dm.dout_i[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => Q(0),
      I1 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \goreg_dm.dout_i_reg[28]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => p_2_out,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(1),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(1),
      D => next_fwft_state(1),
      Q => \gpregsm1.curr_fwft_state_reg_n_0_[1]\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      O => ram_empty_fb_i_reg
    );
ram_full_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I2 => rd_en,
      I3 => p_2_out,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_fwft_13\ is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    \goreg_dm.dout_i_reg[28]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    p_2_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_fwft_13\ : entity is "rd_fwft";
end \top_auto_ds_0_rd_fwft_13\;

architecture STRUCTURE of \top_auto_ds_0_rd_fwft_13\ is
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal empty_fwft_fb : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \gpregsm1.curr_fwft_state_reg_n_0_[1]\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of empty_fwft_fb_reg : label is "no";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count_d1[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \goreg_dm.dout_i[28]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[1]_i_1\ : label is "soft_lutpair2";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM of ram_empty_fb_i_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ram_full_i_i_3 : label is "soft_lutpair0";
begin
empty_fwft_fb_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty_fwft_fb
    );
empty_fwft_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F540"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb,
      O => empty_fwft_i0
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => p_2_out,
      O => E(0)
    );
\goreg_dm.dout_i[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => Q(0),
      I1 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \goreg_dm.dout_i_reg[28]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => p_2_out,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(1),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(1),
      D => next_fwft_state(1),
      Q => \gpregsm1.curr_fwft_state_reg_n_0_[1]\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      O => ram_empty_fb_i_reg
    );
ram_full_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I2 => rd_en,
      I3 => p_2_out,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_fwft_5\ is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    \goreg_dm.dout_i_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    p_2_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_fwft_5\ : entity is "rd_fwft";
end \top_auto_ds_0_rd_fwft_5\;

architecture STRUCTURE of \top_auto_ds_0_rd_fwft_5\ is
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal empty_fwft_fb : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \gpregsm1.curr_fwft_state_reg_n_0_[1]\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of empty_fwft_fb_reg : label is "no";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count_d1[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \goreg_dm.dout_i[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[1]_i_1\ : label is "soft_lutpair65";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM of ram_empty_fb_i_i_3 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of ram_full_i_i_3 : label is "soft_lutpair63";
begin
empty_fwft_fb_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty_fwft_fb
    );
empty_fwft_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F540"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb,
      O => empty_fwft_i0
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty
    );
\gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => p_2_out,
      O => E(0)
    );
\goreg_dm.dout_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => Q(0),
      I1 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \goreg_dm.dout_i_reg[8]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => p_2_out,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(1),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(1),
      D => next_fwft_state(1),
      Q => \gpregsm1.curr_fwft_state_reg_n_0_[1]\
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      O => ram_empty_fb_i_reg
    );
ram_full_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \gpregsm1.curr_fwft_state_reg_n_0_[1]\,
      I2 => rd_en,
      I3 => p_2_out,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_status_flags_ss\ is
  port (
    p_2_out : out STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_rd_status_flags_ss\;

architecture STRUCTURE of \top_auto_ds_0_rd_status_flags_ss\ is
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
begin
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_fb_i_reg,
      PRE => Q(0),
      Q => p_2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_status_flags_ss_14\ is
  port (
    p_2_out : out STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_status_flags_ss_14\ : entity is "rd_status_flags_ss";
end \top_auto_ds_0_rd_status_flags_ss_14\;

architecture STRUCTURE of \top_auto_ds_0_rd_status_flags_ss_14\ is
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
begin
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_fb_i_reg,
      PRE => Q(0),
      Q => p_2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_status_flags_ss_6\ is
  port (
    p_2_out : out STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_status_flags_ss_6\ : entity is "rd_status_flags_ss";
end \top_auto_ds_0_rd_status_flags_ss_6\;

architecture STRUCTURE of \top_auto_ds_0_rd_status_flags_ss_6\ is
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
begin
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_full_fb_i_reg,
      PRE => Q(0),
      Q => p_2_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_reset_blk_ramfifo\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gcc0.gc0.count_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end \top_auto_ds_0_reset_blk_ramfifo\;

architecture STRUCTURE of \top_auto_ds_0_reset_blk_ramfifo\ is
  signal \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_asreg_d1 : STD_LOGIC;
  signal rd_rst_asreg_d2 : STD_LOGIC;
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_asreg_d1 : STD_LOGIC;
  signal wr_rst_asreg_d2 : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg,
      Q => rd_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg_d1,
      Q => rd_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(1)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg,
      Q => wr_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg_d1,
      Q => wr_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\,
      Q => \gcc0.gc0.count_d1_reg[0]\(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\,
      Q => \gcc0.gc0.count_d1_reg[0]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_reset_blk_ramfifo_10\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gcc0.gc0.count_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_reset_blk_ramfifo_10\ : entity is "reset_blk_ramfifo";
end \top_auto_ds_0_reset_blk_ramfifo_10\;

architecture STRUCTURE of \top_auto_ds_0_reset_blk_ramfifo_10\ is
  signal \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_asreg_d1 : STD_LOGIC;
  signal rd_rst_asreg_d2 : STD_LOGIC;
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_asreg_d1 : STD_LOGIC;
  signal wr_rst_asreg_d2 : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg,
      Q => rd_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg_d1,
      Q => rd_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(1)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg,
      Q => wr_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg_d1,
      Q => wr_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\,
      Q => \gcc0.gc0.count_d1_reg[0]\(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\,
      Q => \gcc0.gc0.count_d1_reg[0]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_reset_blk_ramfifo_2\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gcc0.gc0.count_d1_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_reset_blk_ramfifo_2\ : entity is "reset_blk_ramfifo";
end \top_auto_ds_0_reset_blk_ramfifo_2\;

architecture STRUCTURE of \top_auto_ds_0_reset_blk_ramfifo_2\ is
  signal \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_asreg_d1 : STD_LOGIC;
  signal rd_rst_asreg_d2 : STD_LOGIC;
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_asreg_d1 : STD_LOGIC;
  signal wr_rst_asreg_d2 : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg,
      Q => rd_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rd_rst_asreg_d1,
      Q => rd_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1_n_0\,
      Q => Q(1)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg,
      Q => wr_rst_asreg_d1,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_asreg_d1,
      Q => wr_rst_asreg_d2,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d1,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d2,
      O => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\,
      Q => \gcc0.gc0.count_d1_reg[0]\(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1_n_0\,
      Q => \gcc0.gc0.count_d1_reg[0]\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_bin_cntr\ is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_wr_bin_cntr\;

architecture STRUCTURE of \top_auto_ds_0_wr_bin_cntr\ is
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_i_i_6_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of ram_full_i_i_6 : label is "soft_lutpair77";
begin
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_12_out(1),
      I1 => p_12_out(0),
      I2 => p_12_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_12_out(2),
      I1 => p_12_out(0),
      I2 => p_12_out(1),
      I3 => p_12_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_12_out(3),
      I1 => p_12_out(1),
      I2 => p_12_out(0),
      I3 => p_12_out(2),
      I4 => p_12_out(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => Q(0),
      Q => p_12_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(1),
      Q => p_12_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(2),
      Q => p_12_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(3),
      Q => p_12_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(4),
      Q => p_12_out(4)
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(2),
      I1 => \gc0.count_reg[2]\(2),
      I2 => \^gpr1.dout_i_reg[1]\(1),
      I3 => \gc0.count_reg[2]\(1),
      I4 => \gc0.count_reg[2]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_empty_fb_i_reg
    );
ram_full_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8C8"
    )
        port map (
      I0 => ram_full_i_i_2_n_0,
      I1 => \gpregsm1.curr_fwft_state_reg[0]\,
      I2 => p_1_out,
      I3 => \gc0.count_d1_reg[2]\,
      O => ram_full_comb
    );
ram_full_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => ram_full_i_i_5_n_0,
      I1 => ram_full_i_i_6_n_0,
      I2 => wr_en,
      I3 => \gc0.count_d1_reg[4]\(4),
      I4 => p_12_out(4),
      O => ram_full_i_i_2_n_0
    );
ram_full_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_12_out(2),
      I1 => \gc0.count_d1_reg[4]\(2),
      I2 => p_12_out(3),
      I3 => \gc0.count_d1_reg[4]\(3),
      O => ram_full_i_i_5_n_0
    );
ram_full_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_12_out(0),
      I1 => \gc0.count_d1_reg[4]\(0),
      I2 => p_12_out(1),
      I3 => \gc0.count_d1_reg[4]\(1),
      O => ram_full_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_bin_cntr_12\ is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_wr_bin_cntr_12\ : entity is "wr_bin_cntr";
end \top_auto_ds_0_wr_bin_cntr_12\;

architecture STRUCTURE of \top_auto_ds_0_wr_bin_cntr_12\ is
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_i_i_6_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ram_full_i_i_6 : label is "soft_lutpair6";
begin
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_12_out(1),
      I1 => p_12_out(0),
      I2 => p_12_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_12_out(2),
      I1 => p_12_out(0),
      I2 => p_12_out(1),
      I3 => p_12_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_12_out(3),
      I1 => p_12_out(1),
      I2 => p_12_out(0),
      I3 => p_12_out(2),
      I4 => p_12_out(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => Q(0),
      Q => p_12_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(1),
      Q => p_12_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(2),
      Q => p_12_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(3),
      Q => p_12_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(4),
      Q => p_12_out(4)
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(2),
      I1 => \gc0.count_reg[2]\(2),
      I2 => \^gpr1.dout_i_reg[1]\(1),
      I3 => \gc0.count_reg[2]\(1),
      I4 => \gc0.count_reg[2]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_empty_fb_i_reg
    );
ram_full_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8C8"
    )
        port map (
      I0 => ram_full_i_i_2_n_0,
      I1 => \gpregsm1.curr_fwft_state_reg[0]\,
      I2 => p_1_out,
      I3 => \gc0.count_d1_reg[2]\,
      O => ram_full_comb
    );
ram_full_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => ram_full_i_i_5_n_0,
      I1 => ram_full_i_i_6_n_0,
      I2 => wr_en,
      I3 => \gc0.count_d1_reg[4]\(4),
      I4 => p_12_out(4),
      O => ram_full_i_i_2_n_0
    );
ram_full_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_12_out(2),
      I1 => \gc0.count_d1_reg[4]\(2),
      I2 => p_12_out(3),
      I3 => \gc0.count_d1_reg[4]\(3),
      O => ram_full_i_i_5_n_0
    );
ram_full_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_12_out(0),
      I1 => \gc0.count_d1_reg[4]\(0),
      I2 => p_12_out(1),
      I3 => \gc0.count_d1_reg[4]\(1),
      O => ram_full_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_bin_cntr_4\ is
  port (
    ram_full_comb : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wr_en : in STD_LOGIC;
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_wr_bin_cntr_4\ : entity is "wr_bin_cntr";
end \top_auto_ds_0_wr_bin_cntr_4\;

architecture STRUCTURE of \top_auto_ds_0_wr_bin_cntr_4\ is
  signal \^gpr1.dout_i_reg[1]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_i_i_5_n_0 : STD_LOGIC;
  signal ram_full_i_i_6_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of ram_full_i_i_6 : label is "soft_lutpair69";
begin
  \gpr1.dout_i_reg[1]\(4 downto 0) <= \^gpr1.dout_i_reg[1]\(4 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_12_out(1),
      I1 => p_12_out(0),
      I2 => p_12_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_12_out(2),
      I1 => p_12_out(0),
      I2 => p_12_out(1),
      I3 => p_12_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => p_12_out(3),
      I1 => p_12_out(1),
      I2 => p_12_out(0),
      I3 => p_12_out(2),
      I4 => p_12_out(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(0),
      Q => \^gpr1.dout_i_reg[1]\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(1),
      Q => \^gpr1.dout_i_reg[1]\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(2),
      Q => \^gpr1.dout_i_reg[1]\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(3),
      Q => \^gpr1.dout_i_reg[1]\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => p_12_out(4),
      Q => \^gpr1.dout_i_reg[1]\(4)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => Q(0),
      Q => p_12_out(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(1),
      Q => p_12_out(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(2),
      Q => p_12_out(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(3),
      Q => p_12_out(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => Q(0),
      D => \plusOp__0\(4),
      Q => p_12_out(4)
    );
ram_empty_fb_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[1]\(2),
      I1 => \gc0.count_reg[2]\(2),
      I2 => \^gpr1.dout_i_reg[1]\(1),
      I3 => \gc0.count_reg[2]\(1),
      I4 => \gc0.count_reg[2]\(0),
      I5 => \^gpr1.dout_i_reg[1]\(0),
      O => ram_empty_fb_i_reg
    );
ram_full_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8C8"
    )
        port map (
      I0 => ram_full_i_i_2_n_0,
      I1 => \gpregsm1.curr_fwft_state_reg[0]\,
      I2 => p_1_out,
      I3 => \gc0.count_d1_reg[2]\,
      O => ram_full_comb
    );
ram_full_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000080"
    )
        port map (
      I0 => ram_full_i_i_5_n_0,
      I1 => ram_full_i_i_6_n_0,
      I2 => wr_en,
      I3 => \gc0.count_d1_reg[4]\(4),
      I4 => p_12_out(4),
      O => ram_full_i_i_2_n_0
    );
ram_full_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_12_out(2),
      I1 => \gc0.count_d1_reg[4]\(2),
      I2 => p_12_out(3),
      I3 => \gc0.count_d1_reg[4]\(3),
      O => ram_full_i_i_5_n_0
    );
ram_full_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_12_out(0),
      I1 => \gc0.count_d1_reg[4]\(0),
      I2 => p_12_out(1),
      I3 => \gc0.count_d1_reg[4]\(1),
      O => ram_full_i_i_6_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_status_flags_ss\ is
  port (
    p_1_out : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC
  );
end \top_auto_ds_0_wr_status_flags_ss\;

architecture STRUCTURE of \top_auto_ds_0_wr_status_flags_ss\ is
  signal \^p_1_out\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  p_1_out <= \^p_1_out\;
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => \^p_1_out\,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(0),
      D => ram_full_comb,
      Q => \^p_1_out\
    );
ram_full_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(0),
      D => ram_full_comb,
      Q => full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_status_flags_ss_11\ is
  port (
    p_1_out : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_wr_status_flags_ss_11\ : entity is "wr_status_flags_ss";
end \top_auto_ds_0_wr_status_flags_ss_11\;

architecture STRUCTURE of \top_auto_ds_0_wr_status_flags_ss_11\ is
  signal \^p_1_out\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  p_1_out <= \^p_1_out\;
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => \^p_1_out\,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(0),
      D => ram_full_comb,
      Q => \^p_1_out\
    );
ram_full_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(0),
      D => ram_full_comb,
      Q => full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_status_flags_ss_3\ is
  port (
    p_1_out : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_comb : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_wr_status_flags_ss_3\ : entity is "wr_status_flags_ss";
end \top_auto_ds_0_wr_status_flags_ss_3\;

architecture STRUCTURE of \top_auto_ds_0_wr_status_flags_ss_3\ is
  signal \^p_1_out\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  p_1_out <= \^p_1_out\;
\gcc0.gc0.count_d1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => \^p_1_out\,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(0),
      D => ram_full_comb,
      Q => \^p_1_out\
    );
ram_full_i_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => Q(0),
      D => ram_full_comb,
      Q => full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_memory\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    p_17_out : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_memory\;

architecture STRUCTURE of \top_auto_ds_0_memory\ is
  signal dout_i : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.\top_auto_ds_0_dmem\
     port map (
      clk => clk,
      count_d10_in(4 downto 0) => count_d10_in(4 downto 0),
      din(8 downto 0) => din(8 downto 0),
      dout_i(8 downto 0) => dout_i(8 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0),
      p_17_out => p_17_out
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(0),
      Q => dout(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(1),
      Q => dout(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(2),
      Q => dout(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(3),
      Q => dout(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(4),
      Q => dout(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(5),
      Q => dout(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(6),
      Q => dout(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(7),
      Q => dout(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(8),
      Q => dout(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_memory__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_memory__parameterized0\ : entity is "memory";
end \top_auto_ds_0_memory__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_memory__parameterized0\ is
  signal dout_i : STD_LOGIC_VECTOR ( 28 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.\top_auto_ds_0_dmem__parameterized0\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout_i(28 downto 0) => dout_i(28 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0)
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(0),
      Q => dout(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(10),
      Q => dout(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(11),
      Q => dout(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(12),
      Q => dout(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(13),
      Q => dout(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(14),
      Q => dout(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(15),
      Q => dout(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(16),
      Q => dout(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(17),
      Q => dout(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(18),
      Q => dout(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(19),
      Q => dout(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(1),
      Q => dout(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(20),
      Q => dout(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(21),
      Q => dout(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(22),
      Q => dout(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(23),
      Q => dout(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(24),
      Q => dout(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(25),
      Q => dout(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(26),
      Q => dout(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(27),
      Q => dout(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(28),
      Q => dout(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(2),
      Q => dout(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(3),
      Q => dout(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(4),
      Q => dout(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(5),
      Q => dout(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(6),
      Q => dout(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(7),
      Q => dout(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(8),
      Q => dout(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(9),
      Q => dout(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_memory__parameterized1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_memory__parameterized1\ : entity is "memory";
end \top_auto_ds_0_memory__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_memory__parameterized1\ is
  signal dout_i : STD_LOGIC_VECTOR ( 28 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.\top_auto_ds_0_dmem__parameterized1\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout_i(28 downto 0) => dout_i(28 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0),
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0)
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(0),
      Q => dout(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(10),
      Q => dout(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(11),
      Q => dout(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(12),
      Q => dout(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(13),
      Q => dout(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(14),
      Q => dout(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(15),
      Q => dout(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(16),
      Q => dout(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(17),
      Q => dout(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(18),
      Q => dout(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(19),
      Q => dout(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(1),
      Q => dout(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(20),
      Q => dout(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(21),
      Q => dout(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(22),
      Q => dout(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(23),
      Q => dout(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(24),
      Q => dout(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(25),
      Q => dout(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(26),
      Q => dout(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(27),
      Q => dout(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(28),
      Q => dout(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(2),
      Q => dout(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(3),
      Q => dout(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(4),
      Q => dout(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(5),
      Q => dout(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(6),
      Q => dout(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(7),
      Q => dout(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(8),
      Q => dout(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => dout_i(9),
      Q => dout(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_logic\ is
  port (
    empty : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gc0.count_d1_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[28]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC
  );
end \top_auto_ds_0_rd_logic\;

architecture STRUCTURE of \top_auto_ds_0_rd_logic\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_2\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.\top_auto_ds_0_rd_fwft\
     port map (
      E(0) => \^e\(0),
      Q(1 downto 0) => Q(1 downto 0),
      clk => clk,
      empty => empty,
      \goreg_dm.dout_i_reg[28]\(0) => \goreg_dm.dout_i_reg[28]\(0),
      p_2_out => p_2_out,
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_2\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rd_en => rd_en
    );
\grss.rsts\: entity work.\top_auto_ds_0_rd_status_flags_ss\
     port map (
      Q(0) => Q(1),
      clk => clk,
      p_2_out => p_2_out,
      ram_full_fb_i_reg => rpntr_n_0
    );
rpntr: entity work.\top_auto_ds_0_rd_bin_cntr\
     port map (
      E(0) => \^e\(0),
      Q(2 downto 0) => \gc0.count_d1_reg[2]\(2 downto 0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[2]\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_2\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => Q(0),
      p_1_out => p_1_out,
      p_2_out => p_2_out,
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_logic_0\ is
  port (
    empty : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gc0.count_d1_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_logic_0\ : entity is "rd_logic";
end \top_auto_ds_0_rd_logic_0\;

architecture STRUCTURE of \top_auto_ds_0_rd_logic_0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_2\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.\top_auto_ds_0_rd_fwft_5\
     port map (
      E(0) => \^e\(0),
      Q(1 downto 0) => Q(1 downto 0),
      clk => clk,
      empty => empty,
      \goreg_dm.dout_i_reg[8]\(0) => \goreg_dm.dout_i_reg[8]\(0),
      p_2_out => p_2_out,
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_2\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rd_en => rd_en
    );
\grss.rsts\: entity work.\top_auto_ds_0_rd_status_flags_ss_6\
     port map (
      Q(0) => Q(1),
      clk => clk,
      p_2_out => p_2_out,
      ram_full_fb_i_reg => rpntr_n_0
    );
rpntr: entity work.\top_auto_ds_0_rd_bin_cntr_7\
     port map (
      E(0) => \^e\(0),
      Q(2 downto 0) => \gc0.count_d1_reg[2]\(2 downto 0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[2]\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_2\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => Q(0),
      p_1_out => p_1_out,
      p_2_out => p_2_out,
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_rd_logic_8\ is
  port (
    empty : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gc0.count_d1_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[28]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gcc0.gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gcc0.gc0.count_d1_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_rd_logic_8\ : entity is "rd_logic";
end \top_auto_ds_0_rd_logic_8\;

architecture STRUCTURE of \top_auto_ds_0_rd_logic_8\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_2\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal rpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.\top_auto_ds_0_rd_fwft_13\
     port map (
      E(0) => \^e\(0),
      Q(1 downto 0) => Q(1 downto 0),
      clk => clk,
      empty => empty,
      \goreg_dm.dout_i_reg[28]\(0) => \goreg_dm.dout_i_reg[28]\(0),
      p_2_out => p_2_out,
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_2\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rd_en => rd_en
    );
\grss.rsts\: entity work.\top_auto_ds_0_rd_status_flags_ss_14\
     port map (
      Q(0) => Q(1),
      clk => clk,
      p_2_out => p_2_out,
      ram_full_fb_i_reg => rpntr_n_0
    );
rpntr: entity work.\top_auto_ds_0_rd_bin_cntr_15\
     port map (
      E(0) => \^e\(0),
      Q(2 downto 0) => \gc0.count_d1_reg[2]\(2 downto 0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[2]\ => \gcc0.gc0.count_d1_reg[2]\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => \gcc0.gc0.count_d1_reg[4]\(4 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_2\,
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\(0) => Q(0),
      p_1_out => p_1_out,
      p_2_out => p_2_out,
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_logic\ is
  port (
    p_1_out : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end \top_auto_ds_0_wr_logic\;

architecture STRUCTURE of \top_auto_ds_0_wr_logic\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_out\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  p_1_out <= \^p_1_out\;
\gwss.wsts\: entity work.\top_auto_ds_0_wr_status_flags_ss\
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(0),
      clk => clk,
      full => full,
      p_1_out => \^p_1_out\,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
wpntr: entity work.\top_auto_ds_0_wr_bin_cntr\
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(1),
      clk => clk,
      \gc0.count_d1_reg[2]\ => \gc0.count_d1_reg[2]\,
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => \gc0.count_reg[2]\(2 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      p_1_out => \^p_1_out\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_logic_1\ is
  port (
    p_1_out : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_wr_logic_1\ : entity is "wr_logic";
end \top_auto_ds_0_wr_logic_1\;

architecture STRUCTURE of \top_auto_ds_0_wr_logic_1\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_out\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  p_1_out <= \^p_1_out\;
\gwss.wsts\: entity work.\top_auto_ds_0_wr_status_flags_ss_3\
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(0),
      clk => clk,
      full => full,
      p_1_out => \^p_1_out\,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
wpntr: entity work.\top_auto_ds_0_wr_bin_cntr_4\
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(1),
      clk => clk,
      \gc0.count_d1_reg[2]\ => \gc0.count_d1_reg[2]\,
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => \gc0.count_reg[2]\(2 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      p_1_out => \^p_1_out\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_wr_logic_9\ is
  port (
    p_1_out : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    \gc0.count_d1_reg[2]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_wr_logic_9\ : entity is "wr_logic";
end \top_auto_ds_0_wr_logic_9\;

architecture STRUCTURE of \top_auto_ds_0_wr_logic_9\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_1_out\ : STD_LOGIC;
  signal ram_full_comb : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  p_1_out <= \^p_1_out\;
\gwss.wsts\: entity work.\top_auto_ds_0_wr_status_flags_ss_11\
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(0),
      clk => clk,
      full => full,
      p_1_out => \^p_1_out\,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
wpntr: entity work.\top_auto_ds_0_wr_bin_cntr_12\
     port map (
      E(0) => \^e\(0),
      Q(0) => Q(1),
      clk => clk,
      \gc0.count_d1_reg[2]\ => \gc0.count_d1_reg[2]\,
      \gc0.count_d1_reg[4]\(4 downto 0) => \gc0.count_d1_reg[4]\(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => \gc0.count_reg[2]\(2 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => \gpr1.dout_i_reg[1]\(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      p_1_out => \^p_1_out\,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_full_comb => ram_full_comb,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_ramfifo\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
end \top_auto_ds_0_fifo_generator_ramfifo\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_ramfifo\ is
  signal RD_RST : STD_LOGIC;
  signal RST_FULL_FF : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal ram_wr_en_into_logic : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rstblk_n_2 : STD_LOGIC;
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.\top_auto_ds_0_rd_logic_0\
     port map (
      E(0) => ram_rd_en_i,
      Q(1) => RD_RST,
      Q(0) => rd_rst_i(0),
      clk => clk,
      empty => empty,
      \gc0.count_d1_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => p_11_out(4 downto 0),
      \goreg_dm.dout_i_reg[8]\(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_0_out_0(4 downto 0),
      p_1_out => p_1_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_1\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_12\,
      rd_en => rd_en,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\top_auto_ds_0_wr_logic_1\
     port map (
      E(0) => ram_wr_en_into_logic,
      Q(1) => rstblk_n_2,
      Q(0) => RST_FULL_FF,
      clk => clk,
      full => full,
      \gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_11_out(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gntv_or_sync_fifo.gl0.rd_n_12\,
      p_1_out => p_1_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.\top_auto_ds_0_memory\
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      clk => clk,
      count_d10_in(4 downto 0) => p_11_out(4 downto 0),
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i,
      p_17_out => ram_wr_en_into_logic
    );
rstblk: entity work.\top_auto_ds_0_reset_blk_ramfifo_2\
     port map (
      Q(1) => RD_RST,
      Q(0) => rd_rst_i(0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[0]\(1) => rstblk_n_2,
      \gcc0.gc0.count_d1_reg[0]\(0) => RST_FULL_FF,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_ramfifo__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \top_auto_ds_0_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_ramfifo__parameterized0\ is
  signal RD_RST : STD_LOGIC;
  signal RST_FULL_FF : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal ram_wr_en_into_logic : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rstblk_n_2 : STD_LOGIC;
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.\top_auto_ds_0_rd_logic\
     port map (
      E(0) => ram_rd_en_i,
      Q(1) => RD_RST,
      Q(0) => rd_rst_i(0),
      clk => clk,
      empty => empty,
      \gc0.count_d1_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => p_11_out(4 downto 0),
      \goreg_dm.dout_i_reg[28]\(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_0_out_0(4 downto 0),
      p_1_out => p_1_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_1\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_12\,
      rd_en => rd_en,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\top_auto_ds_0_wr_logic\
     port map (
      E(0) => ram_wr_en_into_logic,
      Q(1) => rstblk_n_2,
      Q(0) => RST_FULL_FF,
      clk => clk,
      full => full,
      \gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_11_out(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gntv_or_sync_fifo.gl0.rd_n_12\,
      p_1_out => p_1_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.\top_auto_ds_0_memory__parameterized0\
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => p_11_out(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i,
      ram_full_fb_i_reg(0) => ram_wr_en_into_logic
    );
rstblk: entity work.\top_auto_ds_0_reset_blk_ramfifo\
     port map (
      Q(1) => RD_RST,
      Q(0) => rd_rst_i(0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[0]\(1) => rstblk_n_2,
      \gcc0.gc0.count_d1_reg[0]\(0) => RST_FULL_FF,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_ramfifo__parameterized1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_ramfifo__parameterized1\ : entity is "fifo_generator_ramfifo";
end \top_auto_ds_0_fifo_generator_ramfifo__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_ramfifo__parameterized1\ is
  signal RD_RST : STD_LOGIC;
  signal RST_FULL_FF : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_6\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal ram_wr_en_into_logic : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rd_rst_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rstblk_n_2 : STD_LOGIC;
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.\top_auto_ds_0_rd_logic_8\
     port map (
      E(0) => ram_rd_en_i,
      Q(1) => RD_RST,
      Q(0) => rd_rst_i(0),
      clk => clk,
      empty => empty,
      \gc0.count_d1_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gcc0.gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => p_11_out(4 downto 0),
      \goreg_dm.dout_i_reg[28]\(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_0_out_0(4 downto 0),
      p_1_out => p_1_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_1\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_12\,
      rd_en => rd_en,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\top_auto_ds_0_wr_logic_9\
     port map (
      E(0) => ram_wr_en_into_logic,
      Q(1) => rstblk_n_2,
      Q(0) => RST_FULL_FF,
      clk => clk,
      full => full,
      \gc0.count_d1_reg[2]\ => \gntv_or_sync_fifo.gl0.rd_n_1\,
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gpr1.dout_i_reg[1]\(4 downto 0) => p_11_out(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gntv_or_sync_fifo.gl0.rd_n_12\,
      p_1_out => p_1_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.\top_auto_ds_0_memory__parameterized1\
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_6\,
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      \gc0.count_d1_reg[4]\(4 downto 0) => p_0_out_0(4 downto 0),
      \gcc0.gc0.count_d1_reg[4]\(4 downto 0) => p_11_out(4 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i,
      ram_full_fb_i_reg(0) => ram_wr_en_into_logic
    );
rstblk: entity work.\top_auto_ds_0_reset_blk_ramfifo_10\
     port map (
      Q(1) => RD_RST,
      Q(0) => rd_rst_i(0),
      clk => clk,
      \gcc0.gc0.count_d1_reg[0]\(1) => rstblk_n_2,
      \gcc0.gc0.count_d1_reg[0]\(0) => RST_FULL_FF,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_top\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
end \top_auto_ds_0_fifo_generator_top\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_top\ is
begin
\grf.rf\: entity work.\top_auto_ds_0_fifo_generator_ramfifo\
     port map (
      clk => clk,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_top__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \top_auto_ds_0_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\top_auto_ds_0_fifo_generator_ramfifo__parameterized0\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_top__parameterized1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_top__parameterized1\ : entity is "fifo_generator_top";
end \top_auto_ds_0_fifo_generator_top__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_top__parameterized1\ is
begin
\grf.rf\: entity work.\top_auto_ds_0_fifo_generator_ramfifo__parameterized1\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_v13_1_0_synth\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
end \top_auto_ds_0_fifo_generator_v13_1_0_synth\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_v13_1_0_synth\ is
begin
\gconvfifo.rf\: entity work.\top_auto_ds_0_fifo_generator_top\
     port map (
      clk => clk,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized0\ : entity is "fifo_generator_v13_1_0_synth";
end \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized0\ is
begin
\gconvfifo.rf\: entity work.\top_auto_ds_0_fifo_generator_top__parameterized0\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized1\ : entity is "fifo_generator_v13_1_0_synth";
end \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized1\ is
begin
\gconvfifo.rf\: entity work.\top_auto_ds_0_fifo_generator_top__parameterized1\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_v13_1_0\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 9;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 9;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \top_auto_ds_0_fifo_generator_v13_1_0\ : entity is 1;
end \top_auto_ds_0_fifo_generator_v13_1_0\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_v13_1_0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.\top_auto_ds_0_fifo_generator_v13_1_0_synth\
     port map (
      clk => clk,
      din(8 downto 0) => din(8 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 29;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 29;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ : entity is "fifo_generator_v13_1_0";
end \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.\top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized0\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 28 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 4 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 28 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 5 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 29;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 29;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ : entity is "fifo_generator_v13_1_0";
end \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(7) <= \<const0>\;
  m_axis_tid(6) <= \<const0>\;
  m_axis_tid(5) <= \<const0>\;
  m_axis_tid(4) <= \<const0>\;
  m_axis_tid(3) <= \<const0>\;
  m_axis_tid(2) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.\top_auto_ds_0_fifo_generator_v13_1_0_synth__parameterized1\
     port map (
      clk => clk,
      din(28 downto 0) => din(28 downto 0),
      dout(28 downto 0) => dout(28 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    split_ongoing_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    command_ongoing_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    cmd_b_push_block_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fix_need_to_split_q : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    cmd_b_push_block : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    split_ongoing : in STD_LOGIC;
    access_is_incr_q : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \num_transactions_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \S_AXI_ALEN_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AREADY_I_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    \areset_d_reg[0]\ : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \areset_d_reg[1]\ : in STD_LOGIC;
    S_AXI_AID_Q : in STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AREADY_I_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen\;

architecture STRUCTURE of \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_AREADY_I_i_3_n_0 : STD_LOGIC;
  signal S_AXI_AREADY_I_i_5_n_0 : STD_LOGIC;
  signal S_AXI_AREADY_I_i_6_n_0 : STD_LOGIC;
  signal cmd_b_push : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^full\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^split_ongoing_reg\ : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 9;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 9;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of fifo_gen_inst : label is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of fifo_gen_inst_i_10 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_6 : label is "soft_lutpair70";
begin
  E(0) <= \^e\(0);
  SR(0) <= \^sr\(0);
  din(0) <= \^din\(0);
  full <= \^full\;
  split_ongoing_reg <= \^split_ongoing_reg\;
S_AXI_AREADY_I_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out\,
      O => \^sr\(0)
    );
\S_AXI_AREADY_I_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02F2FFFF02F202F2"
    )
        port map (
      I0 => \^e\(0),
      I1 => S_AXI_AREADY_I_i_3_n_0,
      I2 => S_AXI_AREADY_I_reg_0(0),
      I3 => s_axi_awvalid,
      I4 => \areset_d_reg[0]\,
      I5 => areset_d(0),
      O => S_AXI_AREADY_I_reg
    );
S_AXI_AREADY_I_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002A222A222A22"
    )
        port map (
      I0 => \^split_ongoing_reg\,
      I1 => access_is_wrap_q,
      I2 => split_ongoing,
      I3 => wrap_need_to_split_q,
      I4 => access_is_incr_q,
      I5 => CO(0),
      O => S_AXI_AREADY_I_i_3_n_0
    );
\S_AXI_AREADY_I_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => S_AXI_AREADY_I_i_5_n_0,
      I3 => S_AXI_AREADY_I_i_6_n_0,
      I4 => fix_need_to_split_q,
      I5 => access_is_fix_q,
      O => \^split_ongoing_reg\
    );
S_AXI_AREADY_I_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \S_AXI_ALEN_Q_reg[3]\(3),
      I3 => Q(3),
      O => S_AXI_AREADY_I_i_5_n_0
    );
S_AXI_AREADY_I_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \S_AXI_ALEN_Q_reg[3]\(2),
      I4 => Q(1),
      I5 => \S_AXI_ALEN_Q_reg[3]\(1),
      O => S_AXI_AREADY_I_i_6_n_0
    );
cmd_b_push_block_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFABAAAA"
    )
        port map (
      I0 => cmd_b_push_block,
      I1 => \^full\,
      I2 => ram_full_i_reg,
      I3 => cmd_push_block,
      I4 => command_ongoing,
      I5 => S_AXI_AREADY_I_reg_1(0),
      O => cmd_b_push_block_reg
    );
cmd_push_block_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22220002AAAA0000"
    )
        port map (
      I0 => \out\,
      I1 => m_axi_awready,
      I2 => \^full\,
      I3 => ram_full_i_reg,
      I4 => cmd_push_block,
      I5 => command_ongoing,
      O => cmd_push_block_reg
    );
command_ongoing_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDDD0000F000"
    )
        port map (
      I0 => \^e\(0),
      I1 => S_AXI_AREADY_I_i_3_n_0,
      I2 => S_AXI_AREADY_I_reg_0(0),
      I3 => s_axi_awvalid,
      I4 => \areset_d_reg[1]\,
      I5 => command_ongoing,
      O => command_ongoing_reg
    );
fifo_gen_inst: entity work.\top_auto_ds_0_fifo_generator_v13_1_0\
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => CLK,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(8) => \^din\(0),
      din(7 downto 4) => B"0000",
      din(3 downto 0) => p_1_out(3 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      full => \^full\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => \^sr\(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => cmd_b_push,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
fifo_gen_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => S_AXI_AREADY_I_i_3_n_0,
      I1 => wrap_need_to_split_q,
      I2 => incr_need_to_split_q,
      I3 => fix_need_to_split_q,
      O => \^din\(0)
    );
fifo_gen_inst_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^full\,
      I1 => ram_full_i_reg,
      I2 => command_ongoing,
      I3 => cmd_push_block,
      O => wr_en
    );
\fifo_gen_inst_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(3),
      I1 => fix_need_to_split_q,
      I2 => \num_transactions_q_reg[3]\(3),
      I3 => incr_need_to_split_q,
      O => p_1_out(3)
    );
\fifo_gen_inst_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(2),
      I1 => fix_need_to_split_q,
      I2 => \num_transactions_q_reg[3]\(2),
      I3 => incr_need_to_split_q,
      O => p_1_out(2)
    );
\fifo_gen_inst_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(1),
      I1 => fix_need_to_split_q,
      I2 => \num_transactions_q_reg[3]\(1),
      I3 => incr_need_to_split_q,
      O => p_1_out(1)
    );
\fifo_gen_inst_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[3]\(0),
      I1 => fix_need_to_split_q,
      I2 => \num_transactions_q_reg[3]\(0),
      I3 => incr_need_to_split_q,
      I4 => wrap_need_to_split_q,
      O => p_1_out(0)
    );
fifo_gen_inst_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F100"
    )
        port map (
      I0 => \^full\,
      I1 => ram_full_i_reg,
      I2 => cmd_push_block,
      I3 => command_ongoing,
      I4 => cmd_b_push_block,
      O => cmd_b_push
    );
last_incr_split0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => S(2)
    );
last_incr_split0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \num_transactions_q_reg[3]\(3),
      I3 => Q(3),
      O => S(1)
    );
last_incr_split0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \num_transactions_q_reg[3]\(2),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \num_transactions_q_reg[3]\(1),
      I4 => Q(0),
      I5 => \num_transactions_q_reg[3]\(0),
      O => S(0)
    );
\queue_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => S_AXI_AID_Q,
      I1 => \^full\,
      I2 => ram_full_i_reg,
      I3 => command_ongoing,
      I4 => cmd_push_block,
      I5 => s_axi_bid(0),
      O => \queue_id_reg[0]\
    );
split_ongoing_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA020000"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \^full\,
      I2 => ram_full_i_reg,
      I3 => cmd_push_block,
      I4 => command_ongoing,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    \m_axi_awsize[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_mi_addr_reg[8]\ : out STD_LOGIC;
    \next_mi_addr_reg[8]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 16 downto 0 );
    wr_en : in STD_LOGIC;
    fix_need_to_split_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    split_ongoing : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \downsized_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    \pushed_commands_reg[7]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    si_full_size_q : in STD_LOGIC;
    size_mask_q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \S_AXI_AADDR_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \split_addr_mask_q_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fix_len_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \unalignment_addr_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \wrap_unaligned_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    legal_wrap_len_q : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wlast : in STD_LOGIC;
    first_mi_word : in STD_LOGIC;
    \length_counter_1_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[8]\ : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \current_word_1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    first_word_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized0\ : entity is "axi_data_fifo_v2_1_7_fifo_gen";
end \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized0\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cmd_length_i_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_9_n_0\ : STD_LOGIC;
  signal cmd_length_i_carry_i_10_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_i_11_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_i_12_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_i_13_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_i_14_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_i_15_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_i_16_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_i_9_n_0 : STD_LOGIC;
  signal cmd_size_ii : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_word_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \current_word_1[1]_i_3_n_0\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal empty : STD_LOGIC;
  signal fifo_gen_inst_i_12_n_0 : STD_LOGIC;
  signal fifo_gen_inst_i_13_n_0 : STD_LOGIC;
  signal fifo_gen_inst_n_1 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \^m_axi_awsize[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \m_axi_wdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_wdata[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^next_mi_addr_reg[8]\ : STD_LOGIC;
  signal \^next_mi_addr_reg[8]_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 28 downto 18 );
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_5_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_8_n_0 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_9_n_0 : STD_LOGIC;
  signal wr_cmd_first_word : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_cmd_mask : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_cmd_mirror : STD_LOGIC;
  signal wr_cmd_offset : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wr_cmd_ready : STD_LOGIC;
  signal wr_cmd_size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_10\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_12\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_15\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_18\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_19\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_9\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of cmd_length_i_carry_i_12 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of cmd_length_i_carry_i_15 : label is "soft_lutpair78";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 29;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 29;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of fifo_gen_inst : label is "true";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_11 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_14 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_15 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of first_word_i_1 : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0_i_1 : label is "soft_lutpair84";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  dout(8 downto 0) <= \^dout\(8 downto 0);
  full <= \^full\;
  \m_axi_awsize[2]\(2 downto 0) <= \^m_axi_awsize[2]\(2 downto 0);
  \next_mi_addr_reg[8]\ <= \^next_mi_addr_reg[8]\;
  \next_mi_addr_reg[8]_0\ <= \^next_mi_addr_reg[8]_0\;
\cmd_length_i_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(6),
      I1 => din(15),
      I2 => \downsized_len_q_reg[7]\(6),
      I3 => \cmd_length_i_carry__0_i_8_n_0\,
      I4 => \cmd_length_i_carry__0_i_9_n_0\,
      O => \gpr1.dout_i_reg[7]\(2)
    );
\cmd_length_i_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => Q(5),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_10_n_0\
    );
\cmd_length_i_carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(4),
      I1 => fix_need_to_split_q,
      I2 => Q(4),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_11_n_0\
    );
\cmd_length_i_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(7),
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_12_n_0\
    );
\cmd_length_i_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => Q(7),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_13_n_0\
    );
\cmd_length_i_carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(6),
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_14_n_0\
    );
\cmd_length_i_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(5),
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_15_n_0\
    );
\cmd_length_i_carry__0_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF55CFCF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(4),
      I1 => \cmd_length_i_carry__0_i_19_n_0\,
      I2 => \unalignment_addr_q_reg[4]\(4),
      I3 => split_ongoing,
      I4 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_16_n_0\
    );
\cmd_length_i_carry__0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => incr_need_to_split_q,
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => legal_wrap_len_q,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_17_n_0\
    );
\cmd_length_i_carry__0_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wrap_need_to_split_q,
      I1 => split_ongoing,
      O => \cmd_length_i_carry__0_i_18_n_0\
    );
\cmd_length_i_carry__0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD0D"
    )
        port map (
      I0 => access_is_incr_q,
      I1 => din(15),
      I2 => incr_need_to_split_q,
      I3 => split_ongoing,
      I4 => fix_need_to_split_q,
      O => \cmd_length_i_carry__0_i_19_n_0\
    );
\cmd_length_i_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(5),
      I1 => din(15),
      I2 => \downsized_len_q_reg[7]\(5),
      I3 => \cmd_length_i_carry__0_i_8_n_0\,
      I4 => \cmd_length_i_carry__0_i_10_n_0\,
      O => \gpr1.dout_i_reg[7]\(1)
    );
\cmd_length_i_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(4),
      I1 => din(15),
      I2 => \downsized_len_q_reg[7]\(4),
      I3 => \cmd_length_i_carry__0_i_8_n_0\,
      I4 => \cmd_length_i_carry__0_i_11_n_0\,
      O => \gpr1.dout_i_reg[7]\(0)
    );
\cmd_length_i_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_12_n_0\,
      I1 => \cmd_length_i_carry__0_i_13_n_0\,
      I2 => \cmd_length_i_carry__0_i_8_n_0\,
      I3 => \downsized_len_q_reg[7]\(7),
      I4 => din(15),
      I5 => \S_AXI_ALEN_Q_reg[7]\(7),
      O => S(3)
    );
\cmd_length_i_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_9_n_0\,
      I1 => \cmd_length_i_carry__0_i_8_n_0\,
      I2 => \downsized_len_q_reg[7]\(6),
      I3 => din(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(6),
      I5 => \cmd_length_i_carry__0_i_14_n_0\,
      O => S(2)
    );
\cmd_length_i_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_10_n_0\,
      I1 => \cmd_length_i_carry__0_i_8_n_0\,
      I2 => \downsized_len_q_reg[7]\(5),
      I3 => din(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(5),
      I5 => \cmd_length_i_carry__0_i_15_n_0\,
      O => S(1)
    );
\cmd_length_i_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_11_n_0\,
      I1 => \cmd_length_i_carry__0_i_8_n_0\,
      I2 => \downsized_len_q_reg[7]\(4),
      I3 => din(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(4),
      I5 => \cmd_length_i_carry__0_i_16_n_0\,
      O => S(0)
    );
\cmd_length_i_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEAEAEEEAE"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_17_n_0\,
      I1 => access_is_incr_q,
      I2 => \pushed_commands_reg[7]\,
      I3 => access_is_wrap_q,
      I4 => \cmd_length_i_carry__0_i_18_n_0\,
      I5 => CO(0),
      O => \cmd_length_i_carry__0_i_8_n_0\
    );
\cmd_length_i_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => Q(6),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_9_n_0\
    );
cmd_length_i_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(3),
      I1 => din(15),
      I2 => \downsized_len_q_reg[7]\(3),
      I3 => \cmd_length_i_carry__0_i_8_n_0\,
      I4 => cmd_length_i_carry_i_9_n_0,
      O => DI(3)
    );
cmd_length_i_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(2),
      I1 => fix_need_to_split_q,
      I2 => Q(2),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => cmd_length_i_carry_i_10_n_0
    );
cmd_length_i_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(1),
      I1 => fix_need_to_split_q,
      I2 => Q(1),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => cmd_length_i_carry_i_11_n_0
    );
cmd_length_i_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(0),
      I1 => fix_need_to_split_q,
      I2 => Q(0),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => cmd_length_i_carry_i_12_n_0
    );
cmd_length_i_carry_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF55CFCF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(3),
      I1 => \cmd_length_i_carry__0_i_19_n_0\,
      I2 => \unalignment_addr_q_reg[4]\(3),
      I3 => split_ongoing,
      I4 => wrap_need_to_split_q,
      O => cmd_length_i_carry_i_13_n_0
    );
cmd_length_i_carry_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF55CFCF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(2),
      I1 => \cmd_length_i_carry__0_i_19_n_0\,
      I2 => \unalignment_addr_q_reg[4]\(2),
      I3 => split_ongoing,
      I4 => wrap_need_to_split_q,
      O => cmd_length_i_carry_i_14_n_0
    );
cmd_length_i_carry_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDD0FDD"
    )
        port map (
      I0 => \unalignment_addr_q_reg[4]\(1),
      I1 => \cmd_length_i_carry__0_i_19_n_0\,
      I2 => \wrap_unaligned_len_q_reg[7]\(1),
      I3 => wrap_need_to_split_q,
      I4 => split_ongoing,
      O => cmd_length_i_carry_i_15_n_0
    );
cmd_length_i_carry_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F704F7F7"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(0),
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \cmd_length_i_carry__0_i_19_n_0\,
      I4 => \unalignment_addr_q_reg[4]\(0),
      O => cmd_length_i_carry_i_16_n_0
    );
cmd_length_i_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(2),
      I1 => din(15),
      I2 => \downsized_len_q_reg[7]\(2),
      I3 => \cmd_length_i_carry__0_i_8_n_0\,
      I4 => cmd_length_i_carry_i_10_n_0,
      O => DI(2)
    );
cmd_length_i_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(1),
      I1 => din(15),
      I2 => \downsized_len_q_reg[7]\(1),
      I3 => \cmd_length_i_carry__0_i_8_n_0\,
      I4 => cmd_length_i_carry_i_11_n_0,
      O => DI(1)
    );
cmd_length_i_carry_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(0),
      I1 => din(15),
      I2 => \downsized_len_q_reg[7]\(0),
      I3 => \cmd_length_i_carry__0_i_8_n_0\,
      I4 => cmd_length_i_carry_i_12_n_0,
      O => DI(0)
    );
cmd_length_i_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => cmd_length_i_carry_i_9_n_0,
      I1 => \cmd_length_i_carry__0_i_8_n_0\,
      I2 => \downsized_len_q_reg[7]\(3),
      I3 => din(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(3),
      I5 => cmd_length_i_carry_i_13_n_0,
      O => \gpr1.dout_i_reg[7]_0\(3)
    );
cmd_length_i_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => cmd_length_i_carry_i_10_n_0,
      I1 => \cmd_length_i_carry__0_i_8_n_0\,
      I2 => \downsized_len_q_reg[7]\(2),
      I3 => din(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(2),
      I5 => cmd_length_i_carry_i_14_n_0,
      O => \gpr1.dout_i_reg[7]_0\(2)
    );
cmd_length_i_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => cmd_length_i_carry_i_11_n_0,
      I1 => \cmd_length_i_carry__0_i_8_n_0\,
      I2 => \downsized_len_q_reg[7]\(1),
      I3 => din(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(1),
      I5 => cmd_length_i_carry_i_15_n_0,
      O => \gpr1.dout_i_reg[7]_0\(1)
    );
cmd_length_i_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => cmd_length_i_carry_i_12_n_0,
      I1 => \cmd_length_i_carry__0_i_8_n_0\,
      I2 => \downsized_len_q_reg[7]\(0),
      I3 => din(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(0),
      I5 => cmd_length_i_carry_i_16_n_0,
      O => \gpr1.dout_i_reg[7]_0\(0)
    );
cmd_length_i_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(3),
      I1 => fix_need_to_split_q,
      I2 => Q(3),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => cmd_length_i_carry_i_9_n_0
    );
\current_word_1[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222228"
    )
        port map (
      I0 => wr_cmd_mask(0),
      I1 => \current_word_1[1]_i_3_n_0\,
      I2 => cmd_size_ii(1),
      I3 => cmd_size_ii(0),
      I4 => cmd_size_ii(2),
      O => \^d\(0)
    );
\current_word_1[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888828888888282"
    )
        port map (
      I0 => wr_cmd_mask(1),
      I1 => \current_word_1[1]_i_2_n_0\,
      I2 => cmd_size_ii(1),
      I3 => cmd_size_ii(0),
      I4 => cmd_size_ii(2),
      I5 => \current_word_1[1]_i_3_n_0\,
      O => \^d\(1)
    );
\current_word_1[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => wr_cmd_first_word(1),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[3]\(1),
      O => \current_word_1[1]_i_2_n_0\
    );
\current_word_1[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => wr_cmd_first_word(0),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[3]\(0),
      O => \current_word_1[1]_i_3_n_0\
    );
\current_word_1[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828882828222"
    )
        port map (
      I0 => wr_cmd_mask(2),
      I1 => s_axi_wready_INST_0_i_9_n_0,
      I2 => wr_cmd_first_word(2),
      I3 => first_mi_word,
      I4 => \^dout\(8),
      I5 => \current_word_1_reg[3]\(2),
      O => \^d\(2)
    );
\current_word_1[3]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_3_n_0,
      O => \^d\(3)
    );
fifo_gen_inst: entity work.\top_auto_ds_0_fifo_generator_v13_1_0__parameterized0\
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => CLK,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(28) => p_0_out(28),
      din(27 downto 26) => din(16 downto 15),
      din(25 downto 18) => p_0_out(25 downto 18),
      din(17 downto 14) => din(14 downto 11),
      din(13 downto 11) => \^m_axi_awsize[2]\(2 downto 0),
      din(10 downto 0) => din(10 downto 0),
      dout(28) => \^dout\(8),
      dout(27) => fifo_gen_inst_n_1,
      dout(26) => wr_cmd_mirror,
      dout(25 downto 22) => wr_cmd_first_word(3 downto 0),
      dout(21 downto 18) => wr_cmd_offset(3 downto 0),
      dout(17 downto 14) => wr_cmd_mask(3 downto 0),
      dout(13 downto 11) => cmd_size_ii(2 downto 0),
      dout(10 downto 3) => \^dout\(7 downto 0),
      dout(2 downto 0) => wr_cmd_size(2 downto 0),
      empty => empty,
      full => \^full\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => wr_cmd_ready,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => SR(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
fifo_gen_inst_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => empty,
      I2 => m_axi_wready,
      I3 => m_axi_wlast,
      O => wr_cmd_ready
    );
fifo_gen_inst_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404444CCCCCCCC"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => \S_AXI_AADDR_Q_reg[3]\(3),
      I2 => \split_addr_mask_q_reg[3]\(0),
      I3 => si_full_size_q,
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => fifo_gen_inst_i_12_n_0
    );
fifo_gen_inst_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404444CCCCCCCC"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => \S_AXI_AADDR_Q_reg[3]\(2),
      I2 => din(15),
      I3 => si_full_size_q,
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => fifo_gen_inst_i_13_n_0
    );
fifo_gen_inst_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => access_is_incr_q,
      I1 => split_ongoing,
      O => \^next_mi_addr_reg[8]\
    );
fifo_gen_inst_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => split_ongoing,
      I1 => access_is_wrap_q,
      O => \^next_mi_addr_reg[8]_0\
    );
\fifo_gen_inst_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => din(15),
      I1 => access_is_fix_q,
      O => p_0_out(28)
    );
fifo_gen_inst_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => fifo_gen_inst_i_12_n_0,
      I1 => din(14),
      I2 => size_mask_q(2),
      O => p_0_out(25)
    );
fifo_gen_inst_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => fifo_gen_inst_i_13_n_0,
      I1 => din(13),
      I2 => size_mask_q(2),
      O => p_0_out(24)
    );
fifo_gen_inst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => \S_AXI_AADDR_Q_reg[3]\(1),
      I3 => \^next_mi_addr_reg[8]_0\,
      I4 => din(12),
      I5 => size_mask_q(1),
      O => p_0_out(23)
    );
fifo_gen_inst_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => \S_AXI_AADDR_Q_reg[3]\(0),
      I3 => \^next_mi_addr_reg[8]_0\,
      I4 => din(11),
      I5 => size_mask_q(0),
      O => p_0_out(22)
    );
\fifo_gen_inst_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => \split_addr_mask_q_reg[3]\(0),
      I3 => \S_AXI_AADDR_Q_reg[3]\(3),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => din(14),
      O => p_0_out(21)
    );
\fifo_gen_inst_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => din(15),
      I3 => \S_AXI_AADDR_Q_reg[3]\(2),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => din(13),
      O => p_0_out(20)
    );
fifo_gen_inst_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => size_mask_q(1),
      I3 => \S_AXI_AADDR_Q_reg[3]\(1),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => din(12),
      O => p_0_out(19)
    );
fifo_gen_inst_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => size_mask_q(0),
      I3 => \S_AXI_AADDR_Q_reg[3]\(0),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => din(11),
      O => p_0_out(18)
    );
first_word_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axi_wready,
      I1 => empty,
      I2 => s_axi_wvalid,
      O => E(0)
    );
\m_axi_awsize[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => din(15),
      I1 => din(0),
      O => \^m_axi_awsize[2]\(0)
    );
\m_axi_awsize[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => din(1),
      I1 => din(15),
      O => \^m_axi_awsize[2]\(1)
    );
\m_axi_awsize[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => din(15),
      I1 => din(2),
      O => \^m_axi_awsize[2]\(2)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888A"
    )
        port map (
      I0 => command_ongoing,
      I1 => cmd_push_block,
      I2 => \^full\,
      I3 => ram_full_i_reg,
      O => m_axi_awvalid
    );
\m_axi_wdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(96),
      I1 => s_axi_wdata(32),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(64),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(0),
      O => m_axi_wdata(0)
    );
\m_axi_wdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(106),
      I1 => s_axi_wdata(42),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(74),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(10),
      O => m_axi_wdata(10)
    );
\m_axi_wdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(107),
      I1 => s_axi_wdata(43),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(75),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(11),
      O => m_axi_wdata(11)
    );
\m_axi_wdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(108),
      I1 => s_axi_wdata(44),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(76),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(12),
      O => m_axi_wdata(12)
    );
\m_axi_wdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(109),
      I1 => s_axi_wdata(45),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(77),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(13),
      O => m_axi_wdata(13)
    );
\m_axi_wdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(110),
      I1 => s_axi_wdata(46),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(78),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(14),
      O => m_axi_wdata(14)
    );
\m_axi_wdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(111),
      I1 => s_axi_wdata(47),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(79),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(15),
      O => m_axi_wdata(15)
    );
\m_axi_wdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(112),
      I1 => s_axi_wdata(48),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(80),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(16),
      O => m_axi_wdata(16)
    );
\m_axi_wdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(113),
      I1 => s_axi_wdata(49),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(81),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(17),
      O => m_axi_wdata(17)
    );
\m_axi_wdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(114),
      I1 => s_axi_wdata(50),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(82),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(18),
      O => m_axi_wdata(18)
    );
\m_axi_wdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(115),
      I1 => s_axi_wdata(51),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(83),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(19),
      O => m_axi_wdata(19)
    );
\m_axi_wdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(97),
      I1 => s_axi_wdata(33),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(65),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(1),
      O => m_axi_wdata(1)
    );
\m_axi_wdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(116),
      I1 => s_axi_wdata(52),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(84),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(20),
      O => m_axi_wdata(20)
    );
\m_axi_wdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(117),
      I1 => s_axi_wdata(53),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(85),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(21),
      O => m_axi_wdata(21)
    );
\m_axi_wdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(118),
      I1 => s_axi_wdata(54),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(86),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(22),
      O => m_axi_wdata(22)
    );
\m_axi_wdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(119),
      I1 => s_axi_wdata(55),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(87),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(23),
      O => m_axi_wdata(23)
    );
\m_axi_wdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(120),
      I1 => s_axi_wdata(56),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(88),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(24),
      O => m_axi_wdata(24)
    );
\m_axi_wdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(121),
      I1 => s_axi_wdata(57),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(89),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(25),
      O => m_axi_wdata(25)
    );
\m_axi_wdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(122),
      I1 => s_axi_wdata(58),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(90),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(26),
      O => m_axi_wdata(26)
    );
\m_axi_wdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(123),
      I1 => s_axi_wdata(59),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(91),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(27),
      O => m_axi_wdata(27)
    );
\m_axi_wdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(124),
      I1 => s_axi_wdata(60),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(92),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(28),
      O => m_axi_wdata(28)
    );
\m_axi_wdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(125),
      I1 => s_axi_wdata(61),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(93),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(29),
      O => m_axi_wdata(29)
    );
\m_axi_wdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(98),
      I1 => s_axi_wdata(34),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(66),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(2),
      O => m_axi_wdata(2)
    );
\m_axi_wdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(126),
      I1 => s_axi_wdata(62),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(94),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(30),
      O => m_axi_wdata(30)
    );
\m_axi_wdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(127),
      I1 => s_axi_wdata(63),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(95),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(31),
      O => m_axi_wdata(31)
    );
\m_axi_wdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999A99956665666A"
    )
        port map (
      I0 => \m_axi_wdata[31]_INST_0_i_3_n_0\,
      I1 => wr_cmd_first_word(2),
      I2 => first_mi_word,
      I3 => \^dout\(8),
      I4 => \current_word_1_reg[3]\(2),
      I5 => wr_cmd_offset(2),
      O => \m_axi_wdata[31]_INST_0_i_1_n_0\
    );
\m_axi_wdata[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => \m_axi_wdata[31]_INST_0_i_3_n_0\,
      I1 => s_axi_wready_INST_0_i_8_n_0,
      I2 => wr_cmd_offset(2),
      I3 => \m_axi_wdata[31]_INST_0_i_4_n_0\,
      I4 => wr_cmd_offset(3),
      O => \m_axi_wdata[31]_INST_0_i_2_n_0\
    );
\m_axi_wdata[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE200E2000000"
    )
        port map (
      I0 => \current_word_1_reg[3]\(0),
      I1 => first_word_reg,
      I2 => wr_cmd_first_word(0),
      I3 => wr_cmd_offset(0),
      I4 => wr_cmd_offset(1),
      I5 => \current_word_1[1]_i_2_n_0\,
      O => \m_axi_wdata[31]_INST_0_i_3_n_0\
    );
\m_axi_wdata[31]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => wr_cmd_first_word(3),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[3]\(3),
      O => \m_axi_wdata[31]_INST_0_i_4_n_0\
    );
\m_axi_wdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(99),
      I1 => s_axi_wdata(35),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(67),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(3),
      O => m_axi_wdata(3)
    );
\m_axi_wdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(100),
      I1 => s_axi_wdata(36),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(68),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(4),
      O => m_axi_wdata(4)
    );
\m_axi_wdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(101),
      I1 => s_axi_wdata(37),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(69),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(5),
      O => m_axi_wdata(5)
    );
\m_axi_wdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(102),
      I1 => s_axi_wdata(38),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(70),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(6),
      O => m_axi_wdata(6)
    );
\m_axi_wdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(103),
      I1 => s_axi_wdata(39),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(71),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(7),
      O => m_axi_wdata(7)
    );
\m_axi_wdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(104),
      I1 => s_axi_wdata(40),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(72),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(8),
      O => m_axi_wdata(8)
    );
\m_axi_wdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wdata(105),
      I1 => s_axi_wdata(41),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wdata(73),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wdata(9),
      O => m_axi_wdata(9)
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(12),
      I1 => s_axi_wstrb(4),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wstrb(8),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wstrb(0),
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(13),
      I1 => s_axi_wstrb(5),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wstrb(9),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wstrb(1),
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(14),
      I1 => s_axi_wstrb(6),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wstrb(10),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wstrb(2),
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_wstrb(15),
      I1 => s_axi_wstrb(7),
      I2 => \m_axi_wdata[31]_INST_0_i_1_n_0\,
      I3 => s_axi_wstrb(11),
      I4 => \m_axi_wdata[31]_INST_0_i_2_n_0\,
      I5 => s_axi_wstrb(3),
      O => m_axi_wstrb(3)
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => empty,
      O => m_axi_wvalid
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888A8AA"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => s_axi_wready_INST_0_i_2_n_0,
      I2 => s_axi_wready_INST_0_i_3_n_0,
      I3 => wr_cmd_size(2),
      I4 => s_axi_wready_INST_0_i_4_n_0,
      I5 => s_axi_wready_INST_0_i_5_n_0,
      O => s_axi_wready
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_wready,
      I1 => empty,
      O => s_axi_wready_INST_0_i_1_n_0
    );
s_axi_wready_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4700"
    )
        port map (
      I0 => \^dout\(7),
      I1 => first_mi_word,
      I2 => \length_counter_1_reg[7]\(0),
      I3 => \goreg_dm.dout_i_reg[8]\,
      I4 => wr_cmd_mirror,
      I5 => \^dout\(8),
      O => s_axi_wready_INST_0_i_2_n_0
    );
s_axi_wready_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4747B847FFFFFFFF"
    )
        port map (
      I0 => wr_cmd_first_word(3),
      I1 => first_word_reg,
      I2 => \current_word_1_reg[3]\(3),
      I3 => s_axi_wready_INST_0_i_8_n_0,
      I4 => s_axi_wready_INST_0_i_9_n_0,
      I5 => wr_cmd_mask(3),
      O => s_axi_wready_INST_0_i_3_n_0
    );
s_axi_wready_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090900090009000"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_8_n_0,
      I1 => s_axi_wready_INST_0_i_9_n_0,
      I2 => wr_cmd_mask(2),
      I3 => wr_cmd_size(2),
      I4 => wr_cmd_size(1),
      I5 => wr_cmd_size(0),
      O => s_axi_wready_INST_0_i_4_n_0
    );
s_axi_wready_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFCA8A8"
    )
        port map (
      I0 => \^d\(1),
      I1 => wr_cmd_size(2),
      I2 => wr_cmd_size(1),
      I3 => wr_cmd_size(0),
      I4 => \^d\(0),
      O => s_axi_wready_INST_0_i_5_n_0
    );
s_axi_wready_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => wr_cmd_first_word(2),
      I1 => first_mi_word,
      I2 => \^dout\(8),
      I3 => \current_word_1_reg[3]\(2),
      O => s_axi_wready_INST_0_i_8_n_0
    );
s_axi_wready_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC2FFF3"
    )
        port map (
      I0 => \current_word_1[1]_i_3_n_0\,
      I1 => cmd_size_ii(1),
      I2 => cmd_size_ii(0),
      I3 => cmd_size_ii(2),
      I4 => \current_word_1[1]_i_2_n_0\,
      O => s_axi_wready_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    din : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_mi_addr_reg[8]\ : out STD_LOGIC;
    \next_mi_addr_reg[8]_0\ : out STD_LOGIC;
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ : out STD_LOGIC;
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    first_mi_word_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \S_AXI_RRESP_ACC_reg[0]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    command_ongoing_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    access_fit_mi_side_q_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rd_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fix_need_to_split_q : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    \wrap_rest_len_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    split_ongoing : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \downsized_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \num_transactions_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    si_full_size_q : in STD_LOGIC;
    size_mask_q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \S_AXI_AADDR_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \split_addr_mask_q_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fix_len_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \unalignment_addr_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \wrap_unaligned_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    legal_wrap_len_q : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    first_word : in STD_LOGIC;
    \length_counter_1_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[8]\ : in STD_LOGIC;
    \current_word_1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \S_AXI_RRESP_ACC_reg[0]_0\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AREADY_I_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    \areset_d_reg[1]\ : in STD_LOGIC;
    S_AXI_AID_Q : in STD_LOGIC;
    s_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized1\ : entity is "axi_data_fifo_v2_1_7_fifo_gen";
end \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized1\ is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_AREADY_I_i_2_n_0 : STD_LOGIC;
  signal \S_AXI_AREADY_I_i_3__0_n_0\ : STD_LOGIC;
  signal S_AXI_AREADY_I_i_4_n_0 : STD_LOGIC;
  signal \S_AXI_AREADY_I_i_5__0_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].S_AXI_RDATA_II[31]_i_4_n_0\ : STD_LOGIC;
  signal \WORD_LANE[0].S_AXI_RDATA_II[31]_i_5_n_0\ : STD_LOGIC;
  signal \^word_lane[0].s_axi_rdata_ii_reg[31]_0\ : STD_LOGIC;
  signal \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0\ : STD_LOGIC;
  signal \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_10__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_11__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_12__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_13__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_14__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_15__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_16__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_17__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_18__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_19__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_i_9__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_10__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_11__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_12__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_13__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_14__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_15__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_16__0_n_0\ : STD_LOGIC;
  signal \cmd_length_i_carry_i_9__0_n_0\ : STD_LOGIC;
  signal cmd_push : STD_LOGIC;
  signal cmd_size_ii : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_word_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \current_word_1[2]_i_3_n_0\ : STD_LOGIC;
  signal \current_word_1[2]_i_4_n_0\ : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^dout\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal empty : STD_LOGIC;
  signal \fifo_gen_inst_i_13__0_n_0\ : STD_LOGIC;
  signal \fifo_gen_inst_i_14__0_n_0\ : STD_LOGIC;
  signal full : STD_LOGIC;
  signal m_axi_rready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^next_mi_addr_reg[8]\ : STD_LOGIC;
  signal \^next_mi_addr_reg[8]_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 28 downto 18 );
  signal rd_cmd_first_word : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_cmd_fix : STD_LOGIC;
  signal rd_cmd_mask : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_cmd_offset : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_cmd_size : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rd_cmd_split : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[127]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rresp[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_2_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_3_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_4_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_6_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_7_n_0 : STD_LOGIC;
  signal s_axi_rvalid_INST_0_i_8_n_0 : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \WORD_LANE[0].S_AXI_RDATA_II[31]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WORD_LANE[0].S_AXI_RDATA_II[31]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_10__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_13__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_14__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_15__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_17__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cmd_length_i_carry__0_i_18__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cmd_length_i_carry_i_12__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cmd_length_i_carry_i_15__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cmd_push_block_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \current_word_1[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_word_1[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current_word_1[2]_i_4\ : label is "soft_lutpair12";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 29;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 29;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "virtex7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of fifo_gen_inst : label is "true";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_11__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_15__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_16 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \queue_id[0]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[127]_INST_0_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[127]_INST_0_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[127]_INST_0_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rdata[127]_INST_0_i_8\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0_i_6 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \split_ongoing_i_1__0\ : label is "soft_lutpair16";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  E(0) <= \^e\(0);
  \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ <= \^word_lane[0].s_axi_rdata_ii_reg[31]_0\;
  din(3 downto 0) <= \^din\(3 downto 0);
  dout(8 downto 0) <= \^dout\(8 downto 0);
  \next_mi_addr_reg[8]\ <= \^next_mi_addr_reg[8]\;
  \next_mi_addr_reg[8]_0\ <= \^next_mi_addr_reg[8]_0\;
\S_AXI_AREADY_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444F4FFFF44F4"
    )
        port map (
      I0 => areset_d(0),
      I1 => areset_d(1),
      I2 => \^e\(0),
      I3 => S_AXI_AREADY_I_i_2_n_0,
      I4 => S_AXI_AREADY_I_reg_0(0),
      I5 => s_axi_arvalid,
      O => S_AXI_AREADY_I_reg
    );
S_AXI_AREADY_I_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A2A2A002A002A"
    )
        port map (
      I0 => \S_AXI_AREADY_I_i_3__0_n_0\,
      I1 => access_is_incr_q,
      I2 => CO(0),
      I3 => access_is_wrap_q,
      I4 => split_ongoing,
      I5 => wrap_need_to_split_q,
      O => S_AXI_AREADY_I_i_2_n_0
    );
\S_AXI_AREADY_I_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000FFFFFFFF"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => S_AXI_AREADY_I_i_4_n_0,
      I3 => \S_AXI_AREADY_I_i_5__0_n_0\,
      I4 => fix_need_to_split_q,
      I5 => access_is_fix_q,
      O => \S_AXI_AREADY_I_i_3__0_n_0\
    );
S_AXI_AREADY_I_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFE"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \S_AXI_ALEN_Q_reg[7]\(3),
      I3 => Q(3),
      O => S_AXI_AREADY_I_i_4_n_0
    );
\S_AXI_AREADY_I_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \S_AXI_ALEN_Q_reg[7]\(1),
      I4 => Q(2),
      I5 => \S_AXI_ALEN_Q_reg[7]\(2),
      O => \S_AXI_AREADY_I_i_5__0_n_0\
    );
\WORD_LANE[0].S_AXI_RDATA_II[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5D5DD55555555"
    )
        port map (
      I0 => \out\,
      I1 => s_axi_rready,
      I2 => m_axi_rready_INST_0_i_1_n_0,
      I3 => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0\,
      I4 => s_axi_rvalid_INST_0_i_2_n_0,
      I5 => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\,
      O => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBA000000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => m_axi_rready_INST_0_i_1_n_0,
      I2 => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0\,
      I3 => s_axi_rvalid_INST_0_i_2_n_0,
      I4 => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\,
      I5 => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_4_n_0\,
      O => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\(0)
    );
\WORD_LANE[0].S_AXI_RDATA_II[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8808000000808888"
    )
        port map (
      I0 => rd_cmd_size(2),
      I1 => rd_cmd_mask(3),
      I2 => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_5_n_0\,
      I3 => \current_word_1[2]_i_2_n_0\,
      I4 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      I5 => \s_axi_rdata[127]_INST_0_i_5_n_0\,
      O => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0\
    );
\WORD_LANE[0].S_AXI_RDATA_II[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90060990"
    )
        port map (
      I0 => rd_cmd_offset(3),
      I1 => \s_axi_rdata[127]_INST_0_i_5_n_0\,
      I2 => rd_cmd_offset(2),
      I3 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      I4 => \s_axi_rdata[127]_INST_0_i_4_n_0\,
      O => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_4_n_0\
    );
\WORD_LANE[0].S_AXI_RDATA_II[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEFF"
    )
        port map (
      I0 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      I1 => cmd_size_ii(2),
      I2 => cmd_size_ii(1),
      I3 => cmd_size_ii(0),
      I4 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      O => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_5_n_0\
    );
\WORD_LANE[1].S_AXI_RDATA_II[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBA000000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => m_axi_rready_INST_0_i_1_n_0,
      I2 => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0\,
      I3 => s_axi_rvalid_INST_0_i_2_n_0,
      I4 => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\,
      I5 => \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0\,
      O => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\(0)
    );
\WORD_LANE[1].S_AXI_RDATA_II[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609006"
    )
        port map (
      I0 => rd_cmd_offset(3),
      I1 => \s_axi_rdata[127]_INST_0_i_5_n_0\,
      I2 => rd_cmd_offset(2),
      I3 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      I4 => \s_axi_rdata[127]_INST_0_i_4_n_0\,
      O => \WORD_LANE[1].S_AXI_RDATA_II[63]_i_2_n_0\
    );
\WORD_LANE[2].S_AXI_RDATA_II[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBA000000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => m_axi_rready_INST_0_i_1_n_0,
      I2 => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0\,
      I3 => s_axi_rvalid_INST_0_i_2_n_0,
      I4 => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\,
      I5 => \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0\,
      O => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\(0)
    );
\WORD_LANE[2].S_AXI_RDATA_II[95]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60060690"
    )
        port map (
      I0 => rd_cmd_offset(3),
      I1 => \s_axi_rdata[127]_INST_0_i_5_n_0\,
      I2 => \s_axi_rdata[127]_INST_0_i_4_n_0\,
      I3 => rd_cmd_offset(2),
      I4 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      O => \WORD_LANE[2].S_AXI_RDATA_II[95]_i_2_n_0\
    );
\WORD_LANE[3].S_AXI_RDATA_II[127]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBA000000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => m_axi_rready_INST_0_i_1_n_0,
      I2 => \WORD_LANE[0].S_AXI_RDATA_II[31]_i_3_n_0\,
      I3 => s_axi_rvalid_INST_0_i_2_n_0,
      I4 => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\,
      I5 => \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0\,
      O => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\(0)
    );
\WORD_LANE[3].S_AXI_RDATA_II[127]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06909009"
    )
        port map (
      I0 => rd_cmd_offset(3),
      I1 => \s_axi_rdata[127]_INST_0_i_5_n_0\,
      I2 => \s_axi_rdata[127]_INST_0_i_4_n_0\,
      I3 => rd_cmd_offset(2),
      I4 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      O => \WORD_LANE[3].S_AXI_RDATA_II[127]_i_2_n_0\
    );
\cmd_length_i_carry__0_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => \wrap_rest_len_reg[7]\(5),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_10__0_n_0\
    );
\cmd_length_i_carry__0_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(4),
      I1 => fix_need_to_split_q,
      I2 => \wrap_rest_len_reg[7]\(4),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_11__0_n_0\
    );
\cmd_length_i_carry__0_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(7),
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_12__0_n_0\
    );
\cmd_length_i_carry__0_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => \wrap_rest_len_reg[7]\(7),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_13__0_n_0\
    );
\cmd_length_i_carry__0_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(6),
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_14__0_n_0\
    );
\cmd_length_i_carry__0_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(5),
      I1 => split_ongoing,
      I2 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_15__0_n_0\
    );
\cmd_length_i_carry__0_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF55CFCF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(4),
      I1 => \cmd_length_i_carry__0_i_19__0_n_0\,
      I2 => \unalignment_addr_q_reg[4]\(4),
      I3 => split_ongoing,
      I4 => wrap_need_to_split_q,
      O => \cmd_length_i_carry__0_i_16__0_n_0\
    );
\cmd_length_i_carry__0_i_17__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => incr_need_to_split_q,
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => legal_wrap_len_q,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_17__0_n_0\
    );
\cmd_length_i_carry__0_i_18__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wrap_need_to_split_q,
      I1 => split_ongoing,
      O => \cmd_length_i_carry__0_i_18__0_n_0\
    );
\cmd_length_i_carry__0_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD0D"
    )
        port map (
      I0 => access_is_incr_q,
      I1 => access_fit_mi_side_q_reg(15),
      I2 => incr_need_to_split_q,
      I3 => split_ongoing,
      I4 => fix_need_to_split_q,
      O => \cmd_length_i_carry__0_i_19__0_n_0\
    );
\cmd_length_i_carry__0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(6),
      I1 => access_fit_mi_side_q_reg(15),
      I2 => \downsized_len_q_reg[7]\(6),
      I3 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I4 => \cmd_length_i_carry__0_i_9__0_n_0\,
      O => \gpr1.dout_i_reg[7]\(2)
    );
\cmd_length_i_carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(5),
      I1 => access_fit_mi_side_q_reg(15),
      I2 => \downsized_len_q_reg[7]\(5),
      I3 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I4 => \cmd_length_i_carry__0_i_10__0_n_0\,
      O => \gpr1.dout_i_reg[7]\(1)
    );
\cmd_length_i_carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(4),
      I1 => access_fit_mi_side_q_reg(15),
      I2 => \downsized_len_q_reg[7]\(4),
      I3 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I4 => \cmd_length_i_carry__0_i_11__0_n_0\,
      O => \gpr1.dout_i_reg[7]\(0)
    );
\cmd_length_i_carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_12__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_13__0_n_0\,
      I2 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I3 => \downsized_len_q_reg[7]\(7),
      I4 => access_fit_mi_side_q_reg(15),
      I5 => \S_AXI_ALEN_Q_reg[7]\(7),
      O => \gpr1.dout_i_reg[7]_0\(3)
    );
\cmd_length_i_carry__0_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_9__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I2 => \downsized_len_q_reg[7]\(6),
      I3 => access_fit_mi_side_q_reg(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(6),
      I5 => \cmd_length_i_carry__0_i_14__0_n_0\,
      O => \gpr1.dout_i_reg[7]_0\(2)
    );
\cmd_length_i_carry__0_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_10__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I2 => \downsized_len_q_reg[7]\(5),
      I3 => access_fit_mi_side_q_reg(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(5),
      I5 => \cmd_length_i_carry__0_i_15__0_n_0\,
      O => \gpr1.dout_i_reg[7]_0\(1)
    );
\cmd_length_i_carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_11__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I2 => \downsized_len_q_reg[7]\(4),
      I3 => access_fit_mi_side_q_reg(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(4),
      I5 => \cmd_length_i_carry__0_i_16__0_n_0\,
      O => \gpr1.dout_i_reg[7]_0\(0)
    );
\cmd_length_i_carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEAEEEAEEEEEEEAE"
    )
        port map (
      I0 => \cmd_length_i_carry__0_i_17__0_n_0\,
      I1 => access_is_incr_q,
      I2 => \S_AXI_AREADY_I_i_3__0_n_0\,
      I3 => CO(0),
      I4 => access_is_wrap_q,
      I5 => \cmd_length_i_carry__0_i_18__0_n_0\,
      O => \cmd_length_i_carry__0_i_8__0_n_0\
    );
\cmd_length_i_carry__0_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4555"
    )
        port map (
      I0 => fix_need_to_split_q,
      I1 => \wrap_rest_len_reg[7]\(6),
      I2 => split_ongoing,
      I3 => access_is_wrap_q,
      O => \cmd_length_i_carry__0_i_9__0_n_0\
    );
\cmd_length_i_carry_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(2),
      I1 => fix_need_to_split_q,
      I2 => \wrap_rest_len_reg[7]\(2),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry_i_10__0_n_0\
    );
\cmd_length_i_carry_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(1),
      I1 => fix_need_to_split_q,
      I2 => \wrap_rest_len_reg[7]\(1),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry_i_11__0_n_0\
    );
\cmd_length_i_carry_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(0),
      I1 => fix_need_to_split_q,
      I2 => \wrap_rest_len_reg[7]\(0),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry_i_12__0_n_0\
    );
\cmd_length_i_carry_i_13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF55CFCF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(3),
      I1 => \cmd_length_i_carry__0_i_19__0_n_0\,
      I2 => \unalignment_addr_q_reg[4]\(3),
      I3 => split_ongoing,
      I4 => wrap_need_to_split_q,
      O => \cmd_length_i_carry_i_13__0_n_0\
    );
\cmd_length_i_carry_i_14__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF55CFCF"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(2),
      I1 => \cmd_length_i_carry__0_i_19__0_n_0\,
      I2 => \unalignment_addr_q_reg[4]\(2),
      I3 => split_ongoing,
      I4 => wrap_need_to_split_q,
      O => \cmd_length_i_carry_i_14__0_n_0\
    );
\cmd_length_i_carry_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDD0FDD"
    )
        port map (
      I0 => \unalignment_addr_q_reg[4]\(1),
      I1 => \cmd_length_i_carry__0_i_19__0_n_0\,
      I2 => \wrap_unaligned_len_q_reg[7]\(1),
      I3 => wrap_need_to_split_q,
      I4 => split_ongoing,
      O => \cmd_length_i_carry_i_15__0_n_0\
    );
\cmd_length_i_carry_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F704F7F7"
    )
        port map (
      I0 => \wrap_unaligned_len_q_reg[7]\(0),
      I1 => wrap_need_to_split_q,
      I2 => split_ongoing,
      I3 => \cmd_length_i_carry__0_i_19__0_n_0\,
      I4 => \unalignment_addr_q_reg[4]\(0),
      O => \cmd_length_i_carry_i_16__0_n_0\
    );
\cmd_length_i_carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(3),
      I1 => access_fit_mi_side_q_reg(15),
      I2 => \downsized_len_q_reg[7]\(3),
      I3 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I4 => \cmd_length_i_carry_i_9__0_n_0\,
      O => DI(3)
    );
\cmd_length_i_carry_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(2),
      I1 => access_fit_mi_side_q_reg(15),
      I2 => \downsized_len_q_reg[7]\(2),
      I3 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I4 => \cmd_length_i_carry_i_10__0_n_0\,
      O => DI(2)
    );
\cmd_length_i_carry_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(1),
      I1 => access_fit_mi_side_q_reg(15),
      I2 => \downsized_len_q_reg[7]\(1),
      I3 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I4 => \cmd_length_i_carry_i_11__0_n_0\,
      O => DI(1)
    );
\cmd_length_i_carry_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \S_AXI_ALEN_Q_reg[7]\(0),
      I1 => access_fit_mi_side_q_reg(15),
      I2 => \downsized_len_q_reg[7]\(0),
      I3 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I4 => \cmd_length_i_carry_i_12__0_n_0\,
      O => DI(0)
    );
\cmd_length_i_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry_i_9__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I2 => \downsized_len_q_reg[7]\(3),
      I3 => access_fit_mi_side_q_reg(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(3),
      I5 => \cmd_length_i_carry_i_13__0_n_0\,
      O => \gpr1.dout_i_reg[7]_1\(3)
    );
\cmd_length_i_carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry_i_10__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I2 => \downsized_len_q_reg[7]\(2),
      I3 => access_fit_mi_side_q_reg(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(2),
      I5 => \cmd_length_i_carry_i_14__0_n_0\,
      O => \gpr1.dout_i_reg[7]_1\(2)
    );
\cmd_length_i_carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry_i_11__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I2 => \downsized_len_q_reg[7]\(1),
      I3 => access_fit_mi_side_q_reg(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(1),
      I5 => \cmd_length_i_carry_i_15__0_n_0\,
      O => \gpr1.dout_i_reg[7]_1\(1)
    );
\cmd_length_i_carry_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \cmd_length_i_carry_i_12__0_n_0\,
      I1 => \cmd_length_i_carry__0_i_8__0_n_0\,
      I2 => \downsized_len_q_reg[7]\(0),
      I3 => access_fit_mi_side_q_reg(15),
      I4 => \S_AXI_ALEN_Q_reg[7]\(0),
      I5 => \cmd_length_i_carry_i_16__0_n_0\,
      O => \gpr1.dout_i_reg[7]_1\(0)
    );
\cmd_length_i_carry_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBBBBB"
    )
        port map (
      I0 => \fix_len_q_reg[4]\(3),
      I1 => fix_need_to_split_q,
      I2 => \wrap_rest_len_reg[7]\(3),
      I3 => split_ongoing,
      I4 => access_is_wrap_q,
      O => \cmd_length_i_carry_i_9__0_n_0\
    );
\cmd_push_block_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2202AA00"
    )
        port map (
      I0 => \out\,
      I1 => m_axi_arready,
      I2 => full,
      I3 => cmd_push_block,
      I4 => command_ongoing,
      O => cmd_push_block_reg
    );
\command_ongoing_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBFB55000000"
    )
        port map (
      I0 => \areset_d_reg[1]\,
      I1 => \^e\(0),
      I2 => S_AXI_AREADY_I_i_2_n_0,
      I3 => S_AXI_AREADY_I_reg_0(0),
      I4 => s_axi_arvalid,
      I5 => command_ongoing,
      O => command_ongoing_reg
    );
\current_word_1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => rd_cmd_mask(0),
      I1 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      I2 => cmd_size_ii(2),
      I3 => cmd_size_ii(1),
      I4 => cmd_size_ii(0),
      O => \^d\(0)
    );
\current_word_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020200A8A8A8AA"
    )
        port map (
      I0 => rd_cmd_mask(1),
      I1 => cmd_size_ii(2),
      I2 => cmd_size_ii(1),
      I3 => cmd_size_ii(0),
      I4 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      I5 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      O => \^d\(1)
    );
\current_word_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828288228282828"
    )
        port map (
      I0 => rd_cmd_mask(2),
      I1 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      I2 => \current_word_1[2]_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      I4 => \current_word_1[2]_i_3_n_0\,
      I5 => \current_word_1[2]_i_4_n_0\,
      O => \^d\(2)
    );
\current_word_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => cmd_size_ii(2),
      I1 => cmd_size_ii(1),
      I2 => cmd_size_ii(0),
      O => \current_word_1[2]_i_2_n_0\
    );
\current_word_1[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cmd_size_ii(2),
      I1 => cmd_size_ii(1),
      O => \current_word_1[2]_i_3_n_0\
    );
\current_word_1[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAE"
    )
        port map (
      I0 => cmd_size_ii(0),
      I1 => \current_word_1_reg[3]\(0),
      I2 => first_word,
      I3 => rd_cmd_fix,
      I4 => rd_cmd_first_word(0),
      O => \current_word_1[2]_i_4_n_0\
    );
\current_word_1[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_rvalid_INST_0_i_3_n_0,
      O => \^d\(3)
    );
fifo_gen_inst: entity work.\top_auto_ds_0_fifo_generator_v13_1_0__parameterized1\
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => CLK,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(28) => p_0_out(28),
      din(27) => \^din\(3),
      din(26) => access_fit_mi_side_q_reg(15),
      din(25 downto 18) => p_0_out(25 downto 18),
      din(17 downto 14) => access_fit_mi_side_q_reg(14 downto 11),
      din(13 downto 11) => \^din\(2 downto 0),
      din(10 downto 0) => access_fit_mi_side_q_reg(10 downto 0),
      dout(28) => rd_cmd_fix,
      dout(27) => rd_cmd_split,
      dout(26) => \^dout\(8),
      dout(25 downto 22) => rd_cmd_first_word(3 downto 0),
      dout(21 downto 18) => rd_cmd_offset(3 downto 0),
      dout(17 downto 14) => rd_cmd_mask(3 downto 0),
      dout(13 downto 11) => cmd_size_ii(2 downto 0),
      dout(10 downto 3) => \^dout\(7 downto 0),
      dout(2 downto 0) => rd_cmd_size(2 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => SR(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => cmd_push,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
\fifo_gen_inst_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => size_mask_q(0),
      I3 => \S_AXI_AADDR_Q_reg[3]\(0),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => access_fit_mi_side_q_reg(11),
      O => p_0_out(18)
    );
\fifo_gen_inst_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => full,
      I1 => command_ongoing,
      I2 => cmd_push_block,
      O => cmd_push
    );
\fifo_gen_inst_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404444CCCCCCCC"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => \S_AXI_AADDR_Q_reg[3]\(3),
      I2 => \split_addr_mask_q_reg[3]\(0),
      I3 => si_full_size_q,
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => \fifo_gen_inst_i_13__0_n_0\
    );
\fifo_gen_inst_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00404444CCCCCCCC"
    )
        port map (
      I0 => access_is_wrap_q,
      I1 => \S_AXI_AADDR_Q_reg[3]\(2),
      I2 => access_fit_mi_side_q_reg(15),
      I3 => si_full_size_q,
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => \fifo_gen_inst_i_14__0_n_0\
    );
\fifo_gen_inst_i_15__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => access_is_incr_q,
      I1 => split_ongoing,
      O => \^next_mi_addr_reg[8]\
    );
fifo_gen_inst_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => split_ongoing,
      I1 => access_is_wrap_q,
      O => \^next_mi_addr_reg[8]_0\
    );
\fifo_gen_inst_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => access_fit_mi_side_q_reg(15),
      I1 => access_is_fix_q,
      O => p_0_out(28)
    );
\fifo_gen_inst_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => S_AXI_AREADY_I_i_2_n_0,
      I1 => wrap_need_to_split_q,
      I2 => fix_need_to_split_q,
      I3 => incr_need_to_split_q,
      O => \^din\(3)
    );
\fifo_gen_inst_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \fifo_gen_inst_i_13__0_n_0\,
      I1 => access_fit_mi_side_q_reg(14),
      I2 => size_mask_q(2),
      O => p_0_out(25)
    );
\fifo_gen_inst_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \fifo_gen_inst_i_14__0_n_0\,
      I1 => access_fit_mi_side_q_reg(13),
      I2 => size_mask_q(2),
      O => p_0_out(24)
    );
\fifo_gen_inst_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => \S_AXI_AADDR_Q_reg[3]\(1),
      I3 => \^next_mi_addr_reg[8]_0\,
      I4 => access_fit_mi_side_q_reg(12),
      I5 => size_mask_q(1),
      O => p_0_out(23)
    );
\fifo_gen_inst_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0070000000000000"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => \S_AXI_AADDR_Q_reg[3]\(0),
      I3 => \^next_mi_addr_reg[8]_0\,
      I4 => access_fit_mi_side_q_reg(11),
      I5 => size_mask_q(0),
      O => p_0_out(22)
    );
\fifo_gen_inst_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => \split_addr_mask_q_reg[3]\(0),
      I3 => \S_AXI_AADDR_Q_reg[3]\(3),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => access_fit_mi_side_q_reg(14),
      O => p_0_out(21)
    );
\fifo_gen_inst_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => access_fit_mi_side_q_reg(15),
      I3 => \S_AXI_AADDR_Q_reg[3]\(2),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => access_fit_mi_side_q_reg(13),
      O => p_0_out(20)
    );
\fifo_gen_inst_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007500"
    )
        port map (
      I0 => \^next_mi_addr_reg[8]\,
      I1 => si_full_size_q,
      I2 => size_mask_q(1),
      I3 => \S_AXI_AADDR_Q_reg[3]\(1),
      I4 => \^next_mi_addr_reg[8]_0\,
      I5 => access_fit_mi_side_q_reg(12),
      O => p_0_out(19)
    );
\first_mi_word_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA000088A8"
    )
        port map (
      I0 => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\,
      I1 => s_axi_rvalid_INST_0_i_2_n_0,
      I2 => rd_cmd_size(2),
      I3 => s_axi_rvalid_INST_0_i_3_n_0,
      I4 => m_axi_rready_INST_0_i_1_n_0,
      I5 => s_axi_rready,
      O => first_mi_word_reg(0)
    );
\last_incr_split0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      O => S(2)
    );
\last_incr_split0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => \num_transactions_q_reg[3]\(3),
      I3 => Q(3),
      O => S(1)
    );
\last_incr_split0_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \num_transactions_q_reg[3]\(2),
      I1 => Q(2),
      I2 => Q(1),
      I3 => \num_transactions_q_reg[3]\(1),
      I4 => Q(0),
      I5 => \num_transactions_q_reg[3]\(0),
      O => S(0)
    );
\m_axi_arsize[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => access_fit_mi_side_q_reg(15),
      I1 => access_fit_mi_side_q_reg(0),
      O => \^din\(0)
    );
\m_axi_arsize[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => access_fit_mi_side_q_reg(1),
      I1 => access_fit_mi_side_q_reg(15),
      O => \^din\(1)
    );
\m_axi_arsize[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => access_fit_mi_side_q_reg(15),
      I1 => access_fit_mi_side_q_reg(2),
      O => \^din\(2)
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => command_ongoing,
      I1 => cmd_push_block,
      I2 => full,
      O => m_axi_arvalid
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500004454"
    )
        port map (
      I0 => empty,
      I1 => s_axi_rvalid_INST_0_i_2_n_0,
      I2 => rd_cmd_size(2),
      I3 => s_axi_rvalid_INST_0_i_3_n_0,
      I4 => m_axi_rready_INST_0_i_1_n_0,
      I5 => s_axi_rready,
      O => m_axi_rready
    );
m_axi_rready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4700"
    )
        port map (
      I0 => \^dout\(7),
      I1 => first_word,
      I2 => \length_counter_1_reg[7]\(0),
      I3 => \goreg_dm.dout_i_reg[8]\,
      I4 => rd_cmd_fix,
      I5 => \^dout\(8),
      O => m_axi_rready_INST_0_i_1_n_0
    );
\queue_id[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => S_AXI_AID_Q,
      I1 => full,
      I2 => command_ongoing,
      I3 => cmd_push_block,
      I4 => s_axi_rid(0),
      O => \queue_id_reg[0]\
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(0),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[100]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(4),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(4),
      O => s_axi_rdata(100)
    );
\s_axi_rdata[101]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(5),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(5),
      O => s_axi_rdata(101)
    );
\s_axi_rdata[102]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(6),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(6),
      O => s_axi_rdata(102)
    );
\s_axi_rdata[103]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(7),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(7),
      O => s_axi_rdata(103)
    );
\s_axi_rdata[104]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(8),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(8),
      O => s_axi_rdata(104)
    );
\s_axi_rdata[105]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(9),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(9),
      O => s_axi_rdata(105)
    );
\s_axi_rdata[106]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(10),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(10),
      O => s_axi_rdata(106)
    );
\s_axi_rdata[107]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(11),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(11),
      O => s_axi_rdata(107)
    );
\s_axi_rdata[108]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(12),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(12),
      O => s_axi_rdata(108)
    );
\s_axi_rdata[109]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(13),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(13),
      O => s_axi_rdata(109)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(10),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[110]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(14),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(14),
      O => s_axi_rdata(110)
    );
\s_axi_rdata[111]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(15),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(15),
      O => s_axi_rdata(111)
    );
\s_axi_rdata[112]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(16),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(16),
      O => s_axi_rdata(112)
    );
\s_axi_rdata[113]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(17),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(17),
      O => s_axi_rdata(113)
    );
\s_axi_rdata[114]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(18),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(18),
      O => s_axi_rdata(114)
    );
\s_axi_rdata[115]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(19),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(19),
      O => s_axi_rdata(115)
    );
\s_axi_rdata[116]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(20),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(20),
      O => s_axi_rdata(116)
    );
\s_axi_rdata[117]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(21),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(21),
      O => s_axi_rdata(117)
    );
\s_axi_rdata[118]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(22),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(22),
      O => s_axi_rdata(118)
    );
\s_axi_rdata[119]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(23),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(23),
      O => s_axi_rdata(119)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(11),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[120]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(24),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(24),
      O => s_axi_rdata(120)
    );
\s_axi_rdata[121]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(25),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(25),
      O => s_axi_rdata(121)
    );
\s_axi_rdata[122]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(26),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(26),
      O => s_axi_rdata(122)
    );
\s_axi_rdata[123]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(27),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(27),
      O => s_axi_rdata(123)
    );
\s_axi_rdata[124]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(28),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(28),
      O => s_axi_rdata(124)
    );
\s_axi_rdata[125]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(29),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(29),
      O => s_axi_rdata(125)
    );
\s_axi_rdata[126]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(30),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(30),
      O => s_axi_rdata(126)
    );
\s_axi_rdata[127]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(31),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(31),
      O => s_axi_rdata(127)
    );
\s_axi_rdata[127]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      I1 => rd_cmd_offset(2),
      I2 => \s_axi_rdata[127]_INST_0_i_4_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_5_n_0\,
      I4 => rd_cmd_offset(3),
      O => \s_axi_rdata[127]_INST_0_i_1_n_0\
    );
\s_axi_rdata[127]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BBBD444D4442BBB"
    )
        port map (
      I0 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      I1 => rd_cmd_offset(1),
      I2 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      I3 => rd_cmd_offset(0),
      I4 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      I5 => rd_cmd_offset(2),
      O => \s_axi_rdata[127]_INST_0_i_2_n_0\
    );
\s_axi_rdata[127]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rd_cmd_first_word(2),
      I1 => rd_cmd_fix,
      I2 => first_word,
      I3 => \current_word_1_reg[3]\(2),
      O => \s_axi_rdata[127]_INST_0_i_3_n_0\
    );
\s_axi_rdata[127]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57F7FFFF000057F7"
    )
        port map (
      I0 => rd_cmd_offset(0),
      I1 => \current_word_1_reg[3]\(0),
      I2 => \s_axi_rdata[127]_INST_0_i_8_n_0\,
      I3 => rd_cmd_first_word(0),
      I4 => rd_cmd_offset(1),
      I5 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      O => \s_axi_rdata[127]_INST_0_i_4_n_0\
    );
\s_axi_rdata[127]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => rd_cmd_first_word(3),
      I1 => rd_cmd_fix,
      I2 => first_word,
      I3 => \current_word_1_reg[3]\(3),
      O => \s_axi_rdata[127]_INST_0_i_5_n_0\
    );
\s_axi_rdata[127]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5457"
    )
        port map (
      I0 => rd_cmd_first_word(1),
      I1 => rd_cmd_fix,
      I2 => first_word,
      I3 => \current_word_1_reg[3]\(1),
      O => \s_axi_rdata[127]_INST_0_i_6_n_0\
    );
\s_axi_rdata[127]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => rd_cmd_first_word(0),
      I1 => rd_cmd_fix,
      I2 => first_word,
      I3 => \current_word_1_reg[3]\(0),
      O => \s_axi_rdata[127]_INST_0_i_7_n_0\
    );
\s_axi_rdata[127]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rd_cmd_fix,
      I1 => first_word,
      O => \s_axi_rdata[127]_INST_0_i_8_n_0\
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(12),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(13),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(14),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(15),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(16),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(17),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(18),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(19),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(1),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(20),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(21),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(22),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(23),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(24),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(25),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(26),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(27),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(28),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(29),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(2),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(30),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(31),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[32]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(0),
      O => s_axi_rdata(32)
    );
\s_axi_rdata[33]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(1),
      O => s_axi_rdata(33)
    );
\s_axi_rdata[34]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(2),
      O => s_axi_rdata(34)
    );
\s_axi_rdata[35]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(3),
      O => s_axi_rdata(35)
    );
\s_axi_rdata[36]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(4),
      O => s_axi_rdata(36)
    );
\s_axi_rdata[37]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(5),
      O => s_axi_rdata(37)
    );
\s_axi_rdata[38]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(6),
      O => s_axi_rdata(38)
    );
\s_axi_rdata[39]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(7),
      O => s_axi_rdata(39)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(3),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[40]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(8),
      O => s_axi_rdata(40)
    );
\s_axi_rdata[41]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(9),
      O => s_axi_rdata(41)
    );
\s_axi_rdata[42]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(10),
      O => s_axi_rdata(42)
    );
\s_axi_rdata[43]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(11),
      O => s_axi_rdata(43)
    );
\s_axi_rdata[44]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(12),
      O => s_axi_rdata(44)
    );
\s_axi_rdata[45]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(13),
      O => s_axi_rdata(45)
    );
\s_axi_rdata[46]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(14),
      O => s_axi_rdata(46)
    );
\s_axi_rdata[47]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(15),
      O => s_axi_rdata(47)
    );
\s_axi_rdata[48]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(16),
      O => s_axi_rdata(48)
    );
\s_axi_rdata[49]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(17),
      O => s_axi_rdata(49)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(4),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[50]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(18),
      O => s_axi_rdata(50)
    );
\s_axi_rdata[51]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(19),
      O => s_axi_rdata(51)
    );
\s_axi_rdata[52]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(20),
      O => s_axi_rdata(52)
    );
\s_axi_rdata[53]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(21),
      O => s_axi_rdata(53)
    );
\s_axi_rdata[54]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(22),
      O => s_axi_rdata(54)
    );
\s_axi_rdata[55]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(23),
      O => s_axi_rdata(55)
    );
\s_axi_rdata[56]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(24),
      O => s_axi_rdata(56)
    );
\s_axi_rdata[57]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(25),
      O => s_axi_rdata(57)
    );
\s_axi_rdata[58]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(26),
      O => s_axi_rdata(58)
    );
\s_axi_rdata[59]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(27),
      O => s_axi_rdata(59)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(5),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[60]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(28),
      O => s_axi_rdata(60)
    );
\s_axi_rdata[61]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(29),
      O => s_axi_rdata(61)
    );
\s_axi_rdata[62]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(30),
      O => s_axi_rdata(62)
    );
\s_axi_rdata[63]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(31),
      O => s_axi_rdata(63)
    );
\s_axi_rdata[64]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(0),
      O => s_axi_rdata(64)
    );
\s_axi_rdata[65]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(1),
      O => s_axi_rdata(65)
    );
\s_axi_rdata[66]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(2),
      O => s_axi_rdata(66)
    );
\s_axi_rdata[67]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(3),
      O => s_axi_rdata(67)
    );
\s_axi_rdata[68]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(4),
      O => s_axi_rdata(68)
    );
\s_axi_rdata[69]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(5),
      O => s_axi_rdata(69)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(6),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[70]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(6),
      O => s_axi_rdata(70)
    );
\s_axi_rdata[71]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(7),
      O => s_axi_rdata(71)
    );
\s_axi_rdata[72]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(8),
      O => s_axi_rdata(72)
    );
\s_axi_rdata[73]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(9),
      O => s_axi_rdata(73)
    );
\s_axi_rdata[74]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(10),
      O => s_axi_rdata(74)
    );
\s_axi_rdata[75]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(11),
      O => s_axi_rdata(75)
    );
\s_axi_rdata[76]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(12),
      O => s_axi_rdata(76)
    );
\s_axi_rdata[77]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(13),
      O => s_axi_rdata(77)
    );
\s_axi_rdata[78]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(14),
      O => s_axi_rdata(78)
    );
\s_axi_rdata[79]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(15),
      O => s_axi_rdata(79)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(7),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[80]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(16),
      O => s_axi_rdata(80)
    );
\s_axi_rdata[81]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(17),
      O => s_axi_rdata(81)
    );
\s_axi_rdata[82]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(18),
      O => s_axi_rdata(82)
    );
\s_axi_rdata[83]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(19),
      O => s_axi_rdata(83)
    );
\s_axi_rdata[84]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(20),
      O => s_axi_rdata(84)
    );
\s_axi_rdata[85]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(21),
      O => s_axi_rdata(85)
    );
\s_axi_rdata[86]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(22),
      O => s_axi_rdata(86)
    );
\s_axi_rdata[87]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(23),
      O => s_axi_rdata(87)
    );
\s_axi_rdata[88]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(24),
      O => s_axi_rdata(88)
    );
\s_axi_rdata[89]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(25),
      O => s_axi_rdata(89)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(8),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[90]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(26),
      O => s_axi_rdata(90)
    );
\s_axi_rdata[91]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(27),
      O => s_axi_rdata(91)
    );
\s_axi_rdata[92]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(28),
      O => s_axi_rdata(92)
    );
\s_axi_rdata[93]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(29),
      O => s_axi_rdata(93)
    );
\s_axi_rdata[94]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(30),
      O => s_axi_rdata(94)
    );
\s_axi_rdata[95]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(31),
      O => s_axi_rdata(95)
    );
\s_axi_rdata[96]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(0),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(0),
      O => s_axi_rdata(96)
    );
\s_axi_rdata[97]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(1),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(1),
      O => s_axi_rdata(97)
    );
\s_axi_rdata[98]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(2),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(2),
      O => s_axi_rdata(98)
    );
\s_axi_rdata[99]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF2220"
    )
        port map (
      I0 => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(3),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I4 => m_axi_rdata(3),
      O => s_axi_rdata(99)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^dout\(8),
      I2 => \s_axi_rdata[127]_INST_0_i_2_n_0\,
      I3 => \s_axi_rdata[127]_INST_0_i_1_n_0\,
      I4 => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(9),
      O => s_axi_rdata(9)
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => rd_cmd_split,
      O => s_axi_rlast
    );
\s_axi_rresp[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFAFABAB"
    )
        port map (
      I0 => \s_axi_rresp[1]_INST_0_i_2_n_0\,
      I1 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      I2 => \s_axi_rresp[1]_INST_0_i_3_n_0\,
      I3 => rd_cmd_size(0),
      I4 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      I5 => \S_AXI_RRESP_ACC_reg[0]_0\,
      O => \S_AXI_RRESP_ACC_reg[0]\
    );
\s_axi_rresp[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFC05500"
    )
        port map (
      I0 => \s_axi_rdata[127]_INST_0_i_5_n_0\,
      I1 => rd_cmd_size(1),
      I2 => rd_cmd_size(0),
      I3 => rd_cmd_size(2),
      I4 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      O => \s_axi_rresp[1]_INST_0_i_2_n_0\
    );
\s_axi_rresp[1]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_cmd_size(2),
      I1 => rd_cmd_size(1),
      O => \s_axi_rresp[1]_INST_0_i_3_n_0\
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2202"
    )
        port map (
      I0 => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\,
      I1 => s_axi_rvalid_INST_0_i_2_n_0,
      I2 => rd_cmd_size(2),
      I3 => s_axi_rvalid_INST_0_i_3_n_0,
      I4 => s_axi_rvalid_INST_0_i_4_n_0,
      I5 => \goreg_dm.dout_i_reg[9]\,
      O => s_axi_rvalid
    );
s_axi_rvalid_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => empty,
      O => \^word_lane[0].s_axi_rdata_ii_reg[31]_0\
    );
s_axi_rvalid_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A0FFFCFFF0FFFC"
    )
        port map (
      I0 => \^d\(2),
      I1 => rd_cmd_size(0),
      I2 => rd_cmd_size(2),
      I3 => rd_cmd_size(1),
      I4 => s_axi_rvalid_INST_0_i_6_n_0,
      I5 => s_axi_rvalid_INST_0_i_7_n_0,
      O => s_axi_rvalid_INST_0_i_2_n_0
    );
s_axi_rvalid_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA85457FFFFFFFF"
    )
        port map (
      I0 => rd_cmd_first_word(3),
      I1 => rd_cmd_fix,
      I2 => first_word,
      I3 => \current_word_1_reg[3]\(3),
      I4 => s_axi_rvalid_INST_0_i_8_n_0,
      I5 => rd_cmd_mask(3),
      O => s_axi_rvalid_INST_0_i_3_n_0
    );
s_axi_rvalid_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^dout\(8),
      I1 => rd_cmd_fix,
      O => s_axi_rvalid_INST_0_i_4_n_0
    );
s_axi_rvalid_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FEFFFF"
    )
        port map (
      I0 => cmd_size_ii(0),
      I1 => cmd_size_ii(1),
      I2 => cmd_size_ii(2),
      I3 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      I4 => rd_cmd_mask(0),
      O => s_axi_rvalid_INST_0_i_6_n_0
    );
s_axi_rvalid_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA56FFFFFFFF"
    )
        port map (
      I0 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      I1 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      I2 => cmd_size_ii(0),
      I3 => cmd_size_ii(1),
      I4 => cmd_size_ii(2),
      I5 => rd_cmd_mask(1),
      O => s_axi_rvalid_INST_0_i_7_n_0
    );
s_axi_rvalid_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020022200200220"
    )
        port map (
      I0 => \s_axi_rdata[127]_INST_0_i_3_n_0\,
      I1 => cmd_size_ii(2),
      I2 => cmd_size_ii(1),
      I3 => cmd_size_ii(0),
      I4 => \s_axi_rdata[127]_INST_0_i_6_n_0\,
      I5 => \s_axi_rdata[127]_INST_0_i_7_n_0\,
      O => s_axi_rvalid_INST_0_i_8_n_0
    );
\split_ongoing_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A200"
    )
        port map (
      I0 => m_axi_arready,
      I1 => full,
      I2 => cmd_push_block,
      I3 => command_ongoing,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    split_ongoing_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_en : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    command_ongoing_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    cmd_b_push_block_reg : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fix_need_to_split_q : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    cmd_b_push_block : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    split_ongoing : in STD_LOGIC;
    access_is_incr_q : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \num_transactions_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \S_AXI_ALEN_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AREADY_I_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    \areset_d_reg[0]\ : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \areset_d_reg[1]\ : in STD_LOGIC;
    S_AXI_AID_Q : in STD_LOGIC;
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AREADY_I_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo\;

architecture STRUCTURE of \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo\ is
begin
inst: entity work.\top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen\
     port map (
      CLK => CLK,
      CO(0) => CO(0),
      E(0) => E(0),
      Q(7 downto 0) => Q(7 downto 0),
      S(2 downto 0) => S(2 downto 0),
      SR(0) => SR(0),
      S_AXI_AID_Q => S_AXI_AID_Q,
      \S_AXI_ALEN_Q_reg[3]\(3 downto 0) => \S_AXI_ALEN_Q_reg[3]\(3 downto 0),
      S_AXI_AREADY_I_reg => S_AXI_AREADY_I_reg,
      S_AXI_AREADY_I_reg_0(0) => S_AXI_AREADY_I_reg_0(0),
      S_AXI_AREADY_I_reg_1(0) => S_AXI_AREADY_I_reg_1(0),
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      areset_d(0) => areset_d(0),
      \areset_d_reg[0]\ => \areset_d_reg[0]\,
      \areset_d_reg[1]\ => \areset_d_reg[1]\,
      cmd_b_push_block => cmd_b_push_block,
      cmd_b_push_block_reg => cmd_b_push_block_reg,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_push_block_reg,
      command_ongoing => command_ongoing,
      command_ongoing_reg => command_ongoing_reg,
      din(0) => din(0),
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      fix_need_to_split_q => fix_need_to_split_q,
      full => full,
      incr_need_to_split_q => incr_need_to_split_q,
      m_axi_awready => m_axi_awready,
      \num_transactions_q_reg[3]\(3 downto 0) => \num_transactions_q_reg[3]\(3 downto 0),
      \out\ => \out\,
      \queue_id_reg[0]\ => \queue_id_reg[0]\,
      ram_full_i_reg => ram_full_i_reg,
      rd_en => rd_en,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      split_ongoing => split_ongoing,
      split_ongoing_reg => split_ongoing_reg,
      wr_en => wr_en,
      wrap_need_to_split_q => wrap_need_to_split_q
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    full : out STD_LOGIC;
    \m_axi_awsize[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_mi_addr_reg[8]\ : out STD_LOGIC;
    \next_mi_addr_reg[8]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    din : in STD_LOGIC_VECTOR ( 16 downto 0 );
    wr_en : in STD_LOGIC;
    fix_need_to_split_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    split_ongoing : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    ram_full_i_reg : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \downsized_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    \pushed_commands_reg[7]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    si_full_size_q : in STD_LOGIC;
    size_mask_q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \S_AXI_AADDR_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \split_addr_mask_q_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fix_len_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \unalignment_addr_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \wrap_unaligned_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    legal_wrap_len_q : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wlast : in STD_LOGIC;
    first_mi_word : in STD_LOGIC;
    \length_counter_1_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[8]\ : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \current_word_1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    first_word_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized0\ : entity is "axi_data_fifo_v2_1_7_axic_fifo";
end \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized0\ is
begin
inst: entity work.\top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized0\
     port map (
      CLK => CLK,
      CO(0) => CO(0),
      D(3 downto 0) => D(3 downto 0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => E(0),
      Q(7 downto 0) => Q(7 downto 0),
      S(3 downto 0) => S(3 downto 0),
      SR(0) => SR(0),
      \S_AXI_AADDR_Q_reg[3]\(3 downto 0) => \S_AXI_AADDR_Q_reg[3]\(3 downto 0),
      \S_AXI_ALEN_Q_reg[7]\(7 downto 0) => \S_AXI_ALEN_Q_reg[7]\(7 downto 0),
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      cmd_push_block => cmd_push_block,
      command_ongoing => command_ongoing,
      \current_word_1_reg[3]\(3 downto 0) => \current_word_1_reg[3]\(3 downto 0),
      din(16 downto 0) => din(16 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      \downsized_len_q_reg[7]\(7 downto 0) => \downsized_len_q_reg[7]\(7 downto 0),
      first_mi_word => first_mi_word,
      first_word_reg => first_word_reg,
      \fix_len_q_reg[4]\(4 downto 0) => \fix_len_q_reg[4]\(4 downto 0),
      fix_need_to_split_q => fix_need_to_split_q,
      full => full,
      \goreg_dm.dout_i_reg[8]\ => \goreg_dm.dout_i_reg[8]\,
      \gpr1.dout_i_reg[7]\(2 downto 0) => \gpr1.dout_i_reg[7]\(2 downto 0),
      \gpr1.dout_i_reg[7]_0\(3 downto 0) => \gpr1.dout_i_reg[7]_0\(3 downto 0),
      incr_need_to_split_q => incr_need_to_split_q,
      legal_wrap_len_q => legal_wrap_len_q,
      \length_counter_1_reg[7]\(0) => \length_counter_1_reg[7]\(0),
      \m_axi_awsize[2]\(2 downto 0) => \m_axi_awsize[2]\(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \next_mi_addr_reg[8]\ => \next_mi_addr_reg[8]\,
      \next_mi_addr_reg[8]_0\ => \next_mi_addr_reg[8]_0\,
      \pushed_commands_reg[7]\ => \pushed_commands_reg[7]\,
      ram_full_i_reg => ram_full_i_reg,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      si_full_size_q => si_full_size_q,
      size_mask_q(2 downto 0) => size_mask_q(2 downto 0),
      \split_addr_mask_q_reg[3]\(0) => \split_addr_mask_q_reg[3]\(0),
      split_ongoing => split_ongoing,
      \unalignment_addr_q_reg[4]\(4 downto 0) => \unalignment_addr_q_reg[4]\(4 downto 0),
      wr_en => wr_en,
      wrap_need_to_split_q => wrap_need_to_split_q,
      \wrap_unaligned_len_q_reg[7]\(7 downto 0) => \wrap_unaligned_len_q_reg[7]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    din : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \next_mi_addr_reg[8]\ : out STD_LOGIC;
    \next_mi_addr_reg[8]_0\ : out STD_LOGIC;
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ : out STD_LOGIC;
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    first_mi_word_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \S_AXI_RRESP_ACC_reg[0]\ : out STD_LOGIC;
    \gpr1.dout_i_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    command_ongoing_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    access_fit_mi_side_q : in STD_LOGIC;
    \cmd_mask_q_reg[3]\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    rd_en : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fix_need_to_split_q : in STD_LOGIC;
    access_is_fix_q : in STD_LOGIC;
    \wrap_rest_len_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    split_ongoing : in STD_LOGIC;
    access_is_wrap_q : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    wrap_need_to_split_q : in STD_LOGIC;
    incr_need_to_split_q : in STD_LOGIC;
    \S_AXI_ALEN_Q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \downsized_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \num_transactions_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    si_full_size_q : in STD_LOGIC;
    size_mask_q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \S_AXI_AADDR_Q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \split_addr_mask_q_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fix_len_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \unalignment_addr_q_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \wrap_unaligned_len_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    legal_wrap_len_q : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    first_word : in STD_LOGIC;
    \length_counter_1_reg[7]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[8]\ : in STD_LOGIC;
    \current_word_1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \S_AXI_RRESP_ACC_reg[0]_0\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AREADY_I_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    \areset_d_reg[1]\ : in STD_LOGIC;
    S_AXI_AID_Q : in STD_LOGIC;
    s_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized1\ : entity is "axi_data_fifo_v2_1_7_axic_fifo";
end \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized1\;

architecture STRUCTURE of \top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized1\ is
begin
inst: entity work.\top_auto_ds_0_axi_data_fifo_v2_1_7_fifo_gen__parameterized1\
     port map (
      CLK => CLK,
      CO(0) => CO(0),
      D(3 downto 0) => D(3 downto 0),
      DI(3 downto 0) => DI(3 downto 0),
      E(0) => E(0),
      Q(7 downto 0) => Q(7 downto 0),
      S(2 downto 0) => S(2 downto 0),
      SR(0) => SR(0),
      \S_AXI_AADDR_Q_reg[3]\(3 downto 0) => \S_AXI_AADDR_Q_reg[3]\(3 downto 0),
      S_AXI_AID_Q => S_AXI_AID_Q,
      \S_AXI_ALEN_Q_reg[7]\(7 downto 0) => \S_AXI_ALEN_Q_reg[7]\(7 downto 0),
      S_AXI_AREADY_I_reg => S_AXI_AREADY_I_reg,
      S_AXI_AREADY_I_reg_0(0) => S_AXI_AREADY_I_reg_0(0),
      \S_AXI_RRESP_ACC_reg[0]\ => \S_AXI_RRESP_ACC_reg[0]\,
      \S_AXI_RRESP_ACC_reg[0]_0\ => \S_AXI_RRESP_ACC_reg[0]_0\,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\(0) => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\(0),
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\(0) => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\(0),
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(31 downto 0) => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(31 downto 0),
      \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\(0) => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\(0),
      \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(31 downto 0) => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(31 downto 0),
      \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\(0) => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\(0),
      \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(31 downto 0) => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(31 downto 0),
      \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\(0) => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\(0),
      \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(31 downto 0) => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(31 downto 0),
      access_fit_mi_side_q_reg(15) => access_fit_mi_side_q,
      access_fit_mi_side_q_reg(14 downto 0) => \cmd_mask_q_reg[3]\(14 downto 0),
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      \areset_d_reg[1]\ => \areset_d_reg[1]\,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_push_block_reg,
      command_ongoing => command_ongoing,
      command_ongoing_reg => command_ongoing_reg,
      \current_word_1_reg[3]\(3 downto 0) => \current_word_1_reg[3]\(3 downto 0),
      din(3 downto 0) => din(3 downto 0),
      dout(8 downto 0) => dout(8 downto 0),
      \downsized_len_q_reg[7]\(7 downto 0) => \downsized_len_q_reg[7]\(7 downto 0),
      first_mi_word_reg(0) => first_mi_word_reg(0),
      first_word => first_word,
      \fix_len_q_reg[4]\(4 downto 0) => \fix_len_q_reg[4]\(4 downto 0),
      fix_need_to_split_q => fix_need_to_split_q,
      \goreg_dm.dout_i_reg[8]\ => \goreg_dm.dout_i_reg[8]\,
      \goreg_dm.dout_i_reg[9]\ => \goreg_dm.dout_i_reg[9]\,
      \gpr1.dout_i_reg[7]\(2 downto 0) => \gpr1.dout_i_reg[7]\(2 downto 0),
      \gpr1.dout_i_reg[7]_0\(3 downto 0) => \gpr1.dout_i_reg[7]_0\(3 downto 0),
      \gpr1.dout_i_reg[7]_1\(3 downto 0) => \gpr1.dout_i_reg[7]_1\(3 downto 0),
      incr_need_to_split_q => incr_need_to_split_q,
      legal_wrap_len_q => legal_wrap_len_q,
      \length_counter_1_reg[7]\(0) => \length_counter_1_reg[7]\(0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \next_mi_addr_reg[8]\ => \next_mi_addr_reg[8]\,
      \next_mi_addr_reg[8]_0\ => \next_mi_addr_reg[8]_0\,
      \num_transactions_q_reg[3]\(3 downto 0) => \num_transactions_q_reg[3]\(3 downto 0),
      \out\ => \out\,
      \queue_id_reg[0]\ => \queue_id_reg[0]\,
      rd_en => rd_en,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      si_full_size_q => si_full_size_q,
      size_mask_q(2 downto 0) => size_mask_q(2 downto 0),
      \split_addr_mask_q_reg[3]\(0) => \split_addr_mask_q_reg[3]\(0),
      split_ongoing => split_ongoing,
      \unalignment_addr_q_reg[4]\(4 downto 0) => \unalignment_addr_q_reg[4]\(4 downto 0),
      wrap_need_to_split_q => wrap_need_to_split_q,
      \wrap_rest_len_reg[7]\(7 downto 0) => \wrap_rest_len_reg[7]\(7 downto 0),
      \wrap_unaligned_len_q_reg[7]\(7 downto 0) => \wrap_unaligned_len_q_reg[7]\(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \current_word_1_reg[2]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    din : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awready : out STD_LOGIC;
    areset_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    command_ongoing_reg_0 : out STD_LOGIC;
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wlast : in STD_LOGIC;
    first_mi_word : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[8]\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \current_word_1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    first_word_reg : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end \top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer\;

architecture STRUCTURE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_AXI_AADDR_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[16]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[17]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[18]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[19]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[20]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[21]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[22]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[23]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[24]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[25]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[26]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[27]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[28]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[29]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[30]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[31]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal S_AXI_ABURST_Q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_AID_Q : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal S_AXI_ALOCK_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_ASIZE_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \USE_B_CHANNEL.cmd_b_queue_n_13\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_16\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_17\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_18\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_19\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_20\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_21\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_22\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_23\ : STD_LOGIC;
  signal access_fit_mi_side_q : STD_LOGIC;
  signal access_fit_mi_side_q_i_1_n_0 : STD_LOGIC;
  signal access_is_fix : STD_LOGIC;
  signal access_is_fix_q : STD_LOGIC;
  signal access_is_incr : STD_LOGIC;
  signal access_is_incr_q : STD_LOGIC;
  signal access_is_wrap : STD_LOGIC;
  signal access_is_wrap_q : STD_LOGIC;
  signal \^areset_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cmd_b_push_block : STD_LOGIC;
  signal \cmd_length_i_carry__0_n_1\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_n_2\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_n_3\ : STD_LOGIC;
  signal cmd_length_i_carry_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_n_1 : STD_LOGIC;
  signal cmd_length_i_carry_n_2 : STD_LOGIC;
  signal cmd_length_i_carry_n_3 : STD_LOGIC;
  signal cmd_mask_q : STD_LOGIC;
  signal \cmd_mask_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[3]\ : STD_LOGIC;
  signal cmd_push : STD_LOGIC;
  signal cmd_push_block : STD_LOGIC;
  signal cmd_queue_n_14 : STD_LOGIC;
  signal cmd_queue_n_15 : STD_LOGIC;
  signal cmd_queue_n_16 : STD_LOGIC;
  signal cmd_queue_n_17 : STD_LOGIC;
  signal cmd_queue_n_18 : STD_LOGIC;
  signal cmd_queue_n_19 : STD_LOGIC;
  signal cmd_queue_n_20 : STD_LOGIC;
  signal cmd_queue_n_21 : STD_LOGIC;
  signal cmd_queue_n_22 : STD_LOGIC;
  signal cmd_queue_n_66 : STD_LOGIC;
  signal cmd_queue_n_67 : STD_LOGIC;
  signal cmd_queue_n_68 : STD_LOGIC;
  signal cmd_queue_n_69 : STD_LOGIC;
  signal cmd_queue_n_70 : STD_LOGIC;
  signal cmd_queue_n_71 : STD_LOGIC;
  signal cmd_queue_n_72 : STD_LOGIC;
  signal cmd_queue_n_73 : STD_LOGIC;
  signal cmd_split_i : STD_LOGIC;
  signal command_ongoing : STD_LOGIC;
  signal \^command_ongoing_reg_0\ : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal downsized_len_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \downsized_len_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[4]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[5]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[7]_i_1_n_0\ : STD_LOGIC;
  signal \downsized_len_q[7]_i_2_n_0\ : STD_LOGIC;
  signal fix_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fix_len_q : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \fix_len_q[4]_i_1_n_0\ : STD_LOGIC;
  signal fix_need_to_split : STD_LOGIC;
  signal fix_need_to_split_q : STD_LOGIC;
  signal incr_need_to_split : STD_LOGIC;
  signal incr_need_to_split_q : STD_LOGIC;
  signal \inst/full\ : STD_LOGIC;
  signal \inst/full_0\ : STD_LOGIC;
  signal last_incr_split0 : STD_LOGIC;
  signal last_incr_split0_carry_n_2 : STD_LOGIC;
  signal last_incr_split0_carry_n_3 : STD_LOGIC;
  signal legal_wrap_len_q : STD_LOGIC;
  signal legal_wrap_len_q_i_1_n_0 : STD_LOGIC;
  signal legal_wrap_len_q_i_2_n_0 : STD_LOGIC;
  signal legal_wrap_len_q_i_3_n_0 : STD_LOGIC;
  signal legal_wrap_len_q_i_4_n_0 : STD_LOGIC;
  signal masked_addr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal masked_addr_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \masked_addr_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \masked_addr_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[5]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[7]_i_3_n_0\ : STD_LOGIC;
  signal \masked_addr_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \masked_addr_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \masked_addr_q[9]_i_2_n_0\ : STD_LOGIC;
  signal next_mi_addr : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \next_mi_addr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_7\ : STD_LOGIC;
  signal next_mi_addr0_carry_i_1_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_2_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_3_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_4_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_i_5_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_n_1 : STD_LOGIC;
  signal next_mi_addr0_carry_n_2 : STD_LOGIC;
  signal next_mi_addr0_carry_n_3 : STD_LOGIC;
  signal next_mi_addr0_carry_n_4 : STD_LOGIC;
  signal next_mi_addr0_carry_n_5 : STD_LOGIC;
  signal next_mi_addr0_carry_n_6 : STD_LOGIC;
  signal next_mi_addr0_carry_n_7 : STD_LOGIC;
  signal \next_mi_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal num_transactions : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \num_transactions_q[0]_i_2_n_0\ : STD_LOGIC;
  signal \num_transactions_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \num_transactions_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \num_transactions_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pre_mi_addr : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal \pushed_commands[7]_i_1_n_0\ : STD_LOGIC;
  signal \pushed_commands[7]_i_3_n_0\ : STD_LOGIC;
  signal \pushed_commands_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pushed_new_cmd : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal si_full_size_q : STD_LOGIC;
  signal si_full_size_q_i_1_n_0 : STD_LOGIC;
  signal size_mask : STD_LOGIC_VECTOR ( 0 to 0 );
  signal size_mask_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal split_addr_mask : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \split_addr_mask_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[6]\ : STD_LOGIC;
  signal split_ongoing : STD_LOGIC;
  signal unalignment_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal unalignment_addr_q : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wrap_need_to_split : STD_LOGIC;
  signal wrap_need_to_split_q : STD_LOGIC;
  signal wrap_need_to_split_q_i_2_n_0 : STD_LOGIC;
  signal wrap_need_to_split_q_i_3_n_0 : STD_LOGIC;
  signal wrap_rest_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wrap_rest_len0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wrap_rest_len[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_rest_len[7]_i_2_n_0\ : STD_LOGIC;
  signal wrap_unaligned_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wrap_unaligned_len_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_cmd_length_i_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_last_incr_split0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_last_incr_split0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_mi_addr0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_mi_addr0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of access_fit_mi_side_q_i_1 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of access_is_fix_q_i_1 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of access_is_incr_q_i_1 : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \cmd_mask_q[0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \cmd_mask_q[1]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \cmd_mask_q[2]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \cmd_mask_q[3]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \downsized_len_q[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \downsized_len_q[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \downsized_len_q[3]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \downsized_len_q[6]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \fix_len_q[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \fix_len_q[2]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \fix_len_q[3]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \fix_len_q[4]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of fix_need_to_split_q_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of legal_wrap_len_q_i_2 : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of legal_wrap_len_q_i_3 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \masked_addr_q[0]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \masked_addr_q[14]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \masked_addr_q[2]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \masked_addr_q[3]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \masked_addr_q[5]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \masked_addr_q[6]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \masked_addr_q[6]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \masked_addr_q[7]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \masked_addr_q[8]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \masked_addr_q[8]_i_2\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \masked_addr_q[8]_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \masked_addr_q[9]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \num_transactions_q[0]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \num_transactions_q[1]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \num_transactions_q[3]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \pushed_commands[1]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \pushed_commands[2]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \pushed_commands[3]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \pushed_commands[4]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \pushed_commands[6]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \pushed_commands[7]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of si_full_size_q_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \size_mask_q[0]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \size_mask_q[1]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \split_addr_mask_q[3]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \split_addr_mask_q[4]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \split_addr_mask_q[5]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \split_addr_mask_q[6]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \unalignment_addr_q[0]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \unalignment_addr_q[2]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \unalignment_addr_q[3]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \unalignment_addr_q[4]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of wrap_need_to_split_q_i_1 : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \wrap_rest_len[1]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \wrap_rest_len[2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \wrap_rest_len[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \wrap_rest_len[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \wrap_rest_len[6]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \wrap_rest_len[7]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[0]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[1]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[3]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[4]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[5]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[6]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[7]_i_1\ : label is "soft_lutpair113";
begin
  SR(0) <= \^sr\(0);
  areset_d(1 downto 0) <= \^areset_d\(1 downto 0);
  command_ongoing_reg_0 <= \^command_ongoing_reg_0\;
  din(10 downto 0) <= \^din\(10 downto 0);
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bid(0) <= \^s_axi_bid\(0);
\S_AXI_AADDR_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(0),
      Q => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(10),
      Q => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(11),
      Q => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(12),
      Q => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(13),
      Q => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(14),
      Q => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(15),
      Q => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(16),
      Q => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(17),
      Q => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(18),
      Q => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(19),
      Q => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(1),
      Q => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(20),
      Q => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(21),
      Q => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(22),
      Q => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(23),
      Q => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(24),
      Q => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(25),
      Q => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(26),
      Q => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(27),
      Q => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(28),
      Q => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(29),
      Q => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(2),
      Q => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(30),
      Q => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(31),
      Q => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(3),
      Q => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(4),
      Q => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(5),
      Q => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(6),
      Q => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(7),
      Q => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(8),
      Q => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(9),
      Q => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      R => '0'
    );
\S_AXI_ABURST_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awburst(0),
      Q => S_AXI_ABURST_Q(0),
      R => '0'
    );
\S_AXI_ABURST_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awburst(1),
      Q => S_AXI_ABURST_Q(1),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(0),
      Q => m_axi_awcache(0),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(1),
      Q => m_axi_awcache(1),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(2),
      Q => m_axi_awcache(2),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awcache(3),
      Q => m_axi_awcache(3),
      R => '0'
    );
\S_AXI_AID_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awid(0),
      Q => S_AXI_AID_Q,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(0),
      Q => p_0_in_0(0),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(1),
      Q => p_0_in_0(1),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(2),
      Q => p_0_in_0(2),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(3),
      Q => p_0_in_0(3),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(4),
      Q => \S_AXI_ALEN_Q_reg_n_0_[4]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(5),
      Q => \S_AXI_ALEN_Q_reg_n_0_[5]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(6),
      Q => \S_AXI_ALEN_Q_reg_n_0_[6]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlen(7),
      Q => \S_AXI_ALEN_Q_reg_n_0_[7]\,
      R => '0'
    );
\S_AXI_ALOCK_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awlock(0),
      Q => S_AXI_ALOCK_Q(0),
      R => '0'
    );
\S_AXI_APROT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(0),
      Q => m_axi_awprot(0),
      R => '0'
    );
\S_AXI_APROT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(1),
      Q => m_axi_awprot(1),
      R => '0'
    );
\S_AXI_APROT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awprot(2),
      Q => m_axi_awprot(2),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(0),
      Q => m_axi_awqos(0),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(1),
      Q => m_axi_awqos(1),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(2),
      Q => m_axi_awqos(2),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awqos(3),
      Q => m_axi_awqos(3),
      R => '0'
    );
S_AXI_AREADY_I_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_19\,
      Q => \^s_axi_awready\,
      R => \^sr\(0)
    );
\S_AXI_AREGION_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(0),
      Q => m_axi_awregion(0),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(1),
      Q => m_axi_awregion(1),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(2),
      Q => m_axi_awregion(2),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awregion(3),
      Q => m_axi_awregion(3),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(0),
      Q => S_AXI_ASIZE_Q(0),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(1),
      Q => S_AXI_ASIZE_Q(1),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(2),
      Q => S_AXI_ASIZE_Q(2),
      R => '0'
    );
\USE_B_CHANNEL.cmd_b_queue\: entity work.\top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo\
     port map (
      CLK => CLK,
      CO(0) => last_incr_split0,
      E(0) => pushed_new_cmd,
      Q(7 downto 0) => \pushed_commands_reg__0\(7 downto 0),
      S(2) => \USE_B_CHANNEL.cmd_b_queue_n_16\,
      S(1) => \USE_B_CHANNEL.cmd_b_queue_n_17\,
      S(0) => \USE_B_CHANNEL.cmd_b_queue_n_18\,
      SR(0) => \^sr\(0),
      S_AXI_AID_Q => S_AXI_AID_Q,
      \S_AXI_ALEN_Q_reg[3]\(3 downto 0) => p_0_in_0(3 downto 0),
      S_AXI_AREADY_I_reg => \USE_B_CHANNEL.cmd_b_queue_n_19\,
      S_AXI_AREADY_I_reg_0(0) => \^s_axi_awready\,
      S_AXI_AREADY_I_reg_1(0) => \pushed_commands[7]_i_1_n_0\,
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      areset_d(0) => \^areset_d\(1),
      \areset_d_reg[0]\ => \^areset_d\(0),
      \areset_d_reg[1]\ => \^command_ongoing_reg_0\,
      cmd_b_push_block => cmd_b_push_block,
      cmd_b_push_block_reg => \USE_B_CHANNEL.cmd_b_queue_n_23\,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => \USE_B_CHANNEL.cmd_b_queue_n_21\,
      command_ongoing => command_ongoing,
      command_ongoing_reg => \USE_B_CHANNEL.cmd_b_queue_n_20\,
      din(0) => cmd_split_i,
      dout(8 downto 0) => dout(8 downto 0),
      empty => empty,
      fix_need_to_split_q => fix_need_to_split_q,
      full => \inst/full\,
      incr_need_to_split_q => incr_need_to_split_q,
      m_axi_awready => m_axi_awready,
      \num_transactions_q_reg[3]\(3) => \num_transactions_q_reg_n_0_[3]\,
      \num_transactions_q_reg[3]\(2) => \num_transactions_q_reg_n_0_[2]\,
      \num_transactions_q_reg[3]\(1) => \num_transactions_q_reg_n_0_[1]\,
      \num_transactions_q_reg[3]\(0) => \num_transactions_q_reg_n_0_[0]\,
      \out\ => \out\,
      \queue_id_reg[0]\ => \USE_B_CHANNEL.cmd_b_queue_n_22\,
      ram_full_i_reg => \inst/full_0\,
      rd_en => rd_en,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => \^s_axi_bid\(0),
      split_ongoing => split_ongoing,
      split_ongoing_reg => \USE_B_CHANNEL.cmd_b_queue_n_13\,
      wr_en => cmd_push,
      wrap_need_to_split_q => wrap_need_to_split_q
    );
access_fit_mi_side_q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => access_fit_mi_side_q_i_1_n_0
    );
access_fit_mi_side_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => access_fit_mi_side_q_i_1_n_0,
      Q => access_fit_mi_side_q,
      R => \^sr\(0)
    );
access_is_fix_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => access_is_fix
    );
access_is_fix_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => access_is_fix,
      Q => access_is_fix_q,
      R => \^sr\(0)
    );
access_is_incr_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => access_is_incr
    );
access_is_incr_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => access_is_incr,
      Q => access_is_incr_q,
      R => \^sr\(0)
    );
access_is_wrap_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      O => access_is_wrap
    );
access_is_wrap_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => access_is_wrap,
      Q => access_is_wrap_q,
      R => \^sr\(0)
    );
\areset_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \^sr\(0),
      Q => \^areset_d\(0),
      R => '0'
    );
\areset_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \^areset_d\(0),
      Q => \^areset_d\(1),
      R => '0'
    );
cmd_b_push_block_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_23\,
      Q => cmd_b_push_block,
      R => '0'
    );
cmd_length_i_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cmd_length_i_carry_n_0,
      CO(2) => cmd_length_i_carry_n_1,
      CO(1) => cmd_length_i_carry_n_2,
      CO(0) => cmd_length_i_carry_n_3,
      CYINIT => '1',
      DI(3) => cmd_queue_n_14,
      DI(2) => cmd_queue_n_15,
      DI(1) => cmd_queue_n_16,
      DI(0) => cmd_queue_n_17,
      O(3 downto 0) => \^din\(3 downto 0),
      S(3) => cmd_queue_n_70,
      S(2) => cmd_queue_n_71,
      S(1) => cmd_queue_n_72,
      S(0) => cmd_queue_n_73
    );
\cmd_length_i_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cmd_length_i_carry_n_0,
      CO(3) => \NLW_cmd_length_i_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \cmd_length_i_carry__0_n_1\,
      CO(1) => \cmd_length_i_carry__0_n_2\,
      CO(0) => \cmd_length_i_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cmd_queue_n_18,
      DI(1) => cmd_queue_n_19,
      DI(0) => cmd_queue_n_20,
      O(3 downto 0) => \^din\(7 downto 4),
      S(3) => cmd_queue_n_66,
      S(2) => cmd_queue_n_67,
      S(1) => cmd_queue_n_68,
      S(0) => cmd_queue_n_69
    );
\cmd_mask_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => cmd_mask_q,
      O => \cmd_mask_q[0]_i_1_n_0\
    );
\cmd_mask_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEEE"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(1),
      I5 => cmd_mask_q,
      O => \cmd_mask_q[1]_i_1_n_0\
    );
\cmd_mask_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s_axi_awburst(0),
      I2 => s_axi_awburst(1),
      O => cmd_mask_q
    );
\cmd_mask_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => \^s_axi_awready\,
      I3 => \masked_addr_q[2]_i_2_n_0\,
      O => \cmd_mask_q[2]_i_1_n_0\
    );
\cmd_mask_q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => \^s_axi_awready\,
      I3 => \masked_addr_q[3]_i_2_n_0\,
      O => \cmd_mask_q[3]_i_1_n_0\
    );
\cmd_mask_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[0]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[1]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[2]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\cmd_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \cmd_mask_q[3]_i_1_n_0\,
      Q => \cmd_mask_q_reg_n_0_[3]\,
      R => \^sr\(0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_21\,
      Q => cmd_push_block,
      R => '0'
    );
cmd_queue: entity work.\top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized0\
     port map (
      CLK => CLK,
      CO(0) => last_incr_split0,
      D(3 downto 0) => D(3 downto 0),
      DI(3) => cmd_queue_n_14,
      DI(2) => cmd_queue_n_15,
      DI(1) => cmd_queue_n_16,
      DI(0) => cmd_queue_n_17,
      E(0) => E(0),
      Q(7 downto 0) => wrap_rest_len(7 downto 0),
      S(3) => cmd_queue_n_66,
      S(2) => cmd_queue_n_67,
      S(1) => cmd_queue_n_68,
      S(0) => cmd_queue_n_69,
      SR(0) => \^sr\(0),
      \S_AXI_AADDR_Q_reg[3]\(3) => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      \S_AXI_AADDR_Q_reg[3]\(2) => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      \S_AXI_AADDR_Q_reg[3]\(1) => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      \S_AXI_AADDR_Q_reg[3]\(0) => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      \S_AXI_ALEN_Q_reg[7]\(7) => \S_AXI_ALEN_Q_reg_n_0_[7]\,
      \S_AXI_ALEN_Q_reg[7]\(6) => \S_AXI_ALEN_Q_reg_n_0_[6]\,
      \S_AXI_ALEN_Q_reg[7]\(5) => \S_AXI_ALEN_Q_reg_n_0_[5]\,
      \S_AXI_ALEN_Q_reg[7]\(4) => \S_AXI_ALEN_Q_reg_n_0_[4]\,
      \S_AXI_ALEN_Q_reg[7]\(3 downto 0) => p_0_in_0(3 downto 0),
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      cmd_push_block => cmd_push_block,
      command_ongoing => command_ongoing,
      \current_word_1_reg[3]\(3 downto 0) => \current_word_1_reg[3]\(3 downto 0),
      din(16) => cmd_split_i,
      din(15) => access_fit_mi_side_q,
      din(14) => \cmd_mask_q_reg_n_0_[3]\,
      din(13) => \cmd_mask_q_reg_n_0_[2]\,
      din(12) => \cmd_mask_q_reg_n_0_[1]\,
      din(11) => \cmd_mask_q_reg_n_0_[0]\,
      din(10 downto 3) => \^din\(7 downto 0),
      din(2 downto 0) => S_AXI_ASIZE_Q(2 downto 0),
      dout(8 downto 0) => \current_word_1_reg[2]\(8 downto 0),
      \downsized_len_q_reg[7]\(7 downto 0) => downsized_len_q(7 downto 0),
      first_mi_word => first_mi_word,
      first_word_reg => first_word_reg,
      \fix_len_q_reg[4]\(4 downto 0) => fix_len_q(4 downto 0),
      fix_need_to_split_q => fix_need_to_split_q,
      full => \inst/full_0\,
      \goreg_dm.dout_i_reg[8]\ => \goreg_dm.dout_i_reg[8]\,
      \gpr1.dout_i_reg[7]\(2) => cmd_queue_n_18,
      \gpr1.dout_i_reg[7]\(1) => cmd_queue_n_19,
      \gpr1.dout_i_reg[7]\(0) => cmd_queue_n_20,
      \gpr1.dout_i_reg[7]_0\(3) => cmd_queue_n_70,
      \gpr1.dout_i_reg[7]_0\(2) => cmd_queue_n_71,
      \gpr1.dout_i_reg[7]_0\(1) => cmd_queue_n_72,
      \gpr1.dout_i_reg[7]_0\(0) => cmd_queue_n_73,
      incr_need_to_split_q => incr_need_to_split_q,
      legal_wrap_len_q => legal_wrap_len_q,
      \length_counter_1_reg[7]\(0) => Q(0),
      \m_axi_awsize[2]\(2 downto 0) => \^din\(10 downto 8),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \next_mi_addr_reg[8]\ => cmd_queue_n_21,
      \next_mi_addr_reg[8]_0\ => cmd_queue_n_22,
      \pushed_commands_reg[7]\ => \USE_B_CHANNEL.cmd_b_queue_n_13\,
      ram_full_i_reg => \inst/full\,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      si_full_size_q => si_full_size_q,
      size_mask_q(2) => size_mask_q(3),
      size_mask_q(1 downto 0) => size_mask_q(1 downto 0),
      \split_addr_mask_q_reg[3]\(0) => \split_addr_mask_q_reg_n_0_[3]\,
      split_ongoing => split_ongoing,
      \unalignment_addr_q_reg[4]\(4 downto 0) => unalignment_addr_q(4 downto 0),
      wr_en => cmd_push,
      wrap_need_to_split_q => wrap_need_to_split_q,
      \wrap_unaligned_len_q_reg[7]\(7 downto 0) => wrap_unaligned_len_q(7 downto 0)
    );
command_ongoing_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^areset_d\(1),
      I1 => \^areset_d\(0),
      O => \^command_ongoing_reg_0\
    );
command_ongoing_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_20\,
      Q => command_ongoing,
      R => \^sr\(0)
    );
\downsized_len_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      O => \downsized_len_q[0]_i_1_n_0\
    );
\downsized_len_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222FEEE"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => \masked_addr_q[3]_i_2_n_0\,
      O => \downsized_len_q[1]_i_1_n_0\
    );
\downsized_len_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEE2CEEECEE2"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(0),
      I5 => \masked_addr_q[4]_i_2_n_0\,
      O => \downsized_len_q[2]_i_1_n_0\
    );
\downsized_len_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0222"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => \masked_addr_q[5]_i_2_n_0\,
      O => \downsized_len_q[3]_i_1_n_0\
    );
\downsized_len_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BB88BB88BB88"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \num_transactions_q[0]_i_2_n_0\,
      I3 => s_axi_awlen(4),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(0),
      O => \downsized_len_q[4]_i_1_n_0\
    );
\downsized_len_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BB88BB88BB88"
    )
        port map (
      I0 => \masked_addr_q[7]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[7]_i_3_n_0\,
      I3 => s_axi_awlen(5),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(0),
      O => \downsized_len_q[5]_i_1_n_0\
    );
\downsized_len_q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0222"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => \masked_addr_q[8]_i_2_n_0\,
      O => \downsized_len_q[6]_i_1_n_0\
    );
\downsized_len_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55EA40BF15AA00"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => \downsized_len_q[7]_i_2_n_0\,
      I4 => s_axi_awlen(7),
      I5 => s_axi_awlen(6),
      O => \downsized_len_q[7]_i_1_n_0\
    );
\downsized_len_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(4),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(5),
      O => \downsized_len_q[7]_i_2_n_0\
    );
\downsized_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[0]_i_1_n_0\,
      Q => downsized_len_q(0),
      R => \^sr\(0)
    );
\downsized_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[1]_i_1_n_0\,
      Q => downsized_len_q(1),
      R => \^sr\(0)
    );
\downsized_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[2]_i_1_n_0\,
      Q => downsized_len_q(2),
      R => \^sr\(0)
    );
\downsized_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[3]_i_1_n_0\,
      Q => downsized_len_q(3),
      R => \^sr\(0)
    );
\downsized_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[4]_i_1_n_0\,
      Q => downsized_len_q(4),
      R => \^sr\(0)
    );
\downsized_len_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[5]_i_1_n_0\,
      Q => downsized_len_q(5),
      R => \^sr\(0)
    );
\downsized_len_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[6]_i_1_n_0\,
      Q => downsized_len_q(6),
      R => \^sr\(0)
    );
\downsized_len_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \downsized_len_q[7]_i_1_n_0\,
      Q => downsized_len_q(7),
      R => \^sr\(0)
    );
\fix_len_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => fix_len(0)
    );
\fix_len_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => fix_len(2)
    );
\fix_len_q[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      O => fix_len(3)
    );
\fix_len_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => \fix_len_q[4]_i_1_n_0\
    );
\fix_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_len(0),
      Q => fix_len_q(0),
      R => \^sr\(0)
    );
\fix_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awsize(2),
      Q => fix_len_q(1),
      R => \^sr\(0)
    );
\fix_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_len(2),
      Q => fix_len_q(2),
      R => \^sr\(0)
    );
\fix_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_len(3),
      Q => fix_len_q(3),
      R => \^sr\(0)
    );
\fix_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \fix_len_q[4]_i_1_n_0\,
      Q => fix_len_q(4),
      R => \^sr\(0)
    );
fix_need_to_split_q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111000"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => fix_need_to_split
    );
fix_need_to_split_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => fix_need_to_split,
      Q => fix_need_to_split_q,
      R => \^sr\(0)
    );
incr_need_to_split_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => \num_transactions_q[1]_i_1_n_0\,
      I3 => num_transactions(0),
      I4 => num_transactions(3),
      I5 => \num_transactions_q[2]_i_1_n_0\,
      O => incr_need_to_split
    );
incr_need_to_split_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => incr_need_to_split,
      Q => incr_need_to_split_q,
      R => \^sr\(0)
    );
last_incr_split0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_last_incr_split0_carry_CO_UNCONNECTED(3),
      CO(2) => last_incr_split0,
      CO(1) => last_incr_split0_carry_n_2,
      CO(0) => last_incr_split0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_last_incr_split0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => \USE_B_CHANNEL.cmd_b_queue_n_16\,
      S(1) => \USE_B_CHANNEL.cmd_b_queue_n_17\,
      S(0) => \USE_B_CHANNEL.cmd_b_queue_n_18\
    );
legal_wrap_len_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000555555F7"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awlen(1),
      I2 => legal_wrap_len_q_i_2_n_0,
      I3 => legal_wrap_len_q_i_3_n_0,
      I4 => s_axi_awlen(2),
      I5 => legal_wrap_len_q_i_4_n_0,
      O => legal_wrap_len_q_i_1_n_0
    );
legal_wrap_len_q_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      O => legal_wrap_len_q_i_2_n_0
    );
legal_wrap_len_q_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(0),
      O => legal_wrap_len_q_i_3_n_0
    );
legal_wrap_len_q_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555554"
    )
        port map (
      I0 => access_fit_mi_side_q_i_1_n_0,
      I1 => s_axi_awlen(7),
      I2 => s_axi_awlen(6),
      I3 => s_axi_awlen(3),
      I4 => s_axi_awlen(4),
      I5 => s_axi_awlen(5),
      O => legal_wrap_len_q_i_4_n_0
    );
legal_wrap_len_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => legal_wrap_len_q_i_1_n_0,
      Q => legal_wrap_len_q,
      R => \^sr\(0)
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(0),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_awaddr(0)
    );
\m_axi_awaddr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(10),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(10),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      O => m_axi_awaddr(10)
    );
\m_axi_awaddr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(11),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(11),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      O => m_axi_awaddr(11)
    );
\m_axi_awaddr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(12),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(12),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      O => m_axi_awaddr(12)
    );
\m_axi_awaddr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(13),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(13),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      O => m_axi_awaddr(13)
    );
\m_axi_awaddr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(14),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(14),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      O => m_axi_awaddr(14)
    );
\m_axi_awaddr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(15),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(15),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      O => m_axi_awaddr(15)
    );
\m_axi_awaddr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(16),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(16),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      O => m_axi_awaddr(16)
    );
\m_axi_awaddr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(17),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(17),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      O => m_axi_awaddr(17)
    );
\m_axi_awaddr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(18),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(18),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      O => m_axi_awaddr(18)
    );
\m_axi_awaddr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(19),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(19),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      O => m_axi_awaddr(19)
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(1),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_awaddr(1)
    );
\m_axi_awaddr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(20),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(20),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      O => m_axi_awaddr(20)
    );
\m_axi_awaddr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(21),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(21),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      O => m_axi_awaddr(21)
    );
\m_axi_awaddr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(22),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(22),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      O => m_axi_awaddr(22)
    );
\m_axi_awaddr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(23),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(23),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      O => m_axi_awaddr(23)
    );
\m_axi_awaddr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(24),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(24),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      O => m_axi_awaddr(24)
    );
\m_axi_awaddr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(25),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(25),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      O => m_axi_awaddr(25)
    );
\m_axi_awaddr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(26),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(26),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      O => m_axi_awaddr(26)
    );
\m_axi_awaddr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(27),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(27),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      O => m_axi_awaddr(27)
    );
\m_axi_awaddr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(28),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(28),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      O => m_axi_awaddr(28)
    );
\m_axi_awaddr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(29),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(29),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      O => m_axi_awaddr(29)
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8F0F0F0F0"
    )
        port map (
      I0 => masked_addr_q(2),
      I1 => access_is_wrap_q,
      I2 => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      I3 => next_mi_addr(2),
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => m_axi_awaddr(2)
    );
\m_axi_awaddr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(30),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(30),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      O => m_axi_awaddr(30)
    );
\m_axi_awaddr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(31),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(31),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      O => m_axi_awaddr(31)
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8F0F0F0F0"
    )
        port map (
      I0 => masked_addr_q(3),
      I1 => access_is_wrap_q,
      I2 => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      I3 => next_mi_addr(3),
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => m_axi_awaddr(3)
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(4),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(4),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      O => m_axi_awaddr(4)
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(5),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(5),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      O => m_axi_awaddr(5)
    );
\m_axi_awaddr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(6),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(6),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      O => m_axi_awaddr(6)
    );
\m_axi_awaddr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(7),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(7),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      O => m_axi_awaddr(7)
    );
\m_axi_awaddr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(8),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(8),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      O => m_axi_awaddr(8)
    );
\m_axi_awaddr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(9),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(9),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      O => m_axi_awaddr(9)
    );
\m_axi_awburst[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEFEE"
    )
        port map (
      I0 => S_AXI_ABURST_Q(0),
      I1 => access_is_fix_q,
      I2 => legal_wrap_len_q,
      I3 => access_is_wrap_q,
      I4 => access_fit_mi_side_q,
      O => m_axi_awburst(0)
    );
\m_axi_awburst[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2022"
    )
        port map (
      I0 => S_AXI_ABURST_Q(1),
      I1 => access_is_fix_q,
      I2 => legal_wrap_len_q,
      I3 => access_is_wrap_q,
      I4 => access_fit_mi_side_q,
      O => m_axi_awburst(1)
    );
\m_axi_awlock[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => S_AXI_ALOCK_Q(0),
      I1 => wrap_need_to_split_q,
      I2 => incr_need_to_split_q,
      I3 => fix_need_to_split_q,
      O => m_axi_awlock(0)
    );
\masked_addr_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => masked_addr(0)
    );
\masked_addr_q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002AAAAAAA2AAA"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(7),
      I4 => s_axi_awsize(2),
      I5 => \num_transactions_q[0]_i_2_n_0\,
      O => masked_addr(10)
    );
\masked_addr_q[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \num_transactions_q[1]_i_1_n_0\,
      O => masked_addr(11)
    );
\masked_addr_q[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => \num_transactions_q[2]_i_1_n_0\,
      O => masked_addr(12)
    );
\masked_addr_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202AAAAAAAAAAAAA"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(7),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => masked_addr(13)
    );
\masked_addr_q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => s_axi_awaddr(14),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      O => masked_addr(14)
    );
\masked_addr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000020202"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(1),
      O => masked_addr(1)
    );
\masked_addr_q[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \masked_addr_q[2]_i_2_n_0\,
      O => masked_addr(2)
    );
\masked_addr_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015105050151"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awlen(0),
      O => \masked_addr_q[2]_i_2_n_0\
    );
\masked_addr_q[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \masked_addr_q[3]_i_2_n_0\,
      O => masked_addr(3)
    );
\masked_addr_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(2),
      I4 => s_axi_awsize(1),
      I5 => \masked_addr_q[3]_i_3_n_0\,
      O => \masked_addr_q[3]_i_2_n_0\
    );
\masked_addr_q[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(1),
      O => \masked_addr_q[3]_i_3_n_0\
    );
\masked_addr_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020202A2"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \masked_addr_q[4]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awsize(1),
      O => masked_addr(4)
    );
\masked_addr_q[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(3),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(4),
      O => \masked_addr_q[4]_i_2_n_0\
    );
\masked_addr_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \masked_addr_q[5]_i_2_n_0\,
      O => masked_addr(5)
    );
\masked_addr_q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFFFFFEAE0000"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awsize(2),
      I5 => \downsized_len_q[7]_i_2_n_0\,
      O => \masked_addr_q[5]_i_2_n_0\
    );
\masked_addr_q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4700"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \num_transactions_q[0]_i_2_n_0\,
      I3 => s_axi_awaddr(6),
      O => masked_addr(6)
    );
\masked_addr_q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(2),
      O => \masked_addr_q[6]_i_2_n_0\
    );
\masked_addr_q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4700"
    )
        port map (
      I0 => \masked_addr_q[7]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[7]_i_3_n_0\,
      I3 => s_axi_awaddr(7),
      O => masked_addr(7)
    );
\masked_addr_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(2),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(3),
      O => \masked_addr_q[7]_i_2_n_0\
    );
\masked_addr_q[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(4),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(6),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(7),
      O => \masked_addr_q[7]_i_3_n_0\
    );
\masked_addr_q[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \masked_addr_q[8]_i_2_n_0\,
      O => masked_addr(8)
    );
\masked_addr_q[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \masked_addr_q[4]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \masked_addr_q[8]_i_3_n_0\,
      O => \masked_addr_q[8]_i_2_n_0\
    );
\masked_addr_q[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => s_axi_awlen(5),
      I1 => s_axi_awlen(6),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(7),
      O => \masked_addr_q[8]_i_3_n_0\
    );
\masked_addr_q[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \masked_addr_q[9]_i_2_n_0\,
      O => masked_addr(9)
    );
\masked_addr_q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \downsized_len_q[7]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(6),
      I5 => s_axi_awsize(1),
      O => \masked_addr_q[9]_i_2_n_0\
    );
\masked_addr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(0),
      Q => masked_addr_q(0),
      R => \^sr\(0)
    );
\masked_addr_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(10),
      Q => masked_addr_q(10),
      R => \^sr\(0)
    );
\masked_addr_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(11),
      Q => masked_addr_q(11),
      R => \^sr\(0)
    );
\masked_addr_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(12),
      Q => masked_addr_q(12),
      R => \^sr\(0)
    );
\masked_addr_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(13),
      Q => masked_addr_q(13),
      R => \^sr\(0)
    );
\masked_addr_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(14),
      Q => masked_addr_q(14),
      R => \^sr\(0)
    );
\masked_addr_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(15),
      Q => masked_addr_q(15),
      R => \^sr\(0)
    );
\masked_addr_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(16),
      Q => masked_addr_q(16),
      R => \^sr\(0)
    );
\masked_addr_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(17),
      Q => masked_addr_q(17),
      R => \^sr\(0)
    );
\masked_addr_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(18),
      Q => masked_addr_q(18),
      R => \^sr\(0)
    );
\masked_addr_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(19),
      Q => masked_addr_q(19),
      R => \^sr\(0)
    );
\masked_addr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(1),
      Q => masked_addr_q(1),
      R => \^sr\(0)
    );
\masked_addr_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(20),
      Q => masked_addr_q(20),
      R => \^sr\(0)
    );
\masked_addr_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(21),
      Q => masked_addr_q(21),
      R => \^sr\(0)
    );
\masked_addr_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(22),
      Q => masked_addr_q(22),
      R => \^sr\(0)
    );
\masked_addr_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(23),
      Q => masked_addr_q(23),
      R => \^sr\(0)
    );
\masked_addr_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(24),
      Q => masked_addr_q(24),
      R => \^sr\(0)
    );
\masked_addr_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(25),
      Q => masked_addr_q(25),
      R => \^sr\(0)
    );
\masked_addr_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(26),
      Q => masked_addr_q(26),
      R => \^sr\(0)
    );
\masked_addr_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(27),
      Q => masked_addr_q(27),
      R => \^sr\(0)
    );
\masked_addr_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(28),
      Q => masked_addr_q(28),
      R => \^sr\(0)
    );
\masked_addr_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(29),
      Q => masked_addr_q(29),
      R => \^sr\(0)
    );
\masked_addr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(2),
      Q => masked_addr_q(2),
      R => \^sr\(0)
    );
\masked_addr_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(30),
      Q => masked_addr_q(30),
      R => \^sr\(0)
    );
\masked_addr_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => s_axi_awaddr(31),
      Q => masked_addr_q(31),
      R => \^sr\(0)
    );
\masked_addr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(3),
      Q => masked_addr_q(3),
      R => \^sr\(0)
    );
\masked_addr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(4),
      Q => masked_addr_q(4),
      R => \^sr\(0)
    );
\masked_addr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(5),
      Q => masked_addr_q(5),
      R => \^sr\(0)
    );
\masked_addr_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(6),
      Q => masked_addr_q(6),
      R => \^sr\(0)
    );
\masked_addr_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(7),
      Q => masked_addr_q(7),
      R => \^sr\(0)
    );
\masked_addr_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(8),
      Q => masked_addr_q(8),
      R => \^sr\(0)
    );
\masked_addr_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => masked_addr(9),
      Q => masked_addr_q(9),
      R => \^sr\(0)
    );
next_mi_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_mi_addr0_carry_n_0,
      CO(2) => next_mi_addr0_carry_n_1,
      CO(1) => next_mi_addr0_carry_n_2,
      CO(0) => next_mi_addr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => next_mi_addr0_carry_i_1_n_0,
      DI(0) => '0',
      O(3) => next_mi_addr0_carry_n_4,
      O(2) => next_mi_addr0_carry_n_5,
      O(1) => next_mi_addr0_carry_n_6,
      O(0) => next_mi_addr0_carry_n_7,
      S(3) => next_mi_addr0_carry_i_2_n_0,
      S(2) => next_mi_addr0_carry_i_3_n_0,
      S(1) => next_mi_addr0_carry_i_4_n_0,
      S(0) => next_mi_addr0_carry_i_5_n_0
    );
\next_mi_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_mi_addr0_carry_n_0,
      CO(3) => \next_mi_addr0_carry__0_n_0\,
      CO(2) => \next_mi_addr0_carry__0_n_1\,
      CO(1) => \next_mi_addr0_carry__0_n_2\,
      CO(0) => \next_mi_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__0_n_4\,
      O(2) => \next_mi_addr0_carry__0_n_5\,
      O(1) => \next_mi_addr0_carry__0_n_6\,
      O(0) => \next_mi_addr0_carry__0_n_7\,
      S(3) => \next_mi_addr0_carry__0_i_1_n_0\,
      S(2) => \next_mi_addr0_carry__0_i_2_n_0\,
      S(1) => \next_mi_addr0_carry__0_i_3_n_0\,
      S(0) => \next_mi_addr0_carry__0_i_4_n_0\
    );
\next_mi_addr0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(16),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(16),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_1_n_0\
    );
\next_mi_addr0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(15),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(15),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_2_n_0\
    );
\next_mi_addr0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(14),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(14),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_3_n_0\
    );
\next_mi_addr0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(13),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(13),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_4_n_0\
    );
\next_mi_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__0_n_0\,
      CO(3) => \next_mi_addr0_carry__1_n_0\,
      CO(2) => \next_mi_addr0_carry__1_n_1\,
      CO(1) => \next_mi_addr0_carry__1_n_2\,
      CO(0) => \next_mi_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__1_n_4\,
      O(2) => \next_mi_addr0_carry__1_n_5\,
      O(1) => \next_mi_addr0_carry__1_n_6\,
      O(0) => \next_mi_addr0_carry__1_n_7\,
      S(3) => \next_mi_addr0_carry__1_i_1_n_0\,
      S(2) => \next_mi_addr0_carry__1_i_2_n_0\,
      S(1) => \next_mi_addr0_carry__1_i_3_n_0\,
      S(0) => \next_mi_addr0_carry__1_i_4_n_0\
    );
\next_mi_addr0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(20),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(20),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_1_n_0\
    );
\next_mi_addr0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(19),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(19),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_2_n_0\
    );
\next_mi_addr0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(18),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(18),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_3_n_0\
    );
\next_mi_addr0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(17),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(17),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_4_n_0\
    );
\next_mi_addr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__1_n_0\,
      CO(3) => \next_mi_addr0_carry__2_n_0\,
      CO(2) => \next_mi_addr0_carry__2_n_1\,
      CO(1) => \next_mi_addr0_carry__2_n_2\,
      CO(0) => \next_mi_addr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__2_n_4\,
      O(2) => \next_mi_addr0_carry__2_n_5\,
      O(1) => \next_mi_addr0_carry__2_n_6\,
      O(0) => \next_mi_addr0_carry__2_n_7\,
      S(3) => \next_mi_addr0_carry__2_i_1_n_0\,
      S(2) => \next_mi_addr0_carry__2_i_2_n_0\,
      S(1) => \next_mi_addr0_carry__2_i_3_n_0\,
      S(0) => \next_mi_addr0_carry__2_i_4_n_0\
    );
\next_mi_addr0_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(24),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(24),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_1_n_0\
    );
\next_mi_addr0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(23),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(23),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_2_n_0\
    );
\next_mi_addr0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(22),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(22),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_3_n_0\
    );
\next_mi_addr0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(21),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(21),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_4_n_0\
    );
\next_mi_addr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__2_n_0\,
      CO(3) => \next_mi_addr0_carry__3_n_0\,
      CO(2) => \next_mi_addr0_carry__3_n_1\,
      CO(1) => \next_mi_addr0_carry__3_n_2\,
      CO(0) => \next_mi_addr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__3_n_4\,
      O(2) => \next_mi_addr0_carry__3_n_5\,
      O(1) => \next_mi_addr0_carry__3_n_6\,
      O(0) => \next_mi_addr0_carry__3_n_7\,
      S(3) => \next_mi_addr0_carry__3_i_1_n_0\,
      S(2) => \next_mi_addr0_carry__3_i_2_n_0\,
      S(1) => \next_mi_addr0_carry__3_i_3_n_0\,
      S(0) => \next_mi_addr0_carry__3_i_4_n_0\
    );
\next_mi_addr0_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(28),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(28),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_1_n_0\
    );
\next_mi_addr0_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(27),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(27),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_2_n_0\
    );
\next_mi_addr0_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(26),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(26),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_3_n_0\
    );
\next_mi_addr0_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(25),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(25),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_4_n_0\
    );
\next_mi_addr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_next_mi_addr0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \next_mi_addr0_carry__4_n_2\,
      CO(0) => \next_mi_addr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_next_mi_addr0_carry__4_O_UNCONNECTED\(3),
      O(2) => \next_mi_addr0_carry__4_n_5\,
      O(1) => \next_mi_addr0_carry__4_n_6\,
      O(0) => \next_mi_addr0_carry__4_n_7\,
      S(3) => '0',
      S(2) => \next_mi_addr0_carry__4_i_1_n_0\,
      S(1) => \next_mi_addr0_carry__4_i_2_n_0\,
      S(0) => \next_mi_addr0_carry__4_i_3_n_0\
    );
\next_mi_addr0_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(31),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(31),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__4_i_1_n_0\
    );
\next_mi_addr0_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(30),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(30),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__4_i_2_n_0\
    );
\next_mi_addr0_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(29),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(29),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__4_i_3_n_0\
    );
next_mi_addr0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(10),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(10),
      I5 => size_mask_q(3),
      O => next_mi_addr0_carry_i_1_n_0
    );
next_mi_addr0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(12),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(12),
      I5 => size_mask_q(3),
      O => next_mi_addr0_carry_i_2_n_0
    );
next_mi_addr0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(11),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(11),
      I5 => size_mask_q(3),
      O => next_mi_addr0_carry_i_3_n_0
    );
next_mi_addr0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757F7575757F7F7F"
    )
        port map (
      I0 => size_mask_q(3),
      I1 => next_mi_addr(10),
      I2 => cmd_queue_n_21,
      I3 => masked_addr_q(10),
      I4 => cmd_queue_n_22,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      O => next_mi_addr0_carry_i_4_n_0
    );
next_mi_addr0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(9),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(9),
      I5 => size_mask_q(3),
      O => next_mi_addr0_carry_i_5_n_0
    );
\next_mi_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD888D800000000"
    )
        port map (
      I0 => cmd_queue_n_21,
      I1 => next_mi_addr(2),
      I2 => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      I3 => cmd_queue_n_22,
      I4 => masked_addr_q(2),
      I5 => access_fit_mi_side_q,
      O => \next_mi_addr[2]_i_1_n_0\
    );
\next_mi_addr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2808080A280"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[3]\,
      I1 => cmd_queue_n_21,
      I2 => next_mi_addr(3),
      I3 => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      I4 => cmd_queue_n_22,
      I5 => masked_addr_q(3),
      O => pre_mi_addr(3)
    );
\next_mi_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[4]\,
      I1 => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      I2 => cmd_queue_n_22,
      I3 => masked_addr_q(4),
      I4 => cmd_queue_n_21,
      I5 => next_mi_addr(4),
      O => pre_mi_addr(4)
    );
\next_mi_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[5]\,
      I1 => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      I2 => cmd_queue_n_22,
      I3 => masked_addr_q(5),
      I4 => cmd_queue_n_21,
      I5 => next_mi_addr(5),
      O => pre_mi_addr(5)
    );
\next_mi_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[6]\,
      I1 => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      I2 => cmd_queue_n_22,
      I3 => masked_addr_q(6),
      I4 => cmd_queue_n_21,
      I5 => next_mi_addr(6),
      O => pre_mi_addr(6)
    );
\next_mi_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(7),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(7),
      I5 => size_mask_q(3),
      O => \next_mi_addr[7]_i_1_n_0\
    );
\next_mi_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      I1 => cmd_queue_n_22,
      I2 => masked_addr_q(8),
      I3 => cmd_queue_n_21,
      I4 => next_mi_addr(8),
      I5 => size_mask_q(3),
      O => \next_mi_addr[8]_i_1_n_0\
    );
\next_mi_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_6,
      Q => next_mi_addr(10),
      R => \^sr\(0)
    );
\next_mi_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_5,
      Q => next_mi_addr(11),
      R => \^sr\(0)
    );
\next_mi_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_4,
      Q => next_mi_addr(12),
      R => \^sr\(0)
    );
\next_mi_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_7\,
      Q => next_mi_addr(13),
      R => \^sr\(0)
    );
\next_mi_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_6\,
      Q => next_mi_addr(14),
      R => \^sr\(0)
    );
\next_mi_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_5\,
      Q => next_mi_addr(15),
      R => \^sr\(0)
    );
\next_mi_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_4\,
      Q => next_mi_addr(16),
      R => \^sr\(0)
    );
\next_mi_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_7\,
      Q => next_mi_addr(17),
      R => \^sr\(0)
    );
\next_mi_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_6\,
      Q => next_mi_addr(18),
      R => \^sr\(0)
    );
\next_mi_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_5\,
      Q => next_mi_addr(19),
      R => \^sr\(0)
    );
\next_mi_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_4\,
      Q => next_mi_addr(20),
      R => \^sr\(0)
    );
\next_mi_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_7\,
      Q => next_mi_addr(21),
      R => \^sr\(0)
    );
\next_mi_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_6\,
      Q => next_mi_addr(22),
      R => \^sr\(0)
    );
\next_mi_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_5\,
      Q => next_mi_addr(23),
      R => \^sr\(0)
    );
\next_mi_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_4\,
      Q => next_mi_addr(24),
      R => \^sr\(0)
    );
\next_mi_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_7\,
      Q => next_mi_addr(25),
      R => \^sr\(0)
    );
\next_mi_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_6\,
      Q => next_mi_addr(26),
      R => \^sr\(0)
    );
\next_mi_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_5\,
      Q => next_mi_addr(27),
      R => \^sr\(0)
    );
\next_mi_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_4\,
      Q => next_mi_addr(28),
      R => \^sr\(0)
    );
\next_mi_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__4_n_7\,
      Q => next_mi_addr(29),
      R => \^sr\(0)
    );
\next_mi_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[2]_i_1_n_0\,
      Q => next_mi_addr(2),
      R => \^sr\(0)
    );
\next_mi_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__4_n_6\,
      Q => next_mi_addr(30),
      R => \^sr\(0)
    );
\next_mi_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__4_n_5\,
      Q => next_mi_addr(31),
      R => \^sr\(0)
    );
\next_mi_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(3),
      Q => next_mi_addr(3),
      R => \^sr\(0)
    );
\next_mi_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(4),
      Q => next_mi_addr(4),
      R => \^sr\(0)
    );
\next_mi_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(5),
      Q => next_mi_addr(5),
      R => \^sr\(0)
    );
\next_mi_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(6),
      Q => next_mi_addr(6),
      R => \^sr\(0)
    );
\next_mi_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[7]_i_1_n_0\,
      Q => next_mi_addr(7),
      R => \^sr\(0)
    );
\next_mi_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[8]_i_1_n_0\,
      Q => next_mi_addr(8),
      R => \^sr\(0)
    );
\next_mi_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_7,
      Q => next_mi_addr(9),
      R => \^sr\(0)
    );
\num_transactions_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \num_transactions_q[0]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      O => num_transactions(0)
    );
\num_transactions_q[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(4),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(5),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awlen(6),
      O => \num_transactions_q[0]_i_2_n_0\
    );
\num_transactions_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \num_transactions_q[1]_i_2_n_0\,
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(5),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(4),
      I5 => s_axi_awsize(2),
      O => \num_transactions_q[1]_i_1_n_0\
    );
\num_transactions_q[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(7),
      O => \num_transactions_q[1]_i_2_n_0\
    );
\num_transactions_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => s_axi_awlen(7),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awlen(6),
      I4 => s_axi_awlen(5),
      I5 => s_axi_awsize(2),
      O => \num_transactions_q[2]_i_1_n_0\
    );
\num_transactions_q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awlen(7),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awlen(6),
      O => num_transactions(3)
    );
\num_transactions_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => num_transactions(0),
      Q => \num_transactions_q_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\num_transactions_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \num_transactions_q[1]_i_1_n_0\,
      Q => \num_transactions_q_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\num_transactions_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => \num_transactions_q[2]_i_1_n_0\,
      Q => \num_transactions_q_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\num_transactions_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => num_transactions(3),
      Q => \num_transactions_q_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\pushed_commands[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pushed_commands_reg__0\(0),
      O => p_0_in(0)
    );
\pushed_commands[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pushed_commands_reg__0\(0),
      I1 => \pushed_commands_reg__0\(1),
      O => p_0_in(1)
    );
\pushed_commands[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pushed_commands_reg__0\(2),
      I1 => \pushed_commands_reg__0\(1),
      I2 => \pushed_commands_reg__0\(0),
      O => p_0_in(2)
    );
\pushed_commands[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \pushed_commands_reg__0\(3),
      I1 => \pushed_commands_reg__0\(2),
      I2 => \pushed_commands_reg__0\(0),
      I3 => \pushed_commands_reg__0\(1),
      O => p_0_in(3)
    );
\pushed_commands[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \pushed_commands_reg__0\(4),
      I1 => \pushed_commands_reg__0\(1),
      I2 => \pushed_commands_reg__0\(0),
      I3 => \pushed_commands_reg__0\(2),
      I4 => \pushed_commands_reg__0\(3),
      O => p_0_in(4)
    );
\pushed_commands[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pushed_commands_reg__0\(5),
      I1 => \pushed_commands_reg__0\(3),
      I2 => \pushed_commands_reg__0\(2),
      I3 => \pushed_commands_reg__0\(0),
      I4 => \pushed_commands_reg__0\(1),
      I5 => \pushed_commands_reg__0\(4),
      O => p_0_in(5)
    );
\pushed_commands[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pushed_commands_reg__0\(6),
      I1 => \pushed_commands[7]_i_3_n_0\,
      O => p_0_in(6)
    );
\pushed_commands[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \out\,
      O => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pushed_commands_reg__0\(7),
      I1 => \pushed_commands[7]_i_3_n_0\,
      I2 => \pushed_commands_reg__0\(6),
      O => p_0_in(7)
    );
\pushed_commands[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \pushed_commands_reg__0\(5),
      I1 => \pushed_commands_reg__0\(3),
      I2 => \pushed_commands_reg__0\(2),
      I3 => \pushed_commands_reg__0\(0),
      I4 => \pushed_commands_reg__0\(1),
      I5 => \pushed_commands_reg__0\(4),
      O => \pushed_commands[7]_i_3_n_0\
    );
\pushed_commands_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(0),
      Q => \pushed_commands_reg__0\(0),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(1),
      Q => \pushed_commands_reg__0\(1),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(2),
      Q => \pushed_commands_reg__0\(2),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(3),
      Q => \pushed_commands_reg__0\(3),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(4),
      Q => \pushed_commands_reg__0\(4),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(5),
      Q => \pushed_commands_reg__0\(5),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(6),
      Q => \pushed_commands_reg__0\(6),
      R => \pushed_commands[7]_i_1_n_0\
    );
\pushed_commands_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => p_0_in(7),
      Q => \pushed_commands_reg__0\(7),
      R => \pushed_commands[7]_i_1_n_0\
    );
\queue_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_22\,
      Q => \^s_axi_bid\(0),
      R => \^sr\(0)
    );
si_full_size_q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => si_full_size_q_i_1_n_0
    );
si_full_size_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => si_full_size_q_i_1_n_0,
      Q => si_full_size_q,
      R => \^sr\(0)
    );
\size_mask_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => size_mask(0)
    );
\size_mask_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      O => split_addr_mask(1)
    );
\size_mask_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => size_mask(0),
      Q => size_mask_q(0),
      R => \^sr\(0)
    );
\size_mask_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(1),
      Q => size_mask_q(1),
      R => \^sr\(0)
    );
\size_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => '1',
      Q => size_mask_q(3),
      R => \^sr\(0)
    );
\split_addr_mask_q[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awsize(2),
      O => split_addr_mask(3)
    );
\split_addr_mask_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(2),
      O => split_addr_mask(4)
    );
\split_addr_mask_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      O => split_addr_mask(5)
    );
\split_addr_mask_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      O => split_addr_mask(6)
    );
\split_addr_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(3),
      Q => \split_addr_mask_q_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(4),
      Q => \split_addr_mask_q_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(5),
      Q => \split_addr_mask_q_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\split_addr_mask_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => split_addr_mask(6),
      Q => \split_addr_mask_q_reg_n_0_[6]\,
      R => \^sr\(0)
    );
split_ongoing_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => cmd_split_i,
      Q => split_ongoing,
      R => \^sr\(0)
    );
\unalignment_addr_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      O => unalignment_addr(0)
    );
\unalignment_addr_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awsize(2),
      O => unalignment_addr(1)
    );
\unalignment_addr_q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      O => unalignment_addr(2)
    );
\unalignment_addr_q[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => unalignment_addr(3)
    );
\unalignment_addr_q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      O => unalignment_addr(4)
    );
\unalignment_addr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(0),
      Q => unalignment_addr_q(0),
      R => \^sr\(0)
    );
\unalignment_addr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(1),
      Q => unalignment_addr_q(1),
      R => \^sr\(0)
    );
\unalignment_addr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(2),
      Q => unalignment_addr_q(2),
      R => \^sr\(0)
    );
\unalignment_addr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(3),
      Q => unalignment_addr_q(3),
      R => \^sr\(0)
    );
\unalignment_addr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => unalignment_addr(4),
      Q => unalignment_addr_q(4),
      R => \^sr\(0)
    );
wrap_need_to_split_q_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => wrap_need_to_split_q_i_2_n_0,
      I1 => wrap_need_to_split_q_i_3_n_0,
      I2 => s_axi_awburst(1),
      I3 => s_axi_awburst(0),
      I4 => legal_wrap_len_q_i_1_n_0,
      O => wrap_need_to_split
    );
wrap_need_to_split_q_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAEFFAEFFAE"
    )
        port map (
      I0 => wrap_unaligned_len(0),
      I1 => s_axi_awaddr(3),
      I2 => \masked_addr_q[3]_i_2_n_0\,
      I3 => wrap_unaligned_len(2),
      I4 => s_axi_awaddr(5),
      I5 => \masked_addr_q[5]_i_2_n_0\,
      O => wrap_need_to_split_q_i_2_n_0
    );
wrap_need_to_split_q_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \masked_addr_q[8]_i_2_n_0\,
      I2 => s_axi_awaddr(9),
      I3 => \masked_addr_q[9]_i_2_n_0\,
      I4 => wrap_unaligned_len(4),
      I5 => wrap_unaligned_len(5),
      O => wrap_need_to_split_q_i_3_n_0
    );
wrap_need_to_split_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_need_to_split,
      Q => wrap_need_to_split_q,
      R => \^sr\(0)
    );
\wrap_rest_len[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wrap_unaligned_len_q(0),
      O => wrap_rest_len0(0)
    );
\wrap_rest_len[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wrap_unaligned_len_q(1),
      I1 => wrap_unaligned_len_q(0),
      O => \wrap_rest_len[1]_i_1_n_0\
    );
\wrap_rest_len[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => wrap_unaligned_len_q(2),
      I1 => wrap_unaligned_len_q(0),
      I2 => wrap_unaligned_len_q(1),
      O => wrap_rest_len0(2)
    );
\wrap_rest_len[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(3),
      I1 => wrap_unaligned_len_q(2),
      I2 => wrap_unaligned_len_q(1),
      I3 => wrap_unaligned_len_q(0),
      O => wrap_rest_len0(3)
    );
\wrap_rest_len[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(4),
      I1 => wrap_unaligned_len_q(3),
      I2 => wrap_unaligned_len_q(0),
      I3 => wrap_unaligned_len_q(1),
      I4 => wrap_unaligned_len_q(2),
      O => wrap_rest_len0(4)
    );
\wrap_rest_len[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(5),
      I1 => wrap_unaligned_len_q(4),
      I2 => wrap_unaligned_len_q(2),
      I3 => wrap_unaligned_len_q(1),
      I4 => wrap_unaligned_len_q(0),
      I5 => wrap_unaligned_len_q(3),
      O => wrap_rest_len0(5)
    );
\wrap_rest_len[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wrap_unaligned_len_q(6),
      I1 => \wrap_rest_len[7]_i_2_n_0\,
      O => wrap_rest_len0(6)
    );
\wrap_rest_len[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wrap_unaligned_len_q(7),
      I1 => wrap_unaligned_len_q(6),
      I2 => \wrap_rest_len[7]_i_2_n_0\,
      O => wrap_rest_len0(7)
    );
\wrap_rest_len[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => wrap_unaligned_len_q(4),
      I1 => wrap_unaligned_len_q(2),
      I2 => wrap_unaligned_len_q(1),
      I3 => wrap_unaligned_len_q(0),
      I4 => wrap_unaligned_len_q(3),
      I5 => wrap_unaligned_len_q(5),
      O => \wrap_rest_len[7]_i_2_n_0\
    );
\wrap_rest_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(0),
      Q => wrap_rest_len(0),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wrap_rest_len[1]_i_1_n_0\,
      Q => wrap_rest_len(1),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(2),
      Q => wrap_rest_len(2),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(3),
      Q => wrap_rest_len(3),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(4),
      Q => wrap_rest_len(4),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(5),
      Q => wrap_rest_len(5),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(6),
      Q => wrap_rest_len(6),
      R => \^sr\(0)
    );
\wrap_rest_len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(7),
      Q => wrap_rest_len(7),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \masked_addr_q[2]_i_2_n_0\,
      O => wrap_unaligned_len(0)
    );
\wrap_unaligned_len_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \masked_addr_q[3]_i_2_n_0\,
      O => wrap_unaligned_len(1)
    );
\wrap_unaligned_len_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A808"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \masked_addr_q[4]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awsize(0),
      I5 => s_axi_awsize(1),
      O => wrap_unaligned_len(2)
    );
\wrap_unaligned_len_q[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \masked_addr_q[5]_i_2_n_0\,
      O => wrap_unaligned_len(3)
    );
\wrap_unaligned_len_q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \num_transactions_q[0]_i_2_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \masked_addr_q[6]_i_2_n_0\,
      O => wrap_unaligned_len(4)
    );
\wrap_unaligned_len_q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \masked_addr_q[7]_i_3_n_0\,
      I2 => s_axi_awsize(2),
      I3 => \masked_addr_q[7]_i_2_n_0\,
      O => wrap_unaligned_len(5)
    );
\wrap_unaligned_len_q[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \masked_addr_q[8]_i_2_n_0\,
      O => wrap_unaligned_len(6)
    );
\wrap_unaligned_len_q[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \masked_addr_q[9]_i_2_n_0\,
      O => wrap_unaligned_len(7)
    );
\wrap_unaligned_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(0),
      Q => wrap_unaligned_len_q(0),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(1),
      Q => wrap_unaligned_len_q(1),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(2),
      Q => wrap_unaligned_len_q(2),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(3),
      Q => wrap_unaligned_len_q(3),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(4),
      Q => wrap_unaligned_len_q(4),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(5),
      Q => wrap_unaligned_len_q(5),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(6),
      Q => wrap_unaligned_len_q(6),
      R => \^sr\(0)
    );
\wrap_unaligned_len_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_awready\,
      D => wrap_unaligned_len(7),
      Q => wrap_unaligned_len_q(7),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer__parameterized0\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \m_axi_arsize[2]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\ : out STD_LOGIC;
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    first_mi_word_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    \S_AXI_RRESP_ACC_reg[0]\ : out STD_LOGIC;
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \goreg_dm.dout_i_reg[9]\ : in STD_LOGIC;
    first_word : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[8]\ : in STD_LOGIC;
    \current_word_1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \S_AXI_RRESP_ACC_reg[0]_0\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \areset_d_reg[1]\ : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer__parameterized0\ : entity is "axi_dwidth_converter_v2_1_8_a_downsizer";
end \top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer__parameterized0\;

architecture STRUCTURE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer__parameterized0\ is
  signal \S_AXI_AADDR_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[16]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[17]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[18]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[19]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[20]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[21]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[22]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[23]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[24]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[25]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[26]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[27]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[28]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[29]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[30]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[31]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal S_AXI_ABURST_Q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_AID_Q : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \S_AXI_ALEN_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal S_AXI_ALOCK_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_ASIZE_Q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal access_fit_mi_side_q : STD_LOGIC;
  signal \access_fit_mi_side_q_i_1__0_n_0\ : STD_LOGIC;
  signal access_is_fix : STD_LOGIC;
  signal access_is_fix_q : STD_LOGIC;
  signal access_is_incr : STD_LOGIC;
  signal access_is_incr_q : STD_LOGIC;
  signal access_is_wrap : STD_LOGIC;
  signal access_is_wrap_q : STD_LOGIC;
  signal \cmd_length_i_carry__0_n_1\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_n_2\ : STD_LOGIC;
  signal \cmd_length_i_carry__0_n_3\ : STD_LOGIC;
  signal cmd_length_i_carry_n_0 : STD_LOGIC;
  signal cmd_length_i_carry_n_1 : STD_LOGIC;
  signal cmd_length_i_carry_n_2 : STD_LOGIC;
  signal cmd_length_i_carry_n_3 : STD_LOGIC;
  signal cmd_mask_q : STD_LOGIC;
  signal \cmd_mask_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cmd_mask_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \cmd_mask_q_reg_n_0_[3]\ : STD_LOGIC;
  signal cmd_push_block : STD_LOGIC;
  signal cmd_queue_n_16 : STD_LOGIC;
  signal cmd_queue_n_17 : STD_LOGIC;
  signal cmd_queue_n_170 : STD_LOGIC;
  signal cmd_queue_n_171 : STD_LOGIC;
  signal cmd_queue_n_172 : STD_LOGIC;
  signal cmd_queue_n_173 : STD_LOGIC;
  signal cmd_queue_n_174 : STD_LOGIC;
  signal cmd_queue_n_175 : STD_LOGIC;
  signal cmd_queue_n_176 : STD_LOGIC;
  signal cmd_queue_n_177 : STD_LOGIC;
  signal cmd_queue_n_178 : STD_LOGIC;
  signal cmd_queue_n_179 : STD_LOGIC;
  signal cmd_queue_n_18 : STD_LOGIC;
  signal cmd_queue_n_180 : STD_LOGIC;
  signal cmd_queue_n_181 : STD_LOGIC;
  signal cmd_queue_n_19 : STD_LOGIC;
  signal cmd_queue_n_20 : STD_LOGIC;
  signal cmd_queue_n_21 : STD_LOGIC;
  signal cmd_queue_n_22 : STD_LOGIC;
  signal cmd_queue_n_23 : STD_LOGIC;
  signal cmd_queue_n_24 : STD_LOGIC;
  signal cmd_queue_n_25 : STD_LOGIC;
  signal cmd_queue_n_26 : STD_LOGIC;
  signal cmd_queue_n_27 : STD_LOGIC;
  signal cmd_split_i : STD_LOGIC;
  signal command_ongoing : STD_LOGIC;
  signal downsized_len_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \downsized_len_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \downsized_len_q[7]_i_2__0_n_0\ : STD_LOGIC;
  signal fix_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fix_len_q : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \fix_len_q[4]_i_1__0_n_0\ : STD_LOGIC;
  signal fix_need_to_split : STD_LOGIC;
  signal fix_need_to_split_q : STD_LOGIC;
  signal incr_need_to_split : STD_LOGIC;
  signal incr_need_to_split_q : STD_LOGIC;
  signal last_incr_split0 : STD_LOGIC;
  signal last_incr_split0_carry_n_2 : STD_LOGIC;
  signal last_incr_split0_carry_n_3 : STD_LOGIC;
  signal legal_wrap_len_q : STD_LOGIC;
  signal \legal_wrap_len_q_i_1__0_n_0\ : STD_LOGIC;
  signal \legal_wrap_len_q_i_2__0_n_0\ : STD_LOGIC;
  signal \legal_wrap_len_q_i_3__0_n_0\ : STD_LOGIC;
  signal \^m_axi_arsize[2]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal masked_addr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal masked_addr_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \masked_addr_q[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \masked_addr_q[9]_i_2__0_n_0\ : STD_LOGIC;
  signal next_mi_addr : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \next_mi_addr0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__1_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__2_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_1\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_4\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__3_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_2\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_3\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_5\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_6\ : STD_LOGIC;
  signal \next_mi_addr0_carry__4_n_7\ : STD_LOGIC;
  signal \next_mi_addr0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal next_mi_addr0_carry_n_0 : STD_LOGIC;
  signal next_mi_addr0_carry_n_1 : STD_LOGIC;
  signal next_mi_addr0_carry_n_2 : STD_LOGIC;
  signal next_mi_addr0_carry_n_3 : STD_LOGIC;
  signal next_mi_addr0_carry_n_4 : STD_LOGIC;
  signal next_mi_addr0_carry_n_5 : STD_LOGIC;
  signal next_mi_addr0_carry_n_6 : STD_LOGIC;
  signal next_mi_addr0_carry_n_7 : STD_LOGIC;
  signal \next_mi_addr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[8]_i_1__0_n_0\ : STD_LOGIC;
  signal num_transactions : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal num_transactions_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \num_transactions_q[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \num_transactions_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \num_transactions_q[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \num_transactions_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pre_mi_addr : STD_LOGIC_VECTOR ( 6 downto 3 );
  signal \pushed_commands[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \pushed_commands[7]_i_3__0_n_0\ : STD_LOGIC;
  signal pushed_commands_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pushed_new_cmd : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal si_full_size_q : STD_LOGIC;
  signal \si_full_size_q_i_1__0_n_0\ : STD_LOGIC;
  signal size_mask : STD_LOGIC_VECTOR ( 0 to 0 );
  signal size_mask_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal split_addr_mask : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \split_addr_mask_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \split_addr_mask_q_reg_n_0_[6]\ : STD_LOGIC;
  signal split_ongoing : STD_LOGIC;
  signal unalignment_addr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal unalignment_addr_q : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wrap_need_to_split : STD_LOGIC;
  signal wrap_need_to_split_q : STD_LOGIC;
  signal \wrap_need_to_split_q_i_2__0_n_0\ : STD_LOGIC;
  signal \wrap_need_to_split_q_i_3__0_n_0\ : STD_LOGIC;
  signal wrap_rest_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wrap_rest_len0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wrap_rest_len[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_rest_len[7]_i_2__0_n_0\ : STD_LOGIC;
  signal wrap_unaligned_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wrap_unaligned_len_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_cmd_length_i_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_last_incr_split0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_last_incr_split0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_mi_addr0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_next_mi_addr0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \access_fit_mi_side_q_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \access_is_fix_q_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \access_is_incr_q_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cmd_mask_q[0]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cmd_mask_q[1]_i_2__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cmd_mask_q[2]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cmd_mask_q[3]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \downsized_len_q[0]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \downsized_len_q[1]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \downsized_len_q[3]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \downsized_len_q[6]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \fix_len_q[0]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \fix_len_q[2]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \fix_len_q[3]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \fix_len_q[4]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \fix_need_to_split_q_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \legal_wrap_len_q_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \masked_addr_q[0]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \masked_addr_q[14]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \masked_addr_q[2]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \masked_addr_q[3]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \masked_addr_q[3]_i_3__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \masked_addr_q[5]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \masked_addr_q[6]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \masked_addr_q[6]_i_2__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \masked_addr_q[7]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \masked_addr_q[8]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \masked_addr_q[8]_i_2__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \masked_addr_q[8]_i_3__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \masked_addr_q[9]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \num_transactions_q[0]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \num_transactions_q[1]_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \num_transactions_q[3]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pushed_commands[1]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pushed_commands[2]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pushed_commands[3]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pushed_commands[4]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pushed_commands[6]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pushed_commands[7]_i_2__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \si_full_size_q_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \size_mask_q[0]_i_1__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \size_mask_q[1]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \split_addr_mask_q[3]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \split_addr_mask_q[4]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \split_addr_mask_q[5]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \split_addr_mask_q[6]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \unalignment_addr_q[0]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \unalignment_addr_q[2]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \unalignment_addr_q[3]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \unalignment_addr_q[4]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \wrap_need_to_split_q_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wrap_rest_len[1]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \wrap_rest_len[2]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \wrap_rest_len[3]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wrap_rest_len[4]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wrap_rest_len[6]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wrap_rest_len[7]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[0]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[1]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[3]_i_1__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[4]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[5]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[6]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \wrap_unaligned_len_q[7]_i_1__0\ : label is "soft_lutpair52";
begin
  \m_axi_arsize[2]\(10 downto 0) <= \^m_axi_arsize[2]\(10 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_rid(0) <= \^s_axi_rid\(0);
\S_AXI_AADDR_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(0),
      Q => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(10),
      Q => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(11),
      Q => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(12),
      Q => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(13),
      Q => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(14),
      Q => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(15),
      Q => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(16),
      Q => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(17),
      Q => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(18),
      Q => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(19),
      Q => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(1),
      Q => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(20),
      Q => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(21),
      Q => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(22),
      Q => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(23),
      Q => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(24),
      Q => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(25),
      Q => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(26),
      Q => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(27),
      Q => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(28),
      Q => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(29),
      Q => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(2),
      Q => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(30),
      Q => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(31),
      Q => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(3),
      Q => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(4),
      Q => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(5),
      Q => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(6),
      Q => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(7),
      Q => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(8),
      Q => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      R => '0'
    );
\S_AXI_AADDR_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(9),
      Q => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      R => '0'
    );
\S_AXI_ABURST_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arburst(0),
      Q => S_AXI_ABURST_Q(0),
      R => '0'
    );
\S_AXI_ABURST_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arburst(1),
      Q => S_AXI_ABURST_Q(1),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arcache(0),
      Q => m_axi_arcache(0),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arcache(1),
      Q => m_axi_arcache(1),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arcache(2),
      Q => m_axi_arcache(2),
      R => '0'
    );
\S_AXI_ACACHE_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arcache(3),
      Q => m_axi_arcache(3),
      R => '0'
    );
\S_AXI_AID_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arid(0),
      Q => S_AXI_AID_Q,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(0),
      Q => p_0_in(0),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(1),
      Q => p_0_in(1),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(2),
      Q => p_0_in(2),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(3),
      Q => p_0_in(3),
      R => '0'
    );
\S_AXI_ALEN_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(4),
      Q => \S_AXI_ALEN_Q_reg_n_0_[4]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(5),
      Q => \S_AXI_ALEN_Q_reg_n_0_[5]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(6),
      Q => \S_AXI_ALEN_Q_reg_n_0_[6]\,
      R => '0'
    );
\S_AXI_ALEN_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlen(7),
      Q => \S_AXI_ALEN_Q_reg_n_0_[7]\,
      R => '0'
    );
\S_AXI_ALOCK_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arlock(0),
      Q => S_AXI_ALOCK_Q(0),
      R => '0'
    );
\S_AXI_APROT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arprot(0),
      Q => m_axi_arprot(0),
      R => '0'
    );
\S_AXI_APROT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arprot(1),
      Q => m_axi_arprot(1),
      R => '0'
    );
\S_AXI_APROT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arprot(2),
      Q => m_axi_arprot(2),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arqos(0),
      Q => m_axi_arqos(0),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arqos(1),
      Q => m_axi_arqos(1),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arqos(2),
      Q => m_axi_arqos(2),
      R => '0'
    );
\S_AXI_AQOS_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arqos(3),
      Q => m_axi_arqos(3),
      R => '0'
    );
S_AXI_AREADY_I_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => cmd_queue_n_178,
      Q => \^s_axi_arready\,
      R => SR(0)
    );
\S_AXI_AREGION_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arregion(0),
      Q => m_axi_arregion(0),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arregion(1),
      Q => m_axi_arregion(1),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arregion(2),
      Q => m_axi_arregion(2),
      R => '0'
    );
\S_AXI_AREGION_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arregion(3),
      Q => m_axi_arregion(3),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arsize(0),
      Q => S_AXI_ASIZE_Q(0),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arsize(1),
      Q => S_AXI_ASIZE_Q(1),
      R => '0'
    );
\S_AXI_ASIZE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arsize(2),
      Q => S_AXI_ASIZE_Q(2),
      R => '0'
    );
\access_fit_mi_side_q_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => \access_fit_mi_side_q_i_1__0_n_0\
    );
access_fit_mi_side_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \access_fit_mi_side_q_i_1__0_n_0\,
      Q => access_fit_mi_side_q,
      R => SR(0)
    );
\access_is_fix_q_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => access_is_fix
    );
access_is_fix_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => access_is_fix,
      Q => access_is_fix_q,
      R => SR(0)
    );
\access_is_incr_q_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => access_is_incr
    );
access_is_incr_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => access_is_incr,
      Q => access_is_incr_q,
      R => SR(0)
    );
\access_is_wrap_q_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => access_is_wrap
    );
access_is_wrap_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => access_is_wrap,
      Q => access_is_wrap_q,
      R => SR(0)
    );
cmd_length_i_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cmd_length_i_carry_n_0,
      CO(2) => cmd_length_i_carry_n_1,
      CO(1) => cmd_length_i_carry_n_2,
      CO(0) => cmd_length_i_carry_n_3,
      CYINIT => '1',
      DI(3) => cmd_queue_n_16,
      DI(2) => cmd_queue_n_17,
      DI(1) => cmd_queue_n_18,
      DI(0) => cmd_queue_n_19,
      O(3 downto 0) => \^m_axi_arsize[2]\(3 downto 0),
      S(3) => cmd_queue_n_174,
      S(2) => cmd_queue_n_175,
      S(1) => cmd_queue_n_176,
      S(0) => cmd_queue_n_177
    );
\cmd_length_i_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cmd_length_i_carry_n_0,
      CO(3) => \NLW_cmd_length_i_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \cmd_length_i_carry__0_n_1\,
      CO(1) => \cmd_length_i_carry__0_n_2\,
      CO(0) => \cmd_length_i_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cmd_queue_n_20,
      DI(1) => cmd_queue_n_21,
      DI(0) => cmd_queue_n_22,
      O(3 downto 0) => \^m_axi_arsize[2]\(7 downto 4),
      S(3) => cmd_queue_n_170,
      S(2) => cmd_queue_n_171,
      S(1) => cmd_queue_n_172,
      S(0) => cmd_queue_n_173
    );
\cmd_mask_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(0),
      I4 => cmd_mask_q,
      O => \cmd_mask_q[0]_i_1__0_n_0\
    );
\cmd_mask_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEEE"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(1),
      I5 => cmd_mask_q,
      O => \cmd_mask_q[1]_i_1__0_n_0\
    );
\cmd_mask_q[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s_axi_arburst(0),
      I2 => s_axi_arburst(1),
      O => cmd_mask_q
    );
\cmd_mask_q[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => \^s_axi_arready\,
      I3 => \masked_addr_q[2]_i_2__0_n_0\,
      O => \cmd_mask_q[2]_i_1__0_n_0\
    );
\cmd_mask_q[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => \^s_axi_arready\,
      I3 => \masked_addr_q[3]_i_2__0_n_0\,
      O => \cmd_mask_q[3]_i_1__0_n_0\
    );
\cmd_mask_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \cmd_mask_q[0]_i_1__0_n_0\,
      Q => \cmd_mask_q_reg_n_0_[0]\,
      R => SR(0)
    );
\cmd_mask_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \cmd_mask_q[1]_i_1__0_n_0\,
      Q => \cmd_mask_q_reg_n_0_[1]\,
      R => SR(0)
    );
\cmd_mask_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \cmd_mask_q[2]_i_1__0_n_0\,
      Q => \cmd_mask_q_reg_n_0_[2]\,
      R => SR(0)
    );
\cmd_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \cmd_mask_q[3]_i_1__0_n_0\,
      Q => \cmd_mask_q_reg_n_0_[3]\,
      R => SR(0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => cmd_queue_n_180,
      Q => cmd_push_block,
      R => '0'
    );
cmd_queue: entity work.\top_auto_ds_0_axi_data_fifo_v2_1_7_axic_fifo__parameterized1\
     port map (
      CLK => CLK,
      CO(0) => last_incr_split0,
      D(3 downto 0) => D(3 downto 0),
      DI(3) => cmd_queue_n_16,
      DI(2) => cmd_queue_n_17,
      DI(1) => cmd_queue_n_18,
      DI(0) => cmd_queue_n_19,
      E(0) => pushed_new_cmd,
      Q(7 downto 0) => pushed_commands_reg(7 downto 0),
      S(2) => cmd_queue_n_23,
      S(1) => cmd_queue_n_24,
      S(0) => cmd_queue_n_25,
      SR(0) => SR(0),
      \S_AXI_AADDR_Q_reg[3]\(3) => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      \S_AXI_AADDR_Q_reg[3]\(2) => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      \S_AXI_AADDR_Q_reg[3]\(1) => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      \S_AXI_AADDR_Q_reg[3]\(0) => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      S_AXI_AID_Q => S_AXI_AID_Q,
      \S_AXI_ALEN_Q_reg[7]\(7) => \S_AXI_ALEN_Q_reg_n_0_[7]\,
      \S_AXI_ALEN_Q_reg[7]\(6) => \S_AXI_ALEN_Q_reg_n_0_[6]\,
      \S_AXI_ALEN_Q_reg[7]\(5) => \S_AXI_ALEN_Q_reg_n_0_[5]\,
      \S_AXI_ALEN_Q_reg[7]\(4) => \S_AXI_ALEN_Q_reg_n_0_[4]\,
      \S_AXI_ALEN_Q_reg[7]\(3 downto 0) => p_0_in(3 downto 0),
      S_AXI_AREADY_I_reg => cmd_queue_n_178,
      S_AXI_AREADY_I_reg_0(0) => \^s_axi_arready\,
      \S_AXI_RRESP_ACC_reg[0]\ => \S_AXI_RRESP_ACC_reg[0]\,
      \S_AXI_RRESP_ACC_reg[0]_0\ => \S_AXI_RRESP_ACC_reg[0]_0\,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\(0) => E(0),
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\(0) => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\(0),
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_2\(31 downto 0) => \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\(31 downto 0),
      \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\(0) => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\(0),
      \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(31 downto 0) => \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(31 downto 0),
      \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\(0) => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\(0),
      \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(31 downto 0) => \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(31 downto 0),
      \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\(0) => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\(0),
      \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(31 downto 0) => \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(31 downto 0),
      access_fit_mi_side_q => access_fit_mi_side_q,
      access_is_fix_q => access_is_fix_q,
      access_is_incr_q => access_is_incr_q,
      access_is_wrap_q => access_is_wrap_q,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      \areset_d_reg[1]\ => \areset_d_reg[1]\,
      \cmd_mask_q_reg[3]\(14) => \cmd_mask_q_reg_n_0_[3]\,
      \cmd_mask_q_reg[3]\(13) => \cmd_mask_q_reg_n_0_[2]\,
      \cmd_mask_q_reg[3]\(12) => \cmd_mask_q_reg_n_0_[1]\,
      \cmd_mask_q_reg[3]\(11) => \cmd_mask_q_reg_n_0_[0]\,
      \cmd_mask_q_reg[3]\(10 downto 3) => \^m_axi_arsize[2]\(7 downto 0),
      \cmd_mask_q_reg[3]\(2 downto 0) => S_AXI_ASIZE_Q(2 downto 0),
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_queue_n_180,
      command_ongoing => command_ongoing,
      command_ongoing_reg => cmd_queue_n_179,
      \current_word_1_reg[3]\(3 downto 0) => \current_word_1_reg[3]\(3 downto 0),
      din(3) => cmd_split_i,
      din(2 downto 0) => \^m_axi_arsize[2]\(10 downto 8),
      dout(8 downto 0) => dout(8 downto 0),
      \downsized_len_q_reg[7]\(7 downto 0) => downsized_len_q(7 downto 0),
      first_mi_word_reg(0) => first_mi_word_reg(0),
      first_word => first_word,
      \fix_len_q_reg[4]\(4 downto 0) => fix_len_q(4 downto 0),
      fix_need_to_split_q => fix_need_to_split_q,
      \goreg_dm.dout_i_reg[8]\ => \goreg_dm.dout_i_reg[8]\,
      \goreg_dm.dout_i_reg[9]\ => \goreg_dm.dout_i_reg[9]\,
      \gpr1.dout_i_reg[7]\(2) => cmd_queue_n_20,
      \gpr1.dout_i_reg[7]\(1) => cmd_queue_n_21,
      \gpr1.dout_i_reg[7]\(0) => cmd_queue_n_22,
      \gpr1.dout_i_reg[7]_0\(3) => cmd_queue_n_170,
      \gpr1.dout_i_reg[7]_0\(2) => cmd_queue_n_171,
      \gpr1.dout_i_reg[7]_0\(1) => cmd_queue_n_172,
      \gpr1.dout_i_reg[7]_0\(0) => cmd_queue_n_173,
      \gpr1.dout_i_reg[7]_1\(3) => cmd_queue_n_174,
      \gpr1.dout_i_reg[7]_1\(2) => cmd_queue_n_175,
      \gpr1.dout_i_reg[7]_1\(1) => cmd_queue_n_176,
      \gpr1.dout_i_reg[7]_1\(0) => cmd_queue_n_177,
      incr_need_to_split_q => incr_need_to_split_q,
      legal_wrap_len_q => legal_wrap_len_q,
      \length_counter_1_reg[7]\(0) => Q(0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \next_mi_addr_reg[8]\ => cmd_queue_n_26,
      \next_mi_addr_reg[8]_0\ => cmd_queue_n_27,
      \num_transactions_q_reg[3]\(3 downto 0) => num_transactions_q(3 downto 0),
      \out\ => \out\,
      \queue_id_reg[0]\ => cmd_queue_n_181,
      rd_en => rd_en,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(0) => \^s_axi_rid\(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      si_full_size_q => si_full_size_q,
      size_mask_q(2) => size_mask_q(3),
      size_mask_q(1 downto 0) => size_mask_q(1 downto 0),
      \split_addr_mask_q_reg[3]\(0) => \split_addr_mask_q_reg_n_0_[3]\,
      split_ongoing => split_ongoing,
      \unalignment_addr_q_reg[4]\(4 downto 0) => unalignment_addr_q(4 downto 0),
      wrap_need_to_split_q => wrap_need_to_split_q,
      \wrap_rest_len_reg[7]\(7 downto 0) => wrap_rest_len(7 downto 0),
      \wrap_unaligned_len_q_reg[7]\(7 downto 0) => wrap_unaligned_len_q(7 downto 0)
    );
command_ongoing_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => cmd_queue_n_179,
      Q => command_ongoing,
      R => SR(0)
    );
\downsized_len_q[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      O => \downsized_len_q[0]_i_1__0_n_0\
    );
\downsized_len_q[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0222FEEE"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => \masked_addr_q[3]_i_2__0_n_0\,
      O => \downsized_len_q[1]_i_1__0_n_0\
    );
\downsized_len_q[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEE2CEEECEE2"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arlen(0),
      I5 => \masked_addr_q[4]_i_2__0_n_0\,
      O => \downsized_len_q[2]_i_1__0_n_0\
    );
\downsized_len_q[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0222"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => \masked_addr_q[5]_i_2__0_n_0\,
      O => \downsized_len_q[3]_i_1__0_n_0\
    );
\downsized_len_q[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BB88BB88BB88"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => \num_transactions_q[0]_i_2__0_n_0\,
      I3 => s_axi_arlen(4),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arsize(1),
      O => \downsized_len_q[4]_i_1__0_n_0\
    );
\downsized_len_q[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BB88BB88BB88"
    )
        port map (
      I0 => \masked_addr_q[7]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => \masked_addr_q[7]_i_3__0_n_0\,
      I3 => s_axi_arlen(5),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arsize(1),
      O => \downsized_len_q[5]_i_1__0_n_0\
    );
\downsized_len_q[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0222"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => \masked_addr_q[8]_i_2__0_n_0\,
      O => \downsized_len_q[6]_i_1__0_n_0\
    );
\downsized_len_q[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55EA40BF15AA00"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => \downsized_len_q[7]_i_2__0_n_0\,
      I4 => s_axi_arlen(7),
      I5 => s_axi_arlen(6),
      O => \downsized_len_q[7]_i_1__0_n_0\
    );
\downsized_len_q[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(4),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(5),
      O => \downsized_len_q[7]_i_2__0_n_0\
    );
\downsized_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[0]_i_1__0_n_0\,
      Q => downsized_len_q(0),
      R => SR(0)
    );
\downsized_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[1]_i_1__0_n_0\,
      Q => downsized_len_q(1),
      R => SR(0)
    );
\downsized_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[2]_i_1__0_n_0\,
      Q => downsized_len_q(2),
      R => SR(0)
    );
\downsized_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[3]_i_1__0_n_0\,
      Q => downsized_len_q(3),
      R => SR(0)
    );
\downsized_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[4]_i_1__0_n_0\,
      Q => downsized_len_q(4),
      R => SR(0)
    );
\downsized_len_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[5]_i_1__0_n_0\,
      Q => downsized_len_q(5),
      R => SR(0)
    );
\downsized_len_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[6]_i_1__0_n_0\,
      Q => downsized_len_q(6),
      R => SR(0)
    );
\downsized_len_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \downsized_len_q[7]_i_1__0_n_0\,
      Q => downsized_len_q(7),
      R => SR(0)
    );
\fix_len_q[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => fix_len(0)
    );
\fix_len_q[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => fix_len(2)
    );
\fix_len_q[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      O => fix_len(3)
    );
\fix_len_q[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \fix_len_q[4]_i_1__0_n_0\
    );
\fix_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => fix_len(0),
      Q => fix_len_q(0),
      R => SR(0)
    );
\fix_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_arsize(2),
      Q => fix_len_q(1),
      R => SR(0)
    );
\fix_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => fix_len(2),
      Q => fix_len_q(2),
      R => SR(0)
    );
\fix_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => fix_len(3),
      Q => fix_len_q(3),
      R => SR(0)
    );
\fix_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \fix_len_q[4]_i_1__0_n_0\,
      Q => fix_len_q(4),
      R => SR(0)
    );
\fix_need_to_split_q_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11111000"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(2),
      O => fix_need_to_split
    );
fix_need_to_split_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => fix_need_to_split,
      Q => fix_need_to_split_q,
      R => SR(0)
    );
\incr_need_to_split_q_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => \num_transactions_q[1]_i_1__0_n_0\,
      I3 => num_transactions(0),
      I4 => num_transactions(3),
      I5 => \num_transactions_q[2]_i_1__0_n_0\,
      O => incr_need_to_split
    );
incr_need_to_split_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => incr_need_to_split,
      Q => incr_need_to_split_q,
      R => SR(0)
    );
last_incr_split0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_last_incr_split0_carry_CO_UNCONNECTED(3),
      CO(2) => last_incr_split0,
      CO(1) => last_incr_split0_carry_n_2,
      CO(0) => last_incr_split0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_last_incr_split0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => cmd_queue_n_23,
      S(1) => cmd_queue_n_24,
      S(0) => cmd_queue_n_25
    );
\legal_wrap_len_q_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888A8A8A"
    )
        port map (
      I0 => \legal_wrap_len_q_i_2__0_n_0\,
      I1 => \legal_wrap_len_q_i_3__0_n_0\,
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(1),
      O => \legal_wrap_len_q_i_1__0_n_0\
    );
\legal_wrap_len_q_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010555FFFFFFFF"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(2),
      O => \legal_wrap_len_q_i_2__0_n_0\
    );
\legal_wrap_len_q_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(6),
      I4 => s_axi_arlen(3),
      O => \legal_wrap_len_q_i_3__0_n_0\
    );
legal_wrap_len_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \legal_wrap_len_q_i_1__0_n_0\,
      Q => legal_wrap_len_q,
      R => SR(0)
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(0),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_araddr(0)
    );
\m_axi_araddr[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(10),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(10),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      O => m_axi_araddr(10)
    );
\m_axi_araddr[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(11),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(11),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      O => m_axi_araddr(11)
    );
\m_axi_araddr[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(12),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(12),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      O => m_axi_araddr(12)
    );
\m_axi_araddr[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(13),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(13),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      O => m_axi_araddr(13)
    );
\m_axi_araddr[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(14),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(14),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      O => m_axi_araddr(14)
    );
\m_axi_araddr[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(15),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(15),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      O => m_axi_araddr(15)
    );
\m_axi_araddr[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(16),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(16),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      O => m_axi_araddr(16)
    );
\m_axi_araddr[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(17),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(17),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      O => m_axi_araddr(17)
    );
\m_axi_araddr[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(18),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(18),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      O => m_axi_araddr(18)
    );
\m_axi_araddr[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(19),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(19),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      O => m_axi_araddr(19)
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00AAE2AA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      I1 => access_is_wrap_q,
      I2 => masked_addr_q(1),
      I3 => split_ongoing,
      I4 => access_is_incr_q,
      O => m_axi_araddr(1)
    );
\m_axi_araddr[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(20),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(20),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      O => m_axi_araddr(20)
    );
\m_axi_araddr[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(21),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(21),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      O => m_axi_araddr(21)
    );
\m_axi_araddr[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(22),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(22),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      O => m_axi_araddr(22)
    );
\m_axi_araddr[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(23),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(23),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      O => m_axi_araddr(23)
    );
\m_axi_araddr[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(24),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(24),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      O => m_axi_araddr(24)
    );
\m_axi_araddr[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(25),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(25),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      O => m_axi_araddr(25)
    );
\m_axi_araddr[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(26),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(26),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      O => m_axi_araddr(26)
    );
\m_axi_araddr[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(27),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(27),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      O => m_axi_araddr(27)
    );
\m_axi_araddr[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(28),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(28),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      O => m_axi_araddr(28)
    );
\m_axi_araddr[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(29),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(29),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      O => m_axi_araddr(29)
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8F0F0F0F0"
    )
        port map (
      I0 => masked_addr_q(2),
      I1 => access_is_wrap_q,
      I2 => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      I3 => next_mi_addr(2),
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => m_axi_araddr(2)
    );
\m_axi_araddr[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(30),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(30),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      O => m_axi_araddr(30)
    );
\m_axi_araddr[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(31),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(31),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      O => m_axi_araddr(31)
    );
\m_axi_araddr[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8F0F0F0F0"
    )
        port map (
      I0 => masked_addr_q(3),
      I1 => access_is_wrap_q,
      I2 => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      I3 => next_mi_addr(3),
      I4 => access_is_incr_q,
      I5 => split_ongoing,
      O => m_axi_araddr(3)
    );
\m_axi_araddr[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(4),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(4),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      O => m_axi_araddr(4)
    );
\m_axi_araddr[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(5),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(5),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      O => m_axi_araddr(5)
    );
\m_axi_araddr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(6),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(6),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      O => m_axi_araddr(6)
    );
\m_axi_araddr[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(7),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(7),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      O => m_axi_araddr(7)
    );
\m_axi_araddr[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(8),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(8),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      O => m_axi_araddr(8)
    );
\m_axi_araddr[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FBFBFB0808080"
    )
        port map (
      I0 => next_mi_addr(9),
      I1 => access_is_incr_q,
      I2 => split_ongoing,
      I3 => masked_addr_q(9),
      I4 => access_is_wrap_q,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      O => m_axi_araddr(9)
    );
\m_axi_arburst[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEFEE"
    )
        port map (
      I0 => S_AXI_ABURST_Q(0),
      I1 => access_is_fix_q,
      I2 => legal_wrap_len_q,
      I3 => access_is_wrap_q,
      I4 => access_fit_mi_side_q,
      O => m_axi_arburst(0)
    );
\m_axi_arburst[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2022"
    )
        port map (
      I0 => S_AXI_ABURST_Q(1),
      I1 => access_is_fix_q,
      I2 => legal_wrap_len_q,
      I3 => access_is_wrap_q,
      I4 => access_fit_mi_side_q,
      O => m_axi_arburst(1)
    );
\m_axi_arlock[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => S_AXI_ALOCK_Q(0),
      I1 => wrap_need_to_split_q,
      I2 => fix_need_to_split_q,
      I3 => incr_need_to_split_q,
      O => m_axi_arlock(0)
    );
\masked_addr_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(0),
      O => masked_addr(0)
    );
\masked_addr_q[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002AAAAAAA2AAA"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(7),
      I4 => s_axi_arsize(2),
      I5 => \num_transactions_q[0]_i_2__0_n_0\,
      O => masked_addr(10)
    );
\masked_addr_q[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \num_transactions_q[1]_i_1__0_n_0\,
      O => masked_addr(11)
    );
\masked_addr_q[12]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \num_transactions_q[2]_i_1__0_n_0\,
      O => masked_addr(12)
    );
\masked_addr_q[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202AAAAAAAAAAAAA"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(7),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(2),
      O => masked_addr(13)
    );
\masked_addr_q[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      O => masked_addr(14)
    );
\masked_addr_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000020202"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(1),
      O => masked_addr(1)
    );
\masked_addr_q[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \masked_addr_q[2]_i_2__0_n_0\,
      O => masked_addr(2)
    );
\masked_addr_q[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015105050151"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arlen(0),
      O => \masked_addr_q[2]_i_2__0_n_0\
    );
\masked_addr_q[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \masked_addr_q[3]_i_2__0_n_0\,
      O => masked_addr(3)
    );
\masked_addr_q[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000015155550151"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arsize(1),
      I5 => \masked_addr_q[3]_i_3__0_n_0\,
      O => \masked_addr_q[3]_i_2__0_n_0\
    );
\masked_addr_q[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(1),
      O => \masked_addr_q[3]_i_3__0_n_0\
    );
\masked_addr_q[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02020202020202A2"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \masked_addr_q[4]_i_2__0_n_0\,
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(0),
      I5 => s_axi_arsize(1),
      O => masked_addr(4)
    );
\masked_addr_q[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(4),
      O => \masked_addr_q[4]_i_2__0_n_0\
    );
\masked_addr_q[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \masked_addr_q[5]_i_2__0_n_0\,
      O => masked_addr(5)
    );
\masked_addr_q[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEFFFFFEAE0000"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arsize(2),
      I5 => \downsized_len_q[7]_i_2__0_n_0\,
      O => \masked_addr_q[5]_i_2__0_n_0\
    );
\masked_addr_q[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4700"
    )
        port map (
      I0 => \masked_addr_q[6]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => \num_transactions_q[0]_i_2__0_n_0\,
      I3 => s_axi_araddr(6),
      O => masked_addr(6)
    );
\masked_addr_q[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(2),
      O => \masked_addr_q[6]_i_2__0_n_0\
    );
\masked_addr_q[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4700"
    )
        port map (
      I0 => \masked_addr_q[7]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => \masked_addr_q[7]_i_3__0_n_0\,
      I3 => s_axi_araddr(7),
      O => masked_addr(7)
    );
\masked_addr_q[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(3),
      O => \masked_addr_q[7]_i_2__0_n_0\
    );
\masked_addr_q[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(6),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(7),
      O => \masked_addr_q[7]_i_3__0_n_0\
    );
\masked_addr_q[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \masked_addr_q[8]_i_2__0_n_0\,
      O => masked_addr(8)
    );
\masked_addr_q[8]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \masked_addr_q[4]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => \masked_addr_q[8]_i_3__0_n_0\,
      O => \masked_addr_q[8]_i_2__0_n_0\
    );
\masked_addr_q[8]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => s_axi_arlen(6),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(7),
      O => \masked_addr_q[8]_i_3__0_n_0\
    );
\masked_addr_q[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \masked_addr_q[9]_i_2__0_n_0\,
      O => masked_addr(9)
    );
\masked_addr_q[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \downsized_len_q[7]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(6),
      I5 => s_axi_arsize(1),
      O => \masked_addr_q[9]_i_2__0_n_0\
    );
\masked_addr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(0),
      Q => masked_addr_q(0),
      R => SR(0)
    );
\masked_addr_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(10),
      Q => masked_addr_q(10),
      R => SR(0)
    );
\masked_addr_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(11),
      Q => masked_addr_q(11),
      R => SR(0)
    );
\masked_addr_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(12),
      Q => masked_addr_q(12),
      R => SR(0)
    );
\masked_addr_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(13),
      Q => masked_addr_q(13),
      R => SR(0)
    );
\masked_addr_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(14),
      Q => masked_addr_q(14),
      R => SR(0)
    );
\masked_addr_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(15),
      Q => masked_addr_q(15),
      R => SR(0)
    );
\masked_addr_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(16),
      Q => masked_addr_q(16),
      R => SR(0)
    );
\masked_addr_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(17),
      Q => masked_addr_q(17),
      R => SR(0)
    );
\masked_addr_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(18),
      Q => masked_addr_q(18),
      R => SR(0)
    );
\masked_addr_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(19),
      Q => masked_addr_q(19),
      R => SR(0)
    );
\masked_addr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(1),
      Q => masked_addr_q(1),
      R => SR(0)
    );
\masked_addr_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(20),
      Q => masked_addr_q(20),
      R => SR(0)
    );
\masked_addr_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(21),
      Q => masked_addr_q(21),
      R => SR(0)
    );
\masked_addr_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(22),
      Q => masked_addr_q(22),
      R => SR(0)
    );
\masked_addr_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(23),
      Q => masked_addr_q(23),
      R => SR(0)
    );
\masked_addr_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(24),
      Q => masked_addr_q(24),
      R => SR(0)
    );
\masked_addr_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(25),
      Q => masked_addr_q(25),
      R => SR(0)
    );
\masked_addr_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(26),
      Q => masked_addr_q(26),
      R => SR(0)
    );
\masked_addr_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(27),
      Q => masked_addr_q(27),
      R => SR(0)
    );
\masked_addr_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(28),
      Q => masked_addr_q(28),
      R => SR(0)
    );
\masked_addr_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(29),
      Q => masked_addr_q(29),
      R => SR(0)
    );
\masked_addr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(2),
      Q => masked_addr_q(2),
      R => SR(0)
    );
\masked_addr_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(30),
      Q => masked_addr_q(30),
      R => SR(0)
    );
\masked_addr_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => s_axi_araddr(31),
      Q => masked_addr_q(31),
      R => SR(0)
    );
\masked_addr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(3),
      Q => masked_addr_q(3),
      R => SR(0)
    );
\masked_addr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(4),
      Q => masked_addr_q(4),
      R => SR(0)
    );
\masked_addr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(5),
      Q => masked_addr_q(5),
      R => SR(0)
    );
\masked_addr_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(6),
      Q => masked_addr_q(6),
      R => SR(0)
    );
\masked_addr_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(7),
      Q => masked_addr_q(7),
      R => SR(0)
    );
\masked_addr_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(8),
      Q => masked_addr_q(8),
      R => SR(0)
    );
\masked_addr_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => masked_addr(9),
      Q => masked_addr_q(9),
      R => SR(0)
    );
next_mi_addr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_mi_addr0_carry_n_0,
      CO(2) => next_mi_addr0_carry_n_1,
      CO(1) => next_mi_addr0_carry_n_2,
      CO(0) => next_mi_addr0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \next_mi_addr0_carry_i_1__0_n_0\,
      DI(0) => '0',
      O(3) => next_mi_addr0_carry_n_4,
      O(2) => next_mi_addr0_carry_n_5,
      O(1) => next_mi_addr0_carry_n_6,
      O(0) => next_mi_addr0_carry_n_7,
      S(3) => \next_mi_addr0_carry_i_2__0_n_0\,
      S(2) => \next_mi_addr0_carry_i_3__0_n_0\,
      S(1) => \next_mi_addr0_carry_i_4__0_n_0\,
      S(0) => \next_mi_addr0_carry_i_5__0_n_0\
    );
\next_mi_addr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_mi_addr0_carry_n_0,
      CO(3) => \next_mi_addr0_carry__0_n_0\,
      CO(2) => \next_mi_addr0_carry__0_n_1\,
      CO(1) => \next_mi_addr0_carry__0_n_2\,
      CO(0) => \next_mi_addr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__0_n_4\,
      O(2) => \next_mi_addr0_carry__0_n_5\,
      O(1) => \next_mi_addr0_carry__0_n_6\,
      O(0) => \next_mi_addr0_carry__0_n_7\,
      S(3) => \next_mi_addr0_carry__0_i_1__0_n_0\,
      S(2) => \next_mi_addr0_carry__0_i_2__0_n_0\,
      S(1) => \next_mi_addr0_carry__0_i_3__0_n_0\,
      S(0) => \next_mi_addr0_carry__0_i_4__0_n_0\
    );
\next_mi_addr0_carry__0_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(16),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(16),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_1__0_n_0\
    );
\next_mi_addr0_carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(15),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(15),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_2__0_n_0\
    );
\next_mi_addr0_carry__0_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(14),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(14),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_3__0_n_0\
    );
\next_mi_addr0_carry__0_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(13),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(13),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__0_i_4__0_n_0\
    );
\next_mi_addr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__0_n_0\,
      CO(3) => \next_mi_addr0_carry__1_n_0\,
      CO(2) => \next_mi_addr0_carry__1_n_1\,
      CO(1) => \next_mi_addr0_carry__1_n_2\,
      CO(0) => \next_mi_addr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__1_n_4\,
      O(2) => \next_mi_addr0_carry__1_n_5\,
      O(1) => \next_mi_addr0_carry__1_n_6\,
      O(0) => \next_mi_addr0_carry__1_n_7\,
      S(3) => \next_mi_addr0_carry__1_i_1__0_n_0\,
      S(2) => \next_mi_addr0_carry__1_i_2__0_n_0\,
      S(1) => \next_mi_addr0_carry__1_i_3__0_n_0\,
      S(0) => \next_mi_addr0_carry__1_i_4__0_n_0\
    );
\next_mi_addr0_carry__1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(20),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(20),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_1__0_n_0\
    );
\next_mi_addr0_carry__1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(19),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(19),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_2__0_n_0\
    );
\next_mi_addr0_carry__1_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(18),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(18),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_3__0_n_0\
    );
\next_mi_addr0_carry__1_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(17),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(17),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__1_i_4__0_n_0\
    );
\next_mi_addr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__1_n_0\,
      CO(3) => \next_mi_addr0_carry__2_n_0\,
      CO(2) => \next_mi_addr0_carry__2_n_1\,
      CO(1) => \next_mi_addr0_carry__2_n_2\,
      CO(0) => \next_mi_addr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__2_n_4\,
      O(2) => \next_mi_addr0_carry__2_n_5\,
      O(1) => \next_mi_addr0_carry__2_n_6\,
      O(0) => \next_mi_addr0_carry__2_n_7\,
      S(3) => \next_mi_addr0_carry__2_i_1__0_n_0\,
      S(2) => \next_mi_addr0_carry__2_i_2__0_n_0\,
      S(1) => \next_mi_addr0_carry__2_i_3__0_n_0\,
      S(0) => \next_mi_addr0_carry__2_i_4__0_n_0\
    );
\next_mi_addr0_carry__2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(24),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(24),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_1__0_n_0\
    );
\next_mi_addr0_carry__2_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(23),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(23),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_2__0_n_0\
    );
\next_mi_addr0_carry__2_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(22),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(22),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_3__0_n_0\
    );
\next_mi_addr0_carry__2_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(21),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(21),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__2_i_4__0_n_0\
    );
\next_mi_addr0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__2_n_0\,
      CO(3) => \next_mi_addr0_carry__3_n_0\,
      CO(2) => \next_mi_addr0_carry__3_n_1\,
      CO(1) => \next_mi_addr0_carry__3_n_2\,
      CO(0) => \next_mi_addr0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr0_carry__3_n_4\,
      O(2) => \next_mi_addr0_carry__3_n_5\,
      O(1) => \next_mi_addr0_carry__3_n_6\,
      O(0) => \next_mi_addr0_carry__3_n_7\,
      S(3) => \next_mi_addr0_carry__3_i_1__0_n_0\,
      S(2) => \next_mi_addr0_carry__3_i_2__0_n_0\,
      S(1) => \next_mi_addr0_carry__3_i_3__0_n_0\,
      S(0) => \next_mi_addr0_carry__3_i_4__0_n_0\
    );
\next_mi_addr0_carry__3_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(28),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(28),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_1__0_n_0\
    );
\next_mi_addr0_carry__3_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(27),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(27),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_2__0_n_0\
    );
\next_mi_addr0_carry__3_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(26),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(26),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_3__0_n_0\
    );
\next_mi_addr0_carry__3_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(25),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(25),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__3_i_4__0_n_0\
    );
\next_mi_addr0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_next_mi_addr0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \next_mi_addr0_carry__4_n_2\,
      CO(0) => \next_mi_addr0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_next_mi_addr0_carry__4_O_UNCONNECTED\(3),
      O(2) => \next_mi_addr0_carry__4_n_5\,
      O(1) => \next_mi_addr0_carry__4_n_6\,
      O(0) => \next_mi_addr0_carry__4_n_7\,
      S(3) => '0',
      S(2) => \next_mi_addr0_carry__4_i_1__0_n_0\,
      S(1) => \next_mi_addr0_carry__4_i_2__0_n_0\,
      S(0) => \next_mi_addr0_carry__4_i_3__0_n_0\
    );
\next_mi_addr0_carry__4_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(31),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(31),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__4_i_1__0_n_0\
    );
\next_mi_addr0_carry__4_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(30),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(30),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__4_i_2__0_n_0\
    );
\next_mi_addr0_carry__4_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(29),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(29),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry__4_i_3__0_n_0\
    );
\next_mi_addr0_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(10),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(10),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry_i_1__0_n_0\
    );
\next_mi_addr0_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(12),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(12),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry_i_2__0_n_0\
    );
\next_mi_addr0_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(11),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(11),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry_i_3__0_n_0\
    );
\next_mi_addr0_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"757F7575757F7F7F"
    )
        port map (
      I0 => size_mask_q(3),
      I1 => next_mi_addr(10),
      I2 => cmd_queue_n_26,
      I3 => masked_addr_q(10),
      I4 => cmd_queue_n_27,
      I5 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      O => \next_mi_addr0_carry_i_4__0_n_0\
    );
\next_mi_addr0_carry_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(9),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(9),
      I5 => size_mask_q(3),
      O => \next_mi_addr0_carry_i_5__0_n_0\
    );
\next_mi_addr[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD888D800000000"
    )
        port map (
      I0 => cmd_queue_n_26,
      I1 => next_mi_addr(2),
      I2 => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      I3 => cmd_queue_n_27,
      I4 => masked_addr_q(2),
      I5 => access_fit_mi_side_q,
      O => \next_mi_addr[2]_i_1__0_n_0\
    );
\next_mi_addr[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2808080A280"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[3]\,
      I1 => cmd_queue_n_26,
      I2 => next_mi_addr(3),
      I3 => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      I4 => cmd_queue_n_27,
      I5 => masked_addr_q(3),
      O => pre_mi_addr(3)
    );
\next_mi_addr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[4]\,
      I1 => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      I2 => cmd_queue_n_27,
      I3 => masked_addr_q(4),
      I4 => cmd_queue_n_26,
      I5 => next_mi_addr(4),
      O => pre_mi_addr(4)
    );
\next_mi_addr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[5]\,
      I1 => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      I2 => cmd_queue_n_27,
      I3 => masked_addr_q(5),
      I4 => cmd_queue_n_26,
      I5 => next_mi_addr(5),
      O => pre_mi_addr(5)
    );
\next_mi_addr[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8080000A808"
    )
        port map (
      I0 => \split_addr_mask_q_reg_n_0_[6]\,
      I1 => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      I2 => cmd_queue_n_27,
      I3 => masked_addr_q(6),
      I4 => cmd_queue_n_26,
      I5 => next_mi_addr(6),
      O => pre_mi_addr(6)
    );
\next_mi_addr[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(7),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(7),
      I5 => size_mask_q(3),
      O => \next_mi_addr[7]_i_1__0_n_0\
    );
\next_mi_addr[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE200E200000000"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      I1 => cmd_queue_n_27,
      I2 => masked_addr_q(8),
      I3 => cmd_queue_n_26,
      I4 => next_mi_addr(8),
      I5 => size_mask_q(3),
      O => \next_mi_addr[8]_i_1__0_n_0\
    );
\next_mi_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_6,
      Q => next_mi_addr(10),
      R => SR(0)
    );
\next_mi_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_5,
      Q => next_mi_addr(11),
      R => SR(0)
    );
\next_mi_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_4,
      Q => next_mi_addr(12),
      R => SR(0)
    );
\next_mi_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_7\,
      Q => next_mi_addr(13),
      R => SR(0)
    );
\next_mi_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_6\,
      Q => next_mi_addr(14),
      R => SR(0)
    );
\next_mi_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_5\,
      Q => next_mi_addr(15),
      R => SR(0)
    );
\next_mi_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__0_n_4\,
      Q => next_mi_addr(16),
      R => SR(0)
    );
\next_mi_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_7\,
      Q => next_mi_addr(17),
      R => SR(0)
    );
\next_mi_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_6\,
      Q => next_mi_addr(18),
      R => SR(0)
    );
\next_mi_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_5\,
      Q => next_mi_addr(19),
      R => SR(0)
    );
\next_mi_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__1_n_4\,
      Q => next_mi_addr(20),
      R => SR(0)
    );
\next_mi_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_7\,
      Q => next_mi_addr(21),
      R => SR(0)
    );
\next_mi_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_6\,
      Q => next_mi_addr(22),
      R => SR(0)
    );
\next_mi_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_5\,
      Q => next_mi_addr(23),
      R => SR(0)
    );
\next_mi_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__2_n_4\,
      Q => next_mi_addr(24),
      R => SR(0)
    );
\next_mi_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_7\,
      Q => next_mi_addr(25),
      R => SR(0)
    );
\next_mi_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_6\,
      Q => next_mi_addr(26),
      R => SR(0)
    );
\next_mi_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_5\,
      Q => next_mi_addr(27),
      R => SR(0)
    );
\next_mi_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__3_n_4\,
      Q => next_mi_addr(28),
      R => SR(0)
    );
\next_mi_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__4_n_7\,
      Q => next_mi_addr(29),
      R => SR(0)
    );
\next_mi_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[2]_i_1__0_n_0\,
      Q => next_mi_addr(2),
      R => SR(0)
    );
\next_mi_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__4_n_6\,
      Q => next_mi_addr(30),
      R => SR(0)
    );
\next_mi_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr0_carry__4_n_5\,
      Q => next_mi_addr(31),
      R => SR(0)
    );
\next_mi_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(3),
      Q => next_mi_addr(3),
      R => SR(0)
    );
\next_mi_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(4),
      Q => next_mi_addr(4),
      R => SR(0)
    );
\next_mi_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(5),
      Q => next_mi_addr(5),
      R => SR(0)
    );
\next_mi_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => pre_mi_addr(6),
      Q => next_mi_addr(6),
      R => SR(0)
    );
\next_mi_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[7]_i_1__0_n_0\,
      Q => next_mi_addr(7),
      R => SR(0)
    );
\next_mi_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \next_mi_addr[8]_i_1__0_n_0\,
      Q => next_mi_addr(8),
      R => SR(0)
    );
\next_mi_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => next_mi_addr0_carry_n_7,
      Q => next_mi_addr(9),
      R => SR(0)
    );
\num_transactions_q[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \num_transactions_q[0]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(1),
      O => num_transactions(0)
    );
\num_transactions_q[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(5),
      I4 => s_axi_arsize(0),
      I5 => s_axi_arlen(6),
      O => \num_transactions_q[0]_i_2__0_n_0\
    );
\num_transactions_q[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
        port map (
      I0 => \num_transactions_q[1]_i_2__0_n_0\,
      I1 => s_axi_arsize(1),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(4),
      I5 => s_axi_arsize(2),
      O => \num_transactions_q[1]_i_1__0_n_0\
    );
\num_transactions_q[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(7),
      O => \num_transactions_q[1]_i_2__0_n_0\
    );
\num_transactions_q[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arlen(6),
      I4 => s_axi_arlen(5),
      I5 => s_axi_arsize(2),
      O => \num_transactions_q[2]_i_1__0_n_0\
    );
\num_transactions_q[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88800080"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(6),
      O => num_transactions(3)
    );
\num_transactions_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => num_transactions(0),
      Q => num_transactions_q(0),
      R => SR(0)
    );
\num_transactions_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \num_transactions_q[1]_i_1__0_n_0\,
      Q => num_transactions_q(1),
      R => SR(0)
    );
\num_transactions_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \num_transactions_q[2]_i_1__0_n_0\,
      Q => num_transactions_q(2),
      R => SR(0)
    );
\num_transactions_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => num_transactions(3),
      Q => num_transactions_q(3),
      R => SR(0)
    );
\pushed_commands[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pushed_commands_reg(0),
      O => \p_0_in__0\(0)
    );
\pushed_commands[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pushed_commands_reg(0),
      I1 => pushed_commands_reg(1),
      O => \p_0_in__0\(1)
    );
\pushed_commands[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pushed_commands_reg(2),
      I1 => pushed_commands_reg(1),
      I2 => pushed_commands_reg(0),
      O => \p_0_in__0\(2)
    );
\pushed_commands[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pushed_commands_reg(3),
      I1 => pushed_commands_reg(2),
      I2 => pushed_commands_reg(0),
      I3 => pushed_commands_reg(1),
      O => \p_0_in__0\(3)
    );
\pushed_commands[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => pushed_commands_reg(4),
      I1 => pushed_commands_reg(1),
      I2 => pushed_commands_reg(0),
      I3 => pushed_commands_reg(2),
      I4 => pushed_commands_reg(3),
      O => \p_0_in__0\(4)
    );
\pushed_commands[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => pushed_commands_reg(5),
      I1 => pushed_commands_reg(3),
      I2 => pushed_commands_reg(2),
      I3 => pushed_commands_reg(0),
      I4 => pushed_commands_reg(1),
      I5 => pushed_commands_reg(4),
      O => \p_0_in__0\(5)
    );
\pushed_commands[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pushed_commands_reg(6),
      I1 => \pushed_commands[7]_i_3__0_n_0\,
      O => \p_0_in__0\(6)
    );
\pushed_commands[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => \out\,
      O => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pushed_commands_reg(7),
      I1 => \pushed_commands[7]_i_3__0_n_0\,
      I2 => pushed_commands_reg(6),
      O => \p_0_in__0\(7)
    );
\pushed_commands[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pushed_commands_reg(5),
      I1 => pushed_commands_reg(3),
      I2 => pushed_commands_reg(2),
      I3 => pushed_commands_reg(0),
      I4 => pushed_commands_reg(1),
      I5 => pushed_commands_reg(4),
      O => \pushed_commands[7]_i_3__0_n_0\
    );
\pushed_commands_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(0),
      Q => pushed_commands_reg(0),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(1),
      Q => pushed_commands_reg(1),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(2),
      Q => pushed_commands_reg(2),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(3),
      Q => pushed_commands_reg(3),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(4),
      Q => pushed_commands_reg(4),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(5),
      Q => pushed_commands_reg(5),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(6),
      Q => pushed_commands_reg(6),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\pushed_commands_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(7),
      Q => pushed_commands_reg(7),
      R => \pushed_commands[7]_i_1__0_n_0\
    );
\queue_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => cmd_queue_n_181,
      Q => \^s_axi_rid\(0),
      R => SR(0)
    );
\si_full_size_q_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(2),
      O => \si_full_size_q_i_1__0_n_0\
    );
si_full_size_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => \si_full_size_q_i_1__0_n_0\,
      Q => si_full_size_q,
      R => SR(0)
    );
\size_mask_q[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => size_mask(0)
    );
\size_mask_q[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      O => split_addr_mask(1)
    );
\size_mask_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => size_mask(0),
      Q => size_mask_q(0),
      R => SR(0)
    );
\size_mask_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => split_addr_mask(1),
      Q => size_mask_q(1),
      R => SR(0)
    );
\size_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => '1',
      Q => size_mask_q(3),
      R => SR(0)
    );
\split_addr_mask_q[3]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arsize(2),
      O => split_addr_mask(3)
    );
\split_addr_mask_q[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => split_addr_mask(4)
    );
\split_addr_mask_q[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      O => split_addr_mask(5)
    );
\split_addr_mask_q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => split_addr_mask(6)
    );
\split_addr_mask_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => split_addr_mask(3),
      Q => \split_addr_mask_q_reg_n_0_[3]\,
      R => SR(0)
    );
\split_addr_mask_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => split_addr_mask(4),
      Q => \split_addr_mask_q_reg_n_0_[4]\,
      R => SR(0)
    );
\split_addr_mask_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => split_addr_mask(5),
      Q => \split_addr_mask_q_reg_n_0_[5]\,
      R => SR(0)
    );
\split_addr_mask_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => split_addr_mask(6),
      Q => \split_addr_mask_q_reg_n_0_[6]\,
      R => SR(0)
    );
split_ongoing_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => pushed_new_cmd,
      D => cmd_split_i,
      Q => split_ongoing,
      R => SR(0)
    );
\unalignment_addr_q[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      O => unalignment_addr(0)
    );
\unalignment_addr_q[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arsize(2),
      O => unalignment_addr(1)
    );
\unalignment_addr_q[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(2),
      O => unalignment_addr(2)
    );
\unalignment_addr_q[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => unalignment_addr(3)
    );
\unalignment_addr_q[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(0),
      O => unalignment_addr(4)
    );
\unalignment_addr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => unalignment_addr(0),
      Q => unalignment_addr_q(0),
      R => SR(0)
    );
\unalignment_addr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => unalignment_addr(1),
      Q => unalignment_addr_q(1),
      R => SR(0)
    );
\unalignment_addr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => unalignment_addr(2),
      Q => unalignment_addr_q(2),
      R => SR(0)
    );
\unalignment_addr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => unalignment_addr(3),
      Q => unalignment_addr_q(3),
      R => SR(0)
    );
\unalignment_addr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => unalignment_addr(4),
      Q => unalignment_addr_q(4),
      R => SR(0)
    );
\wrap_need_to_split_q_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => \wrap_need_to_split_q_i_2__0_n_0\,
      I1 => \wrap_need_to_split_q_i_3__0_n_0\,
      I2 => s_axi_arburst(1),
      I3 => s_axi_arburst(0),
      I4 => \legal_wrap_len_q_i_1__0_n_0\,
      O => wrap_need_to_split
    );
\wrap_need_to_split_q_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFAEFFAEFFAE"
    )
        port map (
      I0 => wrap_unaligned_len(0),
      I1 => s_axi_araddr(3),
      I2 => \masked_addr_q[3]_i_2__0_n_0\,
      I3 => wrap_unaligned_len(2),
      I4 => s_axi_araddr(5),
      I5 => \masked_addr_q[5]_i_2__0_n_0\,
      O => \wrap_need_to_split_q_i_2__0_n_0\
    );
\wrap_need_to_split_q_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \masked_addr_q[8]_i_2__0_n_0\,
      I2 => s_axi_araddr(9),
      I3 => \masked_addr_q[9]_i_2__0_n_0\,
      I4 => wrap_unaligned_len(4),
      I5 => wrap_unaligned_len(5),
      O => \wrap_need_to_split_q_i_3__0_n_0\
    );
wrap_need_to_split_q_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_need_to_split,
      Q => wrap_need_to_split_q,
      R => SR(0)
    );
\wrap_rest_len[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wrap_unaligned_len_q(0),
      O => wrap_rest_len0(0)
    );
\wrap_rest_len[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wrap_unaligned_len_q(1),
      I1 => wrap_unaligned_len_q(0),
      O => \wrap_rest_len[1]_i_1__0_n_0\
    );
\wrap_rest_len[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => wrap_unaligned_len_q(2),
      I1 => wrap_unaligned_len_q(0),
      I2 => wrap_unaligned_len_q(1),
      O => wrap_rest_len0(2)
    );
\wrap_rest_len[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(3),
      I1 => wrap_unaligned_len_q(2),
      I2 => wrap_unaligned_len_q(1),
      I3 => wrap_unaligned_len_q(0),
      O => wrap_rest_len0(3)
    );
\wrap_rest_len[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(4),
      I1 => wrap_unaligned_len_q(3),
      I2 => wrap_unaligned_len_q(0),
      I3 => wrap_unaligned_len_q(1),
      I4 => wrap_unaligned_len_q(2),
      O => wrap_rest_len0(4)
    );
\wrap_rest_len[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => wrap_unaligned_len_q(5),
      I1 => wrap_unaligned_len_q(4),
      I2 => wrap_unaligned_len_q(2),
      I3 => wrap_unaligned_len_q(1),
      I4 => wrap_unaligned_len_q(0),
      I5 => wrap_unaligned_len_q(3),
      O => wrap_rest_len0(5)
    );
\wrap_rest_len[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wrap_unaligned_len_q(6),
      I1 => \wrap_rest_len[7]_i_2__0_n_0\,
      O => wrap_rest_len0(6)
    );
\wrap_rest_len[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => wrap_unaligned_len_q(7),
      I1 => wrap_unaligned_len_q(6),
      I2 => \wrap_rest_len[7]_i_2__0_n_0\,
      O => wrap_rest_len0(7)
    );
\wrap_rest_len[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => wrap_unaligned_len_q(4),
      I1 => wrap_unaligned_len_q(2),
      I2 => wrap_unaligned_len_q(1),
      I3 => wrap_unaligned_len_q(0),
      I4 => wrap_unaligned_len_q(3),
      I5 => wrap_unaligned_len_q(5),
      O => \wrap_rest_len[7]_i_2__0_n_0\
    );
\wrap_rest_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(0),
      Q => wrap_rest_len(0),
      R => SR(0)
    );
\wrap_rest_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \wrap_rest_len[1]_i_1__0_n_0\,
      Q => wrap_rest_len(1),
      R => SR(0)
    );
\wrap_rest_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(2),
      Q => wrap_rest_len(2),
      R => SR(0)
    );
\wrap_rest_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(3),
      Q => wrap_rest_len(3),
      R => SR(0)
    );
\wrap_rest_len_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(4),
      Q => wrap_rest_len(4),
      R => SR(0)
    );
\wrap_rest_len_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(5),
      Q => wrap_rest_len(5),
      R => SR(0)
    );
\wrap_rest_len_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(6),
      Q => wrap_rest_len(6),
      R => SR(0)
    );
\wrap_rest_len_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => wrap_rest_len0(7),
      Q => wrap_rest_len(7),
      R => SR(0)
    );
\wrap_unaligned_len_q[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \masked_addr_q[2]_i_2__0_n_0\,
      O => wrap_unaligned_len(0)
    );
\wrap_unaligned_len_q[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \masked_addr_q[3]_i_2__0_n_0\,
      O => wrap_unaligned_len(1)
    );
\wrap_unaligned_len_q[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A808"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \masked_addr_q[4]_i_2__0_n_0\,
      I2 => s_axi_arsize(2),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arlen(0),
      I5 => s_axi_arsize(1),
      O => wrap_unaligned_len(2)
    );
\wrap_unaligned_len_q[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \masked_addr_q[5]_i_2__0_n_0\,
      O => wrap_unaligned_len(3)
    );
\wrap_unaligned_len_q[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \num_transactions_q[0]_i_2__0_n_0\,
      I2 => s_axi_arsize(2),
      I3 => \masked_addr_q[6]_i_2__0_n_0\,
      O => wrap_unaligned_len(4)
    );
\wrap_unaligned_len_q[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \masked_addr_q[7]_i_3__0_n_0\,
      I2 => s_axi_arsize(2),
      I3 => \masked_addr_q[7]_i_2__0_n_0\,
      O => wrap_unaligned_len(5)
    );
\wrap_unaligned_len_q[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \masked_addr_q[8]_i_2__0_n_0\,
      O => wrap_unaligned_len(6)
    );
\wrap_unaligned_len_q[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \masked_addr_q[9]_i_2__0_n_0\,
      O => wrap_unaligned_len(7)
    );
\wrap_unaligned_len_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(0),
      Q => wrap_unaligned_len_q(0),
      R => SR(0)
    );
\wrap_unaligned_len_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(1),
      Q => wrap_unaligned_len_q(1),
      R => SR(0)
    );
\wrap_unaligned_len_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(2),
      Q => wrap_unaligned_len_q(2),
      R => SR(0)
    );
\wrap_unaligned_len_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(3),
      Q => wrap_unaligned_len_q(3),
      R => SR(0)
    );
\wrap_unaligned_len_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(4),
      Q => wrap_unaligned_len_q(4),
      R => SR(0)
    );
\wrap_unaligned_len_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(5),
      Q => wrap_unaligned_len_q(5),
      R => SR(0)
    );
\wrap_unaligned_len_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(6),
      Q => wrap_unaligned_len_q(6),
      R => SR(0)
    );
\wrap_unaligned_len_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => \^s_axi_arready\,
      D => wrap_unaligned_len(7),
      Q => wrap_unaligned_len_q(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_dwidth_converter_v2_1_8_axi_downsizer\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    din : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    \m_axi_arsize[2]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
end \top_auto_ds_0_axi_dwidth_converter_v2_1_8_axi_downsizer\;

architecture STRUCTURE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_axi_downsizer\ is
  signal S_AXI_RDATA_II : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue/inst/empty\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_197\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_57\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_65\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_66\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_67\ : STD_LOGIC;
  signal \USE_READ.read_addr_inst_n_68\ : STD_LOGIC;
  signal \USE_READ.read_data_inst_n_2\ : STD_LOGIC;
  signal \USE_READ.read_data_inst_n_3\ : STD_LOGIC;
  signal \USE_READ.read_data_inst_n_6\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_10\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_71\ : STD_LOGIC;
  signal \USE_WRITE.write_data_inst_n_3\ : STD_LOGIC;
  signal \USE_WRITE.write_data_inst_n_4\ : STD_LOGIC;
  signal \WORD_LANE[0].S_AXI_RDATA_II_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WORD_LANE[1].S_AXI_RDATA_II_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WORD_LANE[2].S_AXI_RDATA_II_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WORD_LANE[3].S_AXI_RDATA_II_reg\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal areset_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal current_word_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal current_word_1_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal first_mi_word : STD_LOGIC;
  signal first_word : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 7 to 7 );
  signal length_counter_1_reg_1 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \^m_axi_wlast\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_10_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal pop_mi_data : STD_LOGIC;
  signal rd_cmd_length : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_cmd_mirror : STD_LOGIC;
  signal rd_cmd_ready : STD_LOGIC;
  signal wr_cmd_b_ready : STD_LOGIC;
  signal wr_cmd_b_repeat : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_cmd_b_split : STD_LOGIC;
  signal wr_cmd_fix : STD_LOGIC;
  signal wr_cmd_length : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  m_axi_wlast <= \^m_axi_wlast\;
\USE_READ.read_addr_inst\: entity work.\top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer__parameterized0\
     port map (
      CLK => CLK,
      D(3) => \USE_READ.read_addr_inst_n_65\,
      D(2) => \USE_READ.read_addr_inst_n_66\,
      D(1) => \USE_READ.read_addr_inst_n_67\,
      D(0) => \USE_READ.read_addr_inst_n_68\,
      E(0) => p_10_out,
      Q(0) => length_counter_1_reg(7),
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      \S_AXI_RRESP_ACC_reg[0]\ => \USE_READ.read_addr_inst_n_197\,
      \S_AXI_RRESP_ACC_reg[0]_0\ => \USE_READ.read_data_inst_n_6\,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]\ => \USE_READ.read_addr_inst_n_57\,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\(0) => S_AXI_RDATA_II,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_1\(31 downto 0) => \WORD_LANE[0].S_AXI_RDATA_II_reg\(31 downto 0),
      \WORD_LANE[1].S_AXI_RDATA_II_reg[63]\(0) => p_8_out,
      \WORD_LANE[1].S_AXI_RDATA_II_reg[63]_0\(31 downto 0) => \WORD_LANE[1].S_AXI_RDATA_II_reg\(31 downto 0),
      \WORD_LANE[2].S_AXI_RDATA_II_reg[95]\(0) => p_5_out,
      \WORD_LANE[2].S_AXI_RDATA_II_reg[95]_0\(31 downto 0) => \WORD_LANE[2].S_AXI_RDATA_II_reg\(31 downto 0),
      \WORD_LANE[3].S_AXI_RDATA_II_reg[127]\(0) => p_2_out,
      \WORD_LANE[3].S_AXI_RDATA_II_reg[127]_0\(31 downto 0) => \WORD_LANE[3].S_AXI_RDATA_II_reg\(31 downto 0),
      areset_d(1 downto 0) => areset_d(1 downto 0),
      \areset_d_reg[1]\ => \USE_WRITE.write_addr_inst_n_71\,
      \current_word_1_reg[3]\(3 downto 0) => current_word_1(3 downto 0),
      dout(8) => rd_cmd_mirror,
      dout(7 downto 0) => rd_cmd_length(7 downto 0),
      first_mi_word_reg(0) => pop_mi_data,
      first_word => first_word,
      \goreg_dm.dout_i_reg[8]\ => \USE_READ.read_data_inst_n_3\,
      \goreg_dm.dout_i_reg[9]\ => \USE_READ.read_data_inst_n_2\,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      \m_axi_arsize[2]\(10 downto 0) => \m_axi_arsize[2]\(10 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      rd_en => rd_cmd_ready,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready(0),
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\USE_READ.read_data_inst\: entity work.\top_auto_ds_0_axi_dwidth_converter_v2_1_8_r_downsizer\
     port map (
      CLK => CLK,
      D(3) => \USE_READ.read_addr_inst_n_65\,
      D(2) => \USE_READ.read_addr_inst_n_66\,
      D(1) => \USE_READ.read_addr_inst_n_67\,
      D(0) => \USE_READ.read_addr_inst_n_68\,
      E(0) => pop_mi_data,
      Q(0) => length_counter_1_reg(7),
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      \S_AXI_RRESP_ACC_reg[0]_0\ => \USE_READ.read_data_inst_n_6\,
      \WORD_LANE[0].S_AXI_RDATA_II_reg[31]_0\ => \USE_READ.read_data_inst_n_3\,
      \current_word_1_reg[3]_0\(3 downto 0) => current_word_1(3 downto 0),
      dout(8) => rd_cmd_mirror,
      dout(7 downto 0) => rd_cmd_length(7 downto 0),
      empty_fwft_i_reg => \USE_READ.read_addr_inst_n_57\,
      first_word => first_word,
      \goreg_dm.dout_i_reg[0]\ => \USE_READ.read_addr_inst_n_197\,
      \goreg_dm.dout_i_reg[10]\(0) => S_AXI_RDATA_II,
      \goreg_dm.dout_i_reg[10]_0\(0) => p_10_out,
      \goreg_dm.dout_i_reg[10]_1\(0) => p_8_out,
      \goreg_dm.dout_i_reg[10]_2\(0) => p_5_out,
      \goreg_dm.dout_i_reg[10]_3\(0) => p_2_out,
      \gpregsm1.curr_fwft_state_reg[0]\ => \USE_READ.read_data_inst_n_2\,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      rd_en => rd_cmd_ready,
      \s_axi_rdata[127]\(31 downto 0) => \WORD_LANE[3].S_AXI_RDATA_II_reg\(31 downto 0),
      \s_axi_rdata[31]\(31 downto 0) => \WORD_LANE[0].S_AXI_RDATA_II_reg\(31 downto 0),
      \s_axi_rdata[63]\(31 downto 0) => \WORD_LANE[1].S_AXI_RDATA_II_reg\(31 downto 0),
      \s_axi_rdata[95]\(31 downto 0) => \WORD_LANE[2].S_AXI_RDATA_II_reg\(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0)
    );
\USE_WRITE.USE_SPLIT.write_resp_inst\: entity work.\top_auto_ds_0_axi_dwidth_converter_v2_1_8_b_downsizer\
     port map (
      CLK => CLK,
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      dout(8) => wr_cmd_b_split,
      dout(7 downto 0) => wr_cmd_b_repeat(7 downto 0),
      empty => \USE_B_CHANNEL.cmd_b_queue/inst/empty\,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      rd_en => wr_cmd_b_ready,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid
    );
\USE_WRITE.write_addr_inst\: entity work.\top_auto_ds_0_axi_dwidth_converter_v2_1_8_a_downsizer\
     port map (
      CLK => CLK,
      D(3 downto 0) => p_0_in(3 downto 0),
      E(0) => p_2_in,
      Q(0) => length_counter_1_reg_1(7),
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      command_ongoing_reg_0 => \USE_WRITE.write_addr_inst_n_71\,
      \current_word_1_reg[2]\(8) => wr_cmd_fix,
      \current_word_1_reg[2]\(7 downto 0) => wr_cmd_length(7 downto 0),
      \current_word_1_reg[3]\(3 downto 0) => current_word_1_0(3 downto 0),
      din(10 downto 0) => din(10 downto 0),
      dout(8) => wr_cmd_b_split,
      dout(7 downto 0) => wr_cmd_b_repeat(7 downto 0),
      empty => \USE_B_CHANNEL.cmd_b_queue/inst/empty\,
      first_mi_word => first_mi_word,
      first_word_reg => \USE_WRITE.write_data_inst_n_4\,
      \goreg_dm.dout_i_reg[8]\ => \USE_WRITE.write_data_inst_n_3\,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => \^m_axi_wlast\,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \out\ => \out\,
      rd_en => wr_cmd_b_ready,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => E(0),
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
\USE_WRITE.write_data_inst\: entity work.\top_auto_ds_0_axi_dwidth_converter_v2_1_8_w_downsizer\
     port map (
      CLK => CLK,
      D(3 downto 0) => p_0_in(3 downto 0),
      E(0) => p_2_in,
      Q(0) => length_counter_1_reg_1(7),
      SR(0) => \USE_WRITE.write_addr_inst_n_10\,
      \current_word_1_reg[3]_0\ => \USE_WRITE.write_data_inst_n_4\,
      \current_word_1_reg[3]_1\(3 downto 0) => current_word_1_0(3 downto 0),
      first_mi_word => first_mi_word,
      \goreg_dm.dout_i_reg[28]\(8) => wr_cmd_fix,
      \goreg_dm.dout_i_reg[28]\(7 downto 0) => wr_cmd_length(7 downto 0),
      m_axi_wlast => \^m_axi_wlast\,
      s_axi_wready => \USE_WRITE.write_data_inst_n_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 0;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is "virtex7";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 256;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 2;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 32;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 4;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 2;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ : entity is 256;
end \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\;

architecture STRUCTURE of \top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\ is
begin
\gen_downsizer.gen_simple_downsizer.axi_downsizer_inst\: entity work.\top_auto_ds_0_axi_dwidth_converter_v2_1_8_axi_downsizer\
     port map (
      CLK => s_axi_aclk,
      E(0) => s_axi_awready,
      din(10 downto 8) => m_axi_awsize(2 downto 0),
      din(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      \m_axi_arsize[2]\(10 downto 8) => m_axi_arsize(2 downto 0),
      \m_axi_arsize[2]\(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      \out\ => s_axi_aresetn,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready(0) => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_auto_ds_0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of \top_auto_ds_0\ : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \top_auto_ds_0\ : entity is "top_auto_ds_0,axi_dwidth_converter_v2_1_8_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of \top_auto_ds_0\ : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of \top_auto_ds_0\ : entity is "axi_dwidth_converter_v2_1_8_top,Vivado 2016.1";
end \top_auto_ds_0\;

architecture STRUCTURE of \top_auto_ds_0\ is
  signal NLW_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_IS_ACLK_ASYNC : integer;
  attribute C_AXI_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "virtex7";
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 0;
  attribute C_MAX_SPLIT_BEATS : integer;
  attribute C_MAX_SPLIT_BEATS of inst : label is 256;
  attribute C_M_AXI_ACLK_RATIO : integer;
  attribute C_M_AXI_ACLK_RATIO of inst : label is 2;
  attribute C_M_AXI_BYTES_LOG : integer;
  attribute C_M_AXI_BYTES_LOG of inst : label is 2;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_PACKING_LEVEL : integer;
  attribute C_PACKING_LEVEL of inst : label is 1;
  attribute C_RATIO : integer;
  attribute C_RATIO of inst : label is 4;
  attribute C_RATIO_LOG : integer;
  attribute C_RATIO_LOG of inst : label is 2;
  attribute C_SUPPORTS_ID : integer;
  attribute C_SUPPORTS_ID of inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 3;
  attribute C_S_AXI_ACLK_RATIO : integer;
  attribute C_S_AXI_ACLK_RATIO of inst : label is 1;
  attribute C_S_AXI_BYTES_LOG : integer;
  attribute C_S_AXI_BYTES_LOG of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_MAX_SPLIT_BEATS : integer;
  attribute P_MAX_SPLIT_BEATS of inst : label is 256;
begin
inst: entity work.\top_auto_ds_0_axi_dwidth_converter_v2_1_8_top\
     port map (
      m_axi_aclk => '0',
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_aresetn => '0',
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_inst_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(0) => NLW_inst_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
