-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
-- Date        : Thu Jun 09 15:38:02 2016
-- Host        : E265 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top top_axi_pcie_intc_0_0 -prefix top_axi_pcie_intc_0_0_
--               top_axi_pcie_intc_0_0_sim_netlist.vhdl
-- Design      : top_axi_pcie_intc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_address_decoder\ is
  port (
    p_17_in : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : out STD_LOGIC;
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\ : out STD_LOGIC;
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\ : out STD_LOGIC;
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\ : out STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \REG_GEN[1].ier_reg[1]\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rdata_i_reg[5]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\ : out STD_LOGIC;
    \mer_int_reg[0]\ : out STD_LOGIC;
    \mer_int_reg[1]\ : out STD_LOGIC;
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\ : out STD_LOGIC;
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\ : out STD_LOGIC;
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\ : out STD_LOGIC;
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\ : out STD_LOGIC;
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ : out STD_LOGIC;
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\ : out STD_LOGIC;
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ : out STD_LOGIC;
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\ : out STD_LOGIC;
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ : out STD_LOGIC;
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\ : out STD_LOGIC;
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ : out STD_LOGIC;
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\ : out STD_LOGIC;
    p_0_in2_out : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    p_0_in20_out : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in67_in : in STD_LOGIC;
    p_0_in70_in : in STD_LOGIC;
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ : in STD_LOGIC;
    is_read : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bus2ip_addr_i_reg[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ : in STD_LOGIC;
    \Douta_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ILR_GEN.ilr_reg[5]\ : in STD_LOGIC;
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ : in STD_LOGIC;
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ : in STD_LOGIC;
    \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ : in STD_LOGIC;
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ : in STD_LOGIC;
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ : in STD_LOGIC;
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ : in STD_LOGIC;
    \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]\ : in STD_LOGIC;
    \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]\ : in STD_LOGIC;
    \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]\ : in STD_LOGIC;
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\ : in STD_LOGIC;
    \REG_GEN[4].isr_reg[4]\ : in STD_LOGIC;
    \ILR_GEN.ilr_reg[4]\ : in STD_LOGIC;
    \REG_GEN[3].isr_reg[3]\ : in STD_LOGIC;
    \ILR_GEN.ilr_reg[3]\ : in STD_LOGIC;
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ : in STD_LOGIC;
    \IVR_GEN.ivr_reg[1]\ : in STD_LOGIC;
    \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ : in STD_LOGIC;
    \REG_GEN[1].isr_reg[1]\ : in STD_LOGIC;
    \mer_int_reg[0]_0\ : in STD_LOGIC;
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ : in STD_LOGIC;
    \REG_GEN[0].isr_reg[0]\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ : in STD_LOGIC;
    p_0_in375_in : in STD_LOGIC;
    p_0_in364_in : in STD_LOGIC;
    p_0_in353_in : in STD_LOGIC;
    p_0_in342_in : in STD_LOGIC;
    p_0_in331_in : in STD_LOGIC;
    p_0_in320_in : in STD_LOGIC;
    p_0_in309_in : in STD_LOGIC;
    p_0_in298_in : in STD_LOGIC;
    p_0_in287_in : in STD_LOGIC;
    p_0_in276_in : in STD_LOGIC;
    p_0_in265_in : in STD_LOGIC;
    p_0_in254_in : in STD_LOGIC;
    p_0_in243_in : in STD_LOGIC;
    p_0_in232_in : in STD_LOGIC;
    p_0_in221_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : in STD_LOGIC;
    p_0_in140_in : in STD_LOGIC;
    p_0_in138_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ : in STD_LOGIC;
    p_0_in134_in : in STD_LOGIC;
    p_0_in132_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ : in STD_LOGIC;
    p_0_in128_in : in STD_LOGIC;
    p_0_in126_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ : in STD_LOGIC;
    p_0_in122_in : in STD_LOGIC;
    p_0_in120_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ : in STD_LOGIC;
    p_0_in116_in : in STD_LOGIC;
    p_0_in114_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ : in STD_LOGIC;
    \mer_int_reg[0]_1\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\ : in STD_LOGIC;
    p_0_in34_in : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    p_0_in43_in : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    p_0_in58_in : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    p_0_in73_in : in STD_LOGIC;
    bus2ip_rnw_i_reg : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC
  );
end \top_axi_pcie_intc_0_0_address_decoder\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_address_decoder\ is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\ : STD_LOGIC;
  signal \^sie_gen.sie_bit_gen[0].sie_reg[0]\ : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_2_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_3_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_4_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_5_n_0 : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal \^p_17_in\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal pselect_hit_i_0 : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_8_n_0\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[5]\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[5]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ILR_GEN.ilr[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \REG_GEN[0].ier[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ip2bus_rdack_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of ip2bus_rdack_int_d1_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of ip2bus_wrack_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ip2bus_wrack_int_d1_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ip2bus_wrack_int_d1_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mer_int[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \mer_int[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_4\ : label is "soft_lutpair12";
begin
  \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ <= \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\;
  \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ <= \^sie_gen.sie_bit_gen[0].sie_reg[0]\;
  p_17_in <= \^p_17_in\;
  \s_axi_rdata_i_reg[5]\ <= \^s_axi_rdata_i_reg[5]\;
  \s_axi_rdata_i_reg[5]_0\ <= \^s_axi_rdata_i_reg[5]_0\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(0),
      O => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\
    );
\CIE_GEN.CIE_BIT_GEN[10].cie[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in122_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(10),
      O => \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\
    );
\CIE_GEN.CIE_BIT_GEN[11].cie[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in120_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(11),
      O => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\
    );
\CIE_GEN.CIE_BIT_GEN[12].cie[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(12),
      O => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\
    );
\CIE_GEN.CIE_BIT_GEN[13].cie[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in116_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(13),
      O => \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\
    );
\CIE_GEN.CIE_BIT_GEN[14].cie[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in114_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(14),
      O => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\
    );
\CIE_GEN.CIE_BIT_GEN[15].cie[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(15),
      O => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\
    );
\CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in140_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(1),
      O => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\
    );
\CIE_GEN.CIE_BIT_GEN[2].cie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in138_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(2),
      O => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\
    );
\CIE_GEN.CIE_BIT_GEN[3].cie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(3),
      O => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\
    );
\CIE_GEN.CIE_BIT_GEN[4].cie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in134_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(4),
      O => \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\
    );
\CIE_GEN.CIE_BIT_GEN[5].cie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in132_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(5),
      O => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\
    );
\CIE_GEN.CIE_BIT_GEN[6].cie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(6),
      O => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\
    );
\CIE_GEN.CIE_BIT_GEN[7].cie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in128_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(7),
      O => \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\
    );
\CIE_GEN.CIE_BIT_GEN[8].cie[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => p_0_in126_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(8),
      O => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\
    );
\CIE_GEN.CIE_BIT_GEN[9].cie[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => p_12_in,
      I4 => s_axi_wdata(9),
      O => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\,
      Q => \^p_17_in\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => p_5_out
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_5_out,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0\,
      O => p_4_out
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => Q,
      O => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_4_out,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => p_3_out
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_3_out,
      Q => p_5_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      O => p_2_out
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_2_out,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => p_1_out
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_1_out,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[8]\(0),
      O => p_15_out
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => Q,
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_15_out,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFFFFFCFFFEF"
    )
        port map (
      I0 => is_read,
      I1 => ip2bus_rdack,
      I2 => s_axi_aresetn,
      I3 => ip2bus_wrack,
      I4 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3_n_0\,
      I5 => is_write_reg,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(6),
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[8]\(5),
      O => pselect_hit_i_0
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(2),
      O => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_3_n_0\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => p_14_out
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_14_out,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => p_13_out
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_13_out,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0\,
      O => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1_n_0\,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      O => p_11_out
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_11_out,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_10_out
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_10_out,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      O => p_9_out
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(5),
      I4 => Q,
      O => \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_9_out,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[8]\(0),
      O => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1_n_0\,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(6),
      I1 => \bus2ip_addr_i_reg[8]\(4),
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => Q,
      I4 => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\,
      O => p_7_out
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(0),
      O => \^gen_bkend_ce_registers[8].ce_out_i_reg[8]_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_7_out,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => \bus2ip_addr_i_reg[8]\(1),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      O => p_6_out
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_6_out,
      Q => p_8_in,
      R => cs_ce_clr
    );
\ILR_GEN.ilr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_8_in,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => bus2ip_wrce(1)
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\
    );
\REG_GEN[0].IMR_FAST_MODE_GEN.imr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_9_in,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => bus2ip_wrce(2)
    );
\REG_GEN[0].ier[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_15_in,
      O => \REG_GEN[1].ier_reg[1]\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in46_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in43_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in37_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in34_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in73_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in70_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in67_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in64_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in61_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in58_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in55_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in49_in,
      I1 => p_14_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\
    );
\SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\,
      O => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\
    );
\SIE_GEN.SIE_BIT_GEN[10].sie[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(10),
      I3 => s_axi_aresetn,
      I4 => p_0_in276_in,
      O => \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\
    );
\SIE_GEN.SIE_BIT_GEN[11].sie[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(11),
      I3 => s_axi_aresetn,
      I4 => p_0_in265_in,
      O => \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\
    );
\SIE_GEN.SIE_BIT_GEN[12].sie[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(12),
      I3 => s_axi_aresetn,
      I4 => p_0_in254_in,
      O => \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\
    );
\SIE_GEN.SIE_BIT_GEN[13].sie[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(13),
      I3 => s_axi_aresetn,
      I4 => p_0_in243_in,
      O => \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\
    );
\SIE_GEN.SIE_BIT_GEN[14].sie[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(14),
      I3 => s_axi_aresetn,
      I4 => p_0_in232_in,
      O => \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\
    );
\SIE_GEN.SIE_BIT_GEN[15].sie[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(15),
      I3 => s_axi_aresetn,
      I4 => p_0_in221_in,
      O => \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\
    );
\SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in375_in,
      O => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\
    );
\SIE_GEN.SIE_BIT_GEN[2].sie[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(2),
      I3 => s_axi_aresetn,
      I4 => p_0_in364_in,
      O => \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\
    );
\SIE_GEN.SIE_BIT_GEN[3].sie[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(3),
      I3 => s_axi_aresetn,
      I4 => p_0_in353_in,
      O => \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\
    );
\SIE_GEN.SIE_BIT_GEN[4].sie[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(4),
      I3 => s_axi_aresetn,
      I4 => p_0_in342_in,
      O => \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\
    );
\SIE_GEN.SIE_BIT_GEN[5].sie[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(5),
      I3 => s_axi_aresetn,
      I4 => p_0_in331_in,
      O => \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\
    );
\SIE_GEN.SIE_BIT_GEN[6].sie[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(6),
      I3 => s_axi_aresetn,
      I4 => p_0_in320_in,
      O => \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\
    );
\SIE_GEN.SIE_BIT_GEN[7].sie[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(7),
      I3 => s_axi_aresetn,
      I4 => p_0_in309_in,
      O => \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\
    );
\SIE_GEN.SIE_BIT_GEN[8].sie[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(8),
      I3 => s_axi_aresetn,
      I4 => p_0_in298_in,
      O => \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\
    );
\SIE_GEN.SIE_BIT_GEN[9].sie[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(9),
      I3 => s_axi_aresetn,
      I4 => p_0_in287_in,
      O => \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\
    );
ip2bus_rdack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ip2bus_wrack_int_d1_i_2_n_0,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I2 => ip2bus_rdack_int_d1,
      O => ip2bus_rdack_prev2
    );
ip2bus_rdack_int_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => ip2bus_wrack_int_d1_i_2_n_0,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => p_0_in20_out
    );
ip2bus_wrack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => ip2bus_wrack_int_d1_i_2_n_0,
      I2 => ip2bus_wrack_int_d1,
      O => ip2bus_wrack_prev2
    );
ip2bus_wrack_int_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I1 => ip2bus_wrack_int_d1_i_2_n_0,
      O => p_0_in2_out
    );
ip2bus_wrack_int_d1_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => ip2bus_wrack_int_d1_i_3_n_0,
      I1 => ip2bus_wrack_int_d1_i_4_n_0,
      I2 => ip2bus_wrack_int_d1_i_5_n_0,
      I3 => p_10_in,
      I4 => \^p_17_in\,
      I5 => p_8_in,
      O => ip2bus_wrack_int_d1_i_2_n_0
    );
ip2bus_wrack_int_d1_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => p_5_in,
      I2 => p_15_in,
      I3 => p_3_in,
      O => ip2bus_wrack_int_d1_i_3_n_0
    );
ip2bus_wrack_int_d1_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_13_in,
      I1 => p_12_in,
      I2 => p_14_in,
      I3 => p_2_in,
      O => ip2bus_wrack_int_d1_i_4_n_0
    );
ip2bus_wrack_int_d1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => p_9_in,
      I1 => p_16_in,
      I2 => p_11_in,
      I3 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\,
      I4 => p_7_in,
      I5 => p_4_in,
      O => ip2bus_wrack_int_d1_i_5_n_0
    );
\mer_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_10_in,
      I2 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I3 => \mer_int_reg[0]_1\,
      O => \mer_int_reg[0]\
    );
\mer_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I2 => p_10_in,
      I3 => p_0_in,
      O => \mer_int_reg[1]\
    );
ram_reg_0_15_0_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => bus2ip_wrce(0)
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \mer_int_reg[0]_0\,
      I1 => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\,
      I2 => \REG_GEN[0].isr_reg[0]\,
      I3 => \^s_axi_rdata_i_reg[5]\,
      I4 => \^s_axi_rdata_i_reg[5]_0\,
      I5 => \Douta_reg[15]\(0),
      O => D(0)
    );
\s_axi_rdata_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(10),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(10)
    );
\s_axi_rdata_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(11),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(11)
    );
\s_axi_rdata_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(12),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(12)
    );
\s_axi_rdata_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(13),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(13)
    );
\s_axi_rdata_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(14),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(14)
    );
\s_axi_rdata_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(15),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(15)
    );
\s_axi_rdata_i[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_7_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(5),
      I2 => \bus2ip_addr_i_reg[8]\(4),
      I3 => \bus2ip_addr_i_reg[8]\(6),
      I4 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      O => \^s_axi_rdata_i_reg[5]\
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FFFFFD00FD00"
    )
        port map (
      I0 => \IVR_GEN.ivr_reg[1]\,
      I1 => \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\,
      I2 => \REG_GEN[1].isr_reg[1]\,
      I3 => \^s_axi_rdata_i_reg[5]\,
      I4 => \^s_axi_rdata_i_reg[5]_0\,
      I5 => \Douta_reg[15]\(1),
      O => D(1)
    );
\s_axi_rdata_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \^s_axi_rdata_i_reg[5]_0\,
      I3 => \Douta_reg[15]\(2),
      O => D(2)
    );
\s_axi_rdata_i[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\,
      I1 => \^sie_gen.sie_bit_gen[0].sie_reg[0]\,
      I2 => \s_axi_rdata_i[31]_i_7_n_0\,
      O => \^s_axi_rdata_i_reg[5]_0\
    );
\s_axi_rdata_i[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_8_in,
      I1 => \^p_17_in\,
      I2 => p_10_in,
      I3 => \s_axi_rdata_i[31]_i_8_n_0\,
      I4 => p_15_in,
      O => \s_axi_rdata_i[31]_i_7_n_0\
    );
\s_axi_rdata_i[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => p_11_in,
      I1 => p_16_in,
      I2 => p_9_in,
      O => \s_axi_rdata_i[31]_i_8_n_0\
    );
\s_axi_rdata_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \REG_GEN[3].isr_reg[3]\,
      I1 => \ILR_GEN.ilr_reg[3]\,
      I2 => \^s_axi_rdata_i_reg[5]\,
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \Douta_reg[15]\(3),
      O => D(3)
    );
\s_axi_rdata_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0FFD0D0"
    )
        port map (
      I0 => \REG_GEN[4].isr_reg[4]\,
      I1 => \ILR_GEN.ilr_reg[4]\,
      I2 => \^s_axi_rdata_i_reg[5]\,
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \Douta_reg[15]\(4),
      O => D(4)
    );
\s_axi_rdata_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(5),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(5)
    );
\s_axi_rdata_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(6),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(6)
    );
\s_axi_rdata_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(7),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(7)
    );
\s_axi_rdata_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(8),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(8)
    );
\s_axi_rdata_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\,
      I1 => \^s_axi_rdata_i_reg[5]\,
      I2 => \Douta_reg[15]\(9),
      I3 => \^s_axi_rdata_i_reg[5]_0\,
      I4 => \ILR_GEN.ilr_reg[5]\,
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_shared_ram_ivar\ is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rdata_i_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ILR_GEN.ilr_reg[5]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end \top_axi_pcie_intc_0_0_shared_ram_ivar\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_shared_ram_ivar\ is
  signal Douta : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal Doutb0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_reg_0_15_0_0_n_1 : STD_LOGIC;
  signal ram_reg_0_15_10_10_n_1 : STD_LOGIC;
  signal ram_reg_0_15_11_11_n_1 : STD_LOGIC;
  signal ram_reg_0_15_12_12_n_1 : STD_LOGIC;
  signal ram_reg_0_15_13_13_n_1 : STD_LOGIC;
  signal ram_reg_0_15_14_14_n_1 : STD_LOGIC;
  signal ram_reg_0_15_15_15_n_1 : STD_LOGIC;
  signal ram_reg_0_15_16_16_n_1 : STD_LOGIC;
  signal ram_reg_0_15_17_17_n_1 : STD_LOGIC;
  signal ram_reg_0_15_18_18_n_1 : STD_LOGIC;
  signal ram_reg_0_15_19_19_n_1 : STD_LOGIC;
  signal ram_reg_0_15_1_1_n_1 : STD_LOGIC;
  signal ram_reg_0_15_20_20_n_1 : STD_LOGIC;
  signal ram_reg_0_15_21_21_n_1 : STD_LOGIC;
  signal ram_reg_0_15_22_22_n_1 : STD_LOGIC;
  signal ram_reg_0_15_23_23_n_1 : STD_LOGIC;
  signal ram_reg_0_15_24_24_n_1 : STD_LOGIC;
  signal ram_reg_0_15_25_25_n_1 : STD_LOGIC;
  signal ram_reg_0_15_26_26_n_1 : STD_LOGIC;
  signal ram_reg_0_15_27_27_n_1 : STD_LOGIC;
  signal ram_reg_0_15_28_28_n_1 : STD_LOGIC;
  signal ram_reg_0_15_29_29_n_1 : STD_LOGIC;
  signal ram_reg_0_15_2_2_n_1 : STD_LOGIC;
  signal ram_reg_0_15_30_30_n_1 : STD_LOGIC;
  signal ram_reg_0_15_31_31_n_1 : STD_LOGIC;
  signal ram_reg_0_15_3_3_n_1 : STD_LOGIC;
  signal ram_reg_0_15_4_4_n_1 : STD_LOGIC;
  signal ram_reg_0_15_5_5_n_1 : STD_LOGIC;
  signal ram_reg_0_15_6_6_n_1 : STD_LOGIC;
  signal ram_reg_0_15_7_7_n_1 : STD_LOGIC;
  signal ram_reg_0_15_8_8_n_1 : STD_LOGIC;
  signal ram_reg_0_15_9_9_n_1 : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_10_10 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_11_11 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_12_12 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_13_13 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_14_14 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_15_15 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_16_16 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_17_17 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_18_18 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_19_19 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_1_1 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_20_20 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_21_21 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_22_22 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_23_23 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_24_24 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_25_25 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_26_26 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_27_27 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_28_28 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_29_29 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_2_2 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_30_30 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_31_31 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_3_3 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_4_4 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_5_5 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_6_6 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_7_7 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_8_8 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_9_9 : label is "RAM16X1D";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi_rdata_i[16]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[17]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[18]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[19]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[21]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[22]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[23]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[24]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[25]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[27]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[28]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[29]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[30]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_2\ : label is "soft_lutpair37";
begin
\Douta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_0_0_n_1,
      Q => \s_axi_rdata_i_reg[15]\(0),
      R => '0'
    );
\Douta_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_10_10_n_1,
      Q => \s_axi_rdata_i_reg[15]\(10),
      R => '0'
    );
\Douta_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_11_11_n_1,
      Q => \s_axi_rdata_i_reg[15]\(11),
      R => '0'
    );
\Douta_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_12_12_n_1,
      Q => \s_axi_rdata_i_reg[15]\(12),
      R => '0'
    );
\Douta_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_13_13_n_1,
      Q => \s_axi_rdata_i_reg[15]\(13),
      R => '0'
    );
\Douta_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_14_14_n_1,
      Q => \s_axi_rdata_i_reg[15]\(14),
      R => '0'
    );
\Douta_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_15_15_n_1,
      Q => \s_axi_rdata_i_reg[15]\(15),
      R => '0'
    );
\Douta_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_16_16_n_1,
      Q => Douta(16),
      R => '0'
    );
\Douta_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_17_17_n_1,
      Q => Douta(17),
      R => '0'
    );
\Douta_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_18_18_n_1,
      Q => Douta(18),
      R => '0'
    );
\Douta_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_19_19_n_1,
      Q => Douta(19),
      R => '0'
    );
\Douta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_1_1_n_1,
      Q => \s_axi_rdata_i_reg[15]\(1),
      R => '0'
    );
\Douta_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_20_20_n_1,
      Q => Douta(20),
      R => '0'
    );
\Douta_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_21_21_n_1,
      Q => Douta(21),
      R => '0'
    );
\Douta_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_22_22_n_1,
      Q => Douta(22),
      R => '0'
    );
\Douta_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_23_23_n_1,
      Q => Douta(23),
      R => '0'
    );
\Douta_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_24_24_n_1,
      Q => Douta(24),
      R => '0'
    );
