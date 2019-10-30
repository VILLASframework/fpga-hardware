-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Wed Oct 16 14:55:50 2019
-- Host        : acs-vm-ubuntu-xilinx running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/svg-hka/aurora_rtds/aurora_rtds.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_sim_netlist.vhdl
-- Design      : aurora_8b10b_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL is
  port (
    new_pkt_r_reg_0 : out STD_LOGIC;
    new_pkt_r : in STD_LOGIC;
    new_pkt_r_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL : entity is "aurora_8b10b_0_AXI_TO_LL";
end aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL is
begin
new_pkt_r_reg: unisim.vcomponents.FDRE
     port map (
      C => new_pkt_r_reg_1,
      CE => '1',
      D => new_pkt_r,
      Q => new_pkt_r_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT is
  port (
    soft_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    reset_channel_i : out STD_LOGIC;
    wait_for_lane_up_r0 : out STD_LOGIC;
    RESET_CHANNEL_reg_0 : in STD_LOGIC;
    hard_err_i : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    verify_r_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    power_down : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT : entity is "aurora_8b10b_0_CHANNEL_ERR_DETECT";
end aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT is
  signal RESET_CHANNEL0 : STD_LOGIC;
  signal channel_soft_err_c : STD_LOGIC;
  signal hard_err_r : STD_LOGIC;
  signal lane_up_r : STD_LOGIC;
  signal \^reset_channel_i\ : STD_LOGIC;
  signal soft_err_r : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  reset_channel_i <= \^reset_channel_i\;
CHANNEL_HARD_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RESET_CHANNEL_reg_0,
      CE => '1',
      D => hard_err_r,
      Q => hard_err,
      R => '0'
    );
CHANNEL_SOFT_ERR_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => soft_err_r(1),
      I1 => soft_err_r(0),
      O => channel_soft_err_c
    );
CHANNEL_SOFT_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RESET_CHANNEL_reg_0,
      CE => '1',
      D => channel_soft_err_c,
      Q => soft_err,
      R => '0'
    );
RESET_CHANNEL_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => power_down,
      I1 => lane_up_r,
      O => RESET_CHANNEL0
    );
RESET_CHANNEL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => RESET_CHANNEL_reg_0,
      CE => '1',
      D => RESET_CHANNEL0,
      Q => \^reset_channel_i\,
      R => '0'
    );
hard_err_r_reg: unisim.vcomponents.FDRE
     port map (
      C => RESET_CHANNEL_reg_0,
      CE => '1',
      D => hard_err_i,
      Q => hard_err_r,
      R => '0'
    );
lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => RESET_CHANNEL_reg_0,
      CE => '1',
      D => lane_up,
      Q => lane_up_r,
      R => '0'
    );
\soft_err_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => RESET_CHANNEL_reg_0,
      CE => '1',
      D => D(1),
      Q => soft_err_r(1),
      R => '0'
    );
\soft_err_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => RESET_CHANNEL_reg_0,
      CE => '1',
      D => D(0),
      Q => soft_err_r(0),
      R => '0'
    );
verify_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^reset_channel_i\,
      I1 => verify_r_reg(0),
      O => wait_for_lane_up_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM is
  port (
    gen_ver_i : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    channel_up : out STD_LOGIC;
    start_rx_i : out STD_LOGIC;
    gtrxreset_i : out STD_LOGIC;
    START_RX_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    \free_count_r_reg[13]_0\ : in STD_LOGIC;
    txver_count_r0 : in STD_LOGIC;
    got_v_i : in STD_LOGIC;
    wait_for_lane_up_r0 : in STD_LOGIC;
    \gtrxreset_extend_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_channel_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM : entity is "aurora_8b10b_0_CHANNEL_INIT_SM";
end aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM is
  signal GTRXRESET_OUT_i_1_n_0 : STD_LOGIC;
  signal GTRXRESET_OUT_i_2_n_0 : STD_LOGIC;
  signal START_RX0 : STD_LOGIC;
  signal all_lanes_v_r : STD_LOGIC;
  signal bad_v_r : STD_LOGIC;
  signal bad_v_r0 : STD_LOGIC;
  signal \^channel_up\ : STD_LOGIC;
  signal \free_count_r[13]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[13]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[1]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[5]_i_5_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_2_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_3_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_4_n_0\ : STD_LOGIC;
  signal \free_count_r[9]_i_5_n_0\ : STD_LOGIC;
  signal free_count_r_reg : STD_LOGIC_VECTOR ( 0 to 13 );
  signal \free_count_r_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[1]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \free_count_r_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \^gen_ver_i\ : STD_LOGIC;
  signal got_first_v_r : STD_LOGIC;
  signal got_first_v_r_i_1_n_0 : STD_LOGIC;
  signal gtreset_c : STD_LOGIC;
  signal gtrxreset_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gtrxreset_nxt : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_verify_c : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 15 to 15 );
  signal ready_r : STD_LOGIC;
  signal ready_r2 : STD_LOGIC;
  signal reset_lanes_c : STD_LOGIC;
  signal \rxver_count_r_reg[1]_srl2_i_1_n_0\ : STD_LOGIC;
  signal \rxver_count_r_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \rxver_count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \^start_rx_i\ : STD_LOGIC;
  signal \txver_count_r_reg[6]_srl7_n_0\ : STD_LOGIC;
  signal \txver_count_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_count_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \v_count_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_1_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_2_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_3_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_i_4_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \verify_watchdog_r_reg_n_0_[15]\ : STD_LOGIC;
  signal wait_for_lane_up_r : STD_LOGIC;
  signal \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of got_first_v_r_i_1 : label is "soft_lutpair38";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtreset_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gtreset_flop_0_i : label is "FD";
  attribute SOFT_HLUTNM of \ready_r_i_1__0\ : label is "soft_lutpair39";
  attribute BOX_TYPE of reset_lanes_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of reset_lanes_flop_i : label is "FD";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rxver_count_r_reg[1]_srl2\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \rxver_count_r_reg[1]_srl2\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 ";
  attribute srl_bus_name of \txver_count_r_reg[6]_srl7\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg ";
  attribute srl_name of \txver_count_r_reg[6]_srl7\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 ";
  attribute srl_bus_name of \v_count_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg ";
  attribute srl_name of \v_count_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg[14]_srl15 ";
  attribute SOFT_HLUTNM of \v_count_r_reg[14]_srl15_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of verify_r_i_2 : label is "soft_lutpair39";
  attribute srl_bus_name of \verify_watchdog_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg ";
  attribute srl_name of \verify_watchdog_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 ";
begin
  channel_up <= \^channel_up\;
  gen_ver_i <= \^gen_ver_i\;
  start_rx_i <= \^start_rx_i\;
CHANNEL_UP_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => ready_r2,
      Q => \^channel_up\,
      R => '0'
    );
FRAME_ERR_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^start_rx_i\,
      O => START_RX_reg_0(0)
    );
GTRXRESET_OUT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => gtrxreset_extend_r(2),
      I1 => gtrxreset_extend_r(3),
      I2 => gtrxreset_extend_r(0),
      I3 => gtrxreset_extend_r(1),
      I4 => GTRXRESET_OUT_i_2_n_0,
      O => GTRXRESET_OUT_i_1_n_0
    );
GTRXRESET_OUT_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => gtrxreset_extend_r(5),
      I1 => gtrxreset_extend_r(4),
      I2 => gtrxreset_extend_r(7),
      I3 => gtrxreset_extend_r(6),
      O => GTRXRESET_OUT_i_2_n_0
    );
GTRXRESET_OUT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => GTRXRESET_OUT_i_1_n_0,
      Q => gtrxreset_i,
      R => '0'
    );
START_RX_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_for_lane_up_r,
      O => START_RX0
    );
START_RX_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => START_RX0,
      Q => \^start_rx_i\,
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
all_lanes_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => got_v_i,
      Q => all_lanes_v_r,
      R => '0'
    );
bad_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => got_first_v_r,
      I1 => all_lanes_v_r,
      I2 => \v_count_r_reg_n_0_[15]\,
      O => bad_v_r0
    );
bad_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => bad_v_r0,
      Q => bad_v_r,
      R => '0'
    );
\free_count_r[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(10),
      O => \free_count_r[13]_i_2_n_0\
    );
\free_count_r[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(11),
      O => \free_count_r[13]_i_3_n_0\
    );
\free_count_r[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(12),
      O => \free_count_r[13]_i_4_n_0\
    );
\free_count_r[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(13),
      O => \free_count_r[13]_i_5_n_0\
    );
\free_count_r[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(0),
      O => \free_count_r[1]_i_2_n_0\
    );
\free_count_r[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(1),
      O => \free_count_r[1]_i_3_n_0\
    );
\free_count_r[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(2),
      O => \free_count_r[5]_i_2_n_0\
    );
\free_count_r[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(3),
      O => \free_count_r[5]_i_3_n_0\
    );
\free_count_r[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(4),
      O => \free_count_r[5]_i_4_n_0\
    );
\free_count_r[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(5),
      O => \free_count_r[5]_i_5_n_0\
    );
\free_count_r[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(6),
      O => \free_count_r[9]_i_2_n_0\
    );
\free_count_r[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(7),
      O => \free_count_r[9]_i_3_n_0\
    );
\free_count_r[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(8),
      O => \free_count_r[9]_i_4_n_0\
    );
\free_count_r[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => free_count_r_reg(9),
      O => \free_count_r[9]_i_5_n_0\
    );
\free_count_r_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[1]_i_1_n_6\,
      Q => free_count_r_reg(0),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_4\,
      Q => free_count_r_reg(10),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_5\,
      Q => free_count_r_reg(11),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_6\,
      Q => free_count_r_reg(12),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[13]_i_1_n_7\,
      Q => free_count_r_reg(13),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \free_count_r_reg[13]_i_1_n_0\,
      CO(2) => \free_count_r_reg[13]_i_1_n_1\,
      CO(1) => \free_count_r_reg[13]_i_1_n_2\,
      CO(0) => \free_count_r_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[13]_i_1_n_4\,
      O(2) => \free_count_r_reg[13]_i_1_n_5\,
      O(1) => \free_count_r_reg[13]_i_1_n_6\,
      O(0) => \free_count_r_reg[13]_i_1_n_7\,
      S(3) => \free_count_r[13]_i_2_n_0\,
      S(2) => \free_count_r[13]_i_3_n_0\,
      S(1) => \free_count_r[13]_i_4_n_0\,
      S(0) => \free_count_r[13]_i_5_n_0\
    );
\free_count_r_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[1]_i_1_n_7\,
      Q => free_count_r_reg(1),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[5]_i_1_n_0\,
      CO(3 downto 1) => \NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \free_count_r_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => \NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \free_count_r_reg[1]_i_1_n_6\,
      O(0) => \free_count_r_reg[1]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \free_count_r[1]_i_2_n_0\,
      S(0) => \free_count_r[1]_i_3_n_0\
    );
\free_count_r_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_4\,
      Q => free_count_r_reg(2),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_5\,
      Q => free_count_r_reg(3),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_6\,
      Q => free_count_r_reg(4),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[5]_i_1_n_7\,
      Q => free_count_r_reg(5),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[9]_i_1_n_0\,
      CO(3) => \free_count_r_reg[5]_i_1_n_0\,
      CO(2) => \free_count_r_reg[5]_i_1_n_1\,
      CO(1) => \free_count_r_reg[5]_i_1_n_2\,
      CO(0) => \free_count_r_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[5]_i_1_n_4\,
      O(2) => \free_count_r_reg[5]_i_1_n_5\,
      O(1) => \free_count_r_reg[5]_i_1_n_6\,
      O(0) => \free_count_r_reg[5]_i_1_n_7\,
      S(3) => \free_count_r[5]_i_2_n_0\,
      S(2) => \free_count_r[5]_i_3_n_0\,
      S(1) => \free_count_r[5]_i_4_n_0\,
      S(0) => \free_count_r[5]_i_5_n_0\
    );
\free_count_r_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_4\,
      Q => free_count_r_reg(6),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_5\,
      Q => free_count_r_reg(7),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_6\,
      Q => free_count_r_reg(8),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \free_count_r_reg[9]_i_1_n_7\,
      Q => free_count_r_reg(9),
      S => wait_for_lane_up_r0
    );
\free_count_r_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_count_r_reg[13]_i_1_n_0\,
      CO(3) => \free_count_r_reg[9]_i_1_n_0\,
      CO(2) => \free_count_r_reg[9]_i_1_n_1\,
      CO(1) => \free_count_r_reg[9]_i_1_n_2\,
      CO(0) => \free_count_r_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \free_count_r_reg[9]_i_1_n_4\,
      O(2) => \free_count_r_reg[9]_i_1_n_5\,
      O(1) => \free_count_r_reg[9]_i_1_n_6\,
      O(0) => \free_count_r_reg[9]_i_1_n_7\,
      S(3) => \free_count_r[9]_i_2_n_0\,
      S(2) => \free_count_r[9]_i_3_n_0\,
      S(1) => \free_count_r[9]_i_4_n_0\,
      S(0) => \free_count_r[9]_i_5_n_0\
    );
got_first_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => got_first_v_r,
      I2 => all_lanes_v_r,
      O => got_first_v_r_i_1_n_0
    );
got_first_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => got_first_v_r_i_1_n_0,
      Q => got_first_v_r,
      R => '0'
    );
gtreset_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtreset_c,
      Q => gtrxreset_nxt,
      R => '0'
    );
gtreset_flop_0_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => \^gen_ver_i\,
      I1 => \verify_watchdog_r_reg_n_0_[15]\,
      I2 => \rxver_count_r_reg_n_0_[2]\,
      I3 => bad_v_r,
      O => gtreset_c
    );
\gtrxreset_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_extend_r(1),
      Q => gtrxreset_extend_r(0),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
\gtrxreset_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_extend_r(2),
      Q => gtrxreset_extend_r(1),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
\gtrxreset_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_extend_r(3),
      Q => gtrxreset_extend_r(2),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
\gtrxreset_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_extend_r(4),
      Q => gtrxreset_extend_r(3),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
\gtrxreset_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_extend_r(5),
      Q => gtrxreset_extend_r(4),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
\gtrxreset_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_extend_r(6),
      Q => gtrxreset_extend_r(5),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
\gtrxreset_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_extend_r(7),
      Q => gtrxreset_extend_r(6),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
\gtrxreset_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => gtrxreset_nxt,
      Q => gtrxreset_extend_r(7),
      R => \gtrxreset_extend_r_reg[0]_0\(0)
    );
ready_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => ready_r,
      Q => ready_r2,
      R => '0'
    );
\ready_r_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => ready_r,
      I1 => \rxver_count_r_reg_n_0_[2]\,
      I2 => \txver_count_r_reg_n_0_[7]\,
      I3 => \^gen_ver_i\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => next_ready_c,
      Q => ready_r,
      R => wait_for_lane_up_r0
    );
reset_lanes_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => reset_lanes_c,
      Q => SR(0),
      R => '0'
    );
reset_lanes_flop_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => gtreset_c,
      I1 => reset_channel_i,
      I2 => wait_for_lane_up_r,
      I3 => \gtrxreset_extend_r_reg[0]_0\(0),
      O => reset_lanes_c
    );
\rxver_count_r_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => \rxver_count_r_reg[1]_srl2_i_1_n_0\,
      CLK => \free_count_r_reg[13]_0\,
      D => \^gen_ver_i\,
      Q => \rxver_count_r_reg[1]_srl2_n_0\
    );
\rxver_count_r_reg[1]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => all_lanes_v_r,
      I1 => \v_count_r_reg_n_0_[15]\,
      I2 => \^gen_ver_i\,
      O => \rxver_count_r_reg[1]_srl2_i_1_n_0\
    );
\rxver_count_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => \rxver_count_r_reg[1]_srl2_i_1_n_0\,
      D => \rxver_count_r_reg[1]_srl2_n_0\,
      Q => \rxver_count_r_reg_n_0_[2]\,
      R => '0'
    );
sof_to_eof_1_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^channel_up\,
      O => p_0_in
    );
\txver_count_r_reg[6]_srl7\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '0',
      CE => txver_count_r0,
      CLK => \free_count_r_reg[13]_0\,
      D => \^gen_ver_i\,
      Q => \txver_count_r_reg[6]_srl7_n_0\
    );
\txver_count_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => txver_count_r0,
      D => \txver_count_r_reg[6]_srl7_n_0\,
      Q => \txver_count_r_reg_n_0_[7]\,
      R => '0'
    );
\v_count_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => \free_count_r_reg[13]_0\,
      D => p_2_out(15),
      Q => \v_count_r_reg[14]_srl15_n_0\
    );
\v_count_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \v_count_r_reg_n_0_[15]\,
      I1 => \^gen_ver_i\,
      I2 => got_first_v_r,
      I3 => all_lanes_v_r,
      O => p_2_out(15)
    );
\v_count_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => \v_count_r_reg[14]_srl15_n_0\,
      Q => \v_count_r_reg_n_0_[15]\,
      R => '0'
    );
verify_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEE"
    )
        port map (
      I0 => wait_for_lane_up_r,
      I1 => \^gen_ver_i\,
      I2 => \rxver_count_r_reg_n_0_[2]\,
      I3 => \txver_count_r_reg_n_0_[7]\,
      O => next_verify_c
    );
verify_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => next_verify_c,
      Q => \^gen_ver_i\,
      R => wait_for_lane_up_r0
    );
\verify_watchdog_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => \verify_watchdog_r_reg[14]_srl15_i_1_n_0\,
      CLK => \free_count_r_reg[13]_0\,
      D => \^gen_ver_i\,
      Q => \verify_watchdog_r_reg[14]_srl15_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10FF"
    )
        port map (
      I0 => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\,
      I1 => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\,
      I2 => \verify_watchdog_r_reg[14]_srl15_i_4_n_0\,
      I3 => \^gen_ver_i\,
      O => \verify_watchdog_r_reg[14]_srl15_i_1_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => free_count_r_reg(13),
      I1 => free_count_r_reg(5),
      I2 => free_count_r_reg(8),
      I3 => free_count_r_reg(12),
      O => \verify_watchdog_r_reg[14]_srl15_i_2_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => free_count_r_reg(6),
      I1 => free_count_r_reg(11),
      I2 => free_count_r_reg(0),
      I3 => free_count_r_reg(7),
      O => \verify_watchdog_r_reg[14]_srl15_i_3_n_0\
    );
\verify_watchdog_r_reg[14]_srl15_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => free_count_r_reg(2),
      I1 => free_count_r_reg(4),
      I2 => free_count_r_reg(9),
      I3 => free_count_r_reg(3),
      I4 => free_count_r_reg(10),
      I5 => free_count_r_reg(1),
      O => \verify_watchdog_r_reg[14]_srl15_i_4_n_0\
    );
\verify_watchdog_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => \verify_watchdog_r_reg[14]_srl15_i_1_n_0\,
      D => \verify_watchdog_r_reg[14]_srl15_n_0\,
      Q => \verify_watchdog_r_reg_n_0_[15]\,
      R => '0'
    );
wait_for_lane_up_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \free_count_r_reg[13]_0\,
      CE => '1',
      D => wait_for_lane_up_r0,
      Q => wait_for_lane_up_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_CLOCK_MODULE is
  port (
    init_clk_in : out STD_LOGIC;
    tx_out_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_CLOCK_MODULE : entity is "aurora_8b10b_0_CLOCK_MODULE";
end aurora_8b10b_0_aurora_8b10b_0_CLOCK_MODULE;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_CLOCK_MODULE is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of user_clk_buf_i : label is "PRIMITIVE";
begin
user_clk_buf_i: unisim.vcomponents.BUFG
     port map (
      I => tx_out_clk,
      O => init_clk_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE is
  port (
    ready_r_reg0 : out STD_LOGIC;
    hard_err_i : out STD_LOGIC;
    \SOFT_ERR_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hard_err_frm_soft_err_reg_0 : in STD_LOGIC;
    \good_cnt_r_reg[0]_0\ : in STD_LOGIC;
    hard_err_gt0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    enable_err_detect_i : in STD_LOGIC;
    \soft_err_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE : entity is "aurora_8b10b_0_ERR_DETECT_4BYTE";
end aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE is
  signal SOFT_ERR0 : STD_LOGIC;
  signal \SOFT_ERR[1]_i_1_n_0\ : STD_LOGIC;
  signal cnt_good_code_r : STD_LOGIC;
  signal cnt_good_code_r_i_3_n_0 : STD_LOGIC;
  signal cnt_good_code_r_i_4_n_0 : STD_LOGIC;
  signal cnt_soft_err_r : STD_LOGIC;
  signal err_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \err_cnt_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \err_cnt_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \err_cnt_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \err_cnt_r[2]_i_2_n_0\ : STD_LOGIC;
  signal \good_cnt_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \good_cnt_r_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hard_err_frm_soft_err : STD_LOGIC;
  signal hard_err_gt : STD_LOGIC;
  signal next_good_code_c : STD_LOGIC;
  signal next_soft_err_c : STD_LOGIC;
  signal next_start_c : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \soft_err_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \soft_err_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \soft_err_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \soft_err_r_reg_n_0_[3]\ : STD_LOGIC;
  signal start_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SOFT_ERR[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of align_r_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of cnt_good_code_r_i_3 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cnt_good_code_r_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \err_cnt_r[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \err_cnt_r[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \err_cnt_r[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \good_cnt_r[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \good_cnt_r[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \good_cnt_r[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \good_cnt_r[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of hard_err_r_i_1 : label is "soft_lutpair3";
begin
\SOFT_ERR[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \soft_err_r_reg_n_0_[0]\,
      I1 => \soft_err_r_reg_n_0_[1]\,
      O => SOFT_ERR0
    );
\SOFT_ERR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \soft_err_r_reg_n_0_[2]\,
      I1 => \soft_err_r_reg_n_0_[3]\,
      O => \SOFT_ERR[1]_i_1_n_0\
    );
\SOFT_ERR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => SOFT_ERR0,
      Q => \SOFT_ERR_reg[0]_0\(1),
      R => '0'
    );
\SOFT_ERR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \SOFT_ERR[1]_i_1_n_0\,
      Q => \SOFT_ERR_reg[0]_0\(0),
      R => '0'
    );
align_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => SR(0),
      I1 => p_0_in,
      I2 => hard_err_frm_soft_err,
      I3 => hard_err_gt,
      O => ready_r_reg0
    );
cnt_good_code_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2A00"
    )
        port map (
      I0 => cnt_good_code_r_i_3_n_0,
      I1 => cnt_good_code_r_i_4_n_0,
      I2 => \good_cnt_r_reg__0\(3),
      I3 => cnt_good_code_r,
      I4 => cnt_soft_err_r,
      O => next_good_code_c
    );
cnt_good_code_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \soft_err_r_reg_n_0_[1]\,
      I1 => \soft_err_r_reg_n_0_[0]\,
      I2 => \soft_err_r_reg_n_0_[3]\,
      I3 => \soft_err_r_reg_n_0_[2]\,
      O => cnt_good_code_r_i_3_n_0
    );
cnt_good_code_r_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \good_cnt_r_reg__0\(2),
      I1 => \good_cnt_r_reg__0\(1),
      I2 => \good_cnt_r_reg__0\(0),
      O => cnt_good_code_r_i_4_n_0
    );
cnt_good_code_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => next_good_code_c,
      Q => cnt_good_code_r,
      R => hard_err_frm_soft_err_reg_0
    );
cnt_soft_err_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => cnt_soft_err_r,
      I1 => start_r,
      I2 => cnt_good_code_r,
      I3 => cnt_good_code_r_i_3_n_0,
      O => next_soft_err_c
    );
cnt_soft_err_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => next_soft_err_c,
      Q => cnt_soft_err_r,
      R => hard_err_frm_soft_err_reg_0
    );
\err_cnt_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEBE4140"
    )
        port map (
      I0 => p_0_in,
      I1 => \err_cnt_r[2]_i_2_n_0\,
      I2 => cnt_soft_err_r,
      I3 => err_cnt_r(1),
      I4 => err_cnt_r(0),
      O => \err_cnt_r[0]_i_1_n_0\
    );
\err_cnt_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC6CC8"
    )
        port map (
      I0 => err_cnt_r(0),
      I1 => err_cnt_r(1),
      I2 => cnt_soft_err_r,
      I3 => \err_cnt_r[2]_i_2_n_0\,
      I4 => p_0_in,
      O => \err_cnt_r[1]_i_1_n_0\
    );
\err_cnt_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => err_cnt_r(0),
      I1 => err_cnt_r(1),
      I2 => cnt_soft_err_r,
      I3 => \err_cnt_r[2]_i_2_n_0\,
      I4 => p_0_in,
      O => \err_cnt_r[2]_i_1_n_0\
    );
\err_cnt_r[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
        port map (
      I0 => \good_cnt_r_reg__0\(3),
      I1 => \good_cnt_r_reg__0\(2),
      I2 => \good_cnt_r_reg__0\(1),
      I3 => \good_cnt_r_reg__0\(0),
      O => \err_cnt_r[2]_i_2_n_0\
    );
\err_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \err_cnt_r[0]_i_1_n_0\,
      Q => err_cnt_r(0),
      R => hard_err_frm_soft_err_reg_0
    );
\err_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \err_cnt_r[1]_i_1_n_0\,
      Q => err_cnt_r(1),
      R => hard_err_frm_soft_err_reg_0
    );
\err_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \err_cnt_r[2]_i_1_n_0\,
      Q => p_0_in,
      R => hard_err_frm_soft_err_reg_0
    );
\good_cnt_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \good_cnt_r_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\good_cnt_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \good_cnt_r_reg__0\(0),
      I1 => \good_cnt_r_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\good_cnt_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \good_cnt_r_reg__0\(0),
      I1 => \good_cnt_r_reg__0\(1),
      I2 => \good_cnt_r_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\good_cnt_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => start_r,
      I1 => cnt_soft_err_r,
      I2 => enable_err_detect_i,
      I3 => cnt_good_code_r,
      O => \good_cnt_r[3]_i_1_n_0\
    );
\good_cnt_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \good_cnt_r_reg__0\(3),
      I1 => \good_cnt_r_reg__0\(0),
      I2 => \good_cnt_r_reg__0\(1),
      I3 => \good_cnt_r_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\good_cnt_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \good_cnt_r_reg__0\(0),
      R => \good_cnt_r[3]_i_1_n_0\
    );
\good_cnt_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \good_cnt_r_reg__0\(1),
      R => \good_cnt_r[3]_i_1_n_0\
    );
\good_cnt_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \good_cnt_r_reg__0\(2),
      R => \good_cnt_r[3]_i_1_n_0\
    );
\good_cnt_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \good_cnt_r_reg__0\(3),
      R => \good_cnt_r[3]_i_1_n_0\
    );
hard_err_frm_soft_err_reg: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => p_0_in,
      Q => hard_err_frm_soft_err,
      R => hard_err_frm_soft_err_reg_0
    );
hard_err_gt_reg: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => hard_err_gt0,
      Q => hard_err_gt,
      R => hard_err_frm_soft_err_reg_0
    );
hard_err_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => hard_err_gt,
      I1 => hard_err_frm_soft_err,
      I2 => p_0_in,
      O => hard_err_i
    );
\soft_err_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \soft_err_r_reg[0]_0\(3),
      Q => \soft_err_r_reg_n_0_[0]\,
      R => '0'
    );
\soft_err_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \soft_err_r_reg[0]_0\(2),
      Q => \soft_err_r_reg_n_0_[1]\,
      R => '0'
    );
\soft_err_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \soft_err_r_reg[0]_0\(1),
      Q => \soft_err_r_reg_n_0_[2]\,
      R => '0'
    );
\soft_err_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => \soft_err_r_reg[0]_0\(0),
      Q => \soft_err_r_reg_n_0_[3]\,
      R => '0'
    );
start_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
        port map (
      I0 => cnt_good_code_r_i_3_n_0,
      I1 => start_r,
      I2 => cnt_good_code_r_i_4_n_0,
      I3 => \good_cnt_r_reg__0\(3),
      I4 => cnt_good_code_r,
      O => next_start_c
    );
start_r_reg: unisim.vcomponents.FDSE
     port map (
      C => \good_cnt_r_reg[0]_0\,
      CE => '1',
      D => next_start_c,
      Q => start_r,
      S => hard_err_frm_soft_err_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN is
  port (
    gen_v_flop_1_i_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_a_i : out STD_LOGIC;
    gen_k_flop_0_i_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gen_r_flop_0_i_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txver_count_r0 : out STD_LOGIC;
    \down_count_r_reg[0]_0\ : in STD_LOGIC;
    gen_ver_i : in STD_LOGIC;
    \downcounter_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN : entity is "aurora_8b10b_0_IDLE_AND_VER_GEN";
end aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN is
  signal did_ver_i : STD_LOGIC;
  signal down_count_r : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \down_count_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \down_count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \downcounter_r_reg_n_0_[2]\ : STD_LOGIC;
  signal gen_a_flop_c : STD_LOGIC;
  signal gen_k_flop_c_0 : STD_LOGIC;
  signal gen_k_flop_c_1 : STD_LOGIC;
  signal gen_k_flop_c_2 : STD_LOGIC;
  signal gen_k_flop_c_3 : STD_LOGIC;
  signal gen_r_flop_c_0 : STD_LOGIC;
  signal gen_r_flop_c_2 : STD_LOGIC;
  signal gen_r_flop_c_3 : STD_LOGIC;
  signal insert_ver_c : STD_LOGIC;
  signal \lfsr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal prev_cycle_gen_ver_r : STD_LOGIC;
  signal recycle_gen_ver_c : STD_LOGIC;
  signal ver_counter_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \down_count_r[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \down_count_r[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \downcounter_r[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \downcounter_r[2]_i_1\ : label is "soft_lutpair42";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_a_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_a_flop_0_i : label is "FD";
  attribute SOFT_HLUTNM of gen_a_flop_0_i_i_1 : label is "soft_lutpair40";
  attribute BOX_TYPE of gen_k_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_2_i : label is "FD";
  attribute BOX_TYPE of gen_k_flop_3_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_3_i : label is "FD";
  attribute SOFT_HLUTNM of gen_k_flop_3_i_i_1 : label is "soft_lutpair44";
  attribute BOX_TYPE of gen_r_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_0_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_1_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_2_i : label is "FD";
  attribute BOX_TYPE of gen_r_flop_3_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_3_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_1_i : label is "FD";
  attribute SOFT_HLUTNM of gen_v_flop_1_i_i_1 : label is "soft_lutpair43";
  attribute BOX_TYPE of gen_v_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_2_i : label is "FD";
  attribute BOX_TYPE of gen_v_flop_3_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_3_i : label is "FD";
  attribute SOFT_HLUTNM of \lfsr_reg[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \txver_count_r_reg[6]_srl7_i_1\ : label is "soft_lutpair40";
  attribute BOX_TYPE of ver_counter_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of ver_counter_i : label is "SRL16";
  attribute srl_name : string;
  attribute srl_name of ver_counter_i : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_global_logic_i/idle_and_ver_gen_i/ver_counter_i ";
  attribute SOFT_HLUTNM of ver_counter_i_i_1 : label is "soft_lutpair43";
begin
DID_VER_reg: unisim.vcomponents.FDRE
     port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => ver_counter_c,
      Q => did_ver_i,
      R => '0'
    );
\down_count_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gen_r_flop_c_0,
      I1 => p_2_in,
      O => \down_count_r[0]_i_1_n_0\
    );
\down_count_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => gen_r_flop_c_0,
      I1 => p_2_in,
      O => \down_count_r[1]_i_1_n_0\
    );
\down_count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => \down_count_r[0]_i_1_n_0\,
      Q => down_count_r(0),
      R => '0'
    );
\down_count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => \down_count_r[1]_i_1_n_0\,
      Q => down_count_r(1),
      R => '0'
    );
\down_count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_k_flop_c_0,
      Q => down_count_r(2),
      R => '0'
    );
\downcounter_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC02"
    )
        port map (
      I0 => down_count_r(0),
      I1 => \downcounter_r_reg_n_0_[1]\,
      I2 => \downcounter_r_reg_n_0_[2]\,
      I3 => \downcounter_r_reg_n_0_[0]\,
      O => \downcounter_r[0]_i_1_n_0\
    );
\downcounter_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3C2"
    )
        port map (
      I0 => down_count_r(1),
      I1 => \downcounter_r_reg_n_0_[1]\,
      I2 => \downcounter_r_reg_n_0_[2]\,
      I3 => \downcounter_r_reg_n_0_[0]\,
      O => \downcounter_r[1]_i_1_n_0\
    );
\downcounter_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
        port map (
      I0 => down_count_r(2),
      I1 => \downcounter_r_reg_n_0_[1]\,
      I2 => \downcounter_r_reg_n_0_[2]\,
      I3 => \downcounter_r_reg_n_0_[0]\,
      O => \downcounter_r[2]_i_1_n_0\
    );
\downcounter_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => \downcounter_r[0]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[0]\,
      R => \downcounter_r_reg[0]_0\(0)
    );
\downcounter_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => \downcounter_r[1]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[1]\,
      R => \downcounter_r_reg[0]_0\(0)
    );
\downcounter_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => \downcounter_r[2]_i_1_n_0\,
      Q => \downcounter_r_reg_n_0_[2]\,
      R => \downcounter_r_reg[0]_0\(0)
    );
gen_a_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_a_flop_c,
      Q => gen_a_i,
      R => '0'
    );
gen_a_flop_0_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => gen_ver_i,
      I4 => did_ver_i,
      O => gen_a_flop_c
    );
gen_k_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_k_flop_c_3,
      Q => gen_k_flop_0_i_0(3),
      R => '0'
    );
gen_k_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5D5D5D5D5D5C0"
    )
        port map (
      I0 => p_1_in,
      I1 => did_ver_i,
      I2 => gen_ver_i,
      I3 => \downcounter_r_reg_n_0_[1]\,
      I4 => \downcounter_r_reg_n_0_[2]\,
      I5 => \downcounter_r_reg_n_0_[0]\,
      O => gen_k_flop_c_3
    );
gen_k_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_k_flop_c_2,
      Q => gen_k_flop_0_i_0(2),
      R => '0'
    );
gen_k_flop_1_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gen_r_flop_c_2,
      O => gen_k_flop_c_2
    );
gen_k_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_k_flop_c_1,
      Q => gen_k_flop_0_i_0(1),
      R => '0'
    );
gen_k_flop_2_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_2_in,
      O => gen_k_flop_c_1
    );
gen_k_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_k_flop_c_0,
      Q => gen_k_flop_0_i_0(0),
      R => '0'
    );
gen_k_flop_3_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gen_r_flop_c_0,
      O => gen_k_flop_c_0
    );
gen_r_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_r_flop_c_3,
      Q => gen_r_flop_0_i_0(3),
      R => '0'
    );
gen_r_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE00FE00FE00"
    )
        port map (
      I0 => \downcounter_r_reg_n_0_[0]\,
      I1 => \downcounter_r_reg_n_0_[2]\,
      I2 => \downcounter_r_reg_n_0_[1]\,
      I3 => p_1_in,
      I4 => did_ver_i,
      I5 => gen_ver_i,
      O => gen_r_flop_c_3
    );
gen_r_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_r_flop_c_2,
      Q => gen_r_flop_0_i_0(2),
      R => '0'
    );
gen_r_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => p_2_in,
      Q => gen_r_flop_0_i_0(1),
      R => '0'
    );
gen_r_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_r_flop_c_0,
      Q => gen_r_flop_0_i_0(0),
      R => '0'
    );
gen_v_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => recycle_gen_ver_c,
      Q => gen_v_flop_1_i_0(2),
      R => '0'
    );
gen_v_flop_1_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => recycle_gen_ver_c
    );
gen_v_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => recycle_gen_ver_c,
      Q => gen_v_flop_1_i_0(1),
      R => '0'
    );
gen_v_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => recycle_gen_ver_c,
      Q => gen_v_flop_1_i_0(0),
      R => '0'
    );
\lfsr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55A9"
    )
        port map (
      I0 => p_1_in,
      I1 => p_2_in,
      I2 => gen_r_flop_c_2,
      I3 => gen_r_flop_c_0,
      O => \lfsr_reg[3]_i_1_n_0\
    );
\lfsr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_r_flop_c_2,
      Q => p_1_in,
      R => '0'
    );
\lfsr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => p_2_in,
      Q => gen_r_flop_c_2,
      R => '0'
    );
\lfsr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_r_flop_c_0,
      Q => p_2_in,
      R => '0'
    );
\lfsr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => \lfsr_reg[3]_i_1_n_0\,
      Q => gen_r_flop_c_0,
      R => '0'
    );
prev_cycle_gen_ver_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \down_count_r_reg[0]_0\,
      CE => '1',
      D => gen_ver_i,
      Q => prev_cycle_gen_ver_r,
      R => '0'
    );
\txver_count_r_reg[6]_srl7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => txver_count_r0
    );
ver_counter_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => \down_count_r_reg[0]_0\,
      D => insert_ver_c,
      Q => ver_counter_c
    );
ver_counter_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => gen_ver_i,
      I1 => did_ver_i,
      I2 => prev_cycle_gen_ver_r,
      O => insert_ver_c
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE is
  port (
    ready_r : out STD_LOGIC;
    gen_spa_i : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    align_r_reg_0 : out STD_LOGIC;
    consecutive_commas_r : out STD_LOGIC;
    begin_r : out STD_LOGIC;
    enable_err_detect_i : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    GEN_SP : out STD_LOGIC;
    ENABLE_ERR_DETECT_reg_0 : out STD_LOGIC;
    ready_r_reg_0 : out STD_LOGIC;
    counter4_r0 : in STD_LOGIC;
    \counter1_r_reg[0]_0\ : in STD_LOGIC;
    counter3_r0 : in STD_LOGIC;
    gen_spa_r : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ready_r_reg0 : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    RX_NEG : in STD_LOGIC;
    reset_count_r_reg_0 : in STD_LOGIC;
    reset_count_r_reg_1 : in STD_LOGIC;
    RXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_v_received_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE : entity is "aurora_8b10b_0_LANE_INIT_SM_4BYTE";
end aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE is
  signal ENABLE_ERR_DETECT0 : STD_LOGIC;
  signal \RX_CHAR_IS_COMMA_R_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_CHAR_IS_COMMA_R_reg_n_0_[3]\ : STD_LOGIC;
  signal \^align_r_reg_0\ : STD_LOGIC;
  signal \^begin_r\ : STD_LOGIC;
  signal begin_r_i_2_n_0 : STD_LOGIC;
  signal consecutive_commas_r0 : STD_LOGIC;
  signal count_128d_done_r : STD_LOGIC;
  signal count_32d_done_r : STD_LOGIC;
  signal count_8d_done_r : STD_LOGIC;
  signal counter1_r0 : STD_LOGIC;
  signal \counter1_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter1_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter1_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter2_r_reg[14]_srl14_n_0\ : STD_LOGIC;
  signal \counter2_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter3_r_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \counter3_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter4_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \counter4_r_reg_n_0_[15]\ : STD_LOGIC;
  signal counter5_r0 : STD_LOGIC;
  signal \counter5_r_reg[14]_srl15_n_0\ : STD_LOGIC;
  signal \counter5_r_reg_n_0_[15]\ : STD_LOGIC;
  signal do_watchdog_count_r : STD_LOGIC;
  signal do_watchdog_count_r0 : STD_LOGIC;
  signal \^enable_err_detect_i\ : STD_LOGIC;
  signal \^gen_spa_i\ : STD_LOGIC;
  signal next_ack_c : STD_LOGIC;
  signal next_align_c : STD_LOGIC;
  signal next_begin_c : STD_LOGIC;
  signal next_polarity_c : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_realign_c : STD_LOGIC;
  signal next_rst_c : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in2_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal polarity_r : STD_LOGIC;
  signal prev_count_128d_done_r : STD_LOGIC;
  signal \^ready_r\ : STD_LOGIC;
  signal realign_r : STD_LOGIC;
  signal reset_count_r : STD_LOGIC;
  signal reset_count_r0 : STD_LOGIC;
  signal \^rx_polarity_i\ : STD_LOGIC;
  signal rx_polarity_r_i_1_n_0 : STD_LOGIC;
  signal tx_reset_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ENABLE_ERR_DETECT_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of align_r_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of begin_r_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter1_r[0]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \counter1_r[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter1_r[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter1_r[5]_i_1\ : label is "soft_lutpair10";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \counter2_r_reg[14]_srl14\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \counter2_r_reg[14]_srl14\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg[14]_srl14 ";
  attribute srl_bus_name of \counter3_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg ";
  attribute srl_name of \counter3_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg[2]_srl3 ";
  attribute srl_bus_name of \counter4_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg ";
  attribute srl_name of \counter4_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg[14]_srl15 ";
  attribute srl_bus_name of \counter5_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg ";
  attribute srl_name of \counter5_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg[14]_srl15 ";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of lane_up_flop_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lane_up_flop_i : label is "FDR";
  attribute SOFT_HLUTNM of polarity_r_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of realign_r_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of rst_r_i_1 : label is "soft_lutpair9";
begin
  align_r_reg_0 <= \^align_r_reg_0\;
  begin_r <= \^begin_r\;
  enable_err_detect_i <= \^enable_err_detect_i\;
  gen_spa_i <= \^gen_spa_i\;
  ready_r <= \^ready_r\;
  rx_polarity_i <= \^rx_polarity_i\;
ENABLE_ERR_DETECT_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^gen_spa_i\,
      I1 => \^ready_r\,
      O => ENABLE_ERR_DETECT0
    );
ENABLE_ERR_DETECT_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => ENABLE_ERR_DETECT0,
      Q => \^enable_err_detect_i\,
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => D(0),
      Q => \RX_CHAR_IS_COMMA_R_reg_n_0_[0]\,
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => D(1),
      Q => p_1_in,
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => D(2),
      Q => p_0_in2_in,
      R => '0'
    );
\RX_CHAR_IS_COMMA_R_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => D(3),
      Q => \RX_CHAR_IS_COMMA_R_reg_n_0_[3]\,
      R => '0'
    );
ack_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444FFFF04440444"
    )
        port map (
      I0 => \counter5_r_reg_n_0_[15]\,
      I1 => \^gen_spa_i\,
      I2 => \counter2_r_reg_n_0_[15]\,
      I3 => \counter3_r_reg_n_0_[3]\,
      I4 => RX_NEG,
      I5 => polarity_r,
      O => next_ack_c
    );
ack_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => next_ack_c,
      Q => \^gen_spa_i\,
      R => ready_r_reg0
    );
align_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
        port map (
      I0 => \^align_r_reg_0\,
      I1 => count_128d_done_r,
      I2 => tx_reset_i,
      I3 => count_8d_done_r,
      O => next_align_c
    );
align_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => next_align_c,
      Q => \^align_r_reg_0\,
      R => ready_r_reg0
    );
begin_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => rx_realign_i,
      I1 => realign_r,
      I2 => polarity_r,
      I3 => RX_NEG,
      I4 => begin_r_i_2_n_0,
      O => next_begin_c
    );
begin_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^gen_spa_i\,
      I1 => \counter5_r_reg_n_0_[15]\,
      I2 => \counter4_r_reg_n_0_[15]\,
      I3 => \^ready_r\,
      O => begin_r_i_2_n_0
    );
begin_r_reg: unisim.vcomponents.FDSE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => next_begin_c,
      Q => \^begin_r\,
      S => ready_r_reg0
    );
cnt_good_code_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^enable_err_detect_i\,
      O => ENABLE_ERR_DETECT_reg_0
    );
consecutive_commas_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \^align_r_reg_0\,
      I1 => p_0_in2_in,
      I2 => \RX_CHAR_IS_COMMA_R_reg_n_0_[0]\,
      I3 => \RX_CHAR_IS_COMMA_R_reg_n_0_[3]\,
      I4 => p_1_in,
      O => consecutive_commas_r0
    );
consecutive_commas_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => consecutive_commas_r0,
      Q => consecutive_commas_r,
      R => '0'
    );
\counter1_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ready_r\,
      I1 => reset_count_r,
      O => counter1_r0
    );
\counter1_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_128d_done_r,
      I1 => count_32d_done_r,
      I2 => count_8d_done_r,
      I3 => \counter1_r[0]_i_3_n_0\,
      I4 => \counter1_r_reg_n_0_[3]\,
      I5 => \counter1_r_reg_n_0_[1]\,
      O => p_0_in(7)
    );
\counter1_r[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[5]\,
      I1 => \counter1_r_reg_n_0_[6]\,
      I2 => \counter1_r_reg_n_0_[7]\,
      O => \counter1_r[0]_i_3_n_0\
    );
\counter1_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[1]\,
      I1 => \counter1_r_reg_n_0_[3]\,
      I2 => \counter1_r[0]_i_3_n_0\,
      I3 => count_8d_done_r,
      I4 => count_32d_done_r,
      O => p_0_in(6)
    );
\counter1_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_32d_done_r,
      I1 => count_8d_done_r,
      I2 => \counter1_r_reg_n_0_[7]\,
      I3 => \counter1_r_reg_n_0_[6]\,
      I4 => \counter1_r_reg_n_0_[5]\,
      I5 => \counter1_r_reg_n_0_[3]\,
      O => \counter1_r[2]_i_1_n_0\
    );
\counter1_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[3]\,
      I1 => \counter1_r_reg_n_0_[5]\,
      I2 => \counter1_r_reg_n_0_[6]\,
      I3 => \counter1_r_reg_n_0_[7]\,
      I4 => count_8d_done_r,
      O => p_0_in(4)
    );
\counter1_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => count_8d_done_r,
      I1 => \counter1_r_reg_n_0_[7]\,
      I2 => \counter1_r_reg_n_0_[6]\,
      I3 => \counter1_r_reg_n_0_[5]\,
      O => p_0_in(3)
    );
\counter1_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      I1 => \counter1_r_reg_n_0_[6]\,
      I2 => \counter1_r_reg_n_0_[5]\,
      O => p_0_in(2)
    );
\counter1_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      I1 => \counter1_r_reg_n_0_[6]\,
      O => p_0_in(1)
    );
\counter1_r[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter1_r_reg_n_0_[7]\,
      O => p_0_in(0)
    );
\counter1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => p_0_in(7),
      Q => count_128d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => p_0_in(6),
      Q => \counter1_r_reg_n_0_[1]\,
      R => counter1_r0
    );
\counter1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => \counter1_r[2]_i_1_n_0\,
      Q => count_32d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => p_0_in(4),
      Q => \counter1_r_reg_n_0_[3]\,
      R => counter1_r0
    );
\counter1_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => p_0_in(3),
      Q => count_8d_done_r,
      R => counter1_r0
    );
\counter1_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => p_0_in(2),
      Q => \counter1_r_reg_n_0_[5]\,
      R => counter1_r0
    );
\counter1_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => p_0_in(1),
      Q => \counter1_r_reg_n_0_[6]\,
      R => counter1_r0
    );
\counter1_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => consecutive_commas_r0,
      D => p_0_in(0),
      Q => \counter1_r_reg_n_0_[7]\,
      S => counter1_r0
    );
\counter2_r_reg[14]_srl14\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => \counter1_r_reg[0]_0\,
      D => gen_spa_r,
      Q => \counter2_r_reg[14]_srl14_n_0\
    );
\counter2_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => \counter2_r_reg[14]_srl14_n_0\,
      Q => \counter2_r_reg_n_0_[15]\,
      R => '0'
    );
\counter3_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => counter3_r0,
      CLK => \counter1_r_reg[0]_0\,
      D => \^gen_spa_i\,
      Q => \counter3_r_reg[2]_srl3_n_0\
    );
\counter3_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => counter3_r0,
      D => \counter3_r_reg[2]_srl3_n_0\,
      Q => \counter3_r_reg_n_0_[3]\,
      R => '0'
    );
\counter4_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => counter4_r0,
      CLK => \counter1_r_reg[0]_0\,
      D => \^ready_r\,
      Q => \counter4_r_reg[14]_srl15_n_0\
    );
\counter4_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => counter4_r0,
      D => \counter4_r_reg[14]_srl15_n_0\,
      Q => \counter4_r_reg_n_0_[15]\,
      R => '0'
    );
\counter5_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '1',
      A3 => '1',
      CE => counter5_r0,
      CLK => \counter1_r_reg[0]_0\,
      D => \^gen_spa_i\,
      Q => \counter5_r_reg[14]_srl15_n_0\
    );
\counter5_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => do_watchdog_count_r,
      I1 => \^gen_spa_i\,
      O => counter5_r0
    );
\counter5_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => counter5_r0,
      D => \counter5_r_reg[14]_srl15_n_0\,
      Q => \counter5_r_reg_n_0_[15]\,
      R => '0'
    );
do_watchdog_count_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_128d_done_r,
      I1 => prev_count_128d_done_r,
      O => do_watchdog_count_r0
    );
do_watchdog_count_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => do_watchdog_count_r0,
      Q => do_watchdog_count_r,
      R => '0'
    );
gen_sp_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ready_r\,
      I1 => \^gen_spa_i\,
      O => GEN_SP
    );
lane_up_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => \^ready_r\,
      Q => lane_up,
      R => SR(0)
    );
\left_align_select_r[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF888F"
    )
        port map (
      I0 => RXCHARISK(1),
      I1 => RXCHARISK(0),
      I2 => \^ready_r\,
      I3 => \^align_r_reg_0\,
      I4 => first_v_received_r,
      O => ready_r_reg_0
    );
polarity_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => count_32d_done_r,
      I1 => realign_r,
      I2 => rx_realign_i,
      O => next_polarity_c
    );
polarity_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => next_polarity_c,
      Q => polarity_r,
      R => ready_r_reg0
    );
prev_count_128d_done_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => count_128d_done_r,
      Q => prev_count_128d_done_r,
      R => '0'
    );
ready_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F44444444444444"
    )
        port map (
      I0 => \counter4_r_reg_n_0_[15]\,
      I1 => \^ready_r\,
      I2 => \counter5_r_reg_n_0_[15]\,
      I3 => \^gen_spa_i\,
      I4 => \counter2_r_reg_n_0_[15]\,
      I5 => \counter3_r_reg_n_0_[3]\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => next_ready_c,
      Q => \^ready_r\,
      R => ready_r_reg0
    );
realign_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040404"
    )
        port map (
      I0 => rx_realign_i,
      I1 => realign_r,
      I2 => count_32d_done_r,
      I3 => \^align_r_reg_0\,
      I4 => count_128d_done_r,
      O => next_realign_c
    );
realign_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => next_realign_c,
      Q => realign_r,
      R => ready_r_reg0
    );
reset_count_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0FBB00BB"
    )
        port map (
      I0 => reset_count_r_reg_0,
      I1 => reset_count_r_reg_1,
      I2 => \^begin_r\,
      I3 => tx_reset_i,
      I4 => count_8d_done_r,
      I5 => SR(0),
      O => reset_count_r0
    );
reset_count_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => reset_count_r0,
      Q => reset_count_r,
      R => '0'
    );
rst_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^begin_r\,
      I1 => count_8d_done_r,
      I2 => tx_reset_i,
      O => next_rst_c
    );
rst_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => next_rst_c,
      Q => tx_reset_i,
      R => ready_r_reg0
    );
rx_polarity_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => RX_NEG,
      I1 => polarity_r,
      I2 => \^rx_polarity_i\,
      O => rx_polarity_r_i_1_n_0
    );
rx_polarity_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \counter1_r_reg[0]_0\,
      CE => '1',
      D => rx_polarity_r_i_1_n_0,
      Q => \^rx_polarity_i\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL is
  port (
    MUX_SELECT : out STD_LOGIC_VECTOR ( 0 to 0 );
    mux_select_c : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MUX_SELECT_reg[2]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL : entity is "aurora_8b10b_0_LEFT_ALIGN_CONTROL";
end aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL is
begin
\MUX_SELECT_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \MUX_SELECT_reg[2]_0\,
      CE => '1',
      D => mux_select_c(0),
      Q => MUX_SELECT(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX is
  port (
    \MUXED_DATA_reg[0]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stage_2_data_r : in STD_LOGIC_VECTOR ( 0 to 31 );
    MUX_SELECT : in STD_LOGIC_VECTOR ( 0 to 0 );
    \MUXED_DATA_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX : entity is "aurora_8b10b_0_LEFT_ALIGN_MUX";
end aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX is
  signal muxed_data_c : STD_LOGIC_VECTOR ( 0 to 15 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MUXED_DATA[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \MUXED_DATA[10]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \MUXED_DATA[11]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \MUXED_DATA[12]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \MUXED_DATA[13]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \MUXED_DATA[14]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \MUXED_DATA[15]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \MUXED_DATA[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \MUXED_DATA[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \MUXED_DATA[3]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \MUXED_DATA[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \MUXED_DATA[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \MUXED_DATA[6]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \MUXED_DATA[7]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \MUXED_DATA[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \MUXED_DATA[9]_i_1\ : label is "soft_lutpair61";
begin
\MUXED_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(16),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(0),
      O => muxed_data_c(0)
    );
\MUXED_DATA[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(26),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(10),
      O => muxed_data_c(10)
    );
\MUXED_DATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(27),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(11),
      O => muxed_data_c(11)
    );
\MUXED_DATA[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(28),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(12),
      O => muxed_data_c(12)
    );
\MUXED_DATA[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(29),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(13),
      O => muxed_data_c(13)
    );
\MUXED_DATA[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(30),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(14),
      O => muxed_data_c(14)
    );
\MUXED_DATA[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(31),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(15),
      O => muxed_data_c(15)
    );
\MUXED_DATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(17),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(1),
      O => muxed_data_c(1)
    );
\MUXED_DATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(18),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(2),
      O => muxed_data_c(2)
    );
\MUXED_DATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(19),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(3),
      O => muxed_data_c(3)
    );
\MUXED_DATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(20),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(4),
      O => muxed_data_c(4)
    );
\MUXED_DATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(21),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(5),
      O => muxed_data_c(5)
    );
\MUXED_DATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(22),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(6),
      O => muxed_data_c(6)
    );
\MUXED_DATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(23),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(7),
      O => muxed_data_c(7)
    );
\MUXED_DATA[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(24),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(8),
      O => muxed_data_c(8)
    );
\MUXED_DATA[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => stage_2_data_r(25),
      I1 => MUX_SELECT(0),
      I2 => stage_2_data_r(9),
      O => muxed_data_c(9)
    );
\MUXED_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(0),
      Q => \MUXED_DATA_reg[0]_0\(31),
      R => '0'
    );
\MUXED_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(10),
      Q => \MUXED_DATA_reg[0]_0\(21),
      R => '0'
    );
\MUXED_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(11),
      Q => \MUXED_DATA_reg[0]_0\(20),
      R => '0'
    );
\MUXED_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(12),
      Q => \MUXED_DATA_reg[0]_0\(19),
      R => '0'
    );
\MUXED_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(13),
      Q => \MUXED_DATA_reg[0]_0\(18),
      R => '0'
    );
\MUXED_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(14),
      Q => \MUXED_DATA_reg[0]_0\(17),
      R => '0'
    );
\MUXED_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(15),
      Q => \MUXED_DATA_reg[0]_0\(16),
      R => '0'
    );
\MUXED_DATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(16),
      Q => \MUXED_DATA_reg[0]_0\(15),
      R => '0'
    );
\MUXED_DATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(17),
      Q => \MUXED_DATA_reg[0]_0\(14),
      R => '0'
    );
\MUXED_DATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(18),
      Q => \MUXED_DATA_reg[0]_0\(13),
      R => '0'
    );
\MUXED_DATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(19),
      Q => \MUXED_DATA_reg[0]_0\(12),
      R => '0'
    );
\MUXED_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(1),
      Q => \MUXED_DATA_reg[0]_0\(30),
      R => '0'
    );
\MUXED_DATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(20),
      Q => \MUXED_DATA_reg[0]_0\(11),
      R => '0'
    );
\MUXED_DATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(21),
      Q => \MUXED_DATA_reg[0]_0\(10),
      R => '0'
    );
\MUXED_DATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(22),
      Q => \MUXED_DATA_reg[0]_0\(9),
      R => '0'
    );
\MUXED_DATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(23),
      Q => \MUXED_DATA_reg[0]_0\(8),
      R => '0'
    );
\MUXED_DATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(24),
      Q => \MUXED_DATA_reg[0]_0\(7),
      R => '0'
    );
\MUXED_DATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(25),
      Q => \MUXED_DATA_reg[0]_0\(6),
      R => '0'
    );
\MUXED_DATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(26),
      Q => \MUXED_DATA_reg[0]_0\(5),
      R => '0'
    );
\MUXED_DATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(27),
      Q => \MUXED_DATA_reg[0]_0\(4),
      R => '0'
    );
\MUXED_DATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(28),
      Q => \MUXED_DATA_reg[0]_0\(3),
      R => '0'
    );
\MUXED_DATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(29),
      Q => \MUXED_DATA_reg[0]_0\(2),
      R => '0'
    );
\MUXED_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(2),
      Q => \MUXED_DATA_reg[0]_0\(29),
      R => '0'
    );
\MUXED_DATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(30),
      Q => \MUXED_DATA_reg[0]_0\(1),
      R => '0'
    );
\MUXED_DATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => stage_2_data_r(31),
      Q => \MUXED_DATA_reg[0]_0\(0),
      R => '0'
    );
\MUXED_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(3),
      Q => \MUXED_DATA_reg[0]_0\(28),
      R => '0'
    );
\MUXED_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(4),
      Q => \MUXED_DATA_reg[0]_0\(27),
      R => '0'
    );
\MUXED_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(5),
      Q => \MUXED_DATA_reg[0]_0\(26),
      R => '0'
    );
\MUXED_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(6),
      Q => \MUXED_DATA_reg[0]_0\(25),
      R => '0'
    );
\MUXED_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(7),
      Q => \MUXED_DATA_reg[0]_0\(24),
      R => '0'
    );
\MUXED_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(8),
      Q => \MUXED_DATA_reg[0]_0\(23),
      R => '0'
    );
\MUXED_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \MUXED_DATA_reg[0]_1\,
      CE => '1',
      D => muxed_data_c(9),
      Q => \MUXED_DATA_reg[0]_0\(22),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI is
  port (
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_eof : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI : entity is "aurora_8b10b_0_LL_TO_AXI";
end aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_rx_tkeep[1]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_axi_rx_tkeep[3]_INST_0\ : label is "soft_lutpair113";
begin
\m_axi_rx_tkeep[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rx_eof,
      I1 => Q(0),
      I2 => Q(1),
      O => m_axi_rx_tkeep(2)
    );
\m_axi_rx_tkeep[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_eof,
      I1 => Q(1),
      O => m_axi_rx_tkeep(1)
    );
\m_axi_rx_tkeep[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => rx_eof,
      I1 => Q(1),
      I2 => Q(0),
      O => m_axi_rx_tkeep(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX is
  port (
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \OUTPUT_DATA_reg[0]_0\ : in STD_LOGIC;
    \OUTPUT_DATA_reg[16]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    OUTPUT_SELECT : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX : entity is "aurora_8b10b_0_OUTPUT_MUX";
end aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX is
  signal output_data_c : STD_LOGIC_VECTOR ( 16 to 31 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \OUTPUT_DATA[16]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[17]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[18]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[19]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[20]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[21]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[22]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[23]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[24]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[25]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[26]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[27]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[28]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[29]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[30]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[31]_i_1\ : label is "soft_lutpair45";
begin
\OUTPUT_DATA[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(15),
      I1 => OUTPUT_SELECT,
      I2 => Q(15),
      O => output_data_c(16)
    );
\OUTPUT_DATA[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(14),
      I1 => OUTPUT_SELECT,
      I2 => Q(14),
      O => output_data_c(17)
    );
\OUTPUT_DATA[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(13),
      I1 => OUTPUT_SELECT,
      I2 => Q(13),
      O => output_data_c(18)
    );
\OUTPUT_DATA[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(12),
      I1 => OUTPUT_SELECT,
      I2 => Q(12),
      O => output_data_c(19)
    );
\OUTPUT_DATA[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(11),
      I1 => OUTPUT_SELECT,
      I2 => Q(11),
      O => output_data_c(20)
    );
\OUTPUT_DATA[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(10),
      I1 => OUTPUT_SELECT,
      I2 => Q(10),
      O => output_data_c(21)
    );
\OUTPUT_DATA[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(9),
      I1 => OUTPUT_SELECT,
      I2 => Q(9),
      O => output_data_c(22)
    );
\OUTPUT_DATA[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(8),
      I1 => OUTPUT_SELECT,
      I2 => Q(8),
      O => output_data_c(23)
    );
\OUTPUT_DATA[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(7),
      I1 => OUTPUT_SELECT,
      I2 => Q(7),
      O => output_data_c(24)
    );
\OUTPUT_DATA[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(6),
      I1 => OUTPUT_SELECT,
      I2 => Q(6),
      O => output_data_c(25)
    );
\OUTPUT_DATA[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(5),
      I1 => OUTPUT_SELECT,
      I2 => Q(5),
      O => output_data_c(26)
    );
\OUTPUT_DATA[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(4),
      I1 => OUTPUT_SELECT,
      I2 => Q(4),
      O => output_data_c(27)
    );
\OUTPUT_DATA[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(3),
      I1 => OUTPUT_SELECT,
      I2 => Q(3),
      O => output_data_c(28)
    );
\OUTPUT_DATA[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(2),
      I1 => OUTPUT_SELECT,
      I2 => Q(2),
      O => output_data_c(29)
    );
\OUTPUT_DATA[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(1),
      I1 => OUTPUT_SELECT,
      I2 => Q(1),
      O => output_data_c(30)
    );
\OUTPUT_DATA[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \OUTPUT_DATA_reg[16]_0\(0),
      I1 => OUTPUT_SELECT,
      I2 => Q(0),
      O => output_data_c(31)
    );
\OUTPUT_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(31),
      Q => m_axi_rx_tdata(0),
      R => '0'
    );
\OUTPUT_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(21),
      Q => m_axi_rx_tdata(10),
      R => '0'
    );
\OUTPUT_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(20),
      Q => m_axi_rx_tdata(11),
      R => '0'
    );
\OUTPUT_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(19),
      Q => m_axi_rx_tdata(12),
      R => '0'
    );
\OUTPUT_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(18),
      Q => m_axi_rx_tdata(13),
      R => '0'
    );
\OUTPUT_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(17),
      Q => m_axi_rx_tdata(14),
      R => '0'
    );
\OUTPUT_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(16),
      Q => m_axi_rx_tdata(15),
      R => '0'
    );
\OUTPUT_DATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(16),
      Q => m_axi_rx_tdata(16),
      R => '0'
    );
\OUTPUT_DATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(17),
      Q => m_axi_rx_tdata(17),
      R => '0'
    );
\OUTPUT_DATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(18),
      Q => m_axi_rx_tdata(18),
      R => '0'
    );
\OUTPUT_DATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(19),
      Q => m_axi_rx_tdata(19),
      R => '0'
    );
\OUTPUT_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(30),
      Q => m_axi_rx_tdata(1),
      R => '0'
    );
\OUTPUT_DATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(20),
      Q => m_axi_rx_tdata(20),
      R => '0'
    );
\OUTPUT_DATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(21),
      Q => m_axi_rx_tdata(21),
      R => '0'
    );
\OUTPUT_DATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(22),
      Q => m_axi_rx_tdata(22),
      R => '0'
    );
\OUTPUT_DATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(23),
      Q => m_axi_rx_tdata(23),
      R => '0'
    );
\OUTPUT_DATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(24),
      Q => m_axi_rx_tdata(24),
      R => '0'
    );
\OUTPUT_DATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(25),
      Q => m_axi_rx_tdata(25),
      R => '0'
    );
\OUTPUT_DATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(26),
      Q => m_axi_rx_tdata(26),
      R => '0'
    );
\OUTPUT_DATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(27),
      Q => m_axi_rx_tdata(27),
      R => '0'
    );
\OUTPUT_DATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(28),
      Q => m_axi_rx_tdata(28),
      R => '0'
    );
\OUTPUT_DATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(29),
      Q => m_axi_rx_tdata(29),
      R => '0'
    );
\OUTPUT_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(29),
      Q => m_axi_rx_tdata(2),
      R => '0'
    );
\OUTPUT_DATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(30),
      Q => m_axi_rx_tdata(30),
      R => '0'
    );
\OUTPUT_DATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => output_data_c(31),
      Q => m_axi_rx_tdata(31),
      R => '0'
    );
\OUTPUT_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(28),
      Q => m_axi_rx_tdata(3),
      R => '0'
    );
\OUTPUT_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(27),
      Q => m_axi_rx_tdata(4),
      R => '0'
    );
\OUTPUT_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(26),
      Q => m_axi_rx_tdata(5),
      R => '0'
    );
\OUTPUT_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(25),
      Q => m_axi_rx_tdata(6),
      R => '0'
    );
\OUTPUT_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(24),
      Q => m_axi_rx_tdata(7),
      R => '0'
    );
\OUTPUT_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(23),
      Q => m_axi_rx_tdata(8),
      R => '0'
    );
\OUTPUT_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_DATA_reg[0]_0\,
      CE => '1',
      D => Q(22),
      Q => m_axi_rx_tdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL is
  port (
    OUTPUT_SELECT : out STD_LOGIC;
    output_select_c : in STD_LOGIC_VECTOR ( 0 to 0 );
    \OUTPUT_SELECT_reg[9]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL : entity is "aurora_8b10b_0_OUTPUT_SWITCH_CONTROL";
end aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL is
begin
\OUTPUT_SELECT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \OUTPUT_SELECT_reg[9]_0\,
      CE => '1',
      D => output_select_c(0),
      Q => OUTPUT_SELECT,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER is
  port (
    \stage_1_ecp_r_reg[0]\ : out STD_LOGIC;
    mux_select_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    \AFTER_SCP_reg[1]_0\ : out STD_LOGIC;
    \AFTER_SCP_reg[1]_1\ : out STD_LOGIC;
    \AFTER_SCP_reg[1]_2\ : out STD_LOGIC;
    \DEFRAMED_DATA_V_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \IN_FRAME_reg[1]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_frame_r_reg_0 : in STD_LOGIC;
    after_scp_select_c_1 : in STD_LOGIC;
    after_scp_select_c_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \IN_FRAME_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_2_frame_err_r_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \DEFRAMED_DATA_V_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER : entity is "aurora_8b10b_0_RX_LL_DEFRAMER";
end aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER is
  signal \DEFRAMED_DATA_V[0]_i_1_n_0\ : STD_LOGIC;
  signal \DEFRAMED_DATA_V[1]_i_1_n_0\ : STD_LOGIC;
  signal after_scp_c_1 : STD_LOGIC;
  signal data_after_start_muxcy_1_n_0 : STD_LOGIC;
  signal in_frame_c_0 : STD_LOGIC;
  signal in_frame_c_1 : STD_LOGIC;
  signal in_frame_r : STD_LOGIC;
  signal stage_1_after_scp_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_1_data_v_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_1_in_frame_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \MUX_SELECT[2]_i_1\ : label is "soft_lutpair54";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of data_after_start_muxcy_0_CARRY4 : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of data_after_start_muxcy_0_CARRY4 : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_after_start_muxcy_0_CARRY4 : label is "(MUXCY,XORCY)";
  attribute BOX_TYPE of in_frame_muxcy_0_CARRY4 : label is "PRIMITIVE";
  attribute OPT_MODIFIED of in_frame_muxcy_0_CARRY4 : label is "MLO ";
  attribute XILINX_LEGACY_PRIM of in_frame_muxcy_0_CARRY4 : label is "(MUXCY,XORCY)";
  attribute SOFT_HLUTNM of stage_2_end_after_start_r_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of stage_2_end_before_start_r_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of stage_2_start_with_data_r_i_1 : label is "soft_lutpair54";
begin
\AFTER_SCP_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \IN_FRAME_reg[0]_0\,
      CE => '1',
      D => after_scp_c_1,
      Q => stage_1_after_scp_r(0),
      R => SR(0)
    );
\AFTER_SCP_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \IN_FRAME_reg[0]_0\,
      CE => '1',
      D => data_after_start_muxcy_1_n_0,
      Q => stage_1_after_scp_r(1),
      R => SR(0)
    );
\COUNT[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => stage_1_data_v_r(1),
      I1 => stage_1_data_v_r(0),
      O => \DEFRAMED_DATA_V_reg[1]_0\(1)
    );
\COUNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => stage_1_data_v_r(0),
      I1 => stage_1_data_v_r(1),
      O => \DEFRAMED_DATA_V_reg[1]_0\(0)
    );
\DEFRAMED_DATA_V[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_frame_c_1,
      I1 => \DEFRAMED_DATA_V_reg[0]_0\(1),
      O => \DEFRAMED_DATA_V[0]_i_1_n_0\
    );
\DEFRAMED_DATA_V[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in_frame_c_0,
      I1 => \DEFRAMED_DATA_V_reg[0]_0\(0),
      O => \DEFRAMED_DATA_V[1]_i_1_n_0\
    );
\DEFRAMED_DATA_V_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \IN_FRAME_reg[0]_0\,
      CE => '1',
      D => \DEFRAMED_DATA_V[0]_i_1_n_0\,
      Q => stage_1_data_v_r(0),
      R => SR(0)
    );
\DEFRAMED_DATA_V_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \IN_FRAME_reg[0]_0\,
      CE => '1',
      D => \DEFRAMED_DATA_V[1]_i_1_n_0\,
      Q => stage_1_data_v_r(1),
      R => SR(0)
    );
\IN_FRAME_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \IN_FRAME_reg[0]_0\,
      CE => '1',
      D => in_frame_r,
      Q => stage_1_in_frame_r(0),
      R => SR(0)
    );
\IN_FRAME_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \IN_FRAME_reg[0]_0\,
      CE => '1',
      D => in_frame_c_1,
      Q => stage_1_in_frame_r(1),
      R => SR(0)
    );
\MUX_SELECT[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stage_1_data_v_r(1),
      I1 => stage_1_data_v_r(0),
      O => mux_select_c(0)
    );
data_after_start_muxcy_0_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED(3 downto 2),
      CO(1) => data_after_start_muxcy_1_n_0,
      CO(0) => after_scp_c_1,
      CYINIT => '0',
      DI(3 downto 2) => NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED(3 downto 2),
      DI(1 downto 0) => B"11",
      O(3 downto 0) => NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => after_scp_select_c_0,
      S(0) => after_scp_select_c_1
    );
in_frame_muxcy_0_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED(3 downto 2),
      CO(1) => in_frame_c_0,
      CO(0) => in_frame_c_1,
      CYINIT => in_frame_r,
      DI(3 downto 2) => NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED(3 downto 2),
      DI(1) => D(0),
      DI(0) => D(1),
      O(3 downto 0) => NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => in_frame_r_reg_0,
      S(0) => \IN_FRAME_reg[1]_0\
    );
in_frame_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \IN_FRAME_reg[0]_0\,
      CE => '1',
      D => in_frame_c_0,
      Q => in_frame_r,
      R => SR(0)
    );
stage_2_end_after_start_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => stage_1_after_scp_r(1),
      I1 => Q(0),
      I2 => stage_1_after_scp_r(0),
      I3 => Q(1),
      O => \AFTER_SCP_reg[1]_2\
    );
stage_2_end_before_start_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => stage_1_after_scp_r(1),
      I1 => Q(0),
      I2 => stage_1_after_scp_r(0),
      I3 => Q(1),
      O => \AFTER_SCP_reg[1]_1\
    );
stage_2_frame_err_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0AAFCEEFCEE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => stage_2_frame_err_r_reg(1),
      I3 => stage_1_in_frame_r(0),
      I4 => stage_2_frame_err_r_reg(0),
      I5 => stage_1_in_frame_r(1),
      O => \stage_1_ecp_r_reg[0]\
    );
stage_2_start_with_data_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => stage_1_after_scp_r(1),
      I1 => stage_1_data_v_r(1),
      I2 => stage_1_after_scp_r(0),
      I3 => stage_1_data_v_r(0),
      O => \AFTER_SCP_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT is
  port (
    stage_3_end_storage_r : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    SRC_RDY_N : out STD_LOGIC;
    EOF_N : out STD_LOGIC;
    FRAME_ERR_RESULT : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RX_REM_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    end_storage_r0 : in STD_LOGIC;
    SRC_RDY_N_reg_0 : in STD_LOGIC;
    EOF_N_reg_0 : in STD_LOGIC;
    FRAME_ERR_RESULT0 : in STD_LOGIC;
    stage_2_frame_err_r : in STD_LOGIC;
    start_rx_i : in STD_LOGIC;
    stage_2_start_with_data_r : in STD_LOGIC;
    stage_2_pad_r : in STD_LOGIC;
    excess_c : in STD_LOGIC;
    stage_2_end_before_start_r : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \RX_REM_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT : entity is "aurora_8b10b_0_SIDEBAND_OUTPUT";
end aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SRC_RDY_N_i_1_n_0 : STD_LOGIC;
  signal pad_storage_r : STD_LOGIC;
  signal pad_storage_r_i_1_n_0 : STD_LOGIC;
  signal rx_rem_c : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^stage_3_end_storage_r\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RX_REM[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \storage_count_r[1]_i_1\ : label is "soft_lutpair53";
begin
  SR(0) <= \^sr\(0);
  stage_3_end_storage_r <= \^stage_3_end_storage_r\;
EOF_N_reg: unisim.vcomponents.FDRE
     port map (
      C => SRC_RDY_N_reg_0,
      CE => '1',
      D => EOF_N_reg_0,
      Q => EOF_N,
      R => '0'
    );
FRAME_ERR_RESULT_reg: unisim.vcomponents.FDRE
     port map (
      C => SRC_RDY_N_reg_0,
      CE => '1',
      D => FRAME_ERR_RESULT0,
      Q => FRAME_ERR_RESULT,
      R => '0'
    );
\RX_REM[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => \^stage_3_end_storage_r\,
      I1 => stage_2_start_with_data_r,
      I2 => Q(0),
      I3 => \RX_REM_reg[0]_1\(0),
      O => rx_rem_c(1)
    );
\RX_REM[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0F"
    )
        port map (
      I0 => \^stage_3_end_storage_r\,
      I1 => stage_2_start_with_data_r,
      I2 => pad_storage_r,
      I3 => stage_2_pad_r,
      O => rx_rem_c(0)
    );
\RX_REM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SRC_RDY_N_reg_0,
      CE => '1',
      D => rx_rem_c(1),
      Q => \RX_REM_reg[0]_0\(1),
      R => '0'
    );
\RX_REM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SRC_RDY_N_reg_0,
      CE => '1',
      D => rx_rem_c(0),
      Q => \RX_REM_reg[0]_0\(0),
      R => '0'
    );
SRC_RDY_N_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0145"
    )
        port map (
      I0 => \^stage_3_end_storage_r\,
      I1 => stage_2_start_with_data_r,
      I2 => excess_c,
      I3 => stage_2_end_before_start_r,
      O => SRC_RDY_N_i_1_n_0
    );
SRC_RDY_N_reg: unisim.vcomponents.FDSE
     port map (
      C => SRC_RDY_N_reg_0,
      CE => '1',
      D => SRC_RDY_N_i_1_n_0,
      Q => SRC_RDY_N,
      S => \^sr\(0)
    );
end_storage_r_reg: unisim.vcomponents.FDRE
     port map (
      C => SRC_RDY_N_reg_0,
      CE => '1',
      D => end_storage_r0,
      Q => \^stage_3_end_storage_r\,
      R => \^sr\(0)
    );
pad_storage_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBABBAAAAAAAA"
    )
        port map (
      I0 => stage_2_pad_r,
      I1 => \^stage_3_end_storage_r\,
      I2 => stage_2_start_with_data_r,
      I3 => excess_c,
      I4 => stage_2_end_before_start_r,
      I5 => pad_storage_r,
      O => pad_storage_r_i_1_n_0
    );
pad_storage_r_reg: unisim.vcomponents.FDRE
     port map (
      C => SRC_RDY_N_reg_0,
      CE => '1',
      D => pad_storage_r_i_1_n_0,
      Q => pad_storage_r,
      R => \^sr\(0)
    );
\storage_count_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => stage_2_frame_err_r,
      I1 => start_rx_i,
      O => \^sr\(0)
    );
\storage_count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => \^stage_3_end_storage_r\,
      I1 => stage_2_start_with_data_r,
      I2 => Q(0),
      I3 => \RX_REM_reg[0]_1\(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_STANDARD_CC_MODULE is
  port (
    Q : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prepare_count_r_reg[9]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_STANDARD_CC_MODULE : entity is "aurora_8b10b_0_STANDARD_CC_MODULE";
end aurora_8b10b_0_aurora_8b10b_0_STANDARD_CC_MODULE;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_STANDARD_CC_MODULE is
  signal DO_CC_i_1_n_0 : STD_LOGIC;
  signal \cc_count_r_reg_n_0_[5]\ : STD_LOGIC;
  signal cc_idle_count_done_c : STD_LOGIC;
  signal count_13d_flop_r_reg_r_n_0 : STD_LOGIC;
  signal \count_13d_srl_r_reg[10]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\ : STD_LOGIC;
  signal \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\ : STD_LOGIC;
  signal count_13d_srl_r_reg_gate_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_0_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_1_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_2_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_3_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_4_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_5_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_6_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_7_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_8_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_9_n_0 : STD_LOGIC;
  signal count_13d_srl_r_reg_r_n_0 : STD_LOGIC;
  signal count_16d_flop_r : STD_LOGIC;
  signal count_16d_flop_r_i_1_n_0 : STD_LOGIC;
  signal count_16d_srl_r0 : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_16d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal count_24d_flop_r : STD_LOGIC;
  signal count_24d_flop_r_i_1_n_0 : STD_LOGIC;
  signal count_24d_srl_r0 : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_24d_srl_r_reg_n_0_[9]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0\ : STD_LOGIC;
  signal \prepare_count_r_reg[8]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0\ : STD_LOGIC;
  signal prepare_count_r_reg_gate_n_0 : STD_LOGIC;
  signal reset_r : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "inst/\aurora_8b10b_0_core_i/standard_cc_module_i/count_13d_srl_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8\ : label is "inst/\aurora_8b10b_0_core_i/standard_cc_module_i/count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of count_16d_flop_r_i_1 : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of count_24d_flop_r_i_1 : label is "soft_lutpair114";
  attribute srl_bus_name of \prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1\ : label is "inst/\aurora_8b10b_0_core_i/standard_cc_module_i/prepare_count_r_reg ";
  attribute srl_name of \prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1\ : label is "inst/\aurora_8b10b_0_core_i/standard_cc_module_i/prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1 ";
  attribute SOFT_HLUTNM of \prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1_i_1\ : label is "soft_lutpair114";
begin
DO_CC_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_2_in(1),
      I1 => \cc_count_r_reg_n_0_[5]\,
      I2 => p_2_in(0),
      I3 => reset_r,
      I4 => p_3_out(2),
      O => DO_CC_i_1_n_0
    );
DO_CC_reg: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => DO_CC_i_1_n_0,
      Q => Q,
      R => SR(0)
    );
\cc_count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => p_3_out(2),
      Q => p_2_in(1),
      R => SR(0)
    );
\cc_count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(0),
      R => SR(0)
    );
\cc_count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => p_2_in(0),
      Q => \cc_count_r_reg_n_0_[5]\,
      R => SR(0)
    );
count_13d_flop_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => '1',
      Q => count_13d_flop_r_reg_r_n_0,
      R => SR(0)
    );
\count_13d_srl_r_reg[10]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\,
      Q => \count_13d_srl_r_reg[10]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      R => '0'
    );
\count_13d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_gate_n_0,
      Q => count_16d_srl_r0,
      R => SR(0)
    );
\count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '1',
      CE => '1',
      CLK => \prepare_count_r_reg[9]_0\,
      D => \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\,
      Q => \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_n_0\
    );
\count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_16d_srl_r0,
      I1 => reset_r,
      O => \count_13d_srl_r_reg[9]_srl11___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_8_i_1_n_0\
    );
count_13d_srl_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_13d_srl_r_reg[10]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_9_n_0\,
      I1 => count_13d_srl_r_reg_r_9_n_0,
      O => count_13d_srl_r_reg_gate_n_0
    );
count_13d_srl_r_reg_r: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_flop_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_n_0,
      Q => count_13d_srl_r_reg_r_0_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_0_n_0,
      Q => count_13d_srl_r_reg_r_1_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_1_n_0,
      Q => count_13d_srl_r_reg_r_2_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_2_n_0,
      Q => count_13d_srl_r_reg_r_3_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_3_n_0,
      Q => count_13d_srl_r_reg_r_4_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_5: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_4_n_0,
      Q => count_13d_srl_r_reg_r_5_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_6: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_5_n_0,
      Q => count_13d_srl_r_reg_r_6_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_7: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_6_n_0,
      Q => count_13d_srl_r_reg_r_7_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_8: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_7_n_0,
      Q => count_13d_srl_r_reg_r_8_n_0,
      R => SR(0)
    );
count_13d_srl_r_reg_r_9: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_13d_srl_r_reg_r_8_n_0,
      Q => count_13d_srl_r_reg_r_9_n_0,
      R => SR(0)
    );
count_16d_flop_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => count_16d_srl_r0,
      I2 => reset_r,
      I3 => count_16d_flop_r,
      O => count_16d_flop_r_i_1_n_0
    );
count_16d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_16d_flop_r_i_1_n_0,
      Q => count_16d_flop_r,
      R => SR(0)
    );
\count_16d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => count_16d_flop_r,
      Q => \count_16d_srl_r_reg_n_0_[0]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[9]\,
      Q => \count_16d_srl_r_reg_n_0_[10]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[10]\,
      Q => \count_16d_srl_r_reg_n_0_[11]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[11]\,
      Q => \count_16d_srl_r_reg_n_0_[12]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[12]\,
      Q => \count_16d_srl_r_reg_n_0_[13]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[13]\,
      Q => \count_16d_srl_r_reg_n_0_[14]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[0]\,
      Q => \count_16d_srl_r_reg_n_0_[1]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[1]\,
      Q => \count_16d_srl_r_reg_n_0_[2]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[2]\,
      Q => \count_16d_srl_r_reg_n_0_[3]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[3]\,
      Q => \count_16d_srl_r_reg_n_0_[4]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[4]\,
      Q => \count_16d_srl_r_reg_n_0_[5]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[5]\,
      Q => \count_16d_srl_r_reg_n_0_[6]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[6]\,
      Q => \count_16d_srl_r_reg_n_0_[7]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[7]\,
      Q => \count_16d_srl_r_reg_n_0_[8]\,
      R => SR(0)
    );
\count_16d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_16d_srl_r0,
      D => \count_16d_srl_r_reg_n_0_[8]\,
      Q => \count_16d_srl_r_reg_n_0_[9]\,
      R => SR(0)
    );
count_24d_flop_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF80"
    )
        port map (
      I0 => \count_24d_srl_r_reg_n_0_[10]\,
      I1 => \count_16d_srl_r_reg_n_0_[14]\,
      I2 => count_16d_srl_r0,
      I3 => reset_r,
      I4 => count_24d_flop_r,
      O => count_24d_flop_r_i_1_n_0
    );
count_24d_flop_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => count_24d_flop_r_i_1_n_0,
      Q => count_24d_flop_r,
      R => SR(0)
    );
\count_24d_srl_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_16d_srl_r_reg_n_0_[14]\,
      I1 => count_16d_srl_r0,
      O => count_24d_srl_r0
    );
\count_24d_srl_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => count_24d_flop_r,
      Q => \count_24d_srl_r_reg_n_0_[0]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[9]\,
      Q => \count_24d_srl_r_reg_n_0_[10]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[0]\,
      Q => \count_24d_srl_r_reg_n_0_[1]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[1]\,
      Q => \count_24d_srl_r_reg_n_0_[2]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[2]\,
      Q => \count_24d_srl_r_reg_n_0_[3]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[3]\,
      Q => \count_24d_srl_r_reg_n_0_[4]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[4]\,
      Q => \count_24d_srl_r_reg_n_0_[5]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[5]\,
      Q => \count_24d_srl_r_reg_n_0_[6]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[6]\,
      Q => \count_24d_srl_r_reg_n_0_[7]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[7]\,
      Q => \count_24d_srl_r_reg_n_0_[8]\,
      R => SR(0)
    );
\count_24d_srl_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => count_24d_srl_r0,
      D => \count_24d_srl_r_reg_n_0_[8]\,
      Q => \count_24d_srl_r_reg_n_0_[9]\,
      R => SR(0)
    );
\prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \prepare_count_r_reg[9]_0\,
      D => cc_idle_count_done_c,
      Q => \prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0\
    );
\prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \count_24d_srl_r_reg_n_0_[10]\,
      I1 => \count_16d_srl_r_reg_n_0_[14]\,
      I2 => count_16d_srl_r0,
      O => cc_idle_count_done_c
    );
\prepare_count_r_reg[8]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_2\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => \prepare_count_r_reg[7]_srl4___aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_1_n_0\,
      Q => \prepare_count_r_reg[8]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0\,
      R => '0'
    );
\prepare_count_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => prepare_count_r_reg_gate_n_0,
      Q => p_3_out(2),
      R => SR(0)
    );
prepare_count_r_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \prepare_count_r_reg[8]_aurora_8b10b_0_core_i_standard_cc_module_i_count_13d_srl_r_reg_r_2_n_0\,
      I1 => count_13d_srl_r_reg_r_2_n_0,
      O => prepare_count_r_reg_gate_n_0
    );
reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \prepare_count_r_reg[9]_0\,
      CE => '1',
      D => SR(0),
      Q => reset_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \STORAGE_CE_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL : entity is "aurora_8b10b_0_STORAGE_CE_CONTROL";
end aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL is
begin
\STORAGE_CE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_CE_reg[1]_0\,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\STORAGE_CE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_CE_reg[1]_0\,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL is
  port (
    output_select_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    end_storage_r_reg : out STD_LOGIC;
    \storage_not_empty_c__0\ : out STD_LOGIC;
    stage_3_end_storage_r : in STD_LOGIC;
    stage_2_start_with_data_r : in STD_LOGIC;
    \OUTPUT_SELECT_reg[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_2_end_before_start_r : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_count_r_reg[1]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL : entity is "aurora_8b10b_0_STORAGE_COUNT_CONTROL";
end aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EOF_N_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of FRAME_ERR_RESULT_i_2 : label is "soft_lutpair66";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
EOF_N_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01555555"
    )
        port map (
      I0 => stage_3_end_storage_r,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => stage_2_end_before_start_r,
      I4 => stage_2_start_with_data_r,
      O => end_storage_r_reg
    );
FRAME_ERR_RESULT_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \storage_not_empty_c__0\
    );
\OUTPUT_SELECT[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010001000100"
    )
        port map (
      I0 => stage_3_end_storage_r,
      I1 => stage_2_start_with_data_r,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \OUTPUT_SELECT_reg[9]\(0),
      I5 => \OUTPUT_SELECT_reg[9]\(1),
      O => output_select_c(0)
    );
\storage_count_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \storage_count_r_reg[1]_0\,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\storage_count_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \storage_count_r_reg[1]_0\,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \STORAGE_DATA_reg[0]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \STORAGE_DATA_reg[31]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX : entity is "aurora_8b10b_0_STORAGE_MUX";
end aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX is
begin
\STORAGE_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(31),
      Q => Q(31),
      R => '0'
    );
\STORAGE_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(21),
      Q => Q(21),
      R => '0'
    );
\STORAGE_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(20),
      Q => Q(20),
      R => '0'
    );
\STORAGE_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(19),
      Q => Q(19),
      R => '0'
    );
\STORAGE_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(18),
      Q => Q(18),
      R => '0'
    );
\STORAGE_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(17),
      Q => Q(17),
      R => '0'
    );
\STORAGE_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(16),
      Q => Q(16),
      R => '0'
    );
\STORAGE_DATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(15),
      Q => Q(15),
      R => '0'
    );
\STORAGE_DATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(14),
      Q => Q(14),
      R => '0'
    );
\STORAGE_DATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(13),
      Q => Q(13),
      R => '0'
    );
\STORAGE_DATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(12),
      Q => Q(12),
      R => '0'
    );
\STORAGE_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(30),
      Q => Q(30),
      R => '0'
    );
\STORAGE_DATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(11),
      Q => Q(11),
      R => '0'
    );
\STORAGE_DATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(10),
      Q => Q(10),
      R => '0'
    );
\STORAGE_DATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(9),
      Q => Q(9),
      R => '0'
    );
\STORAGE_DATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(8),
      Q => Q(8),
      R => '0'
    );
\STORAGE_DATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(7),
      Q => Q(7),
      R => '0'
    );
\STORAGE_DATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(6),
      Q => Q(6),
      R => '0'
    );
\STORAGE_DATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(5),
      Q => Q(5),
      R => '0'
    );
\STORAGE_DATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(4),
      Q => Q(4),
      R => '0'
    );
\STORAGE_DATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(3),
      Q => Q(3),
      R => '0'
    );
\STORAGE_DATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(2),
      Q => Q(2),
      R => '0'
    );
\STORAGE_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(29),
      Q => Q(29),
      R => '0'
    );
\STORAGE_DATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(1),
      Q => Q(1),
      R => '0'
    );
\STORAGE_DATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(0),
      D => \STORAGE_DATA_reg[0]_0\(0),
      Q => Q(0),
      R => '0'
    );
\STORAGE_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(28),
      Q => Q(28),
      R => '0'
    );
\STORAGE_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(27),
      Q => Q(27),
      R => '0'
    );
\STORAGE_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(26),
      Q => Q(26),
      R => '0'
    );
\STORAGE_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(25),
      Q => Q(25),
      R => '0'
    );
\STORAGE_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(24),
      Q => Q(24),
      R => '0'
    );
\STORAGE_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(23),
      Q => Q(23),
      R => '0'
    );
\STORAGE_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]_0\,
      CE => E(1),
      D => \STORAGE_DATA_reg[0]_0\(22),
      Q => Q(22),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL is
  port (
    STORAGE_SELECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \STORAGE_SELECT_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_2_start_with_data_r : in STD_LOGIC;
    stage_3_end_storage_r : in STD_LOGIC;
    \STORAGE_SELECT_reg[4]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL : entity is "aurora_8b10b_0_STORAGE_SWITCH_CONTROL";
end aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL is
  signal \STORAGE_SELECT[4]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_SELECT[9]_i_1_n_0\ : STD_LOGIC;
begin
\STORAGE_SELECT[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => Q(0),
      I1 => \STORAGE_SELECT_reg[9]_0\(1),
      I2 => Q(1),
      I3 => \STORAGE_SELECT_reg[9]_0\(0),
      I4 => stage_2_start_with_data_r,
      I5 => stage_3_end_storage_r,
      O => \STORAGE_SELECT[4]_i_1_n_0\
    );
\STORAGE_SELECT[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF14"
    )
        port map (
      I0 => Q(0),
      I1 => \STORAGE_SELECT_reg[9]_0\(0),
      I2 => \STORAGE_SELECT_reg[9]_0\(1),
      I3 => stage_2_start_with_data_r,
      I4 => stage_3_end_storage_r,
      O => \STORAGE_SELECT[9]_i_1_n_0\
    );
\STORAGE_SELECT_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_SELECT_reg[4]_0\,
      CE => '1',
      D => \STORAGE_SELECT[4]_i_1_n_0\,
      Q => STORAGE_SELECT(1),
      R => '0'
    );
\STORAGE_SELECT_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_SELECT_reg[4]_0\,
      CE => '1',
      D => \STORAGE_SELECT[9]_i_1_n_0\,
      Q => STORAGE_SELECT(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE is
  port (
    RX_NEG : out STD_LOGIC;
    \left_align_select_r_reg[0]_0\ : out STD_LOGIC;
    \left_align_select_r_reg[1]_0\ : out STD_LOGIC;
    got_v_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    first_v_received_r : out STD_LOGIC;
    \RX_ECP_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RX_SCP_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RX_ECP_reg[0]_0\ : out STD_LOGIC;
    \RX_PAD_reg[1]_0\ : out STD_LOGIC;
    counter4_r0 : out STD_LOGIC;
    counter3_r0 : out STD_LOGIC;
    \previous_cycle_data_r_reg[7]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \previous_cycle_control_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \word_aligned_data_r_reg[24]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[16]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[8]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \RX_PE_DATA_V_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    after_scp_select_c_0 : out STD_LOGIC;
    after_scp_select_c_1 : out STD_LOGIC;
    \rx_cc_r_reg[1]_0\ : in STD_LOGIC;
    \left_align_select_r_reg[0]_1\ : in STD_LOGIC;
    \left_align_select_r_reg[1]_1\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[3]_0\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[2]_0\ : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    ready_r : in STD_LOGIC;
    gen_spa_i : in STD_LOGIC;
    RXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \word_aligned_data_r_reg[24]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[16]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE : entity is "aurora_8b10b_0_SYM_DEC_4BYTE";
end aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE is
  signal GOT_V_i_2_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RX_CC0 : STD_LOGIC;
  signal RX_CC_i_2_n_0 : STD_LOGIC;
  signal RX_CC_i_3_n_0 : STD_LOGIC;
  signal RX_ECP0 : STD_LOGIC;
  signal \RX_ECP[1]_i_1_n_0\ : STD_LOGIC;
  signal RX_NEG0 : STD_LOGIC;
  signal RX_SCP0 : STD_LOGIC;
  signal \RX_SCP[1]_i_1_n_0\ : STD_LOGIC;
  signal \^rx_scp_reg[0]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal RX_SP0 : STD_LOGIC;
  signal RX_SPA0 : STD_LOGIC;
  signal RX_SPA_i_2_n_0 : STD_LOGIC;
  signal RX_SP_i_2_n_0 : STD_LOGIC;
  signal RX_SP_i_3_n_0 : STD_LOGIC;
  signal \^first_v_received_r\ : STD_LOGIC;
  signal first_v_received_r_i_1_n_0 : STD_LOGIC;
  signal got_v_c : STD_LOGIC;
  signal \^left_align_select_r_reg[0]_0\ : STD_LOGIC;
  signal \^left_align_select_r_reg[1]_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_8_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal previous_cycle_control_r : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^previous_cycle_control_r_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^previous_cycle_data_r_reg[7]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \previous_cycle_data_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[23]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \previous_cycle_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal rx_cc_r : STD_LOGIC_VECTOR ( 1 to 7 );
  signal \rx_cc_r0__0\ : STD_LOGIC;
  signal \rx_cc_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \rx_cc_r0_inferred__1/i__n_0\ : STD_LOGIC;
  signal rx_cc_r0_n_0 : STD_LOGIC;
  signal rx_ecp_d_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \rx_ecp_d_r0__0\ : STD_LOGIC;
  signal \rx_ecp_d_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \rx_ecp_d_r0_inferred__1/i__n_0\ : STD_LOGIC;
  signal \rx_ecp_d_r0_inferred__2/i__n_0\ : STD_LOGIC;
  signal \rx_ecp_d_r0_inferred__3/i__n_0\ : STD_LOGIC;
  signal rx_ecp_d_r0_n_0 : STD_LOGIC;
  signal rx_pad_d_r : STD_LOGIC_VECTOR ( 0 to 2 );
  signal \rx_pad_d_r0__0\ : STD_LOGIC;
  signal \rx_pad_d_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \rx_pad_d_r0_inferred__1/i__n_0\ : STD_LOGIC;
  signal rx_pad_d_r0_n_0 : STD_LOGIC;
  signal rx_pad_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_pe_control_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_scp_d_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \rx_scp_d_r0__0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__1/i__n_0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__2/i__n_0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__3/i__n_0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__4/i__n_0\ : STD_LOGIC;
  signal \rx_scp_d_r0_inferred__5/i__n_0\ : STD_LOGIC;
  signal rx_scp_d_r0_n_0 : STD_LOGIC;
  signal rx_sp_i : STD_LOGIC;
  signal rx_sp_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_sp_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_sp_r0_n_0 : STD_LOGIC;
  signal rx_sp_r111_in : STD_LOGIC;
  signal rx_sp_r114_in : STD_LOGIC;
  signal rx_spa_i : STD_LOGIC;
  signal rx_spa_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \rx_spa_neg_d_r0__0\ : STD_LOGIC;
  signal rx_spa_neg_d_r0_n_0 : STD_LOGIC;
  signal rx_spa_r : STD_LOGIC_VECTOR ( 2 to 7 );
  signal \rx_spa_r0__0\ : STD_LOGIC;
  signal \rx_spa_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal rx_spa_r0_n_0 : STD_LOGIC;
  signal rx_v_d_r : STD_LOGIC_VECTOR ( 2 to 7 );
  signal \rx_v_d_r0__0\ : STD_LOGIC;
  signal \rx_v_d_r0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \rx_v_d_r0_inferred__1/i__n_0\ : STD_LOGIC;
  signal \rx_v_d_r0_inferred__2/i__n_0\ : STD_LOGIC;
  signal \rx_v_d_r0_inferred__3/i__n_0\ : STD_LOGIC;
  signal rx_v_d_r0_n_0 : STD_LOGIC;
  signal word_aligned_control_bits_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \word_aligned_control_bits_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_control_bits_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[10]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[11]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[12]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[13]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[14]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[15]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[18]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[19]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[5]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[6]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[7]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[8]_i_1_n_0\ : STD_LOGIC;
  signal \word_aligned_data_r[9]_i_1_n_0\ : STD_LOGIC;
  signal \^word_aligned_data_r_reg[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^word_aligned_data_r_reg[16]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^word_aligned_data_r_reg[24]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^word_aligned_data_r_reg[8]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RX_PAD[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \RX_PE_DATA_V[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \RX_PE_DATA_V[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of RX_SP_i_2 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of rx_cc_r0 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rx_cc_r0_inferred__1/i_\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of rx_ecp_d_r0 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rx_ecp_d_r0_inferred__0/i_\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_ecp_d_r0_inferred__1/i_\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rx_ecp_d_r0_inferred__2/i_\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rx_ecp_d_r0_inferred__3/i_\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of rx_pad_d_r0 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_pad_d_r0_inferred__0/i_\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_pad_d_r0_inferred__1/i_\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_pad_d_r0_inferred__2/i_\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rx_scp_d_r0 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__0/i_\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__1/i_\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__2/i_\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__3/i_\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__4/i_\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__5/i_\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rx_scp_d_r0_inferred__6/i_\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of rx_sp_r0 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of rx_sp_r1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rx_sp_r1_inferred__0/i_\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rx_sp_r[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rx_sp_r[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rx_sp_r[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_sp_r[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_sp_r[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rx_sp_r[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of rx_spa_neg_d_r0 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rx_spa_r0_inferred__1/i_\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of rx_v_d_r0 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rx_v_d_r0_inferred__0/i_\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rx_v_d_r0_inferred__1/i_\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rx_v_d_r0_inferred__2/i_\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rx_v_d_r0_inferred__3/i_\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rx_v_d_r0_inferred__4/i_\ : label is "soft_lutpair12";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  \RX_SCP_reg[0]_0\(1 downto 0) <= \^rx_scp_reg[0]_0\(1 downto 0);
  first_v_received_r <= \^first_v_received_r\;
  \left_align_select_r_reg[0]_0\ <= \^left_align_select_r_reg[0]_0\;
  \left_align_select_r_reg[1]_0\ <= \^left_align_select_r_reg[1]_0\;
  \previous_cycle_control_r_reg[0]_0\(0) <= \^previous_cycle_control_r_reg[0]_0\(0);
  \previous_cycle_data_r_reg[7]_0\(5 downto 0) <= \^previous_cycle_data_r_reg[7]_0\(5 downto 0);
  \word_aligned_data_r_reg[0]_0\(7 downto 0) <= \^word_aligned_data_r_reg[0]_0\(7 downto 0);
  \word_aligned_data_r_reg[16]_0\(7 downto 0) <= \^word_aligned_data_r_reg[16]_0\(7 downto 0);
  \word_aligned_data_r_reg[24]_0\(7 downto 0) <= \^word_aligned_data_r_reg[24]_0\(7 downto 0);
  \word_aligned_data_r_reg[8]_0\(7 downto 0) <= \^word_aligned_data_r_reg[8]_0\(7 downto 0);
GOT_V_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => RX_SP_i_2_n_0,
      I1 => GOT_V_i_2_n_0,
      I2 => rx_sp_r(0),
      I3 => rx_sp_r(1),
      I4 => rx_v_d_r(3),
      I5 => rx_v_d_r(2),
      O => got_v_c
    );
GOT_V_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rx_v_d_r(5),
      I1 => rx_v_d_r(4),
      I2 => rx_v_d_r(7),
      I3 => rx_v_d_r(6),
      O => GOT_V_i_2_n_0
    );
GOT_V_reg: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => got_v_c,
      Q => got_v_i,
      R => '0'
    );
RX_CC_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => rx_pe_control_r(2),
      I1 => rx_pe_control_r(3),
      I2 => rx_pe_control_r(1),
      I3 => rx_pe_control_r(0),
      I4 => RX_CC_i_2_n_0,
      I5 => RX_CC_i_3_n_0,
      O => RX_CC0
    );
RX_CC_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rx_cc_r(5),
      I1 => rx_ecp_d_r(4),
      I2 => rx_cc_r(7),
      I3 => rx_ecp_d_r(6),
      O => RX_CC_i_2_n_0
    );
RX_CC_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rx_ecp_d_r(0),
      I1 => rx_cc_r(1),
      I2 => rx_cc_r(3),
      I3 => rx_ecp_d_r(2),
      O => RX_CC_i_3_n_0
    );
RX_CC_reg: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RX_CC0,
      Q => D(0),
      R => '0'
    );
\RX_ECP[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_ecp_d_r(2),
      I1 => rx_ecp_d_r(3),
      I2 => rx_pe_control_r(1),
      I3 => rx_pe_control_r(0),
      I4 => rx_ecp_d_r(1),
      I5 => rx_ecp_d_r(0),
      O => RX_ECP0
    );
\RX_ECP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_ecp_d_r(6),
      I1 => rx_ecp_d_r(7),
      I2 => rx_pe_control_r(3),
      I3 => rx_pe_control_r(2),
      I4 => rx_ecp_d_r(5),
      I5 => rx_ecp_d_r(4),
      O => \RX_ECP[1]_i_1_n_0\
    );
\RX_ECP_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RX_ECP0,
      Q => \^q\(1),
      R => '0'
    );
\RX_ECP_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \RX_ECP[1]_i_1_n_0\,
      Q => \^q\(0),
      R => '0'
    );
RX_NEG_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => rx_spa_neg_d_r(1),
      I1 => rx_spa_neg_d_r(0),
      I2 => rx_sp_neg_d_r(1),
      I3 => rx_sp_neg_d_r(0),
      I4 => rx_pe_control_r(1),
      O => RX_NEG0
    );
RX_NEG_reg: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RX_NEG0,
      Q => RX_NEG,
      R => '0'
    );
\RX_PAD[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rx_pad_d_r(0),
      I1 => rx_spa_r(3),
      I2 => rx_pe_control_r(0),
      I3 => rx_pe_control_r(1),
      O => p_3_out(1)
    );
\RX_PAD[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => rx_pad_d_r(2),
      I1 => rx_spa_r(7),
      I2 => rx_pe_control_r(2),
      I3 => rx_pe_control_r(3),
      O => p_3_out(0)
    );
\RX_PAD_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_3_out(1),
      Q => rx_pad_striped_i(0),
      R => '0'
    );
\RX_PAD_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_3_out(0),
      Q => rx_pad_striped_i(1),
      R => '0'
    );
\RX_PE_DATA_V[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_pe_control_r(0),
      O => p_1_out(1)
    );
\RX_PE_DATA_V[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_pe_control_r(2),
      O => p_1_out(0)
    );
\RX_PE_DATA_V_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_1_out(1),
      Q => \RX_PE_DATA_V_reg[0]_0\(1),
      R => '0'
    );
\RX_PE_DATA_V_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_1_out(0),
      Q => \RX_PE_DATA_V_reg[0]_0\(0),
      R => '0'
    );
\RX_SCP[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_ecp_d_r(2),
      I1 => rx_scp_d_r(3),
      I2 => rx_pe_control_r(1),
      I3 => rx_pe_control_r(0),
      I4 => rx_sp_r(1),
      I5 => rx_scp_d_r(0),
      O => RX_SCP0
    );
\RX_SCP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rx_ecp_d_r(6),
      I1 => rx_scp_d_r(7),
      I2 => rx_pe_control_r(3),
      I3 => rx_pe_control_r(2),
      I4 => rx_spa_r(5),
      I5 => rx_scp_d_r(4),
      O => \RX_SCP[1]_i_1_n_0\
    );
\RX_SCP_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RX_SCP0,
      Q => \^rx_scp_reg[0]_0\(1),
      R => '0'
    );
\RX_SCP_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \RX_SCP[1]_i_1_n_0\,
      Q => \^rx_scp_reg[0]_0\(0),
      R => '0'
    );
RX_SPA_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => RX_SP_i_2_n_0,
      I1 => RX_SPA_i_2_n_0,
      I2 => rx_sp_r(0),
      I3 => rx_sp_r(1),
      I4 => rx_spa_r(3),
      I5 => rx_spa_r(2),
      O => RX_SPA0
    );
RX_SPA_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rx_spa_r(5),
      I1 => rx_spa_r(4),
      I2 => rx_spa_r(7),
      I3 => rx_spa_r(6),
      O => RX_SPA_i_2_n_0
    );
RX_SPA_reg: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RX_SPA0,
      Q => rx_spa_i,
      R => '0'
    );
RX_SP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => RX_SP_i_2_n_0,
      I1 => RX_SP_i_3_n_0,
      I2 => rx_sp_r(0),
      I3 => rx_sp_r(1),
      I4 => rx_sp_r(3),
      I5 => rx_sp_r(2),
      O => RX_SP0
    );
RX_SP_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => rx_pe_control_r(3),
      I1 => rx_pe_control_r(1),
      I2 => rx_pe_control_r(0),
      I3 => rx_pe_control_r(2),
      O => RX_SP_i_2_n_0
    );
RX_SP_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rx_sp_r(5),
      I1 => rx_sp_r(4),
      I2 => rx_sp_r(7),
      I3 => rx_sp_r(6),
      O => RX_SP_i_3_n_0
    );
RX_SP_reg: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RX_SP0,
      Q => rx_sp_i,
      R => '0'
    );
\counter3_r_reg[2]_srl3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_spa_i,
      I1 => gen_spa_i,
      O => counter3_r0
    );
\counter4_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_sp_i,
      I1 => ready_r,
      O => counter4_r0
    );
data_after_start_muxcy_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_scp_reg[0]_0\(1),
      O => after_scp_select_c_1
    );
data_after_start_muxcy_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_scp_reg[0]_0\(0),
      O => after_scp_select_c_0
    );
first_v_received_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => lane_up,
      I1 => \^first_v_received_r\,
      I2 => got_v_c,
      O => first_v_received_r_i_1_n_0
    );
first_v_received_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => first_v_received_r_i_1_n_0,
      Q => \^first_v_received_r\,
      R => '0'
    );
in_frame_muxcy_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^rx_scp_reg[0]_0\(1),
      O => \RX_ECP_reg[0]_0\
    );
in_frame_muxcy_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^rx_scp_reg[0]_0\(0),
      O => \RX_ECP_reg[1]_0\
    );
\left_align_select_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \left_align_select_r_reg[0]_1\,
      Q => \^left_align_select_r_reg[0]_0\,
      R => '0'
    );
\left_align_select_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \left_align_select_r_reg[1]_1\,
      Q => \^left_align_select_r_reg[1]_0\,
      R => '0'
    );
\previous_cycle_control_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXCHARISK(3),
      Q => \^previous_cycle_control_r_reg[0]_0\(0),
      R => '0'
    );
\previous_cycle_control_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXCHARISK(2),
      Q => previous_cycle_control_r(1),
      R => '0'
    );
\previous_cycle_control_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXCHARISK(1),
      Q => previous_cycle_control_r(2),
      R => '0'
    );
\previous_cycle_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(24),
      Q => \^previous_cycle_data_r_reg[7]_0\(0),
      R => '0'
    );
\previous_cycle_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(18),
      Q => p_2_in(2),
      R => '0'
    );
\previous_cycle_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(19),
      Q => p_2_in(3),
      R => '0'
    );
\previous_cycle_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(20),
      Q => p_2_in(4),
      R => '0'
    );
\previous_cycle_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(21),
      Q => p_2_in(5),
      R => '0'
    );
\previous_cycle_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(22),
      Q => p_2_in(6),
      R => '0'
    );
\previous_cycle_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(23),
      Q => p_2_in(7),
      R => '0'
    );
\previous_cycle_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(8),
      Q => \previous_cycle_data_r_reg_n_0_[16]\,
      R => '0'
    );
\previous_cycle_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(9),
      Q => \previous_cycle_data_r_reg_n_0_[17]\,
      R => '0'
    );
\previous_cycle_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(10),
      Q => \previous_cycle_data_r_reg_n_0_[18]\,
      R => '0'
    );
\previous_cycle_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(11),
      Q => \previous_cycle_data_r_reg_n_0_[19]\,
      R => '0'
    );
\previous_cycle_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(25),
      Q => \^previous_cycle_data_r_reg[7]_0\(1),
      R => '0'
    );
\previous_cycle_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(12),
      Q => \previous_cycle_data_r_reg_n_0_[20]\,
      R => '0'
    );
\previous_cycle_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(13),
      Q => \previous_cycle_data_r_reg_n_0_[21]\,
      R => '0'
    );
\previous_cycle_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(14),
      Q => \previous_cycle_data_r_reg_n_0_[22]\,
      R => '0'
    );
\previous_cycle_data_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(15),
      Q => \previous_cycle_data_r_reg_n_0_[23]\,
      R => '0'
    );
\previous_cycle_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(26),
      Q => \^previous_cycle_data_r_reg[7]_0\(2),
      R => '0'
    );
\previous_cycle_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(27),
      Q => \^previous_cycle_data_r_reg[7]_0\(3),
      R => '0'
    );
\previous_cycle_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(28),
      Q => \previous_cycle_data_r_reg_n_0_[4]\,
      R => '0'
    );
\previous_cycle_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(29),
      Q => \previous_cycle_data_r_reg_n_0_[5]\,
      R => '0'
    );
\previous_cycle_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(30),
      Q => \^previous_cycle_data_r_reg[7]_0\(4),
      R => '0'
    );
\previous_cycle_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(31),
      Q => \^previous_cycle_data_r_reg[7]_0\(5),
      R => '0'
    );
\previous_cycle_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(16),
      Q => p_2_in(0),
      R => '0'
    );
\previous_cycle_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => RXDATA(17),
      Q => p_2_in(1),
      R => '0'
    );
rx_cc_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(3),
      I1 => \^word_aligned_data_r_reg[24]_0\(2),
      I2 => \^word_aligned_data_r_reg[24]_0\(1),
      I3 => \^word_aligned_data_r_reg[24]_0\(0),
      O => rx_cc_r0_n_0
    );
\rx_cc_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(3),
      I1 => \^word_aligned_data_r_reg[16]_0\(2),
      I2 => \^word_aligned_data_r_reg[16]_0\(1),
      I3 => \^word_aligned_data_r_reg[16]_0\(0),
      O => \rx_cc_r0_inferred__0/i__n_0\
    );
\rx_cc_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(3),
      I1 => \^word_aligned_data_r_reg[8]_0\(2),
      I2 => \^word_aligned_data_r_reg[8]_0\(1),
      I3 => \^word_aligned_data_r_reg[8]_0\(0),
      O => \rx_cc_r0_inferred__1/i__n_0\
    );
\rx_cc_r0_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[0]_0\(3),
      I1 => \^word_aligned_data_r_reg[0]_0\(2),
      I2 => \^word_aligned_data_r_reg[0]_0\(1),
      I3 => \^word_aligned_data_r_reg[0]_0\(0),
      O => \rx_cc_r0__0\
    );
\rx_cc_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_cc_r0__0\,
      Q => rx_cc_r(1),
      R => '0'
    );
\rx_cc_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_cc_r0_inferred__1/i__n_0\,
      Q => rx_cc_r(3),
      R => '0'
    );
\rx_cc_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_cc_r0_inferred__0/i__n_0\,
      Q => rx_cc_r(5),
      R => '0'
    );
\rx_cc_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_cc_r0_n_0,
      Q => rx_cc_r(7),
      R => '0'
    );
rx_ecp_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(0),
      I1 => \^word_aligned_data_r_reg[24]_0\(2),
      I2 => \^word_aligned_data_r_reg[24]_0\(3),
      I3 => \^word_aligned_data_r_reg[24]_0\(1),
      O => rx_ecp_d_r0_n_0
    );
\rx_ecp_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(1),
      I1 => \^word_aligned_data_r_reg[16]_0\(2),
      I2 => \^word_aligned_data_r_reg[16]_0\(3),
      I3 => \^word_aligned_data_r_reg[16]_0\(0),
      O => \rx_ecp_d_r0_inferred__0/i__n_0\
    );
\rx_ecp_d_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(5),
      I1 => \^word_aligned_data_r_reg[16]_0\(4),
      I2 => \^word_aligned_data_r_reg[16]_0\(6),
      I3 => \^word_aligned_data_r_reg[16]_0\(7),
      O => \rx_ecp_d_r0_inferred__1/i__n_0\
    );
\rx_ecp_d_r0_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(0),
      I1 => \^word_aligned_data_r_reg[8]_0\(2),
      I2 => \^word_aligned_data_r_reg[8]_0\(3),
      I3 => \^word_aligned_data_r_reg[8]_0\(1),
      O => \rx_ecp_d_r0_inferred__2/i__n_0\
    );
\rx_ecp_d_r0_inferred__3/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[0]_0\(1),
      I1 => \^word_aligned_data_r_reg[0]_0\(2),
      I2 => \^word_aligned_data_r_reg[0]_0\(3),
      I3 => \^word_aligned_data_r_reg[0]_0\(0),
      O => \rx_ecp_d_r0_inferred__3/i__n_0\
    );
\rx_ecp_d_r0_inferred__4/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[0]_0\(5),
      I1 => \^word_aligned_data_r_reg[0]_0\(4),
      I2 => \^word_aligned_data_r_reg[0]_0\(6),
      I3 => \^word_aligned_data_r_reg[0]_0\(7),
      O => \rx_ecp_d_r0__0\
    );
\rx_ecp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_ecp_d_r0__0\,
      Q => rx_ecp_d_r(0),
      R => '0'
    );
\rx_ecp_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_ecp_d_r0_inferred__3/i__n_0\,
      Q => rx_ecp_d_r(1),
      R => '0'
    );
\rx_ecp_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_scp_d_r0_inferred__5/i__n_0\,
      Q => rx_ecp_d_r(2),
      R => '0'
    );
\rx_ecp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_ecp_d_r0_inferred__2/i__n_0\,
      Q => rx_ecp_d_r(3),
      R => '0'
    );
\rx_ecp_d_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_ecp_d_r0_inferred__1/i__n_0\,
      Q => rx_ecp_d_r(4),
      R => '0'
    );
\rx_ecp_d_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_ecp_d_r0_inferred__0/i__n_0\,
      Q => rx_ecp_d_r(5),
      R => '0'
    );
\rx_ecp_d_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_scp_d_r0_inferred__1/i__n_0\,
      Q => rx_ecp_d_r(6),
      R => '0'
    );
\rx_ecp_d_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_ecp_d_r0_n_0,
      Q => rx_ecp_d_r(7),
      R => '0'
    );
rx_pad_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(1),
      I1 => \^word_aligned_data_r_reg[24]_0\(0),
      I2 => \^word_aligned_data_r_reg[24]_0\(2),
      I3 => \^word_aligned_data_r_reg[24]_0\(3),
      O => rx_pad_d_r0_n_0
    );
\rx_pad_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(6),
      I1 => \^word_aligned_data_r_reg[24]_0\(5),
      I2 => \^word_aligned_data_r_reg[24]_0\(7),
      I3 => \^word_aligned_data_r_reg[24]_0\(4),
      O => \rx_pad_d_r0_inferred__0/i__n_0\
    );
\rx_pad_d_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(1),
      I1 => \^word_aligned_data_r_reg[8]_0\(0),
      I2 => \^word_aligned_data_r_reg[8]_0\(2),
      I3 => \^word_aligned_data_r_reg[8]_0\(3),
      O => \rx_pad_d_r0_inferred__1/i__n_0\
    );
\rx_pad_d_r0_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(6),
      I1 => \^word_aligned_data_r_reg[8]_0\(5),
      I2 => \^word_aligned_data_r_reg[8]_0\(7),
      I3 => \^word_aligned_data_r_reg[8]_0\(4),
      O => \rx_pad_d_r0__0\
    );
\rx_pad_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_pad_d_r0__0\,
      Q => rx_pad_d_r(0),
      R => '0'
    );
\rx_pad_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_pad_d_r0_inferred__0/i__n_0\,
      Q => rx_pad_d_r(2),
      R => '0'
    );
\rx_pe_control_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => word_aligned_control_bits_r(0),
      Q => rx_pe_control_r(0),
      R => '0'
    );
\rx_pe_control_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => word_aligned_control_bits_r(1),
      Q => rx_pe_control_r(1),
      R => '0'
    );
\rx_pe_control_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => word_aligned_control_bits_r(2),
      Q => rx_pe_control_r(2),
      R => '0'
    );
\rx_pe_control_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => word_aligned_control_bits_r(3),
      Q => rx_pe_control_r(3),
      R => '0'
    );
rx_scp_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[0]_0\(1),
      I1 => \^word_aligned_data_r_reg[0]_0\(0),
      I2 => \^word_aligned_data_r_reg[0]_0\(2),
      I3 => \^word_aligned_data_r_reg[0]_0\(3),
      O => rx_scp_d_r0_n_0
    );
\rx_scp_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(2),
      I1 => \^word_aligned_data_r_reg[24]_0\(3),
      I2 => \^word_aligned_data_r_reg[24]_0\(1),
      I3 => \^word_aligned_data_r_reg[24]_0\(0),
      O => \rx_scp_d_r0_inferred__0/i__n_0\
    );
\rx_scp_d_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(5),
      I1 => \^word_aligned_data_r_reg[24]_0\(4),
      I2 => \^word_aligned_data_r_reg[24]_0\(6),
      I3 => \^word_aligned_data_r_reg[24]_0\(7),
      O => \rx_scp_d_r0_inferred__1/i__n_0\
    );
\rx_scp_d_r0_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(1),
      I1 => \^word_aligned_data_r_reg[16]_0\(0),
      I2 => \^word_aligned_data_r_reg[16]_0\(2),
      I3 => \^word_aligned_data_r_reg[16]_0\(3),
      O => \rx_scp_d_r0_inferred__2/i__n_0\
    );
\rx_scp_d_r0_inferred__3/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(7),
      I1 => \^word_aligned_data_r_reg[16]_0\(5),
      I2 => \^word_aligned_data_r_reg[16]_0\(6),
      I3 => \^word_aligned_data_r_reg[16]_0\(4),
      O => \rx_scp_d_r0_inferred__3/i__n_0\
    );
\rx_scp_d_r0_inferred__4/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(2),
      I1 => \^word_aligned_data_r_reg[8]_0\(3),
      I2 => \^word_aligned_data_r_reg[8]_0\(1),
      I3 => \^word_aligned_data_r_reg[8]_0\(0),
      O => \rx_scp_d_r0_inferred__4/i__n_0\
    );
\rx_scp_d_r0_inferred__5/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(5),
      I1 => \^word_aligned_data_r_reg[8]_0\(4),
      I2 => \^word_aligned_data_r_reg[8]_0\(6),
      I3 => \^word_aligned_data_r_reg[8]_0\(7),
      O => \rx_scp_d_r0_inferred__5/i__n_0\
    );
\rx_scp_d_r0_inferred__6/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[0]_0\(7),
      I1 => \^word_aligned_data_r_reg[0]_0\(5),
      I2 => \^word_aligned_data_r_reg[0]_0\(6),
      I3 => \^word_aligned_data_r_reg[0]_0\(4),
      O => \rx_scp_d_r0__0\
    );
\rx_scp_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_scp_d_r0__0\,
      Q => rx_scp_d_r(0),
      R => '0'
    );
\rx_scp_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_scp_d_r0_inferred__4/i__n_0\,
      Q => rx_scp_d_r(3),
      R => '0'
    );
\rx_scp_d_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_scp_d_r0_inferred__3/i__n_0\,
      Q => rx_scp_d_r(4),
      R => '0'
    );
\rx_scp_d_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_scp_d_r0_inferred__0/i__n_0\,
      Q => rx_scp_d_r(7),
      R => '0'
    );
\rx_sp_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_sp_r114_in,
      Q => rx_sp_neg_d_r(0),
      R => '0'
    );
\rx_sp_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_sp_r111_in,
      Q => rx_sp_neg_d_r(1),
      R => '0'
    );
rx_sp_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[0]_0\(6),
      I1 => \^word_aligned_data_r_reg[0]_0\(7),
      I2 => \^word_aligned_data_r_reg[0]_0\(5),
      I3 => \^word_aligned_data_r_reg[0]_0\(4),
      O => rx_sp_r0_n_0
    );
rx_sp_r1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(3),
      I1 => \^word_aligned_data_r_reg[8]_0\(1),
      I2 => \^word_aligned_data_r_reg[8]_0\(2),
      I3 => \^word_aligned_data_r_reg[8]_0\(0),
      O => rx_sp_r111_in
    );
\rx_sp_r1_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(6),
      I1 => \^word_aligned_data_r_reg[8]_0\(7),
      I2 => \^word_aligned_data_r_reg[8]_0\(5),
      I3 => \^word_aligned_data_r_reg[8]_0\(4),
      O => rx_sp_r114_in
    );
\rx_sp_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0180"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(4),
      I1 => \^word_aligned_data_r_reg[8]_0\(5),
      I2 => \^word_aligned_data_r_reg[8]_0\(7),
      I3 => \^word_aligned_data_r_reg[8]_0\(6),
      O => p_8_out(5)
    );
\rx_sp_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(0),
      I1 => \^word_aligned_data_r_reg[8]_0\(2),
      I2 => \^word_aligned_data_r_reg[8]_0\(1),
      I3 => \^word_aligned_data_r_reg[8]_0\(3),
      O => p_8_out(4)
    );
\rx_sp_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(5),
      I1 => \^word_aligned_data_r_reg[16]_0\(4),
      I2 => \^word_aligned_data_r_reg[16]_0\(6),
      I3 => \^word_aligned_data_r_reg[16]_0\(7),
      O => p_8_out(3)
    );
\rx_sp_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(2),
      I1 => \^word_aligned_data_r_reg[16]_0\(0),
      I2 => \^word_aligned_data_r_reg[16]_0\(1),
      I3 => \^word_aligned_data_r_reg[16]_0\(3),
      O => p_8_out(2)
    );
\rx_sp_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(5),
      I1 => \^word_aligned_data_r_reg[24]_0\(4),
      I2 => \^word_aligned_data_r_reg[24]_0\(6),
      I3 => \^word_aligned_data_r_reg[24]_0\(7),
      O => p_8_out(1)
    );
\rx_sp_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(2),
      I1 => \^word_aligned_data_r_reg[24]_0\(0),
      I2 => \^word_aligned_data_r_reg[24]_0\(1),
      I3 => \^word_aligned_data_r_reg[24]_0\(3),
      O => p_8_out(0)
    );
\rx_sp_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_sp_r0_n_0,
      Q => rx_sp_r(0),
      R => '0'
    );
\rx_sp_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_scp_d_r0_n_0,
      Q => rx_sp_r(1),
      R => '0'
    );
\rx_sp_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_8_out(5),
      Q => rx_sp_r(2),
      R => '0'
    );
\rx_sp_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_8_out(4),
      Q => rx_sp_r(3),
      R => '0'
    );
\rx_sp_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_8_out(3),
      Q => rx_sp_r(4),
      R => '0'
    );
\rx_sp_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_8_out(2),
      Q => rx_sp_r(5),
      R => '0'
    );
\rx_sp_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_8_out(1),
      Q => rx_sp_r(6),
      R => '0'
    );
\rx_sp_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => p_8_out(0),
      Q => rx_sp_r(7),
      R => '0'
    );
rx_spa_neg_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(2),
      I1 => \^word_aligned_data_r_reg[8]_0\(3),
      I2 => \^word_aligned_data_r_reg[8]_0\(1),
      I3 => \^word_aligned_data_r_reg[8]_0\(0),
      O => rx_spa_neg_d_r0_n_0
    );
\rx_spa_neg_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(5),
      I1 => \^word_aligned_data_r_reg[8]_0\(6),
      I2 => \^word_aligned_data_r_reg[8]_0\(7),
      I3 => \^word_aligned_data_r_reg[8]_0\(4),
      O => \rx_spa_neg_d_r0__0\
    );
\rx_spa_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_spa_neg_d_r0__0\,
      Q => rx_spa_neg_d_r(0),
      R => '0'
    );
\rx_spa_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_spa_neg_d_r0_n_0,
      Q => rx_spa_neg_d_r(1),
      R => '0'
    );
rx_spa_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(6),
      I1 => \^word_aligned_data_r_reg[24]_0\(7),
      I2 => \^word_aligned_data_r_reg[24]_0\(5),
      I3 => \^word_aligned_data_r_reg[24]_0\(4),
      O => rx_spa_r0_n_0
    );
\rx_spa_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(6),
      I1 => \^word_aligned_data_r_reg[16]_0\(7),
      I2 => \^word_aligned_data_r_reg[16]_0\(5),
      I3 => \^word_aligned_data_r_reg[16]_0\(4),
      O => \rx_spa_r0_inferred__0/i__n_0\
    );
\rx_spa_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(6),
      I1 => \^word_aligned_data_r_reg[8]_0\(7),
      I2 => \^word_aligned_data_r_reg[8]_0\(5),
      I3 => \^word_aligned_data_r_reg[8]_0\(4),
      O => \rx_spa_r0__0\
    );
\rx_spa_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_spa_r0__0\,
      Q => rx_spa_r(2),
      R => '0'
    );
\rx_spa_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_pad_d_r0_inferred__1/i__n_0\,
      Q => rx_spa_r(3),
      R => '0'
    );
\rx_spa_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_spa_r0_inferred__0/i__n_0\,
      Q => rx_spa_r(4),
      R => '0'
    );
\rx_spa_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_scp_d_r0_inferred__2/i__n_0\,
      Q => rx_spa_r(5),
      R => '0'
    );
\rx_spa_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_spa_r0_n_0,
      Q => rx_spa_r(6),
      R => '0'
    );
\rx_spa_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_pad_d_r0_n_0,
      Q => rx_spa_r(7),
      R => '0'
    );
rx_v_d_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(2),
      I1 => \^word_aligned_data_r_reg[24]_0\(1),
      I2 => \^word_aligned_data_r_reg[24]_0\(3),
      I3 => \^word_aligned_data_r_reg[24]_0\(0),
      O => rx_v_d_r0_n_0
    );
\rx_v_d_r0_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[24]_0\(4),
      I1 => \^word_aligned_data_r_reg[24]_0\(6),
      I2 => \^word_aligned_data_r_reg[24]_0\(7),
      I3 => \^word_aligned_data_r_reg[24]_0\(5),
      O => \rx_v_d_r0_inferred__0/i__n_0\
    );
\rx_v_d_r0_inferred__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(2),
      I1 => \^word_aligned_data_r_reg[16]_0\(1),
      I2 => \^word_aligned_data_r_reg[16]_0\(3),
      I3 => \^word_aligned_data_r_reg[16]_0\(0),
      O => \rx_v_d_r0_inferred__1/i__n_0\
    );
\rx_v_d_r0_inferred__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[16]_0\(4),
      I1 => \^word_aligned_data_r_reg[16]_0\(6),
      I2 => \^word_aligned_data_r_reg[16]_0\(7),
      I3 => \^word_aligned_data_r_reg[16]_0\(5),
      O => \rx_v_d_r0_inferred__2/i__n_0\
    );
\rx_v_d_r0_inferred__3/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(2),
      I1 => \^word_aligned_data_r_reg[8]_0\(1),
      I2 => \^word_aligned_data_r_reg[8]_0\(3),
      I3 => \^word_aligned_data_r_reg[8]_0\(0),
      O => \rx_v_d_r0_inferred__3/i__n_0\
    );
\rx_v_d_r0_inferred__4/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^word_aligned_data_r_reg[8]_0\(4),
      I1 => \^word_aligned_data_r_reg[8]_0\(6),
      I2 => \^word_aligned_data_r_reg[8]_0\(7),
      I3 => \^word_aligned_data_r_reg[8]_0\(5),
      O => \rx_v_d_r0__0\
    );
\rx_v_d_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_v_d_r0__0\,
      Q => rx_v_d_r(2),
      R => '0'
    );
\rx_v_d_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_v_d_r0_inferred__3/i__n_0\,
      Q => rx_v_d_r(3),
      R => '0'
    );
\rx_v_d_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_v_d_r0_inferred__2/i__n_0\,
      Q => rx_v_d_r(4),
      R => '0'
    );
\rx_v_d_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_v_d_r0_inferred__1/i__n_0\,
      Q => rx_v_d_r(5),
      R => '0'
    );
\rx_v_d_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \rx_v_d_r0_inferred__0/i__n_0\,
      Q => rx_v_d_r(6),
      R => '0'
    );
\rx_v_d_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => rx_v_d_r0_n_0,
      Q => rx_v_d_r(7),
      R => '0'
    );
stage_1_pad_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_pad_striped_i(1),
      I1 => rx_pad_striped_i(0),
      O => \RX_PAD_reg[1]_0\
    );
\word_aligned_control_bits_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => previous_cycle_control_r(2),
      I1 => previous_cycle_control_r(1),
      I2 => RXCHARISK(0),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_control_r_reg[0]_0\(0),
      O => \word_aligned_control_bits_r[0]_i_1_n_0\
    );
\word_aligned_control_bits_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXCHARISK(1),
      I1 => previous_cycle_control_r(1),
      I2 => RXCHARISK(0),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_control_r_reg[0]_0\(0),
      O => \word_aligned_control_bits_r[1]_i_1_n_0\
    );
\word_aligned_control_bits_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_control_bits_r[0]_i_1_n_0\,
      Q => word_aligned_control_bits_r(0),
      R => '0'
    );
\word_aligned_control_bits_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_control_bits_r[1]_i_1_n_0\,
      Q => word_aligned_control_bits_r(1),
      R => '0'
    );
\word_aligned_control_bits_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_control_bits_r_reg[2]_0\,
      Q => word_aligned_control_bits_r(2),
      R => '0'
    );
\word_aligned_control_bits_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_control_bits_r_reg[3]_0\,
      Q => word_aligned_control_bits_r(3),
      R => '0'
    );
\word_aligned_data_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(7),
      I1 => \previous_cycle_data_r_reg_n_0_[23]\,
      I2 => \^previous_cycle_data_r_reg[7]_0\(5),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => p_2_in(7),
      O => \word_aligned_data_r[0]_i_1_n_0\
    );
\word_aligned_data_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => RXDATA(13),
      I1 => p_2_in(5),
      I2 => \previous_cycle_data_r_reg_n_0_[5]\,
      I3 => \^left_align_select_r_reg[0]_0\,
      I4 => \^left_align_select_r_reg[1]_0\,
      I5 => RXDATA(5),
      O => \word_aligned_data_r[10]_i_1_n_0\
    );
\word_aligned_data_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => p_2_in(4),
      I1 => RXDATA(4),
      I2 => RXDATA(12),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \previous_cycle_data_r_reg_n_0_[4]\,
      O => \word_aligned_data_r[11]_i_1_n_0\
    );
\word_aligned_data_r[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(11),
      I1 => p_2_in(3),
      I2 => RXDATA(3),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(3),
      O => \word_aligned_data_r[12]_i_1_n_0\
    );
\word_aligned_data_r[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(10),
      I1 => p_2_in(2),
      I2 => RXDATA(2),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(2),
      O => \word_aligned_data_r[13]_i_1_n_0\
    );
\word_aligned_data_r[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(9),
      I1 => p_2_in(1),
      I2 => RXDATA(1),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(1),
      O => \word_aligned_data_r[14]_i_1_n_0\
    );
\word_aligned_data_r[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => RXDATA(8),
      I1 => p_2_in(0),
      I2 => \^previous_cycle_data_r_reg[7]_0\(0),
      I3 => \^left_align_select_r_reg[0]_0\,
      I4 => \^left_align_select_r_reg[1]_0\,
      I5 => RXDATA(0),
      O => \word_aligned_data_r[15]_i_1_n_0\
    );
\word_aligned_data_r[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \previous_cycle_data_r_reg_n_0_[5]\,
      I1 => RXDATA(5),
      I2 => RXDATA(21),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => RXDATA(13),
      O => \word_aligned_data_r[18]_i_1_n_0\
    );
\word_aligned_data_r[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \previous_cycle_data_r_reg_n_0_[4]\,
      I1 => RXDATA(12),
      I2 => RXDATA(20),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => RXDATA(4),
      O => \word_aligned_data_r[19]_i_1_n_0\
    );
\word_aligned_data_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(6),
      I1 => \previous_cycle_data_r_reg_n_0_[22]\,
      I2 => \^previous_cycle_data_r_reg[7]_0\(4),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => p_2_in(6),
      O => \word_aligned_data_r[1]_i_1_n_0\
    );
\word_aligned_data_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(5),
      I1 => \previous_cycle_data_r_reg_n_0_[21]\,
      I2 => \previous_cycle_data_r_reg_n_0_[5]\,
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => p_2_in(5),
      O => \word_aligned_data_r[2]_i_1_n_0\
    );
\word_aligned_data_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => RXDATA(4),
      I1 => \previous_cycle_data_r_reg_n_0_[20]\,
      I2 => p_2_in(4),
      I3 => \^left_align_select_r_reg[0]_0\,
      I4 => \^left_align_select_r_reg[1]_0\,
      I5 => \previous_cycle_data_r_reg_n_0_[4]\,
      O => \word_aligned_data_r[3]_i_1_n_0\
    );
\word_aligned_data_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => RXDATA(3),
      I1 => \previous_cycle_data_r_reg_n_0_[19]\,
      I2 => p_2_in(3),
      I3 => \^left_align_select_r_reg[0]_0\,
      I4 => \^left_align_select_r_reg[1]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(3),
      O => \word_aligned_data_r[4]_i_1_n_0\
    );
\word_aligned_data_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(2),
      I1 => \previous_cycle_data_r_reg_n_0_[18]\,
      I2 => \^previous_cycle_data_r_reg[7]_0\(2),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => p_2_in(2),
      O => \word_aligned_data_r[5]_i_1_n_0\
    );
\word_aligned_data_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \previous_cycle_data_r_reg_n_0_[17]\,
      I1 => p_2_in(1),
      I2 => RXDATA(1),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(1),
      O => \word_aligned_data_r[6]_i_1_n_0\
    );
\word_aligned_data_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => RXDATA(0),
      I1 => \previous_cycle_data_r_reg_n_0_[16]\,
      I2 => p_2_in(0),
      I3 => \^left_align_select_r_reg[0]_0\,
      I4 => \^left_align_select_r_reg[1]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(0),
      O => \word_aligned_data_r[7]_i_1_n_0\
    );
\word_aligned_data_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(15),
      I1 => p_2_in(7),
      I2 => RXDATA(7),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(5),
      O => \word_aligned_data_r[8]_i_1_n_0\
    );
\word_aligned_data_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => RXDATA(14),
      I1 => p_2_in(6),
      I2 => RXDATA(6),
      I3 => \^left_align_select_r_reg[1]_0\,
      I4 => \^left_align_select_r_reg[0]_0\,
      I5 => \^previous_cycle_data_r_reg[7]_0\(4),
      O => \word_aligned_data_r[9]_i_1_n_0\
    );
\word_aligned_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[0]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(7),
      R => '0'
    );
\word_aligned_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[10]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(5),
      R => '0'
    );
\word_aligned_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[11]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(4),
      R => '0'
    );
\word_aligned_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[12]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(3),
      R => '0'
    );
\word_aligned_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[13]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(2),
      R => '0'
    );
\word_aligned_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[14]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(1),
      R => '0'
    );
\word_aligned_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[15]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(0),
      R => '0'
    );
\word_aligned_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[16]_1\(5),
      Q => \^word_aligned_data_r_reg[16]_0\(7),
      R => '0'
    );
\word_aligned_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[16]_1\(4),
      Q => \^word_aligned_data_r_reg[16]_0\(6),
      R => '0'
    );
\word_aligned_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[18]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[16]_0\(5),
      R => '0'
    );
\word_aligned_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[19]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[16]_0\(4),
      R => '0'
    );
\word_aligned_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[1]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(6),
      R => '0'
    );
\word_aligned_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[16]_1\(3),
      Q => \^word_aligned_data_r_reg[16]_0\(3),
      R => '0'
    );
\word_aligned_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[16]_1\(2),
      Q => \^word_aligned_data_r_reg[16]_0\(2),
      R => '0'
    );
\word_aligned_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[16]_1\(1),
      Q => \^word_aligned_data_r_reg[16]_0\(1),
      R => '0'
    );
\word_aligned_data_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[16]_1\(0),
      Q => \^word_aligned_data_r_reg[16]_0\(0),
      R => '0'
    );
\word_aligned_data_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(7),
      Q => \^word_aligned_data_r_reg[24]_0\(7),
      R => '0'
    );
\word_aligned_data_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(6),
      Q => \^word_aligned_data_r_reg[24]_0\(6),
      R => '0'
    );
\word_aligned_data_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(5),
      Q => \^word_aligned_data_r_reg[24]_0\(5),
      R => '0'
    );
\word_aligned_data_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(4),
      Q => \^word_aligned_data_r_reg[24]_0\(4),
      R => '0'
    );
\word_aligned_data_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(3),
      Q => \^word_aligned_data_r_reg[24]_0\(3),
      R => '0'
    );
\word_aligned_data_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(2),
      Q => \^word_aligned_data_r_reg[24]_0\(2),
      R => '0'
    );
\word_aligned_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[2]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(5),
      R => '0'
    );
\word_aligned_data_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(1),
      Q => \^word_aligned_data_r_reg[24]_0\(1),
      R => '0'
    );
\word_aligned_data_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r_reg[24]_1\(0),
      Q => \^word_aligned_data_r_reg[24]_0\(0),
      R => '0'
    );
\word_aligned_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[3]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(4),
      R => '0'
    );
\word_aligned_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[4]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(3),
      R => '0'
    );
\word_aligned_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[5]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(2),
      R => '0'
    );
\word_aligned_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[6]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(1),
      R => '0'
    );
\word_aligned_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[7]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[0]_0\(0),
      R => '0'
    );
\word_aligned_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[8]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(7),
      R => '0'
    );
\word_aligned_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \rx_cc_r_reg[1]_0\,
      CE => '1',
      D => \word_aligned_data_r[9]_i_1_n_0\,
      Q => \^word_aligned_data_r_reg[8]_0\(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE is
  port (
    gen_spa_r : out STD_LOGIC;
    TXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gen_spa_i : in STD_LOGIC;
    \TX_DATA_reg[0]_0\ : in STD_LOGIC;
    GEN_SP : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    gen_ecp_i : in STD_LOGIC;
    gen_scp_striped_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gen_a_i : in STD_LOGIC;
    \tx_pe_data_v_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pad_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_v_r_reg[1]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_r_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_k_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_pe_data_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE : entity is "aurora_8b10b_0_SYM_GEN_4BYTE";
end aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE is
  signal \^txdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \TX_CHAR_IS_K[3]_i_1_n_0\ : STD_LOGIC;
  signal TX_CHAR_IS_K_reg0 : STD_LOGIC;
  signal TX_CHAR_IS_K_reg03_out : STD_LOGIC;
  signal TX_CHAR_IS_K_reg08_out : STD_LOGIC;
  signal \TX_DATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[0]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[10]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[10]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[12]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[13]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[14]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[14]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[14]_i_4_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[15]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[18]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[18]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[20]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[21]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[22]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[23]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[23]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[23]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[24]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[25]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[26]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[27]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[28]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[29]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[2]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[30]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[30]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[30]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[31]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[31]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[4]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[5]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[6]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[7]_i_2_n_0\ : STD_LOGIC;
  signal \TX_DATA[7]_i_3_n_0\ : STD_LOGIC;
  signal \TX_DATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[9]_i_1_n_0\ : STD_LOGIC;
  signal \TX_DATA[9]_i_2_n_0\ : STD_LOGIC;
  signal TX_DATA_reg0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gen_a_r : STD_LOGIC;
  signal gen_cc_r : STD_LOGIC;
  signal \gen_ecp_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_k_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_pad_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_r_r_reg_n_0_[3]\ : STD_LOGIC;
  signal gen_sp_r : STD_LOGIC;
  signal \^gen_spa_r\ : STD_LOGIC;
  signal \gen_v_r_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in12_in : STD_LOGIC;
  signal p_0_in14_in : STD_LOGIC;
  signal p_0_in16_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in11_in : STD_LOGIC;
  signal p_1_in16_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[10]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[11]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[12]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[13]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[14]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[15]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[24]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[25]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[26]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[27]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[28]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[29]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[30]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[31]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[5]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[6]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[7]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[8]\ : STD_LOGIC;
  signal \tx_pe_data_r_reg_n_0_[9]\ : STD_LOGIC;
  signal \tx_pe_data_v_r_reg_n_0_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \TX_DATA[10]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \TX_DATA[10]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \TX_DATA[11]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \TX_DATA[12]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \TX_DATA[14]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \TX_DATA[14]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \TX_DATA[24]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \TX_DATA[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \TX_DATA[30]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \TX_DATA[30]_i_3\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \TX_DATA[31]_i_3\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \TX_DATA[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \TX_DATA[9]_i_2\ : label is "soft_lutpair36";
begin
  TXDATA(31 downto 0) <= \^txdata\(31 downto 0);
  gen_spa_r <= \^gen_spa_r\;
\TX_CHAR_IS_K[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000000B"
    )
        port map (
      I0 => \gen_pad_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => \gen_v_r_reg_n_0_[3]\,
      I3 => \^gen_spa_r\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => TX_CHAR_IS_K_reg0
    );
\TX_CHAR_IS_K[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => p_1_in,
      I2 => \^gen_spa_r\,
      I3 => gen_sp_r,
      I4 => gen_cc_r,
      O => TX_CHAR_IS_K_reg03_out
    );
\TX_CHAR_IS_K[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000000B"
    )
        port map (
      I0 => p_0_in12_in,
      I1 => p_1_in11_in,
      I2 => p_1_in5_in,
      I3 => \^gen_spa_r\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => TX_CHAR_IS_K_reg08_out
    );
\TX_CHAR_IS_K[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => gen_cc_r,
      I1 => p_1_in11_in,
      O => \TX_CHAR_IS_K[3]_i_1_n_0\
    );
\TX_CHAR_IS_K_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => TX_CHAR_IS_K_reg0,
      Q => TXCHARISK(3),
      R => '0'
    );
\TX_CHAR_IS_K_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => TX_CHAR_IS_K_reg03_out,
      Q => TXCHARISK(2),
      R => '0'
    );
\TX_CHAR_IS_K_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => TX_CHAR_IS_K_reg08_out,
      Q => TXCHARISK(1),
      R => '0'
    );
\TX_CHAR_IS_K_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \TX_CHAR_IS_K[3]_i_1_n_0\,
      Q => TXCHARISK(0),
      R => '0'
    );
\TX_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \TX_DATA[0]_i_2_n_0\,
      I1 => TX_DATA_reg0,
      I2 => \^txdata\(24),
      O => \TX_DATA[0]_i_1_n_0\
    );
\TX_DATA[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000044E4"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => gen_cc_r,
      I2 => \tx_pe_data_r_reg_n_0_[31]\,
      I3 => \gen_pad_r_reg_n_0_[1]\,
      I4 => \gen_ecp_r_reg_n_0_[1]\,
      O => \TX_DATA[0]_i_2_n_0\
    );
\TX_DATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBB88B888"
    )
        port map (
      I0 => data0(2),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => p_0_in4_in,
      I3 => \TX_DATA[10]_i_2_n_0\,
      I4 => p_0_in,
      I5 => \TX_DATA[10]_i_3_n_0\,
      O => \TX_DATA[10]_i_1_n_0\
    );
\TX_DATA[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0FB"
    )
        port map (
      I0 => \^gen_spa_r\,
      I1 => p_1_in,
      I2 => gen_cc_r,
      I3 => gen_sp_r,
      O => \TX_DATA[10]_i_2_n_0\
    );
\TX_DATA[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => gen_sp_r,
      I1 => \^gen_spa_r\,
      I2 => gen_cc_r,
      O => \TX_DATA[10]_i_3_n_0\
    );
\TX_DATA[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAEF"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => data0(3),
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => gen_cc_r,
      O => \TX_DATA[11]_i_1_n_0\
    );
\TX_DATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBB88B888"
    )
        port map (
      I0 => data0(4),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => p_0_in4_in,
      I3 => \TX_DATA[12]_i_2_n_0\,
      I4 => p_0_in,
      I5 => gen_cc_r,
      O => \TX_DATA[12]_i_1_n_0\
    );
\TX_DATA[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => p_1_in,
      I1 => \^gen_spa_r\,
      I2 => gen_sp_r,
      I3 => gen_cc_r,
      O => \TX_DATA[12]_i_2_n_0\
    );
\TX_DATA[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => data0(5),
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => \TX_DATA[13]_i_2_n_0\,
      O => \TX_DATA[13]_i_1_n_0\
    );
\TX_DATA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFFEFF"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_1_in,
      I2 => \^gen_spa_r\,
      I3 => p_0_in,
      I4 => gen_cc_r,
      I5 => gen_sp_r,
      O => \TX_DATA[13]_i_2_n_0\
    );
\TX_DATA[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \TX_DATA[15]_i_1_n_0\,
      O => \TX_DATA[14]_i_1_n_0\
    );
\TX_DATA[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBB88B888"
    )
        port map (
      I0 => data0(6),
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => p_0_in4_in,
      I3 => \TX_DATA[14]_i_3_n_0\,
      I4 => p_0_in,
      I5 => \TX_DATA[14]_i_4_n_0\,
      O => \TX_DATA[14]_i_2_n_0\
    );
\TX_DATA[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \^gen_spa_r\,
      I1 => p_1_in,
      I2 => gen_sp_r,
      I3 => gen_cc_r,
      O => \TX_DATA[14]_i_3_n_0\
    );
\TX_DATA[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^gen_spa_r\,
      I1 => gen_sp_r,
      I2 => gen_cc_r,
      O => \TX_DATA[14]_i_4_n_0\
    );
\TX_DATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => p_0_in,
      I2 => \TX_DATA[31]_i_3_n_0\,
      I3 => p_1_in,
      I4 => p_0_in4_in,
      I5 => \gen_ecp_r_reg_n_0_[1]\,
      O => \TX_DATA[15]_i_1_n_0\
    );
\TX_DATA[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => data0(7),
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => \TX_DATA[15]_i_3_n_0\,
      O => \TX_DATA[15]_i_2_n_0\
    );
\TX_DATA[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000EF"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_1_in,
      I2 => p_0_in,
      I3 => \^gen_spa_r\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => \TX_DATA[15]_i_3_n_0\
    );
\TX_DATA[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABAFFAA"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => p_0_in12_in,
      I2 => \tx_pe_data_r_reg_n_0_[15]\,
      I3 => gen_cc_r,
      I4 => p_1_in11_in,
      O => \TX_DATA[16]_i_1_n_0\
    );
\TX_DATA[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEFFAEFFAEAA"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \tx_pe_data_r_reg_n_0_[14]\,
      I2 => p_0_in12_in,
      I3 => p_1_in11_in,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => \TX_DATA[17]_i_1_n_0\
    );
\TX_DATA[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \TX_DATA[18]_i_2_n_0\,
      I1 => \TX_DATA[23]_i_1_n_0\,
      I2 => \^txdata\(10),
      O => \TX_DATA[18]_i_1_n_0\
    );
\TX_DATA[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE2"
    )
        port map (
      I0 => \TX_DATA[18]_i_3_n_0\,
      I1 => p_1_in11_in,
      I2 => p_0_in12_in,
      I3 => \tx_pe_data_r_reg_n_0_[13]\,
      I4 => p_1_in16_in,
      O => \TX_DATA[18]_i_2_n_0\
    );
\TX_DATA[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FF0032"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_1_in5_in,
      I2 => p_0_in6_in,
      I3 => gen_sp_r,
      I4 => \^gen_spa_r\,
      I5 => gen_cc_r,
      O => \TX_DATA[18]_i_3_n_0\
    );
\TX_DATA[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAFEFF"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \tx_pe_data_r_reg_n_0_[12]\,
      I2 => p_0_in12_in,
      I3 => p_1_in11_in,
      I4 => gen_cc_r,
      O => \TX_DATA[19]_i_1_n_0\
    );
\TX_DATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFAEFFAEFFAEAA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_r_reg_n_0_[30]\,
      I2 => \gen_pad_r_reg_n_0_[1]\,
      I3 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => \TX_DATA[1]_i_1_n_0\
    );
\TX_DATA[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEAA"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \tx_pe_data_r_reg_n_0_[11]\,
      I2 => p_0_in12_in,
      I3 => p_1_in11_in,
      I4 => \TX_DATA[20]_i_2_n_0\,
      O => \TX_DATA[20]_i_1_n_0\
    );
\TX_DATA[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_1_in5_in,
      I2 => \^gen_spa_r\,
      I3 => gen_sp_r,
      I4 => p_0_in6_in,
      I5 => gen_cc_r,
      O => \TX_DATA[20]_i_2_n_0\
    );
\TX_DATA[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAA"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \tx_pe_data_r_reg_n_0_[10]\,
      I2 => p_0_in12_in,
      I3 => p_1_in11_in,
      I4 => \TX_DATA[21]_i_2_n_0\,
      O => \TX_DATA[21]_i_1_n_0\
    );
\TX_DATA[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFFEFF"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_1_in5_in,
      I2 => \^gen_spa_r\,
      I3 => p_0_in6_in,
      I4 => gen_cc_r,
      I5 => gen_sp_r,
      O => \TX_DATA[21]_i_2_n_0\
    );
\TX_DATA[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAA"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \tx_pe_data_r_reg_n_0_[9]\,
      I2 => p_0_in12_in,
      I3 => p_1_in11_in,
      I4 => \TX_DATA[22]_i_2_n_0\,
      O => \TX_DATA[22]_i_1_n_0\
    );
\TX_DATA[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00CD"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_1_in5_in,
      I2 => p_0_in6_in,
      I3 => \^gen_spa_r\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => \TX_DATA[22]_i_2_n_0\
    );
\TX_DATA[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => p_0_in6_in,
      I2 => \TX_DATA[31]_i_3_n_0\,
      I3 => p_1_in5_in,
      I4 => p_0_in8_in,
      I5 => p_1_in16_in,
      O => \TX_DATA[23]_i_1_n_0\
    );
\TX_DATA[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEAA"
    )
        port map (
      I0 => p_1_in16_in,
      I1 => \tx_pe_data_r_reg_n_0_[8]\,
      I2 => p_0_in12_in,
      I3 => p_1_in11_in,
      I4 => \TX_DATA[23]_i_3_n_0\,
      O => \TX_DATA[23]_i_2_n_0\
    );
\TX_DATA[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000EF"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_1_in5_in,
      I2 => p_0_in6_in,
      I3 => \^gen_spa_r\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => \TX_DATA[23]_i_3_n_0\
    );
\TX_DATA[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[7]\,
      I1 => p_1_in11_in,
      I2 => gen_cc_r,
      O => \TX_DATA[24]_i_1_n_0\
    );
\TX_DATA[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[6]\,
      I1 => p_1_in11_in,
      I2 => gen_cc_r,
      O => \TX_DATA[25]_i_1_n_0\
    );
\TX_DATA[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[5]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => \TX_DATA[31]_i_3_n_0\,
      I4 => gen_a_r,
      I5 => p_0_in14_in,
      O => \TX_DATA[26]_i_1_n_0\
    );
\TX_DATA[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[4]\,
      I1 => p_1_in11_in,
      I2 => gen_cc_r,
      O => \TX_DATA[27]_i_1_n_0\
    );
\TX_DATA[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[3]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => \TX_DATA[31]_i_3_n_0\,
      I4 => gen_a_r,
      I5 => p_0_in14_in,
      O => \TX_DATA[28]_i_1_n_0\
    );
\TX_DATA[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB8BBBBBBBB"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[2]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => \TX_DATA[31]_i_3_n_0\,
      I4 => gen_a_r,
      I5 => p_0_in14_in,
      O => \TX_DATA[29]_i_1_n_0\
    );
\TX_DATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEAA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_r_reg_n_0_[29]\,
      I2 => \gen_pad_r_reg_n_0_[1]\,
      I3 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I4 => \TX_DATA[2]_i_2_n_0\,
      O => \TX_DATA[2]_i_1_n_0\
    );
\TX_DATA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00FF0032"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[3]\,
      I1 => \gen_v_r_reg_n_0_[3]\,
      I2 => \gen_r_r_reg_n_0_[3]\,
      I3 => gen_sp_r,
      I4 => \^gen_spa_r\,
      I5 => gen_cc_r,
      O => \TX_DATA[2]_i_2_n_0\
    );
\TX_DATA[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB8BBB88B888"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[1]\,
      I1 => p_1_in11_in,
      I2 => p_0_in14_in,
      I3 => \TX_DATA[30]_i_2_n_0\,
      I4 => p_0_in16_in,
      I5 => \TX_DATA[30]_i_3_n_0\,
      O => \TX_DATA[30]_i_1_n_0\
    );
\TX_DATA[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \^gen_spa_r\,
      I1 => gen_sp_r,
      I2 => gen_a_r,
      I3 => gen_cc_r,
      O => \TX_DATA[30]_i_2_n_0\
    );
\TX_DATA[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \^gen_spa_r\,
      I1 => gen_sp_r,
      I2 => gen_cc_r,
      O => \TX_DATA[30]_i_3_n_0\
    );
\TX_DATA[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_1_in11_in,
      I1 => p_0_in16_in,
      I2 => \TX_DATA[31]_i_3_n_0\,
      I3 => gen_a_r,
      I4 => p_0_in14_in,
      I5 => p_1_in16_in,
      O => \TX_DATA[31]_i_1_n_0\
    );
\TX_DATA[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB8888BBBBB8BB"
    )
        port map (
      I0 => \tx_pe_data_r_reg_n_0_[0]\,
      I1 => p_1_in11_in,
      I2 => p_0_in16_in,
      I3 => p_0_in14_in,
      I4 => \TX_DATA[31]_i_3_n_0\,
      I5 => gen_a_r,
      O => \TX_DATA[31]_i_2_n_0\
    );
\TX_DATA[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gen_sp_r,
      I1 => \^gen_spa_r\,
      I2 => gen_cc_r,
      O => \TX_DATA[31]_i_3_n_0\
    );
\TX_DATA[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAAFEFF"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_r_reg_n_0_[28]\,
      I2 => \gen_pad_r_reg_n_0_[1]\,
      I3 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I4 => gen_cc_r,
      O => \TX_DATA[3]_i_1_n_0\
    );
\TX_DATA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEAA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_r_reg_n_0_[27]\,
      I2 => \gen_pad_r_reg_n_0_[1]\,
      I3 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I4 => \TX_DATA[4]_i_2_n_0\,
      O => \TX_DATA[4]_i_1_n_0\
    );
\TX_DATA[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[3]\,
      I1 => \gen_v_r_reg_n_0_[3]\,
      I2 => \^gen_spa_r\,
      I3 => gen_sp_r,
      I4 => \gen_r_r_reg_n_0_[3]\,
      I5 => gen_cc_r,
      O => \TX_DATA[4]_i_2_n_0\
    );
\TX_DATA[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_r_reg_n_0_[26]\,
      I2 => \gen_pad_r_reg_n_0_[1]\,
      I3 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I4 => \TX_DATA[5]_i_2_n_0\,
      O => \TX_DATA[5]_i_1_n_0\
    );
\TX_DATA[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FFFFFEFF"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[3]\,
      I1 => \gen_v_r_reg_n_0_[3]\,
      I2 => \^gen_spa_r\,
      I3 => \gen_r_r_reg_n_0_[3]\,
      I4 => gen_cc_r,
      I5 => gen_sp_r,
      O => \TX_DATA[5]_i_2_n_0\
    );
\TX_DATA[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_r_reg_n_0_[25]\,
      I2 => \gen_pad_r_reg_n_0_[1]\,
      I3 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I4 => \TX_DATA[6]_i_2_n_0\,
      O => \TX_DATA[6]_i_1_n_0\
    );
\TX_DATA[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00CD"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[3]\,
      I1 => \gen_v_r_reg_n_0_[3]\,
      I2 => \gen_r_r_reg_n_0_[3]\,
      I3 => \^gen_spa_r\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => \TX_DATA[6]_i_2_n_0\
    );
\TX_DATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I1 => \gen_r_r_reg_n_0_[3]\,
      I2 => \TX_DATA[31]_i_3_n_0\,
      I3 => \gen_v_r_reg_n_0_[3]\,
      I4 => \gen_k_r_reg_n_0_[3]\,
      I5 => \gen_ecp_r_reg_n_0_[1]\,
      O => TX_DATA_reg0
    );
\TX_DATA[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEAA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => \tx_pe_data_r_reg_n_0_[24]\,
      I2 => \gen_pad_r_reg_n_0_[1]\,
      I3 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I4 => \TX_DATA[7]_i_3_n_0\,
      O => \TX_DATA[7]_i_2_n_0\
    );
\TX_DATA[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000EF"
    )
        port map (
      I0 => \gen_k_r_reg_n_0_[3]\,
      I1 => \gen_v_r_reg_n_0_[3]\,
      I2 => \gen_r_r_reg_n_0_[3]\,
      I3 => \^gen_spa_r\,
      I4 => gen_sp_r,
      I5 => gen_cc_r,
      O => \TX_DATA[7]_i_3_n_0\
    );
\TX_DATA[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
        port map (
      I0 => \gen_ecp_r_reg_n_0_[1]\,
      I1 => data0(0),
      I2 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I3 => gen_cc_r,
      O => \TX_DATA[8]_i_1_n_0\
    );
\TX_DATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \TX_DATA[9]_i_2_n_0\,
      I1 => \tx_pe_data_v_r_reg_n_0_[1]\,
      I2 => data0(1),
      I3 => \gen_ecp_r_reg_n_0_[1]\,
      I4 => \TX_DATA[15]_i_1_n_0\,
      I5 => \^txdata\(17),
      O => \TX_DATA[9]_i_1_n_0\
    );
\TX_DATA[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gen_sp_r,
      I1 => gen_cc_r,
      O => \TX_DATA[9]_i_2_n_0\
    );
\TX_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \TX_DATA[0]_i_1_n_0\,
      Q => \^txdata\(24),
      R => '0'
    );
\TX_DATA_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[10]_i_1_n_0\,
      Q => \^txdata\(18),
      S => \TX_DATA[14]_i_1_n_0\
    );
\TX_DATA_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[11]_i_1_n_0\,
      Q => \^txdata\(19),
      S => '0'
    );
\TX_DATA_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[12]_i_1_n_0\,
      Q => \^txdata\(20),
      S => \TX_DATA[14]_i_1_n_0\
    );
\TX_DATA_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[13]_i_1_n_0\,
      Q => \^txdata\(21),
      S => '0'
    );
\TX_DATA_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[14]_i_2_n_0\,
      Q => \^txdata\(22),
      S => \TX_DATA[14]_i_1_n_0\
    );
\TX_DATA_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[15]_i_2_n_0\,
      Q => \^txdata\(23),
      S => '0'
    );
\TX_DATA_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[23]_i_1_n_0\,
      D => \TX_DATA[16]_i_1_n_0\,
      Q => \^txdata\(8),
      S => '0'
    );
\TX_DATA_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[23]_i_1_n_0\,
      D => \TX_DATA[17]_i_1_n_0\,
      Q => \^txdata\(9),
      S => '0'
    );
\TX_DATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \TX_DATA[18]_i_1_n_0\,
      Q => \^txdata\(10),
      R => '0'
    );
\TX_DATA_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[23]_i_1_n_0\,
      D => \TX_DATA[19]_i_1_n_0\,
      Q => \^txdata\(11),
      S => '0'
    );
\TX_DATA_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => TX_DATA_reg0,
      D => \TX_DATA[1]_i_1_n_0\,
      Q => \^txdata\(25),
      S => '0'
    );
\TX_DATA_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[23]_i_1_n_0\,
      D => \TX_DATA[20]_i_1_n_0\,
      Q => \^txdata\(12),
      S => '0'
    );
\TX_DATA_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[23]_i_1_n_0\,
      D => \TX_DATA[21]_i_1_n_0\,
      Q => \^txdata\(13),
      S => '0'
    );
\TX_DATA_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[23]_i_1_n_0\,
      D => \TX_DATA[22]_i_1_n_0\,
      Q => \^txdata\(14),
      S => '0'
    );
\TX_DATA_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[23]_i_1_n_0\,
      D => \TX_DATA[23]_i_2_n_0\,
      Q => \^txdata\(15),
      S => '0'
    );
\TX_DATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[24]_i_1_n_0\,
      Q => \^txdata\(0),
      R => p_1_in16_in
    );
\TX_DATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[25]_i_1_n_0\,
      Q => \^txdata\(1),
      R => p_1_in16_in
    );
\TX_DATA_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[26]_i_1_n_0\,
      Q => \^txdata\(2),
      S => p_1_in16_in
    );
\TX_DATA_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[27]_i_1_n_0\,
      Q => \^txdata\(3),
      S => p_1_in16_in
    );
\TX_DATA_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[28]_i_1_n_0\,
      Q => \^txdata\(4),
      S => p_1_in16_in
    );
\TX_DATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[29]_i_1_n_0\,
      Q => \^txdata\(5),
      R => p_1_in16_in
    );
\TX_DATA_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => TX_DATA_reg0,
      D => \TX_DATA[2]_i_1_n_0\,
      Q => \^txdata\(26),
      S => '0'
    );
\TX_DATA_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[30]_i_1_n_0\,
      Q => \^txdata\(6),
      S => p_1_in16_in
    );
\TX_DATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[31]_i_1_n_0\,
      D => \TX_DATA[31]_i_2_n_0\,
      Q => \^txdata\(7),
      R => p_1_in16_in
    );
\TX_DATA_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => TX_DATA_reg0,
      D => \TX_DATA[3]_i_1_n_0\,
      Q => \^txdata\(27),
      S => '0'
    );
\TX_DATA_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => TX_DATA_reg0,
      D => \TX_DATA[4]_i_1_n_0\,
      Q => \^txdata\(28),
      S => '0'
    );
\TX_DATA_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => TX_DATA_reg0,
      D => \TX_DATA[5]_i_1_n_0\,
      Q => \^txdata\(29),
      S => '0'
    );
\TX_DATA_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => TX_DATA_reg0,
      D => \TX_DATA[6]_i_1_n_0\,
      Q => \^txdata\(30),
      S => '0'
    );
\TX_DATA_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => TX_DATA_reg0,
      D => \TX_DATA[7]_i_2_n_0\,
      Q => \^txdata\(31),
      S => '0'
    );
\TX_DATA_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => \TX_DATA[15]_i_1_n_0\,
      D => \TX_DATA[8]_i_1_n_0\,
      Q => \^txdata\(16),
      S => '0'
    );
\TX_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \TX_DATA[9]_i_1_n_0\,
      Q => \^txdata\(17),
      R => '0'
    );
gen_a_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => gen_a_i,
      Q => gen_a_r,
      R => '0'
    );
gen_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => gen_cc_i,
      Q => gen_cc_r,
      R => '0'
    );
\gen_ecp_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => gen_ecp_i,
      Q => \gen_ecp_r_reg_n_0_[1]\,
      R => '0'
    );
\gen_k_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_k_r_reg[0]_0\(3),
      Q => p_0_in16_in,
      R => '0'
    );
\gen_k_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_k_r_reg[0]_0\(2),
      Q => p_0_in8_in,
      R => '0'
    );
\gen_k_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_k_r_reg[0]_0\(1),
      Q => p_0_in4_in,
      R => '0'
    );
\gen_k_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_k_r_reg[0]_0\(0),
      Q => \gen_k_r_reg_n_0_[3]\,
      R => '0'
    );
\gen_pad_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_pad_r_reg[0]_0\(1),
      Q => p_0_in12_in,
      R => '0'
    );
\gen_pad_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_pad_r_reg[0]_0\(0),
      Q => \gen_pad_r_reg_n_0_[1]\,
      R => '0'
    );
\gen_r_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_r_r_reg[0]_0\(3),
      Q => p_0_in14_in,
      R => '0'
    );
\gen_r_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_r_r_reg[0]_0\(2),
      Q => p_0_in6_in,
      R => '0'
    );
\gen_r_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_r_r_reg[0]_0\(1),
      Q => p_0_in,
      R => '0'
    );
\gen_r_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_r_r_reg[0]_0\(0),
      Q => \gen_r_r_reg_n_0_[3]\,
      R => '0'
    );
\gen_scp_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => gen_scp_striped_i(0),
      Q => p_1_in16_in,
      R => '0'
    );
gen_sp_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => GEN_SP,
      Q => gen_sp_r,
      R => '0'
    );
gen_spa_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => gen_spa_i,
      Q => \^gen_spa_r\,
      R => '0'
    );
\gen_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_v_r_reg[1]_0\(2),
      Q => p_1_in5_in,
      R => '0'
    );
\gen_v_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_v_r_reg[1]_0\(1),
      Q => p_1_in,
      R => '0'
    );
\gen_v_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \gen_v_r_reg[1]_0\(0),
      Q => \gen_v_r_reg_n_0_[3]\,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(31),
      Q => \tx_pe_data_r_reg_n_0_[0]\,
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(21),
      Q => \tx_pe_data_r_reg_n_0_[10]\,
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(20),
      Q => \tx_pe_data_r_reg_n_0_[11]\,
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(19),
      Q => \tx_pe_data_r_reg_n_0_[12]\,
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(18),
      Q => \tx_pe_data_r_reg_n_0_[13]\,
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(17),
      Q => \tx_pe_data_r_reg_n_0_[14]\,
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(16),
      Q => \tx_pe_data_r_reg_n_0_[15]\,
      R => '0'
    );
\tx_pe_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(15),
      Q => data0(7),
      R => '0'
    );
\tx_pe_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(14),
      Q => data0(6),
      R => '0'
    );
\tx_pe_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(13),
      Q => data0(5),
      R => '0'
    );
\tx_pe_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(12),
      Q => data0(4),
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(30),
      Q => \tx_pe_data_r_reg_n_0_[1]\,
      R => '0'
    );
\tx_pe_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(11),
      Q => data0(3),
      R => '0'
    );
\tx_pe_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(10),
      Q => data0(2),
      R => '0'
    );
\tx_pe_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(9),
      Q => data0(1),
      R => '0'
    );
\tx_pe_data_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(8),
      Q => data0(0),
      R => '0'
    );
\tx_pe_data_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(7),
      Q => \tx_pe_data_r_reg_n_0_[24]\,
      R => '0'
    );
\tx_pe_data_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(6),
      Q => \tx_pe_data_r_reg_n_0_[25]\,
      R => '0'
    );
\tx_pe_data_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(5),
      Q => \tx_pe_data_r_reg_n_0_[26]\,
      R => '0'
    );
\tx_pe_data_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(4),
      Q => \tx_pe_data_r_reg_n_0_[27]\,
      R => '0'
    );
\tx_pe_data_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(3),
      Q => \tx_pe_data_r_reg_n_0_[28]\,
      R => '0'
    );
\tx_pe_data_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(2),
      Q => \tx_pe_data_r_reg_n_0_[29]\,
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(29),
      Q => \tx_pe_data_r_reg_n_0_[2]\,
      R => '0'
    );
\tx_pe_data_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(1),
      Q => \tx_pe_data_r_reg_n_0_[30]\,
      R => '0'
    );
\tx_pe_data_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(0),
      Q => \tx_pe_data_r_reg_n_0_[31]\,
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(28),
      Q => \tx_pe_data_r_reg_n_0_[3]\,
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(27),
      Q => \tx_pe_data_r_reg_n_0_[4]\,
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(26),
      Q => \tx_pe_data_r_reg_n_0_[5]\,
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(25),
      Q => \tx_pe_data_r_reg_n_0_[6]\,
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(24),
      Q => \tx_pe_data_r_reg_n_0_[7]\,
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(23),
      Q => \tx_pe_data_r_reg_n_0_[8]\,
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_r_reg[0]_0\(22),
      Q => \tx_pe_data_r_reg_n_0_[9]\,
      R => '0'
    );
\tx_pe_data_v_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_v_r_reg[0]_0\(1),
      Q => p_1_in11_in,
      R => '0'
    );
\tx_pe_data_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \TX_DATA_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_v_r_reg[0]_0\(0),
      Q => \tx_pe_data_v_r_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL is
  port (
    gen_cc_i : out STD_LOGIC;
    do_cc_r : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    TX_DST_RDY_N_reg_0 : out STD_LOGIC;
    gen_scp_striped_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    gen_ecp_i : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    storage_pad_r0 : out STD_LOGIC;
    storage_v_r0 : out STD_LOGIC;
    s_axi_tx_tlast_0 : out STD_LOGIC;
    GEN_ECP_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    idle_r_reg_0 : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    in_frame_r_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL : entity is "aurora_8b10b_0_TX_LL_CONTROL";
end aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal GEN_ECP0 : STD_LOGIC;
  signal GEN_SCP_i_1_n_0 : STD_LOGIC;
  signal \^tx_dst_rdy_n_reg_0\ : STD_LOGIC;
  signal data_r : STD_LOGIC;
  signal data_to_eof_1_r : STD_LOGIC;
  signal data_to_eof_2_r : STD_LOGIC;
  signal \^do_cc_r\ : STD_LOGIC;
  signal idle_r : STD_LOGIC;
  signal next_data_c : STD_LOGIC;
  signal next_data_to_eof_1_c : STD_LOGIC;
  signal next_idle_c : STD_LOGIC;
  signal next_sof_to_eof_1_c : STD_LOGIC;
  signal sof_to_data_r : STD_LOGIC;
  signal sof_to_data_r_i_1_n_0 : STD_LOGIC;
  signal sof_to_eof_1_r : STD_LOGIC;
  signal sof_to_eof_1_r_i_3_n_0 : STD_LOGIC;
  signal sof_to_eof_2_r : STD_LOGIC;
  signal storage_v_r_i_3_n_0 : STD_LOGIC;
  signal tx_dst_rdy_n_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GEN_ECP_i_1 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of GEN_SCP_i_1 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of data_r_i_1 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of data_to_eof_1_r_i_1 : label is "soft_lutpair83";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gen_cc_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_cc_flop_0_i : label is "FDR";
  attribute SOFT_HLUTNM of in_frame_r_i_1 : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of s_axi_tx_tready_INST_0 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of sof_to_eof_1_r_i_3 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of storage_v_r_i_3 : label is "soft_lutpair84";
begin
  E(0) <= \^e\(0);
  TX_DST_RDY_N_reg_0 <= \^tx_dst_rdy_n_reg_0\;
  do_cc_r <= \^do_cc_r\;
GEN_ECP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_to_eof_2_r,
      I1 => sof_to_eof_2_r,
      I2 => \^do_cc_r\,
      O => GEN_ECP0
    );
GEN_ECP_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => '1',
      D => GEN_ECP0,
      Q => gen_ecp_i,
      R => p_0_in
    );
GEN_SCP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \^do_cc_r\,
      I1 => sof_to_eof_1_r,
      I2 => sof_to_data_r,
      O => GEN_SCP_i_1_n_0
    );
GEN_SCP_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => '1',
      D => GEN_SCP_i_1_n_0,
      Q => gen_scp_striped_i(0),
      R => p_0_in
    );
TX_DST_RDY_N_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFEFFFEFFAEA"
    )
        port map (
      I0 => Q,
      I1 => data_to_eof_1_r,
      I2 => \^do_cc_r\,
      I3 => sof_to_eof_1_r,
      I4 => next_sof_to_eof_1_c,
      I5 => next_data_to_eof_1_c,
      O => tx_dst_rdy_n_c
    );
TX_DST_RDY_N_reg: unisim.vcomponents.FDSE
     port map (
      C => GEN_ECP_reg_0,
      CE => '1',
      D => tx_dst_rdy_n_c,
      Q => \^tx_dst_rdy_n_reg_0\,
      S => p_0_in
    );
data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDFDF00"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => \^tx_dst_rdy_n_reg_0\,
      I2 => s_axi_tx_tvalid,
      I3 => sof_to_data_r,
      I4 => data_r,
      O => next_data_c
    );
data_r_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => \^e\(0),
      D => next_data_c,
      Q => data_r,
      R => p_0_in
    );
data_to_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202000"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => \^tx_dst_rdy_n_reg_0\,
      I2 => s_axi_tx_tvalid,
      I3 => sof_to_data_r,
      I4 => data_r,
      O => next_data_to_eof_1_c
    );
data_to_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => \^e\(0),
      D => next_data_to_eof_1_c,
      Q => data_to_eof_1_r,
      R => p_0_in
    );
data_to_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => \^e\(0),
      D => data_to_eof_1_r,
      Q => data_to_eof_2_r,
      R => p_0_in
    );
do_cc_r_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => '1',
      D => Q,
      Q => \^do_cc_r\,
      R => '0'
    );
gen_cc_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GEN_ECP_reg_0,
      CE => '1',
      D => \^do_cc_r\,
      Q => gen_cc_i,
      R => '0'
    );
\gen_pad_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001160000"
    )
        port map (
      I0 => s_axi_tx_tkeep(3),
      I1 => s_axi_tx_tkeep(0),
      I2 => s_axi_tx_tkeep(1),
      I3 => s_axi_tx_tkeep(2),
      I4 => s_axi_tx_tlast,
      I5 => storage_v_r_i_3_n_0,
      O => D(0)
    );
idle_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFB00"
    )
        port map (
      I0 => \^tx_dst_rdy_n_reg_0\,
      I1 => s_axi_tx_tvalid,
      I2 => idle_r_reg_0,
      I3 => sof_to_eof_2_r,
      I4 => data_to_eof_2_r,
      I5 => idle_r,
      O => next_idle_c
    );
idle_r_reg: unisim.vcomponents.FDSE
     port map (
      C => GEN_ECP_reg_0,
      CE => \^e\(0),
      D => next_idle_c,
      Q => idle_r,
      S => p_0_in
    );
in_frame_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDF0010"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => \^tx_dst_rdy_n_reg_0\,
      I2 => s_axi_tx_tvalid,
      I3 => idle_r_reg_0,
      I4 => in_frame_r_reg,
      O => s_axi_tx_tlast_0
    );
s_axi_tx_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^tx_dst_rdy_n_reg_0\,
      O => s_axi_tx_tready
    );
sof_to_data_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005554"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => idle_r,
      I2 => data_to_eof_2_r,
      I3 => sof_to_eof_2_r,
      I4 => idle_r_reg_0,
      I5 => sof_to_eof_1_r_i_3_n_0,
      O => sof_to_data_r_i_1_n_0
    );
sof_to_data_r_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => \^e\(0),
      D => sof_to_data_r_i_1_n_0,
      Q => sof_to_data_r,
      R => p_0_in
    );
sof_to_eof_1_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAA8"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => idle_r,
      I2 => data_to_eof_2_r,
      I3 => sof_to_eof_2_r,
      I4 => idle_r_reg_0,
      I5 => sof_to_eof_1_r_i_3_n_0,
      O => next_sof_to_eof_1_c
    );
sof_to_eof_1_r_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^tx_dst_rdy_n_reg_0\,
      I1 => s_axi_tx_tvalid,
      O => sof_to_eof_1_r_i_3_n_0
    );
sof_to_eof_1_r_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => \^e\(0),
      D => next_sof_to_eof_1_c,
      Q => sof_to_eof_1_r,
      R => p_0_in
    );
sof_to_eof_2_r_reg: unisim.vcomponents.FDRE
     port map (
      C => GEN_ECP_reg_0,
      CE => \^e\(0),
      D => sof_to_eof_1_r,
      Q => sof_to_eof_2_r,
      R => p_0_in
    );
storage_pad_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000068800000"
    )
        port map (
      I0 => s_axi_tx_tkeep(3),
      I1 => s_axi_tx_tkeep(0),
      I2 => s_axi_tx_tkeep(1),
      I3 => s_axi_tx_tkeep(2),
      I4 => s_axi_tx_tlast,
      I5 => storage_v_r_i_3_n_0,
      O => storage_pad_r0
    );
storage_v_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do_cc_r\,
      O => \^e\(0)
    );
storage_v_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDD5D557"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => s_axi_tx_tkeep(3),
      I2 => s_axi_tx_tkeep(0),
      I3 => s_axi_tx_tkeep(1),
      I4 => s_axi_tx_tkeep(2),
      I5 => storage_v_r_i_3_n_0,
      O => storage_v_r0
    );
storage_v_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => s_axi_tx_tvalid,
      I1 => \^tx_dst_rdy_n_reg_0\,
      I2 => in_frame_r_reg,
      I3 => idle_r_reg_0,
      O => storage_v_r_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH is
  port (
    in_frame_r_reg_0 : out STD_LOGIC;
    \TX_PE_DATA_V_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_PAD_reg[0]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TX_PE_DATA_reg[0]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    storage_v_r0 : in STD_LOGIC;
    \tx_pe_data_r_reg[0]_0\ : in STD_LOGIC;
    storage_pad_r0 : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    in_frame_r_reg_1 : in STD_LOGIC;
    \tx_pe_data_v_r_reg[1]_0\ : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    do_cc_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH : entity is "aurora_8b10b_0_TX_LL_DATAPATH";
end aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH is
  signal \gen_pad_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_pad_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \^in_frame_r_reg_0\ : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal storage_pad_r : STD_LOGIC;
  signal storage_v_r : STD_LOGIC;
  signal tx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 31 );
  signal \tx_pe_data_v_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \tx_pe_data_v_r_reg_n_0_[1]\ : STD_LOGIC;
begin
  in_frame_r_reg_0 <= \^in_frame_r_reg_0\;
\GEN_PAD_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => \gen_pad_r_reg_n_0_[0]\,
      Q => \GEN_PAD_reg[0]_0\(1),
      R => do_cc_r
    );
\GEN_PAD_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => \gen_pad_r_reg_n_0_[1]\,
      Q => \GEN_PAD_reg[0]_0\(0),
      R => do_cc_r
    );
\TX_PE_DATA_V_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_v_r_reg_n_0_[0]\,
      Q => \TX_PE_DATA_V_reg[0]_0\(1),
      R => do_cc_r
    );
\TX_PE_DATA_V_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => \tx_pe_data_v_r_reg_n_0_[1]\,
      Q => \TX_PE_DATA_V_reg[0]_0\(0),
      R => do_cc_r
    );
\TX_PE_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(0),
      Q => \TX_PE_DATA_reg[0]_0\(31),
      R => '0'
    );
\TX_PE_DATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(10),
      Q => \TX_PE_DATA_reg[0]_0\(21),
      R => '0'
    );
\TX_PE_DATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(11),
      Q => \TX_PE_DATA_reg[0]_0\(20),
      R => '0'
    );
\TX_PE_DATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(12),
      Q => \TX_PE_DATA_reg[0]_0\(19),
      R => '0'
    );
\TX_PE_DATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(13),
      Q => \TX_PE_DATA_reg[0]_0\(18),
      R => '0'
    );
\TX_PE_DATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(14),
      Q => \TX_PE_DATA_reg[0]_0\(17),
      R => '0'
    );
\TX_PE_DATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(15),
      Q => \TX_PE_DATA_reg[0]_0\(16),
      R => '0'
    );
\TX_PE_DATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(16),
      Q => \TX_PE_DATA_reg[0]_0\(15),
      R => '0'
    );
\TX_PE_DATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(17),
      Q => \TX_PE_DATA_reg[0]_0\(14),
      R => '0'
    );
\TX_PE_DATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(18),
      Q => \TX_PE_DATA_reg[0]_0\(13),
      R => '0'
    );
\TX_PE_DATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(19),
      Q => \TX_PE_DATA_reg[0]_0\(12),
      R => '0'
    );
\TX_PE_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(1),
      Q => \TX_PE_DATA_reg[0]_0\(30),
      R => '0'
    );
\TX_PE_DATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(20),
      Q => \TX_PE_DATA_reg[0]_0\(11),
      R => '0'
    );
\TX_PE_DATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(21),
      Q => \TX_PE_DATA_reg[0]_0\(10),
      R => '0'
    );
\TX_PE_DATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(22),
      Q => \TX_PE_DATA_reg[0]_0\(9),
      R => '0'
    );
\TX_PE_DATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(23),
      Q => \TX_PE_DATA_reg[0]_0\(8),
      R => '0'
    );
\TX_PE_DATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(24),
      Q => \TX_PE_DATA_reg[0]_0\(7),
      R => '0'
    );
\TX_PE_DATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(25),
      Q => \TX_PE_DATA_reg[0]_0\(6),
      R => '0'
    );
\TX_PE_DATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(26),
      Q => \TX_PE_DATA_reg[0]_0\(5),
      R => '0'
    );
\TX_PE_DATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(27),
      Q => \TX_PE_DATA_reg[0]_0\(4),
      R => '0'
    );
\TX_PE_DATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(28),
      Q => \TX_PE_DATA_reg[0]_0\(3),
      R => '0'
    );
\TX_PE_DATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(29),
      Q => \TX_PE_DATA_reg[0]_0\(2),
      R => '0'
    );
\TX_PE_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(2),
      Q => \TX_PE_DATA_reg[0]_0\(29),
      R => '0'
    );
\TX_PE_DATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(30),
      Q => \TX_PE_DATA_reg[0]_0\(1),
      R => '0'
    );
\TX_PE_DATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(31),
      Q => \TX_PE_DATA_reg[0]_0\(0),
      R => '0'
    );
\TX_PE_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(3),
      Q => \TX_PE_DATA_reg[0]_0\(28),
      R => '0'
    );
\TX_PE_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(4),
      Q => \TX_PE_DATA_reg[0]_0\(27),
      R => '0'
    );
\TX_PE_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(5),
      Q => \TX_PE_DATA_reg[0]_0\(26),
      R => '0'
    );
\TX_PE_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(6),
      Q => \TX_PE_DATA_reg[0]_0\(25),
      R => '0'
    );
\TX_PE_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(7),
      Q => \TX_PE_DATA_reg[0]_0\(24),
      R => '0'
    );
\TX_PE_DATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(8),
      Q => \TX_PE_DATA_reg[0]_0\(23),
      R => '0'
    );
\TX_PE_DATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => tx_pe_data_r(9),
      Q => \TX_PE_DATA_reg[0]_0\(22),
      R => '0'
    );
\gen_pad_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => storage_pad_r,
      Q => \gen_pad_r_reg_n_0_[0]\,
      R => '0'
    );
\gen_pad_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => D(0),
      Q => \gen_pad_r_reg_n_0_[1]\,
      R => '0'
    );
in_frame_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => '1',
      D => in_frame_r_reg_1,
      Q => \^in_frame_r_reg_0\,
      R => p_0_in
    );
storage_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => storage_pad_r0,
      Q => storage_pad_r,
      R => '0'
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(16),
      Q => p_1_in(31),
      R => '0'
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(26),
      Q => p_1_in(21),
      R => '0'
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(27),
      Q => p_1_in(20),
      R => '0'
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(28),
      Q => p_1_in(19),
      R => '0'
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(29),
      Q => p_1_in(18),
      R => '0'
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(30),
      Q => p_1_in(17),
      R => '0'
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(31),
      Q => p_1_in(16),
      R => '0'
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(17),
      Q => p_1_in(30),
      R => '0'
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(18),
      Q => p_1_in(29),
      R => '0'
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(19),
      Q => p_1_in(28),
      R => '0'
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(20),
      Q => p_1_in(27),
      R => '0'
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(21),
      Q => p_1_in(26),
      R => '0'
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(22),
      Q => p_1_in(25),
      R => '0'
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(23),
      Q => p_1_in(24),
      R => '0'
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(24),
      Q => p_1_in(23),
      R => '0'
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(25),
      Q => p_1_in(22),
      R => '0'
    );
storage_v_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => storage_v_r0,
      Q => storage_v_r,
      R => '0'
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(31),
      Q => tx_pe_data_r(0),
      R => '0'
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(21),
      Q => tx_pe_data_r(10),
      R => '0'
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(20),
      Q => tx_pe_data_r(11),
      R => '0'
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(19),
      Q => tx_pe_data_r(12),
      R => '0'
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(18),
      Q => tx_pe_data_r(13),
      R => '0'
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(17),
      Q => tx_pe_data_r(14),
      R => '0'
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(16),
      Q => tx_pe_data_r(15),
      R => '0'
    );
\tx_pe_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(0),
      Q => tx_pe_data_r(16),
      R => '0'
    );
\tx_pe_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(1),
      Q => tx_pe_data_r(17),
      R => '0'
    );
\tx_pe_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(2),
      Q => tx_pe_data_r(18),
      R => '0'
    );
\tx_pe_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(3),
      Q => tx_pe_data_r(19),
      R => '0'
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(30),
      Q => tx_pe_data_r(1),
      R => '0'
    );
\tx_pe_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(4),
      Q => tx_pe_data_r(20),
      R => '0'
    );
\tx_pe_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(5),
      Q => tx_pe_data_r(21),
      R => '0'
    );
\tx_pe_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(6),
      Q => tx_pe_data_r(22),
      R => '0'
    );
\tx_pe_data_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(7),
      Q => tx_pe_data_r(23),
      R => '0'
    );
\tx_pe_data_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(8),
      Q => tx_pe_data_r(24),
      R => '0'
    );
\tx_pe_data_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(9),
      Q => tx_pe_data_r(25),
      R => '0'
    );
\tx_pe_data_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(10),
      Q => tx_pe_data_r(26),
      R => '0'
    );
\tx_pe_data_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(11),
      Q => tx_pe_data_r(27),
      R => '0'
    );
\tx_pe_data_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(12),
      Q => tx_pe_data_r(28),
      R => '0'
    );
\tx_pe_data_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(13),
      Q => tx_pe_data_r(29),
      R => '0'
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(29),
      Q => tx_pe_data_r(2),
      R => '0'
    );
\tx_pe_data_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(14),
      Q => tx_pe_data_r(30),
      R => '0'
    );
\tx_pe_data_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => s_axi_tx_tdata(15),
      Q => tx_pe_data_r(31),
      R => '0'
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(28),
      Q => tx_pe_data_r(3),
      R => '0'
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(27),
      Q => tx_pe_data_r(4),
      R => '0'
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(26),
      Q => tx_pe_data_r(5),
      R => '0'
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(25),
      Q => tx_pe_data_r(6),
      R => '0'
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(24),
      Q => tx_pe_data_r(7),
      R => '0'
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(23),
      Q => tx_pe_data_r(8),
      R => '0'
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_1_in(22),
      Q => tx_pe_data_r(9),
      R => '0'
    );
\tx_pe_data_v_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
        port map (
      I0 => \tx_pe_data_v_r_reg[1]_0\,
      I1 => \^in_frame_r_reg_0\,
      I2 => tx_dst_rdy,
      I3 => s_axi_tx_tvalid,
      O => p_12_in
    );
\tx_pe_data_v_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => storage_v_r,
      Q => \tx_pe_data_v_r_reg_n_0_[0]\,
      R => '0'
    );
\tx_pe_data_v_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \tx_pe_data_r_reg[0]_0\,
      CE => E(0),
      D => p_12_in,
      Q => \tx_pe_data_v_r_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    end_storage_r_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    FRAME_ERR_RESULT0 : out STD_LOGIC;
    excess_c : out STD_LOGIC;
    end_storage_r0 : out STD_LOGIC;
    \STORAGE_CE_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_3_end_storage_r : in STD_LOGIC;
    stage_2_start_with_data_r : in STD_LOGIC;
    stage_2_frame_err_r : in STD_LOGIC;
    stage_2_end_after_start_r : in STD_LOGIC;
    stage_2_end_before_start_r : in STD_LOGIC;
    \storage_not_empty_c__0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \COUNT_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \COUNT_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER : entity is "aurora_8b10b_0_VALID_DATA_COUNTER";
end aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER is
  signal FRAME_ERR_RESULT2 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of SRC_RDY_N_i_2 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of end_storage_r_i_2 : label is "soft_lutpair57";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\COUNT_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \COUNT_reg[0]_1\,
      CE => '1',
      D => \COUNT_reg[0]_0\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \COUNT_reg[0]_1\,
      CE => '1',
      D => \COUNT_reg[0]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
FRAME_ERR_RESULT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFECCFCFFFECCFC"
    )
        port map (
      I0 => FRAME_ERR_RESULT2,
      I1 => stage_2_frame_err_r,
      I2 => stage_2_end_after_start_r,
      I3 => stage_2_start_with_data_r,
      I4 => stage_2_end_before_start_r,
      I5 => \storage_not_empty_c__0\,
      O => FRAME_ERR_RESULT0
    );
SRC_RDY_N_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \STORAGE_CE_reg[0]\(0),
      I2 => \STORAGE_CE_reg[0]\(1),
      I3 => \^q\(1),
      O => excess_c
    );
\STORAGE_CE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFAEF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \STORAGE_CE_reg[0]\(1),
      I3 => \STORAGE_CE_reg[0]\(0),
      I4 => stage_3_end_storage_r,
      I5 => stage_2_start_with_data_r,
      O => D(1)
    );
\STORAGE_CE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \STORAGE_CE_reg[0]\(0),
      I2 => \^q\(0),
      I3 => \STORAGE_CE_reg[0]\(1),
      I4 => stage_3_end_storage_r,
      I5 => stage_2_start_with_data_r,
      O => D(0)
    );
end_storage_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F404"
    )
        port map (
      I0 => FRAME_ERR_RESULT2,
      I1 => stage_2_end_before_start_r,
      I2 => stage_2_start_with_data_r,
      I3 => stage_2_end_after_start_r,
      O => end_storage_r0
    );
end_storage_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \STORAGE_CE_reg[0]\(0),
      I2 => \STORAGE_CE_reg[0]\(1),
      I3 => \^q\(1),
      O => FRAME_ERR_RESULT2
    );
\storage_count_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFEEF10011000"
    )
        port map (
      I0 => stage_3_end_storage_r,
      I1 => stage_2_start_with_data_r,
      I2 => \^q\(0),
      I3 => \STORAGE_CE_reg[0]\(0),
      I4 => \STORAGE_CE_reg[0]\(1),
      I5 => \^q\(1),
      O => end_storage_r_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_reset : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  D(0) <= s_level_out_d3;
  p_level_in_int <= gt_reset;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    s_level_out_d5_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  D(0) <= s_level_out_d3;
  p_level_in_int <= reset;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1 is
  port (
    in0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  p_level_in_int <= in0;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_rx_state_reg[3]\ : out STD_LOGIC;
    \FSM_sequential_rx_state_reg[3]_0\ : out STD_LOGIC;
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_rx_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_rx_state_reg[0]_3\ : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    reset_time_out_reg_0 : in STD_LOGIC;
    reset_time_out_reg_1 : in STD_LOGIC;
    reset_time_out_reg_2 : in STD_LOGIC;
    reset_time_out_reg_3 : in STD_LOGIC;
    recclk_mon_count_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11 is
  signal \FSM_sequential_rx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal \reset_time_out_i_3__0_n_0\ : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  p_level_in_int <= s_level_out_d1_aurora_8b10b_0_cdc_to_reg_0;
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBBBAAABAAAB"
    )
        port map (
      I0 => \FSM_sequential_rx_state_reg[0]\,
      I1 => \FSM_sequential_rx_state_reg[0]_0\,
      I2 => \FSM_sequential_rx_state_reg[0]_1\,
      I3 => Q(0),
      I4 => \FSM_sequential_rx_state_reg[0]_2\,
      I5 => \FSM_sequential_rx_state[3]_i_6_n_0\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => \FSM_sequential_rx_state_reg[0]_3\,
      I3 => Q(1),
      I4 => s_level_out_d3,
      O => \FSM_sequential_rx_state[3]_i_6_n_0\
    );
adapt_count_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00000404"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => s_level_out_d3,
      I4 => Q(2),
      I5 => recclk_mon_count_reset,
      O => \FSM_sequential_rx_state_reg[3]_0\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DFFFFF00DF0000"
    )
        port map (
      I0 => Q(3),
      I1 => reset_time_out_reg,
      I2 => reset_time_out_reg_1,
      I3 => \reset_time_out_i_3__0_n_0\,
      I4 => reset_time_out_reg_2,
      I5 => reset_time_out_reg_3,
      O => \FSM_sequential_rx_state_reg[3]\
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888880000FF0C"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(1),
      I2 => s_level_out_d3,
      I3 => Q(2),
      I4 => reset_time_out_reg_0,
      I5 => Q(3),
      O => \reset_time_out_i_3__0_n_0\
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    mmcm_lock_reclocked_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
\mmcm_lock_count[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => mmcm_lock_reclocked_reg_0,
      I2 => s_level_out_d3,
      O => mmcm_lock_reclocked_reg
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13 is
  port (
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_tx_state_reg[3]\ : out STD_LOGIC;
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    reset_time_out_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_tx_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[0]_1\ : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[3]_i_3_0\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[3]_i_3_1\ : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[3]_i_3_2\ : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    \FSM_sequential_tx_state_reg[3]_i_3_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4 is
  signal \FSM_sequential_tx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal reset_time_out_0 : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  p_level_in_int <= s_level_out_d1_aurora_8b10b_0_cdc_to_reg_0;
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3300330074777444"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[3]_i_3_n_0\,
      I1 => Q(0),
      I2 => \FSM_sequential_tx_state_reg[0]\,
      I3 => \FSM_sequential_tx_state_reg[0]_0\,
      I4 => \FSM_sequential_tx_state_reg[0]_1\,
      I5 => Q(3),
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFF0D000DFF0DFF"
    )
        port map (
      I0 => \FSM_sequential_tx_state_reg[3]_i_3_2\,
      I1 => reset_time_out,
      I2 => mmcm_lock_reclocked,
      I3 => Q(2),
      I4 => s_level_out_d3,
      I5 => \FSM_sequential_tx_state_reg[3]_i_3_3\,
      O => \FSM_sequential_tx_state[3]_i_7_n_0\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45004500450045FF"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => reset_time_out,
      I2 => \FSM_sequential_tx_state_reg[3]_i_3_0\,
      I3 => Q(2),
      I4 => s_level_out_d3,
      I5 => \FSM_sequential_tx_state_reg[3]_i_3_1\,
      O => \FSM_sequential_tx_state[3]_i_8_n_0\
    );
\FSM_sequential_tx_state_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_tx_state[3]_i_7_n_0\,
      I1 => \FSM_sequential_tx_state[3]_i_8_n_0\,
      O => \FSM_sequential_tx_state_reg[3]_i_3_n_0\,
      S => Q(1)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
reset_time_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFAA202020AA"
    )
        port map (
      I0 => reset_time_out_0,
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => reset_time_out,
      O => \FSM_sequential_tx_state_reg[3]\
    );
reset_time_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B8F0B8B"
    )
        port map (
      I0 => reset_time_out_reg,
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      I4 => s_level_out_d3,
      O => reset_time_out_0
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked_reg : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    p_0_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => p_0_in,
      I2 => s_level_out_d3,
      O => mmcm_lock_reclocked_reg
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6 is
  port (
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6 is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_20: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => p_level_in_d1_cdc_from
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0\ is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d6_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  AS(0) <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gt_reset_out,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_10\ is
  port (
    \out\ : out STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    p_level_in_d1_cdc_from_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_10\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_10\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_10\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg_0,
      CE => '1',
      D => rxfsm_rxresetdone_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_14\ is
  port (
    \out\ : out STD_LOGIC;
    p_level_in_d1_cdc_from_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d6_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_14\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_14\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_14\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_d1_cdc_from_reg_0,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_15\ is
  port (
    \out\ : out STD_LOGIC;
    rx_fsm_reset_done_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d6_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_15\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_15\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_15\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_fsm_reset_done_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_16\ is
  port (
    \out\ : out STD_LOGIC;
    p_level_in_d1_cdc_from_reg_0 : in STD_LOGIC;
    p_level_in_d1_cdc_from_reg_1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_16\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_16\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_16\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg_1,
      CE => '1',
      D => p_level_in_d1_cdc_from_reg_0,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_17\ is
  port (
    \out\ : out STD_LOGIC;
    link_reset_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d5_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_17\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_17\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_17\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_18\ is
  port (
    \out\ : out STD_LOGIC;
    tx_lock_comb_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d5_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_18\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_18\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_18\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_lock_comb_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_19\ is
  port (
    \out\ : out STD_LOGIC;
    rx_cc_extend_r2 : in STD_LOGIC;
    p_level_in_d1_cdc_from_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_19\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_19\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_19\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg_0,
      CE => '1',
      D => rx_cc_extend_r2,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_2\ is
  port (
    \out\ : out STD_LOGIC;
    gtrxreset_i : in STD_LOGIC;
    p_level_in_d1_cdc_from_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_2\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_2\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_2\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg_0,
      CE => '1',
      D => gtrxreset_i,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_3\ is
  port (
    \out\ : out STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    p_level_in_d1_cdc_from_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_3\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_3\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_3\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg_0,
      CE => '1',
      D => txfsm_txresetdone_r,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_7\ is
  port (
    \out\ : out STD_LOGIC;
    run_phase_alignment_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d5_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_7\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_7\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_7\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_8\ is
  port (
    \out\ : out STD_LOGIC;
    time_out_wait_bypass : in STD_LOGIC;
    p_level_in_d1_cdc_from_reg_0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_8\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_8\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_8\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg_0,
      CE => '1',
      D => time_out_wait_bypass,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_9\ is
  port (
    \out\ : out STD_LOGIC;
    s_level_out_d3_reg_0 : out STD_LOGIC;
    tx_fsm_reset_done_int : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d5_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_9\ : entity is "aurora_8b10b_0_cdc_sync";
end \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_9\;

architecture STRUCTURE of \aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_9\ is
  signal p_level_in_d1_cdc_from : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of p_level_in_d1_cdc_from : signal is "true";
  signal p_level_in_int : STD_LOGIC;
  signal s_level_out_bus_d1_aurora_8b10b_0_cdc_to : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of s_level_out_bus_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_bus_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d2 : signal is "true";
  attribute shift_extract of s_level_out_bus_d2 : signal is "{no}";
  signal s_level_out_bus_d3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d3 : signal is "true";
  attribute shift_extract of s_level_out_bus_d3 : signal is "{no}";
  signal s_level_out_bus_d4 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d4 : signal is "true";
  attribute shift_extract of s_level_out_bus_d4 : signal is "{no}";
  signal s_level_out_bus_d5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d5 : signal is "true";
  attribute shift_extract of s_level_out_bus_d5 : signal is "{no}";
  signal s_level_out_bus_d6 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg of s_level_out_bus_d6 : signal is "true";
  attribute shift_extract of s_level_out_bus_d6 : signal is "{no}";
  signal s_level_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_level_out_d2 : STD_LOGIC;
  attribute async_reg of s_level_out_d2 : signal is "true";
  attribute shift_extract of s_level_out_d2 : signal is "{no}";
  signal s_level_out_d3 : STD_LOGIC;
  attribute async_reg of s_level_out_d3 : signal is "true";
  attribute shift_extract of s_level_out_d3 : signal is "{no}";
  signal s_level_out_d4 : STD_LOGIC;
  attribute async_reg of s_level_out_d4 : signal is "true";
  attribute shift_extract of s_level_out_d4 : signal is "{no}";
  signal s_level_out_d5 : STD_LOGIC;
  attribute async_reg of s_level_out_d5 : signal is "true";
  attribute shift_extract of s_level_out_d5 : signal is "{no}";
  signal s_level_out_d6 : STD_LOGIC;
  attribute async_reg of s_level_out_d6 : signal is "true";
  attribute shift_extract of s_level_out_d6 : signal is "{no}";
  signal s_out_d1_aurora_8b10b_0_cdc_to : STD_LOGIC;
  attribute async_reg of s_out_d1_aurora_8b10b_0_cdc_to : signal is "true";
  attribute shift_extract of s_out_d1_aurora_8b10b_0_cdc_to : signal is "{no}";
  signal s_out_d2 : STD_LOGIC;
  attribute async_reg of s_out_d2 : signal is "true";
  attribute shift_extract of s_out_d2 : signal is "{no}";
  signal s_out_d3 : STD_LOGIC;
  attribute async_reg of s_out_d3 : signal is "true";
  attribute shift_extract of s_out_d3 : signal is "{no}";
  signal s_out_d4 : STD_LOGIC;
  attribute async_reg of s_out_d4 : signal is "true";
  attribute shift_extract of s_out_d4 : signal is "{no}";
  signal s_out_d5 : STD_LOGIC;
  attribute async_reg of s_out_d5 : signal is "true";
  attribute shift_extract of s_out_d5 : signal is "{no}";
  signal s_out_d6 : STD_LOGIC;
  attribute async_reg of s_out_d6 : signal is "true";
  attribute shift_extract of s_out_d6 : signal is "{no}";
  signal s_out_d7 : STD_LOGIC;
  attribute async_reg of s_out_d7 : signal is "true";
  attribute shift_extract of s_out_d7 : signal is "{no}";
  attribute KEEP : string;
  attribute KEEP of p_level_in_d1_cdc_from_reg : label is "yes";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "yes";
  attribute shift_extract of s_level_out_d1_aurora_8b10b_0_cdc_to_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d2_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d2_reg : label is "yes";
  attribute shift_extract of s_level_out_d2_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d3_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d3_reg : label is "yes";
  attribute shift_extract of s_level_out_d3_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d4_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d4_reg : label is "yes";
  attribute shift_extract of s_level_out_d4_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d5_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d5_reg : label is "yes";
  attribute shift_extract of s_level_out_d5_reg : label is "{no}";
  attribute ASYNC_REG_boolean of s_level_out_d6_reg : label is std.standard.true;
  attribute KEEP of s_level_out_d6_reg : label is "yes";
  attribute shift_extract of s_level_out_d6_reg : label is "{no}";
begin
  \out\ <= s_level_out_d3;
gt_txresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_level_out_d3,
      O => s_level_out_d3_reg_0
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_level_in_d1_cdc_from,
      O => p_level_in_int
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d1_aurora_8b10b_0_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => s_level_out_bus_d1_aurora_8b10b_0_cdc_to(0)
    );
p_level_in_d1_cdc_from_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int,
      Q => p_level_in_d1_cdc_from,
      R => '0'
    );
s_level_out_d1_aurora_8b10b_0_cdc_to_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => p_level_in_int,
      Q => s_level_out_d1_aurora_8b10b_0_cdc_to,
      R => '0'
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d1_aurora_8b10b_0_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => '0'
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => '0'
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg_0,
      CE => '1',
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_gt is
  port (
    in0 : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    init_clk_in_0 : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    init_clk_in_1 : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ack_flag : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC;
    ENABLE_ERR_DETECT_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    consecutive_commas_r_reg : out STD_LOGIC;
    init_clk_in_2 : out STD_LOGIC;
    \previous_cycle_data_r_reg[7]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \left_align_select_r_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \previous_cycle_control_r_reg[0]\ : out STD_LOGIC;
    \left_align_select_r_reg[1]\ : out STD_LOGIC;
    hard_err_gt0 : out STD_LOGIC;
    \left_align_select_r_reg[0]_0\ : out STD_LOGIC;
    \left_align_select_r_reg[1]_0\ : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_tx_reset_i : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad1_out : in STD_LOGIC;
    gt_qpllrefclk_quad1_out : in STD_LOGIC;
    gt_rxdfelfhold_i : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    flag2_reg_0 : in STD_LOGIC;
    enable_err_detect_i : in STD_LOGIC;
    consecutive_commas_r : in STD_LOGIC;
    begin_r : in STD_LOGIC;
    \word_aligned_data_r_reg[16]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \left_align_select_r_reg[0]_1\ : in STD_LOGIC;
    \left_align_select_r_reg[1]_1\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpll_reset_i : in STD_LOGIC;
    \left_align_select_r_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_gt : entity is "aurora_8b10b_0_gt";
end aurora_8b10b_0_aurora_8b10b_0_gt;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_gt is
  signal \^rxcharisk\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rxdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ack_flag\ : STD_LOGIC;
  signal ack_flag_i_1_n_0 : STD_LOGIC;
  signal ack_sync1 : STD_LOGIC;
  signal ack_sync2 : STD_LOGIC;
  signal ack_sync3 : STD_LOGIC;
  signal ack_sync4 : STD_LOGIC;
  signal ack_sync5 : STD_LOGIC;
  signal ack_sync6 : STD_LOGIC;
  signal cpll_pd_i : STD_LOGIC;
  signal cpll_reset_i_0 : STD_LOGIC;
  signal \cpllpd_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllpd_wait_reg[94]_srl31_n_0\ : STD_LOGIC;
  signal cpllreset_ovrd_i : STD_LOGIC;
  signal \cpllreset_wait_reg[126]_srl31_n_0\ : STD_LOGIC;
  signal \cpllreset_wait_reg[31]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[63]_srl32_n_1\ : STD_LOGIC;
  signal \cpllreset_wait_reg[95]_srl32_n_1\ : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal data_sync6 : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag2 : STD_LOGIC;
  signal flag_i_1_n_0 : STD_LOGIC;
  signal gt_pllrefclklost_i : STD_LOGIC;
  signal gtxe2_i_n_0 : STD_LOGIC;
  signal gtxe2_i_n_11 : STD_LOGIC;
  signal gtxe2_i_n_16 : STD_LOGIC;
  signal gtxe2_i_n_170 : STD_LOGIC;
  signal gtxe2_i_n_171 : STD_LOGIC;
  signal gtxe2_i_n_172 : STD_LOGIC;
  signal gtxe2_i_n_173 : STD_LOGIC;
  signal gtxe2_i_n_174 : STD_LOGIC;
  signal gtxe2_i_n_175 : STD_LOGIC;
  signal gtxe2_i_n_176 : STD_LOGIC;
  signal gtxe2_i_n_177 : STD_LOGIC;
  signal gtxe2_i_n_178 : STD_LOGIC;
  signal gtxe2_i_n_179 : STD_LOGIC;
  signal gtxe2_i_n_180 : STD_LOGIC;
  signal gtxe2_i_n_181 : STD_LOGIC;
  signal gtxe2_i_n_182 : STD_LOGIC;
  signal gtxe2_i_n_183 : STD_LOGIC;
  signal gtxe2_i_n_184 : STD_LOGIC;
  signal gtxe2_i_n_23 : STD_LOGIC;
  signal gtxe2_i_n_27 : STD_LOGIC;
  signal gtxe2_i_n_38 : STD_LOGIC;
  signal gtxe2_i_n_39 : STD_LOGIC;
  signal gtxe2_i_n_4 : STD_LOGIC;
  signal gtxe2_i_n_78 : STD_LOGIC;
  signal gtxe2_i_n_79 : STD_LOGIC;
  signal gtxe2_i_n_81 : STD_LOGIC;
  signal gtxe2_i_n_83 : STD_LOGIC;
  signal gtxe2_i_n_84 : STD_LOGIC;
  signal gtxe2_i_n_9 : STD_LOGIC;
  signal \^in0\ : STD_LOGIC;
  signal rx_buf_err_i : STD_LOGIC;
  signal rx_disp_err_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_not_in_table_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rx_realign_i\ : STD_LOGIC;
  signal tx_buf_err_i : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ack_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ack_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of ack_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ack_sync_reg1 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg2 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg3 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg4 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg5 : label is "FD";
  attribute ASYNC_REG of ack_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of ack_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of ack_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg6 : label is "FD";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpllpd_wait_reg[31]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpllpd_wait_reg[31]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[63]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[63]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[94]_srl31\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[94]_srl31\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[94]_srl31 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \cpllpd_wait_reg[95]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[126]_srl31\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[126]_srl31\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[126]_srl31 ";
  attribute equivalent_register_removal of \cpllreset_wait_reg[127]\ : label is "no";
  attribute srl_bus_name of \cpllreset_wait_reg[31]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[31]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[63]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[63]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[95]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[95]_srl32\ : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[95]_srl32 ";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg1 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg2 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg3 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg4 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg5 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute BOX_TYPE of data_sync_reg6 : label is "PRIMITIVE";
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute BOX_TYPE of gtxe2_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \soft_err_r[0]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \soft_err_r[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \soft_err_r[2]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \soft_err_r[3]_i_1\ : label is "soft_lutpair87";
begin
  RXCHARISK(3 downto 0) <= \^rxcharisk\(3 downto 0);
  RXDATA(31 downto 0) <= \^rxdata\(31 downto 0);
  ack_flag <= \^ack_flag\;
  in0 <= \^in0\;
  rx_realign_i <= \^rx_realign_i\;
ack_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF90"
    )
        port map (
      I0 => ack_sync6,
      I1 => ack_sync5,
      I2 => \^ack_flag\,
      I3 => flag2,
      O => ack_flag_i_1_n_0
    );
ack_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => ack_flag_i_1_n_0,
      Q => \^ack_flag\,
      R => '0'
    );
ack_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => data_sync6,
      Q => ack_sync1,
      R => '0'
    );
ack_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync1,
      Q => ack_sync2,
      R => '0'
    );
ack_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync2,
      Q => ack_sync3,
      R => '0'
    );
ack_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync3,
      Q => ack_sync4,
      R => '0'
    );
ack_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync4,
      Q => ack_sync5,
      R => '0'
    );
ack_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => ack_sync5,
      Q => ack_sync6,
      R => '0'
    );
\aurora_8b10b_0_sym_dec_4byte_i/left_align_select_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFFFB10401110"
    )
        port map (
      I0 => \left_align_select_r_reg[0]_2\,
      I1 => \^rxcharisk\(0),
      I2 => \^rxcharisk\(2),
      I3 => \^rxcharisk\(3),
      I4 => \^rxcharisk\(1),
      I5 => \left_align_select_r_reg[0]_1\,
      O => \left_align_select_r_reg[0]_0\
    );
\aurora_8b10b_0_sym_dec_4byte_i/left_align_select_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFEB10051100"
    )
        port map (
      I0 => \left_align_select_r_reg[0]_2\,
      I1 => \^rxcharisk\(0),
      I2 => \^rxcharisk\(2),
      I3 => \^rxcharisk\(3),
      I4 => \^rxcharisk\(1),
      I5 => \left_align_select_r_reg[1]_1\,
      O => \left_align_select_r_reg[1]_0\
    );
\cpll_reset_i__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F6"
    )
        port map (
      I0 => data_sync5,
      I1 => data_sync6,
      I2 => cpllreset_ovrd_i,
      O => cpll_reset_i_0
    );
\cpllpd_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1,
      D => '0',
      Q => \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[31]_srl32_n_1\
    );
\cpllpd_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1,
      D => \cpllpd_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllpd_wait_reg[63]_srl32_n_1\
    );
\cpllpd_wait_reg[94]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gt_refclk1,
      D => \cpllpd_wait_reg[63]_srl32_n_1\,
      Q => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q31 => \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\
    );
\cpllpd_wait_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => \cpllpd_wait_reg[94]_srl31_n_0\,
      Q => cpll_pd_i,
      R => '0'
    );
\cpllreset_wait_reg[126]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11110",
      CE => '1',
      CLK => gt_refclk1,
      D => \cpllreset_wait_reg[95]_srl32_n_1\,
      Q => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q31 => \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\
    );
\cpllreset_wait_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => \cpllreset_wait_reg[126]_srl31_n_0\,
      Q => cpllreset_ovrd_i,
      R => '0'
    );
\cpllreset_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"000000FF"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1,
      D => '0',
      Q => \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[31]_srl32_n_1\
    );
\cpllreset_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1,
      D => \cpllreset_wait_reg[31]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[63]_srl32_n_1\
    );
\cpllreset_wait_reg[95]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => gt_refclk1,
      D => \cpllreset_wait_reg[63]_srl32_n_1\,
      Q => \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\,
      Q31 => \cpllreset_wait_reg[95]_srl32_n_1\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => flag,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gt_refclk1,
      CE => '1',
      D => data_sync5,
      Q => data_sync6,
      R => '0'
    );
flag2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => flag2_reg_0,
      Q => flag2,
      R => '0'
    );
flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \^ack_flag\,
      I1 => cpll_reset_i,
      I2 => flag,
      O => flag_i_1_n_0
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => flag_i_1_n_0,
      Q => flag,
      R => '0'
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"0001",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"0000",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 31,
      CLK_COR_MIN_LAT => 24,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0111110111",
      CLK_COR_SEQ_1_2 => B"0111110111",
      CLK_COR_SEQ_1_3 => B"0111110111",
      CLK_COR_SEQ_1_4 => B"0111110111",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 4,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 4,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF40200020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 2,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 40,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0954",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 1,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 2,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 5,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 40,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
        port map (
      CFGRESET => '0',
      CLKRSVD(3 downto 0) => B"0000",
      CPLLFBCLKLOST => gtxe2_i_n_0,
      CPLLLOCK => \^in0\,
      CPLLLOCKDETCLK => init_clk_in,
      CPLLLOCKEN => '1',
      CPLLPD => cpll_pd_i,
      CPLLREFCLKLOST => gt_pllrefclklost_i,
      CPLLREFCLKSEL(2 downto 0) => B"001",
      CPLLRESET => cpll_reset_i_0,
      DMONITOROUT(7) => gtxe2_i_n_177,
      DMONITOROUT(6) => gtxe2_i_n_178,
      DMONITOROUT(5) => gtxe2_i_n_179,
      DMONITOROUT(4) => gtxe2_i_n_180,
      DMONITOROUT(3) => gtxe2_i_n_181,
      DMONITOROUT(2) => gtxe2_i_n_182,
      DMONITOROUT(1) => gtxe2_i_n_183,
      DMONITOROUT(0) => gtxe2_i_n_184,
      DRPADDR(8 downto 0) => drpaddr_in(8 downto 0),
      DRPCLK => drpclk_in,
      DRPDI(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN => drpen_in,
      DRPRDY => drprdy_out,
      DRPWE => drpwe_in,
      EYESCANDATAERROR => gtxe2_i_n_4,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => gt_refclk1,
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15 downto 0) => B"0000000000000000",
      GTRXRESET => SR(0),
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => gt_tx_reset_i,
      GTXRXN => rxn,
      GTXRXP => rxp,
      GTXTXN => txn,
      GTXTXP => txp,
      LOOPBACK(2 downto 0) => loopback(2 downto 0),
      PCSRSVDIN(15 downto 0) => B"0000000000000000",
      PCSRSVDIN2(4 downto 0) => B"00000",
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4 downto 0) => B"00000",
      PMARSVDIN2(4 downto 0) => B"00000",
      QPLLCLK => gt_qpllclk_quad1_out,
      QPLLREFCLK => gt_qpllrefclk_quad1_out,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => rx_buf_err_i,
      RXBUFSTATUS(1) => gtxe2_i_n_83,
      RXBUFSTATUS(0) => gtxe2_i_n_84,
      RXBYTEISALIGNED => gtxe2_i_n_9,
      RXBYTEREALIGN => \^rx_realign_i\,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => gtxe2_i_n_11,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 4) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 4),
      RXCHARISCOMMA(3 downto 0) => D(3 downto 0),
      RXCHARISK(7 downto 4) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 4),
      RXCHARISK(3 downto 0) => \^rxcharisk\(3 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4 downto 0) => B"00000",
      RXCHBONDLEVEL(2 downto 0) => B"000",
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1) => gtxe2_i_n_78,
      RXCLKCORCNT(0) => gtxe2_i_n_79,
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gtxe2_i_n_16,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 32) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 32),
      RXDATA(31 downto 0) => \^rxdata\(31 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => gt_rxdfelfhold_i,
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => gt_rxdfelfhold_i,
      RXDFELFOVRDEN => '1',
      RXDFELPMRESET => '0',
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 4) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 4),
      RXDISPERR(3 downto 0) => rx_disp_err_i(3 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1 downto 0) => B"11",
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => '0',
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => ena_comma_align_i,
      RXMONITOROUT(6) => gtxe2_i_n_170,
      RXMONITOROUT(5) => gtxe2_i_n_171,
      RXMONITOROUT(4) => gtxe2_i_n_172,
      RXMONITOROUT(3) => gtxe2_i_n_173,
      RXMONITOROUT(2) => gtxe2_i_n_174,
      RXMONITOROUT(1) => gtxe2_i_n_175,
      RXMONITOROUT(0) => gtxe2_i_n_176,
      RXMONITORSEL(1 downto 0) => B"00",
      RXNOTINTABLE(7 downto 4) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 4),
      RXNOTINTABLE(3 downto 0) => rx_not_in_table_i(3 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => gtxe2_i_n_23,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2 downto 0) => B"010",
      RXPCOMMAALIGNEN => ena_comma_align_i,
      RXPCSRESET => '0',
      RXPD(1) => power_down,
      RXPD(0) => power_down,
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPOLARITY => rx_polarity_i,
      RXPRBSCNTRESET => '0',
      RXPRBSERR => gtxe2_i_n_27,
      RXPRBSSEL(2 downto 0) => B"000",
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2 downto 0) => B"000",
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => init_clk_in_0,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1 downto 0) => B"00",
      RXUSERRDY => gt_rxuserrdy_i,
      RXUSRCLK => s_level_out_d1_aurora_8b10b_0_cdc_to_reg,
      RXUSRCLK2 => s_level_out_d1_aurora_8b10b_0_cdc_to_reg,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19 downto 0) => B"11111111111111111111",
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7 downto 0) => B"00000000",
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2 downto 0) => B"100",
      TXBUFSTATUS(1) => tx_buf_err_i,
      TXBUFSTATUS(0) => gtxe2_i_n_81,
      TXCHARDISPMODE(7 downto 0) => B"00000000",
      TXCHARDISPVAL(7 downto 0) => B"00000000",
      TXCHARISK(7 downto 4) => B"0000",
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63 downto 32) => B"00000000000000000000000000000000",
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3 downto 0) => B"1000",
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => power_down,
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2 downto 0) => B"000",
      TXINHIBIT => '0',
      TXMAINCURSOR(6 downto 0) => B"0000000",
      TXMARGIN(2 downto 0) => B"000",
      TXOUTCLK => tx_out_clk,
      TXOUTCLKFABRIC => gtxe2_i_n_38,
      TXOUTCLKPCS => gtxe2_i_n_39,
      TXOUTCLKSEL(2 downto 0) => B"010",
      TXPCSRESET => '0',
      TXPD(1) => power_down,
      TXPD(0) => power_down,
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPOLARITY => '0',
      TXPOSTCURSOR(4 downto 0) => B"00000",
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2 downto 0) => B"000",
      TXPRECURSOR(4 downto 0) => B"00000",
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2 downto 0) => B"000",
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => init_clk_in_1,
      TXSEQUENCE(6 downto 0) => B"0000000",
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1 downto 0) => B"00",
      TXUSERRDY => gt_txuserrdy_i,
      TXUSRCLK => s_level_out_d1_aurora_8b10b_0_cdc_to_reg,
      TXUSRCLK2 => s_level_out_d1_aurora_8b10b_0_cdc_to_reg
    );
hard_err_gt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rx_buf_err_i,
      I1 => tx_buf_err_i,
      I2 => \^rx_realign_i\,
      O => hard_err_gt0
    );
pll_not_locked_out_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^in0\,
      O => pll_not_locked_out
    );
reset_count_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => rx_disp_err_i(3),
      I1 => rx_not_in_table_i(3),
      I2 => rx_not_in_table_i(1),
      I3 => rx_disp_err_i(1),
      I4 => rx_disp_err_i(0),
      I5 => rx_disp_err_i(2),
      O => init_clk_in_2
    );
reset_count_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => rx_not_in_table_i(2),
      I1 => rx_not_in_table_i(0),
      I2 => consecutive_commas_r,
      I3 => begin_r,
      O => consecutive_commas_r_reg
    );
\soft_err_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => enable_err_detect_i,
      I1 => rx_disp_err_i(0),
      I2 => rx_not_in_table_i(0),
      O => ENABLE_ERR_DETECT_reg(3)
    );
\soft_err_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => rx_disp_err_i(1),
      I1 => rx_not_in_table_i(1),
      I2 => enable_err_detect_i,
      O => ENABLE_ERR_DETECT_reg(2)
    );
\soft_err_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => enable_err_detect_i,
      I1 => rx_disp_err_i(2),
      I2 => rx_not_in_table_i(2),
      O => ENABLE_ERR_DETECT_reg(1)
    );
\soft_err_r[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => rx_disp_err_i(3),
      I1 => rx_not_in_table_i(3),
      I2 => enable_err_detect_i,
      O => ENABLE_ERR_DETECT_reg(0)
    );
\word_aligned_control_bits_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^rxcharisk\(2),
      I1 => \word_aligned_control_bits_r_reg[2]\(0),
      I2 => \^rxcharisk\(0),
      I3 => \left_align_select_r_reg[0]_1\,
      I4 => \left_align_select_r_reg[1]_1\,
      I5 => \^rxcharisk\(1),
      O => \previous_cycle_control_r_reg[0]\
    );
\word_aligned_control_bits_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^rxcharisk\(0),
      I1 => \^rxcharisk\(2),
      I2 => \^rxcharisk\(3),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxcharisk\(1),
      O => \left_align_select_r_reg[1]\
    );
\word_aligned_data_r[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^rxdata\(23),
      I1 => \word_aligned_data_r_reg[16]\(5),
      I2 => \^rxdata\(7),
      I3 => \left_align_select_r_reg[0]_1\,
      I4 => \left_align_select_r_reg[1]_1\,
      I5 => \^rxdata\(15),
      O => \previous_cycle_data_r_reg[7]\(5)
    );
\word_aligned_data_r[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^rxdata\(22),
      I1 => \word_aligned_data_r_reg[16]\(4),
      I2 => \^rxdata\(14),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(6),
      O => \previous_cycle_data_r_reg[7]\(4)
    );
\word_aligned_data_r[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^rxdata\(19),
      I1 => \word_aligned_data_r_reg[16]\(3),
      I2 => \^rxdata\(11),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(3),
      O => \previous_cycle_data_r_reg[7]\(3)
    );
\word_aligned_data_r[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^rxdata\(18),
      I1 => \word_aligned_data_r_reg[16]\(2),
      I2 => \^rxdata\(10),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(2),
      O => \previous_cycle_data_r_reg[7]\(2)
    );
\word_aligned_data_r[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^rxdata\(17),
      I1 => \word_aligned_data_r_reg[16]\(1),
      I2 => \^rxdata\(1),
      I3 => \left_align_select_r_reg[0]_1\,
      I4 => \left_align_select_r_reg[1]_1\,
      I5 => \^rxdata\(9),
      O => \previous_cycle_data_r_reg[7]\(1)
    );
\word_aligned_data_r[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^rxdata\(16),
      I1 => \word_aligned_data_r_reg[16]\(0),
      I2 => \^rxdata\(0),
      I3 => \left_align_select_r_reg[0]_1\,
      I4 => \left_align_select_r_reg[1]_1\,
      I5 => \^rxdata\(8),
      O => \previous_cycle_data_r_reg[7]\(0)
    );
\word_aligned_data_r[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCF0AA00CCF0AA"
    )
        port map (
      I0 => \^rxdata\(31),
      I1 => \^rxdata\(7),
      I2 => \^rxdata\(15),
      I3 => \left_align_select_r_reg[0]_1\,
      I4 => \left_align_select_r_reg[1]_1\,
      I5 => \^rxdata\(23),
      O => \left_align_select_r_reg[0]\(7)
    );
\word_aligned_data_r[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^rxdata\(6),
      I1 => \^rxdata\(14),
      I2 => \^rxdata\(30),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(22),
      O => \left_align_select_r_reg[0]\(6)
    );
\word_aligned_data_r[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCAAF000CCAAF0"
    )
        port map (
      I0 => \^rxdata\(5),
      I1 => \^rxdata\(13),
      I2 => \^rxdata\(29),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(21),
      O => \left_align_select_r_reg[0]\(5)
    );
\word_aligned_data_r[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFFAAF0CC00AAF0"
    )
        port map (
      I0 => \^rxdata\(4),
      I1 => \^rxdata\(20),
      I2 => \^rxdata\(28),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(12),
      O => \left_align_select_r_reg[0]\(4)
    );
\word_aligned_data_r[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^rxdata\(27),
      I1 => \^rxdata\(3),
      I2 => \^rxdata\(19),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(11),
      O => \left_align_select_r_reg[0]\(3)
    );
\word_aligned_data_r[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^rxdata\(26),
      I1 => \^rxdata\(2),
      I2 => \^rxdata\(18),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(10),
      O => \left_align_select_r_reg[0]\(2)
    );
\word_aligned_data_r[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^rxdata\(25),
      I1 => \^rxdata\(1),
      I2 => \^rxdata\(17),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(9),
      O => \left_align_select_r_reg[0]\(1)
    );
\word_aligned_data_r[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFCCAAF000CCAA"
    )
        port map (
      I0 => \^rxdata\(24),
      I1 => \^rxdata\(0),
      I2 => \^rxdata\(16),
      I3 => \left_align_select_r_reg[1]_1\,
      I4 => \left_align_select_r_reg[0]_1\,
      I5 => \^rxdata\(8),
      O => \left_align_select_r_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_gt_common_wrapper is
  port (
    gt0_qplllock_out : out STD_LOGIC;
    gt_qpllclk_quad1_out : out STD_LOGIC;
    gt_qpllrefclk_quad1_out : out STD_LOGIC;
    gt0_qpllrefclklost_out : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_gt_common_wrapper : entity is "aurora_8b10b_0_gt_common_wrapper";
end aurora_8b10b_0_aurora_8b10b_0_gt_common_wrapper;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_gt_common_wrapper is
  signal NLW_gtxe2_common_i_DRPRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_i_DRPDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of gtxe2_common_i : label is "PRIMITIVE";
begin
gtxe2_common_i: unisim.vcomponents.GTXE2_COMMON
    generic map(
      BIAS_CFG => X"0000040000001000",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_QPLLLOCKDETCLK_INVERTED => '0',
      QPLL_CFG => X"06801C1",
      QPLL_CLKOUT_CFG => B"0000",
      QPLL_COARSE_FREQ_OVRD => B"010000",
      QPLL_COARSE_FREQ_OVRD_EN => '0',
      QPLL_CP => B"0000011111",
      QPLL_CP_MONITOR_EN => '0',
      QPLL_DMONITOR_SEL => '0',
      QPLL_FBDIV => B"0010000000",
      QPLL_FBDIV_MONITOR_EN => '0',
      QPLL_FBDIV_RATIO => '1',
      QPLL_INIT_CFG => X"000006",
      QPLL_LOCK_CFG => X"21E8",
      QPLL_LPF => B"1111",
      QPLL_REFCLK_DIV => 1,
      SIM_QPLLREFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_VERSION => "4.0"
    )
        port map (
      BGBYPASSB => '1',
      BGMONITORENB => '1',
      BGPDB => '1',
      BGRCALOVRD(4 downto 0) => B"11111",
      DRPADDR(7 downto 0) => B"00000000",
      DRPCLK => '0',
      DRPDI(15 downto 0) => B"0000000000000000",
      DRPDO(15 downto 0) => NLW_gtxe2_common_i_DRPDO_UNCONNECTED(15 downto 0),
      DRPEN => '0',
      DRPRDY => NLW_gtxe2_common_i_DRPRDY_UNCONNECTED,
      DRPWE => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => gt_refclk1,
      GTREFCLK1 => '0',
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      PMARSVD(7 downto 0) => B"00000000",
      QPLLDMONITOR(7 downto 0) => NLW_gtxe2_common_i_QPLLDMONITOR_UNCONNECTED(7 downto 0),
      QPLLFBCLKLOST => NLW_gtxe2_common_i_QPLLFBCLKLOST_UNCONNECTED,
      QPLLLOCK => gt0_qplllock_out,
      QPLLLOCKDETCLK => init_clk_in,
      QPLLLOCKEN => '1',
      QPLLOUTCLK => gt_qpllclk_quad1_out,
      QPLLOUTREFCLK => gt_qpllrefclk_quad1_out,
      QPLLOUTRESET => '0',
      QPLLPD => '1',
      QPLLREFCLKLOST => gt0_qpllrefclklost_out,
      QPLLREFCLKSEL(2 downto 0) => B"001",
      QPLLRESET => '0',
      QPLLRSVD1(15 downto 0) => B"0000000000000000",
      QPLLRSVD2(4 downto 0) => B"11111",
      RCALENB => '1',
      REFCLKOUTMONITOR => NLW_gtxe2_common_i_REFCLKOUTMONITOR_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gen_v_flop_1_i : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_a_i : out STD_LOGIC;
    gen_k_flop_0_i : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gen_r_flop_0_i : out STD_LOGIC_VECTOR ( 3 downto 0 );
    channel_up : out STD_LOGIC;
    start_rx_i : out STD_LOGIC;
    gtrxreset_i : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    START_RX_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    \down_count_r_reg[0]\ : in STD_LOGIC;
    got_v_i : in STD_LOGIC;
    \downcounter_r_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    hard_err_i : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    power_down : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC : entity is "aurora_8b10b_0_GLOBAL_LOGIC";
end aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC is
  signal gen_ver_i : STD_LOGIC;
  signal reset_channel_i : STD_LOGIC;
  signal txver_count_r0 : STD_LOGIC;
  signal wait_for_lane_up_r0 : STD_LOGIC;
begin
channel_err_detect_i: entity work.aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT
     port map (
      D(1 downto 0) => D(1 downto 0),
      RESET_CHANNEL_reg_0 => \down_count_r_reg[0]\,
      hard_err => hard_err,
      hard_err_i => hard_err_i,
      lane_up => lane_up,
      power_down => power_down,
      reset_channel_i => reset_channel_i,
      soft_err => soft_err,
      verify_r_reg(0) => \downcounter_r_reg[0]\(0),
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
channel_init_sm_i: entity work.aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM
     port map (
      SR(0) => SR(0),
      START_RX_reg_0(0) => START_RX_reg(0),
      channel_up => channel_up,
      \free_count_r_reg[13]_0\ => \down_count_r_reg[0]\,
      gen_ver_i => gen_ver_i,
      got_v_i => got_v_i,
      \gtrxreset_extend_r_reg[0]_0\(0) => \downcounter_r_reg[0]\(0),
      gtrxreset_i => gtrxreset_i,
      p_0_in => p_0_in,
      reset_channel_i => reset_channel_i,
      start_rx_i => start_rx_i,
      txver_count_r0 => txver_count_r0,
      wait_for_lane_up_r0 => wait_for_lane_up_r0
    );
idle_and_ver_gen_i: entity work.aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN
     port map (
      \down_count_r_reg[0]_0\ => \down_count_r_reg[0]\,
      \downcounter_r_reg[0]_0\(0) => \downcounter_r_reg[0]\(0),
      gen_a_i => gen_a_i,
      gen_k_flop_0_i_0(3 downto 0) => gen_k_flop_0_i(3 downto 0),
      gen_r_flop_0_i_0(3 downto 0) => gen_r_flop_0_i(3 downto 0),
      gen_v_flop_1_i_0(2 downto 0) => gen_v_flop_1_i(2 downto 0),
      gen_ver_i => gen_ver_i,
      txver_count_r0 => txver_count_r0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    new_pkt_r : out STD_LOGIC;
    in0 : in STD_LOGIC;
    link_reset_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d5_reg : in STD_LOGIC;
    tx_lock_comb_r_reg_0 : in STD_LOGIC;
    gt_txresetdone_r2_reg_0 : in STD_LOGIC;
    gt_rxresetdone_r2_reg_0 : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    channel_up : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC;
    new_pkt_r_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC : entity is "aurora_8b10b_0_RESET_LOGIC";
end aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SYSTEM_RESET0_n_0 : STD_LOGIC;
  signal gt_rxresetdone_r : STD_LOGIC;
  signal gt_rxresetdone_r2 : STD_LOGIC;
  signal gt_rxresetdone_r3 : STD_LOGIC;
  signal gt_txresetdone_r : STD_LOGIC;
  signal gt_txresetdone_r2 : STD_LOGIC;
  signal gt_txresetdone_r3 : STD_LOGIC;
  signal link_reset_sync : STD_LOGIC;
  signal tx_lock_comb_r : STD_LOGIC;
  signal tx_lock_sync : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
SYSTEM_RESET0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => in0,
      I1 => gt_rxresetdone_r3,
      I2 => gt_txresetdone_r3,
      I3 => link_reset_sync,
      I4 => tx_lock_sync,
      O => SYSTEM_RESET0_n_0
    );
SYSTEM_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => s_level_out_d5_reg,
      CE => '1',
      D => SYSTEM_RESET0_n_0,
      Q => \^sr\(0),
      R => '0'
    );
gt_rxresetdone_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => s_level_out_d5_reg,
      CE => '1',
      CLR => gt_rxresetdone_r2_reg_0,
      D => gt_rxresetdone_r,
      Q => gt_rxresetdone_r2
    );
gt_rxresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_level_out_d5_reg,
      CE => '1',
      D => gt_rxresetdone_r2,
      Q => gt_rxresetdone_r3,
      R => '0'
    );
gt_rxresetdone_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s_level_out_d5_reg,
      CE => '1',
      CLR => gt_rxresetdone_r2_reg_0,
      D => '1',
      Q => gt_rxresetdone_r
    );
gt_txresetdone_r2_reg: unisim.vcomponents.FDCE
     port map (
      C => s_level_out_d5_reg,
      CE => '1',
      CLR => gt_txresetdone_r2_reg_0,
      D => gt_txresetdone_r,
      Q => gt_txresetdone_r2
    );
gt_txresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => s_level_out_d5_reg,
      CE => '1',
      D => gt_txresetdone_r2,
      Q => gt_txresetdone_r3,
      R => '0'
    );
gt_txresetdone_r_reg: unisim.vcomponents.FDCE
     port map (
      C => s_level_out_d5_reg,
      CE => '1',
      CLR => gt_txresetdone_r2_reg_0,
      D => '1',
      Q => gt_txresetdone_r
    );
link_reset_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_17\
     port map (
      init_clk_in => init_clk_in,
      link_reset_r => link_reset_r,
      \out\ => link_reset_sync,
      s_level_out_d5_reg_0 => s_level_out_d5_reg
    );
new_pkt_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030103000001000"
    )
        port map (
      I0 => s_axi_tx_tlast,
      I1 => \^sr\(0),
      I2 => channel_up,
      I3 => s_axi_tx_tvalid,
      I4 => tx_dst_rdy,
      I5 => new_pkt_r_reg,
      O => new_pkt_r
    );
tx_lock_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_18\
     port map (
      init_clk_in => init_clk_in,
      \out\ => tx_lock_sync,
      s_level_out_d5_reg_0 => s_level_out_d5_reg,
      tx_lock_comb_r => tx_lock_comb_r
    );
tx_lock_comb_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => tx_lock_comb_r_reg_0,
      Q => tx_lock_comb_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH is
  port (
    rx_eof : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \MUXED_DATA_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    STORAGE_SELECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    \stage_2_data_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \STORAGE_DATA_reg[31]\ : in STD_LOGIC;
    \stage_2_data_r_reg[8]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \stage_2_data_r_reg[16]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \stage_2_data_r_reg[24]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \IN_FRAME_reg[1]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_frame_r_reg : in STD_LOGIC;
    after_scp_select_c_1 : in STD_LOGIC;
    after_scp_select_c_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    stage_1_pad_r_reg_0 : in STD_LOGIC;
    start_rx_i : in STD_LOGIC;
    \DEFRAMED_DATA_V_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \stage_1_ecp_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \STORAGE_DATA_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH : entity is "aurora_8b10b_0_RX_LL_PDU_DATAPATH";
end aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH is
  signal EOF_N : STD_LOGIC;
  signal FRAME_ERR_RESULT : STD_LOGIC;
  signal FRAME_ERR_RESULT0 : STD_LOGIC;
  signal \^muxed_data_reg[0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MUX_SELECT : STD_LOGIC_VECTOR ( 2 to 2 );
  signal OUTPUT_SELECT : STD_LOGIC;
  signal SRC_RDY_N : STD_LOGIC;
  signal STORAGE_DATA : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ce_command_c : STD_LOGIC_VECTOR ( 0 to 1 );
  signal count_c : STD_LOGIC_VECTOR ( 0 to 1 );
  signal end_storage_r0 : STD_LOGIC;
  signal excess_c : STD_LOGIC;
  signal mux_select_c : STD_LOGIC_VECTOR ( 2 to 2 );
  signal output_select_c : STD_LOGIC_VECTOR ( 9 to 9 );
  signal p_0_in0 : STD_LOGIC;
  signal \^rx_eof\ : STD_LOGIC;
  signal rx_src_rdy : STD_LOGIC;
  signal sideband_output_i_n_1 : STD_LOGIC;
  signal sideband_output_i_n_6 : STD_LOGIC;
  signal sideband_output_i_n_7 : STD_LOGIC;
  signal \stage_1_data_r_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[10]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[11]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[12]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[13]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[14]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[15]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[16]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[17]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[18]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[19]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[20]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[21]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[22]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[23]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[24]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[25]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[26]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[27]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[28]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[29]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[30]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[31]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[5]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[6]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[7]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[8]_srl3_n_0\ : STD_LOGIC;
  signal \stage_1_data_r_reg[9]_srl3_n_0\ : STD_LOGIC;
  signal stage_1_ecp_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_1_pad_r : STD_LOGIC;
  signal stage_1_rx_ll_deframer_i_n_0 : STD_LOGIC;
  signal stage_1_rx_ll_deframer_i_n_2 : STD_LOGIC;
  signal stage_1_rx_ll_deframer_i_n_3 : STD_LOGIC;
  signal stage_1_rx_ll_deframer_i_n_4 : STD_LOGIC;
  signal stage_1_scp_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_2_data_r : STD_LOGIC_VECTOR ( 0 to 31 );
  signal stage_2_data_v_count_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_2_end_after_start_r : STD_LOGIC;
  signal stage_2_end_before_start_r : STD_LOGIC;
  signal stage_2_frame_err_r : STD_LOGIC;
  signal stage_2_pad_r : STD_LOGIC;
  signal stage_2_start_with_data_r : STD_LOGIC;
  signal stage_3_end_storage_r : STD_LOGIC;
  signal stage_3_storage_ce_control_i_n_1 : STD_LOGIC;
  signal stage_3_storage_count_control_i_n_3 : STD_LOGIC;
  signal stage_3_storage_count_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal storage_count_c : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \storage_not_empty_c__0\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \stage_1_data_r_reg[0]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \stage_1_data_r_reg[0]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[0]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[10]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[10]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[10]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[11]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[11]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[11]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[12]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[12]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[12]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[13]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[13]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[13]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[14]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[14]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[14]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[15]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[15]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[15]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[16]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[16]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[16]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[17]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[17]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[17]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[18]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[18]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[18]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[19]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[19]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[19]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[1]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[1]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[1]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[20]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[20]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[20]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[21]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[21]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[21]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[22]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[22]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[22]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[23]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[23]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[23]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[24]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[24]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[24]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[25]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[25]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[25]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[26]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[26]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[26]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[27]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[27]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[27]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[28]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[28]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[28]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[29]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[29]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[29]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[2]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[30]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[30]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[30]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[31]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[31]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[31]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[3]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[3]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[3]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[4]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[4]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[4]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[5]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[5]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[5]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[6]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[6]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[6]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[7]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[7]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[7]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[8]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[8]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[8]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[9]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[9]_srl3\ : label is "inst/\aurora_8b10b_0_core_i/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[9]_srl3 ";
begin
  \MUXED_DATA_reg[0]\(31 downto 0) <= \^muxed_data_reg[0]\(31 downto 0);
  rx_eof <= \^rx_eof\;
FRAME_ERR_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => FRAME_ERR_RESULT,
      Q => frame_err,
      R => SR(0)
    );
RX_EOF_N_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => EOF_N,
      Q => \^rx_eof\,
      R => '0'
    );
\RX_REM_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => sideband_output_i_n_6,
      Q => Q(1),
      R => '0'
    );
\RX_REM_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => sideband_output_i_n_7,
      Q => Q(0),
      R => '0'
    );
RX_SRC_RDY_N_reg: unisim.vcomponents.FDSE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => SRC_RDY_N,
      Q => rx_src_rdy,
      S => SR(0)
    );
m_axi_rx_tlast_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_eof\,
      O => m_axi_rx_tlast
    );
m_axi_rx_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rx_src_rdy,
      O => m_axi_rx_tvalid
    );
output_mux_i: entity work.aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX
     port map (
      \OUTPUT_DATA_reg[0]_0\ => \STORAGE_DATA_reg[31]\,
      \OUTPUT_DATA_reg[16]_0\(15 downto 0) => \^muxed_data_reg[0]\(31 downto 16),
      OUTPUT_SELECT => OUTPUT_SELECT,
      Q(31) => STORAGE_DATA(0),
      Q(30) => STORAGE_DATA(1),
      Q(29) => STORAGE_DATA(2),
      Q(28) => STORAGE_DATA(3),
      Q(27) => STORAGE_DATA(4),
      Q(26) => STORAGE_DATA(5),
      Q(25) => STORAGE_DATA(6),
      Q(24) => STORAGE_DATA(7),
      Q(23) => STORAGE_DATA(8),
      Q(22) => STORAGE_DATA(9),
      Q(21) => STORAGE_DATA(10),
      Q(20) => STORAGE_DATA(11),
      Q(19) => STORAGE_DATA(12),
      Q(18) => STORAGE_DATA(13),
      Q(17) => STORAGE_DATA(14),
      Q(16) => STORAGE_DATA(15),
      Q(15) => STORAGE_DATA(16),
      Q(14) => STORAGE_DATA(17),
      Q(13) => STORAGE_DATA(18),
      Q(12) => STORAGE_DATA(19),
      Q(11) => STORAGE_DATA(20),
      Q(10) => STORAGE_DATA(21),
      Q(9) => STORAGE_DATA(22),
      Q(8) => STORAGE_DATA(23),
      Q(7) => STORAGE_DATA(24),
      Q(6) => STORAGE_DATA(25),
      Q(5) => STORAGE_DATA(26),
      Q(4) => STORAGE_DATA(27),
      Q(3) => STORAGE_DATA(28),
      Q(2) => STORAGE_DATA(29),
      Q(1) => STORAGE_DATA(30),
      Q(0) => STORAGE_DATA(31),
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31)
    );
sideband_output_i: entity work.aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT
     port map (
      D(0) => storage_count_c(1),
      EOF_N => EOF_N,
      EOF_N_reg_0 => stage_3_storage_count_control_i_n_3,
      FRAME_ERR_RESULT => FRAME_ERR_RESULT,
      FRAME_ERR_RESULT0 => FRAME_ERR_RESULT0,
      Q(0) => stage_2_data_v_count_r(1),
      \RX_REM_reg[0]_0\(1) => sideband_output_i_n_6,
      \RX_REM_reg[0]_0\(0) => sideband_output_i_n_7,
      \RX_REM_reg[0]_1\(0) => stage_3_storage_count_r(1),
      SR(0) => sideband_output_i_n_1,
      SRC_RDY_N => SRC_RDY_N,
      SRC_RDY_N_reg_0 => \STORAGE_DATA_reg[31]\,
      end_storage_r0 => end_storage_r0,
      excess_c => excess_c,
      stage_2_end_before_start_r => stage_2_end_before_start_r,
      stage_2_frame_err_r => stage_2_frame_err_r,
      stage_2_pad_r => stage_2_pad_r,
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r,
      start_rx_i => start_rx_i
    );
\stage_1_data_r_reg[0]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(7),
      Q => \stage_1_data_r_reg[0]_srl3_n_0\
    );
\stage_1_data_r_reg[10]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(5),
      Q => \stage_1_data_r_reg[10]_srl3_n_0\
    );
\stage_1_data_r_reg[11]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(4),
      Q => \stage_1_data_r_reg[11]_srl3_n_0\
    );
\stage_1_data_r_reg[12]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(3),
      Q => \stage_1_data_r_reg[12]_srl3_n_0\
    );
\stage_1_data_r_reg[13]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(2),
      Q => \stage_1_data_r_reg[13]_srl3_n_0\
    );
\stage_1_data_r_reg[14]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(1),
      Q => \stage_1_data_r_reg[14]_srl3_n_0\
    );
\stage_1_data_r_reg[15]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(0),
      Q => \stage_1_data_r_reg[15]_srl3_n_0\
    );
\stage_1_data_r_reg[16]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(7),
      Q => \stage_1_data_r_reg[16]_srl3_n_0\
    );
\stage_1_data_r_reg[17]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(6),
      Q => \stage_1_data_r_reg[17]_srl3_n_0\
    );
\stage_1_data_r_reg[18]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(5),
      Q => \stage_1_data_r_reg[18]_srl3_n_0\
    );
\stage_1_data_r_reg[19]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(4),
      Q => \stage_1_data_r_reg[19]_srl3_n_0\
    );
\stage_1_data_r_reg[1]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(6),
      Q => \stage_1_data_r_reg[1]_srl3_n_0\
    );
\stage_1_data_r_reg[20]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(3),
      Q => \stage_1_data_r_reg[20]_srl3_n_0\
    );
\stage_1_data_r_reg[21]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(2),
      Q => \stage_1_data_r_reg[21]_srl3_n_0\
    );
\stage_1_data_r_reg[22]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(1),
      Q => \stage_1_data_r_reg[22]_srl3_n_0\
    );
\stage_1_data_r_reg[23]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[16]_0\(0),
      Q => \stage_1_data_r_reg[23]_srl3_n_0\
    );
\stage_1_data_r_reg[24]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(7),
      Q => \stage_1_data_r_reg[24]_srl3_n_0\
    );
\stage_1_data_r_reg[25]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(6),
      Q => \stage_1_data_r_reg[25]_srl3_n_0\
    );
\stage_1_data_r_reg[26]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(5),
      Q => \stage_1_data_r_reg[26]_srl3_n_0\
    );
\stage_1_data_r_reg[27]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(4),
      Q => \stage_1_data_r_reg[27]_srl3_n_0\
    );
\stage_1_data_r_reg[28]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(3),
      Q => \stage_1_data_r_reg[28]_srl3_n_0\
    );
\stage_1_data_r_reg[29]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(2),
      Q => \stage_1_data_r_reg[29]_srl3_n_0\
    );
\stage_1_data_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(5),
      Q => \stage_1_data_r_reg[2]_srl3_n_0\
    );
\stage_1_data_r_reg[30]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(1),
      Q => \stage_1_data_r_reg[30]_srl3_n_0\
    );
\stage_1_data_r_reg[31]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[24]_0\(0),
      Q => \stage_1_data_r_reg[31]_srl3_n_0\
    );
\stage_1_data_r_reg[3]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(4),
      Q => \stage_1_data_r_reg[3]_srl3_n_0\
    );
\stage_1_data_r_reg[4]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(3),
      Q => \stage_1_data_r_reg[4]_srl3_n_0\
    );
\stage_1_data_r_reg[5]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(2),
      Q => \stage_1_data_r_reg[5]_srl3_n_0\
    );
\stage_1_data_r_reg[6]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(1),
      Q => \stage_1_data_r_reg[6]_srl3_n_0\
    );
\stage_1_data_r_reg[7]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[0]_0\(0),
      Q => \stage_1_data_r_reg[7]_srl3_n_0\
    );
\stage_1_data_r_reg[8]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(7),
      Q => \stage_1_data_r_reg[8]_srl3_n_0\
    );
\stage_1_data_r_reg[9]_srl3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \STORAGE_DATA_reg[31]\,
      D => \stage_2_data_r_reg[8]_0\(6),
      Q => \stage_1_data_r_reg[9]_srl3_n_0\
    );
\stage_1_ecp_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_ecp_r_reg[0]_0\(1),
      Q => stage_1_ecp_r(0),
      R => '0'
    );
\stage_1_ecp_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_ecp_r_reg[0]_0\(0),
      Q => stage_1_ecp_r(1),
      R => '0'
    );
stage_1_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => stage_1_pad_r_reg_0,
      Q => stage_1_pad_r,
      R => '0'
    );
stage_1_rx_ll_deframer_i: entity work.aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER
     port map (
      \AFTER_SCP_reg[1]_0\ => stage_1_rx_ll_deframer_i_n_2,
      \AFTER_SCP_reg[1]_1\ => stage_1_rx_ll_deframer_i_n_3,
      \AFTER_SCP_reg[1]_2\ => stage_1_rx_ll_deframer_i_n_4,
      D(1 downto 0) => D(1 downto 0),
      \DEFRAMED_DATA_V_reg[0]_0\(1 downto 0) => \DEFRAMED_DATA_V_reg[0]\(1 downto 0),
      \DEFRAMED_DATA_V_reg[1]_0\(1) => count_c(0),
      \DEFRAMED_DATA_V_reg[1]_0\(0) => count_c(1),
      \IN_FRAME_reg[0]_0\ => \STORAGE_DATA_reg[31]\,
      \IN_FRAME_reg[1]_0\ => \IN_FRAME_reg[1]\,
      Q(1) => stage_1_ecp_r(0),
      Q(0) => stage_1_ecp_r(1),
      SR(0) => SR(0),
      after_scp_select_c_0 => after_scp_select_c_0,
      after_scp_select_c_1 => after_scp_select_c_1,
      in_frame_r_reg_0 => in_frame_r_reg,
      mux_select_c(0) => mux_select_c(2),
      \stage_1_ecp_r_reg[0]\ => stage_1_rx_ll_deframer_i_n_0,
      stage_2_frame_err_r_reg(1) => stage_1_scp_r(0),
      stage_2_frame_err_r_reg(0) => stage_1_scp_r(1)
    );
\stage_1_scp_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => D(1),
      Q => stage_1_scp_r(0),
      R => '0'
    );
\stage_1_scp_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => D(0),
      Q => stage_1_scp_r(1),
      R => '0'
    );
\stage_2_data_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[0]_srl3_n_0\,
      Q => stage_2_data_r(0),
      R => '0'
    );
\stage_2_data_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[10]_srl3_n_0\,
      Q => stage_2_data_r(10),
      R => '0'
    );
\stage_2_data_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[11]_srl3_n_0\,
      Q => stage_2_data_r(11),
      R => '0'
    );
\stage_2_data_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[12]_srl3_n_0\,
      Q => stage_2_data_r(12),
      R => '0'
    );
\stage_2_data_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[13]_srl3_n_0\,
      Q => stage_2_data_r(13),
      R => '0'
    );
\stage_2_data_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[14]_srl3_n_0\,
      Q => stage_2_data_r(14),
      R => '0'
    );
\stage_2_data_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[15]_srl3_n_0\,
      Q => stage_2_data_r(15),
      R => '0'
    );
\stage_2_data_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[16]_srl3_n_0\,
      Q => stage_2_data_r(16),
      R => '0'
    );
\stage_2_data_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[17]_srl3_n_0\,
      Q => stage_2_data_r(17),
      R => '0'
    );
\stage_2_data_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[18]_srl3_n_0\,
      Q => stage_2_data_r(18),
      R => '0'
    );
\stage_2_data_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[19]_srl3_n_0\,
      Q => stage_2_data_r(19),
      R => '0'
    );
\stage_2_data_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[1]_srl3_n_0\,
      Q => stage_2_data_r(1),
      R => '0'
    );
\stage_2_data_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[20]_srl3_n_0\,
      Q => stage_2_data_r(20),
      R => '0'
    );
\stage_2_data_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[21]_srl3_n_0\,
      Q => stage_2_data_r(21),
      R => '0'
    );
\stage_2_data_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[22]_srl3_n_0\,
      Q => stage_2_data_r(22),
      R => '0'
    );
\stage_2_data_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[23]_srl3_n_0\,
      Q => stage_2_data_r(23),
      R => '0'
    );
\stage_2_data_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[24]_srl3_n_0\,
      Q => stage_2_data_r(24),
      R => '0'
    );
\stage_2_data_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[25]_srl3_n_0\,
      Q => stage_2_data_r(25),
      R => '0'
    );
\stage_2_data_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[26]_srl3_n_0\,
      Q => stage_2_data_r(26),
      R => '0'
    );
\stage_2_data_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[27]_srl3_n_0\,
      Q => stage_2_data_r(27),
      R => '0'
    );
\stage_2_data_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[28]_srl3_n_0\,
      Q => stage_2_data_r(28),
      R => '0'
    );
\stage_2_data_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[29]_srl3_n_0\,
      Q => stage_2_data_r(29),
      R => '0'
    );
\stage_2_data_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[2]_srl3_n_0\,
      Q => stage_2_data_r(2),
      R => '0'
    );
\stage_2_data_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[30]_srl3_n_0\,
      Q => stage_2_data_r(30),
      R => '0'
    );
\stage_2_data_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[31]_srl3_n_0\,
      Q => stage_2_data_r(31),
      R => '0'
    );
\stage_2_data_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[3]_srl3_n_0\,
      Q => stage_2_data_r(3),
      R => '0'
    );
\stage_2_data_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[4]_srl3_n_0\,
      Q => stage_2_data_r(4),
      R => '0'
    );
\stage_2_data_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[5]_srl3_n_0\,
      Q => stage_2_data_r(5),
      R => '0'
    );
\stage_2_data_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[6]_srl3_n_0\,
      Q => stage_2_data_r(6),
      R => '0'
    );
\stage_2_data_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[7]_srl3_n_0\,
      Q => stage_2_data_r(7),
      R => '0'
    );
\stage_2_data_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[8]_srl3_n_0\,
      Q => stage_2_data_r(8),
      R => '0'
    );
\stage_2_data_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => \stage_1_data_r_reg[9]_srl3_n_0\,
      Q => stage_2_data_r(9),
      R => '0'
    );
stage_2_end_after_start_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => stage_1_rx_ll_deframer_i_n_4,
      Q => stage_2_end_after_start_r,
      R => SR(0)
    );
stage_2_end_before_start_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => stage_1_rx_ll_deframer_i_n_3,
      Q => stage_2_end_before_start_r,
      R => SR(0)
    );
stage_2_frame_err_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => stage_1_rx_ll_deframer_i_n_0,
      Q => stage_2_frame_err_r,
      R => SR(0)
    );
stage_2_left_align_control_i: entity work.aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL
     port map (
      MUX_SELECT(0) => MUX_SELECT(2),
      \MUX_SELECT_reg[2]_0\ => \STORAGE_DATA_reg[31]\,
      mux_select_c(0) => mux_select_c(2)
    );
stage_2_pad_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => stage_1_pad_r,
      Q => stage_2_pad_r,
      R => '0'
    );
stage_2_start_with_data_r_reg: unisim.vcomponents.FDRE
     port map (
      C => \STORAGE_DATA_reg[31]\,
      CE => '1',
      D => stage_1_rx_ll_deframer_i_n_2,
      Q => stage_2_start_with_data_r,
      R => SR(0)
    );
stage_2_valid_data_counter_i: entity work.aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER
     port map (
      \COUNT_reg[0]_0\(1) => count_c(0),
      \COUNT_reg[0]_0\(0) => count_c(1),
      \COUNT_reg[0]_1\ => \STORAGE_DATA_reg[31]\,
      D(1) => ce_command_c(0),
      D(0) => ce_command_c(1),
      FRAME_ERR_RESULT0 => FRAME_ERR_RESULT0,
      Q(1) => stage_2_data_v_count_r(0),
      Q(0) => stage_2_data_v_count_r(1),
      SR(0) => SR(0),
      \STORAGE_CE_reg[0]\(1) => stage_3_storage_count_r(0),
      \STORAGE_CE_reg[0]\(0) => stage_3_storage_count_r(1),
      end_storage_r0 => end_storage_r0,
      end_storage_r_reg(0) => storage_count_c(0),
      excess_c => excess_c,
      stage_2_end_after_start_r => stage_2_end_after_start_r,
      stage_2_end_before_start_r => stage_2_end_before_start_r,
      stage_2_frame_err_r => stage_2_frame_err_r,
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r,
      \storage_not_empty_c__0\ => \storage_not_empty_c__0\
    );
stage_3_left_align_datapath_mux_i: entity work.aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX
     port map (
      \MUXED_DATA_reg[0]_0\(31 downto 0) => \^muxed_data_reg[0]\(31 downto 0),
      \MUXED_DATA_reg[0]_1\ => \STORAGE_DATA_reg[31]\,
      MUX_SELECT(0) => MUX_SELECT(2),
      stage_2_data_r(0 to 31) => stage_2_data_r(0 to 31)
    );
stage_3_output_switch_control_i: entity work.aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL
     port map (
      OUTPUT_SELECT => OUTPUT_SELECT,
      \OUTPUT_SELECT_reg[9]_0\ => \STORAGE_DATA_reg[31]\,
      output_select_c(0) => output_select_c(9)
    );
stage_3_storage_ce_control_i: entity work.aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL
     port map (
      D(1) => ce_command_c(0),
      D(0) => ce_command_c(1),
      Q(1) => p_0_in0,
      Q(0) => stage_3_storage_ce_control_i_n_1,
      SR(0) => SR(0),
      \STORAGE_CE_reg[1]_0\ => \STORAGE_DATA_reg[31]\
    );
stage_3_storage_count_control_i: entity work.aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL
     port map (
      D(1) => storage_count_c(0),
      D(0) => storage_count_c(1),
      \OUTPUT_SELECT_reg[9]\(1) => stage_2_data_v_count_r(0),
      \OUTPUT_SELECT_reg[9]\(0) => stage_2_data_v_count_r(1),
      Q(1) => stage_3_storage_count_r(0),
      Q(0) => stage_3_storage_count_r(1),
      SR(0) => sideband_output_i_n_1,
      end_storage_r_reg => stage_3_storage_count_control_i_n_3,
      output_select_c(0) => output_select_c(9),
      stage_2_end_before_start_r => stage_2_end_before_start_r,
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r,
      \storage_count_r_reg[1]_0\ => \STORAGE_DATA_reg[31]\,
      \storage_not_empty_c__0\ => \storage_not_empty_c__0\
    );
stage_3_storage_switch_control_i: entity work.aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL
     port map (
      Q(1) => stage_3_storage_count_r(0),
      Q(0) => stage_3_storage_count_r(1),
      STORAGE_SELECT(1 downto 0) => STORAGE_SELECT(1 downto 0),
      \STORAGE_SELECT_reg[4]_0\ => \STORAGE_DATA_reg[31]\,
      \STORAGE_SELECT_reg[9]_0\(1) => stage_2_data_v_count_r(0),
      \STORAGE_SELECT_reg[9]_0\(0) => stage_2_data_v_count_r(1),
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r
    );
stage_4_storage_mux_i: entity work.aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX
     port map (
      E(1) => p_0_in0,
      E(0) => stage_3_storage_ce_control_i_n_1,
      Q(31) => STORAGE_DATA(0),
      Q(30) => STORAGE_DATA(1),
      Q(29) => STORAGE_DATA(2),
      Q(28) => STORAGE_DATA(3),
      Q(27) => STORAGE_DATA(4),
      Q(26) => STORAGE_DATA(5),
      Q(25) => STORAGE_DATA(6),
      Q(24) => STORAGE_DATA(7),
      Q(23) => STORAGE_DATA(8),
      Q(22) => STORAGE_DATA(9),
      Q(21) => STORAGE_DATA(10),
      Q(20) => STORAGE_DATA(11),
      Q(19) => STORAGE_DATA(12),
      Q(18) => STORAGE_DATA(13),
      Q(17) => STORAGE_DATA(14),
      Q(16) => STORAGE_DATA(15),
      Q(15) => STORAGE_DATA(16),
      Q(14) => STORAGE_DATA(17),
      Q(13) => STORAGE_DATA(18),
      Q(12) => STORAGE_DATA(19),
      Q(11) => STORAGE_DATA(20),
      Q(10) => STORAGE_DATA(21),
      Q(9) => STORAGE_DATA(22),
      Q(8) => STORAGE_DATA(23),
      Q(7) => STORAGE_DATA(24),
      Q(6) => STORAGE_DATA(25),
      Q(5) => STORAGE_DATA(26),
      Q(4) => STORAGE_DATA(27),
      Q(3) => STORAGE_DATA(28),
      Q(2) => STORAGE_DATA(29),
      Q(1) => STORAGE_DATA(30),
      Q(0) => STORAGE_DATA(31),
      \STORAGE_DATA_reg[0]_0\(31 downto 0) => \STORAGE_DATA_reg[0]\(31 downto 0),
      \STORAGE_DATA_reg[31]_0\ => \STORAGE_DATA_reg[31]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_SUPPORT_RESET_LOGIC is
  port (
    gt_reset_out : out STD_LOGIC;
    in0 : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d6_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \debounce_gt_rst_r_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_SUPPORT_RESET_LOGIC : entity is "aurora_8b10b_0_SUPPORT_RESET_LOGIC";
end aurora_8b10b_0_aurora_8b10b_0_SUPPORT_RESET_LOGIC;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_SUPPORT_RESET_LOGIC is
  signal debounce_gt_rst_r : STD_LOGIC_VECTOR ( 0 to 3 );
  attribute async_reg : string;
  attribute async_reg of debounce_gt_rst_r : signal is "true";
  attribute shift_extract : string;
  attribute shift_extract of debounce_gt_rst_r : signal is "{no}";
  signal \^gt_reset_out\ : STD_LOGIC;
  signal gt_rst_r0_n_0 : STD_LOGIC;
  signal gt_rst_sync : STD_LOGIC;
  signal reset_debounce_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal reset_debounce_r20_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \debounce_gt_rst_r_reg[0]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[0]\ : label is "{no}";
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \debounce_gt_rst_r_reg[1]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[1]\ : label is "{no}";
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \debounce_gt_rst_r_reg[2]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[2]\ : label is "{no}";
  attribute ASYNC_REG_boolean of \debounce_gt_rst_r_reg[3]\ : label is std.standard.true;
  attribute KEEP of \debounce_gt_rst_r_reg[3]\ : label is "yes";
  attribute shift_extract of \debounce_gt_rst_r_reg[3]\ : label is "{no}";
begin
  gt_reset_out <= \^gt_reset_out\;
\debounce_gt_rst_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \debounce_gt_rst_r_reg[0]_0\(0),
      Q => debounce_gt_rst_r(0),
      R => '0'
    );
\debounce_gt_rst_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => debounce_gt_rst_r(0),
      Q => debounce_gt_rst_r(1),
      R => '0'
    );
\debounce_gt_rst_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => debounce_gt_rst_r(1),
      Q => debounce_gt_rst_r(2),
      R => '0'
    );
\debounce_gt_rst_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => debounce_gt_rst_r(2),
      Q => debounce_gt_rst_r(3),
      R => '0'
    );
gt_rst_r0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => debounce_gt_rst_r(2),
      I1 => debounce_gt_rst_r(3),
      I2 => debounce_gt_rst_r(0),
      I3 => debounce_gt_rst_r(1),
      O => gt_rst_r0_n_0
    );
gt_rst_r_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0\
     port map (
      AS(0) => gt_rst_sync,
      gt_reset_out => \^gt_reset_out\,
      init_clk_in => init_clk_in,
      s_level_out_d6_reg_0 => s_level_out_d6_reg
    );
gt_rst_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gt_rst_r0_n_0,
      Q => \^gt_reset_out\,
      R => '0'
    );
reset_debounce_r20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => reset_debounce_r(2),
      I1 => reset_debounce_r(3),
      I2 => reset_debounce_r(0),
      I3 => reset_debounce_r(1),
      O => reset_debounce_r20_n_0
    );
reset_debounce_r2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_level_out_d6_reg,
      CE => '1',
      D => reset_debounce_r20_n_0,
      Q => in0,
      R => '0'
    );
\reset_debounce_r_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg,
      CE => '1',
      D => D(0),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(0)
    );
\reset_debounce_r_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg,
      CE => '1',
      D => reset_debounce_r(0),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(1)
    );
\reset_debounce_r_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg,
      CE => '1',
      D => reset_debounce_r(1),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(2)
    );
\reset_debounce_r_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d6_reg,
      CE => '1',
      D => reset_debounce_r(2),
      PRE => gt_rst_sync,
      Q => reset_debounce_r(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_TX_LL is
  port (
    gen_cc_i : out STD_LOGIC;
    tx_dst_rdy : out STD_LOGIC;
    gen_scp_striped_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    gen_ecp_i : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    \TX_PE_DATA_V_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_PAD_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \TX_PE_DATA_reg[0]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \tx_pe_data_r_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    \tx_pe_data_v_r_reg[1]\ : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_TX_LL : entity is "aurora_8b10b_0_TX_LL";
end aurora_8b10b_0_aurora_8b10b_0_TX_LL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_TX_LL is
  signal do_cc_r : STD_LOGIC;
  signal pdu_ok_c : STD_LOGIC;
  signal storage_pad_r0 : STD_LOGIC;
  signal storage_v_r0 : STD_LOGIC;
  signal \^tx_dst_rdy\ : STD_LOGIC;
  signal tx_ll_control_i_n_10 : STD_LOGIC;
  signal tx_ll_control_i_n_7 : STD_LOGIC;
  signal tx_ll_datapath_i_n_0 : STD_LOGIC;
begin
  tx_dst_rdy <= \^tx_dst_rdy\;
tx_ll_control_i: entity work.aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL
     port map (
      D(0) => tx_ll_control_i_n_7,
      E(0) => pdu_ok_c,
      GEN_ECP_reg_0 => \tx_pe_data_r_reg[0]\,
      Q => Q,
      TX_DST_RDY_N_reg_0 => \^tx_dst_rdy\,
      do_cc_r => do_cc_r,
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      gen_scp_striped_i(0) => gen_scp_striped_i(0),
      idle_r_reg_0 => \tx_pe_data_v_r_reg[1]\,
      in_frame_r_reg => tx_ll_datapath_i_n_0,
      p_0_in => p_0_in,
      s_axi_tx_tkeep(0 to 3) => s_axi_tx_tkeep(0 to 3),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tlast_0 => tx_ll_control_i_n_10,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0,
      storage_v_r0 => storage_v_r0
    );
tx_ll_datapath_i: entity work.aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH
     port map (
      D(0) => tx_ll_control_i_n_7,
      E(0) => pdu_ok_c,
      \GEN_PAD_reg[0]_0\(1 downto 0) => \GEN_PAD_reg[0]\(1 downto 0),
      \TX_PE_DATA_V_reg[0]_0\(1 downto 0) => \TX_PE_DATA_V_reg[0]\(1 downto 0),
      \TX_PE_DATA_reg[0]_0\(31 downto 0) => \TX_PE_DATA_reg[0]\(31 downto 0),
      do_cc_r => do_cc_r,
      in_frame_r_reg_0 => tx_ll_datapath_i_n_0,
      in_frame_r_reg_1 => tx_ll_control_i_n_10,
      p_0_in => p_0_in,
      s_axi_tx_tdata(0 to 31) => s_axi_tx_tdata(0 to 31),
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0,
      storage_v_r0 => storage_v_r0,
      tx_dst_rdy => \^tx_dst_rdy\,
      \tx_pe_data_r_reg[0]_0\ => \tx_pe_data_r_reg[0]\,
      \tx_pe_data_v_r_reg[1]_0\ => \tx_pe_data_v_r_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_hotplug is
  port (
    link_reset_out : out STD_LOGIC;
    p_level_in_d1_cdc_from_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_hotplug : entity is "aurora_8b10b_0_hotplug";
end aurora_8b10b_0_aurora_8b10b_0_hotplug;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_hotplug is
  signal cc_sync : STD_LOGIC;
  signal \count_for_reset_r[0]_i_2_n_0\ : STD_LOGIC;
  signal count_for_reset_r_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \count_for_reset_r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_for_reset_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal link_reset_0 : STD_LOGIC;
  signal link_reset_0_i_1_n_0 : STD_LOGIC;
  signal link_reset_0_i_2_n_0 : STD_LOGIC;
  signal link_reset_0_i_3_n_0 : STD_LOGIC;
  signal link_reset_0_i_4_n_0 : STD_LOGIC;
  signal link_reset_0_i_5_n_0 : STD_LOGIC;
  signal link_reset_0_i_6_n_0 : STD_LOGIC;
  signal link_reset_0_i_7_n_0 : STD_LOGIC;
  signal rx_cc_extend_r : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_cc_extend_r2 : STD_LOGIC;
  signal rx_cc_extend_r2_i_1_n_0 : STD_LOGIC;
  signal rx_cc_extend_r2_i_2_n_0 : STD_LOGIC;
  signal \NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\count_for_reset_r[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_for_reset_r_reg(0),
      O => \count_for_reset_r[0]_i_2_n_0\
    );
\count_for_reset_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_7\,
      Q => count_for_reset_r_reg(0),
      R => cc_sync
    );
\count_for_reset_r_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_for_reset_r_reg[0]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[0]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[0]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_for_reset_r_reg[0]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[0]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[0]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[0]_i_1_n_7\,
      S(3 downto 1) => count_for_reset_r_reg(3 downto 1),
      S(0) => \count_for_reset_r[0]_i_2_n_0\
    );
\count_for_reset_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_5\,
      Q => count_for_reset_r_reg(10),
      R => cc_sync
    );
\count_for_reset_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_4\,
      Q => count_for_reset_r_reg(11),
      R => cc_sync
    );
\count_for_reset_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_7\,
      Q => count_for_reset_r_reg(12),
      R => cc_sync
    );
\count_for_reset_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[8]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[12]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[12]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[12]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[12]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[12]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[12]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_for_reset_r_reg(15 downto 12)
    );
\count_for_reset_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_6\,
      Q => count_for_reset_r_reg(13),
      R => cc_sync
    );
\count_for_reset_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_5\,
      Q => count_for_reset_r_reg(14),
      R => cc_sync
    );
\count_for_reset_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[12]_i_1_n_4\,
      Q => count_for_reset_r_reg(15),
      R => cc_sync
    );
\count_for_reset_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_7\,
      Q => count_for_reset_r_reg(16),
      R => cc_sync
    );
\count_for_reset_r_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[12]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[16]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[16]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[16]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[16]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[16]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[16]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_for_reset_r_reg(19 downto 16)
    );
\count_for_reset_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_6\,
      Q => count_for_reset_r_reg(17),
      R => cc_sync
    );
\count_for_reset_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_5\,
      Q => count_for_reset_r_reg(18),
      R => cc_sync
    );
\count_for_reset_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[16]_i_1_n_4\,
      Q => count_for_reset_r_reg(19),
      R => cc_sync
    );
\count_for_reset_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_6\,
      Q => count_for_reset_r_reg(1),
      R => cc_sync
    );
\count_for_reset_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[20]_i_1_n_7\,
      Q => count_for_reset_r_reg(20),
      R => cc_sync
    );
\count_for_reset_r_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[16]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[20]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[20]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[20]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[20]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[20]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[20]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_for_reset_r_reg(23 downto 20)
    );
\count_for_reset_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[20]_i_1_n_6\,
      Q => count_for_reset_r_reg(21),
      R => cc_sync
    );
\count_for_reset_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[20]_i_1_n_5\,
      Q => count_for_reset_r_reg(22),
      R => cc_sync
    );
\count_for_reset_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[20]_i_1_n_4\,
      Q => count_for_reset_r_reg(23),
      R => cc_sync
    );
\count_for_reset_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[24]_i_1_n_7\,
      Q => count_for_reset_r_reg(24),
      R => cc_sync
    );
\count_for_reset_r_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_for_reset_r_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_for_reset_r_reg[24]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[24]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => count_for_reset_r_reg(25 downto 24)
    );
\count_for_reset_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[24]_i_1_n_6\,
      Q => count_for_reset_r_reg(25),
      R => cc_sync
    );
\count_for_reset_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_5\,
      Q => count_for_reset_r_reg(2),
      R => cc_sync
    );
\count_for_reset_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[0]_i_1_n_4\,
      Q => count_for_reset_r_reg(3),
      R => cc_sync
    );
\count_for_reset_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_7\,
      Q => count_for_reset_r_reg(4),
      R => cc_sync
    );
\count_for_reset_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[0]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[4]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[4]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[4]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[4]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[4]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[4]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_for_reset_r_reg(7 downto 4)
    );
\count_for_reset_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_6\,
      Q => count_for_reset_r_reg(5),
      R => cc_sync
    );
\count_for_reset_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_5\,
      Q => count_for_reset_r_reg(6),
      R => cc_sync
    );
\count_for_reset_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[4]_i_1_n_4\,
      Q => count_for_reset_r_reg(7),
      R => cc_sync
    );
\count_for_reset_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_7\,
      Q => count_for_reset_r_reg(8),
      R => cc_sync
    );
\count_for_reset_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_for_reset_r_reg[4]_i_1_n_0\,
      CO(3) => \count_for_reset_r_reg[8]_i_1_n_0\,
      CO(2) => \count_for_reset_r_reg[8]_i_1_n_1\,
      CO(1) => \count_for_reset_r_reg[8]_i_1_n_2\,
      CO(0) => \count_for_reset_r_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_for_reset_r_reg[8]_i_1_n_4\,
      O(2) => \count_for_reset_r_reg[8]_i_1_n_5\,
      O(1) => \count_for_reset_r_reg[8]_i_1_n_6\,
      O(0) => \count_for_reset_r_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_for_reset_r_reg(11 downto 8)
    );
\count_for_reset_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \count_for_reset_r_reg[8]_i_1_n_6\,
      Q => count_for_reset_r_reg(9),
      R => cc_sync
    );
link_reset_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005444"
    )
        port map (
      I0 => link_reset_0_i_2_n_0,
      I1 => count_for_reset_r_reg(4),
      I2 => count_for_reset_r_reg(2),
      I3 => count_for_reset_r_reg(3),
      I4 => link_reset_0_i_3_n_0,
      I5 => link_reset_0_i_4_n_0,
      O => link_reset_0_i_1_n_0
    );
link_reset_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => count_for_reset_r_reg(14),
      I1 => count_for_reset_r_reg(10),
      I2 => count_for_reset_r_reg(13),
      I3 => link_reset_0_i_5_n_0,
      O => link_reset_0_i_2_n_0
    );
link_reset_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => link_reset_0_i_6_n_0,
      I1 => link_reset_0_i_7_n_0,
      I2 => count_for_reset_r_reg(6),
      I3 => count_for_reset_r_reg(21),
      I4 => count_for_reset_r_reg(5),
      I5 => count_for_reset_r_reg(16),
      O => link_reset_0_i_3_n_0
    );
link_reset_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_for_reset_r_reg(2),
      I1 => count_for_reset_r_reg(3),
      I2 => count_for_reset_r_reg(0),
      I3 => count_for_reset_r_reg(4),
      I4 => count_for_reset_r_reg(10),
      I5 => count_for_reset_r_reg(1),
      O => link_reset_0_i_4_n_0
    );
link_reset_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_for_reset_r_reg(7),
      I1 => count_for_reset_r_reg(22),
      I2 => count_for_reset_r_reg(8),
      I3 => count_for_reset_r_reg(15),
      O => link_reset_0_i_5_n_0
    );
link_reset_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_for_reset_r_reg(9),
      I1 => count_for_reset_r_reg(18),
      I2 => count_for_reset_r_reg(24),
      I3 => count_for_reset_r_reg(11),
      I4 => count_for_reset_r_reg(19),
      I5 => count_for_reset_r_reg(17),
      O => link_reset_0_i_6_n_0
    );
link_reset_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_for_reset_r_reg(12),
      I1 => count_for_reset_r_reg(23),
      I2 => count_for_reset_r_reg(20),
      I3 => count_for_reset_r_reg(25),
      O => link_reset_0_i_7_n_0
    );
link_reset_0_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_0_i_1_n_0,
      Q => link_reset_0,
      R => '0'
    );
\link_reset_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_0,
      Q => link_reset_out,
      R => '0'
    );
rx_cc_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_19\
     port map (
      init_clk_in => init_clk_in,
      \out\ => cc_sync,
      p_level_in_d1_cdc_from_reg_0 => p_level_in_d1_cdc_from_reg,
      rx_cc_extend_r2 => rx_cc_extend_r2
    );
rx_cc_extend_r2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rx_cc_extend_r(2),
      I1 => rx_cc_extend_r(3),
      I2 => rx_cc_extend_r(0),
      I3 => rx_cc_extend_r(1),
      I4 => rx_cc_extend_r2_i_2_n_0,
      O => rx_cc_extend_r2_i_1_n_0
    );
rx_cc_extend_r2_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rx_cc_extend_r(5),
      I1 => rx_cc_extend_r(4),
      I2 => rx_cc_extend_r(7),
      I3 => rx_cc_extend_r(6),
      O => rx_cc_extend_r2_i_2_n_0
    );
rx_cc_extend_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r2_i_1_n_0,
      Q => rx_cc_extend_r2,
      R => '0'
    );
\rx_cc_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r(1),
      Q => rx_cc_extend_r(0),
      R => SR(0)
    );
\rx_cc_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r(2),
      Q => rx_cc_extend_r(1),
      R => SR(0)
    );
\rx_cc_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r(3),
      Q => rx_cc_extend_r(2),
      R => SR(0)
    );
\rx_cc_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r(4),
      Q => rx_cc_extend_r(3),
      R => SR(0)
    );
\rx_cc_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r(5),
      Q => rx_cc_extend_r(4),
      R => SR(0)
    );
\rx_cc_extend_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r(6),
      Q => rx_cc_extend_r(5),
      R => SR(0)
    );
\rx_cc_extend_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rx_cc_extend_r(7),
      Q => rx_cc_extend_r(6),
      R => SR(0)
    );
\rx_cc_extend_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => D(0),
      Q => rx_cc_extend_r(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_multi_gt is
  port (
    in0 : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    init_clk_in_0 : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    init_clk_in_1 : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ack_flag : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC;
    ENABLE_ERR_DETECT_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    consecutive_commas_r_reg : out STD_LOGIC;
    init_clk_in_2 : out STD_LOGIC;
    \previous_cycle_data_r_reg[7]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \left_align_select_r_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \previous_cycle_control_r_reg[0]\ : out STD_LOGIC;
    \left_align_select_r_reg[1]\ : out STD_LOGIC;
    hard_err_gt0 : out STD_LOGIC;
    \left_align_select_r_reg[0]_0\ : out STD_LOGIC;
    \left_align_select_r_reg[1]_0\ : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt_tx_reset_i : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad1_out : in STD_LOGIC;
    gt_qpllrefclk_quad1_out : in STD_LOGIC;
    gt_rxdfelfhold_i : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    flag2_reg : in STD_LOGIC;
    enable_err_detect_i : in STD_LOGIC;
    consecutive_commas_r : in STD_LOGIC;
    begin_r : in STD_LOGIC;
    \word_aligned_data_r_reg[16]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \left_align_select_r_reg[0]_1\ : in STD_LOGIC;
    \left_align_select_r_reg[1]_1\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpll_reset_i : in STD_LOGIC;
    \left_align_select_r_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_multi_gt : entity is "aurora_8b10b_0_multi_gt";
end aurora_8b10b_0_aurora_8b10b_0_multi_gt;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_multi_gt is
begin
gt0_aurora_8b10b_0_i: entity work.aurora_8b10b_0_aurora_8b10b_0_gt
     port map (
      D(3 downto 0) => D(3 downto 0),
      ENABLE_ERR_DETECT_reg(3 downto 0) => ENABLE_ERR_DETECT_reg(3 downto 0),
      RXCHARISK(3 downto 0) => RXCHARISK(3 downto 0),
      RXDATA(31 downto 0) => RXDATA(31 downto 0),
      SR(0) => SR(0),
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      ack_flag => ack_flag,
      begin_r => begin_r,
      consecutive_commas_r => consecutive_commas_r,
      consecutive_commas_r_reg => consecutive_commas_r_reg,
      cpll_reset_i => cpll_reset_i,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      enable_err_detect_i => enable_err_detect_i,
      flag2_reg_0 => flag2_reg,
      gt_qpllclk_quad1_out => gt_qpllclk_quad1_out,
      gt_qpllrefclk_quad1_out => gt_qpllrefclk_quad1_out,
      gt_refclk1 => gt_refclk1,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_gt0 => hard_err_gt0,
      in0 => in0,
      init_clk_in => init_clk_in,
      init_clk_in_0 => init_clk_in_0,
      init_clk_in_1 => init_clk_in_1,
      init_clk_in_2 => init_clk_in_2,
      \left_align_select_r_reg[0]\(7 downto 0) => \left_align_select_r_reg[0]\(7 downto 0),
      \left_align_select_r_reg[0]_0\ => \left_align_select_r_reg[0]_0\,
      \left_align_select_r_reg[0]_1\ => \left_align_select_r_reg[0]_1\,
      \left_align_select_r_reg[0]_2\ => \left_align_select_r_reg[0]_2\,
      \left_align_select_r_reg[1]\ => \left_align_select_r_reg[1]\,
      \left_align_select_r_reg[1]_0\ => \left_align_select_r_reg[1]_0\,
      \left_align_select_r_reg[1]_1\ => \left_align_select_r_reg[1]_1\,
      loopback(2 downto 0) => loopback(2 downto 0),
      pll_not_locked_out => pll_not_locked_out,
      power_down => power_down,
      \previous_cycle_control_r_reg[0]\ => \previous_cycle_control_r_reg[0]\,
      \previous_cycle_data_r_reg[7]\(5 downto 0) => \previous_cycle_data_r_reg[7]\(5 downto 0),
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxn => rxn,
      rxp => rxp,
      s_level_out_d1_aurora_8b10b_0_cdc_to_reg => s_level_out_d1_aurora_8b10b_0_cdc_to_reg,
      tx_out_clk => tx_out_clk,
      txn => txn,
      txp => txp,
      \word_aligned_control_bits_r_reg[2]\(0) => \word_aligned_control_bits_r_reg[2]\(0),
      \word_aligned_data_r_reg[16]\(5 downto 0) => \word_aligned_data_r_reg[16]\(5 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm is
  port (
    gtrxreset_i_0 : out STD_LOGIC;
    gt_rxuserrdy_i : out STD_LOGIC;
    gt_rxdfelfhold_i : out STD_LOGIC;
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    p_level_in_d1_cdc_from_reg : in STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_time_out_reg_0 : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm : entity is "aurora_8b10b_0_rx_startup_fsm";
end aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm is
  signal \FSM_sequential_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal RXDFEAGCHOLD_i_1_n_0 : STD_LOGIC;
  signal RXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal adapt_count : STD_LOGIC;
  signal \adapt_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_11_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \adapt_count[0]_i_9_n_0\ : STD_LOGIC;
  signal adapt_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \adapt_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \adapt_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \adapt_count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \adapt_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal check_tlock_max_i_1_n_0 : STD_LOGIC;
  signal check_tlock_max_reg_n_0 : STD_LOGIC;
  signal \^gt_rxdfelfhold_i\ : STD_LOGIC;
  signal \^gt_rxuserrdy_i\ : STD_LOGIC;
  signal \^gtrxreset_i_0\ : STD_LOGIC;
  signal gtrxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \init_wait_done_i_1__0_n_0\ : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \mmcm_lock_reclocked_i_2__0_n_0\ : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal recclk_mon_count_reset : STD_LOGIC;
  signal \reset_time_out_i_2__0_n_0\ : STD_LOGIC;
  signal reset_time_out_i_4_n_0 : STD_LOGIC;
  signal reset_time_out_i_5_n_0 : STD_LOGIC;
  signal reset_time_out_reg_n_0 : STD_LOGIC;
  signal \run_phase_alignment_int_i_1__0_n_0\ : STD_LOGIC;
  signal run_phase_alignment_int_reg_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3_reg_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_fsm_reset_done_int_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_i_3_n_0 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal sync_cplllock_cdc_sync_n_0 : STD_LOGIC;
  signal sync_cplllock_cdc_sync_n_1 : STD_LOGIC;
  signal sync_cplllock_cdc_sync_n_2 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_1 : STD_LOGIC;
  signal sync_rx_fsm_reset_done_int_cdc_sync_n_0 : STD_LOGIC;
  signal time_out_100us_i_1_n_0 : STD_LOGIC;
  signal time_out_100us_i_2_n_0 : STD_LOGIC;
  signal time_out_100us_i_3_n_0 : STD_LOGIC;
  signal time_out_100us_i_4_n_0 : STD_LOGIC;
  signal time_out_100us_reg_n_0 : STD_LOGIC;
  signal time_out_1us_i_1_n_0 : STD_LOGIC;
  signal time_out_1us_i_2_n_0 : STD_LOGIC;
  signal time_out_1us_i_3_n_0 : STD_LOGIC;
  signal time_out_1us_i_4_n_0 : STD_LOGIC;
  signal time_out_1us_i_5_n_0 : STD_LOGIC;
  signal time_out_1us_reg_n_0 : STD_LOGIC;
  signal time_out_2ms_i_1_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_adapt_i_1_n_0 : STD_LOGIC;
  signal time_out_adapt_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \time_out_counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \time_out_wait_bypass_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_wait_bypass_reg_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max_i_1_n_0 : STD_LOGIC;
  signal time_tlock_max_i_2_n_0 : STD_LOGIC;
  signal time_tlock_max_i_3_n_0 : STD_LOGIC;
  signal time_tlock_max_i_4_n_0 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_7__0_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_10_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_11_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_5__0_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_time_cnt_reg[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[1]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_11\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_7\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_8\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[3]_i_9\ : label is "soft_lutpair91";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[2]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[3]\ : label is "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3__0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4__0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1__0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4__0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \reset_time_out_i_2__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of reset_time_out_i_4 : label is "soft_lutpair92";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of run_phase_alignment_int_s3_reg : label is "no";
  attribute equivalent_register_removal of rx_fsm_reset_done_int_s3_reg : label is "no";
  attribute equivalent_register_removal of rxresetdone_s3_reg : label is "no";
  attribute SOFT_HLUTNM of time_out_100us_i_2 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of time_out_100us_i_4 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of time_out_1us_i_4 : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_6__0\ : label is "soft_lutpair95";
  attribute equivalent_register_removal of time_out_wait_bypass_s3_reg : label is "no";
begin
  gt_rxdfelfhold_i <= \^gt_rxdfelfhold_i\;
  gt_rxuserrdy_i <= \^gt_rxuserrdy_i\;
  gtrxreset_i_0 <= \^gtrxreset_i_0\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      I1 => rx_state(3),
      I2 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      O => \FSM_sequential_rx_state[0]_i_1_n_0\
    );
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3F73337B3F33333"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_9_n_0\,
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => reset_time_out_reg_n_0,
      I4 => time_out_2ms_reg_n_0,
      I5 => time_tlock_max,
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B888BB8B8B8B8"
    )
        port map (
      I0 => \FSM_sequential_rx_state[1]_i_2_n_0\,
      I1 => rx_state(3),
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I5 => rx_state(0),
      O => \FSM_sequential_rx_state[1]_i_1_n_0\
    );
\FSM_sequential_rx_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB000000"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_out_100us_reg_n_0,
      I2 => \^gt_rxuserrdy_i\,
      I3 => rx_state(0),
      I4 => \FSM_sequential_rx_state[3]_i_9_n_0\,
      O => \FSM_sequential_rx_state[1]_i_2_n_0\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000026AA04AA"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => time_out_2ms_reg_n_0,
      I3 => rx_state(0),
      I4 => \FSM_sequential_rx_state[2]_i_2_n_0\,
      I5 => rx_state(3),
      O => \FSM_sequential_rx_state[2]_i_1_n_0\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => reset_time_out_reg_n_0,
      I1 => time_tlock_max,
      O => \FSM_sequential_rx_state[2]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => rx_state(1),
      I1 => reset_time_out_reg_0,
      I2 => rx_state(0),
      I3 => mmcm_lock_reclocked,
      O => \FSM_sequential_rx_state[3]_i_10_n_0\
    );
\FSM_sequential_rx_state[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => rx_state(0),
      I1 => init_wait_done_reg_n_0,
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_11_n_0\
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB00AB00FFFFFF00"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => time_out_wait_bypass_s3,
      I2 => rx_state(0),
      I3 => rx_state(3),
      I4 => \FSM_sequential_rx_state[3]_i_8_n_0\,
      I5 => \FSM_sequential_rx_state[3]_i_9_n_0\,
      O => \FSM_sequential_rx_state[3]_i_2_n_0\
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CC4"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_7_n_0\,
      I1 => rx_state(3),
      I2 => \^gt_rxuserrdy_i\,
      I3 => rx_state(1),
      O => \FSM_sequential_rx_state[3]_i_3_n_0\
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10111111"
    )
        port map (
      I0 => \FSM_sequential_rx_state[3]_i_10_n_0\,
      I1 => \FSM_sequential_rx_state[3]_i_9_n_0\,
      I2 => reset_time_out_reg_n_0,
      I3 => time_tlock_max,
      I4 => rx_state(0),
      I5 => \FSM_sequential_rx_state[3]_i_11_n_0\,
      O => \FSM_sequential_rx_state[3]_i_4_n_0\
    );
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555775700000000"
    )
        port map (
      I0 => rx_state(0),
      I1 => \FSM_sequential_rx_state[3]_i_9_n_0\,
      I2 => time_out_2ms_reg_n_0,
      I3 => reset_time_out_reg_n_0,
      I4 => rxresetdone_s3,
      I5 => rx_state(1),
      O => \FSM_sequential_rx_state[3]_i_5_n_0\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => rx_state(0),
      I1 => \^gt_rxuserrdy_i\,
      I2 => time_out_100us_reg_n_0,
      I3 => reset_time_out_reg_n_0,
      O => \FSM_sequential_rx_state[3]_i_7_n_0\
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D000"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => reset_time_out_reg_n_0,
      I2 => rx_state(1),
      I3 => rx_state(0),
      O => \FSM_sequential_rx_state[3]_i_8_n_0\
    );
\FSM_sequential_rx_state[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(3),
      O => \FSM_sequential_rx_state[3]_i_9_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_rx_state[0]_i_1_n_0\,
      Q => rx_state(0),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_rx_state[1]_i_1_n_0\,
      Q => rx_state(1),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_rx_state[2]_i_1_n_0\,
      Q => rx_state(2),
      R => AR(0)
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_rx_state[3]_i_2_n_0\,
      Q => rx_state(3),
      R => AR(0)
    );
RXDFEAGCHOLD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(3),
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => time_out_adapt_reg_n_0,
      I5 => \^gt_rxdfelfhold_i\,
      O => RXDFEAGCHOLD_i_1_n_0
    );
RXDFEAGCHOLD_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => RXDFEAGCHOLD_i_1_n_0,
      Q => \^gt_rxdfelfhold_i\,
      R => AR(0)
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF308000000"
    )
        port map (
      I0 => gt_txuserrdy_i,
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => rx_state(2),
      I5 => \^gt_rxuserrdy_i\,
      O => RXUSERRDY_i_1_n_0
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => RXUSERRDY_i_1_n_0,
      Q => \^gt_rxuserrdy_i\,
      R => AR(0)
    );
\adapt_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \adapt_count[0]_i_3_n_0\,
      I1 => \adapt_count[0]_i_4_n_0\,
      I2 => \adapt_count[0]_i_5_n_0\,
      I3 => \adapt_count[0]_i_6_n_0\,
      O => adapt_count
    );
\adapt_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => adapt_count_reg(12),
      I1 => adapt_count_reg(21),
      I2 => adapt_count_reg(26),
      I3 => adapt_count_reg(27),
      O => \adapt_count[0]_i_10_n_0\
    );
\adapt_count[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => adapt_count_reg(8),
      I1 => adapt_count_reg(17),
      I2 => adapt_count_reg(16),
      I3 => adapt_count_reg(15),
      O => \adapt_count[0]_i_11_n_0\
    );
\adapt_count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => adapt_count_reg(0),
      I1 => adapt_count_reg(11),
      I2 => adapt_count_reg(28),
      I3 => adapt_count_reg(30),
      I4 => \adapt_count[0]_i_8_n_0\,
      O => \adapt_count[0]_i_3_n_0\
    );
\adapt_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => adapt_count_reg(6),
      I1 => adapt_count_reg(2),
      I2 => adapt_count_reg(1),
      I3 => adapt_count_reg(9),
      I4 => \adapt_count[0]_i_9_n_0\,
      O => \adapt_count[0]_i_4_n_0\
    );
\adapt_count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => adapt_count_reg(24),
      I1 => adapt_count_reg(23),
      I2 => adapt_count_reg(18),
      I3 => adapt_count_reg(14),
      I4 => \adapt_count[0]_i_10_n_0\,
      O => \adapt_count[0]_i_5_n_0\
    );
\adapt_count[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => adapt_count_reg(31),
      I1 => adapt_count_reg(5),
      I2 => adapt_count_reg(29),
      I3 => adapt_count_reg(20),
      I4 => \adapt_count[0]_i_11_n_0\,
      O => \adapt_count[0]_i_6_n_0\
    );
\adapt_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adapt_count_reg(0),
      O => \adapt_count[0]_i_7_n_0\
    );
\adapt_count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => adapt_count_reg(3),
      I1 => adapt_count_reg(22),
      I2 => adapt_count_reg(7),
      I3 => adapt_count_reg(13),
      O => \adapt_count[0]_i_8_n_0\
    );
\adapt_count[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => adapt_count_reg(19),
      I1 => adapt_count_reg(25),
      I2 => adapt_count_reg(10),
      I3 => adapt_count_reg(4),
      O => \adapt_count[0]_i_9_n_0\
    );
\adapt_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[0]_i_2_n_7\,
      Q => adapt_count_reg(0),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \adapt_count_reg[0]_i_2_n_0\,
      CO(2) => \adapt_count_reg[0]_i_2_n_1\,
      CO(1) => \adapt_count_reg[0]_i_2_n_2\,
      CO(0) => \adapt_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \adapt_count_reg[0]_i_2_n_4\,
      O(2) => \adapt_count_reg[0]_i_2_n_5\,
      O(1) => \adapt_count_reg[0]_i_2_n_6\,
      O(0) => \adapt_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => adapt_count_reg(3 downto 1),
      S(0) => \adapt_count[0]_i_7_n_0\
    );
\adapt_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[8]_i_1_n_5\,
      Q => adapt_count_reg(10),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[8]_i_1_n_4\,
      Q => adapt_count_reg(11),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[12]_i_1_n_7\,
      Q => adapt_count_reg(12),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adapt_count_reg[8]_i_1_n_0\,
      CO(3) => \adapt_count_reg[12]_i_1_n_0\,
      CO(2) => \adapt_count_reg[12]_i_1_n_1\,
      CO(1) => \adapt_count_reg[12]_i_1_n_2\,
      CO(0) => \adapt_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \adapt_count_reg[12]_i_1_n_4\,
      O(2) => \adapt_count_reg[12]_i_1_n_5\,
      O(1) => \adapt_count_reg[12]_i_1_n_6\,
      O(0) => \adapt_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => adapt_count_reg(15 downto 12)
    );
\adapt_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[12]_i_1_n_6\,
      Q => adapt_count_reg(13),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[12]_i_1_n_5\,
      Q => adapt_count_reg(14),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[12]_i_1_n_4\,
      Q => adapt_count_reg(15),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[16]_i_1_n_7\,
      Q => adapt_count_reg(16),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adapt_count_reg[12]_i_1_n_0\,
      CO(3) => \adapt_count_reg[16]_i_1_n_0\,
      CO(2) => \adapt_count_reg[16]_i_1_n_1\,
      CO(1) => \adapt_count_reg[16]_i_1_n_2\,
      CO(0) => \adapt_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \adapt_count_reg[16]_i_1_n_4\,
      O(2) => \adapt_count_reg[16]_i_1_n_5\,
      O(1) => \adapt_count_reg[16]_i_1_n_6\,
      O(0) => \adapt_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => adapt_count_reg(19 downto 16)
    );
\adapt_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[16]_i_1_n_6\,
      Q => adapt_count_reg(17),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[16]_i_1_n_5\,
      Q => adapt_count_reg(18),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[16]_i_1_n_4\,
      Q => adapt_count_reg(19),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[0]_i_2_n_6\,
      Q => adapt_count_reg(1),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[20]_i_1_n_7\,
      Q => adapt_count_reg(20),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adapt_count_reg[16]_i_1_n_0\,
      CO(3) => \adapt_count_reg[20]_i_1_n_0\,
      CO(2) => \adapt_count_reg[20]_i_1_n_1\,
      CO(1) => \adapt_count_reg[20]_i_1_n_2\,
      CO(0) => \adapt_count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \adapt_count_reg[20]_i_1_n_4\,
      O(2) => \adapt_count_reg[20]_i_1_n_5\,
      O(1) => \adapt_count_reg[20]_i_1_n_6\,
      O(0) => \adapt_count_reg[20]_i_1_n_7\,
      S(3 downto 0) => adapt_count_reg(23 downto 20)
    );
\adapt_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[20]_i_1_n_6\,
      Q => adapt_count_reg(21),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[20]_i_1_n_5\,
      Q => adapt_count_reg(22),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[20]_i_1_n_4\,
      Q => adapt_count_reg(23),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[24]_i_1_n_7\,
      Q => adapt_count_reg(24),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adapt_count_reg[20]_i_1_n_0\,
      CO(3) => \adapt_count_reg[24]_i_1_n_0\,
      CO(2) => \adapt_count_reg[24]_i_1_n_1\,
      CO(1) => \adapt_count_reg[24]_i_1_n_2\,
      CO(0) => \adapt_count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \adapt_count_reg[24]_i_1_n_4\,
      O(2) => \adapt_count_reg[24]_i_1_n_5\,
      O(1) => \adapt_count_reg[24]_i_1_n_6\,
      O(0) => \adapt_count_reg[24]_i_1_n_7\,
      S(3 downto 0) => adapt_count_reg(27 downto 24)
    );
\adapt_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[24]_i_1_n_6\,
      Q => adapt_count_reg(25),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[24]_i_1_n_5\,
      Q => adapt_count_reg(26),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[24]_i_1_n_4\,
      Q => adapt_count_reg(27),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[28]_i_1_n_7\,
      Q => adapt_count_reg(28),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adapt_count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \adapt_count_reg[28]_i_1_n_1\,
      CO(1) => \adapt_count_reg[28]_i_1_n_2\,
      CO(0) => \adapt_count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \adapt_count_reg[28]_i_1_n_4\,
      O(2) => \adapt_count_reg[28]_i_1_n_5\,
      O(1) => \adapt_count_reg[28]_i_1_n_6\,
      O(0) => \adapt_count_reg[28]_i_1_n_7\,
      S(3 downto 0) => adapt_count_reg(31 downto 28)
    );
\adapt_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[28]_i_1_n_6\,
      Q => adapt_count_reg(29),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[0]_i_2_n_5\,
      Q => adapt_count_reg(2),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[28]_i_1_n_5\,
      Q => adapt_count_reg(30),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[28]_i_1_n_4\,
      Q => adapt_count_reg(31),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[0]_i_2_n_4\,
      Q => adapt_count_reg(3),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[4]_i_1_n_7\,
      Q => adapt_count_reg(4),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adapt_count_reg[0]_i_2_n_0\,
      CO(3) => \adapt_count_reg[4]_i_1_n_0\,
      CO(2) => \adapt_count_reg[4]_i_1_n_1\,
      CO(1) => \adapt_count_reg[4]_i_1_n_2\,
      CO(0) => \adapt_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \adapt_count_reg[4]_i_1_n_4\,
      O(2) => \adapt_count_reg[4]_i_1_n_5\,
      O(1) => \adapt_count_reg[4]_i_1_n_6\,
      O(0) => \adapt_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => adapt_count_reg(7 downto 4)
    );
\adapt_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[4]_i_1_n_6\,
      Q => adapt_count_reg(5),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[4]_i_1_n_5\,
      Q => adapt_count_reg(6),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[4]_i_1_n_4\,
      Q => adapt_count_reg(7),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[8]_i_1_n_7\,
      Q => adapt_count_reg(8),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \adapt_count_reg[4]_i_1_n_0\,
      CO(3) => \adapt_count_reg[8]_i_1_n_0\,
      CO(2) => \adapt_count_reg[8]_i_1_n_1\,
      CO(1) => \adapt_count_reg[8]_i_1_n_2\,
      CO(0) => \adapt_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \adapt_count_reg[8]_i_1_n_4\,
      O(2) => \adapt_count_reg[8]_i_1_n_5\,
      O(1) => \adapt_count_reg[8]_i_1_n_6\,
      O(0) => \adapt_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => adapt_count_reg(11 downto 8)
    );
\adapt_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => adapt_count,
      D => \adapt_count_reg[8]_i_1_n_6\,
      Q => adapt_count_reg(9),
      R => recclk_mon_count_reset
    );
adapt_count_reset_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_cplllock_cdc_sync_n_2,
      Q => recclk_mon_count_reset,
      S => AR(0)
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => rx_state(3),
      I4 => check_tlock_max_reg_n_0,
      O => check_tlock_max_i_1_n_0
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => check_tlock_max_i_1_n_0,
      Q => check_tlock_max_reg_n_0,
      R => AR(0)
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0010"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(3),
      I2 => rx_state(0),
      I3 => rx_state(2),
      I4 => \^gtrxreset_i_0\,
      O => gtrxreset_i_i_1_n_0
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i_i_1_n_0,
      Q => \^gtrxreset_i_0\,
      R => AR(0)
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \init_wait_count[0]_i_1__0_n_0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      O => \p_0_in__3\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      O => \p_0_in__3\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(3),
      O => \p_0_in__3\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(2),
      I4 => \init_wait_count_reg__0\(3),
      O => \p_0_in__3\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(1),
      I5 => \init_wait_count_reg__0\(2),
      O => \p_0_in__3\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count[7]_i_4__0_n_0\,
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(5),
      O => \p_0_in__3\(6)
    );
\init_wait_count[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3__0_n_0\,
      I1 => \init_wait_count_reg__0\(7),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(5),
      I4 => \init_wait_count_reg__0\(6),
      O => init_wait_count
    );
\init_wait_count[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(4),
      I4 => \init_wait_count[7]_i_4__0_n_0\,
      I5 => \init_wait_count_reg__0\(6),
      O => \p_0_in__3\(7)
    );
\init_wait_count[7]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      O => \init_wait_count[7]_i_3__0_n_0\
    );
\init_wait_count[7]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(2),
      O => \init_wait_count[7]_i_4__0_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \init_wait_count[0]_i_1__0_n_0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__3\(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__3\(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__3\(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__3\(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__3\(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__3\(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => AR(0),
      D => \p_0_in__3\(7),
      Q => \init_wait_count_reg__0\(7)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => \init_wait_count[7]_i_3__0_n_0\,
      I1 => \init_wait_count_reg__0\(7),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(5),
      I4 => \init_wait_count_reg__0\(6),
      I5 => init_wait_done_reg_n_0,
      O => \init_wait_done_i_1__0_n_0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => AR(0),
      D => \init_wait_done_i_1__0_n_0\,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__4\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__4\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__4\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__4\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__4\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__4\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I2 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__4\(6)
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I3 => \mmcm_lock_count_reg__0\(6),
      O => \p_0_in__4\(7)
    );
\mmcm_lock_count[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__4\(8)
    );
\mmcm_lock_count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \mmcm_lock_count[9]_i_2__0_n_0\
    );
\mmcm_lock_count[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I4 => \mmcm_lock_count_reg__0\(6),
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__4\(9)
    );
\mmcm_lock_count[9]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(2),
      O => \mmcm_lock_count[9]_i_4__0_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2__0_n_0\,
      D => \p_0_in__4\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count[9]_i_4__0_n_0\,
      I4 => \mmcm_lock_count_reg__0\(6),
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \mmcm_lock_reclocked_i_2__0_n_0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(1),
      O => \reset_time_out_i_2__0_n_0\
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07DC07CC"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(3),
      I4 => reset_time_out_reg_0,
      O => reset_time_out_i_4_n_0
    );
reset_time_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8000000B800"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => rx_state(0),
      I2 => reset_time_out_reg_0,
      I3 => rx_state(2),
      I4 => rx_state(1),
      I5 => rxresetdone_s3,
      O => reset_time_out_i_5_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_cplllock_cdc_sync_n_1,
      Q => reset_time_out_reg_n_0,
      S => AR(0)
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(3),
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => run_phase_alignment_int_reg_n_0,
      O => \run_phase_alignment_int_i_1__0_n_0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \run_phase_alignment_int_i_1__0_n_0\,
      Q => run_phase_alignment_int_reg_n_0,
      R => AR(0)
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3_reg_n_0,
      R => '0'
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => rx_fsm_reset_done_int_0,
      I1 => rx_fsm_reset_done_int_i_3_n_0,
      I2 => rx_state(3),
      I3 => rx_state(2),
      I4 => rx_fsm_reset_done_int,
      O => rx_fsm_reset_done_int_i_1_n_0
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => rx_state(0),
      I1 => rx_state(2),
      I2 => time_out_1us_reg_n_0,
      I3 => reset_time_out_reg_n_0,
      I4 => \^gt_rxuserrdy_i\,
      O => rx_fsm_reset_done_int_0
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003B3BCFCC0000"
    )
        port map (
      I0 => time_out_1us_reg_n_0,
      I1 => \^gt_rxuserrdy_i\,
      I2 => reset_time_out_reg_n_0,
      I3 => time_out_100us_reg_n_0,
      I4 => rx_state(0),
      I5 => rx_state(1),
      O => rx_fsm_reset_done_int_i_3_n_0
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_fsm_reset_done_int_i_1_n_0,
      Q => rx_fsm_reset_done_int,
      R => AR(0)
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => sync_rx_fsm_reset_done_int_cdc_sync_n_0,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_RXRESETDONE_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_10\
     port map (
      init_clk_in => init_clk_in,
      \out\ => rxresetdone_s2,
      p_level_in_d1_cdc_from_reg_0 => p_level_in_d1_cdc_from_reg,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r
    );
sync_cplllock_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11
     port map (
      E(0) => sync_cplllock_cdc_sync_n_0,
      \FSM_sequential_rx_state_reg[0]\ => \FSM_sequential_rx_state[3]_i_3_n_0\,
      \FSM_sequential_rx_state_reg[0]_0\ => \FSM_sequential_rx_state[3]_i_4_n_0\,
      \FSM_sequential_rx_state_reg[0]_1\ => \wait_time_cnt[0]_i_2__0_n_0\,
      \FSM_sequential_rx_state_reg[0]_2\ => \FSM_sequential_rx_state[3]_i_5_n_0\,
      \FSM_sequential_rx_state_reg[0]_3\ => time_out_2ms_reg_n_0,
      \FSM_sequential_rx_state_reg[3]\ => sync_cplllock_cdc_sync_n_1,
      \FSM_sequential_rx_state_reg[3]_0\ => sync_cplllock_cdc_sync_n_2,
      Q(3 downto 0) => rx_state(3 downto 0),
      init_clk_in => init_clk_in,
      recclk_mon_count_reset => recclk_mon_count_reset,
      reset_time_out_reg => \^gt_rxuserrdy_i\,
      reset_time_out_reg_0 => reset_time_out_i_5_n_0,
      reset_time_out_reg_1 => \reset_time_out_i_2__0_n_0\,
      reset_time_out_reg_2 => reset_time_out_i_4_n_0,
      reset_time_out_reg_3 => reset_time_out_reg_n_0,
      s_level_out_d1_aurora_8b10b_0_cdc_to_reg_0 => s_level_out_d1_aurora_8b10b_0_cdc_to_reg
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12
     port map (
      SR(0) => sync_mmcm_lock_reclocked_cdc_sync_n_0,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      mmcm_lock_reclocked_reg_0 => \mmcm_lock_reclocked_i_2__0_n_0\
    );
sync_qplllock_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13
     port map (
      init_clk_in => init_clk_in
    );
sync_run_phase_alignment_int_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_14\
     port map (
      init_clk_in => init_clk_in,
      \out\ => run_phase_alignment_int_s2,
      p_level_in_d1_cdc_from_reg_0 => run_phase_alignment_int_reg_n_0,
      s_level_out_d6_reg_0 => p_level_in_d1_cdc_from_reg
    );
sync_rx_fsm_reset_done_int_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_15\
     port map (
      init_clk_in => init_clk_in,
      \out\ => sync_rx_fsm_reset_done_int_cdc_sync_n_0,
      rx_fsm_reset_done_int => rx_fsm_reset_done_int,
      s_level_out_d6_reg_0 => p_level_in_d1_cdc_from_reg
    );
sync_time_out_wait_bypass_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_16\
     port map (
      init_clk_in => init_clk_in,
      \out\ => time_out_wait_bypass_s2,
      p_level_in_d1_cdc_from_reg_0 => time_out_wait_bypass_reg_n_0,
      p_level_in_d1_cdc_from_reg_1 => p_level_in_d1_cdc_from_reg
    );
time_out_100us_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0040"
    )
        port map (
      I0 => time_tlock_max_i_4_n_0,
      I1 => time_out_100us_i_2_n_0,
      I2 => time_out_100us_i_3_n_0,
      I3 => time_out_100us_i_4_n_0,
      I4 => time_out_100us_reg_n_0,
      O => time_out_100us_i_1_n_0
    );
time_out_100us_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(2),
      I3 => time_out_counter_reg(3),
      O => time_out_100us_i_2_n_0
    );
time_out_100us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(10),
      I3 => time_tlock_max_i_2_n_0,
      I4 => time_out_counter_reg(9),
      I5 => time_out_counter_reg(8),
      O => time_out_100us_i_3_n_0
    );
time_out_100us_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(5),
      O => time_out_100us_i_4_n_0
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_100us_i_1_n_0,
      Q => time_out_100us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_1us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(5),
      I3 => time_out_1us_i_2_n_0,
      I4 => time_out_1us_i_3_n_0,
      I5 => time_out_1us_reg_n_0,
      O => time_out_1us_i_1_n_0
    );
time_out_1us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(10),
      I4 => \time_out_counter[0]_i_7_n_0\,
      I5 => time_tlock_max_i_2_n_0,
      O => time_out_1us_i_2_n_0
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(17),
      I2 => time_out_1us_i_4_n_0,
      I3 => time_out_1us_i_5_n_0,
      I4 => time_out_counter_reg(15),
      I5 => time_out_counter_reg(16),
      O => time_out_1us_i_3_n_0
    );
time_out_1us_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => time_out_1us_i_4_n_0
    );
time_out_1us_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(6),
      O => time_out_1us_i_5_n_0
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_1us_i_1_n_0,
      Q => time_out_1us_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_2ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(2),
      I3 => \time_out_counter[0]_i_3__0_n_0\,
      I4 => \time_out_counter[0]_i_4_n_0\,
      I5 => time_out_2ms_reg_n_0,
      O => time_out_2ms_i_1_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_2ms_i_1_n_0,
      Q => time_out_2ms_reg_n_0,
      R => reset_time_out_reg_n_0
    );
time_out_adapt_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAABA"
    )
        port map (
      I0 => time_out_adapt_reg_n_0,
      I1 => \adapt_count[0]_i_6_n_0\,
      I2 => \adapt_count[0]_i_5_n_0\,
      I3 => \adapt_count[0]_i_4_n_0\,
      I4 => \adapt_count[0]_i_3_n_0\,
      I5 => recclk_mon_count_reset,
      O => time_out_adapt_i_1_n_0
    );
time_out_adapt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_adapt_i_1_n_0,
      Q => time_out_adapt_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(2),
      I3 => \time_out_counter[0]_i_3__0_n_0\,
      I4 => \time_out_counter[0]_i_4_n_0\,
      O => time_out_counter
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(18),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(4),
      I4 => \time_out_counter[0]_i_6__0_n_0\,
      O => \time_out_counter[0]_i_3__0_n_0\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(6),
      I4 => \time_out_counter[0]_i_7_n_0\,
      I5 => \time_out_counter[0]_i_8_n_0\,
      O => \time_out_counter[0]_i_4_n_0\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_5_n_0\
    );
\time_out_counter[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(16),
      O => \time_out_counter[0]_i_6__0_n_0\
    );
\time_out_counter[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(14),
      O => \time_out_counter[0]_i_7_n_0\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => \time_out_counter[0]_i_8_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2__0_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2__0_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2__0_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2__0_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2__0_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_5_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1__0_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \time_out_counter_reg[16]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \time_out_counter_reg[16]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[16]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1__0_n_7\,
      S(3) => '0',
      S(2 downto 0) => time_out_counter_reg(18 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1__0_n_5\,
      Q => time_out_counter_reg(18),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2__0_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2__0_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1__0_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out_reg_n_0
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1__0_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1__0_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1__0_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1__0_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1__0_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1__0_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1__0_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1__0_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out_reg_n_0
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass_reg_n_0,
      I1 => rx_fsm_reset_done_int_s3,
      I2 => \wait_bypass_count[0]_i_4__0_n_0\,
      I3 => run_phase_alignment_int_s3_reg_n_0,
      O => \time_out_wait_bypass_i_1__0_n_0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => \time_out_wait_bypass_i_1__0_n_0\,
      Q => time_out_wait_bypass_reg_n_0,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFB00000"
    )
        port map (
      I0 => time_tlock_max_i_2_n_0,
      I1 => time_tlock_max_i_3_n_0,
      I2 => time_out_counter_reg(13),
      I3 => time_tlock_max_i_4_n_0,
      I4 => check_tlock_max_reg_n_0,
      I5 => time_tlock_max,
      O => time_tlock_max_i_1_n_0
    );
time_tlock_max_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(11),
      O => time_tlock_max_i_2_n_0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FFFFFFFFFFFFFF"
    )
        port map (
      I0 => time_out_100us_i_4_n_0,
      I1 => time_out_100us_i_2_n_0,
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(9),
      I5 => time_out_counter_reg(8),
      O => time_tlock_max_i_3_n_0
    );
time_tlock_max_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(14),
      O => time_tlock_max_i_4_n_0
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_tlock_max_i_1_n_0,
      Q => time_tlock_max,
      R => reset_time_out_reg_n_0
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3_reg_n_0,
      O => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4__0_n_0\,
      I1 => rx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2__0_n_0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_6__0_n_0\,
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(8),
      I3 => wait_bypass_count_reg(0),
      I4 => \wait_bypass_count[0]_i_7__0_n_0\,
      O => \wait_bypass_count[0]_i_4__0_n_0\
    );
\wait_bypass_count[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_5__0_n_0\
    );
\wait_bypass_count[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(3),
      I1 => wait_bypass_count_reg(5),
      I2 => wait_bypass_count_reg(9),
      I3 => wait_bypass_count_reg(7),
      O => \wait_bypass_count[0]_i_6__0_n_0\
    );
\wait_bypass_count[0]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => wait_bypass_count_reg(2),
      I1 => wait_bypass_count_reg(12),
      I2 => wait_bypass_count_reg(4),
      I3 => wait_bypass_count_reg(10),
      I4 => wait_bypass_count_reg(6),
      I5 => wait_bypass_count_reg(11),
      O => \wait_bypass_count[0]_i_7__0_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      Q => wait_bypass_count_reg(0),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3__0_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_5__0_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(10),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(11),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(12),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(12)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_6\,
      Q => wait_bypass_count_reg(1),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_5\,
      Q => wait_bypass_count_reg(2),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[0]_i_3__0_n_4\,
      Q => wait_bypass_count_reg(3),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(4),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(5),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_5\,
      Q => wait_bypass_count_reg(6),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[4]_i_1__0_n_4\,
      Q => wait_bypass_count_reg(7),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      Q => wait_bypass_count_reg(8),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1__0_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1__0_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => \wait_bypass_count[0]_i_2__0_n_0\,
      D => \wait_bypass_count_reg[8]_i_1__0_n_6\,
      Q => wait_bypass_count_reg(9),
      R => \wait_bypass_count[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => rx_state(3),
      O => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[0]_i_10_n_0\
    );
\wait_time_cnt[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[0]_i_11_n_0\
    );
\wait_time_cnt[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \wait_time_cnt[0]_i_4__0_n_0\,
      I1 => \wait_time_cnt[0]_i_5__0_n_0\,
      I2 => \wait_time_cnt[0]_i_6__0_n_0\,
      I3 => \wait_time_cnt[0]_i_7__0_n_0\,
      O => \wait_time_cnt[0]_i_2__0_n_0\
    );
\wait_time_cnt[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(3),
      I2 => wait_time_cnt_reg(15),
      I3 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[0]_i_4__0_n_0\
    );
\wait_time_cnt[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      I1 => wait_time_cnt_reg(10),
      I2 => wait_time_cnt_reg(14),
      I3 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[0]_i_5__0_n_0\
    );
\wait_time_cnt[0]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      I1 => wait_time_cnt_reg(2),
      I2 => wait_time_cnt_reg(8),
      I3 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[0]_i_6__0_n_0\
    );
\wait_time_cnt[0]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      I1 => wait_time_cnt_reg(5),
      I2 => wait_time_cnt_reg(7),
      I3 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[0]_i_7__0_n_0\
    );
\wait_time_cnt[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_8_n_0\
    );
\wait_time_cnt[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_9_n_0\
    );
\wait_time_cnt[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      O => \wait_time_cnt[12]_i_2__0_n_0\
    );
\wait_time_cnt[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(14),
      O => \wait_time_cnt[12]_i_3__0_n_0\
    );
\wait_time_cnt[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[12]_i_4__0_n_0\
    );
\wait_time_cnt[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[12]_i_5__0_n_0\
    );
\wait_time_cnt[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      O => \wait_time_cnt[4]_i_2__0_n_0\
    );
\wait_time_cnt[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[4]_i_3__0_n_0\
    );
\wait_time_cnt[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[4]_i_4__0_n_0\
    );
\wait_time_cnt[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_5__0_n_0\
    );
\wait_time_cnt[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[8]_i_2__0_n_0\
    );
\wait_time_cnt[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(10),
      O => \wait_time_cnt[8]_i_3__0_n_0\
    );
\wait_time_cnt[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      O => \wait_time_cnt[8]_i_4__0_n_0\
    );
\wait_time_cnt[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      O => \wait_time_cnt[8]_i_5__0_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_7\,
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_time_cnt_reg[0]_i_3__0_n_0\,
      CO(2) => \wait_time_cnt_reg[0]_i_3__0_n_1\,
      CO(1) => \wait_time_cnt_reg[0]_i_3__0_n_2\,
      CO(0) => \wait_time_cnt_reg[0]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[0]_i_3__0_n_4\,
      O(2) => \wait_time_cnt_reg[0]_i_3__0_n_5\,
      O(1) => \wait_time_cnt_reg[0]_i_3__0_n_6\,
      O(0) => \wait_time_cnt_reg[0]_i_3__0_n_7\,
      S(3) => \wait_time_cnt[0]_i_8_n_0\,
      S(2) => \wait_time_cnt[0]_i_9_n_0\,
      S(1) => \wait_time_cnt[0]_i_10_n_0\,
      S(0) => \wait_time_cnt[0]_i_11_n_0\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(10),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(11),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(12),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \wait_time_cnt_reg[12]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[12]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \wait_time_cnt_reg[12]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[12]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[12]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[12]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[12]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[12]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[12]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[12]_i_5__0_n_0\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(13),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(14),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[12]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(15),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_6\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_5\,
      Q => wait_time_cnt_reg(2),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[0]_i_3__0_n_4\,
      Q => wait_time_cnt_reg(3),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[0]_i_3__0_n_0\,
      CO(3) => \wait_time_cnt_reg[4]_i_1__0_n_0\,
      CO(2) => \wait_time_cnt_reg[4]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[4]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[4]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[4]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[4]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[4]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[4]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[4]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[4]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[4]_i_5__0_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_5\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[4]_i_1__0_n_4\,
      Q => wait_time_cnt_reg(7),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_7\,
      Q => wait_time_cnt_reg(8),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
\wait_time_cnt_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[4]_i_1__0_n_0\,
      CO(3) => \wait_time_cnt_reg[8]_i_1__0_n_0\,
      CO(2) => \wait_time_cnt_reg[8]_i_1__0_n_1\,
      CO(1) => \wait_time_cnt_reg[8]_i_1__0_n_2\,
      CO(0) => \wait_time_cnt_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[8]_i_1__0_n_4\,
      O(2) => \wait_time_cnt_reg[8]_i_1__0_n_5\,
      O(1) => \wait_time_cnt_reg[8]_i_1__0_n_6\,
      O(0) => \wait_time_cnt_reg[8]_i_1__0_n_7\,
      S(3) => \wait_time_cnt[8]_i_2__0_n_0\,
      S(2) => \wait_time_cnt[8]_i_3__0_n_0\,
      S(1) => \wait_time_cnt[8]_i_4__0_n_0\,
      S(0) => \wait_time_cnt[8]_i_5__0_n_0\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => \wait_time_cnt[0]_i_2__0_n_0\,
      D => \wait_time_cnt_reg[8]_i_1__0_n_6\,
      Q => wait_time_cnt_reg(9),
      S => \wait_time_cnt[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm is
  port (
    \out\ : out STD_LOGIC;
    gt_tx_reset_i : out STD_LOGIC;
    cpll_reset_i : out STD_LOGIC;
    gt_txuserrdy_i : out STD_LOGIC;
    CPLL_RESET_reg_0 : out STD_LOGIC;
    s_level_out_d3_reg : out STD_LOGIC;
    s_level_out_d1_aurora_8b10b_0_cdc_to_reg : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    s_level_out_d5_reg : in STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    \init_wait_count_reg[7]_0\ : in STD_LOGIC;
    ack_flag : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm : entity is "aurora_8b10b_0_tx_startup_fsm";
end aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm is
  signal CPLL_RESET_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[3]_i_9_n_0\ : STD_LOGIC;
  signal TXUSERRDY_i_1_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^cpll_reset_i\ : STD_LOGIC;
  signal \^gt_tx_reset_i\ : STD_LOGIC;
  signal \^gt_txuserrdy_i\ : STD_LOGIC;
  signal gttxreset_i_i_1_n_0 : STD_LOGIC;
  signal init_wait_count : STD_LOGIC;
  signal \init_wait_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \init_wait_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal init_wait_done_i_1_n_0 : STD_LOGIC;
  signal init_wait_done_reg_n_0 : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pll_reset_asserted_i_1_n_0 : STD_LOGIC;
  signal pll_reset_asserted_reg_n_0 : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal reset_time_out_i_3_n_0 : STD_LOGIC;
  signal run_phase_alignment_int : STD_LOGIC;
  signal run_phase_alignment_int_i_1_n_0 : STD_LOGIC;
  signal run_phase_alignment_int_s2 : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal sync_cplllock_cdc_sync_n_0 : STD_LOGIC;
  signal sync_cplllock_cdc_sync_n_1 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_0 : STD_LOGIC;
  signal sync_mmcm_lock_reclocked_cdc_sync_n_1 : STD_LOGIC;
  signal \time_out_2ms_i_1__0_n_0\ : STD_LOGIC;
  signal time_out_2ms_i_2_n_0 : STD_LOGIC;
  signal time_out_2ms_i_3_n_0 : STD_LOGIC;
  signal time_out_2ms_reg_n_0 : STD_LOGIC;
  signal time_out_500us_i_1_n_0 : STD_LOGIC;
  signal time_out_500us_i_2_n_0 : STD_LOGIC;
  signal time_out_500us_i_3_n_0 : STD_LOGIC;
  signal time_out_500us_i_4_n_0 : STD_LOGIC;
  signal time_out_500us_reg_n_0 : STD_LOGIC;
  signal time_out_counter : STD_LOGIC;
  signal \time_out_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \time_out_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \time_out_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \time_out_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal time_out_wait_bypass : STD_LOGIC;
  signal time_out_wait_bypass_i_1_n_0 : STD_LOGIC;
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal \time_tlock_max_i_1__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_2__0_n_0\ : STD_LOGIC;
  signal \time_tlock_max_i_3__0_n_0\ : STD_LOGIC;
  signal time_tlock_max_reg_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int : STD_LOGIC;
  signal tx_fsm_reset_done_int_i_1_n_0 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal \wait_bypass_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_bypass_count[0]_i_8_n_0\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \wait_bypass_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_bypass_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \wait_time_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal wait_time_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wait_time_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wait_time_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[0]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[2]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_4\ : label is "soft_lutpair102";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[3]\ : label is "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101";
  attribute SOFT_HLUTNM of TXUSERRDY_i_1 : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_3\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4\ : label is "soft_lutpair104";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of run_phase_alignment_int_s3_reg : label is "no";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_5__0\ : label is "soft_lutpair108";
  attribute equivalent_register_removal of time_out_wait_bypass_s3_reg : label is "no";
  attribute SOFT_HLUTNM of \time_tlock_max_i_3__0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of tx_fsm_reset_done_int_i_1 : label is "soft_lutpair102";
  attribute equivalent_register_removal of tx_fsm_reset_done_int_s3_reg : label is "no";
  attribute equivalent_register_removal of txresetdone_s3_reg : label is "no";
begin
  cpll_reset_i <= \^cpll_reset_i\;
  gt_tx_reset_i <= \^gt_tx_reset_i\;
  gt_txuserrdy_i <= \^gt_txuserrdy_i\;
  \out\ <= \^out\;
CPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(1),
      I4 => tx_state(2),
      I5 => \^cpll_reset_i\,
      O => CPLL_RESET_i_1_n_0
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => CPLL_RESET_i_1_n_0,
      Q => \^cpll_reset_i\,
      R => \init_wait_count_reg[7]_0\
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDDDD555"
    )
        port map (
      I0 => \FSM_sequential_tx_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      I2 => time_out_2ms_reg_n_0,
      I3 => tx_state(1),
      I4 => tx_state(2),
      I5 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(3),
      O => \FSM_sequential_tx_state[0]_i_2_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0700"
    )
        port map (
      I0 => \FSM_sequential_tx_state[1]_i_2_n_0\,
      I1 => tx_state(2),
      I2 => tx_state(3),
      I3 => tx_state(0),
      I4 => tx_state(1),
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max_reg_n_0,
      I2 => reset_time_out,
      O => \FSM_sequential_tx_state[1]_i_2_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0414040455555555"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => time_out_2ms_reg_n_0,
      I4 => tx_state(1),
      I5 => \FSM_sequential_tx_state[2]_i_2_n_0\,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDFDD"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      I2 => reset_time_out,
      I3 => time_tlock_max_reg_n_0,
      I4 => mmcm_lock_reclocked,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      I1 => wait_time_cnt_reg(11),
      I2 => wait_time_cnt_reg(9),
      I3 => wait_time_cnt_reg(10),
      O => \FSM_sequential_tx_state[3]_i_10_n_0\
    );
\FSM_sequential_tx_state[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      I1 => wait_time_cnt_reg(1),
      I2 => wait_time_cnt_reg(2),
      I3 => wait_time_cnt_reg(3),
      O => \FSM_sequential_tx_state[3]_i_11_n_0\
    );
\FSM_sequential_tx_state[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      I1 => wait_time_cnt_reg(4),
      I2 => wait_time_cnt_reg(6),
      I3 => wait_time_cnt_reg(5),
      O => \FSM_sequential_tx_state[3]_i_12_n_0\
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_6_n_0\,
      I1 => time_out_wait_bypass_s3,
      I2 => tx_state(3),
      O => \FSM_sequential_tx_state[3]_i_2_n_0\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_4_n_0\
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_9_n_0\,
      I1 => \FSM_sequential_tx_state[3]_i_10_n_0\,
      I2 => \FSM_sequential_tx_state[3]_i_11_n_0\,
      I3 => \FSM_sequential_tx_state[3]_i_12_n_0\,
      O => \FSM_sequential_tx_state[3]_i_5_n_0\
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0000000000000"
    )
        port map (
      I0 => reset_time_out,
      I1 => time_out_500us_reg_n_0,
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => tx_state(2),
      I5 => tx_state(1),
      O => \FSM_sequential_tx_state[3]_i_6_n_0\
    );
\FSM_sequential_tx_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => wait_time_cnt_reg(12),
      I1 => wait_time_cnt_reg(13),
      I2 => wait_time_cnt_reg(15),
      I3 => wait_time_cnt_reg(14),
      O => \FSM_sequential_tx_state[3]_i_9_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => tx_state(0),
      R => \init_wait_count_reg[7]_0\
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => tx_state(1),
      R => \init_wait_count_reg[7]_0\
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => tx_state(2),
      R => \init_wait_count_reg[7]_0\
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => sync_cplllock_cdc_sync_n_0,
      D => \FSM_sequential_tx_state[3]_i_2_n_0\,
      Q => tx_state(3),
      R => \init_wait_count_reg[7]_0\
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      I4 => \^gt_txuserrdy_i\,
      O => TXUSERRDY_i_1_n_0
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => TXUSERRDY_i_1_n_0,
      Q => \^gt_txuserrdy_i\,
      R => \init_wait_count_reg[7]_0\
    );
flag2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^cpll_reset_i\,
      I1 => ack_flag,
      O => CPLL_RESET_reg_0
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0010"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(3),
      I2 => tx_state(0),
      I3 => tx_state(2),
      I4 => \^gt_tx_reset_i\,
      O => gttxreset_i_i_1_n_0
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => gttxreset_i_i_1_n_0,
      Q => \^gt_tx_reset_i\,
      R => \init_wait_count_reg[7]_0\
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \init_wait_count[0]_i_1_n_0\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
      O => \p_0_in__1\(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      O => \p_0_in__1\(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(2),
      I4 => \init_wait_count_reg__0\(3),
      O => \p_0_in__1\(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(4),
      I4 => \init_wait_count_reg__0\(3),
      I5 => \init_wait_count_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count[7]_i_4_n_0\,
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(5),
      O => \p_0_in__1\(6)
    );
\init_wait_count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => \init_wait_count_reg__0\(7),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(5),
      I4 => \init_wait_count_reg__0\(6),
      O => init_wait_count
    );
\init_wait_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(4),
      I4 => \init_wait_count[7]_i_4_n_0\,
      I5 => \init_wait_count_reg__0\(6),
      O => \p_0_in__1\(7)
    );
\init_wait_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      O => \init_wait_count[7]_i_3_n_0\
    );
\init_wait_count[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(2),
      O => \init_wait_count[7]_i_4_n_0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \init_wait_count[0]_i_1_n_0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \p_0_in__1\(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \p_0_in__1\(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \p_0_in__1\(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \p_0_in__1\(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \p_0_in__1\(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \p_0_in__1\(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => init_wait_count,
      CLR => \init_wait_count_reg[7]_0\,
      D => \p_0_in__1\(7),
      Q => \init_wait_count_reg__0\(7)
    );
init_wait_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => \init_wait_count[7]_i_3_n_0\,
      I1 => \init_wait_count_reg__0\(7),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(5),
      I4 => \init_wait_count_reg__0\(6),
      I5 => init_wait_done_reg_n_0,
      O => init_wait_done_i_1_n_0
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      CLR => \init_wait_count_reg[7]_0\,
      D => init_wait_done_i_1_n_0,
      Q => init_wait_done_reg_n_0
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__2\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__2\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__2\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \mmcm_lock_count[9]_i_4_n_0\,
      I2 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__2\(6)
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count[9]_i_4_n_0\,
      I3 => \mmcm_lock_count_reg__0\(6),
      O => \p_0_in__2\(7)
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count[9]_i_4_n_0\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__2\(8)
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count[9]_i_4_n_0\,
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(7),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \mmcm_lock_count[9]_i_2_n_0\
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count[9]_i_4_n_0\,
      I4 => \mmcm_lock_count_reg__0\(6),
      I5 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__2\(9)
    );
\mmcm_lock_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(2),
      O => \mmcm_lock_count[9]_i_4_n_0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => \mmcm_lock_count[9]_i_2_n_0\,
      D => \p_0_in__2\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => sync_mmcm_lock_reclocked_cdc_sync_n_0
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count[9]_i_4_n_0\,
      I4 => \mmcm_lock_count_reg__0\(6),
      I5 => \mmcm_lock_count_reg__0\(8),
      O => p_0_in
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA3A"
    )
        port map (
      I0 => pll_reset_asserted_reg_n_0,
      I1 => tx_state(1),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => tx_state(2),
      O => pll_reset_asserted_i_1_n_0
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => pll_reset_asserted_i_1_n_0,
      Q => pll_reset_asserted_reg_n_0,
      R => \init_wait_count_reg[7]_0\
    );
reset_time_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B833"
    )
        port map (
      I0 => txresetdone_s3,
      I1 => tx_state(1),
      I2 => mmcm_lock_reclocked,
      I3 => tx_state(2),
      O => reset_time_out_i_3_n_0
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => sync_cplllock_cdc_sync_n_1,
      Q => reset_time_out,
      R => \init_wait_count_reg[7]_0\
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0100"
    )
        port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => run_phase_alignment_int,
      O => run_phase_alignment_int_i_1_n_0
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => run_phase_alignment_int_i_1_n_0,
      Q => run_phase_alignment_int,
      R => \init_wait_count_reg[7]_0\
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => '1',
      D => run_phase_alignment_int_s2,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_TXRESETDONE_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_3\
     port map (
      init_clk_in => init_clk_in,
      \out\ => txresetdone_s2,
      p_level_in_d1_cdc_from_reg_0 => s_level_out_d5_reg,
      txfsm_txresetdone_r => txfsm_txresetdone_r
    );
sync_cplllock_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4
     port map (
      E(0) => sync_cplllock_cdc_sync_n_0,
      \FSM_sequential_tx_state_reg[0]\ => init_wait_done_reg_n_0,
      \FSM_sequential_tx_state_reg[0]_0\ => \FSM_sequential_tx_state[3]_i_4_n_0\,
      \FSM_sequential_tx_state_reg[0]_1\ => \FSM_sequential_tx_state[3]_i_5_n_0\,
      \FSM_sequential_tx_state_reg[3]\ => sync_cplllock_cdc_sync_n_1,
      \FSM_sequential_tx_state_reg[3]_i_3_0\ => time_out_500us_reg_n_0,
      \FSM_sequential_tx_state_reg[3]_i_3_1\ => time_out_2ms_reg_n_0,
      \FSM_sequential_tx_state_reg[3]_i_3_2\ => time_tlock_max_reg_n_0,
      \FSM_sequential_tx_state_reg[3]_i_3_3\ => pll_reset_asserted_reg_n_0,
      Q(3 downto 0) => tx_state(3 downto 0),
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      reset_time_out_reg => reset_time_out_i_3_n_0,
      s_level_out_d1_aurora_8b10b_0_cdc_to_reg_0 => s_level_out_d1_aurora_8b10b_0_cdc_to_reg,
      txresetdone_s3 => txresetdone_s3
    );
sync_mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5
     port map (
      SR(0) => sync_mmcm_lock_reclocked_cdc_sync_n_0,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_lock_reclocked_reg => sync_mmcm_lock_reclocked_cdc_sync_n_1,
      p_0_in => p_0_in
    );
sync_qplllock_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6
     port map (
      init_clk_in => init_clk_in
    );
sync_run_phase_alignment_int_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_7\
     port map (
      init_clk_in => init_clk_in,
      \out\ => run_phase_alignment_int_s2,
      run_phase_alignment_int => run_phase_alignment_int,
      s_level_out_d5_reg_0 => s_level_out_d5_reg
    );
sync_time_out_wait_bypass_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_8\
     port map (
      init_clk_in => init_clk_in,
      \out\ => time_out_wait_bypass_s2,
      p_level_in_d1_cdc_from_reg_0 => s_level_out_d5_reg,
      time_out_wait_bypass => time_out_wait_bypass
    );
sync_tx_fsm_reset_done_int_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_9\
     port map (
      init_clk_in => init_clk_in,
      \out\ => \^out\,
      s_level_out_d3_reg_0 => s_level_out_d3_reg,
      s_level_out_d5_reg_0 => s_level_out_d5_reg,
      tx_fsm_reset_done_int => tx_fsm_reset_done_int
    );
\time_out_2ms_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => time_out_2ms_reg_n_0,
      I1 => time_out_2ms_i_2_n_0,
      I2 => time_out_2ms_i_3_n_0,
      I3 => \time_out_counter[0]_i_5__0_n_0\,
      I4 => \time_out_counter[0]_i_4__0_n_0\,
      I5 => reset_time_out,
      O => \time_out_2ms_i_1__0_n_0\
    );
time_out_2ms_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(12),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(0),
      I5 => time_out_counter_reg(5),
      O => time_out_2ms_i_2_n_0
    );
time_out_2ms_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(1),
      I3 => time_out_counter_reg(2),
      O => time_out_2ms_i_3_n_0
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \time_out_2ms_i_1__0_n_0\,
      Q => time_out_2ms_reg_n_0,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
        port map (
      I0 => time_out_500us_reg_n_0,
      I1 => time_out_500us_i_2_n_0,
      I2 => time_out_500us_i_3_n_0,
      I3 => time_out_500us_i_4_n_0,
      I4 => \time_tlock_max_i_3__0_n_0\,
      I5 => reset_time_out,
      O => time_out_500us_i_1_n_0
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(15),
      I4 => time_out_counter_reg(3),
      I5 => time_out_counter_reg(4),
      O => time_out_500us_i_2_n_0
    );
time_out_500us_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(13),
      I3 => time_out_counter_reg(12),
      O => time_out_500us_i_3_n_0
    );
time_out_500us_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(8),
      O => time_out_500us_i_4_n_0
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_500us_i_1_n_0,
      Q => time_out_500us_reg_n_0,
      R => '0'
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \time_out_counter[0]_i_3_n_0\,
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(12),
      I3 => \time_out_counter[0]_i_4__0_n_0\,
      I4 => \time_out_counter[0]_i_5__0_n_0\,
      O => time_out_counter
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => time_out_2ms_i_3_n_0,
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(0),
      I4 => time_out_counter_reg(5),
      O => \time_out_counter[0]_i_3_n_0\
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(3),
      O => \time_out_counter[0]_i_4__0_n_0\
    );
\time_out_counter[0]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(4),
      O => \time_out_counter[0]_i_5__0_n_0\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_out_counter_reg(0),
      O => \time_out_counter[0]_i_6_n_0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_7\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \time_out_counter_reg[0]_i_2_n_0\,
      CO(2) => \time_out_counter_reg[0]_i_2_n_1\,
      CO(1) => \time_out_counter_reg[0]_i_2_n_2\,
      CO(0) => \time_out_counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \time_out_counter_reg[0]_i_2_n_4\,
      O(2) => \time_out_counter_reg[0]_i_2_n_5\,
      O(1) => \time_out_counter_reg[0]_i_2_n_6\,
      O(0) => \time_out_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => time_out_counter_reg(3 downto 1),
      S(0) => \time_out_counter[0]_i_6_n_0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_5\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_4\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_7\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[8]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[12]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[12]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[12]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[12]_i_1_n_4\,
      O(2) => \time_out_counter_reg[12]_i_1_n_5\,
      O(1) => \time_out_counter_reg[12]_i_1_n_6\,
      O(0) => \time_out_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(15 downto 12)
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_6\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_5\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[12]_i_1_n_4\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_7\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \time_out_counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \time_out_counter_reg[16]_i_1_n_6\,
      O(0) => \time_out_counter_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => time_out_counter_reg(17 downto 16)
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[16]_i_1_n_6\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_6\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_5\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[0]_i_2_n_4\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_7\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[0]_i_2_n_0\,
      CO(3) => \time_out_counter_reg[4]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[4]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[4]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[4]_i_1_n_4\,
      O(2) => \time_out_counter_reg[4]_i_1_n_5\,
      O(1) => \time_out_counter_reg[4]_i_1_n_6\,
      O(0) => \time_out_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(7 downto 4)
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_6\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_5\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[4]_i_1_n_4\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_7\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \time_out_counter_reg[4]_i_1_n_0\,
      CO(3) => \time_out_counter_reg[8]_i_1_n_0\,
      CO(2) => \time_out_counter_reg[8]_i_1_n_1\,
      CO(1) => \time_out_counter_reg[8]_i_1_n_2\,
      CO(0) => \time_out_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \time_out_counter_reg[8]_i_1_n_4\,
      O(2) => \time_out_counter_reg[8]_i_1_n_5\,
      O(1) => \time_out_counter_reg[8]_i_1_n_6\,
      O(0) => \time_out_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => time_out_counter_reg(11 downto 8)
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => time_out_counter,
      D => \time_out_counter_reg[8]_i_1_n_6\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AB00"
    )
        port map (
      I0 => time_out_wait_bypass,
      I1 => tx_fsm_reset_done_int_s3,
      I2 => \wait_bypass_count[0]_i_4_n_0\,
      I3 => run_phase_alignment_int_s3,
      O => time_out_wait_bypass_i_1_n_0
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => '1',
      D => time_out_wait_bypass_i_1_n_0,
      Q => time_out_wait_bypass,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
\time_tlock_max_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAAE"
    )
        port map (
      I0 => time_tlock_max_reg_n_0,
      I1 => \time_out_counter[0]_i_3_n_0\,
      I2 => \time_tlock_max_i_2__0_n_0\,
      I3 => \time_tlock_max_i_3__0_n_0\,
      I4 => reset_time_out,
      O => \time_tlock_max_i_1__0_n_0\
    );
\time_tlock_max_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(6),
      I5 => time_out_counter_reg(12),
      O => \time_tlock_max_i_2__0_n_0\
    );
\time_tlock_max_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(11),
      O => \time_tlock_max_i_3__0_n_0\
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \time_tlock_max_i_1__0_n_0\,
      Q => time_tlock_max_reg_n_0,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
        port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => tx_state(2),
      I3 => tx_state(3),
      I4 => tx_fsm_reset_done_int,
      O => tx_fsm_reset_done_int_i_1_n_0
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => tx_fsm_reset_done_int_i_1_n_0,
      Q => tx_fsm_reset_done_int,
      R => \init_wait_count_reg[7]_0\
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => '1',
      D => \^out\,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => run_phase_alignment_int_s3,
      O => clear
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_4_n_0\,
      I1 => tx_fsm_reset_done_int_s3,
      O => \wait_bypass_count[0]_i_2_n_0\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \wait_bypass_count[0]_i_6_n_0\,
      I1 => \wait_bypass_count[0]_i_7_n_0\,
      I2 => wait_bypass_count_reg(2),
      I3 => wait_bypass_count_reg(12),
      I4 => wait_bypass_count_reg(9),
      I5 => \wait_bypass_count[0]_i_8_n_0\,
      O => \wait_bypass_count[0]_i_4_n_0\
    );
\wait_bypass_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_5_n_0\
    );
\wait_bypass_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(8),
      I2 => wait_bypass_count_reg(14),
      I3 => wait_bypass_count_reg(1),
      O => \wait_bypass_count[0]_i_6_n_0\
    );
\wait_bypass_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => wait_bypass_count_reg(6),
      I1 => wait_bypass_count_reg(5),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(0),
      O => \wait_bypass_count[0]_i_7_n_0\
    );
\wait_bypass_count[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => wait_bypass_count_reg(11),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(10),
      I3 => wait_bypass_count_reg(15),
      I4 => wait_bypass_count_reg(13),
      I5 => wait_bypass_count_reg(16),
      O => \wait_bypass_count[0]_i_8_n_0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_7\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(2) => \wait_bypass_count_reg[0]_i_3_n_1\,
      CO(1) => \wait_bypass_count_reg[0]_i_3_n_2\,
      CO(0) => \wait_bypass_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \wait_bypass_count_reg[0]_i_3_n_4\,
      O(2) => \wait_bypass_count_reg[0]_i_3_n_5\,
      O(1) => \wait_bypass_count_reg[0]_i_3_n_6\,
      O(0) => \wait_bypass_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => wait_bypass_count_reg(3 downto 1),
      S(0) => \wait_bypass_count[0]_i_5_n_0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_5\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_4\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_7\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[12]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[12]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[12]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[12]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[12]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(15 downto 12)
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_6\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_5\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[12]_i_1_n_4\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[16]_i_1_n_7\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wait_bypass_count_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => wait_bypass_count_reg(16)
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_6\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_5\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[0]_i_3_n_4\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_7\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[0]_i_3_n_0\,
      CO(3) => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[4]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[4]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[4]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[4]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[4]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(7 downto 4)
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_6\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_5\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[4]_i_1_n_4\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_7\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_bypass_count_reg[4]_i_1_n_0\,
      CO(3) => \wait_bypass_count_reg[8]_i_1_n_0\,
      CO(2) => \wait_bypass_count_reg[8]_i_1_n_1\,
      CO(1) => \wait_bypass_count_reg[8]_i_1_n_2\,
      CO(0) => \wait_bypass_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wait_bypass_count_reg[8]_i_1_n_4\,
      O(2) => \wait_bypass_count_reg[8]_i_1_n_5\,
      O(1) => \wait_bypass_count_reg[8]_i_1_n_6\,
      O(0) => \wait_bypass_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => wait_bypass_count_reg(11 downto 8)
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_level_out_d5_reg,
      CE => \wait_bypass_count[0]_i_2_n_0\,
      D => \wait_bypass_count_reg[8]_i_1_n_6\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => tx_state(3),
      I1 => tx_state(0),
      I2 => tx_state(1),
      I3 => tx_state(2),
      O => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_tx_state[3]_i_5_n_0\,
      O => sel
    );
\wait_time_cnt[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(3),
      O => \wait_time_cnt[0]_i_4_n_0\
    );
\wait_time_cnt[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(2),
      O => \wait_time_cnt[0]_i_5_n_0\
    );
\wait_time_cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(1),
      O => \wait_time_cnt[0]_i_6_n_0\
    );
\wait_time_cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(0),
      O => \wait_time_cnt[0]_i_7_n_0\
    );
\wait_time_cnt[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(15),
      O => \wait_time_cnt[12]_i_2_n_0\
    );
\wait_time_cnt[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(14),
      O => \wait_time_cnt[12]_i_3_n_0\
    );
\wait_time_cnt[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(13),
      O => \wait_time_cnt[12]_i_4_n_0\
    );
\wait_time_cnt[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(12),
      O => \wait_time_cnt[12]_i_5_n_0\
    );
\wait_time_cnt[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(7),
      O => \wait_time_cnt[4]_i_2_n_0\
    );
\wait_time_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(6),
      O => \wait_time_cnt[4]_i_3_n_0\
    );
\wait_time_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(5),
      O => \wait_time_cnt[4]_i_4_n_0\
    );
\wait_time_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(4),
      O => \wait_time_cnt[4]_i_5_n_0\
    );
\wait_time_cnt[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(11),
      O => \wait_time_cnt[8]_i_2_n_0\
    );
\wait_time_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(10),
      O => \wait_time_cnt[8]_i_3_n_0\
    );
\wait_time_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(9),
      O => \wait_time_cnt[8]_i_4_n_0\
    );
\wait_time_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wait_time_cnt_reg(8),
      O => \wait_time_cnt[8]_i_5_n_0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_7\,
      Q => wait_time_cnt_reg(0),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wait_time_cnt_reg[0]_i_3_n_0\,
      CO(2) => \wait_time_cnt_reg[0]_i_3_n_1\,
      CO(1) => \wait_time_cnt_reg[0]_i_3_n_2\,
      CO(0) => \wait_time_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[0]_i_3_n_4\,
      O(2) => \wait_time_cnt_reg[0]_i_3_n_5\,
      O(1) => \wait_time_cnt_reg[0]_i_3_n_6\,
      O(0) => \wait_time_cnt_reg[0]_i_3_n_7\,
      S(3) => \wait_time_cnt[0]_i_4_n_0\,
      S(2) => \wait_time_cnt[0]_i_5_n_0\,
      S(1) => \wait_time_cnt[0]_i_6_n_0\,
      S(0) => \wait_time_cnt[0]_i_7_n_0\
    );
\wait_time_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_5\,
      Q => wait_time_cnt_reg(10),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_4\,
      Q => wait_time_cnt_reg(11),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_7\,
      Q => wait_time_cnt_reg(12),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \wait_time_cnt_reg[12]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[12]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \wait_time_cnt_reg[12]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[12]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[12]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[12]_i_1_n_7\,
      S(3) => \wait_time_cnt[12]_i_2_n_0\,
      S(2) => \wait_time_cnt[12]_i_3_n_0\,
      S(1) => \wait_time_cnt[12]_i_4_n_0\,
      S(0) => \wait_time_cnt[12]_i_5_n_0\
    );
\wait_time_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_6\,
      Q => wait_time_cnt_reg(13),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_5\,
      Q => wait_time_cnt_reg(14),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[12]_i_1_n_4\,
      Q => wait_time_cnt_reg(15),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_6\,
      Q => wait_time_cnt_reg(1),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_5\,
      Q => wait_time_cnt_reg(2),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[0]_i_3_n_4\,
      Q => wait_time_cnt_reg(3),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_7\,
      Q => wait_time_cnt_reg(4),
      R => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[0]_i_3_n_0\,
      CO(3) => \wait_time_cnt_reg[4]_i_1_n_0\,
      CO(2) => \wait_time_cnt_reg[4]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[4]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[4]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[4]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[4]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[4]_i_1_n_7\,
      S(3) => \wait_time_cnt[4]_i_2_n_0\,
      S(2) => \wait_time_cnt[4]_i_3_n_0\,
      S(1) => \wait_time_cnt[4]_i_4_n_0\,
      S(0) => \wait_time_cnt[4]_i_5_n_0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_6\,
      Q => wait_time_cnt_reg(5),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_5\,
      Q => wait_time_cnt_reg(6),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[4]_i_1_n_4\,
      Q => wait_time_cnt_reg(7),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_7\,
      Q => wait_time_cnt_reg(8),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
\wait_time_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wait_time_cnt_reg[4]_i_1_n_0\,
      CO(3) => \wait_time_cnt_reg[8]_i_1_n_0\,
      CO(2) => \wait_time_cnt_reg[8]_i_1_n_1\,
      CO(1) => \wait_time_cnt_reg[8]_i_1_n_2\,
      CO(0) => \wait_time_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \wait_time_cnt_reg[8]_i_1_n_4\,
      O(2) => \wait_time_cnt_reg[8]_i_1_n_5\,
      O(1) => \wait_time_cnt_reg[8]_i_1_n_6\,
      O(0) => \wait_time_cnt_reg[8]_i_1_n_7\,
      S(3) => \wait_time_cnt[8]_i_2_n_0\,
      S(2) => \wait_time_cnt[8]_i_3_n_0\,
      S(1) => \wait_time_cnt[8]_i_4_n_0\,
      S(0) => \wait_time_cnt[8]_i_5_n_0\
    );
\wait_time_cnt_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => init_clk_in,
      CE => sel,
      D => \wait_time_cnt_reg[8]_i_1_n_6\,
      Q => wait_time_cnt_reg(9),
      S => \wait_time_cnt[0]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE is
  port (
    lane_up : out STD_LOGIC;
    ena_comma_align_i : out STD_LOGIC;
    consecutive_commas_r : out STD_LOGIC;
    begin_r : out STD_LOGIC;
    enable_err_detect_i : out STD_LOGIC;
    TXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \left_align_select_r_reg[0]\ : out STD_LOGIC;
    \left_align_select_r_reg[1]\ : out STD_LOGIC;
    got_v_i : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    \RX_ECP_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RX_SCP_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \RX_ECP_reg[0]\ : out STD_LOGIC;
    \RX_PAD_reg[1]\ : out STD_LOGIC;
    hard_err_i : out STD_LOGIC;
    ready_r_reg : out STD_LOGIC;
    \previous_cycle_data_r_reg[7]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \previous_cycle_control_r_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    TXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \word_aligned_data_r_reg[24]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[16]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \RX_PE_DATA_V_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \SOFT_ERR_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    after_scp_select_c_0 : out STD_LOGIC;
    after_scp_select_c_1 : out STD_LOGIC;
    \TX_DATA_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    gen_cc_i : in STD_LOGIC;
    gen_ecp_i : in STD_LOGIC;
    gen_scp_striped_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gen_a_i : in STD_LOGIC;
    \left_align_select_r_reg[0]_0\ : in STD_LOGIC;
    \left_align_select_r_reg[1]_0\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[3]\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[2]\ : in STD_LOGIC;
    hard_err_gt0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    reset_count_r_reg : in STD_LOGIC;
    reset_count_r_reg_0 : in STD_LOGIC;
    RXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_pe_data_v_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_pad_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_v_r_reg[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_r_r_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_k_r_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \tx_pe_data_r_reg[0]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \word_aligned_data_r_reg[24]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \word_aligned_data_r_reg[16]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \soft_err_r_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE : entity is "aurora_8b10b_0_AURORA_LANE_4BYTE";
end aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE is
  signal GEN_SP : STD_LOGIC;
  signal RX_CC : STD_LOGIC;
  signal RX_NEG : STD_LOGIC;
  signal aurora_8b10b_0_lane_init_sm_4byte_i_n_9 : STD_LOGIC;
  signal counter3_r0 : STD_LOGIC;
  signal counter4_r0 : STD_LOGIC;
  signal \^enable_err_detect_i\ : STD_LOGIC;
  signal first_v_received_r : STD_LOGIC;
  signal gen_spa_i : STD_LOGIC;
  signal gen_spa_r : STD_LOGIC;
  signal \^lane_up\ : STD_LOGIC;
  signal ready_r : STD_LOGIC;
  signal ready_r_reg0 : STD_LOGIC;
begin
  enable_err_detect_i <= \^enable_err_detect_i\;
  lane_up <= \^lane_up\;
aurora_8b10b_0_err_detect_4byte_i: entity work.aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE
     port map (
      \SOFT_ERR_reg[0]_0\(1 downto 0) => \SOFT_ERR_reg[0]\(1 downto 0),
      SR(0) => SR(0),
      enable_err_detect_i => \^enable_err_detect_i\,
      \good_cnt_r_reg[0]_0\ => \TX_DATA_reg[0]\,
      hard_err_frm_soft_err_reg_0 => aurora_8b10b_0_lane_init_sm_4byte_i_n_9,
      hard_err_gt0 => hard_err_gt0,
      hard_err_i => hard_err_i,
      ready_r_reg0 => ready_r_reg0,
      \soft_err_r_reg[0]_0\(3 downto 0) => \soft_err_r_reg[0]\(3 downto 0)
    );
aurora_8b10b_0_hotplug_i: entity work.aurora_8b10b_0_aurora_8b10b_0_hotplug
     port map (
      D(0) => RX_CC,
      SR(0) => SR(0),
      init_clk_in => init_clk_in,
      link_reset_out => link_reset_out,
      p_level_in_d1_cdc_from_reg => \TX_DATA_reg[0]\
    );
aurora_8b10b_0_lane_init_sm_4byte_i: entity work.aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE
     port map (
      D(3 downto 0) => D(3 downto 0),
      ENABLE_ERR_DETECT_reg_0 => aurora_8b10b_0_lane_init_sm_4byte_i_n_9,
      GEN_SP => GEN_SP,
      RXCHARISK(1 downto 0) => RXCHARISK(3 downto 2),
      RX_NEG => RX_NEG,
      SR(0) => SR(0),
      align_r_reg_0 => ena_comma_align_i,
      begin_r => begin_r,
      consecutive_commas_r => consecutive_commas_r,
      \counter1_r_reg[0]_0\ => \TX_DATA_reg[0]\,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      enable_err_detect_i => \^enable_err_detect_i\,
      first_v_received_r => first_v_received_r,
      gen_spa_i => gen_spa_i,
      gen_spa_r => gen_spa_r,
      lane_up => \^lane_up\,
      ready_r => ready_r,
      ready_r_reg0 => ready_r_reg0,
      ready_r_reg_0 => ready_r_reg,
      reset_count_r_reg_0 => reset_count_r_reg,
      reset_count_r_reg_1 => reset_count_r_reg_0,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i
    );
aurora_8b10b_0_sym_dec_4byte_i: entity work.aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE
     port map (
      D(0) => RX_CC,
      Q(1 downto 0) => Q(1 downto 0),
      RXCHARISK(3 downto 0) => RXCHARISK(3 downto 0),
      RXDATA(31 downto 0) => RXDATA(31 downto 0),
      \RX_ECP_reg[0]_0\ => \RX_ECP_reg[0]\,
      \RX_ECP_reg[1]_0\ => \RX_ECP_reg[1]\,
      RX_NEG => RX_NEG,
      \RX_PAD_reg[1]_0\ => \RX_PAD_reg[1]\,
      \RX_PE_DATA_V_reg[0]_0\(1 downto 0) => \RX_PE_DATA_V_reg[0]\(1 downto 0),
      \RX_SCP_reg[0]_0\(1 downto 0) => \RX_SCP_reg[0]\(1 downto 0),
      after_scp_select_c_0 => after_scp_select_c_0,
      after_scp_select_c_1 => after_scp_select_c_1,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      first_v_received_r => first_v_received_r,
      gen_spa_i => gen_spa_i,
      got_v_i => got_v_i,
      lane_up => \^lane_up\,
      \left_align_select_r_reg[0]_0\ => \left_align_select_r_reg[0]\,
      \left_align_select_r_reg[0]_1\ => \left_align_select_r_reg[0]_0\,
      \left_align_select_r_reg[1]_0\ => \left_align_select_r_reg[1]\,
      \left_align_select_r_reg[1]_1\ => \left_align_select_r_reg[1]_0\,
      \previous_cycle_control_r_reg[0]_0\(0) => \previous_cycle_control_r_reg[0]\(0),
      \previous_cycle_data_r_reg[7]_0\(5 downto 0) => \previous_cycle_data_r_reg[7]\(5 downto 0),
      ready_r => ready_r,
      \rx_cc_r_reg[1]_0\ => \TX_DATA_reg[0]\,
      \word_aligned_control_bits_r_reg[2]_0\ => \word_aligned_control_bits_r_reg[2]\,
      \word_aligned_control_bits_r_reg[3]_0\ => \word_aligned_control_bits_r_reg[3]\,
      \word_aligned_data_r_reg[0]_0\(7 downto 0) => \word_aligned_data_r_reg[0]\(7 downto 0),
      \word_aligned_data_r_reg[16]_0\(7 downto 0) => \word_aligned_data_r_reg[16]\(7 downto 0),
      \word_aligned_data_r_reg[16]_1\(5 downto 0) => \word_aligned_data_r_reg[16]_0\(5 downto 0),
      \word_aligned_data_r_reg[24]_0\(7 downto 0) => \word_aligned_data_r_reg[24]\(7 downto 0),
      \word_aligned_data_r_reg[24]_1\(7 downto 0) => \word_aligned_data_r_reg[24]_0\(7 downto 0),
      \word_aligned_data_r_reg[8]_0\(7 downto 0) => \word_aligned_data_r_reg[8]\(7 downto 0)
    );
aurora_8b10b_0_sym_gen_4byte_i: entity work.aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE
     port map (
      GEN_SP => GEN_SP,
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      \TX_DATA_reg[0]_0\ => \TX_DATA_reg[0]\,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      \gen_k_r_reg[0]_0\(3 downto 0) => \gen_k_r_reg[0]\(3 downto 0),
      \gen_pad_r_reg[0]_0\(1 downto 0) => \gen_pad_r_reg[0]\(1 downto 0),
      \gen_r_r_reg[0]_0\(3 downto 0) => \gen_r_r_reg[0]\(3 downto 0),
      gen_scp_striped_i(0) => gen_scp_striped_i(0),
      gen_spa_i => gen_spa_i,
      gen_spa_r => gen_spa_r,
      \gen_v_r_reg[1]_0\(2 downto 0) => \gen_v_r_reg[1]\(2 downto 0),
      \tx_pe_data_r_reg[0]_0\(31 downto 0) => \tx_pe_data_r_reg[0]\(31 downto 0),
      \tx_pe_data_v_r_reg[0]_0\(1 downto 0) => \tx_pe_data_v_r_reg[0]\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER is
  port (
    \out\ : out STD_LOGIC;
    init_clk_in_0 : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rx_resetdone_out : out STD_LOGIC;
    link_reset_r : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC;
    ENABLE_ERR_DETECT_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    consecutive_commas_r_reg : out STD_LOGIC;
    init_clk_in_1 : out STD_LOGIC;
    \previous_cycle_data_r_reg[7]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \left_align_select_r_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \previous_cycle_control_r_reg[0]\ : out STD_LOGIC;
    \left_align_select_r_reg[1]\ : out STD_LOGIC;
    hard_err_gt0 : out STD_LOGIC;
    s_level_out_d3_reg : out STD_LOGIC;
    rxfsm_rxresetdone_r3_reg_0 : out STD_LOGIC;
    \left_align_select_r_reg[0]_0\ : out STD_LOGIC;
    \left_align_select_r_reg[1]_0\ : out STD_LOGIC;
    p_level_in_d1_cdc_from_reg : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad1_out : in STD_LOGIC;
    gt_qpllrefclk_quad1_out : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    power_down : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gtrxreset_i : in STD_LOGIC;
    link_reset_out : in STD_LOGIC;
    \init_wait_count_reg[7]\ : in STD_LOGIC;
    enable_err_detect_i : in STD_LOGIC;
    consecutive_commas_r : in STD_LOGIC;
    begin_r : in STD_LOGIC;
    \word_aligned_data_r_reg[16]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \left_align_select_r_reg[0]_1\ : in STD_LOGIC;
    \left_align_select_r_reg[1]_1\ : in STD_LOGIC;
    \word_aligned_control_bits_r_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \left_align_select_r_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER : entity is "aurora_8b10b_0_GT_WRAPPER";
end aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER is
  signal aurora_8b10b_0_multi_gt_i_n_5 : STD_LOGIC;
  signal aurora_8b10b_0_multi_gt_i_n_7 : STD_LOGIC;
  signal cpll_reset_i : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \gt0_aurora_8b10b_0_i/ack_flag\ : STD_LOGIC;
  signal gt0_rxresetdone_r3_reg_srl3_n_0 : STD_LOGIC;
  signal gt0_txresetdone_r3_reg_srl3_n_0 : STD_LOGIC;
  signal gt_rx_reset_i : STD_LOGIC;
  signal gt_rxdfelfhold_i : STD_LOGIC;
  signal gt_rxuserrdy_i : STD_LOGIC;
  signal gt_tx_reset_i : STD_LOGIC;
  signal gt_txresetfsm_i_n_4 : STD_LOGIC;
  signal gt_txuserrdy_i : STD_LOGIC;
  signal gtrxreset_i_0 : STD_LOGIC;
  signal gtrxreset_pulse : STD_LOGIC;
  signal gtrxreset_pulse_i_1_n_0 : STD_LOGIC;
  signal gtrxreset_r1 : STD_LOGIC;
  signal gtrxreset_r2 : STD_LOGIC;
  signal gtrxreset_r3 : STD_LOGIC;
  signal gtrxreset_sync : STD_LOGIC;
  signal \^init_clk_in_0\ : STD_LOGIC;
  signal \^link_reset_r\ : STD_LOGIC;
  signal link_reset_r2 : STD_LOGIC;
  signal rx_cdrlock_counter : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \rx_cdrlock_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__2_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__3_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__4_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_1\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__5_n_3\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_n_2\ : STD_LOGIC;
  signal \rx_cdrlock_counter0_carry__6_n_3\ : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_0 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_1 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_2 : STD_LOGIC;
  signal rx_cdrlock_counter0_carry_n_3 : STD_LOGIC;
  signal \rx_cdrlock_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter[31]_i_9_n_0\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[31]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \rx_cdrlock_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal rx_cdrlocked_i_1_n_0 : STD_LOGIC;
  signal rx_cdrlocked_reg_n_0 : STD_LOGIC;
  signal \^rx_resetdone_out\ : STD_LOGIC;
  signal rxfsm_rxresetdone_r : STD_LOGIC;
  signal rxfsm_rxresetdone_r2 : STD_LOGIC;
  signal rxfsm_soft_reset_r : STD_LOGIC;
  signal rxfsm_soft_reset_r_i_1_n_0 : STD_LOGIC;
  signal txfsm_txresetdone_r : STD_LOGIC;
  signal \NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_name : string;
  attribute srl_name of gt0_rxresetdone_r3_reg_srl3 : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 ";
  attribute srl_name of gt0_txresetdone_r3_reg_srl3 : label is "inst/\aurora_8b10b_0_core_i/gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 ";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of gtrxreset_r1_reg : label is "no";
  attribute equivalent_register_removal of rxfsm_rxresetdone_r2_reg : label is "no";
begin
  init_clk_in_0 <= \^init_clk_in_0\;
  link_reset_r <= \^link_reset_r\;
  rx_resetdone_out <= \^rx_resetdone_out\;
aurora_8b10b_0_multi_gt_i: entity work.aurora_8b10b_0_aurora_8b10b_0_multi_gt
     port map (
      D(3 downto 0) => D(3 downto 0),
      ENABLE_ERR_DETECT_reg(3 downto 0) => ENABLE_ERR_DETECT_reg(3 downto 0),
      RXCHARISK(3 downto 0) => RXCHARISK(3 downto 0),
      RXDATA(31 downto 0) => RXDATA(31 downto 0),
      SR(0) => gt_rx_reset_i,
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      ack_flag => \gt0_aurora_8b10b_0_i/ack_flag\,
      begin_r => begin_r,
      consecutive_commas_r => consecutive_commas_r,
      consecutive_commas_r_reg => consecutive_commas_r_reg,
      cpll_reset_i => cpll_reset_i,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      enable_err_detect_i => enable_err_detect_i,
      flag2_reg => gt_txresetfsm_i_n_4,
      gt_qpllclk_quad1_out => gt_qpllclk_quad1_out,
      gt_qpllrefclk_quad1_out => gt_qpllrefclk_quad1_out,
      gt_refclk1 => gt_refclk1,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_gt0 => hard_err_gt0,
      in0 => \^init_clk_in_0\,
      init_clk_in => init_clk_in,
      init_clk_in_0 => aurora_8b10b_0_multi_gt_i_n_5,
      init_clk_in_1 => aurora_8b10b_0_multi_gt_i_n_7,
      init_clk_in_2 => init_clk_in_1,
      \left_align_select_r_reg[0]\(7 downto 0) => \left_align_select_r_reg[0]\(7 downto 0),
      \left_align_select_r_reg[0]_0\ => \left_align_select_r_reg[0]_0\,
      \left_align_select_r_reg[0]_1\ => \left_align_select_r_reg[0]_1\,
      \left_align_select_r_reg[0]_2\ => \left_align_select_r_reg[0]_2\,
      \left_align_select_r_reg[1]\ => \left_align_select_r_reg[1]\,
      \left_align_select_r_reg[1]_0\ => \left_align_select_r_reg[1]_0\,
      \left_align_select_r_reg[1]_1\ => \left_align_select_r_reg[1]_1\,
      loopback(2 downto 0) => loopback(2 downto 0),
      pll_not_locked_out => pll_not_locked_out,
      power_down => power_down,
      \previous_cycle_control_r_reg[0]\ => \previous_cycle_control_r_reg[0]\,
      \previous_cycle_data_r_reg[7]\(5 downto 0) => \previous_cycle_data_r_reg[7]\(5 downto 0),
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxn => rxn,
      rxp => rxp,
      s_level_out_d1_aurora_8b10b_0_cdc_to_reg => p_level_in_d1_cdc_from_reg,
      tx_out_clk => tx_out_clk,
      txn => txn,
      txp => txp,
      \word_aligned_control_bits_r_reg[2]\(0) => \word_aligned_control_bits_r_reg[2]\(0),
      \word_aligned_data_r_reg[16]\(5 downto 0) => \word_aligned_data_r_reg[16]\(5 downto 0)
    );
gt0_rxresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_level_in_d1_cdc_from_reg,
      D => aurora_8b10b_0_multi_gt_i_n_5,
      Q => gt0_rxresetdone_r3_reg_srl3_n_0
    );
gt0_txresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => p_level_in_d1_cdc_from_reg,
      D => aurora_8b10b_0_multi_gt_i_n_7,
      Q => gt0_txresetdone_r3_reg_srl3_n_0
    );
gt_rx_reset_i_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_i_0,
      Q => gt_rx_reset_i,
      R => '0'
    );
gt_rxresetdone_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_resetdone_out\,
      O => rxfsm_rxresetdone_r3_reg_0
    );
gt_rxresetfsm_i: entity work.aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm
     port map (
      AR(0) => rxfsm_soft_reset_r,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      gtrxreset_i_0 => gtrxreset_i_0,
      init_clk_in => init_clk_in,
      p_level_in_d1_cdc_from_reg => p_level_in_d1_cdc_from_reg,
      reset_time_out_reg_0 => rx_cdrlocked_reg_n_0,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r,
      s_level_out_d1_aurora_8b10b_0_cdc_to_reg => \^init_clk_in_0\
    );
gt_txresetfsm_i: entity work.aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm
     port map (
      CPLL_RESET_reg_0 => gt_txresetfsm_i_n_4,
      ack_flag => \gt0_aurora_8b10b_0_i/ack_flag\,
      cpll_reset_i => cpll_reset_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      init_clk_in => init_clk_in,
      \init_wait_count_reg[7]_0\ => \init_wait_count_reg[7]\,
      \out\ => \out\,
      s_level_out_d1_aurora_8b10b_0_cdc_to_reg => \^init_clk_in_0\,
      s_level_out_d3_reg => s_level_out_d3_reg,
      s_level_out_d5_reg => p_level_in_d1_cdc_from_reg,
      txfsm_txresetdone_r => txfsm_txresetdone_r
    );
gtrxreset_cdc_sync: entity work.\aurora_8b10b_0_aurora_8b10b_0_cdc_sync__parameterized0_2\
     port map (
      gtrxreset_i => gtrxreset_i,
      init_clk_in => init_clk_in,
      \out\ => gtrxreset_sync,
      p_level_in_d1_cdc_from_reg_0 => p_level_in_d1_cdc_from_reg
    );
gtrxreset_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gtrxreset_r2,
      I1 => gtrxreset_r3,
      O => gtrxreset_pulse_i_1_n_0
    );
gtrxreset_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_pulse_i_1_n_0,
      Q => gtrxreset_pulse,
      R => '0'
    );
gtrxreset_r1_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_sync,
      Q => gtrxreset_r1,
      R => '0'
    );
gtrxreset_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_r1,
      Q => gtrxreset_r2,
      R => '0'
    );
gtrxreset_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => gtrxreset_r2,
      Q => gtrxreset_r3,
      R => '0'
    );
link_reset_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => \^link_reset_r\,
      Q => link_reset_r2,
      R => '0'
    );
link_reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => link_reset_out,
      Q => \^link_reset_r\,
      R => '0'
    );
rx_cdrlock_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_cdrlock_counter0_carry_n_0,
      CO(2) => rx_cdrlock_counter0_carry_n_1,
      CO(1) => rx_cdrlock_counter0_carry_n_2,
      CO(0) => rx_cdrlock_counter0_carry_n_3,
      CYINIT => \rx_cdrlock_counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \rx_cdrlock_counter_reg_n_0_[4]\,
      S(2) => \rx_cdrlock_counter_reg_n_0_[3]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[2]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[1]\
    );
\rx_cdrlock_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_cdrlock_counter0_carry_n_0,
      CO(3) => \rx_cdrlock_counter0_carry__0_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__0_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__0_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \rx_cdrlock_counter_reg_n_0_[8]\,
      S(2) => \rx_cdrlock_counter_reg_n_0_[7]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[6]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[5]\
    );
\rx_cdrlock_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__0_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__1_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__1_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__1_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \rx_cdrlock_counter_reg_n_0_[12]\,
      S(2) => \rx_cdrlock_counter_reg_n_0_[11]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[10]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[9]\
    );
\rx_cdrlock_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__1_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__2_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__2_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__2_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \rx_cdrlock_counter_reg_n_0_[16]\,
      S(2) => \rx_cdrlock_counter_reg_n_0_[15]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[14]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[13]\
    );
\rx_cdrlock_counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__2_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__3_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__3_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__3_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \rx_cdrlock_counter_reg_n_0_[20]\,
      S(2) => \rx_cdrlock_counter_reg_n_0_[19]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[18]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[17]\
    );
\rx_cdrlock_counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__3_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__4_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__4_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__4_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \rx_cdrlock_counter_reg_n_0_[24]\,
      S(2) => \rx_cdrlock_counter_reg_n_0_[23]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[22]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[21]\
    );
\rx_cdrlock_counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__4_n_0\,
      CO(3) => \rx_cdrlock_counter0_carry__5_n_0\,
      CO(2) => \rx_cdrlock_counter0_carry__5_n_1\,
      CO(1) => \rx_cdrlock_counter0_carry__5_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \rx_cdrlock_counter_reg_n_0_[28]\,
      S(2) => \rx_cdrlock_counter_reg_n_0_[27]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[26]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[25]\
    );
\rx_cdrlock_counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_cdrlock_counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \rx_cdrlock_counter0_carry__6_n_2\,
      CO(0) => \rx_cdrlock_counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \rx_cdrlock_counter_reg_n_0_[31]\,
      S(1) => \rx_cdrlock_counter_reg_n_0_[30]\,
      S(0) => \rx_cdrlock_counter_reg_n_0_[29]\
    );
\rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => \rx_cdrlock_counter_reg_n_0_[0]\,
      O => \rx_cdrlock_counter[0]_i_1_n_0\
    );
\rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(10),
      O => rx_cdrlock_counter(10)
    );
\rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(11),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_5_n_0\,
      O => rx_cdrlock_counter(11)
    );
\rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(12),
      O => rx_cdrlock_counter(12)
    );
\rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(13),
      O => rx_cdrlock_counter(13)
    );
\rx_cdrlock_counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(14),
      O => rx_cdrlock_counter(14)
    );
\rx_cdrlock_counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(15),
      O => rx_cdrlock_counter(15)
    );
\rx_cdrlock_counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(16),
      O => rx_cdrlock_counter(16)
    );
\rx_cdrlock_counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(17),
      O => rx_cdrlock_counter(17)
    );
\rx_cdrlock_counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(18),
      O => rx_cdrlock_counter(18)
    );
\rx_cdrlock_counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(19),
      O => rx_cdrlock_counter(19)
    );
\rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(1),
      O => rx_cdrlock_counter(1)
    );
\rx_cdrlock_counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(20),
      O => rx_cdrlock_counter(20)
    );
\rx_cdrlock_counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(21),
      O => rx_cdrlock_counter(21)
    );
\rx_cdrlock_counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(22),
      O => rx_cdrlock_counter(22)
    );
\rx_cdrlock_counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(23),
      O => rx_cdrlock_counter(23)
    );
\rx_cdrlock_counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(24),
      O => rx_cdrlock_counter(24)
    );
\rx_cdrlock_counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(25),
      O => rx_cdrlock_counter(25)
    );
\rx_cdrlock_counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(26),
      O => rx_cdrlock_counter(26)
    );
\rx_cdrlock_counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(27),
      O => rx_cdrlock_counter(27)
    );
\rx_cdrlock_counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(28),
      O => rx_cdrlock_counter(28)
    );
\rx_cdrlock_counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(29),
      O => rx_cdrlock_counter(29)
    );
\rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(2),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_5_n_0\,
      O => rx_cdrlock_counter(2)
    );
\rx_cdrlock_counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(30),
      O => rx_cdrlock_counter(30)
    );
\rx_cdrlock_counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(31),
      O => rx_cdrlock_counter(31)
    );
\rx_cdrlock_counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[18]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[19]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[16]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[17]\,
      I4 => \rx_cdrlock_counter[31]_i_6_n_0\,
      O => \rx_cdrlock_counter[31]_i_2_n_0\
    );
\rx_cdrlock_counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[26]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[27]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[24]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[25]\,
      I4 => \rx_cdrlock_counter[31]_i_7_n_0\,
      O => \rx_cdrlock_counter[31]_i_3_n_0\
    );
\rx_cdrlock_counter[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[3]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[2]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[0]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[1]\,
      I4 => \rx_cdrlock_counter[31]_i_8_n_0\,
      O => \rx_cdrlock_counter[31]_i_4_n_0\
    );
\rx_cdrlock_counter[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[10]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[11]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[9]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[8]\,
      I4 => \rx_cdrlock_counter[31]_i_9_n_0\,
      O => \rx_cdrlock_counter[31]_i_5_n_0\
    );
\rx_cdrlock_counter[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[21]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[20]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[23]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[22]\,
      O => \rx_cdrlock_counter[31]_i_6_n_0\
    );
\rx_cdrlock_counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[29]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[28]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[31]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[30]\,
      O => \rx_cdrlock_counter[31]_i_7_n_0\
    );
\rx_cdrlock_counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[5]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[4]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[7]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[6]\,
      O => \rx_cdrlock_counter[31]_i_8_n_0\
    );
\rx_cdrlock_counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \rx_cdrlock_counter_reg_n_0_[13]\,
      I1 => \rx_cdrlock_counter_reg_n_0_[12]\,
      I2 => \rx_cdrlock_counter_reg_n_0_[15]\,
      I3 => \rx_cdrlock_counter_reg_n_0_[14]\,
      O => \rx_cdrlock_counter[31]_i_9_n_0\
    );
\rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(3),
      O => rx_cdrlock_counter(3)
    );
\rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(4),
      O => rx_cdrlock_counter(4)
    );
\rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(5),
      O => rx_cdrlock_counter(5)
    );
\rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(6),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_5_n_0\,
      O => rx_cdrlock_counter(6)
    );
\rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(7),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_5_n_0\,
      O => rx_cdrlock_counter(7)
    );
\rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => data0(8),
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_5_n_0\,
      O => rx_cdrlock_counter(8)
    );
\rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I1 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_5_n_0\,
      I4 => data0(9),
      O => rx_cdrlock_counter(9)
    );
\rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => \rx_cdrlock_counter[0]_i_1_n_0\,
      Q => \rx_cdrlock_counter_reg_n_0_[0]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(10),
      Q => \rx_cdrlock_counter_reg_n_0_[10]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(11),
      Q => \rx_cdrlock_counter_reg_n_0_[11]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(12),
      Q => \rx_cdrlock_counter_reg_n_0_[12]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(13),
      Q => \rx_cdrlock_counter_reg_n_0_[13]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(14),
      Q => \rx_cdrlock_counter_reg_n_0_[14]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(15),
      Q => \rx_cdrlock_counter_reg_n_0_[15]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(16),
      Q => \rx_cdrlock_counter_reg_n_0_[16]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(17),
      Q => \rx_cdrlock_counter_reg_n_0_[17]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(18),
      Q => \rx_cdrlock_counter_reg_n_0_[18]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(19),
      Q => \rx_cdrlock_counter_reg_n_0_[19]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(1),
      Q => \rx_cdrlock_counter_reg_n_0_[1]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(20),
      Q => \rx_cdrlock_counter_reg_n_0_[20]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(21),
      Q => \rx_cdrlock_counter_reg_n_0_[21]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(22),
      Q => \rx_cdrlock_counter_reg_n_0_[22]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(23),
      Q => \rx_cdrlock_counter_reg_n_0_[23]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(24),
      Q => \rx_cdrlock_counter_reg_n_0_[24]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(25),
      Q => \rx_cdrlock_counter_reg_n_0_[25]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(26),
      Q => \rx_cdrlock_counter_reg_n_0_[26]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(27),
      Q => \rx_cdrlock_counter_reg_n_0_[27]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(28),
      Q => \rx_cdrlock_counter_reg_n_0_[28]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(29),
      Q => \rx_cdrlock_counter_reg_n_0_[29]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(2),
      Q => \rx_cdrlock_counter_reg_n_0_[2]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(30),
      Q => \rx_cdrlock_counter_reg_n_0_[30]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(31),
      Q => \rx_cdrlock_counter_reg_n_0_[31]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(3),
      Q => \rx_cdrlock_counter_reg_n_0_[3]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(4),
      Q => \rx_cdrlock_counter_reg_n_0_[4]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(5),
      Q => \rx_cdrlock_counter_reg_n_0_[5]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(6),
      Q => \rx_cdrlock_counter_reg_n_0_[6]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(7),
      Q => \rx_cdrlock_counter_reg_n_0_[7]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(8),
      Q => \rx_cdrlock_counter_reg_n_0_[8]\,
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlock_counter(9),
      Q => \rx_cdrlock_counter_reg_n_0_[9]\,
      R => gt_rx_reset_i
    );
rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => rx_cdrlocked_reg_n_0,
      I1 => \rx_cdrlock_counter[31]_i_2_n_0\,
      I2 => \rx_cdrlock_counter[31]_i_3_n_0\,
      I3 => \rx_cdrlock_counter[31]_i_4_n_0\,
      I4 => \rx_cdrlock_counter[31]_i_5_n_0\,
      O => rx_cdrlocked_i_1_n_0
    );
rx_cdrlocked_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => rx_cdrlocked_i_1_n_0,
      Q => rx_cdrlocked_reg_n_0,
      R => gt_rx_reset_i
    );
rxfsm_rxresetdone_r2_reg: unisim.vcomponents.FDRE
     port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rxfsm_rxresetdone_r,
      Q => rxfsm_rxresetdone_r2,
      R => '0'
    );
rxfsm_rxresetdone_r3_reg: unisim.vcomponents.FDRE
     port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => rxfsm_rxresetdone_r2,
      Q => \^rx_resetdone_out\,
      R => '0'
    );
rxfsm_rxresetdone_r_reg: unisim.vcomponents.FDRE
     port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => gt0_rxresetdone_r3_reg_srl3_n_0,
      Q => rxfsm_rxresetdone_r,
      R => '0'
    );
rxfsm_soft_reset_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => link_reset_r2,
      I1 => gtrxreset_pulse,
      I2 => \init_wait_count_reg[7]\,
      O => rxfsm_soft_reset_r_i_1_n_0
    );
rxfsm_soft_reset_r_reg: unisim.vcomponents.FDRE
     port map (
      C => init_clk_in,
      CE => '1',
      D => rxfsm_soft_reset_r_i_1_n_0,
      Q => rxfsm_soft_reset_r,
      R => '0'
    );
txfsm_txresetdone_r_reg: unisim.vcomponents.FDRE
     port map (
      C => p_level_in_d1_cdc_from_reg,
      CE => '1',
      D => gt0_txresetdone_r3_reg_srl3_n_0,
      Q => txfsm_txresetdone_r,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_RX_LL is
  port (
    rx_eof : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    \stage_2_data_r_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \STORAGE_DATA_reg[31]\ : in STD_LOGIC;
    \stage_2_data_r_reg[8]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \stage_2_data_r_reg[16]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \stage_2_data_r_reg[24]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \IN_FRAME_reg[1]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    in_frame_r_reg : in STD_LOGIC;
    after_scp_select_c_1 : in STD_LOGIC;
    after_scp_select_c_0 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    stage_1_pad_r_reg : in STD_LOGIC;
    start_rx_i : in STD_LOGIC;
    \DEFRAMED_DATA_V_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \stage_1_ecp_r_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_RX_LL : entity is "aurora_8b10b_0_RX_LL";
end aurora_8b10b_0_aurora_8b10b_0_RX_LL;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_RX_LL is
  signal \STORAGE_DATA[0]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[15]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[16]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[17]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[18]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[19]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[1]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[20]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[21]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[22]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[23]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[24]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[25]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[26]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[27]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[28]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[29]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[2]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[30]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[3]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[4]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[5]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[6]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[7]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[8]_i_1_n_0\ : STD_LOGIC;
  signal \STORAGE_DATA[9]_i_1_n_0\ : STD_LOGIC;
  signal STORAGE_SELECT : STD_LOGIC_VECTOR ( 4 to 9 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rx_ll_pdu_datapath_i_n_22 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_23 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_24 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_25 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_26 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_27 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_28 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_29 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_30 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_31 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_32 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_33 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_34 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_35 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_36 : STD_LOGIC;
  signal rx_ll_pdu_datapath_i_n_37 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \STORAGE_DATA[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \STORAGE_DATA[10]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \STORAGE_DATA[11]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \STORAGE_DATA[12]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \STORAGE_DATA[13]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \STORAGE_DATA[14]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \STORAGE_DATA[15]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \STORAGE_DATA[16]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \STORAGE_DATA[17]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \STORAGE_DATA[18]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \STORAGE_DATA[19]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \STORAGE_DATA[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \STORAGE_DATA[20]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \STORAGE_DATA[21]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \STORAGE_DATA[22]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \STORAGE_DATA[23]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \STORAGE_DATA[24]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \STORAGE_DATA[25]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \STORAGE_DATA[26]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \STORAGE_DATA[27]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \STORAGE_DATA[28]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \STORAGE_DATA[29]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \STORAGE_DATA[2]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \STORAGE_DATA[30]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \STORAGE_DATA[31]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \STORAGE_DATA[3]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \STORAGE_DATA[4]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \STORAGE_DATA[5]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \STORAGE_DATA[6]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \STORAGE_DATA[7]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \STORAGE_DATA[8]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \STORAGE_DATA[9]_i_1\ : label is "soft_lutpair73";
begin
\STORAGE_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_22,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(15),
      O => \STORAGE_DATA[0]_i_1_n_0\
    );
\STORAGE_DATA[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_32,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(5),
      O => \STORAGE_DATA[10]_i_1_n_0\
    );
\STORAGE_DATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_33,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(4),
      O => \STORAGE_DATA[11]_i_1_n_0\
    );
\STORAGE_DATA[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_34,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(3),
      O => \STORAGE_DATA[12]_i_1_n_0\
    );
\STORAGE_DATA[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_35,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(2),
      O => \STORAGE_DATA[13]_i_1_n_0\
    );
\STORAGE_DATA[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_36,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(1),
      O => \STORAGE_DATA[14]_i_1_n_0\
    );
\STORAGE_DATA[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_37,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(0),
      O => \STORAGE_DATA[15]_i_1_n_0\
    );
\STORAGE_DATA[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_22,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(15),
      O => \STORAGE_DATA[16]_i_1_n_0\
    );
\STORAGE_DATA[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_23,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(14),
      O => \STORAGE_DATA[17]_i_1_n_0\
    );
\STORAGE_DATA[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_24,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(13),
      O => \STORAGE_DATA[18]_i_1_n_0\
    );
\STORAGE_DATA[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_25,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(12),
      O => \STORAGE_DATA[19]_i_1_n_0\
    );
\STORAGE_DATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_23,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(14),
      O => \STORAGE_DATA[1]_i_1_n_0\
    );
\STORAGE_DATA[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_26,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(11),
      O => \STORAGE_DATA[20]_i_1_n_0\
    );
\STORAGE_DATA[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_27,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(10),
      O => \STORAGE_DATA[21]_i_1_n_0\
    );
\STORAGE_DATA[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_28,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(9),
      O => \STORAGE_DATA[22]_i_1_n_0\
    );
\STORAGE_DATA[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_29,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(8),
      O => \STORAGE_DATA[23]_i_1_n_0\
    );
\STORAGE_DATA[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_30,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(7),
      O => \STORAGE_DATA[24]_i_1_n_0\
    );
\STORAGE_DATA[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_31,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(6),
      O => \STORAGE_DATA[25]_i_1_n_0\
    );
\STORAGE_DATA[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_32,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(5),
      O => \STORAGE_DATA[26]_i_1_n_0\
    );
\STORAGE_DATA[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_33,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(4),
      O => \STORAGE_DATA[27]_i_1_n_0\
    );
\STORAGE_DATA[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_34,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(3),
      O => \STORAGE_DATA[28]_i_1_n_0\
    );
\STORAGE_DATA[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_35,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(2),
      O => \STORAGE_DATA[29]_i_1_n_0\
    );
\STORAGE_DATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_24,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(13),
      O => \STORAGE_DATA[2]_i_1_n_0\
    );
\STORAGE_DATA[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_36,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(1),
      O => \STORAGE_DATA[30]_i_1_n_0\
    );
\STORAGE_DATA[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_37,
      I1 => STORAGE_SELECT(9),
      I2 => p_1_in(0),
      O => \STORAGE_DATA[31]_i_1_n_0\
    );
\STORAGE_DATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_25,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(12),
      O => \STORAGE_DATA[3]_i_1_n_0\
    );
\STORAGE_DATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_26,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(11),
      O => \STORAGE_DATA[4]_i_1_n_0\
    );
\STORAGE_DATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_27,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(10),
      O => \STORAGE_DATA[5]_i_1_n_0\
    );
\STORAGE_DATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_28,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(9),
      O => \STORAGE_DATA[6]_i_1_n_0\
    );
\STORAGE_DATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_29,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(8),
      O => \STORAGE_DATA[7]_i_1_n_0\
    );
\STORAGE_DATA[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_30,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(7),
      O => \STORAGE_DATA[8]_i_1_n_0\
    );
\STORAGE_DATA[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => rx_ll_pdu_datapath_i_n_31,
      I1 => STORAGE_SELECT(4),
      I2 => p_1_in(6),
      O => \STORAGE_DATA[9]_i_1_n_0\
    );
rx_ll_pdu_datapath_i: entity work.aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH
     port map (
      D(1 downto 0) => D(1 downto 0),
      \DEFRAMED_DATA_V_reg[0]\(1 downto 0) => \DEFRAMED_DATA_V_reg[0]\(1 downto 0),
      \IN_FRAME_reg[1]\ => \IN_FRAME_reg[1]\,
      \MUXED_DATA_reg[0]\(31 downto 16) => p_1_in(15 downto 0),
      \MUXED_DATA_reg[0]\(15) => rx_ll_pdu_datapath_i_n_22,
      \MUXED_DATA_reg[0]\(14) => rx_ll_pdu_datapath_i_n_23,
      \MUXED_DATA_reg[0]\(13) => rx_ll_pdu_datapath_i_n_24,
      \MUXED_DATA_reg[0]\(12) => rx_ll_pdu_datapath_i_n_25,
      \MUXED_DATA_reg[0]\(11) => rx_ll_pdu_datapath_i_n_26,
      \MUXED_DATA_reg[0]\(10) => rx_ll_pdu_datapath_i_n_27,
      \MUXED_DATA_reg[0]\(9) => rx_ll_pdu_datapath_i_n_28,
      \MUXED_DATA_reg[0]\(8) => rx_ll_pdu_datapath_i_n_29,
      \MUXED_DATA_reg[0]\(7) => rx_ll_pdu_datapath_i_n_30,
      \MUXED_DATA_reg[0]\(6) => rx_ll_pdu_datapath_i_n_31,
      \MUXED_DATA_reg[0]\(5) => rx_ll_pdu_datapath_i_n_32,
      \MUXED_DATA_reg[0]\(4) => rx_ll_pdu_datapath_i_n_33,
      \MUXED_DATA_reg[0]\(3) => rx_ll_pdu_datapath_i_n_34,
      \MUXED_DATA_reg[0]\(2) => rx_ll_pdu_datapath_i_n_35,
      \MUXED_DATA_reg[0]\(1) => rx_ll_pdu_datapath_i_n_36,
      \MUXED_DATA_reg[0]\(0) => rx_ll_pdu_datapath_i_n_37,
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => SR(0),
      \STORAGE_DATA_reg[0]\(31) => \STORAGE_DATA[0]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(30) => \STORAGE_DATA[1]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(29) => \STORAGE_DATA[2]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(28) => \STORAGE_DATA[3]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(27) => \STORAGE_DATA[4]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(26) => \STORAGE_DATA[5]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(25) => \STORAGE_DATA[6]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(24) => \STORAGE_DATA[7]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(23) => \STORAGE_DATA[8]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(22) => \STORAGE_DATA[9]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(21) => \STORAGE_DATA[10]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(20) => \STORAGE_DATA[11]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(19) => \STORAGE_DATA[12]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(18) => \STORAGE_DATA[13]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(17) => \STORAGE_DATA[14]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(16) => \STORAGE_DATA[15]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(15) => \STORAGE_DATA[16]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(14) => \STORAGE_DATA[17]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(13) => \STORAGE_DATA[18]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(12) => \STORAGE_DATA[19]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(11) => \STORAGE_DATA[20]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(10) => \STORAGE_DATA[21]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(9) => \STORAGE_DATA[22]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(8) => \STORAGE_DATA[23]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(7) => \STORAGE_DATA[24]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(6) => \STORAGE_DATA[25]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(5) => \STORAGE_DATA[26]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(4) => \STORAGE_DATA[27]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(3) => \STORAGE_DATA[28]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(2) => \STORAGE_DATA[29]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(1) => \STORAGE_DATA[30]_i_1_n_0\,
      \STORAGE_DATA_reg[0]\(0) => \STORAGE_DATA[31]_i_1_n_0\,
      \STORAGE_DATA_reg[31]\ => \STORAGE_DATA_reg[31]\,
      STORAGE_SELECT(1) => STORAGE_SELECT(4),
      STORAGE_SELECT(0) => STORAGE_SELECT(9),
      after_scp_select_c_0 => after_scp_select_c_0,
      after_scp_select_c_1 => after_scp_select_c_1,
      frame_err => frame_err,
      in_frame_r_reg => in_frame_r_reg,
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      rx_eof => rx_eof,
      \stage_1_ecp_r_reg[0]_0\(1 downto 0) => \stage_1_ecp_r_reg[0]\(1 downto 0),
      stage_1_pad_r_reg_0 => stage_1_pad_r_reg,
      \stage_2_data_r_reg[0]_0\(7 downto 0) => \stage_2_data_r_reg[0]\(7 downto 0),
      \stage_2_data_r_reg[16]_0\(7 downto 0) => \stage_2_data_r_reg[16]\(7 downto 0),
      \stage_2_data_r_reg[24]_0\(7 downto 0) => \stage_2_data_r_reg[24]\(7 downto 0),
      \stage_2_data_r_reg[8]_0\(7 downto 0) => \stage_2_data_r_reg[8]\(7 downto 0),
      start_rx_i => start_rx_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_core is
  port (
    sys_reset_out : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC;
    tx_lock : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_resetdone_out : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rx_tlast : out STD_LOGIC;
    m_axi_rx_tvalid : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tready : out STD_LOGIC;
    \prepare_count_r_reg[9]\ : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    in0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    \init_wait_count_reg[7]\ : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad1_out : in STD_LOGIC;
    gt_qpllrefclk_quad1_out : in STD_LOGIC;
    power_down : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_core : entity is "aurora_8b10b_0_core";
end aurora_8b10b_0_aurora_8b10b_0_core;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_core is
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_10 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_14 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_19 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_20 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_22 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_23 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_24 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_25 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_26 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_27 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_28 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_62 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_63 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_64 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_65 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_66 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_67 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_68 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_69 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_70 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_71 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_72 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_73 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_74 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_75 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_76 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_77 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_82 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_83 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_84 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_85 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_86 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_87 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_88 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_89 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_9 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_90 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_91 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_92 : STD_LOGIC;
  signal aurora_8b10b_0_aurora_lane_4byte_0_i_n_93 : STD_LOGIC;
  signal \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0\ : STD_LOGIC;
  signal \aurora_8b10b_0_err_detect_4byte_i/p_6_out\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \aurora_8b10b_0_lane_init_sm_4byte_i/begin_r\ : STD_LOGIC;
  signal \aurora_8b10b_0_lane_init_sm_4byte_i/consecutive_commas_r\ : STD_LOGIC;
  signal \aurora_8b10b_0_sym_dec_4byte_i/p_0_in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_to_ll_pdu_i_n_0 : STD_LOGIC;
  signal \^channel_up\ : STD_LOGIC;
  signal do_cc_i : STD_LOGIC;
  signal ena_comma_align_i : STD_LOGIC;
  signal enable_err_detect_i : STD_LOGIC;
  signal gen_a_i : STD_LOGIC;
  signal gen_cc_i : STD_LOGIC;
  signal gen_ecp_i : STD_LOGIC;
  signal gen_k_i : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gen_pad_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_r_i : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gen_scp_striped_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gen_v_i : STD_LOGIC_VECTOR ( 1 to 3 );
  signal got_v_i : STD_LOGIC;
  signal gt_wrapper_i_n_67 : STD_LOGIC;
  signal gt_wrapper_i_n_69 : STD_LOGIC;
  signal gt_wrapper_i_n_70 : STD_LOGIC;
  signal gt_wrapper_i_n_71 : STD_LOGIC;
  signal gt_wrapper_i_n_72 : STD_LOGIC;
  signal gt_wrapper_i_n_73 : STD_LOGIC;
  signal gt_wrapper_i_n_74 : STD_LOGIC;
  signal gt_wrapper_i_n_75 : STD_LOGIC;
  signal gt_wrapper_i_n_76 : STD_LOGIC;
  signal gt_wrapper_i_n_77 : STD_LOGIC;
  signal gt_wrapper_i_n_78 : STD_LOGIC;
  signal gt_wrapper_i_n_79 : STD_LOGIC;
  signal gt_wrapper_i_n_80 : STD_LOGIC;
  signal gt_wrapper_i_n_81 : STD_LOGIC;
  signal gt_wrapper_i_n_82 : STD_LOGIC;
  signal gt_wrapper_i_n_83 : STD_LOGIC;
  signal gt_wrapper_i_n_84 : STD_LOGIC;
  signal gt_wrapper_i_n_85 : STD_LOGIC;
  signal gt_wrapper_i_n_86 : STD_LOGIC;
  signal gt_wrapper_i_n_87 : STD_LOGIC;
  signal gt_wrapper_i_n_89 : STD_LOGIC;
  signal gt_wrapper_i_n_90 : STD_LOGIC;
  signal gt_wrapper_i_n_91 : STD_LOGIC;
  signal gt_wrapper_i_n_92 : STD_LOGIC;
  signal gtrxreset_i : STD_LOGIC;
  signal hard_err_i : STD_LOGIC;
  signal \^lane_up\ : STD_LOGIC;
  signal \^link_reset_out\ : STD_LOGIC;
  signal link_reset_r : STD_LOGIC;
  signal new_pkt_r : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reset_lanes_i : STD_LOGIC;
  signal rx_char_is_comma_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_char_is_k_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_data_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_ecp_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_eof : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_0\ : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_1\ : STD_LOGIC;
  signal rx_ll_rst : STD_LOGIC;
  signal rx_pe_data_v_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_polarity_i : STD_LOGIC;
  signal rx_realign_i : STD_LOGIC;
  signal rx_rem_int : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_scp_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal soft_err_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal start_rx_i : STD_LOGIC;
  signal \^sys_reset_out\ : STD_LOGIC;
  signal tx_char_is_k_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_data_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tx_dst_rdy : STD_LOGIC;
  signal \^tx_lock\ : STD_LOGIC;
  signal tx_pe_data_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal tx_pe_data_v_i : STD_LOGIC_VECTOR ( 0 to 1 );
begin
  channel_up <= \^channel_up\;
  lane_up <= \^lane_up\;
  link_reset_out <= \^link_reset_out\;
  sys_reset_out <= \^sys_reset_out\;
  tx_lock <= \^tx_lock\;
aurora_8b10b_0_aurora_lane_4byte_0_i: entity work.aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE
     port map (
      D(3 downto 0) => rx_char_is_comma_i(3 downto 0),
      Q(1) => rx_ecp_striped_i(0),
      Q(0) => rx_ecp_striped_i(1),
      RXCHARISK(3 downto 0) => rx_char_is_k_i(3 downto 0),
      RXDATA(31 downto 0) => rx_data_i(31 downto 0),
      \RX_ECP_reg[0]\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_19,
      \RX_ECP_reg[1]\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_14,
      \RX_PAD_reg[1]\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_20,
      \RX_PE_DATA_V_reg[0]\(1) => rx_pe_data_v_striped_i(0),
      \RX_PE_DATA_V_reg[0]\(0) => rx_pe_data_v_striped_i(1),
      \RX_SCP_reg[0]\(1) => rx_scp_striped_i(0),
      \RX_SCP_reg[0]\(0) => rx_scp_striped_i(1),
      \SOFT_ERR_reg[0]\(1) => soft_err_i(0),
      \SOFT_ERR_reg[0]\(0) => soft_err_i(1),
      SR(0) => reset_lanes_i,
      TXCHARISK(3 downto 0) => tx_char_is_k_i(3 downto 0),
      TXDATA(31 downto 0) => tx_data_i(31 downto 0),
      \TX_DATA_reg[0]\ => \prepare_count_r_reg[9]\,
      after_scp_select_c_0 => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_0\,
      after_scp_select_c_1 => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_1\,
      begin_r => \aurora_8b10b_0_lane_init_sm_4byte_i/begin_r\,
      consecutive_commas_r => \aurora_8b10b_0_lane_init_sm_4byte_i/consecutive_commas_r\,
      ena_comma_align_i => ena_comma_align_i,
      enable_err_detect_i => enable_err_detect_i,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      \gen_k_r_reg[0]\(3) => gen_k_i(0),
      \gen_k_r_reg[0]\(2) => gen_k_i(1),
      \gen_k_r_reg[0]\(1) => gen_k_i(2),
      \gen_k_r_reg[0]\(0) => gen_k_i(3),
      \gen_pad_r_reg[0]\(1) => gen_pad_i(0),
      \gen_pad_r_reg[0]\(0) => gen_pad_i(1),
      \gen_r_r_reg[0]\(3) => gen_r_i(0),
      \gen_r_r_reg[0]\(2) => gen_r_i(1),
      \gen_r_r_reg[0]\(1) => gen_r_i(2),
      \gen_r_r_reg[0]\(0) => gen_r_i(3),
      gen_scp_striped_i(0) => gen_scp_striped_i(0),
      \gen_v_r_reg[1]\(2) => gen_v_i(1),
      \gen_v_r_reg[1]\(1) => gen_v_i(2),
      \gen_v_r_reg[1]\(0) => gen_v_i(3),
      got_v_i => got_v_i,
      hard_err_gt0 => \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0\,
      hard_err_i => hard_err_i,
      init_clk_in => init_clk_in,
      lane_up => \^lane_up\,
      \left_align_select_r_reg[0]\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_9,
      \left_align_select_r_reg[0]_0\ => gt_wrapper_i_n_91,
      \left_align_select_r_reg[1]\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_10,
      \left_align_select_r_reg[1]_0\ => gt_wrapper_i_n_92,
      link_reset_out => \^link_reset_out\,
      \previous_cycle_control_r_reg[0]\(0) => \aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r\(0),
      \previous_cycle_data_r_reg[7]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_23,
      \previous_cycle_data_r_reg[7]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_24,
      \previous_cycle_data_r_reg[7]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_25,
      \previous_cycle_data_r_reg[7]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_26,
      \previous_cycle_data_r_reg[7]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_27,
      \previous_cycle_data_r_reg[7]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_28,
      ready_r_reg => aurora_8b10b_0_aurora_lane_4byte_0_i_n_22,
      reset_count_r_reg => gt_wrapper_i_n_71,
      reset_count_r_reg_0 => gt_wrapper_i_n_70,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      \soft_err_r_reg[0]\(3) => \aurora_8b10b_0_err_detect_4byte_i/p_6_out\(3),
      \soft_err_r_reg[0]\(2) => gt_wrapper_i_n_67,
      \soft_err_r_reg[0]\(1) => \aurora_8b10b_0_err_detect_4byte_i/p_6_out\(1),
      \soft_err_r_reg[0]\(0) => gt_wrapper_i_n_69,
      \tx_pe_data_r_reg[0]\(31) => tx_pe_data_i(0),
      \tx_pe_data_r_reg[0]\(30) => tx_pe_data_i(1),
      \tx_pe_data_r_reg[0]\(29) => tx_pe_data_i(2),
      \tx_pe_data_r_reg[0]\(28) => tx_pe_data_i(3),
      \tx_pe_data_r_reg[0]\(27) => tx_pe_data_i(4),
      \tx_pe_data_r_reg[0]\(26) => tx_pe_data_i(5),
      \tx_pe_data_r_reg[0]\(25) => tx_pe_data_i(6),
      \tx_pe_data_r_reg[0]\(24) => tx_pe_data_i(7),
      \tx_pe_data_r_reg[0]\(23) => tx_pe_data_i(8),
      \tx_pe_data_r_reg[0]\(22) => tx_pe_data_i(9),
      \tx_pe_data_r_reg[0]\(21) => tx_pe_data_i(10),
      \tx_pe_data_r_reg[0]\(20) => tx_pe_data_i(11),
      \tx_pe_data_r_reg[0]\(19) => tx_pe_data_i(12),
      \tx_pe_data_r_reg[0]\(18) => tx_pe_data_i(13),
      \tx_pe_data_r_reg[0]\(17) => tx_pe_data_i(14),
      \tx_pe_data_r_reg[0]\(16) => tx_pe_data_i(15),
      \tx_pe_data_r_reg[0]\(15) => tx_pe_data_i(16),
      \tx_pe_data_r_reg[0]\(14) => tx_pe_data_i(17),
      \tx_pe_data_r_reg[0]\(13) => tx_pe_data_i(18),
      \tx_pe_data_r_reg[0]\(12) => tx_pe_data_i(19),
      \tx_pe_data_r_reg[0]\(11) => tx_pe_data_i(20),
      \tx_pe_data_r_reg[0]\(10) => tx_pe_data_i(21),
      \tx_pe_data_r_reg[0]\(9) => tx_pe_data_i(22),
      \tx_pe_data_r_reg[0]\(8) => tx_pe_data_i(23),
      \tx_pe_data_r_reg[0]\(7) => tx_pe_data_i(24),
      \tx_pe_data_r_reg[0]\(6) => tx_pe_data_i(25),
      \tx_pe_data_r_reg[0]\(5) => tx_pe_data_i(26),
      \tx_pe_data_r_reg[0]\(4) => tx_pe_data_i(27),
      \tx_pe_data_r_reg[0]\(3) => tx_pe_data_i(28),
      \tx_pe_data_r_reg[0]\(2) => tx_pe_data_i(29),
      \tx_pe_data_r_reg[0]\(1) => tx_pe_data_i(30),
      \tx_pe_data_r_reg[0]\(0) => tx_pe_data_i(31),
      \tx_pe_data_v_r_reg[0]\(1) => tx_pe_data_v_i(0),
      \tx_pe_data_v_r_reg[0]\(0) => tx_pe_data_v_i(1),
      \word_aligned_control_bits_r_reg[2]\ => gt_wrapper_i_n_86,
      \word_aligned_control_bits_r_reg[3]\ => gt_wrapper_i_n_87,
      \word_aligned_data_r_reg[0]\(7) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_86,
      \word_aligned_data_r_reg[0]\(6) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_87,
      \word_aligned_data_r_reg[0]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_88,
      \word_aligned_data_r_reg[0]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_89,
      \word_aligned_data_r_reg[0]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_90,
      \word_aligned_data_r_reg[0]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_91,
      \word_aligned_data_r_reg[0]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_92,
      \word_aligned_data_r_reg[0]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_93,
      \word_aligned_data_r_reg[16]\(7) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_70,
      \word_aligned_data_r_reg[16]\(6) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_71,
      \word_aligned_data_r_reg[16]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_72,
      \word_aligned_data_r_reg[16]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_73,
      \word_aligned_data_r_reg[16]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_74,
      \word_aligned_data_r_reg[16]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_75,
      \word_aligned_data_r_reg[16]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_76,
      \word_aligned_data_r_reg[16]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_77,
      \word_aligned_data_r_reg[16]_0\(5) => gt_wrapper_i_n_72,
      \word_aligned_data_r_reg[16]_0\(4) => gt_wrapper_i_n_73,
      \word_aligned_data_r_reg[16]_0\(3) => gt_wrapper_i_n_74,
      \word_aligned_data_r_reg[16]_0\(2) => gt_wrapper_i_n_75,
      \word_aligned_data_r_reg[16]_0\(1) => gt_wrapper_i_n_76,
      \word_aligned_data_r_reg[16]_0\(0) => gt_wrapper_i_n_77,
      \word_aligned_data_r_reg[24]\(7) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_62,
      \word_aligned_data_r_reg[24]\(6) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_63,
      \word_aligned_data_r_reg[24]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_64,
      \word_aligned_data_r_reg[24]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_65,
      \word_aligned_data_r_reg[24]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_66,
      \word_aligned_data_r_reg[24]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_67,
      \word_aligned_data_r_reg[24]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_68,
      \word_aligned_data_r_reg[24]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_69,
      \word_aligned_data_r_reg[24]_0\(7) => gt_wrapper_i_n_78,
      \word_aligned_data_r_reg[24]_0\(6) => gt_wrapper_i_n_79,
      \word_aligned_data_r_reg[24]_0\(5) => gt_wrapper_i_n_80,
      \word_aligned_data_r_reg[24]_0\(4) => gt_wrapper_i_n_81,
      \word_aligned_data_r_reg[24]_0\(3) => gt_wrapper_i_n_82,
      \word_aligned_data_r_reg[24]_0\(2) => gt_wrapper_i_n_83,
      \word_aligned_data_r_reg[24]_0\(1) => gt_wrapper_i_n_84,
      \word_aligned_data_r_reg[24]_0\(0) => gt_wrapper_i_n_85,
      \word_aligned_data_r_reg[8]\(7 downto 4) => \aurora_8b10b_0_sym_dec_4byte_i/p_0_in\(3 downto 0),
      \word_aligned_data_r_reg[8]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_82,
      \word_aligned_data_r_reg[8]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_83,
      \word_aligned_data_r_reg[8]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_84,
      \word_aligned_data_r_reg[8]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_85
    );
aurora_8b10b_0_global_logic_i: entity work.aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC
     port map (
      D(1) => soft_err_i(0),
      D(0) => soft_err_i(1),
      SR(0) => reset_lanes_i,
      START_RX_reg(0) => rx_ll_rst,
      channel_up => \^channel_up\,
      \down_count_r_reg[0]\ => \prepare_count_r_reg[9]\,
      \downcounter_r_reg[0]\(0) => \^sys_reset_out\,
      gen_a_i => gen_a_i,
      gen_k_flop_0_i(3) => gen_k_i(0),
      gen_k_flop_0_i(2) => gen_k_i(1),
      gen_k_flop_0_i(1) => gen_k_i(2),
      gen_k_flop_0_i(0) => gen_k_i(3),
      gen_r_flop_0_i(3) => gen_r_i(0),
      gen_r_flop_0_i(2) => gen_r_i(1),
      gen_r_flop_0_i(1) => gen_r_i(2),
      gen_r_flop_0_i(0) => gen_r_i(3),
      gen_v_flop_1_i(2) => gen_v_i(1),
      gen_v_flop_1_i(1) => gen_v_i(2),
      gen_v_flop_1_i(0) => gen_v_i(3),
      got_v_i => got_v_i,
      gtrxreset_i => gtrxreset_i,
      hard_err => hard_err,
      hard_err_i => hard_err_i,
      lane_up => \^lane_up\,
      p_0_in => p_0_in,
      power_down => power_down,
      soft_err => soft_err,
      start_rx_i => start_rx_i
    );
aurora_8b10b_0_rx_ll_i: entity work.aurora_8b10b_0_aurora_8b10b_0_RX_LL
     port map (
      D(1) => rx_scp_striped_i(0),
      D(0) => rx_scp_striped_i(1),
      \DEFRAMED_DATA_V_reg[0]\(1) => rx_pe_data_v_striped_i(0),
      \DEFRAMED_DATA_V_reg[0]\(0) => rx_pe_data_v_striped_i(1),
      \IN_FRAME_reg[1]\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_19,
      Q(1) => rx_rem_int(0),
      Q(0) => rx_rem_int(1),
      SR(0) => rx_ll_rst,
      \STORAGE_DATA_reg[31]\ => \prepare_count_r_reg[9]\,
      after_scp_select_c_0 => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_0\,
      after_scp_select_c_1 => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/after_scp_select_c_1\,
      frame_err => frame_err,
      in_frame_r_reg => aurora_8b10b_0_aurora_lane_4byte_0_i_n_14,
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      rx_eof => rx_eof,
      \stage_1_ecp_r_reg[0]\(1) => rx_ecp_striped_i(0),
      \stage_1_ecp_r_reg[0]\(0) => rx_ecp_striped_i(1),
      stage_1_pad_r_reg => aurora_8b10b_0_aurora_lane_4byte_0_i_n_20,
      \stage_2_data_r_reg[0]\(7) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_86,
      \stage_2_data_r_reg[0]\(6) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_87,
      \stage_2_data_r_reg[0]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_88,
      \stage_2_data_r_reg[0]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_89,
      \stage_2_data_r_reg[0]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_90,
      \stage_2_data_r_reg[0]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_91,
      \stage_2_data_r_reg[0]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_92,
      \stage_2_data_r_reg[0]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_93,
      \stage_2_data_r_reg[16]\(7) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_70,
      \stage_2_data_r_reg[16]\(6) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_71,
      \stage_2_data_r_reg[16]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_72,
      \stage_2_data_r_reg[16]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_73,
      \stage_2_data_r_reg[16]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_74,
      \stage_2_data_r_reg[16]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_75,
      \stage_2_data_r_reg[16]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_76,
      \stage_2_data_r_reg[16]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_77,
      \stage_2_data_r_reg[24]\(7) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_62,
      \stage_2_data_r_reg[24]\(6) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_63,
      \stage_2_data_r_reg[24]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_64,
      \stage_2_data_r_reg[24]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_65,
      \stage_2_data_r_reg[24]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_66,
      \stage_2_data_r_reg[24]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_67,
      \stage_2_data_r_reg[24]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_68,
      \stage_2_data_r_reg[24]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_69,
      \stage_2_data_r_reg[8]\(7 downto 4) => \aurora_8b10b_0_sym_dec_4byte_i/p_0_in\(3 downto 0),
      \stage_2_data_r_reg[8]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_82,
      \stage_2_data_r_reg[8]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_83,
      \stage_2_data_r_reg[8]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_84,
      \stage_2_data_r_reg[8]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_85,
      start_rx_i => start_rx_i
    );
aurora_8b10b_0_tx_ll_i: entity work.aurora_8b10b_0_aurora_8b10b_0_TX_LL
     port map (
      \GEN_PAD_reg[0]\(1) => gen_pad_i(0),
      \GEN_PAD_reg[0]\(0) => gen_pad_i(1),
      Q => do_cc_i,
      \TX_PE_DATA_V_reg[0]\(1) => tx_pe_data_v_i(0),
      \TX_PE_DATA_V_reg[0]\(0) => tx_pe_data_v_i(1),
      \TX_PE_DATA_reg[0]\(31) => tx_pe_data_i(0),
      \TX_PE_DATA_reg[0]\(30) => tx_pe_data_i(1),
      \TX_PE_DATA_reg[0]\(29) => tx_pe_data_i(2),
      \TX_PE_DATA_reg[0]\(28) => tx_pe_data_i(3),
      \TX_PE_DATA_reg[0]\(27) => tx_pe_data_i(4),
      \TX_PE_DATA_reg[0]\(26) => tx_pe_data_i(5),
      \TX_PE_DATA_reg[0]\(25) => tx_pe_data_i(6),
      \TX_PE_DATA_reg[0]\(24) => tx_pe_data_i(7),
      \TX_PE_DATA_reg[0]\(23) => tx_pe_data_i(8),
      \TX_PE_DATA_reg[0]\(22) => tx_pe_data_i(9),
      \TX_PE_DATA_reg[0]\(21) => tx_pe_data_i(10),
      \TX_PE_DATA_reg[0]\(20) => tx_pe_data_i(11),
      \TX_PE_DATA_reg[0]\(19) => tx_pe_data_i(12),
      \TX_PE_DATA_reg[0]\(18) => tx_pe_data_i(13),
      \TX_PE_DATA_reg[0]\(17) => tx_pe_data_i(14),
      \TX_PE_DATA_reg[0]\(16) => tx_pe_data_i(15),
      \TX_PE_DATA_reg[0]\(15) => tx_pe_data_i(16),
      \TX_PE_DATA_reg[0]\(14) => tx_pe_data_i(17),
      \TX_PE_DATA_reg[0]\(13) => tx_pe_data_i(18),
      \TX_PE_DATA_reg[0]\(12) => tx_pe_data_i(19),
      \TX_PE_DATA_reg[0]\(11) => tx_pe_data_i(20),
      \TX_PE_DATA_reg[0]\(10) => tx_pe_data_i(21),
      \TX_PE_DATA_reg[0]\(9) => tx_pe_data_i(22),
      \TX_PE_DATA_reg[0]\(8) => tx_pe_data_i(23),
      \TX_PE_DATA_reg[0]\(7) => tx_pe_data_i(24),
      \TX_PE_DATA_reg[0]\(6) => tx_pe_data_i(25),
      \TX_PE_DATA_reg[0]\(5) => tx_pe_data_i(26),
      \TX_PE_DATA_reg[0]\(4) => tx_pe_data_i(27),
      \TX_PE_DATA_reg[0]\(3) => tx_pe_data_i(28),
      \TX_PE_DATA_reg[0]\(2) => tx_pe_data_i(29),
      \TX_PE_DATA_reg[0]\(1) => tx_pe_data_i(30),
      \TX_PE_DATA_reg[0]\(0) => tx_pe_data_i(31),
      gen_cc_i => gen_cc_i,
      gen_ecp_i => gen_ecp_i,
      gen_scp_striped_i(0) => gen_scp_striped_i(0),
      p_0_in => p_0_in,
      s_axi_tx_tdata(0 to 31) => s_axi_tx_tdata(0 to 31),
      s_axi_tx_tkeep(0 to 3) => s_axi_tx_tkeep(0 to 3),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      tx_dst_rdy => tx_dst_rdy,
      \tx_pe_data_r_reg[0]\ => \prepare_count_r_reg[9]\,
      \tx_pe_data_v_r_reg[1]\ => axi_to_ll_pdu_i_n_0
    );
axi_to_ll_pdu_i: entity work.aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL
     port map (
      new_pkt_r => new_pkt_r,
      new_pkt_r_reg_0 => axi_to_ll_pdu_i_n_0,
      new_pkt_r_reg_1 => \prepare_count_r_reg[9]\
    );
core_reset_logic_i: entity work.aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC
     port map (
      SR(0) => \^sys_reset_out\,
      channel_up => \^channel_up\,
      gt_rxresetdone_r2_reg_0 => gt_wrapper_i_n_90,
      gt_txresetdone_r2_reg_0 => gt_wrapper_i_n_89,
      in0 => in0,
      init_clk_in => init_clk_in,
      link_reset_r => link_reset_r,
      new_pkt_r => new_pkt_r,
      new_pkt_r_reg => axi_to_ll_pdu_i_n_0,
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      s_level_out_d5_reg => \prepare_count_r_reg[9]\,
      tx_dst_rdy => tx_dst_rdy,
      tx_lock_comb_r_reg_0 => \^tx_lock\
    );
gt_wrapper_i: entity work.aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER
     port map (
      D(3 downto 0) => rx_char_is_comma_i(3 downto 0),
      ENABLE_ERR_DETECT_reg(3) => \aurora_8b10b_0_err_detect_4byte_i/p_6_out\(3),
      ENABLE_ERR_DETECT_reg(2) => gt_wrapper_i_n_67,
      ENABLE_ERR_DETECT_reg(1) => \aurora_8b10b_0_err_detect_4byte_i/p_6_out\(1),
      ENABLE_ERR_DETECT_reg(0) => gt_wrapper_i_n_69,
      RXCHARISK(3 downto 0) => rx_char_is_k_i(3 downto 0),
      RXDATA(31 downto 0) => rx_data_i(31 downto 0),
      TXCHARISK(3 downto 0) => tx_char_is_k_i(3 downto 0),
      TXDATA(31 downto 0) => tx_data_i(31 downto 0),
      begin_r => \aurora_8b10b_0_lane_init_sm_4byte_i/begin_r\,
      consecutive_commas_r => \aurora_8b10b_0_lane_init_sm_4byte_i/consecutive_commas_r\,
      consecutive_commas_r_reg => gt_wrapper_i_n_70,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      enable_err_detect_i => enable_err_detect_i,
      gt_qpllclk_quad1_out => gt_qpllclk_quad1_out,
      gt_qpllrefclk_quad1_out => gt_qpllrefclk_quad1_out,
      gt_refclk1 => gt_refclk1,
      gtrxreset_i => gtrxreset_i,
      hard_err_gt0 => \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0\,
      init_clk_in => init_clk_in,
      init_clk_in_0 => \^tx_lock\,
      init_clk_in_1 => gt_wrapper_i_n_71,
      \init_wait_count_reg[7]\ => \init_wait_count_reg[7]\,
      \left_align_select_r_reg[0]\(7) => gt_wrapper_i_n_78,
      \left_align_select_r_reg[0]\(6) => gt_wrapper_i_n_79,
      \left_align_select_r_reg[0]\(5) => gt_wrapper_i_n_80,
      \left_align_select_r_reg[0]\(4) => gt_wrapper_i_n_81,
      \left_align_select_r_reg[0]\(3) => gt_wrapper_i_n_82,
      \left_align_select_r_reg[0]\(2) => gt_wrapper_i_n_83,
      \left_align_select_r_reg[0]\(1) => gt_wrapper_i_n_84,
      \left_align_select_r_reg[0]\(0) => gt_wrapper_i_n_85,
      \left_align_select_r_reg[0]_0\ => gt_wrapper_i_n_91,
      \left_align_select_r_reg[0]_1\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_9,
      \left_align_select_r_reg[0]_2\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_22,
      \left_align_select_r_reg[1]\ => gt_wrapper_i_n_87,
      \left_align_select_r_reg[1]_0\ => gt_wrapper_i_n_92,
      \left_align_select_r_reg[1]_1\ => aurora_8b10b_0_aurora_lane_4byte_0_i_n_10,
      link_reset_out => \^link_reset_out\,
      link_reset_r => link_reset_r,
      loopback(2 downto 0) => loopback(2 downto 0),
      \out\ => tx_resetdone_out,
      p_level_in_d1_cdc_from_reg => \prepare_count_r_reg[9]\,
      pll_not_locked_out => pll_not_locked_out,
      power_down => power_down,
      \previous_cycle_control_r_reg[0]\ => gt_wrapper_i_n_86,
      \previous_cycle_data_r_reg[7]\(5) => gt_wrapper_i_n_72,
      \previous_cycle_data_r_reg[7]\(4) => gt_wrapper_i_n_73,
      \previous_cycle_data_r_reg[7]\(3) => gt_wrapper_i_n_74,
      \previous_cycle_data_r_reg[7]\(2) => gt_wrapper_i_n_75,
      \previous_cycle_data_r_reg[7]\(1) => gt_wrapper_i_n_76,
      \previous_cycle_data_r_reg[7]\(0) => gt_wrapper_i_n_77,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rx_resetdone_out => rx_resetdone_out,
      rxfsm_rxresetdone_r3_reg_0 => gt_wrapper_i_n_90,
      rxn => rxn,
      rxp => rxp,
      s_level_out_d3_reg => gt_wrapper_i_n_89,
      tx_out_clk => tx_out_clk,
      txn => txn,
      txp => txp,
      \word_aligned_control_bits_r_reg[2]\(0) => \aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r\(0),
      \word_aligned_data_r_reg[16]\(5) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_23,
      \word_aligned_data_r_reg[16]\(4) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_24,
      \word_aligned_data_r_reg[16]\(3) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_25,
      \word_aligned_data_r_reg[16]\(2) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_26,
      \word_aligned_data_r_reg[16]\(1) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_27,
      \word_aligned_data_r_reg[16]\(0) => aurora_8b10b_0_aurora_lane_4byte_0_i_n_28
    );
hpcnt_reset_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1
     port map (
      in0 => in0,
      init_clk_in => init_clk_in
    );
ll_to_axi_pdu_i: entity work.aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI
     port map (
      Q(1) => rx_rem_int(0),
      Q(0) => rx_rem_int(1),
      m_axi_rx_tkeep(2 downto 0) => m_axi_rx_tkeep(2 downto 0),
      rx_eof => rx_eof
    );
standard_cc_module_i: entity work.aurora_8b10b_0_aurora_8b10b_0_STANDARD_CC_MODULE
     port map (
      Q => do_cc_i,
      SR(0) => \^sys_reset_out\,
      \prepare_count_r_reg[9]_0\ => \prepare_count_r_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0_aurora_8b10b_0_support is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 3 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    frame_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    user_clk_out : out STD_LOGIC;
    sync_clk_out : out STD_LOGIC;
    gt_reset : in STD_LOGIC;
    reset : in STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_lock : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    gt_reset_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpen_in : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpwe_in : in STD_LOGIC;
    gt0_qplllock_out : out STD_LOGIC;
    gt0_qpllrefclklost_out : out STD_LOGIC;
    gt_qpllclk_quad1_out : out STD_LOGIC;
    gt_qpllrefclk_quad1_out : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0_aurora_8b10b_0_support : entity is "aurora_8b10b_0_support";
end aurora_8b10b_0_aurora_8b10b_0_support;

architecture STRUCTURE of aurora_8b10b_0_aurora_8b10b_0_support is
  signal \<const1>\ : STD_LOGIC;
  signal \^gt_qpllclk_quad1_out\ : STD_LOGIC;
  signal \^gt_qpllrefclk_quad1_out\ : STD_LOGIC;
  signal \^gt_reset_out\ : STD_LOGIC;
  signal gt_reset_sync_init_clk : STD_LOGIC;
  signal \^m_axi_rx_tkeep\ : STD_LOGIC_VECTOR ( 1 to 3 );
  signal reset_sync_user_clk : STD_LOGIC;
  signal system_reset_i : STD_LOGIC;
  signal tx_out_clk_i : STD_LOGIC;
  signal \^user_clk_out\ : STD_LOGIC;
begin
  gt_qpllclk_quad1_out <= \^gt_qpllclk_quad1_out\;
  gt_qpllrefclk_quad1_out <= \^gt_qpllrefclk_quad1_out\;
  gt_reset_out <= \^gt_reset_out\;
  m_axi_rx_tkeep(0) <= \<const1>\;
  m_axi_rx_tkeep(1 to 3) <= \^m_axi_rx_tkeep\(1 to 3);
  sync_clk_out <= \^user_clk_out\;
  user_clk_out <= \^user_clk_out\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
aurora_8b10b_0_core_i: entity work.aurora_8b10b_0_aurora_8b10b_0_core
     port map (
      channel_up => channel_up,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      frame_err => frame_err,
      gt_qpllclk_quad1_out => \^gt_qpllclk_quad1_out\,
      gt_qpllrefclk_quad1_out => \^gt_qpllrefclk_quad1_out\,
      gt_refclk1 => gt_refclk1,
      hard_err => hard_err,
      in0 => system_reset_i,
      init_clk_in => init_clk_in,
      \init_wait_count_reg[7]\ => \^gt_reset_out\,
      lane_up => lane_up,
      link_reset_out => link_reset_out,
      loopback(2 downto 0) => loopback(2 downto 0),
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      m_axi_rx_tkeep(2) => \^m_axi_rx_tkeep\(1),
      m_axi_rx_tkeep(1) => \^m_axi_rx_tkeep\(2),
      m_axi_rx_tkeep(0) => \^m_axi_rx_tkeep\(3),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      pll_not_locked_out => pll_not_locked_out,
      power_down => power_down,
      \prepare_count_r_reg[9]\ => \^user_clk_out\,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      s_axi_tx_tdata(0 to 31) => s_axi_tx_tdata(0 to 31),
      s_axi_tx_tkeep(0 to 3) => s_axi_tx_tkeep(0 to 3),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      soft_err => soft_err,
      sys_reset_out => sys_reset_out,
      tx_lock => tx_lock,
      tx_out_clk => tx_out_clk_i,
      tx_resetdone_out => tx_resetdone_out,
      txn => txn,
      txp => txp
    );
clock_module_i: entity work.aurora_8b10b_0_aurora_8b10b_0_CLOCK_MODULE
     port map (
      init_clk_in => \^user_clk_out\,
      tx_out_clk => tx_out_clk_i
    );
gt_common_support: entity work.aurora_8b10b_0_aurora_8b10b_0_gt_common_wrapper
     port map (
      gt0_qplllock_out => gt0_qplllock_out,
      gt0_qpllrefclklost_out => gt0_qpllrefclklost_out,
      gt_qpllclk_quad1_out => \^gt_qpllclk_quad1_out\,
      gt_qpllrefclk_quad1_out => \^gt_qpllrefclk_quad1_out\,
      gt_refclk1 => gt_refclk1,
      init_clk_in => init_clk_in
    );
gt_reset_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync
     port map (
      D(0) => gt_reset_sync_init_clk,
      gt_reset => gt_reset,
      init_clk_in => init_clk_in
    );
reset_sync_user_clk_cdc_sync: entity work.aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0
     port map (
      D(0) => reset_sync_user_clk,
      reset => reset,
      s_level_out_d5_reg_0 => \^user_clk_out\
    );
support_reset_logic_i: entity work.aurora_8b10b_0_aurora_8b10b_0_SUPPORT_RESET_LOGIC
     port map (
      D(0) => reset_sync_user_clk,
      \debounce_gt_rst_r_reg[0]_0\(0) => gt_reset_sync_init_clk,
      gt_reset_out => \^gt_reset_out\,
      in0 => system_reset_i,
      init_clk_in => init_clk_in,
      s_level_out_d6_reg => \^user_clk_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity aurora_8b10b_0 is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 3 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    frame_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    user_clk_out : out STD_LOGIC;
    sync_clk_out : out STD_LOGIC;
    gt_reset : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    gt_reset_out : out STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_lock : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpen_in : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpwe_in : in STD_LOGIC;
    gt0_qplllock_out : out STD_LOGIC;
    gt0_qpllrefclklost_out : out STD_LOGIC;
    gt_qpllclk_quad1_out : out STD_LOGIC;
    gt_qpllrefclk_quad1_out : out STD_LOGIC;
    pll_not_locked_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of aurora_8b10b_0 : entity is true;
end aurora_8b10b_0;

architecture STRUCTURE of aurora_8b10b_0 is
begin
inst: entity work.aurora_8b10b_0_aurora_8b10b_0_support
     port map (
      channel_up => channel_up,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      frame_err => frame_err,
      gt0_qplllock_out => gt0_qplllock_out,
      gt0_qpllrefclklost_out => gt0_qpllrefclklost_out,
      gt_qpllclk_quad1_out => gt_qpllclk_quad1_out,
      gt_qpllrefclk_quad1_out => gt_qpllrefclk_quad1_out,
      gt_refclk1 => gt_refclk1,
      gt_reset => gt_reset,
      gt_reset_out => gt_reset_out,
      hard_err => hard_err,
      init_clk_in => init_clk_in,
      lane_up => lane_up,
      link_reset_out => link_reset_out,
      loopback(2 downto 0) => loopback(2 downto 0),
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      m_axi_rx_tkeep(0 to 3) => m_axi_rx_tkeep(0 to 3),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      pll_not_locked_out => pll_not_locked_out,
      power_down => power_down,
      reset => reset,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      s_axi_tx_tdata(0 to 31) => s_axi_tx_tdata(0 to 31),
      s_axi_tx_tkeep(0 to 3) => s_axi_tx_tkeep(0 to 3),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      soft_err => soft_err,
      sync_clk_out => sync_clk_out,
      sys_reset_out => sys_reset_out,
      tx_lock => tx_lock,
      tx_resetdone_out => tx_resetdone_out,
      txn => txn,
      txp => txp,
      user_clk_out => user_clk_out
    );
end STRUCTURE;
