-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Apr 16 18:23:45 2020
-- Host        : ubuntu-svg-xilinx.acs-lab.eonerc.rwth-aachen.de running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/svg-hka/VILLASfpga-hardware/vc707/vc707_villas/bd/top/ip/top_util_ds_buf_0_1/top_util_ds_buf_0_1_sim_netlist.vhdl
-- Design      : top_util_ds_buf_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_util_ds_buf_0_1_util_ds_buf is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_P : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_DS_N : inout STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFHCE_O : out STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 0 to 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of top_util_ds_buf_0_1_util_ds_buf : entity is 1;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of top_util_ds_buf_0_1_util_ds_buf : entity is "ibufdsgte2";
  attribute C_SIZE : integer;
  attribute C_SIZE of top_util_ds_buf_0_1_util_ds_buf : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_util_ds_buf_0_1_util_ds_buf : entity is "util_ds_buf";
end top_util_ds_buf_0_1_util_ds_buf;

architecture STRUCTURE of top_util_ds_buf_0_1_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  signal IB : STD_LOGIC;
  signal O : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUFDS_GTE2_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_N_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_N_I\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_N_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_N_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_P_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_P_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_P_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_P_I\ : label is "PRIMITIVE";
begin
  BUFGCE_O(0) <= \<const0>\;
  BUFG_GT_O(0) <= \<const0>\;
  BUFG_O(0) <= \<const0>\;
  BUFHCE_O(0) <= \<const0>\;
  BUFH_O(0) <= \<const0>\;
  IOBUF_DS_N(0) <= \<const0>\;
  IOBUF_DS_P(0) <= \<const0>\;
  IOBUF_IO_O(0) <= \<const0>\;
  OBUF_DS_N(0) <= \<const0>\;
  OBUF_DS_P(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUFDS_GTE2_I\: unisim.vcomponents.IBUFDS_GTE2
    generic map(
      CLKCM_CFG => true,
      CLKRCV_TRST => true,
      CLKSWING_CFG => B"11"
    )
        port map (
      CEB => \<const0>\,
      I => O,
      IB => IB,
      O => IBUF_OUT(0),
      ODIV2 => IBUF_DS_ODIV2(0)
    );
\USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_N_I\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_N(0),
      O => IB
    );
\USE_IBUFDS_GTE2.GEN_IBUFDS_GTE2[0].IBUF_P_I\: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(0),
      O => O
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_util_ds_buf_0_1 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_util_ds_buf_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_util_ds_buf_0_1 : entity is "top_util_ds_buf_0_1,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of top_util_ds_buf_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of top_util_ds_buf_0_1 : entity is "util_ds_buf,Vivado 2018.3";
end top_util_ds_buf_0_1;

architecture STRUCTURE of top_util_ds_buf_0_1 is
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFG_GT_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFG_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_BUFH_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_IO_IO_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_IOBUF_IO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_OBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of U0 : label is 1;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "ibufdsgte2";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of IBUF_DS_N : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_N";
  attribute x_interface_info of IBUF_DS_ODIV2 : signal is "xilinx.com:signal:clock:1.0 IBUF_DS_ODIV2 CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IBUF_DS_ODIV2 : signal is "XIL_INTERFACENAME IBUF_DS_ODIV2, FREQ_HZ 100000000, CLK_DOMAIN top_util_ds_buf_0_1_IBUF_DS_ODIV2, INSERT_VIP 0";
  attribute x_interface_info of IBUF_DS_P : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_P";
  attribute x_interface_parameter of IBUF_DS_P : signal is "XIL_INTERFACENAME CLK_IN_D, BOARD.ASSOCIATED_PARAM DIFF_CLK_IN_BOARD_INTERFACE, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute x_interface_info of IBUF_OUT : signal is "xilinx.com:signal:clock:1.0 IBUF_OUT CLK";
  attribute x_interface_parameter of IBUF_OUT : signal is "XIL_INTERFACENAME IBUF_OUT, FREQ_HZ 100000000, CLK_DOMAIN top_util_ds_buf_0_1_IBUF_OUT, INSERT_VIP 0";
begin
U0: entity work.top_util_ds_buf_0_1_util_ds_buf
     port map (
      BUFGCE_CE(0) => '0',
      BUFGCE_I(0) => '0',
      BUFGCE_O(0) => NLW_U0_BUFGCE_O_UNCONNECTED(0),
      BUFG_GT_CE(0) => '0',
      BUFG_GT_CEMASK(0) => '0',
      BUFG_GT_CLR(0) => '0',
      BUFG_GT_CLRMASK(0) => '0',
      BUFG_GT_DIV(2 downto 0) => B"000",
      BUFG_GT_I(0) => '0',
      BUFG_GT_O(0) => NLW_U0_BUFG_GT_O_UNCONNECTED(0),
      BUFG_I(0) => '0',
      BUFG_O(0) => NLW_U0_BUFG_O_UNCONNECTED(0),
      BUFHCE_CE(0) => '0',
      BUFHCE_I(0) => '0',
      BUFHCE_O(0) => NLW_U0_BUFHCE_O_UNCONNECTED(0),
      BUFH_I(0) => '0',
      BUFH_O(0) => NLW_U0_BUFH_O_UNCONNECTED(0),
      IBUF_DS_N(0) => IBUF_DS_N(0),
      IBUF_DS_ODIV2(0) => IBUF_DS_ODIV2(0),
      IBUF_DS_P(0) => IBUF_DS_P(0),
      IBUF_OUT(0) => IBUF_OUT(0),
      IOBUF_DS_N(0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(0),
      IOBUF_DS_P(0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(0),
      IOBUF_IO_I(0) => '0',
      IOBUF_IO_IO(0) => NLW_U0_IOBUF_IO_IO_UNCONNECTED(0),
      IOBUF_IO_O(0) => NLW_U0_IOBUF_IO_O_UNCONNECTED(0),
      IOBUF_IO_T(0) => '0',
      OBUF_DS_N(0) => NLW_U0_OBUF_DS_N_UNCONNECTED(0),
      OBUF_DS_P(0) => NLW_U0_OBUF_DS_P_UNCONNECTED(0),
      OBUF_IN(0) => '0'
    );
end STRUCTURE;