\Douta_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_25_25_n_1,
      Q => Douta(25),
      R => '0'
    );
\Douta_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_26_26_n_1,
      Q => Douta(26),
      R => '0'
    );
\Douta_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_27_27_n_1,
      Q => Douta(27),
      R => '0'
    );
\Douta_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_28_28_n_1,
      Q => Douta(28),
      R => '0'
    );
\Douta_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_29_29_n_1,
      Q => Douta(29),
      R => '0'
    );
\Douta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_2_2_n_1,
      Q => \s_axi_rdata_i_reg[15]\(2),
      R => '0'
    );
\Douta_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_30_30_n_1,
      Q => Douta(30),
      R => '0'
    );
\Douta_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_31_31_n_1,
      Q => Douta(31),
      R => '0'
    );
\Douta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_3_3_n_1,
      Q => \s_axi_rdata_i_reg[15]\(3),
      R => '0'
    );
\Douta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_4_4_n_1,
      Q => \s_axi_rdata_i_reg[15]\(4),
      R => '0'
    );
\Douta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_5_5_n_1,
      Q => \s_axi_rdata_i_reg[15]\(5),
      R => '0'
    );
\Douta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_6_6_n_1,
      Q => \s_axi_rdata_i_reg[15]\(6),
      R => '0'
    );
\Douta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_7_7_n_1,
      Q => \s_axi_rdata_i_reg[15]\(7),
      R => '0'
    );
\Douta_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_8_8_n_1,
      Q => \s_axi_rdata_i_reg[15]\(8),
      R => '0'
    );
\Douta_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ram_reg_0_15_9_9_n_1,
      Q => \s_axi_rdata_i_reg[15]\(9),
      R => '0'
    );
\Doutb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(0),
      Q => interrupt_address(0),
      R => '0'
    );
\Doutb_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(10),
      Q => interrupt_address(10),
      R => '0'
    );
\Doutb_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(11),
      Q => interrupt_address(11),
      R => '0'
    );
\Doutb_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(12),
      Q => interrupt_address(12),
      R => '0'
    );
\Doutb_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(13),
      Q => interrupt_address(13),
      R => '0'
    );
\Doutb_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(14),
      Q => interrupt_address(14),
      R => '0'
    );
\Doutb_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(15),
      Q => interrupt_address(15),
      R => '0'
    );
\Doutb_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(16),
      Q => interrupt_address(16),
      R => '0'
    );
\Doutb_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(17),
      Q => interrupt_address(17),
      R => '0'
    );
\Doutb_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(18),
      Q => interrupt_address(18),
      R => '0'
    );
\Doutb_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(19),
      Q => interrupt_address(19),
      R => '0'
    );
\Doutb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(1),
      Q => interrupt_address(1),
      R => '0'
    );
\Doutb_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(20),
      Q => interrupt_address(20),
      R => '0'
    );
\Doutb_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(21),
      Q => interrupt_address(21),
      R => '0'
    );
\Doutb_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(22),
      Q => interrupt_address(22),
      R => '0'
    );
\Doutb_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(23),
      Q => interrupt_address(23),
      R => '0'
    );
\Doutb_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(24),
      Q => interrupt_address(24),
      R => '0'
    );
\Doutb_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(25),
      Q => interrupt_address(25),
      R => '0'
    );
\Doutb_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(26),
      Q => interrupt_address(26),
      R => '0'
    );
\Doutb_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(27),
      Q => interrupt_address(27),
      R => '0'
    );
\Doutb_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(28),
      Q => interrupt_address(28),
      R => '0'
    );
\Doutb_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(29),
      Q => interrupt_address(29),
      R => '0'
    );
\Doutb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(2),
      Q => interrupt_address(2),
      R => '0'
    );
\Doutb_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(30),
      Q => interrupt_address(30),
      R => '0'
    );
\Doutb_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(31),
      Q => interrupt_address(31),
      R => '0'
    );
\Doutb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(3),
      Q => interrupt_address(3),
      R => '0'
    );
\Doutb_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(4),
      Q => interrupt_address(4),
      R => '0'
    );
\Doutb_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(5),
      Q => interrupt_address(5),
      R => '0'
    );
\Doutb_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(6),
      Q => interrupt_address(6),
      R => '0'
    );
\Doutb_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(7),
      Q => interrupt_address(7),
      R => '0'
    );
\Doutb_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(8),
      Q => interrupt_address(8),
      R => '0'
    );
\Doutb_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Doutb0(9),
      Q => interrupt_address(9),
      R => '0'
    );
ram_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(0),
      DPO => Doutb0(0),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_0_0_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_10_10: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(10),
      DPO => Doutb0(10),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_10_10_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_11_11: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(11),
      DPO => Doutb0(11),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_11_11_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_12_12: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(12),
      DPO => Doutb0(12),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_12_12_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_13_13: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(13),
      DPO => Doutb0(13),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_13_13_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_14_14: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(14),
      DPO => Doutb0(14),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_14_14_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_15_15: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(15),
      DPO => Doutb0(15),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_15_15_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_16_16: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(16),
      DPO => Doutb0(16),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_16_16_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_17_17: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(17),
      DPO => Doutb0(17),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_17_17_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_18_18: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(18),
      DPO => Doutb0(18),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_18_18_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_19_19: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(19),
      DPO => Doutb0(19),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_19_19_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(1),
      DPO => Doutb0(1),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_1_1_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_20_20: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(20),
      DPO => Doutb0(20),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_20_20_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_21_21: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(21),
      DPO => Doutb0(21),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_21_21_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_22_22: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(22),
      DPO => Doutb0(22),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_22_22_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_23_23: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(23),
      DPO => Doutb0(23),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_23_23_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_24_24: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(24),
      DPO => Doutb0(24),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_24_24_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_25_25: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(25),
      DPO => Doutb0(25),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_25_25_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_26_26: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(26),
      DPO => Doutb0(26),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_26_26_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_27_27: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(27),
      DPO => Doutb0(27),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_27_27_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_28_28: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(28),
      DPO => Doutb0(28),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_28_28_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_29_29: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(29),
      DPO => Doutb0(29),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_29_29_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(2),
      DPO => Doutb0(2),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_2_2_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_30_30: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(30),
      DPO => Doutb0(30),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_30_30_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_31_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(31),
      DPO => Doutb0(31),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_31_31_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(3),
      DPO => Doutb0(3),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_3_3_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(4),
      DPO => Doutb0(4),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_4_4_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(5),
      DPO => Doutb0(5),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_5_5_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(6),
      DPO => Doutb0(6),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_6_6_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(7),
      DPO => Doutb0(7),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_7_7_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_8_8: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(8),
      DPO => Doutb0(8),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_8_8_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
ram_reg_0_15_9_9: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \bus2ip_addr_i_reg[5]\(0),
      A1 => \bus2ip_addr_i_reg[5]\(1),
      A2 => \bus2ip_addr_i_reg[5]\(2),
      A3 => \bus2ip_addr_i_reg[5]\(3),
      A4 => '0',
      D => s_axi_wdata(9),
      DPO => Doutb0(9),
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => '0',
      SPO => ram_reg_0_15_9_9_n_1,
      WCLK => s_axi_aclk,
      WE => bus2ip_wrce(0)
    );
\s_axi_rdata_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(16),
      O => D(0)
    );
\s_axi_rdata_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(17),
      O => D(1)
    );
\s_axi_rdata_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(18),
      O => D(2)
    );
\s_axi_rdata_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(19),
      O => D(3)
    );
\s_axi_rdata_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(20),
      O => D(4)
    );
\s_axi_rdata_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(21),
      O => D(5)
    );
\s_axi_rdata_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(22),
      O => D(6)
    );
\s_axi_rdata_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(23),
      O => D(7)
    );
\s_axi_rdata_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(24),
      O => D(8)
    );
\s_axi_rdata_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(25),
      O => D(9)
    );
\s_axi_rdata_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(26),
      O => D(10)
    );
\s_axi_rdata_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(27),
      O => D(11)
    );
\s_axi_rdata_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(28),
      O => D(12)
    );
\s_axi_rdata_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(29),
      O => D(13)
    );
\s_axi_rdata_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(30),
      O => D(14)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ILR_GEN.ilr_reg[5]\,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      I2 => Douta(31),
      O => D(15)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_intc_core\ is
  port (
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in73_in : out STD_LOGIC;
    p_0_in70_in : out STD_LOGIC;
    p_0_in67_in : out STD_LOGIC;
    p_0_in64_in : out STD_LOGIC;
    p_0_in61_in : out STD_LOGIC;
    p_0_in58_in : out STD_LOGIC;
    p_0_in55_in : out STD_LOGIC;
    p_0_in52_in : out STD_LOGIC;
    p_0_in49_in : out STD_LOGIC;
    p_0_in46_in : out STD_LOGIC;
    p_0_in43_in : out STD_LOGIC;
    p_0_in40_in : out STD_LOGIC;
    p_0_in37_in : out STD_LOGIC;
    p_0_in34_in : out STD_LOGIC;
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0\ : out STD_LOGIC;
    p_0_in148_in : out STD_LOGIC;
    p_0_in145_in : out STD_LOGIC;
    p_0_in142_in : out STD_LOGIC;
    irq : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]_0\ : out STD_LOGIC;
    p_0_in375_in : out STD_LOGIC;
    p_0_in364_in : out STD_LOGIC;
    p_0_in353_in : out STD_LOGIC;
    p_0_in342_in : out STD_LOGIC;
    p_0_in331_in : out STD_LOGIC;
    p_0_in320_in : out STD_LOGIC;
    p_0_in309_in : out STD_LOGIC;
    p_0_in298_in : out STD_LOGIC;
    p_0_in287_in : out STD_LOGIC;
    p_0_in276_in : out STD_LOGIC;
    p_0_in265_in : out STD_LOGIC;
    p_0_in254_in : out STD_LOGIC;
    p_0_in243_in : out STD_LOGIC;
    p_0_in232_in : out STD_LOGIC;
    p_0_in221_in : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]_1\ : out STD_LOGIC;
    p_0_in140_in : out STD_LOGIC;
    p_0_in138_in : out STD_LOGIC;
    \REG_GEN[3].ier_reg[3]_0\ : out STD_LOGIC;
    p_0_in134_in : out STD_LOGIC;
    p_0_in132_in : out STD_LOGIC;
    \REG_GEN[6].ier_reg[6]_0\ : out STD_LOGIC;
    p_0_in128_in : out STD_LOGIC;
    p_0_in126_in : out STD_LOGIC;
    \REG_GEN[9].ier_reg[9]_0\ : out STD_LOGIC;
    p_0_in122_in : out STD_LOGIC;
    p_0_in120_in : out STD_LOGIC;
    \REG_GEN[12].ier_reg[12]_0\ : out STD_LOGIC;
    p_0_in116_in : out STD_LOGIC;
    p_0_in114_in : out STD_LOGIC;
    \REG_GEN[15].ier_reg[15]_0\ : out STD_LOGIC;
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0\ : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    p_1_in149_in : out STD_LOGIC;
    p_1_in146_in : out STD_LOGIC;
    p_1_in143_in : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rdata_i_reg[31]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_rdata_i_reg[15]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_rdata_i_reg[14]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[13]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[12]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[11]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[10]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[9]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[8]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[7]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[6]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : out STD_LOGIC;
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    Bus_RNW_reg_reg_2 : in STD_LOGIC;
    Bus_RNW_reg_reg_3 : in STD_LOGIC;
    Bus_RNW_reg_reg_4 : in STD_LOGIC;
    Bus_RNW_reg_reg_5 : in STD_LOGIC;
    Bus_RNW_reg_reg_6 : in STD_LOGIC;
    Bus_RNW_reg_reg_7 : in STD_LOGIC;
    Bus_RNW_reg_reg_8 : in STD_LOGIC;
    Bus_RNW_reg_reg_9 : in STD_LOGIC;
    Bus_RNW_reg_reg_10 : in STD_LOGIC;
    Bus_RNW_reg_reg_11 : in STD_LOGIC;
    Bus_RNW_reg_reg_12 : in STD_LOGIC;
    Bus_RNW_reg_reg_13 : in STD_LOGIC;
    Bus_RNW_reg_reg_14 : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0\ : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_15 : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    Bus_RNW_reg_reg_16 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[7]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[5]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ : in STD_LOGIC;
    \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0\ : in STD_LOGIC;
    \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0\ : in STD_LOGIC;
    \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0\ : in STD_LOGIC;
    \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0\ : in STD_LOGIC;
    \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0\ : in STD_LOGIC;
    \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0\ : in STD_LOGIC;
    \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0\ : in STD_LOGIC;
    \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0\ : in STD_LOGIC;
    \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ : in STD_LOGIC;
    \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0\ : in STD_LOGIC;
    \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ : in STD_LOGIC;
    \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0\ : in STD_LOGIC;
    \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0\ : in STD_LOGIC;
    \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0\ : in STD_LOGIC;
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    \bus2ip_addr_i_reg[4]\ : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end \top_axi_pcie_intc_0_0_intc_core\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_intc_core\ is
  signal \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\ : STD_LOGIC;
  signal \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : signal is "true";
  signal \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : STD_LOGIC;
  attribute async_reg of \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : signal is "true";
  signal \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : STD_LOGIC;
  attribute async_reg of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : signal is "true";
  signal \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : STD_LOGIC;
  attribute async_reg of \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : signal is "true";
  signal \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : STD_LOGIC;
  attribute async_reg of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : signal is "true";
  signal \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : STD_LOGIC;
  attribute async_reg of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : signal is "true";
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : STD_LOGIC;
  attribute async_reg of \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1]\ : signal is "true";
  signal \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[10]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[11]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[12]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[13]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[14]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[15]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[2]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[3]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[4]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[5]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[6]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[7]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[8]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[9]_i_1_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1_n_0\ : STD_LOGIC;
  signal \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[0]_0\ : STD_LOGIC;
  signal \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \IVR_GEN.ivr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_6_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_7_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_6_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_7_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_2_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_3_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_4_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_5_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[2]_i_6_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[3]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[4]_i_3_n_0\ : STD_LOGIC;
  signal Irq_i : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0\ : STD_LOGIC;
  signal \^reg_gen[0].iar_fast_mode_gen.iar_reg[0]_0\ : STD_LOGIC;
  signal \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\ : STD_LOGIC;
  signal \^reg_gen[0].ier_reg[0]_0\ : STD_LOGIC;
  signal \^reg_gen[0].ier_reg[0]_1\ : STD_LOGIC;
  signal \REG_GEN[0].ier_reg_n_0_[0]\ : STD_LOGIC;
  signal \REG_GEN[0].isr[0]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[10].isr[10]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[11].isr[11]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[12].ier_reg[12]_0\ : STD_LOGIC;
  signal \REG_GEN[12].isr[12]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[13].isr[13]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[14].isr[14]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[15].iar_fast_mode_gen.iar_reg[15]_0\ : STD_LOGIC;
  signal \^reg_gen[15].ier_reg[15]_0\ : STD_LOGIC;
  signal \REG_GEN[15].isr[15]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\ : STD_LOGIC;
  signal \REG_GEN[1].isr[1]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[2].isr[2]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[3].ier_reg[3]_0\ : STD_LOGIC;
  signal \REG_GEN[3].isr[3]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[4].isr[4]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[5].isr[5]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[6].ier_reg[6]_0\ : STD_LOGIC;
  signal \REG_GEN[6].isr[6]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[7].isr[7]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\ : STD_LOGIC;
  signal \REG_GEN[8].isr[8]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[9].ier_reg[9]_0\ : STD_LOGIC;
  signal \REG_GEN[9].isr[9]_i_1_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_or : STD_LOGIC;
  signal ack_or_i : STD_LOGIC;
  signal ack_or_i_2_n_0 : STD_LOGIC;
  signal ack_or_i_3_n_0 : STD_LOGIC;
  signal ack_or_i_4_n_0 : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_ack : STD_LOGIC;
  signal first_ack_active : STD_LOGIC;
  signal idle_and_irq : STD_LOGIC;
  signal idle_and_irq_d1 : STD_LOGIC;
  signal ilr : STD_LOGIC_VECTOR ( 5 to 5 );
  signal in_idle : STD_LOGIC;
  signal intr_d1 : STD_LOGIC;
  signal intr_ff : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute async_reg of intr_ff : signal is "true";
  signal ipr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal irq_dis : STD_LOGIC;
  signal irq_dis_d1 : STD_LOGIC;
  signal irq_dis_sample : STD_LOGIC;
  signal irq_dis_sample_i : STD_LOGIC;
  signal irq_gen : STD_LOGIC;
  signal irq_gen_i_10_n_0 : STD_LOGIC;
  signal irq_gen_i_11_n_0 : STD_LOGIC;
  signal irq_gen_i_12_n_0 : STD_LOGIC;
  signal irq_gen_i_13_n_0 : STD_LOGIC;
  signal irq_gen_i_17_n_0 : STD_LOGIC;
  signal irq_gen_i_20_n_0 : STD_LOGIC;
  signal irq_gen_i_21_n_0 : STD_LOGIC;
  signal irq_gen_i_22_n_0 : STD_LOGIC;
  signal irq_gen_i_2_n_0 : STD_LOGIC;
  signal irq_gen_i_31_n_0 : STD_LOGIC;
  signal irq_gen_i_32_n_0 : STD_LOGIC;
  signal irq_gen_i_33_n_0 : STD_LOGIC;
  signal irq_gen_i_34_n_0 : STD_LOGIC;
  signal irq_gen_i_35_n_0 : STD_LOGIC;
  signal irq_gen_i_36_n_0 : STD_LOGIC;
  signal irq_gen_i_39_n_0 : STD_LOGIC;
  signal irq_gen_i_3_n_0 : STD_LOGIC;
  signal irq_gen_i_40_n_0 : STD_LOGIC;
  signal irq_gen_i_41_n_0 : STD_LOGIC;
  signal irq_gen_i_42_n_0 : STD_LOGIC;
  signal irq_gen_i_43_n_0 : STD_LOGIC;
  signal irq_gen_i_44_n_0 : STD_LOGIC;
  signal irq_gen_i_45_n_0 : STD_LOGIC;
  signal irq_gen_i_46_n_0 : STD_LOGIC;
  signal irq_gen_i_47_n_0 : STD_LOGIC;
  signal irq_gen_i_48_n_0 : STD_LOGIC;
  signal irq_gen_i_49_n_0 : STD_LOGIC;
  signal irq_gen_i_4_n_0 : STD_LOGIC;
  signal irq_gen_i_50_n_0 : STD_LOGIC;
  signal irq_gen_i_51_n_0 : STD_LOGIC;
  signal irq_gen_i_52_n_0 : STD_LOGIC;
  signal irq_gen_i_53_n_0 : STD_LOGIC;
  signal irq_gen_i_54_n_0 : STD_LOGIC;
  signal irq_gen_i_55_n_0 : STD_LOGIC;
  signal irq_gen_i_56_n_0 : STD_LOGIC;
  signal irq_gen_i_57_n_0 : STD_LOGIC;
  signal irq_gen_i_58_n_0 : STD_LOGIC;
  signal irq_gen_i_59_n_0 : STD_LOGIC;
  signal irq_gen_i_5_n_0 : STD_LOGIC;
  signal irq_gen_i_60_n_0 : STD_LOGIC;
  signal irq_gen_i_61_n_0 : STD_LOGIC;
  signal irq_gen_i_62_n_0 : STD_LOGIC;
  signal irq_gen_i_6_n_0 : STD_LOGIC;
  signal irq_gen_i_8_n_0 : STD_LOGIC;
  signal irq_gen_i_9_n_0 : STD_LOGIC;
  signal irq_gen_int1086_in : STD_LOGIC;
  signal irq_gen_int1288_in : STD_LOGIC;
  signal irq_gen_int1490_in : STD_LOGIC;
  signal irq_gen_int167_out : STD_LOGIC;
  signal irq_gen_int1692_in : STD_LOGIC;
  signal irq_gen_int1894_in : STD_LOGIC;
  signal irq_gen_int2096_in : STD_LOGIC;
  signal irq_gen_int2298_in : STD_LOGIC;
  signal irq_gen_int24100_in : STD_LOGIC;
  signal irq_gen_int26102_in : STD_LOGIC;
  signal irq_gen_int278_in : STD_LOGIC;
  signal irq_gen_int28104_in : STD_LOGIC;
  signal irq_gen_int30106_in : STD_LOGIC;
  signal irq_gen_int30107_in : STD_LOGIC;
  signal irq_gen_int480_in : STD_LOGIC;
  signal irq_gen_int682_in : STD_LOGIC;
  signal irq_gen_int884_in : STD_LOGIC;
  signal irq_gen_reg_i_14_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_15_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_16_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_18_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_19_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_23_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_24_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_25_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_26_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_27_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_28_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_29_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_30_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_37_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_38_n_3 : STD_LOGIC;
  signal irq_gen_reg_i_7_n_3 : STD_LOGIC;
  signal ivar_index_axi_clk : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ivar_index_sample_en : STD_LOGIC;
  signal ivar_index_sample_en_i : STD_LOGIC;
  signal ivr_in : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \^p_0_in\ : STD_LOGIC;
  signal p_0_in109_in : STD_LOGIC;
  signal p_0_in112_in : STD_LOGIC;
  signal \^p_0_in114_in\ : STD_LOGIC;
  signal p_0_in115_in : STD_LOGIC;
  signal \^p_0_in116_in\ : STD_LOGIC;
  signal p_0_in118_in : STD_LOGIC;
  signal \^p_0_in120_in\ : STD_LOGIC;
  signal p_0_in121_in : STD_LOGIC;
  signal \^p_0_in122_in\ : STD_LOGIC;
  signal p_0_in124_in : STD_LOGIC;
  signal \^p_0_in126_in\ : STD_LOGIC;
  signal p_0_in127_in : STD_LOGIC;
  signal \^p_0_in128_in\ : STD_LOGIC;
  signal p_0_in130_in : STD_LOGIC;
  signal \^p_0_in132_in\ : STD_LOGIC;
  signal p_0_in133_in : STD_LOGIC;
  signal \^p_0_in134_in\ : STD_LOGIC;
  signal p_0_in136_in : STD_LOGIC;
  signal \^p_0_in138_in\ : STD_LOGIC;
  signal p_0_in139_in : STD_LOGIC;
  signal \^p_0_in140_in\ : STD_LOGIC;
  signal \^p_0_in142_in\ : STD_LOGIC;
  signal \^p_0_in145_in\ : STD_LOGIC;
  signal \^p_0_in148_in\ : STD_LOGIC;
  signal p_0_in151_in : STD_LOGIC;
  signal \^p_0_in221_in\ : STD_LOGIC;
  signal \^p_0_in232_in\ : STD_LOGIC;
  signal \^p_0_in243_in\ : STD_LOGIC;
  signal \^p_0_in254_in\ : STD_LOGIC;
  signal \^p_0_in265_in\ : STD_LOGIC;
  signal \^p_0_in276_in\ : STD_LOGIC;
  signal \^p_0_in287_in\ : STD_LOGIC;
  signal \^p_0_in298_in\ : STD_LOGIC;
  signal \^p_0_in309_in\ : STD_LOGIC;
  signal \^p_0_in320_in\ : STD_LOGIC;
  signal \^p_0_in331_in\ : STD_LOGIC;
  signal \^p_0_in342_in\ : STD_LOGIC;
  signal \^p_0_in34_in\ : STD_LOGIC;
  signal \^p_0_in353_in\ : STD_LOGIC;
  signal \^p_0_in364_in\ : STD_LOGIC;
  signal \^p_0_in375_in\ : STD_LOGIC;
  signal \^p_0_in37_in\ : STD_LOGIC;
  signal \^p_0_in40_in\ : STD_LOGIC;
  signal \^p_0_in43_in\ : STD_LOGIC;
  signal \^p_0_in46_in\ : STD_LOGIC;
  signal \^p_0_in49_in\ : STD_LOGIC;
  signal \^p_0_in52_in\ : STD_LOGIC;
  signal \^p_0_in55_in\ : STD_LOGIC;
  signal \^p_0_in58_in\ : STD_LOGIC;
  signal \^p_0_in61_in\ : STD_LOGIC;
  signal \^p_0_in64_in\ : STD_LOGIC;
  signal \^p_0_in67_in\ : STD_LOGIC;
  signal \^p_0_in70_in\ : STD_LOGIC;
  signal \^p_0_in73_in\ : STD_LOGIC;
  signal p_104_out : STD_LOGIC;
  signal p_105_out : STD_LOGIC;
  signal p_106_out : STD_LOGIC;
  signal p_107_out : STD_LOGIC;
  signal p_108_out : STD_LOGIC;
  signal p_109_out : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_110_out : STD_LOGIC;
  signal p_111_out : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_1_in110_in : STD_LOGIC;
  signal p_1_in113_in : STD_LOGIC;
  signal p_1_in116_in : STD_LOGIC;
  signal p_1_in119_in : STD_LOGIC;
  signal p_1_in122_in : STD_LOGIC;
  signal p_1_in125_in : STD_LOGIC;
  signal p_1_in128_in : STD_LOGIC;
  signal p_1_in131_in : STD_LOGIC;
  signal p_1_in134_in : STD_LOGIC;
  signal p_1_in137_in : STD_LOGIC;
  signal p_1_in140_in : STD_LOGIC;
  signal \^p_1_in143_in\ : STD_LOGIC;
  signal \^p_1_in146_in\ : STD_LOGIC;
  signal \^p_1_in149_in\ : STD_LOGIC;
  signal p_1_in152_in : STD_LOGIC;
  signal \p_1_out__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute async_reg of \p_1_out__0\ : signal is "true";
  signal \p_1_out__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute async_reg of \p_1_out__1\ : signal is "true";
  signal \p_1_out__2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute async_reg of \p_1_out__2\ : signal is "true";
  signal \p_1_out__3\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute async_reg of \p_1_out__3\ : signal is "true";
  signal \p_1_out__4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute async_reg of \p_1_out__4\ : signal is "true";
  signal \p_1_out__5\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute async_reg of \p_1_out__5\ : signal is "true";
  signal \p_1_out__6\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute async_reg of \p_1_out__6\ : signal is "true";
  signal p_212_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_35_out : STD_LOGIC;
  signal p_39_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_43_out : STD_LOGIC;
  signal p_47_out : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_51_out : STD_LOGIC;
  signal p_55_out : STD_LOGIC;
  signal p_59_out : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_63_out : STD_LOGIC;
  signal p_67_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_71_out : STD_LOGIC;
  signal p_75_out : STD_LOGIC;
  signal p_79_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_83_out : STD_LOGIC;
  signal p_87_out : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_91_out : STD_LOGIC;
  signal p_95_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[31]\ : STD_LOGIC;
  signal second_ack : STD_LOGIC;
  signal second_ack_sync_d1 : STD_LOGIC;
  signal second_ack_sync_d2 : STD_LOGIC;
  signal NLW_irq_gen_reg_i_14_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_14_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_15_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_15_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_16_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_16_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_18_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_18_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_19_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_19_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_23_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_23_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_24_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_24_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_25_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_25_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_26_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_26_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_27_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_27_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_28_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_28_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_29_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_29_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_30_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_30_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_37_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_37_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_38_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_38_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_irq_gen_reg_i_7_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_irq_gen_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1\ : label is "soft_lutpair59";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[10]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[11]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[12]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[13]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[14]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[15]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[5]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[7]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[8]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[9]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_d1_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_5\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[1]_i_7\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_4\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \IVR_GEN.ivr[2]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of irq_gen_i_13 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of irq_gen_i_22 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[11]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[12]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[13]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[14]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[15]_i_4\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[5]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[6]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[7]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[8]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[9]_i_3\ : label is "soft_lutpair51";
begin
  \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0\ <= \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[0]_0\;
  \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0\(4 downto 0) <= \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(4 downto 0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\ <= \^reg_gen[0].iar_fast_mode_gen.iar_reg[0]_0\;
  \REG_GEN[0].ier_reg[0]_0\ <= \^reg_gen[0].ier_reg[0]_0\;
  \REG_GEN[0].ier_reg[0]_1\ <= \^reg_gen[0].ier_reg[0]_1\;
  \REG_GEN[12].ier_reg[12]_0\ <= \^reg_gen[12].ier_reg[12]_0\;
  \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0\ <= \^reg_gen[15].iar_fast_mode_gen.iar_reg[15]_0\;
  \REG_GEN[15].ier_reg[15]_0\ <= \^reg_gen[15].ier_reg[15]_0\;
  \REG_GEN[3].ier_reg[3]_0\ <= \^reg_gen[3].ier_reg[3]_0\;
  \REG_GEN[6].ier_reg[6]_0\ <= \^reg_gen[6].ier_reg[6]_0\;
  \REG_GEN[9].ier_reg[9]_0\ <= \^reg_gen[9].ier_reg[9]_0\;
  SR(0) <= \^sr\(0);
  p_0_in <= \^p_0_in\;
  p_0_in114_in <= \^p_0_in114_in\;
  p_0_in116_in <= \^p_0_in116_in\;
  p_0_in120_in <= \^p_0_in120_in\;
  p_0_in122_in <= \^p_0_in122_in\;
  p_0_in126_in <= \^p_0_in126_in\;
  p_0_in128_in <= \^p_0_in128_in\;
  p_0_in132_in <= \^p_0_in132_in\;
  p_0_in134_in <= \^p_0_in134_in\;
  p_0_in138_in <= \^p_0_in138_in\;
  p_0_in140_in <= \^p_0_in140_in\;
  p_0_in142_in <= \^p_0_in142_in\;
  p_0_in145_in <= \^p_0_in145_in\;
  p_0_in148_in <= \^p_0_in148_in\;
  p_0_in221_in <= \^p_0_in221_in\;
  p_0_in232_in <= \^p_0_in232_in\;
  p_0_in243_in <= \^p_0_in243_in\;
  p_0_in254_in <= \^p_0_in254_in\;
  p_0_in265_in <= \^p_0_in265_in\;
  p_0_in276_in <= \^p_0_in276_in\;
  p_0_in287_in <= \^p_0_in287_in\;
  p_0_in298_in <= \^p_0_in298_in\;
  p_0_in309_in <= \^p_0_in309_in\;
  p_0_in320_in <= \^p_0_in320_in\;
  p_0_in331_in <= \^p_0_in331_in\;
  p_0_in342_in <= \^p_0_in342_in\;
  p_0_in34_in <= \^p_0_in34_in\;
  p_0_in353_in <= \^p_0_in353_in\;
  p_0_in364_in <= \^p_0_in364_in\;
  p_0_in375_in <= \^p_0_in375_in\;
  p_0_in37_in <= \^p_0_in37_in\;
  p_0_in40_in <= \^p_0_in40_in\;
  p_0_in43_in <= \^p_0_in43_in\;
  p_0_in46_in <= \^p_0_in46_in\;
  p_0_in49_in <= \^p_0_in49_in\;
  p_0_in52_in <= \^p_0_in52_in\;
  p_0_in55_in <= \^p_0_in55_in\;
  p_0_in58_in <= \^p_0_in58_in\;
  p_0_in61_in <= \^p_0_in61_in\;
  p_0_in64_in <= \^p_0_in64_in\;
  p_0_in67_in <= \^p_0_in67_in\;
  p_0_in70_in <= \^p_0_in70_in\;
  p_0_in73_in <= \^p_0_in73_in\;
  p_1_in143_in <= \^p_1_in143_in\;
  p_1_in146_in <= \^p_1_in146_in\;
  p_1_in149_in <= \^p_1_in149_in\;
  \s_axi_rdata_i_reg[31]\ <= \^s_axi_rdata_i_reg[31]\;
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => processor_ack(0),
      I1 => processor_ack(1),
      I2 => first_ack_active,
      O => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_active_i_1_n_0\,
      Q => first_ack_active,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => processor_ack(0),
      I1 => processor_ack(1),
      O => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1_n_0\
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.first_ack_i_1_n_0\,
      Q => first_ack,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => first_ack_active,
      I1 => processor_ack(1),
      O => p_212_out
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_212_out,
      Q => second_ack,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => second_ack,
      Q => second_ack_sync_d1,
      R => \^sr\(0)
    );
\ACK_EN_SYNC_ON_AXI_CLK_GEN.NO_CASCADE_MASTER.second_ack_sync_d2_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => second_ack_sync_d1,
      Q => second_ack_sync_d2,
      R => \^sr\(0)
    );
\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\,
      Q => \^reg_gen[0].ier_reg[0]_1\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\,
      Q => \^p_0_in122_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\,
      Q => \^p_0_in120_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\,
      Q => \^reg_gen[12].ier_reg[12]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0\,
      Q => \^p_0_in116_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0\,
      Q => \^p_0_in114_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\,
      Q => \^reg_gen[15].ier_reg[15]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\,
      Q => \^p_0_in140_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\,
      Q => \^p_0_in138_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\,
      Q => \^reg_gen[3].ier_reg[3]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\,
      Q => \^p_0_in134_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\,
      Q => \^p_0_in132_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\,
      Q => \^reg_gen[6].ier_reg[6]_0\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\,
      Q => \^p_0_in128_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\,
      Q => \^p_0_in126_in\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\,
      Q => \^reg_gen[9].ier_reg[9]_0\,
      R => '0'
    );
\ILR_GEN.ilr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(0),
      Q => \^q\(0),
      S => \^sr\(0)
    );
\ILR_GEN.ilr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(1),
      Q => \^q\(1),
      S => \^sr\(0)
    );
\ILR_GEN.ilr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(2),
      Q => \^q\(2),
      S => \^sr\(0)
    );
\ILR_GEN.ilr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(3),
      Q => \^q\(3),
      S => \^sr\(0)
    );
\ILR_GEN.ilr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(4),
      Q => \^q\(4),
      S => \^sr\(0)
    );
\ILR_GEN.ilr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(1),
      D => s_axi_wdata(5),
      Q => ilr(5),
      S => \^sr\(0)
    );
\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(0),
      Q => intr_ff(0),
      R => '0'
    );
\INTR_DETECT_GEN[0].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_ff(0),
      Q => intr_ff(1),
      R => '0'
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => intr_ff(1),
      I2 => intr_d1,
      I3 => s_axi_aresetn,
      I4 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      O => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0\
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr[0]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[0].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_ff(1),
      Q => intr_d1,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(1),
      Q => \p_1_out__0\(0),
      R => '0'
    );
\INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \p_1_out__0\(0),
      Q => \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      I2 => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      O => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0\
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[1].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      Q => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(2),
      Q => \p_1_out__1\(0),
      R => '0'
    );
\INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \p_1_out__1\(0),
      Q => \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      I2 => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_2_in,
      O => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0\
    );
\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr[2]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[2].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      Q => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(3),
      Q => \p_1_out__2\(0),
      R => '0'
    );
\INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \p_1_out__2\(0),
      Q => \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      I2 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_3_in,
      O => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0\
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr[3]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[3].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      Q => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(4),
      Q => \p_1_out__3\(0),
      R => '0'
    );
\INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \p_1_out__3\(0),
      Q => \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      I2 => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_4_in,
      O => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0\
    );
\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr[4]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[4].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      Q => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(5),
      Q => \p_1_out__4\(0),
      R => '0'
    );
\INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \p_1_out__4\(0),
      Q => \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      I2 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_5_in,
      O => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0\
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr[5]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[5].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      Q => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(6),
      Q => \p_1_out__5\(0),
      R => '0'
    );
\INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \p_1_out__5\(0),
      Q => \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      I2 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_6_in,
      O => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr[6]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[6].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      Q => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(7),
      Q => \p_1_out__6\(0),
      R => '0'
    );
\INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \p_1_out__6\(0),
      Q => \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      R => '0'
    );
\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      I2 => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      I3 => s_axi_aresetn,
      I4 => p_7_in,
      O => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0\
    );
\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr[7]_i_1_n_0\,
      Q => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\,
      R => '0'
    );
\INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[7].ASYNC_GEN.intr_ff_reg_n_0_[1]\,
      Q => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.intr_d1_reg_n_0\,
      R => \^sr\(0)
    );
\IPR_GEN.ipr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \REG_GEN[0].isr_reg_n_0_[0]\,
      I1 => \REG_GEN[0].ier_reg_n_0_[0]\,
      O => \IPR_GEN.ipr[0]_i_1_n_0\
    );
\IPR_GEN.ipr[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in124_in,
      I1 => p_1_in125_in,
      O => \IPR_GEN.ipr[10]_i_1_n_0\
    );
\IPR_GEN.ipr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in122_in,
      I1 => p_0_in121_in,
      O => \IPR_GEN.ipr[11]_i_1_n_0\
    );
\IPR_GEN.ipr[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in119_in,
      I1 => p_0_in118_in,
      O => \IPR_GEN.ipr[12]_i_1_n_0\
    );
\IPR_GEN.ipr[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in115_in,
      I1 => p_1_in116_in,
      O => \IPR_GEN.ipr[13]_i_1_n_0\
    );
\IPR_GEN.ipr[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in112_in,
      I1 => p_1_in113_in,
      O => \IPR_GEN.ipr[14]_i_1_n_0\
    );
\IPR_GEN.ipr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in109_in,
      I1 => p_1_in110_in,
      O => \IPR_GEN.ipr[15]_i_1_n_0\
    );
\IPR_GEN.ipr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in151_in,
      I1 => p_1_in152_in,
      O => \IPR_GEN.ipr[1]_i_1_n_0\
    );
\IPR_GEN.ipr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in148_in\,
      I1 => \^p_1_in149_in\,
      O => \IPR_GEN.ipr[2]_i_1_n_0\
    );
\IPR_GEN.ipr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in145_in\,
      I1 => \^p_1_in146_in\,
      O => \IPR_GEN.ipr[3]_i_1_n_0\
    );
\IPR_GEN.ipr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_0_in142_in\,
      I1 => \^p_1_in143_in\,
      O => \IPR_GEN.ipr[4]_i_1_n_0\
    );
\IPR_GEN.ipr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in139_in,
      I1 => p_1_in140_in,
      O => \IPR_GEN.ipr[5]_i_1_n_0\
    );
\IPR_GEN.ipr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in136_in,
      I1 => p_1_in137_in,
      O => \IPR_GEN.ipr[6]_i_1_n_0\
    );
\IPR_GEN.ipr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in133_in,
      I1 => p_1_in134_in,
      O => \IPR_GEN.ipr[7]_i_1_n_0\
    );
\IPR_GEN.ipr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_1_in131_in,
      I1 => p_0_in130_in,
      O => \IPR_GEN.ipr[8]_i_1_n_0\
    );
\IPR_GEN.ipr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in127_in,
      I1 => p_1_in128_in,
      O => \IPR_GEN.ipr[9]_i_1_n_0\
    );
\IPR_GEN.ipr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[0]_i_1_n_0\,
      Q => ipr(0),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[10]_i_1_n_0\,
      Q => ipr(10),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[11]_i_1_n_0\,
      Q => ipr(11),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[12]_i_1_n_0\,
      Q => ipr(12),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[13]_i_1_n_0\,
      Q => ipr(13),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[14]_i_1_n_0\,
      Q => ipr(14),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[15]_i_1_n_0\,
      Q => ipr(15),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[1]_i_1_n_0\,
      Q => ipr(1),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[2]_i_1_n_0\,
      Q => \s_axi_rdata_i_reg[4]\(0),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[3]_i_1_n_0\,
      Q => \s_axi_rdata_i_reg[4]\(1),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[4]_i_1_n_0\,
      Q => \s_axi_rdata_i_reg[4]\(2),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[5]_i_1_n_0\,
      Q => ipr(5),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[6]_i_1_n_0\,
      Q => ipr(6),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[7]_i_1_n_0\,
      Q => ipr(7),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[8]_i_1_n_0\,
      Q => ipr(8),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[9]_i_1_n_0\,
      Q => ipr(9),
      R => \^sr\(0)
    );
\IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_d1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => irq_gen,
      O => irq_dis
    );
\IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_dis,
      Q => irq_dis_d1,
      R => \^sr\(0)
    );
\IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_sample_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => irq_gen,
      I1 => irq_dis_d1,
      O => irq_dis_sample_i
    );
\IRQ_DIS_SYNC_ON_AXI_CLK_GEN.irq_dis_sample_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_dis_sample_i,
      Q => irq_dis_sample,
      R => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0]\,
      I1 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1]\,
      O => Irq_i
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.Irq_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Irq_i,
      Q => irq,
      R => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202023232320232"
    )
        port map (
      I0 => ivar_index_sample_en,
      I1 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1]\,
      I2 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0]\,
      I3 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2_n_0\,
      I4 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\,
      I5 => first_ack,
      O => current_state(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => irq_dis_sample,
      I1 => ack_or,
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[0]_i_2_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800F80"
    )
        port map (
      I0 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\,
      I1 => first_ack,
      I2 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0]\,
      I3 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1]\,
      I4 => second_ack_sync_d2,
      O => current_state(1)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00DD00F0"
    )
        port map (
      I0 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0\,
      I1 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0\,
      I2 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0\,
      I3 => ivar_index_axi_clk(4),
      I4 => ivar_index_axi_clk(3),
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_2_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF35FF"
    )
        port map (
      I0 => \^p_0_in46_in\,
      I1 => \^p_0_in43_in\,
      I2 => ivar_index_axi_clk(0),
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      I5 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6_n_0\,
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_3_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11001010"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(2),
      I2 => \^p_0_in52_in\,
      I3 => \^p_0_in49_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0\,
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_4_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D800"
    )
        port map (
      I0 => ivar_index_axi_clk(0),
      I1 => \^p_0_in37_in\,
      I2 => \^p_0_in40_in\,
      I3 => ivar_index_axi_clk(2),
      I4 => ivar_index_axi_clk(1),
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_6_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D8000000"
    )
        port map (
      I0 => ivar_index_axi_clk(0),
      I1 => \^reg_gen[15].iar_fast_mode_gen.iar_reg[15]_0\,
      I2 => \^p_0_in34_in\,
      I3 => ivar_index_axi_clk(2),
      I4 => ivar_index_axi_clk(1),
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_7_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^p_0_in70_in\,
      I1 => \^p_0_in67_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => \^p_0_in73_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => \^reg_gen[0].iar_fast_mode_gen.iar_reg[0]_0\,
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^p_0_in55_in\,
      I1 => \^p_0_in58_in\,
      I2 => ivar_index_axi_clk(1),
      I3 => \^p_0_in61_in\,
      I4 => ivar_index_axi_clk(0),
      I5 => \^p_0_in64_in\,
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => current_state(0),
      Q => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => current_state(1),
      Q => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_8_n_0\,
      I1 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state[1]_i_9_n_0\,
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg[1]_i_5_n_0\,
      S => ivar_index_axi_clk(2)
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[1]\,
      I1 => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.current_state_reg_n_0_[0]\,
      O => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1_n_0\
    );
\IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IRQ_EDGE_GEN.IRQ_EDGE_FAST_ON_AXI_CLK_GEN.in_idle_i_1_n_0\,
      Q => in_idle,
      R => \^sr\(0)
    );
\IVAR_FAST_MODE_GEN.IVAR_REG_MEM_AXI_CLK_GEN.IVAR_REG_MEM_I\: entity work.\top_axi_pcie_intc_0_0_shared_ram_ivar\
     port map (
      D(15 downto 0) => D(15 downto 0),
      \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\,
      \ILR_GEN.ilr_reg[5]\ => \^s_axi_rdata_i_reg[31]\,
      Q(3 downto 0) => ivar_index_axi_clk(3 downto 0),
      \bus2ip_addr_i_reg[5]\(3 downto 0) => \bus2ip_addr_i_reg[5]_1\(3 downto 0),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      \s_axi_rdata_i_reg[15]\(15 downto 0) => \s_axi_rdata_i_reg[15]\(15 downto 0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[0]_0\,
      I1 => in_idle,
      I2 => irq_gen,
      O => idle_and_irq
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.idle_and_irq_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => idle_and_irq,
      Q => idle_and_irq_d1,
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(0),
      Q => ivar_index_axi_clk(0),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(1),
      Q => ivar_index_axi_clk(1),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(2),
      Q => ivar_index_axi_clk(2),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(3),
      Q => ivar_index_axi_clk(3),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => ivar_index_sample_en_i,
      D => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(4),
      Q => ivar_index_axi_clk(4),
      R => \^sr\(0)
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => irq_gen,
      I1 => in_idle,
      I2 => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[0]_0\,
      I3 => idle_and_irq_d1,
      O => ivar_index_sample_en_i
    );
\IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_sample_en_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ivar_index_sample_en_i,
      Q => ivar_index_sample_en,
      R => \^sr\(0)
    );
\IVR_GEN.ivr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF8FFF8FFFFFF"
    )
        port map (
      I0 => \IVR_GEN.ivr[0]_i_2_n_0\,
      I1 => \IPR_GEN.ipr[1]_i_1_n_0\,
      I2 => \IVR_GEN.ivr[0]_i_3_n_0\,
      I3 => s_axi_aresetn,
      I4 => \IPR_GEN.ipr[14]_i_1_n_0\,
      I5 => \IVR_GEN.ivr[1]_i_6_n_0\,
      O => \IVR_GEN.ivr[0]_i_1_n_0\
    );
\IVR_GEN.ivr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \REG_GEN[0].ier_reg_n_0_[0]\,
      I1 => \REG_GEN[0].isr_reg_n_0_[0]\,
      O => \IVR_GEN.ivr[0]_i_2_n_0\
    );
\IVR_GEN.ivr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404040404044"
    )
        port map (
      I0 => \IPR_GEN.ipr[2]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[0]_i_2_n_0\,
      I2 => \IVR_GEN.ivr[0]_i_4_n_0\,
      I3 => \IVR_GEN.ivr[0]_i_5_n_0\,
      I4 => \IPR_GEN.ipr[4]_i_1_n_0\,
      I5 => \IPR_GEN.ipr[6]_i_1_n_0\,
      O => \IVR_GEN.ivr[0]_i_3_n_0\
    );
\IVR_GEN.ivr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF888888888888"
    )
        port map (
      I0 => \^p_1_in146_in\,
      I1 => \^p_0_in145_in\,
      I2 => \^p_0_in142_in\,
      I3 => \^p_1_in143_in\,
      I4 => p_0_in139_in,
      I5 => p_1_in140_in,
      O => \IVR_GEN.ivr[0]_i_4_n_0\
    );
\IVR_GEN.ivr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002AFF2AFF2AFF"
    )
        port map (
      I0 => \IVR_GEN.ivr[0]_i_6_n_0\,
      I1 => p_1_in128_in,
      I2 => p_0_in127_in,
      I3 => irq_gen_i_22_n_0,
      I4 => p_0_in133_in,
      I5 => p_1_in134_in,
      O => \IVR_GEN.ivr[0]_i_5_n_0\
    );
\IVR_GEN.ivr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFBBBFBBBFBB"
    )
        port map (
      I0 => \IPR_GEN.ipr[10]_i_1_n_0\,
      I1 => \IVR_GEN.ivr[0]_i_7_n_0\,
      I2 => \IPR_GEN.ipr[13]_i_1_n_0\,
      I3 => \IPR_GEN.ipr[14]_i_1_n_0\,
      I4 => p_0_in121_in,
      I5 => p_1_in122_in,
      O => \IVR_GEN.ivr[0]_i_6_n_0\
    );
\IVR_GEN.ivr[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in118_in,
      I1 => p_1_in119_in,
      O => \IVR_GEN.ivr[0]_i_7_n_0\
    );
\IVR_GEN.ivr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFFFFFFFFF"
    )
        port map (
      I0 => \IVR_GEN.ivr[1]_i_2_n_0\,
      I1 => \IVR_GEN.ivr[1]_i_3_n_0\,
      I2 => \IVR_GEN.ivr[1]_i_4_n_0\,
      I3 => \IVR_GEN.ivr[1]_i_5_n_0\,
      I4 => \IVR_GEN.ivr[1]_i_6_n_0\,
      I5 => s_axi_aresetn,
      O => \IVR_GEN.ivr[1]_i_1_n_0\
    );
\IVR_GEN.ivr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => p_1_in140_in,
      I1 => p_0_in139_in,
      I2 => \^p_1_in143_in\,
      I3 => \^p_0_in142_in\,
      O => \IVR_GEN.ivr[1]_i_2_n_0\
    );
\IVR_GEN.ivr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DDD5D5D5"
    )
        port map (
      I0 => \IVR_GEN.ivr[2]_i_4_n_0\,
      I1 => \IVR_GEN.ivr[2]_i_5_n_0\,
      I2 => \IPR_GEN.ipr[13]_i_1_n_0\,
      I3 => p_0_in118_in,
      I4 => p_1_in119_in,
      I5 => \IVR_GEN.ivr[2]_i_6_n_0\,
      O => \IVR_GEN.ivr[1]_i_3_n_0\
    );
\IVR_GEN.ivr[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^p_1_in146_in\,
      I1 => \^p_0_in145_in\,
      I2 => \^p_1_in149_in\,
      I3 => \^p_0_in148_in\,
      O => \IVR_GEN.ivr[1]_i_4_n_0\
    );
\IVR_GEN.ivr[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \REG_GEN[0].isr_reg_n_0_[0]\,
      I1 => \REG_GEN[0].ier_reg_n_0_[0]\,
      I2 => p_1_in152_in,
      I3 => p_0_in151_in,
      O => \IVR_GEN.ivr[1]_i_5_n_0\
    );
\IVR_GEN.ivr[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBBBFBBBFBBB"
    )
        port map (
      I0 => \IVR_GEN.ivr[1]_i_7_n_0\,
      I1 => ivr_in(3),
      I2 => p_0_in115_in,
      I3 => p_1_in116_in,
      I4 => p_0_in118_in,
      I5 => p_1_in119_in,
      O => \IVR_GEN.ivr[1]_i_6_n_0\
    );
\IVR_GEN.ivr[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888FFFF"
    )
        port map (
      I0 => p_0_in124_in,
      I1 => p_1_in125_in,
      I2 => p_0_in121_in,
      I3 => p_1_in122_in,
      I4 => \IVR_GEN.ivr[2]_i_4_n_0\,
      O => \IVR_GEN.ivr[1]_i_7_n_0\
    );
\IVR_GEN.ivr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5D5D5D5"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \IVR_GEN.ivr[2]_i_2_n_0\,
      I2 => \IVR_GEN.ivr[2]_i_3_n_0\,
      I3 => \IVR_GEN.ivr[2]_i_4_n_0\,
      I4 => \IVR_GEN.ivr[2]_i_5_n_0\,
      O => \IVR_GEN.ivr[2]_i_1_n_0\
    );
\IVR_GEN.ivr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \IVR_GEN.ivr[2]_i_6_n_0\,
      I1 => \^p_0_in142_in\,
      I2 => \^p_1_in143_in\,
      I3 => p_0_in139_in,
      I4 => p_1_in140_in,
      O => \IVR_GEN.ivr[2]_i_2_n_0\
    );
\IVR_GEN.ivr[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => \IVR_GEN.ivr[1]_i_5_n_0\,
      I1 => \^p_0_in148_in\,
      I2 => \^p_1_in149_in\,
      I3 => \^p_0_in145_in\,
      I4 => \^p_1_in146_in\,
      O => \IVR_GEN.ivr[2]_i_3_n_0\
    );
\IVR_GEN.ivr[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => p_1_in131_in,
      I1 => p_0_in130_in,
      I2 => p_1_in128_in,
      I3 => p_0_in127_in,
      O => \IVR_GEN.ivr[2]_i_4_n_0\
    );
\IVR_GEN.ivr[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => p_1_in122_in,
      I1 => p_0_in121_in,
      I2 => p_1_in125_in,
      I3 => p_0_in124_in,
      O => \IVR_GEN.ivr[2]_i_5_n_0\
    );
\IVR_GEN.ivr[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_1_in134_in,
      I1 => p_0_in133_in,
      I2 => p_1_in137_in,
      I3 => p_0_in136_in,
      O => \IVR_GEN.ivr[2]_i_6_n_0\
    );
\IVR_GEN.ivr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => ivr_in(3),
      O => \IVR_GEN.ivr[3]_i_1_n_0\
    );
\IVR_GEN.ivr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A2A2A00000000"
    )
        port map (
      I0 => ivr_in(3),
      I1 => p_1_in131_in,
      I2 => p_0_in130_in,
      I3 => p_1_in128_in,
      I4 => p_0_in127_in,
      I5 => \IVR_GEN.ivr[4]_i_3_n_0\,
      O => ivr_in(4)
    );
\IVR_GEN.ivr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000007770000"
    )
        port map (
      I0 => \^p_1_in146_in\,
      I1 => \^p_0_in145_in\,
      I2 => \^p_1_in149_in\,
      I3 => \^p_0_in148_in\,
      I4 => \IVR_GEN.ivr[1]_i_5_n_0\,
      I5 => \IVR_GEN.ivr[2]_i_2_n_0\,
      O => ivr_in(3)
    );
\IVR_GEN.ivr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001500150015"
    )
        port map (
      I0 => irq_gen_i_10_n_0,
      I1 => p_1_in113_in,
      I2 => p_0_in112_in,
      I3 => \IPR_GEN.ipr[13]_i_1_n_0\,
      I4 => p_0_in109_in,
      I5 => p_1_in110_in,
      O => \IVR_GEN.ivr[4]_i_3_n_0\
    );
\IVR_GEN.ivr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[0]_i_1_n_0\,
      Q => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(0),
      R => '0'
    );
\IVR_GEN.ivr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[1]_i_1_n_0\,
      Q => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(1),
      R => '0'
    );
\IVR_GEN.ivr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[2]_i_1_n_0\,
      Q => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(2),
      R => '0'
    );
\IVR_GEN.ivr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[3]_i_1_n_0\,
      Q => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(3),
      R => '0'
    );
\IVR_GEN.ivr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ivr_in(4),
      Q => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(4),
      S => \^sr\(0)
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\,
      I1 => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(0),
      I4 => s_axi_aresetn,
      I5 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(0),
      I2 => \^reg_gen[0].iar_fast_mode_gen.iar_reg[0]_0\,
      I3 => ivar_index_axi_clk(3),
      I4 => first_ack,
      I5 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0\,
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_2_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(2),
      O => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0\
    );
\REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_1_n_0\,
      Q => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      R => '0'
    );
\REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(0),
      Q => \^reg_gen[0].iar_fast_mode_gen.iar_reg[0]_0\,
      R => \^sr\(0)
    );
\REG_GEN[0].ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^reg_gen[0].ier_reg[0]_1\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(0),
      I3 => \^reg_gen[0].ier_reg[0]_0\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => \REG_GEN[0].ier_reg_n_0_[0]\,
      O => p_95_out
    );
\REG_GEN[0].ier_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_95_out,
      Q => \REG_GEN[0].ier_reg_n_0_[0]\,
      R => '0'
    );
\REG_GEN[0].isr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      I1 => s_axi_aresetn,
      O => p_111_out
    );
\REG_GEN[0].isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[0].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(0),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => \REG_GEN[0].isr_reg_n_0_[0]\,
      O => \REG_GEN[0].isr[0]_i_2_n_0\
    );
\REG_GEN[0].isr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].isr[0]_i_2_n_0\,
      Q => \REG_GEN[0].isr_reg_n_0_[0]\,
      R => p_111_out
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0\,
      I1 => \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(10),
      I4 => s_axi_aresetn,
      I5 => p_10_in,
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => \^p_0_in46_in\,
      I2 => ivar_index_axi_clk(0),
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_2_n_0\
    );
\REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].IAR_FAST_MODE_GEN.iar[10]_i_1_n_0\,
      Q => p_10_in,
      R => '0'
    );
\REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(10),
      Q => \^p_0_in46_in\,
      R => \^sr\(0)
    );
\REG_GEN[10].ier[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in122_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(10),
      I3 => \^p_0_in276_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in124_in,
      O => p_55_out
    );
\REG_GEN[10].ier_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_55_out,
      Q => p_0_in124_in,
      R => '0'
    );
\REG_GEN[10].isr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in125_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(10),
      I4 => s_axi_aresetn,
      I5 => p_10_in,
      O => \REG_GEN[10].isr[10]_i_1_n_0\
    );
\REG_GEN[10].isr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[10].isr[10]_i_1_n_0\,
      Q => p_1_in125_in,
      R => '0'
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0\,
      I1 => \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(11),
      I4 => s_axi_aresetn,
      I5 => p_11_in,
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in43_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_2_n_0\
    );
\REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].IAR_FAST_MODE_GEN.iar[11]_i_1_n_0\,
      Q => p_11_in,
      R => '0'
    );
\REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(11),
      Q => \^p_0_in43_in\,
      R => \^sr\(0)
    );
\REG_GEN[11].ier[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in120_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(11),
      I3 => \^p_0_in265_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in121_in,
      O => p_51_out
    );
\REG_GEN[11].ier_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_51_out,
      Q => p_0_in121_in,
      R => '0'
    );
\REG_GEN[11].isr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in122_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(11),
      I4 => s_axi_aresetn,
      I5 => p_11_in,
      O => \REG_GEN[11].isr[11]_i_1_n_0\
    );
\REG_GEN[11].isr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[11].isr[11]_i_1_n_0\,
      Q => p_1_in122_in,
      R => '0'
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0\,
      I1 => \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(12),
      I4 => s_axi_aresetn,
      I5 => p_12_in,
      O => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1_n_0\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in40_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_2_n_0\
    );
\REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[12].IAR_FAST_MODE_GEN.iar[12]_i_1_n_0\,
      Q => p_12_in,
      R => '0'
    );
\REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(12),
      Q => \^p_0_in40_in\,
      R => \^sr\(0)
    );
\REG_GEN[12].ier[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^reg_gen[12].ier_reg[12]_0\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(12),
      I3 => \^p_0_in254_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in118_in,
      O => p_47_out
    );
\REG_GEN[12].ier_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_47_out,
      Q => p_0_in118_in,
      R => '0'
    );
\REG_GEN[12].isr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in119_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(12),
      I4 => s_axi_aresetn,
      I5 => p_12_in,
      O => \REG_GEN[12].isr[12]_i_1_n_0\
    );
\REG_GEN[12].isr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[12].isr[12]_i_1_n_0\,
      Q => p_1_in119_in,
      R => '0'
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0\,
      I1 => \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(13),
      I4 => s_axi_aresetn,
      I5 => p_13_in,
      O => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1_n_0\
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in37_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_2_n_0\
    );
\REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[13].IAR_FAST_MODE_GEN.iar[13]_i_1_n_0\,
      Q => p_13_in,
      R => '0'
    );
\REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(13),
      Q => \^p_0_in37_in\,
      R => \^sr\(0)
    );
\REG_GEN[13].ier[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in116_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(13),
      I3 => \^p_0_in243_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in115_in,
      O => p_43_out
    );
\REG_GEN[13].ier_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_43_out,
      Q => p_0_in115_in,
      R => '0'
    );
\REG_GEN[13].isr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in116_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(13),
      I4 => s_axi_aresetn,
      I5 => p_13_in,
      O => \REG_GEN[13].isr[13]_i_1_n_0\
    );
\REG_GEN[13].isr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[13].isr[13]_i_1_n_0\,
      Q => p_1_in116_in,
      R => '0'
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0\,
      I1 => \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(14),
      I4 => s_axi_aresetn,
      I5 => p_14_in,
      O => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1_n_0\
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in34_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_2_n_0\
    );
\REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[14].IAR_FAST_MODE_GEN.iar[14]_i_1_n_0\,
      Q => p_14_in,
      R => '0'
    );
\REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(14),
      Q => \^p_0_in34_in\,
      R => \^sr\(0)
    );
\REG_GEN[14].ier[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in114_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(14),
      I3 => \^p_0_in232_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in112_in,
      O => p_39_out
    );
\REG_GEN[14].ier_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_39_out,
      Q => p_0_in112_in,
      R => '0'
    );
\REG_GEN[14].isr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in113_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(14),
      I4 => s_axi_aresetn,
      I5 => p_14_in,
      O => \REG_GEN[14].isr[14]_i_1_n_0\
    );
\REG_GEN[14].isr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[14].isr[14]_i_1_n_0\,
      Q => p_1_in113_in,
      R => '0'
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0\,
      I1 => \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(15),
      I4 => s_axi_aresetn,
      I5 => p_15_in,
      O => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1_n_0\
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => \^reg_gen[15].iar_fast_mode_gen.iar_reg[15]_0\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_2_n_0\
    );
\REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[15].IAR_FAST_MODE_GEN.iar[15]_i_1_n_0\,
      Q => p_15_in,
      R => '0'
    );
\REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(15),
      Q => \^reg_gen[15].iar_fast_mode_gen.iar_reg[15]_0\,
      R => \^sr\(0)
    );
\REG_GEN[15].ier[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^reg_gen[15].ier_reg[15]_0\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(15),
      I3 => \^p_0_in221_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in109_in,
      O => p_35_out
    );
\REG_GEN[15].ier_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_35_out,
      Q => p_0_in109_in,
      R => '0'
    );
\REG_GEN[15].isr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in110_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(15),
      I4 => s_axi_aresetn,
      I5 => p_15_in,
      O => \REG_GEN[15].isr[15]_i_1_n_0\
    );
\REG_GEN[15].isr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[15].isr[15]_i_1_n_0\,
      Q => p_1_in110_in,
      R => '0'
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0\,
      I1 => \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(1),
      I4 => s_axi_aresetn,
      I5 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(3),
      I2 => first_ack,
      I3 => ivar_index_axi_clk(0),
      I4 => \^p_0_in73_in\,
      I5 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar[0]_i_4_n_0\,
      O => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_2_n_0\
    );
\REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].IAR_FAST_MODE_GEN.iar[1]_i_1_n_0\,
      Q => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      R => '0'
    );
\REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(1),
      Q => \^p_0_in73_in\,
      R => \^sr\(0)
    );
\REG_GEN[1].ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in140_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(1),
      I3 => \^p_0_in375_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in151_in,
      O => p_91_out
    );
\REG_GEN[1].ier_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_91_out,
      Q => p_0_in151_in,
      R => '0'
    );
\REG_GEN[1].isr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      I1 => s_axi_aresetn,
      O => p_110_out
    );
\REG_GEN[1].isr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(1),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => p_1_in152_in,
      O => \REG_GEN[1].isr[1]_i_2_n_0\
    );
\REG_GEN[1].isr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].isr[1]_i_2_n_0\,
      Q => p_1_in152_in,
      R => p_110_out
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0\,
      I1 => \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(2),
      I4 => s_axi_aresetn,
      I5 => p_2_in,
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\,
      I1 => ivar_index_axi_clk(1),
      I2 => ivar_index_axi_clk(2),
      I3 => first_ack,
      I4 => ivar_index_axi_clk(0),
      I5 => \^p_0_in70_in\,
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_2_n_0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(3),
      O => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\
    );
\REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(2),
      Q => \^p_0_in70_in\,
      R => \^sr\(0)
    );
\REG_GEN[2].ier[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in138_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(2),
      I3 => \^p_0_in364_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => \^p_0_in148_in\,
      O => p_87_out
    );
\REG_GEN[2].ier_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_87_out,
      Q => \^p_0_in148_in\,
      R => '0'
    );
\REG_GEN[2].isr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in,
      I1 => s_axi_aresetn,
      O => p_109_out
    );
\REG_GEN[2].isr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[2].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(2),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => \^p_1_in149_in\,
      O => \REG_GEN[2].isr[2]_i_2_n_0\
    );
\REG_GEN[2].isr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[2].isr[2]_i_2_n_0\,
      Q => \^p_1_in149_in\,
      R => p_109_out
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\,
      I1 => \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(3),
      I4 => s_axi_aresetn,
      I5 => p_3_in,
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\,
      I1 => ivar_index_axi_clk(1),
      I2 => ivar_index_axi_clk(2),
      I3 => first_ack,
      I4 => ivar_index_axi_clk(0),
      I5 => \^p_0_in67_in\,
      O => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_2_n_0\
    );
\REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].IAR_FAST_MODE_GEN.iar[3]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(3),
      Q => \^p_0_in67_in\,
      R => \^sr\(0)
    );
\REG_GEN[3].ier[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^reg_gen[3].ier_reg[3]_0\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(3),
      I3 => \^p_0_in353_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => \^p_0_in145_in\,
      O => p_83_out
    );
\REG_GEN[3].ier_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_83_out,
      Q => \^p_0_in145_in\,
      R => '0'
    );
\REG_GEN[3].isr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_3_in,
      I1 => s_axi_aresetn,
      O => p_108_out
    );
\REG_GEN[3].isr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[3].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(3),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => \^p_1_in146_in\,
      O => \REG_GEN[3].isr[3]_i_2_n_0\
    );
\REG_GEN[3].isr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[3].isr[3]_i_2_n_0\,
      Q => \^p_1_in146_in\,
      R => p_108_out
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0\,
      I1 => \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(4),
      I4 => s_axi_aresetn,
      I5 => p_4_in,
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\,
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(0),
      I3 => first_ack,
      I4 => ivar_index_axi_clk(1),
      I5 => \^p_0_in64_in\,
      O => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_2_n_0\
    );
\REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].IAR_FAST_MODE_GEN.iar[4]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(4),
      Q => \^p_0_in64_in\,
      R => \^sr\(0)
    );
\REG_GEN[4].ier[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in134_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(4),
      I3 => \^p_0_in342_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => \^p_0_in142_in\,
      O => p_79_out
    );
\REG_GEN[4].ier_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_79_out,
      Q => \^p_0_in142_in\,
      R => '0'
    );
\REG_GEN[4].isr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_4_in,
      I1 => s_axi_aresetn,
      O => p_107_out
    );
\REG_GEN[4].isr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[4].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(4),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => \^p_1_in143_in\,
      O => \REG_GEN[4].isr[4]_i_2_n_0\
    );
\REG_GEN[4].isr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[4].isr[4]_i_2_n_0\,
      Q => \^p_1_in143_in\,
      R => p_107_out
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0\,
      I1 => \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(5),
      I4 => s_axi_aresetn,
      I5 => p_5_in,
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(3),
      I2 => first_ack,
      I3 => ivar_index_axi_clk(0),
      I4 => \^p_0_in61_in\,
      I5 => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4_n_0\,
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_2_n_0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(2),
      O => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_4_n_0\
    );
\REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].IAR_FAST_MODE_GEN.iar[5]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(5),
      Q => \^p_0_in61_in\,
      R => \^sr\(0)
    );
\REG_GEN[5].ier[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in132_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(5),
      I3 => \^p_0_in331_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in139_in,
      O => p_75_out
    );
\REG_GEN[5].ier_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_75_out,
      Q => p_0_in139_in,
      R => '0'
    );
\REG_GEN[5].isr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_5_in,
      I1 => s_axi_aresetn,
      O => p_106_out
    );
\REG_GEN[5].isr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[5].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(5),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => p_1_in140_in,
      O => \REG_GEN[5].isr[5]_i_2_n_0\
    );
\REG_GEN[5].isr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[5].isr[5]_i_2_n_0\,
      Q => p_1_in140_in,
      R => p_106_out
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0\,
      I1 => \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(6),
      I4 => s_axi_aresetn,
      I5 => p_6_in,
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => \REG_GEN[2].IAR_FAST_MODE_GEN.iar[2]_i_4_n_0\,
      I1 => ivar_index_axi_clk(2),
      I2 => ivar_index_axi_clk(0),
      I3 => \^p_0_in58_in\,
      I4 => first_ack,
      I5 => ivar_index_axi_clk(1),
      O => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_2_n_0\
    );
\REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].IAR_FAST_MODE_GEN.iar[6]_i_1_n_0\,
      Q => p_6_in,
      R => '0'
    );
\REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(6),
      Q => \^p_0_in58_in\,
      R => \^sr\(0)
    );
\REG_GEN[6].ier[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^reg_gen[6].ier_reg[6]_0\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(6),
      I3 => \^p_0_in320_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in136_in,
      O => p_71_out
    );
\REG_GEN[6].ier_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_71_out,
      Q => p_0_in136_in,
      R => '0'
    );
\REG_GEN[6].isr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_6_in,
      I1 => s_axi_aresetn,
      O => p_105_out
    );
\REG_GEN[6].isr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[6].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(6),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => p_1_in137_in,
      O => \REG_GEN[6].isr[6]_i_2_n_0\
    );
\REG_GEN[6].isr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[6].isr[6]_i_2_n_0\,
      Q => p_1_in137_in,
      R => p_105_out
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0\,
      I1 => \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(7),
      I4 => s_axi_aresetn,
      I5 => p_7_in,
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(3),
      I2 => first_ack,
      I3 => ivar_index_axi_clk(0),
      I4 => \^p_0_in55_in\,
      I5 => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\,
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_2_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ivar_index_axi_clk(1),
      I1 => ivar_index_axi_clk(2),
      O => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_4_n_0\
    );
\REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].IAR_FAST_MODE_GEN.iar[7]_i_1_n_0\,
      Q => p_7_in,
      R => '0'
    );
\REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(7),
      Q => \^p_0_in55_in\,
      R => \^sr\(0)
    );
\REG_GEN[7].ier[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in128_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(7),
      I3 => \^p_0_in309_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in133_in,
      O => p_67_out
    );
\REG_GEN[7].ier_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_67_out,
      Q => p_0_in133_in,
      R => '0'
    );
\REG_GEN[7].isr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_7_in,
      I1 => s_axi_aresetn,
      O => p_104_out
    );
\REG_GEN[7].isr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => \INTR_DETECT_GEN[7].EDGE_DETECT_GEN.hw_intr_reg\,
      I1 => s_axi_wdata(7),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => p_1_in134_in,
      O => \REG_GEN[7].isr[7]_i_2_n_0\
    );
\REG_GEN[7].isr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[7].isr[7]_i_2_n_0\,
      Q => p_1_in134_in,
      R => p_104_out
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0\,
      I1 => \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(8),
      I4 => s_axi_aresetn,
      I5 => p_8_in,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in52_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_2_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => ivar_index_axi_clk(4),
      I1 => ivar_index_axi_clk(3),
      I2 => first_ack,
      O => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\
    );
\REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_1_n_0\,
      Q => p_8_in,
      R => '0'
    );
\REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(8),
      Q => \^p_0_in52_in\,
      R => \^sr\(0)
    );
\REG_GEN[8].ier[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^p_0_in126_in\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(8),
      I3 => \^p_0_in298_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in130_in,
      O => p_63_out
    );
\REG_GEN[8].ier_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_63_out,
      Q => p_0_in130_in,
      R => '0'
    );
\REG_GEN[8].isr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in131_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(8),
      I4 => s_axi_aresetn,
      I5 => p_8_in,
      O => \REG_GEN[8].isr[8]_i_1_n_0\
    );
\REG_GEN[8].isr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[8].isr[8]_i_1_n_0\,
      Q => p_1_in131_in,
      R => '0'
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC200000"
    )
        port map (
      I0 => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0\,
      I1 => \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\,
      I2 => first_ack,
      I3 => s_axi_wdata(9),
      I4 => s_axi_aresetn,
      I5 => p_9_in,
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \REG_GEN[8].IAR_FAST_MODE_GEN.iar[8]_i_4_n_0\,
      I1 => ivar_index_axi_clk(0),
      I2 => \^p_0_in49_in\,
      I3 => ivar_index_axi_clk(1),
      I4 => ivar_index_axi_clk(2),
      O => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_2_n_0\
    );
\REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].IAR_FAST_MODE_GEN.iar[9]_i_1_n_0\,
      Q => p_9_in,
      R => '0'
    );
\REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(9),
      Q => \^p_0_in49_in\,
      R => \^sr\(0)
    );
\REG_GEN[9].ier[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444044004440"
    )
        port map (
      I0 => \^reg_gen[9].ier_reg[9]_0\,
      I1 => s_axi_aresetn,
      I2 => s_axi_wdata(9),
      I3 => \^p_0_in287_in\,
      I4 => Bus_RNW_reg_reg_16,
      I5 => p_0_in127_in,
      O => p_59_out
    );
\REG_GEN[9].ier_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_59_out,
      Q => p_0_in127_in,
      R => '0'
    );
\REG_GEN[9].isr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BA8A0000"
    )
        port map (
      I0 => p_1_in128_in,
      I1 => Bus_RNW_reg,
      I2 => p_17_in,
      I3 => s_axi_wdata(9),
      I4 => s_axi_aresetn,
      I5 => p_9_in,
      O => \REG_GEN[9].isr[9]_i_1_n_0\
    );
\REG_GEN[9].isr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[9].isr[9]_i_1_n_0\,
      Q => p_1_in128_in,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg,
      Q => \^reg_gen[0].ier_reg[0]_0\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_9,
      Q => \^p_0_in276_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_10,
      Q => \^p_0_in265_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_11,
      Q => \^p_0_in254_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_12,
      Q => \^p_0_in243_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_13,
      Q => \^p_0_in232_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_14,
      Q => \^p_0_in221_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_0,
      Q => \^p_0_in375_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_1,
      Q => \^p_0_in364_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_2,
      Q => \^p_0_in353_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_3,
      Q => \^p_0_in342_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_4,
      Q => \^p_0_in331_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_5,
      Q => \^p_0_in320_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_6,
      Q => \^p_0_in309_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_7,
      Q => \^p_0_in298_in\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_8,
      Q => \^p_0_in287_in\,
      R => '0'
    );
ack_or_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ack_or_i_2_n_0,
      I1 => p_11_in,
      I2 => p_10_in,
      I3 => p_15_in,
      I4 => p_8_in,
      I5 => ack_or_i_3_n_0,
      O => ack_or_i
    );
ack_or_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_6_in,
      I1 => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg_n_0_[1]\,
      I2 => p_7_in,
      I3 => p_2_in,
      O => ack_or_i_2_n_0
    );
ack_or_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_4_in,
      I1 => p_14_in,
      I2 => p_13_in,
      I3 => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg_n_0_[0]\,
      I4 => ack_or_i_4_n_0,
      O => ack_or_i_3_n_0
    );
ack_or_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_12_in,
      I1 => p_9_in,
      I2 => p_5_in,
      I3 => p_3_in,
      O => ack_or_i_4_n_0
    );
ack_or_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ack_or_i,
      Q => ack_or,
      R => \^sr\(0)
    );
irq_gen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEAAFEAAFE0000"
    )
        port map (
      I0 => irq_gen_i_2_n_0,
      I1 => irq_gen_i_3_n_0,
      I2 => irq_gen_i_4_n_0,
      I3 => irq_gen_i_5_n_0,
      I4 => irq_gen_i_6_n_0,
      I5 => ilr(5),
      O => irq_gen_int167_out
    );
irq_gen_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => p_1_in122_in,
      I1 => p_0_in121_in,
      I2 => p_1_in125_in,
      I3 => p_0_in124_in,
      I4 => p_1_in119_in,
      I5 => p_0_in118_in,
      O => irq_gen_i_10_n_0
    );
irq_gen_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0D0D0D"
    )
        port map (
      I0 => irq_gen_int278_in,
      I1 => \IPR_GEN.ipr[14]_i_1_n_0\,
      I2 => irq_gen_int480_in,
      I3 => p_0_in115_in,
      I4 => p_1_in116_in,
      I5 => irq_gen_int682_in,
      O => irq_gen_i_11_n_0
    );
irq_gen_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF70"
    )
        port map (
      I0 => p_0_in124_in,
      I1 => p_1_in125_in,
      I2 => irq_gen_int1086_in,
      I3 => irq_gen_int1490_in,
      I4 => irq_gen_int1288_in,
      I5 => irq_gen_int1692_in,
      O => irq_gen_i_12_n_0
    );
irq_gen_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD5D5D5"
    )
        port map (
      I0 => irq_gen_int884_in,
      I1 => p_0_in124_in,
      I2 => p_1_in125_in,
      I3 => p_0_in121_in,
      I4 => p_1_in122_in,
      O => irq_gen_i_13_n_0
    );
irq_gen_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8888888F8F8F8F"
    )
        port map (
      I0 => p_1_in140_in,
      I1 => p_0_in139_in,
      I2 => irq_gen_int2096_in,
      I3 => p_1_in137_in,
      I4 => p_0_in136_in,
      I5 => irq_gen_int1894_in,
      O => irq_gen_i_17_n_0
    );
irq_gen_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD555D5D5"
    )
        port map (
      I0 => \IVR_GEN.ivr[0]_i_2_n_0\,
      I1 => p_1_in152_in,
      I2 => p_0_in151_in,
      I3 => ilr(5),
      I4 => irq_gen_int30106_in,
      I5 => irq_gen_i_8_n_0,
      O => irq_gen_i_2_n_0
    );
irq_gen_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_20_n_0
    );
irq_gen_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_21_n_0
    );
irq_gen_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => p_0_in130_in,
      I1 => p_1_in131_in,
      O => irq_gen_i_22_n_0
    );
irq_gen_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEAEAEA"
    )
        port map (
      I0 => irq_gen_i_9_n_0,
      I1 => p_1_in134_in,
      I2 => p_0_in133_in,
      I3 => p_1_in137_in,
      I4 => p_0_in136_in,
      I5 => \IPR_GEN.ipr[5]_i_1_n_0\,
      O => irq_gen_i_3_n_0
    );
irq_gen_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_31_n_0
    );
irq_gen_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_32_n_0
    );
irq_gen_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_33_n_0
    );
irq_gen_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_34_n_0
    );
irq_gen_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_35_n_0
    );
irq_gen_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => irq_gen_i_36_n_0
    );
irq_gen_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_39_n_0
    );
irq_gen_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F0E0F000F00"
    )
        port map (
      I0 => irq_gen_i_10_n_0,
      I1 => irq_gen_i_11_n_0,
      I2 => \IVR_GEN.ivr[4]_i_3_n_0\,
      I3 => ilr(5),
      I4 => irq_gen_i_12_n_0,
      I5 => irq_gen_i_13_n_0,
      O => irq_gen_i_4_n_0
    );
irq_gen_i_40: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => irq_gen_i_40_n_0
    );
irq_gen_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_41_n_0
    );
irq_gen_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_42_n_0
    );
irq_gen_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_43_n_0
    );
irq_gen_i_44: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_44_n_0
    );
irq_gen_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_45_n_0
    );
irq_gen_i_46: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_46_n_0
    );
irq_gen_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_47_n_0
    );
irq_gen_i_48: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_48_n_0
    );
irq_gen_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_49_n_0
    );
irq_gen_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55545555"
    )
        port map (
      I0 => ilr(5),
      I1 => irq_gen_int2298_in,
      I2 => irq_gen_int24100_in,
      I3 => irq_gen_int26102_in,
      I4 => irq_gen_i_17_n_0,
      O => irq_gen_i_5_n_0
    );
irq_gen_i_50: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_50_n_0
    );
irq_gen_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_51_n_0
    );
irq_gen_i_52: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_52_n_0
    );
irq_gen_i_53: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_53_n_0
    );
irq_gen_i_54: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => irq_gen_i_54_n_0
    );
irq_gen_i_55: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_55_n_0
    );
irq_gen_i_56: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => irq_gen_i_56_n_0
    );
irq_gen_i_57: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => irq_gen_i_57_n_0
    );
irq_gen_i_58: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_58_n_0
    );
irq_gen_i_59: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_59_n_0
    );
irq_gen_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000008FFFFF"
    )
        port map (
      I0 => p_1_in152_in,
      I1 => p_0_in151_in,
      I2 => irq_gen_int28104_in,
      I3 => irq_gen_int30106_in,
      I4 => \IVR_GEN.ivr[0]_i_2_n_0\,
      I5 => irq_gen_int30107_in,
      O => irq_gen_i_6_n_0
    );
irq_gen_i_60: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_60_n_0
    );
irq_gen_i_61: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      O => irq_gen_i_61_n_0
    );
irq_gen_i_62: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      O => irq_gen_i_62_n_0
    );
irq_gen_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEEAAFFFFEEAE"
    )
        port map (
      I0 => \IPR_GEN.ipr[2]_i_1_n_0\,
      I1 => \IPR_GEN.ipr[4]_i_1_n_0\,
      I2 => irq_gen_int24100_in,
      I3 => ilr(5),
      I4 => \IPR_GEN.ipr[3]_i_1_n_0\,
      I5 => irq_gen_int26102_in,
      O => irq_gen_i_8_n_0
    );
irq_gen_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F00000F8F"
    )
        port map (
      I0 => p_0_in127_in,
      I1 => p_1_in128_in,
      I2 => irq_gen_i_22_n_0,
      I3 => irq_gen_int1490_in,
      I4 => irq_gen_int1692_in,
      I5 => ilr(5),
      O => irq_gen_i_9_n_0
    );
irq_gen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_gen_int167_out,
      Q => irq_gen,
      R => \^sr\(0)
    );
irq_gen_reg_i_14: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_14_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int2298_in,
      CO(0) => irq_gen_reg_i_14_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_14_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_31_n_0,
      S(0) => irq_gen_i_32_n_0
    );
irq_gen_reg_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_15_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int24100_in,
      CO(0) => irq_gen_reg_i_15_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_15_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_33_n_0,
      S(0) => irq_gen_i_34_n_0
    );
irq_gen_reg_i_16: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_16_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int26102_in,
      CO(0) => irq_gen_reg_i_16_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_16_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_35_n_0,
      S(0) => irq_gen_i_36_n_0
    );
irq_gen_reg_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_18_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int28104_in,
      CO(0) => irq_gen_reg_i_18_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_18_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_39_n_0,
      S(0) => irq_gen_i_40_n_0
    );
irq_gen_reg_i_19: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_19_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int30107_in,
      CO(0) => irq_gen_reg_i_19_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_19_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_41_n_0,
      S(0) => irq_gen_i_42_n_0
    );
irq_gen_reg_i_23: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_23_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int1490_in,
      CO(0) => irq_gen_reg_i_23_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_23_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_43_n_0,
      S(0) => irq_gen_i_44_n_0
    );
irq_gen_reg_i_24: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_24_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int1692_in,
      CO(0) => irq_gen_reg_i_24_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_24_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_45_n_0,
      S(0) => irq_gen_i_46_n_0
    );
irq_gen_reg_i_25: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_25_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int278_in,
      CO(0) => irq_gen_reg_i_25_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_25_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_47_n_0,
      S(0) => irq_gen_i_48_n_0
    );
irq_gen_reg_i_26: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_26_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int480_in,
      CO(0) => irq_gen_reg_i_26_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_26_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_49_n_0,
      S(0) => irq_gen_i_50_n_0
    );
irq_gen_reg_i_27: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_27_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int682_in,
      CO(0) => irq_gen_reg_i_27_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_27_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_51_n_0,
      S(0) => irq_gen_i_52_n_0
    );
irq_gen_reg_i_28: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_28_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int1086_in,
      CO(0) => irq_gen_reg_i_28_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_28_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_53_n_0,
      S(0) => irq_gen_i_54_n_0
    );
irq_gen_reg_i_29: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_29_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int1288_in,
      CO(0) => irq_gen_reg_i_29_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_29_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_55_n_0,
      S(0) => irq_gen_i_56_n_0
    );
irq_gen_reg_i_30: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_30_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int884_in,
      CO(0) => irq_gen_reg_i_30_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_30_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_57_n_0,
      S(0) => irq_gen_i_58_n_0
    );
irq_gen_reg_i_37: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_37_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int2096_in,
      CO(0) => irq_gen_reg_i_37_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_37_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_59_n_0,
      S(0) => irq_gen_i_60_n_0
    );
irq_gen_reg_i_38: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_38_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int1894_in,
      CO(0) => irq_gen_reg_i_38_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_38_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_61_n_0,
      S(0) => irq_gen_i_62_n_0
    );
irq_gen_reg_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => NLW_irq_gen_reg_i_7_CO_UNCONNECTED(3 downto 2),
      CO(1) => irq_gen_int30106_in,
      CO(0) => irq_gen_reg_i_7_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_irq_gen_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => irq_gen_i_20_n_0,
      S(0) => irq_gen_i_21_n_0
    );
\mer_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[0]_0\,
      R => \^sr\(0)
    );
\mer_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_15,
      Q => \^p_0_in\,
      R => \^sr\(0)
    );
\s_axi_rdata_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => \REG_GEN[0].isr_reg_n_0_[0]\,
      I1 => \bus2ip_addr_i_reg[5]_1\(0),
      I2 => ipr(0),
      I3 => \bus2ip_addr_i_reg[5]_1\(1),
      I4 => \REG_GEN[0].ier_reg_n_0_[0]\,
      I5 => \bus2ip_addr_i_reg[4]\,
      O => \s_axi_rdata_i_reg[0]\
    );
\s_axi_rdata_i[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in124_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(10),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in125_in,
      O => \s_axi_rdata_i_reg[10]\
    );
\s_axi_rdata_i[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in121_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(11),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in122_in,
      O => \s_axi_rdata_i_reg[11]\
    );
\s_axi_rdata_i[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in118_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(12),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in119_in,
      O => \s_axi_rdata_i_reg[12]\
    );
\s_axi_rdata_i[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in115_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(13),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in116_in,
      O => \s_axi_rdata_i_reg[13]\
    );
\s_axi_rdata_i[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in112_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(14),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in113_in,
      O => \s_axi_rdata_i_reg[14]\
    );
\s_axi_rdata_i[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in109_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(15),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in110_in,
      O => \s_axi_rdata_i_reg[15]_0\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33E200E200000000"
    )
        port map (
      I0 => p_1_in152_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(0),
      I2 => ipr(1),
      I3 => \bus2ip_addr_i_reg[5]_1\(1),
      I4 => p_0_in151_in,
      I5 => \bus2ip_addr_i_reg[4]\,
      O => \s_axi_rdata_i_reg[1]\
    );
\s_axi_rdata_i[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AE00"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_5_n_0\,
      I1 => ilr(5),
      I2 => \bus2ip_addr_i_reg[5]\,
      I3 => \bus2ip_addr_i_reg[7]\,
      O => \^s_axi_rdata_i_reg[31]\
    );
\s_axi_rdata_i[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[5]_0\,
      I1 => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(3),
      I2 => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(0),
      I3 => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(4),
      I4 => \^ivar_index_sync_on_axi_clk_gen.ivar_index_axi_clk_reg[4]_0\(1),
      O => \s_axi_rdata_i[31]_i_5_n_0\
    );
\s_axi_rdata_i[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in139_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(5),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in140_in,
      O => \s_axi_rdata_i_reg[5]\
    );
\s_axi_rdata_i[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in136_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(6),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in137_in,
      O => \s_axi_rdata_i_reg[6]\
    );
\s_axi_rdata_i[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in133_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(7),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in134_in,
      O => \s_axi_rdata_i_reg[7]\
    );
\s_axi_rdata_i[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in130_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(8),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in131_in,
      O => \s_axi_rdata_i_reg[8]\
    );
\s_axi_rdata_i[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in127_in,
      I1 => \bus2ip_addr_i_reg[5]_1\(1),
      I2 => ipr(9),
      I3 => \bus2ip_addr_i_reg[5]_1\(0),
      I4 => p_1_in128_in,
      O => \s_axi_rdata_i_reg[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_slave_attachment\ is
  port (
    p_17_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\ : out STD_LOGIC;
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\ : out STD_LOGIC;
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\ : out STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \REG_GEN[1].ier_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[5]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]_1\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]_1\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[4]_0\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\ : out STD_LOGIC;
    \mer_int_reg[0]\ : out STD_LOGIC;
    \mer_int_reg[1]\ : out STD_LOGIC;
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\ : out STD_LOGIC;
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\ : out STD_LOGIC;
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\ : out STD_LOGIC;
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\ : out STD_LOGIC;
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ : out STD_LOGIC;
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\ : out STD_LOGIC;
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ : out STD_LOGIC;
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\ : out STD_LOGIC;
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ : out STD_LOGIC;
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\ : out STD_LOGIC;
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ : out STD_LOGIC;
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\ : out STD_LOGIC;
    p_0_in2_out : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    p_0_in20_out : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in67_in : in STD_LOGIC;
    p_0_in70_in : in STD_LOGIC;
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \Douta_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ILR_GEN.ilr_reg[5]\ : in STD_LOGIC;
    \ILR_GEN.ilr_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \IVR_GEN.ivr_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \REG_GEN[1].isr_reg[1]\ : in STD_LOGIC;
    p_0_in73_in : in STD_LOGIC;
    \REG_GEN[0].isr_reg[0]\ : in STD_LOGIC;
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\ : in STD_LOGIC;
    \REG_GEN[15].ier_reg[15]\ : in STD_LOGIC;
    p_0_in34_in : in STD_LOGIC;
    \REG_GEN[14].ier_reg[14]\ : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    \REG_GEN[13].ier_reg[13]\ : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    \REG_GEN[12].ier_reg[12]\ : in STD_LOGIC;
    p_0_in43_in : in STD_LOGIC;
    \REG_GEN[11].ier_reg[11]\ : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    \REG_GEN[10].ier_reg[10]\ : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    \REG_GEN[9].ier_reg[9]\ : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    \REG_GEN[8].ier_reg[8]\ : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    \REG_GEN[7].ier_reg[7]\ : in STD_LOGIC;
    p_0_in58_in : in STD_LOGIC;
    \REG_GEN[6].ier_reg[6]\ : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    \REG_GEN[5].ier_reg[5]\ : in STD_LOGIC;
    p_1_in149_in : in STD_LOGIC;
    \IPR_GEN.ipr_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in148_in : in STD_LOGIC;
    p_1_in146_in : in STD_LOGIC;
    p_0_in145_in : in STD_LOGIC;
    p_1_in143_in : in STD_LOGIC;
    p_0_in142_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \mer_int_reg[0]_0\ : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ : in STD_LOGIC;
    p_0_in375_in : in STD_LOGIC;
    p_0_in364_in : in STD_LOGIC;
    p_0_in353_in : in STD_LOGIC;
    p_0_in342_in : in STD_LOGIC;
    p_0_in331_in : in STD_LOGIC;
    p_0_in320_in : in STD_LOGIC;
    p_0_in309_in : in STD_LOGIC;
    p_0_in298_in : in STD_LOGIC;
    p_0_in287_in : in STD_LOGIC;
    p_0_in276_in : in STD_LOGIC;
    p_0_in265_in : in STD_LOGIC;
    p_0_in254_in : in STD_LOGIC;
    p_0_in243_in : in STD_LOGIC;
    p_0_in232_in : in STD_LOGIC;
    p_0_in221_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : in STD_LOGIC;
    p_0_in140_in : in STD_LOGIC;
    p_0_in138_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ : in STD_LOGIC;
    p_0_in134_in : in STD_LOGIC;
    p_0_in132_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ : in STD_LOGIC;
    p_0_in128_in : in STD_LOGIC;
    p_0_in126_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ : in STD_LOGIC;
    p_0_in122_in : in STD_LOGIC;
    p_0_in120_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ : in STD_LOGIC;
    p_0_in116_in : in STD_LOGIC;
    p_0_in114_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end \top_axi_pcie_intc_0_0_slave_attachment\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_slave_attachment\ is
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal I_DECODER_n_10 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i06_out : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal ip2bus_error : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal s_axi_rdata_i : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[10]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[13]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[14]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[2]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[9]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[2]_0\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[2]_1\ : STD_LOGIC;
  signal \^s_axi_rdata_i_reg[4]_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of bus2ip_rnw_i_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[2]_i_4\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_6\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[4]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair25";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  \s_axi_rdata_i_reg[2]_0\ <= \^s_axi_rdata_i_reg[2]_0\;
  \s_axi_rdata_i_reg[2]_1\ <= \^s_axi_rdata_i_reg[2]_1\;
  \s_axi_rdata_i_reg[4]_0\ <= \^s_axi_rdata_i_reg[4]_0\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
I_DECODER: entity work.\top_axi_pcie_intc_0_0_address_decoder\
     port map (
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\,
      \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\ => \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\ => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\,
      \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\ => \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\ => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\ => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\,
      \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\ => \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\ => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\,
      \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\ => \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\ => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\,
      D(15 downto 0) => IP2Bus_Data(15 downto 0),
      \Douta_reg[15]\(15 downto 0) => \Douta_reg[15]\(15 downto 0),
      \GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]_0\ => I_DECODER_n_10,
      \ILR_GEN.ilr_reg[3]\ => \s_axi_rdata_i[3]_i_3_n_0\,
      \ILR_GEN.ilr_reg[4]\ => \s_axi_rdata_i[4]_i_3_n_0\,
      \ILR_GEN.ilr_reg[5]\ => \ILR_GEN.ilr_reg[5]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3 downto 0),
      \IVR_GEN.ivr_reg[1]\ => \s_axi_rdata_i[1]_i_2_n_0\,
      Q => start2,
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ => \s_axi_rdata_i[0]_i_3_n_0\,
      \REG_GEN[0].isr_reg[0]\ => \REG_GEN[0].isr_reg[0]\,
      \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\ => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\,
      \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]\ => \s_axi_rdata_i[10]_i_2_n_0\,
      \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\,
      \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]\ => \s_axi_rdata_i[11]_i_2_n_0\,
      \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\ => \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\,
      \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]\ => \s_axi_rdata_i[12]_i_2_n_0\,
      \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\ => \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\,
      \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]\ => \s_axi_rdata_i[13]_i_2_n_0\,
      \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\ => \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\,
      \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]\ => \s_axi_rdata_i[14]_i_2_n_0\,
      \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\ => \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\,
      \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\ => \s_axi_rdata_i[15]_i_2_n_0\,
      \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\ => \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\,
      \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\ => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\,
      \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]\ => \s_axi_rdata_i[1]_i_3_n_0\,
      \REG_GEN[1].ier_reg[1]\ => \REG_GEN[1].ier_reg[1]\,
      \REG_GEN[1].isr_reg[1]\ => \REG_GEN[1].isr_reg[1]\,
      \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\ => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\,
      \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]\ => \s_axi_rdata_i[2]_i_2_n_0\,
      \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\ => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\,
      \REG_GEN[3].isr_reg[3]\ => \s_axi_rdata_i[3]_i_2_n_0\,
      \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\ => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\,
      \REG_GEN[4].isr_reg[4]\ => \s_axi_rdata_i[4]_i_2_n_0\,
      \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\,
      \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]\ => \s_axi_rdata_i[5]_i_2_n_0\,
      \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\ => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\,
      \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]\ => \s_axi_rdata_i[6]_i_2_n_0\,
      \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\,
      \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]\ => \s_axi_rdata_i[7]_i_2_n_0\,
      \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\ => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\,
      \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]\ => \s_axi_rdata_i[8]_i_2_n_0\,
      \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\,
      \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]\ => \s_axi_rdata_i[9]_i_2_n_0\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\,
      \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\ => \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\,
      \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\ => \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\,
      \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\ => \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\,
      \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\ => \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\,
      \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\ => \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\,
      \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\ => \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\,
      \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\ => \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\,
      \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\ => \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\,
      \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\ => \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\,
      \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\ => \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\,
      \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\ => \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\,
      \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\ => \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\,
      \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\ => \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\,
      \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\ => \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\,
      \bus2ip_addr_i_reg[8]\(6 downto 4) => bus2ip_addr(8 downto 6),
      \bus2ip_addr_i_reg[8]\(3 downto 0) => \^q\(3 downto 0),
      bus2ip_rnw_i_reg => bus2ip_rnw_i_reg_n_0,
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      \mer_int_reg[0]_0\ => \s_axi_rdata_i[0]_i_2_n_0\,
      \mer_int_reg[0]_1\ => \mer_int_reg[0]_0\,
      \mer_int_reg[1]\ => \mer_int_reg[1]\,
      p_0_in => p_0_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in116_in => p_0_in116_in,
      p_0_in120_in => p_0_in120_in,
      p_0_in122_in => p_0_in122_in,
      p_0_in126_in => p_0_in126_in,
      p_0_in128_in => p_0_in128_in,
      p_0_in132_in => p_0_in132_in,
      p_0_in134_in => p_0_in134_in,
      p_0_in138_in => p_0_in138_in,
      p_0_in140_in => p_0_in140_in,
      p_0_in20_out => p_0_in20_out,
      p_0_in221_in => p_0_in221_in,
      p_0_in232_in => p_0_in232_in,
      p_0_in243_in => p_0_in243_in,
      p_0_in254_in => p_0_in254_in,
      p_0_in265_in => p_0_in265_in,
      p_0_in276_in => p_0_in276_in,
      p_0_in287_in => p_0_in287_in,
      p_0_in298_in => p_0_in298_in,
      p_0_in2_out => p_0_in2_out,
      p_0_in309_in => p_0_in309_in,
      p_0_in320_in => p_0_in320_in,
      p_0_in331_in => p_0_in331_in,
      p_0_in342_in => p_0_in342_in,
      p_0_in34_in => p_0_in34_in,
      p_0_in353_in => p_0_in353_in,
      p_0_in364_in => p_0_in364_in,
      p_0_in375_in => p_0_in375_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in70_in => p_0_in70_in,
      p_0_in73_in => p_0_in73_in,
      p_17_in => p_17_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_axi_rdata_i_reg[5]\ => \s_axi_rdata_i_reg[5]_0\,
      \s_axi_rdata_i_reg[5]_0\ => \s_axi_rdata_i_reg[5]_1\,
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0)
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(0),
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(1),
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(2),
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(3),
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(4),
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(5),
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_arvalid,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_awaddr(6),
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^q\(0),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^q\(1),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => \^q\(2),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => \^q\(3),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => bus2ip_addr(6),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => bus2ip_addr(7),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => bus2ip_addr(8),
      R => rst
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(0),
      I2 => state(1),
      O => bus2ip_rnw_i06_out
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => bus2ip_rnw_i06_out,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => state(1),
      I2 => is_write,
      I3 => is_read,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA80808055555555"
    )
        port map (
      I0 => state(0),
      I1 => \^s_axi_rvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_bvalid\,
      I4 => s_axi_bready,
      I5 => state(1),
      O => is_write
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008FFFF00080000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => is_write,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SR(0),
      Q => rst,
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I5 => is_read,
      O => \^s_axi_arready\
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => ip2bus_error,
      I1 => state(1),
      I2 => state(0),
      I3 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550C00"
    )
        port map (
      I0 => s_axi_bready,
      I1 => state(1),
      I2 => state(0),
      I3 => \^s_axi_wready\,
      I4 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5FFF3FFF"
    )
        port map (
      I0 => \mer_int_reg[0]_0\,
      I1 => \IVR_GEN.ivr_reg[4]\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000800000008"
    )
        port map (
      I0 => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \ILR_GEN.ilr_reg[4]\(0),
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in46_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[10].ier_reg[10]\,
      O => \s_axi_rdata_i[10]_i_2_n_0\
    );
\s_axi_rdata_i[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in43_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[11].ier_reg[11]\,
      O => \s_axi_rdata_i[11]_i_2_n_0\
    );
\s_axi_rdata_i[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in40_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[12].ier_reg[12]\,
      O => \s_axi_rdata_i[12]_i_2_n_0\
    );
\s_axi_rdata_i[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in37_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[13].ier_reg[13]\,
      O => \s_axi_rdata_i[13]_i_2_n_0\
    );
\s_axi_rdata_i[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in34_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[14].ier_reg[14]\,
      O => \s_axi_rdata_i[14]_i_2_n_0\
    );
\s_axi_rdata_i[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[15].ier_reg[15]\,
      O => \s_axi_rdata_i[15]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF3F7FFF7F"
    )
        port map (
      I0 => \IVR_GEN.ivr_reg[4]\(1),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => p_0_in,
      I5 => \^q\(3),
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000800000008"
    )
        port map (
      I0 => p_0_in73_in,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \ILR_GEN.ilr_reg[4]\(1),
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022202200002022"
    )
        port map (
      I0 => \s_axi_rdata_i[2]_i_3_n_0\,
      I1 => \^s_axi_rdata_i_reg[2]_1\,
      I2 => I_DECODER_n_10,
      I3 => p_0_in70_in,
      I4 => \ILR_GEN.ilr_reg[4]\(2),
      I5 => \^s_axi_rdata_i_reg[2]_0\,
      O => \s_axi_rdata_i[2]_i_2_n_0\
    );
\s_axi_rdata_i[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[4]_0\,
      I1 => p_1_in149_in,
      I2 => \^q\(0),
      I3 => \IPR_GEN.ipr_reg[4]\(0),
      I4 => \^q\(1),
      I5 => p_0_in148_in,
      O => \s_axi_rdata_i[2]_i_3_n_0\
    );
\s_axi_rdata_i[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \IVR_GEN.ivr_reg[4]\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \^s_axi_rdata_i_reg[2]_1\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axi_rdata_i
    );
\s_axi_rdata_i[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \^s_axi_rdata_i_reg[2]_0\
    );
\s_axi_rdata_i[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[4]_0\,
      I1 => p_1_in146_in,
      I2 => \^q\(0),
      I3 => \IPR_GEN.ipr_reg[4]\(1),
      I4 => \^q\(1),
      I5 => p_0_in145_in,
      O => \s_axi_rdata_i[3]_i_2_n_0\
    );
\s_axi_rdata_i[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[2]_0\,
      I1 => \ILR_GEN.ilr_reg[4]\(3),
      I2 => p_0_in67_in,
      I3 => I_DECODER_n_10,
      I4 => \IVR_GEN.ivr_reg[4]\(3),
      I5 => \s_axi_rdata_i[4]_i_5_n_0\,
      O => \s_axi_rdata_i[3]_i_3_n_0\
    );
\s_axi_rdata_i[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F557F7FFFF57F7"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[4]_0\,
      I1 => p_1_in143_in,
      I2 => \^q\(0),
      I3 => \IPR_GEN.ipr_reg[4]\(2),
      I4 => \^q\(1),
      I5 => p_0_in142_in,
      O => \s_axi_rdata_i[4]_i_2_n_0\
    );
\s_axi_rdata_i[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^s_axi_rdata_i_reg[2]_0\,
      I1 => \ILR_GEN.ilr_reg[4]\(4),
      I2 => p_0_in64_in,
      I3 => I_DECODER_n_10,
      I4 => \IVR_GEN.ivr_reg[4]\(4),
      I5 => \s_axi_rdata_i[4]_i_5_n_0\,
      O => \s_axi_rdata_i[4]_i_3_n_0\
    );
\s_axi_rdata_i[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \^s_axi_rdata_i_reg[4]_0\
    );
\s_axi_rdata_i[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \s_axi_rdata_i[4]_i_5_n_0\
    );
\s_axi_rdata_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in61_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[5].ier_reg[5]\,
      O => \s_axi_rdata_i[5]_i_2_n_0\
    );
\s_axi_rdata_i[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in58_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[6].ier_reg[6]\,
      O => \s_axi_rdata_i[6]_i_2_n_0\
    );
\s_axi_rdata_i[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in55_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[7].ier_reg[7]\,
      O => \s_axi_rdata_i[7]_i_2_n_0\
    );
\s_axi_rdata_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in52_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[8].ier_reg[8]\,
      O => \s_axi_rdata_i[8]_i_2_n_0\
    );
\s_axi_rdata_i[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFF00FFFDFFFF"
    )
        port map (
      I0 => p_0_in49_in,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \REG_GEN[9].ier_reg[9]\,
      O => \s_axi_rdata_i[9]_i_2_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(10),
      Q => s_axi_rdata(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(11),
      Q => s_axi_rdata(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(12),
      Q => s_axi_rdata(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(13),
      Q => s_axi_rdata(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(14),
      Q => s_axi_rdata(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(15),
      Q => s_axi_rdata(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(0),
      Q => s_axi_rdata(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(1),
      Q => s_axi_rdata(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(2),
      Q => s_axi_rdata(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(3),
      Q => s_axi_rdata(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(4),
      Q => s_axi_rdata(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(5),
      Q => s_axi_rdata(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(6),
      Q => s_axi_rdata(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(7),
      Q => s_axi_rdata(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(8),
      Q => s_axi_rdata(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(9),
      Q => s_axi_rdata(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(10),
      Q => s_axi_rdata(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(11),
      Q => s_axi_rdata(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(12),
      Q => s_axi_rdata(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(13),
      Q => s_axi_rdata(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(2),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(14),
      Q => s_axi_rdata(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => D(15),
      Q => s_axi_rdata(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(3),
      Q => s_axi_rdata(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(4),
      Q => s_axi_rdata(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(5),
      Q => s_axi_rdata(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(6),
      Q => s_axi_rdata(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(7),
      Q => s_axi_rdata(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(8),
      Q => s_axi_rdata(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => IP2Bus_Data(9),
      Q => s_axi_rdata(9),
      R => rst
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F0F0F"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => s_axi_wstrb(2),
      I2 => bus2ip_rnw_i_reg_n_0,
      I3 => s_axi_wstrb(0),
      I4 => s_axi_wstrb(3),
      O => ip2bus_error
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rdata_i,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550C00"
    )
        port map (
      I0 => s_axi_rready,
      I1 => state(0),
      I2 => state(1),
      I3 => \^s_axi_arready\,
      I4 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => ip2bus_wrack,
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I5 => is_write_reg_n_0,
      O => \^s_axi_wready\
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0008"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axi_arvalid,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F2CEFEC"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_arvalid,
      I4 => \state[0]_i_2_n_0\,
      O => \state[0]_i_1_n_0\
    );
\state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2F2C"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => state(1),
      I2 => state(0),
      I3 => \state[1]_i_2_n_0\,
      I4 => \state[1]_i_3_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A2A2A"
    )
        port map (
      I0 => state(1),
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_axi_lite_ipif\ is
  port (
    p_17_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\ : out STD_LOGIC;
    \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\ : out STD_LOGIC;
    \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\ : out STD_LOGIC;
    \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \REG_GEN[1].ier_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_axi_rdata_i_reg[5]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[5]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[2]_0\ : out STD_LOGIC;
    \s_axi_rdata_i_reg[4]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\ : out STD_LOGIC;
    \mer_int_reg[0]\ : out STD_LOGIC;
    \mer_int_reg[1]\ : out STD_LOGIC;
    \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\ : out STD_LOGIC;
    \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\ : out STD_LOGIC;
    \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\ : out STD_LOGIC;
    \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\ : out STD_LOGIC;
    \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ : out STD_LOGIC;
    \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\ : out STD_LOGIC;
    \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ : out STD_LOGIC;
    \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\ : out STD_LOGIC;
    \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ : out STD_LOGIC;
    \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\ : out STD_LOGIC;
    \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ : out STD_LOGIC;
    \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\ : out STD_LOGIC;
    p_0_in2_out : out STD_LOGIC;
    ip2bus_wrack_prev2 : out STD_LOGIC;
    ip2bus_rdack_prev2 : out STD_LOGIC;
    p_0_in20_out : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    p_0_in64_in : in STD_LOGIC;
    p_0_in67_in : in STD_LOGIC;
    p_0_in70_in : in STD_LOGIC;
    \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \Douta_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ILR_GEN.ilr_reg[5]\ : in STD_LOGIC;
    \ILR_GEN.ilr_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \IVR_GEN.ivr_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \REG_GEN[1].isr_reg[1]\ : in STD_LOGIC;
    p_0_in73_in : in STD_LOGIC;
    \REG_GEN[0].isr_reg[0]\ : in STD_LOGIC;
    \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\ : in STD_LOGIC;
    \REG_GEN[15].ier_reg[15]\ : in STD_LOGIC;
    p_0_in34_in : in STD_LOGIC;
    \REG_GEN[14].ier_reg[14]\ : in STD_LOGIC;
    p_0_in37_in : in STD_LOGIC;
    \REG_GEN[13].ier_reg[13]\ : in STD_LOGIC;
    p_0_in40_in : in STD_LOGIC;
    \REG_GEN[12].ier_reg[12]\ : in STD_LOGIC;
    p_0_in43_in : in STD_LOGIC;
    \REG_GEN[11].ier_reg[11]\ : in STD_LOGIC;
    p_0_in46_in : in STD_LOGIC;
    \REG_GEN[10].ier_reg[10]\ : in STD_LOGIC;
    p_0_in49_in : in STD_LOGIC;
    \REG_GEN[9].ier_reg[9]\ : in STD_LOGIC;
    p_0_in52_in : in STD_LOGIC;
    \REG_GEN[8].ier_reg[8]\ : in STD_LOGIC;
    p_0_in55_in : in STD_LOGIC;
    \REG_GEN[7].ier_reg[7]\ : in STD_LOGIC;
    p_0_in58_in : in STD_LOGIC;
    \REG_GEN[6].ier_reg[6]\ : in STD_LOGIC;
    p_0_in61_in : in STD_LOGIC;
    \REG_GEN[5].ier_reg[5]\ : in STD_LOGIC;
    p_1_in149_in : in STD_LOGIC;
    \IPR_GEN.ipr_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_0_in148_in : in STD_LOGIC;
    p_1_in146_in : in STD_LOGIC;
    p_0_in145_in : in STD_LOGIC;
    p_1_in143_in : in STD_LOGIC;
    p_0_in142_in : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    \mer_int_reg[0]_0\ : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : in STD_LOGIC;
    p_0_in375_in : in STD_LOGIC;
    p_0_in364_in : in STD_LOGIC;
    p_0_in353_in : in STD_LOGIC;
    p_0_in342_in : in STD_LOGIC;
    p_0_in331_in : in STD_LOGIC;
    p_0_in320_in : in STD_LOGIC;
    p_0_in309_in : in STD_LOGIC;
    p_0_in298_in : in STD_LOGIC;
    p_0_in287_in : in STD_LOGIC;
    p_0_in276_in : in STD_LOGIC;
    p_0_in265_in : in STD_LOGIC;
    p_0_in254_in : in STD_LOGIC;
    p_0_in243_in : in STD_LOGIC;
    p_0_in232_in : in STD_LOGIC;
    p_0_in221_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : in STD_LOGIC;
    p_0_in140_in : in STD_LOGIC;
    p_0_in138_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ : in STD_LOGIC;
    p_0_in134_in : in STD_LOGIC;
    p_0_in132_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ : in STD_LOGIC;
    p_0_in128_in : in STD_LOGIC;
    p_0_in126_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ : in STD_LOGIC;
    p_0_in122_in : in STD_LOGIC;
    p_0_in120_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ : in STD_LOGIC;
    p_0_in116_in : in STD_LOGIC;
    p_0_in114_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC
  );
end \top_axi_pcie_intc_0_0_axi_lite_ipif\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_axi_lite_ipif\ is
begin
I_SLAVE_ATTACHMENT: entity work.\top_axi_pcie_intc_0_0_slave_attachment\
     port map (
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\,
      \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\ => \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ => \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\ => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ => \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\,
      \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\ => \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ => \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\ => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ => \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ => \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\ => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ => \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\,
      \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\ => \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ => \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\ => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ => \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\,
      \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\ => \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ => \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\ => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ => \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\,
      D(15 downto 0) => D(15 downto 0),
      \Douta_reg[15]\(15 downto 0) => \Douta_reg[15]\(15 downto 0),
      \ILR_GEN.ilr_reg[4]\(4 downto 0) => \ILR_GEN.ilr_reg[4]\(4 downto 0),
      \ILR_GEN.ilr_reg[5]\ => \ILR_GEN.ilr_reg[5]\,
      \IPR_GEN.ipr_reg[4]\(2 downto 0) => \IPR_GEN.ipr_reg[4]\(2 downto 0),
      \IVR_GEN.ivr_reg[4]\(4 downto 0) => \IVR_GEN.ivr_reg[4]\(4 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ => \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\,
      \REG_GEN[0].isr_reg[0]\ => \REG_GEN[0].isr_reg[0]\,
      \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\ => \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\,
      \REG_GEN[10].ier_reg[10]\ => \REG_GEN[10].ier_reg[10]\,
      \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ => \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\,
      \REG_GEN[11].ier_reg[11]\ => \REG_GEN[11].ier_reg[11]\,
      \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\ => \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\,
      \REG_GEN[12].ier_reg[12]\ => \REG_GEN[12].ier_reg[12]\,
      \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\ => \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\,
      \REG_GEN[13].ier_reg[13]\ => \REG_GEN[13].ier_reg[13]\,
      \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\ => \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\,
      \REG_GEN[14].ier_reg[14]\ => \REG_GEN[14].ier_reg[14]\,
      \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\ => \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\,
      \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\ => \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\,
      \REG_GEN[15].ier_reg[15]\ => \REG_GEN[15].ier_reg[15]\,
      \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\ => \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\,
      \REG_GEN[1].ier_reg[1]\ => \REG_GEN[1].ier_reg[1]\,
      \REG_GEN[1].isr_reg[1]\ => \REG_GEN[1].isr_reg[1]\,
      \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\ => \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\,
      \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\ => \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\,
      \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\ => \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\,
      \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ => \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\,
      \REG_GEN[5].ier_reg[5]\ => \REG_GEN[5].ier_reg[5]\,
      \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\ => \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\,
      \REG_GEN[6].ier_reg[6]\ => \REG_GEN[6].ier_reg[6]\,
      \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ => \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\,
      \REG_GEN[7].ier_reg[7]\ => \REG_GEN[7].ier_reg[7]\,
      \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\ => \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\,
      \REG_GEN[8].ier_reg[8]\ => \REG_GEN[8].ier_reg[8]\,
      \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ => \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\,
      \REG_GEN[9].ier_reg[9]\ => \REG_GEN[9].ier_reg[9]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => Bus_RNW_reg,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_1\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\,
      \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\ => \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\,
      \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\ => \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\,
      \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\ => \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\,
      \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\ => \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\,
      \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\ => \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\,
      \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\ => \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\,
      \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\ => \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\,
      \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\ => \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\,
      \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\ => \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\,
      \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\ => \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\,
      \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\ => \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\,
      \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\ => \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\,
      \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\ => \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\,
      \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\ => \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\,
      SR(0) => SR(0),
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      \mer_int_reg[0]_0\ => \mer_int_reg[0]_0\,
      \mer_int_reg[1]\ => \mer_int_reg[1]\,
      p_0_in => p_0_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in116_in => p_0_in116_in,
      p_0_in120_in => p_0_in120_in,
      p_0_in122_in => p_0_in122_in,
      p_0_in126_in => p_0_in126_in,
      p_0_in128_in => p_0_in128_in,
      p_0_in132_in => p_0_in132_in,
      p_0_in134_in => p_0_in134_in,
      p_0_in138_in => p_0_in138_in,
      p_0_in140_in => p_0_in140_in,
      p_0_in142_in => p_0_in142_in,
      p_0_in145_in => p_0_in145_in,
      p_0_in148_in => p_0_in148_in,
      p_0_in20_out => p_0_in20_out,
      p_0_in221_in => p_0_in221_in,
      p_0_in232_in => p_0_in232_in,
      p_0_in243_in => p_0_in243_in,
      p_0_in254_in => p_0_in254_in,
      p_0_in265_in => p_0_in265_in,
      p_0_in276_in => p_0_in276_in,
      p_0_in287_in => p_0_in287_in,
      p_0_in298_in => p_0_in298_in,
      p_0_in2_out => p_0_in2_out,
      p_0_in309_in => p_0_in309_in,
      p_0_in320_in => p_0_in320_in,
      p_0_in331_in => p_0_in331_in,
      p_0_in342_in => p_0_in342_in,
      p_0_in34_in => p_0_in34_in,
      p_0_in353_in => p_0_in353_in,
      p_0_in364_in => p_0_in364_in,
      p_0_in375_in => p_0_in375_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in70_in => p_0_in70_in,
      p_0_in73_in => p_0_in73_in,
      p_17_in => p_17_in,
      p_1_in143_in => p_1_in143_in,
      p_1_in146_in => p_1_in146_in,
      p_1_in149_in => p_1_in149_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i_reg[2]_0\ => \s_axi_rdata_i_reg[2]\,
      \s_axi_rdata_i_reg[2]_1\ => \s_axi_rdata_i_reg[2]_0\,
      \s_axi_rdata_i_reg[4]_0\ => \s_axi_rdata_i_reg[4]\,
      \s_axi_rdata_i_reg[5]_0\ => \s_axi_rdata_i_reg[5]\,
      \s_axi_rdata_i_reg[5]_1\ => \s_axi_rdata_i_reg[5]_0\,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_axi_intc\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_in : in STD_LOGIC;
    interrupt_address_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    processor_ack_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of \top_axi_pcie_intc_0_0_axi_intc\ : entity is -1;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "virtex7";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "axi_intc_inst";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 0;
  attribute C_IVAR_RESET_VALUE : integer;
  attribute C_IVAR_RESET_VALUE of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 0;
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of \top_axi_pcie_intc_0_0_axi_intc\ : entity is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of \top_axi_pcie_intc_0_0_axi_intc\ : entity is -1;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of \top_axi_pcie_intc_0_0_axi_intc\ : entity is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 8;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 8;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of \top_axi_pcie_intc_0_0_axi_intc\ : entity is 32;
  attribute hdl : string;
  attribute hdl of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "TRUE";
  attribute ip_group : string;
  attribute ip_group of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "LOGICORE";
  attribute iptype : string;
  attribute iptype of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "TRUE";
  attribute style : string;
  attribute style of \top_axi_pcie_intc_0_0_axi_intc\ : entity is "HDL";
end \top_axi_pcie_intc_0_0_axi_intc\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_axi_intc\ is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_21 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_22 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_23 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_24 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_25 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_26 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_27 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_28 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_29 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_30 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_31 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_32 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_33 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_34 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_35 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_36 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_37 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_38 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_39 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_40 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_41 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_42 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_43 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_44 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_45 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_46 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_47 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_48 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_49 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_50 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_51 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_52 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_53 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_54 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_55 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_56 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_57 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_58 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_59 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_6 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_60 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_61 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_62 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_63 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_64 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_65 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_66 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_67 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_68 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_69 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_7 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_70 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_8 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal Douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal INTC_CORE_I_n_0 : STD_LOGIC;
  signal INTC_CORE_I_n_1 : STD_LOGIC;
  signal INTC_CORE_I_n_100 : STD_LOGIC;
  signal INTC_CORE_I_n_101 : STD_LOGIC;
  signal INTC_CORE_I_n_105 : STD_LOGIC;
  signal INTC_CORE_I_n_106 : STD_LOGIC;
  signal INTC_CORE_I_n_107 : STD_LOGIC;
  signal INTC_CORE_I_n_108 : STD_LOGIC;
  signal INTC_CORE_I_n_109 : STD_LOGIC;
  signal INTC_CORE_I_n_110 : STD_LOGIC;
  signal INTC_CORE_I_n_111 : STD_LOGIC;
  signal INTC_CORE_I_n_112 : STD_LOGIC;
  signal INTC_CORE_I_n_113 : STD_LOGIC;
  signal INTC_CORE_I_n_114 : STD_LOGIC;
  signal INTC_CORE_I_n_115 : STD_LOGIC;
  signal INTC_CORE_I_n_116 : STD_LOGIC;
  signal INTC_CORE_I_n_16 : STD_LOGIC;
  signal INTC_CORE_I_n_21 : STD_LOGIC;
  signal INTC_CORE_I_n_37 : STD_LOGIC;
  signal INTC_CORE_I_n_40 : STD_LOGIC;
  signal INTC_CORE_I_n_43 : STD_LOGIC;
  signal INTC_CORE_I_n_46 : STD_LOGIC;
  signal INTC_CORE_I_n_49 : STD_LOGIC;
  signal INTC_CORE_I_n_52 : STD_LOGIC;
  signal INTC_CORE_I_n_53 : STD_LOGIC;
  signal INTC_CORE_I_n_79 : STD_LOGIC;
  signal INTC_CORE_I_n_96 : STD_LOGIC;
  signal INTC_CORE_I_n_97 : STD_LOGIC;
  signal INTC_CORE_I_n_98 : STD_LOGIC;
  signal INTC_CORE_I_n_99 : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\ : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ilr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ip2bus_rdack : STD_LOGIC;
  signal ip2bus_rdack_int_d1 : STD_LOGIC;
  signal ip2bus_rdack_prev2 : STD_LOGIC;
  signal ip2bus_wrack : STD_LOGIC;
  signal ip2bus_wrack_int_d1 : STD_LOGIC;
  signal ip2bus_wrack_prev2 : STD_LOGIC;
  signal ipr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in114_in : STD_LOGIC;
  signal p_0_in116_in : STD_LOGIC;
  signal p_0_in120_in : STD_LOGIC;
  signal p_0_in122_in : STD_LOGIC;
  signal p_0_in126_in : STD_LOGIC;
  signal p_0_in128_in : STD_LOGIC;
  signal p_0_in132_in : STD_LOGIC;
  signal p_0_in134_in : STD_LOGIC;
  signal p_0_in138_in : STD_LOGIC;
  signal p_0_in140_in : STD_LOGIC;
  signal p_0_in142_in : STD_LOGIC;
  signal p_0_in145_in : STD_LOGIC;
  signal p_0_in148_in : STD_LOGIC;
  signal p_0_in20_out : STD_LOGIC;
  signal p_0_in221_in : STD_LOGIC;
  signal p_0_in232_in : STD_LOGIC;
  signal p_0_in243_in : STD_LOGIC;
  signal p_0_in254_in : STD_LOGIC;
  signal p_0_in265_in : STD_LOGIC;
  signal p_0_in276_in : STD_LOGIC;
  signal p_0_in287_in : STD_LOGIC;
  signal p_0_in298_in : STD_LOGIC;
  signal p_0_in2_out : STD_LOGIC;
  signal p_0_in309_in : STD_LOGIC;
  signal p_0_in320_in : STD_LOGIC;
  signal p_0_in331_in : STD_LOGIC;
  signal p_0_in342_in : STD_LOGIC;
  signal p_0_in34_in : STD_LOGIC;
  signal p_0_in353_in : STD_LOGIC;
  signal p_0_in364_in : STD_LOGIC;
  signal p_0_in375_in : STD_LOGIC;
  signal p_0_in37_in : STD_LOGIC;
  signal p_0_in40_in : STD_LOGIC;
  signal p_0_in43_in : STD_LOGIC;
  signal p_0_in46_in : STD_LOGIC;
  signal p_0_in49_in : STD_LOGIC;
  signal p_0_in52_in : STD_LOGIC;
  signal p_0_in55_in : STD_LOGIC;
  signal p_0_in58_in : STD_LOGIC;
  signal p_0_in61_in : STD_LOGIC;
  signal p_0_in64_in : STD_LOGIC;
  signal p_0_in67_in : STD_LOGIC;
  signal p_0_in70_in : STD_LOGIC;
  signal p_0_in73_in : STD_LOGIC;
  signal p_1_in143_in : STD_LOGIC;
  signal p_1_in146_in : STD_LOGIC;
  signal p_1_in149_in : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
begin
  processor_ack_out(1) <= \<const0>\;
  processor_ack_out(0) <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.\top_axi_pcie_intc_0_0_axi_lite_ipif\
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => AXI_LITE_IPIF_I_n_41,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => INTC_CORE_I_n_37,
      \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]\ => AXI_LITE_IPIF_I_n_51,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]\ => AXI_LITE_IPIF_I_n_52,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]\ => AXI_LITE_IPIF_I_n_53,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ => INTC_CORE_I_n_49,
      \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]\ => AXI_LITE_IPIF_I_n_54,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]\ => AXI_LITE_IPIF_I_n_55,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]\ => AXI_LITE_IPIF_I_n_56,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ => INTC_CORE_I_n_52,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ => AXI_LITE_IPIF_I_n_42,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]\ => AXI_LITE_IPIF_I_n_43,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]\ => AXI_LITE_IPIF_I_n_44,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ => INTC_CORE_I_n_40,
      \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]\ => AXI_LITE_IPIF_I_n_45,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]\ => AXI_LITE_IPIF_I_n_46,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]\ => AXI_LITE_IPIF_I_n_47,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ => INTC_CORE_I_n_43,
      \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]\ => AXI_LITE_IPIF_I_n_48,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]\ => AXI_LITE_IPIF_I_n_49,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]\ => AXI_LITE_IPIF_I_n_50,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ => INTC_CORE_I_n_46,
      D(15 downto 0) => IP2Bus_Data(31 downto 16),
      \Douta_reg[15]\(15 downto 0) => Douta(15 downto 0),
      \ILR_GEN.ilr_reg[4]\(4 downto 0) => ilr(4 downto 0),
      \ILR_GEN.ilr_reg[5]\ => INTC_CORE_I_n_79,
      \IPR_GEN.ipr_reg[4]\(2 downto 0) => ipr(4 downto 2),
      \IVR_GEN.ivr_reg[4]\(4) => INTC_CORE_I_n_96,
      \IVR_GEN.ivr_reg[4]\(3) => INTC_CORE_I_n_97,
      \IVR_GEN.ivr_reg[4]\(2) => INTC_CORE_I_n_98,
      \IVR_GEN.ivr_reg[4]\(1) => INTC_CORE_I_n_99,
      \IVR_GEN.ivr_reg[4]\(0) => INTC_CORE_I_n_100,
      Q(3 downto 0) => bus2ip_addr(5 downto 2),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]\ => AXI_LITE_IPIF_I_n_9,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]\ => INTC_CORE_I_n_0,
      \REG_GEN[0].isr_reg[0]\ => INTC_CORE_I_n_116,
      \REG_GEN[10].IAR_FAST_MODE_GEN.iar_reg[10]\ => AXI_LITE_IPIF_I_n_64,
      \REG_GEN[10].ier_reg[10]\ => INTC_CORE_I_n_109,
      \REG_GEN[11].IAR_FAST_MODE_GEN.iar_reg[11]\ => AXI_LITE_IPIF_I_n_63,
      \REG_GEN[11].ier_reg[11]\ => INTC_CORE_I_n_108,
      \REG_GEN[12].IAR_FAST_MODE_GEN.iar_reg[12]\ => AXI_LITE_IPIF_I_n_62,
      \REG_GEN[12].ier_reg[12]\ => INTC_CORE_I_n_107,
      \REG_GEN[13].IAR_FAST_MODE_GEN.iar_reg[13]\ => AXI_LITE_IPIF_I_n_61,
      \REG_GEN[13].ier_reg[13]\ => INTC_CORE_I_n_106,
      \REG_GEN[14].IAR_FAST_MODE_GEN.iar_reg[14]\ => AXI_LITE_IPIF_I_n_60,
      \REG_GEN[14].ier_reg[14]\ => INTC_CORE_I_n_105,
      \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]\ => AXI_LITE_IPIF_I_n_59,
      \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]\ => INTC_CORE_I_n_16,
      \REG_GEN[15].ier_reg[15]\ => INTC_CORE_I_n_101,
      \REG_GEN[1].IAR_FAST_MODE_GEN.iar_reg[1]\ => AXI_LITE_IPIF_I_n_70,
      \REG_GEN[1].ier_reg[1]\ => AXI_LITE_IPIF_I_n_15,
      \REG_GEN[1].isr_reg[1]\ => INTC_CORE_I_n_115,
      \REG_GEN[2].IAR_FAST_MODE_GEN.iar_reg[2]\ => AXI_LITE_IPIF_I_n_8,
      \REG_GEN[3].IAR_FAST_MODE_GEN.iar_reg[3]\ => AXI_LITE_IPIF_I_n_7,
      \REG_GEN[4].IAR_FAST_MODE_GEN.iar_reg[4]\ => AXI_LITE_IPIF_I_n_6,
      \REG_GEN[5].IAR_FAST_MODE_GEN.iar_reg[5]\ => AXI_LITE_IPIF_I_n_69,
      \REG_GEN[5].ier_reg[5]\ => INTC_CORE_I_n_114,
      \REG_GEN[6].IAR_FAST_MODE_GEN.iar_reg[6]\ => AXI_LITE_IPIF_I_n_68,
      \REG_GEN[6].ier_reg[6]\ => INTC_CORE_I_n_113,
      \REG_GEN[7].IAR_FAST_MODE_GEN.iar_reg[7]\ => AXI_LITE_IPIF_I_n_67,
      \REG_GEN[7].ier_reg[7]\ => INTC_CORE_I_n_112,
      \REG_GEN[8].IAR_FAST_MODE_GEN.iar_reg[8]\ => AXI_LITE_IPIF_I_n_66,
      \REG_GEN[8].ier_reg[8]\ => INTC_CORE_I_n_111,
      \REG_GEN[9].IAR_FAST_MODE_GEN.iar_reg[9]\ => AXI_LITE_IPIF_I_n_65,
      \REG_GEN[9].ier_reg[9]\ => INTC_CORE_I_n_110,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => AXI_LITE_IPIF_I_n_25,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => INTC_CORE_I_n_21,
      \SIE_GEN.SIE_BIT_GEN[10].sie_reg[10]\ => AXI_LITE_IPIF_I_n_35,
      \SIE_GEN.SIE_BIT_GEN[11].sie_reg[11]\ => AXI_LITE_IPIF_I_n_36,
      \SIE_GEN.SIE_BIT_GEN[12].sie_reg[12]\ => AXI_LITE_IPIF_I_n_37,
      \SIE_GEN.SIE_BIT_GEN[13].sie_reg[13]\ => AXI_LITE_IPIF_I_n_38,
      \SIE_GEN.SIE_BIT_GEN[14].sie_reg[14]\ => AXI_LITE_IPIF_I_n_39,
      \SIE_GEN.SIE_BIT_GEN[15].sie_reg[15]\ => AXI_LITE_IPIF_I_n_40,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ => AXI_LITE_IPIF_I_n_26,
      \SIE_GEN.SIE_BIT_GEN[2].sie_reg[2]\ => AXI_LITE_IPIF_I_n_27,
      \SIE_GEN.SIE_BIT_GEN[3].sie_reg[3]\ => AXI_LITE_IPIF_I_n_28,
      \SIE_GEN.SIE_BIT_GEN[4].sie_reg[4]\ => AXI_LITE_IPIF_I_n_29,
      \SIE_GEN.SIE_BIT_GEN[5].sie_reg[5]\ => AXI_LITE_IPIF_I_n_30,
      \SIE_GEN.SIE_BIT_GEN[6].sie_reg[6]\ => AXI_LITE_IPIF_I_n_31,
      \SIE_GEN.SIE_BIT_GEN[7].sie_reg[7]\ => AXI_LITE_IPIF_I_n_32,
      \SIE_GEN.SIE_BIT_GEN[8].sie_reg[8]\ => AXI_LITE_IPIF_I_n_33,
      \SIE_GEN.SIE_BIT_GEN[9].sie_reg[9]\ => AXI_LITE_IPIF_I_n_34,
      SR(0) => INTC_CORE_I_n_1,
      bus2ip_wrce(2 downto 1) => bus2ip_wrce(8 downto 7),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_prev2 => ip2bus_rdack_prev2,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_prev2 => ip2bus_wrack_prev2,
      \mer_int_reg[0]\ => AXI_LITE_IPIF_I_n_57,
      \mer_int_reg[0]_0\ => INTC_CORE_I_n_53,
      \mer_int_reg[1]\ => AXI_LITE_IPIF_I_n_58,
      p_0_in => p_0_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in116_in => p_0_in116_in,
      p_0_in120_in => p_0_in120_in,
      p_0_in122_in => p_0_in122_in,
      p_0_in126_in => p_0_in126_in,
      p_0_in128_in => p_0_in128_in,
      p_0_in132_in => p_0_in132_in,
      p_0_in134_in => p_0_in134_in,
      p_0_in138_in => p_0_in138_in,
      p_0_in140_in => p_0_in140_in,
      p_0_in142_in => p_0_in142_in,
      p_0_in145_in => p_0_in145_in,
      p_0_in148_in => p_0_in148_in,
      p_0_in20_out => p_0_in20_out,
      p_0_in221_in => p_0_in221_in,
      p_0_in232_in => p_0_in232_in,
      p_0_in243_in => p_0_in243_in,
      p_0_in254_in => p_0_in254_in,
      p_0_in265_in => p_0_in265_in,
      p_0_in276_in => p_0_in276_in,
      p_0_in287_in => p_0_in287_in,
      p_0_in298_in => p_0_in298_in,
      p_0_in2_out => p_0_in2_out,
      p_0_in309_in => p_0_in309_in,
      p_0_in320_in => p_0_in320_in,
      p_0_in331_in => p_0_in331_in,
      p_0_in342_in => p_0_in342_in,
      p_0_in34_in => p_0_in34_in,
      p_0_in353_in => p_0_in353_in,
      p_0_in364_in => p_0_in364_in,
      p_0_in375_in => p_0_in375_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in70_in => p_0_in70_in,
      p_0_in73_in => p_0_in73_in,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_1_in143_in => p_1_in143_in,
      p_1_in146_in => p_1_in146_in,
      p_1_in149_in => p_1_in149_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      \s_axi_rdata_i_reg[2]\ => AXI_LITE_IPIF_I_n_22,
      \s_axi_rdata_i_reg[2]_0\ => AXI_LITE_IPIF_I_n_23,
      \s_axi_rdata_i_reg[4]\ => AXI_LITE_IPIF_I_n_24,
      \s_axi_rdata_i_reg[5]\ => AXI_LITE_IPIF_I_n_20,
      \s_axi_rdata_i_reg[5]_0\ => AXI_LITE_IPIF_I_n_21,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
INTC_CORE_I: entity work.\top_axi_pcie_intc_0_0_intc_core\
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_25,
      Bus_RNW_reg_reg_0 => AXI_LITE_IPIF_I_n_26,
      Bus_RNW_reg_reg_1 => AXI_LITE_IPIF_I_n_27,
      Bus_RNW_reg_reg_10 => AXI_LITE_IPIF_I_n_36,
      Bus_RNW_reg_reg_11 => AXI_LITE_IPIF_I_n_37,
      Bus_RNW_reg_reg_12 => AXI_LITE_IPIF_I_n_38,
      Bus_RNW_reg_reg_13 => AXI_LITE_IPIF_I_n_39,
      Bus_RNW_reg_reg_14 => AXI_LITE_IPIF_I_n_40,
      Bus_RNW_reg_reg_15 => AXI_LITE_IPIF_I_n_58,
      Bus_RNW_reg_reg_16 => AXI_LITE_IPIF_I_n_15,
      Bus_RNW_reg_reg_2 => AXI_LITE_IPIF_I_n_28,
      Bus_RNW_reg_reg_3 => AXI_LITE_IPIF_I_n_29,
      Bus_RNW_reg_reg_4 => AXI_LITE_IPIF_I_n_30,
      Bus_RNW_reg_reg_5 => AXI_LITE_IPIF_I_n_31,
      Bus_RNW_reg_reg_6 => AXI_LITE_IPIF_I_n_32,
      Bus_RNW_reg_reg_7 => AXI_LITE_IPIF_I_n_33,
      Bus_RNW_reg_reg_8 => AXI_LITE_IPIF_I_n_34,
      Bus_RNW_reg_reg_9 => AXI_LITE_IPIF_I_n_35,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => AXI_LITE_IPIF_I_n_41,
      \CIE_GEN.CIE_BIT_GEN[10].cie_reg[10]_0\ => AXI_LITE_IPIF_I_n_51,
      \CIE_GEN.CIE_BIT_GEN[11].cie_reg[11]_0\ => AXI_LITE_IPIF_I_n_52,
      \CIE_GEN.CIE_BIT_GEN[12].cie_reg[12]_0\ => AXI_LITE_IPIF_I_n_53,
      \CIE_GEN.CIE_BIT_GEN[13].cie_reg[13]_0\ => AXI_LITE_IPIF_I_n_54,
      \CIE_GEN.CIE_BIT_GEN[14].cie_reg[14]_0\ => AXI_LITE_IPIF_I_n_55,
      \CIE_GEN.CIE_BIT_GEN[15].cie_reg[15]_0\ => AXI_LITE_IPIF_I_n_56,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]_0\ => AXI_LITE_IPIF_I_n_42,
      \CIE_GEN.CIE_BIT_GEN[2].cie_reg[2]_0\ => AXI_LITE_IPIF_I_n_43,
      \CIE_GEN.CIE_BIT_GEN[3].cie_reg[3]_0\ => AXI_LITE_IPIF_I_n_44,
      \CIE_GEN.CIE_BIT_GEN[4].cie_reg[4]_0\ => AXI_LITE_IPIF_I_n_45,
      \CIE_GEN.CIE_BIT_GEN[5].cie_reg[5]_0\ => AXI_LITE_IPIF_I_n_46,
      \CIE_GEN.CIE_BIT_GEN[6].cie_reg[6]_0\ => AXI_LITE_IPIF_I_n_47,
      \CIE_GEN.CIE_BIT_GEN[7].cie_reg[7]_0\ => AXI_LITE_IPIF_I_n_48,
      \CIE_GEN.CIE_BIT_GEN[8].cie_reg[8]_0\ => AXI_LITE_IPIF_I_n_49,
      \CIE_GEN.CIE_BIT_GEN[9].cie_reg[9]_0\ => AXI_LITE_IPIF_I_n_50,
      D(15 downto 0) => IP2Bus_Data(31 downto 16),
      \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\ => AXI_LITE_IPIF_I_n_21,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => AXI_LITE_IPIF_I_n_57,
      \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[0]_0\ => INTC_CORE_I_n_53,
      \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0\(4) => INTC_CORE_I_n_96,
      \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0\(3) => INTC_CORE_I_n_97,
      \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0\(2) => INTC_CORE_I_n_98,
      \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0\(1) => INTC_CORE_I_n_99,
      \IVAR_INDEX_SYNC_ON_AXI_CLK_GEN.ivar_index_axi_clk_reg[4]_0\(0) => INTC_CORE_I_n_100,
      Q(4 downto 0) => ilr(4 downto 0),
      \REG_GEN[0].IAR_FAST_MODE_GEN.iar_reg[0]_0\ => INTC_CORE_I_n_0,
      \REG_GEN[0].IMR_FAST_MODE_GEN.imr_reg[0]_0\ => AXI_LITE_IPIF_I_n_9,
      \REG_GEN[0].ier_reg[0]_0\ => INTC_CORE_I_n_21,
      \REG_GEN[0].ier_reg[0]_1\ => INTC_CORE_I_n_37,
      \REG_GEN[10].IMR_FAST_MODE_GEN.imr_reg[10]_0\ => AXI_LITE_IPIF_I_n_64,
      \REG_GEN[11].IMR_FAST_MODE_GEN.imr_reg[11]_0\ => AXI_LITE_IPIF_I_n_63,
      \REG_GEN[12].IMR_FAST_MODE_GEN.imr_reg[12]_0\ => AXI_LITE_IPIF_I_n_62,
      \REG_GEN[12].ier_reg[12]_0\ => INTC_CORE_I_n_49,
      \REG_GEN[13].IMR_FAST_MODE_GEN.imr_reg[13]_0\ => AXI_LITE_IPIF_I_n_61,
      \REG_GEN[14].IMR_FAST_MODE_GEN.imr_reg[14]_0\ => AXI_LITE_IPIF_I_n_60,
      \REG_GEN[15].IAR_FAST_MODE_GEN.iar_reg[15]_0\ => INTC_CORE_I_n_16,
      \REG_GEN[15].IMR_FAST_MODE_GEN.imr_reg[15]_0\ => AXI_LITE_IPIF_I_n_59,
      \REG_GEN[15].ier_reg[15]_0\ => INTC_CORE_I_n_52,
      \REG_GEN[1].IMR_FAST_MODE_GEN.imr_reg[1]_0\ => AXI_LITE_IPIF_I_n_70,
      \REG_GEN[2].IMR_FAST_MODE_GEN.imr_reg[2]_0\ => AXI_LITE_IPIF_I_n_8,
      \REG_GEN[3].IMR_FAST_MODE_GEN.imr_reg[3]_0\ => AXI_LITE_IPIF_I_n_7,
      \REG_GEN[3].ier_reg[3]_0\ => INTC_CORE_I_n_40,
      \REG_GEN[4].IMR_FAST_MODE_GEN.imr_reg[4]_0\ => AXI_LITE_IPIF_I_n_6,
      \REG_GEN[5].IMR_FAST_MODE_GEN.imr_reg[5]_0\ => AXI_LITE_IPIF_I_n_69,
      \REG_GEN[6].IMR_FAST_MODE_GEN.imr_reg[6]_0\ => AXI_LITE_IPIF_I_n_68,
      \REG_GEN[6].ier_reg[6]_0\ => INTC_CORE_I_n_43,
      \REG_GEN[7].IMR_FAST_MODE_GEN.imr_reg[7]_0\ => AXI_LITE_IPIF_I_n_67,
      \REG_GEN[8].IMR_FAST_MODE_GEN.imr_reg[8]_0\ => AXI_LITE_IPIF_I_n_66,
      \REG_GEN[9].IMR_FAST_MODE_GEN.imr_reg[9]_0\ => AXI_LITE_IPIF_I_n_65,
      \REG_GEN[9].ier_reg[9]_0\ => INTC_CORE_I_n_46,
      SR(0) => INTC_CORE_I_n_1,
      \bus2ip_addr_i_reg[4]\ => AXI_LITE_IPIF_I_n_24,
      \bus2ip_addr_i_reg[5]\ => AXI_LITE_IPIF_I_n_22,
      \bus2ip_addr_i_reg[5]_0\ => AXI_LITE_IPIF_I_n_23,
      \bus2ip_addr_i_reg[5]_1\(3 downto 0) => bus2ip_addr(5 downto 2),
      \bus2ip_addr_i_reg[7]\ => AXI_LITE_IPIF_I_n_20,
      bus2ip_wrce(2 downto 1) => bus2ip_wrce(8 downto 7),
      bus2ip_wrce(0) => bus2ip_wrce(0),
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      intr(7 downto 0) => intr(7 downto 0),
      irq => irq,
      p_0_in => p_0_in,
      p_0_in114_in => p_0_in114_in,
      p_0_in116_in => p_0_in116_in,
      p_0_in120_in => p_0_in120_in,
      p_0_in122_in => p_0_in122_in,
      p_0_in126_in => p_0_in126_in,
      p_0_in128_in => p_0_in128_in,
      p_0_in132_in => p_0_in132_in,
      p_0_in134_in => p_0_in134_in,
      p_0_in138_in => p_0_in138_in,
      p_0_in140_in => p_0_in140_in,
      p_0_in142_in => p_0_in142_in,
      p_0_in145_in => p_0_in145_in,
      p_0_in148_in => p_0_in148_in,
      p_0_in221_in => p_0_in221_in,
      p_0_in232_in => p_0_in232_in,
      p_0_in243_in => p_0_in243_in,
      p_0_in254_in => p_0_in254_in,
      p_0_in265_in => p_0_in265_in,
      p_0_in276_in => p_0_in276_in,
      p_0_in287_in => p_0_in287_in,
      p_0_in298_in => p_0_in298_in,
      p_0_in309_in => p_0_in309_in,
      p_0_in320_in => p_0_in320_in,
      p_0_in331_in => p_0_in331_in,
      p_0_in342_in => p_0_in342_in,
      p_0_in34_in => p_0_in34_in,
      p_0_in353_in => p_0_in353_in,
      p_0_in364_in => p_0_in364_in,
      p_0_in375_in => p_0_in375_in,
      p_0_in37_in => p_0_in37_in,
      p_0_in40_in => p_0_in40_in,
      p_0_in43_in => p_0_in43_in,
      p_0_in46_in => p_0_in46_in,
      p_0_in49_in => p_0_in49_in,
      p_0_in52_in => p_0_in52_in,
      p_0_in55_in => p_0_in55_in,
      p_0_in58_in => p_0_in58_in,
      p_0_in61_in => p_0_in61_in,
      p_0_in64_in => p_0_in64_in,
      p_0_in67_in => p_0_in67_in,
      p_0_in70_in => p_0_in70_in,
      p_0_in73_in => p_0_in73_in,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_1_in143_in => p_1_in143_in,
      p_1_in146_in => p_1_in146_in,
      p_1_in149_in => p_1_in149_in,
      processor_ack(1 downto 0) => processor_ack(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_axi_rdata_i_reg[0]\ => INTC_CORE_I_n_116,
      \s_axi_rdata_i_reg[10]\ => INTC_CORE_I_n_109,
      \s_axi_rdata_i_reg[11]\ => INTC_CORE_I_n_108,
      \s_axi_rdata_i_reg[12]\ => INTC_CORE_I_n_107,
      \s_axi_rdata_i_reg[13]\ => INTC_CORE_I_n_106,
      \s_axi_rdata_i_reg[14]\ => INTC_CORE_I_n_105,
      \s_axi_rdata_i_reg[15]\(15 downto 0) => Douta(15 downto 0),
      \s_axi_rdata_i_reg[15]_0\ => INTC_CORE_I_n_101,
      \s_axi_rdata_i_reg[1]\ => INTC_CORE_I_n_115,
      \s_axi_rdata_i_reg[31]\ => INTC_CORE_I_n_79,
      \s_axi_rdata_i_reg[4]\(2 downto 0) => ipr(4 downto 2),
      \s_axi_rdata_i_reg[5]\ => INTC_CORE_I_n_114,
      \s_axi_rdata_i_reg[6]\ => INTC_CORE_I_n_113,
      \s_axi_rdata_i_reg[7]\ => INTC_CORE_I_n_112,
      \s_axi_rdata_i_reg[8]\ => INTC_CORE_I_n_111,
      \s_axi_rdata_i_reg[9]\ => INTC_CORE_I_n_110,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0)
    );
ip2bus_rdack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in20_out,
      Q => ip2bus_rdack_int_d1,
      R => INTC_CORE_I_n_1
    );
ip2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_prev2,
      Q => ip2bus_rdack,
      R => INTC_CORE_I_n_1
    );
ip2bus_wrack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in2_out,
      Q => ip2bus_wrack_int_d1,
      R => INTC_CORE_I_n_1
    );
ip2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_prev2,
      Q => ip2bus_wrack,
      R => INTC_CORE_I_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_axi_intc_0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \top_axi_pcie_intc_0_0_axi_intc_0\ : entity is "axi_intc_0,axi_intc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \top_axi_pcie_intc_0_0_axi_intc_0\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \top_axi_pcie_intc_0_0_axi_intc_0\ : entity is "axi_intc,Vivado 2016.1";
end \top_axi_pcie_intc_0_0_axi_intc_0\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_axi_intc_0\ is
  signal NLW_U0_processor_ack_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of U0 : label is -1;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of U0 : label is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of U0 : label is 1;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of U0 : label is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "virtex7";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of U0 : label is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of U0 : label is 1;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of U0 : label is 1;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of U0 : label is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of U0 : label is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of U0 : label is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_intc_inst";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of U0 : label is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of U0 : label is 0;
  attribute C_IVAR_RESET_VALUE : integer;
  attribute C_IVAR_RESET_VALUE of U0 : label is 0;
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of U0 : label is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of U0 : label is -1;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of U0 : label is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of U0 : label is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of U0 : label is 8;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of U0 : label is 8;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of U0 : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute hdl : string;
  attribute hdl of U0 : label is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of U0 : label is "TRUE";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute iptype : string;
  attribute iptype of U0 : label is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of U0 : label is "TRUE";
  attribute style : string;
  attribute style of U0 : label is "HDL";
begin
U0: entity work.\top_axi_pcie_intc_0_0_axi_intc\
     port map (
      interrupt_address(31 downto 0) => interrupt_address(31 downto 0),
      interrupt_address_in(31 downto 0) => B"00000000000000000000000000000000",
      intr(7 downto 0) => intr(7 downto 0),
      irq => irq,
      irq_in => '0',
      processor_ack(1 downto 0) => processor_ack(1 downto 0),
      processor_ack_out(1 downto 0) => NLW_U0_processor_ack_out_UNCONNECTED(1 downto 0),
      processor_clk => processor_clk,
      processor_rst => processor_rst,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0_axi_pcie_intc\ is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    INTX_MSI_Request : out STD_LOGIC;
    MSI_Vector_Num : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MSI_Enable : in STD_LOGIC;
    INTX_MSI_Grant : in STD_LOGIC
  );
end \top_axi_pcie_intc_0_0_axi_pcie_intc\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0_axi_pcie_intc\ is
  signal \U0/_n_0\ : STD_LOGIC;
  signal ack : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ack[1]_i_2_n_0\ : STD_LOGIC;
  signal \ack_reg_n_0_[0]\ : STD_LOGIC;
  signal \ack_reg_n_0_[1]\ : STD_LOGIC;
  signal NLW_INTC_interrupt_address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 5 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of INTC : label is "axi_intc_0,axi_intc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of INTC : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of INTC : label is "axi_intc,Vivado 2016.1";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ack[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \ack[1]_i_1\ : label is "soft_lutpair61";
begin
INTC: entity work.\top_axi_pcie_intc_0_0_axi_intc_0\
     port map (
      interrupt_address(31 downto 5) => NLW_INTC_interrupt_address_UNCONNECTED(31 downto 5),
      interrupt_address(4 downto 0) => MSI_Vector_Num(4 downto 0),
      intr(7 downto 0) => intr(7 downto 0),
      irq => INTX_MSI_Request,
      processor_ack(1) => \ack_reg_n_0_[1]\,
      processor_ack(0) => \ack_reg_n_0_[0]\,
      processor_clk => s_axi_aclk,
      processor_rst => s_axi_aresetn,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
\U0/\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => MSI_Enable,
      I1 => \ack_reg_n_0_[0]\,
      I2 => INTX_MSI_Grant,
      O => \U0/_n_0\
    );
\ack[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => MSI_Enable,
      I1 => \ack_reg_n_0_[0]\,
      I2 => \ack_reg_n_0_[1]\,
      I3 => INTX_MSI_Grant,
      O => ack(0)
    );
\ack[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \ack_reg_n_0_[1]\,
      I1 => INTX_MSI_Grant,
      I2 => \ack_reg_n_0_[0]\,
      I3 => MSI_Enable,
      O => ack(1)
    );
\ack[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \ack[1]_i_2_n_0\
    );
\ack_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \U0/_n_0\,
      CLR => \ack[1]_i_2_n_0\,
      D => ack(0),
      Q => \ack_reg_n_0_[0]\
    );
\ack_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s_axi_aclk,
      CE => \U0/_n_0\,
      CLR => \ack[1]_i_2_n_0\,
      D => ack(1),
      Q => \ack_reg_n_0_[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \top_axi_pcie_intc_0_0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INTX_MSI_Request : out STD_LOGIC;
    INTX_MSI_Grant : in STD_LOGIC;
    MSI_Vector_Num : out STD_LOGIC_VECTOR ( 4 downto 0 );
    MSI_Enable : in STD_LOGIC;
    MSI_Vector_Width : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of \top_axi_pcie_intc_0_0\ : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \top_axi_pcie_intc_0_0\ : entity is "top_axi_pcie_intc_0_0,axi_pcie_intc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \top_axi_pcie_intc_0_0\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \top_axi_pcie_intc_0_0\ : entity is "axi_pcie_intc,Vivado 2016.1";
end \top_axi_pcie_intc_0_0\;

architecture STRUCTURE of \top_axi_pcie_intc_0_0\ is
begin
U0: entity work.\top_axi_pcie_intc_0_0_axi_pcie_intc\
     port map (
      INTX_MSI_Grant => INTX_MSI_Grant,
      INTX_MSI_Request => INTX_MSI_Request,
      MSI_Enable => MSI_Enable,
      MSI_Vector_Num(4 downto 0) => MSI_Vector_Num(4 downto 0),
      intr(7 downto 0) => intr(7 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
