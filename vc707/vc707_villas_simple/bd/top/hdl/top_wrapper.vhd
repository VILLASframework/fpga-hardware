--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
--Date        : Sun Jun 26 16:05:58 2016
--Host        : E265 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target top_wrapper.bd
--Design      : top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wrapper is
  port (
    clkbuf_clk_n : in STD_LOGIC;
    clkbuf_clk_p : in STD_LOGIC;
    pcie_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_ref_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_ref_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    perstn : in STD_LOGIC;
    sfp_rx_los : in STD_LOGIC;
    sfp_rxn : in STD_LOGIC;
    sfp_rxp : in STD_LOGIC;
    sfp_tx_disable : out STD_LOGIC;
    sfp_txn : out STD_LOGIC;
    sfp_txp : out STD_LOGIC;
    sys_clk_clk_n : in STD_LOGIC;
    sys_clk_clk_p : in STD_LOGIC
  );
end top_wrapper;

architecture STRUCTURE of top_wrapper is
  component top is
  port (
    sys_clk_clk_p : in STD_LOGIC;
    sys_clk_clk_n : in STD_LOGIC;
    perstn : in STD_LOGIC;
    pcie_mgt_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_mgt_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_ref_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_ref_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    sfp_tx_disable : out STD_LOGIC;
    sfp_rxn : in STD_LOGIC;
    sfp_txn : out STD_LOGIC;
    sfp_rxp : in STD_LOGIC;
    sfp_txp : out STD_LOGIC;
    sfp_rx_los : in STD_LOGIC;
    clkbuf_clk_p : in STD_LOGIC;
    clkbuf_clk_n : in STD_LOGIC
  );
  end component top;
begin
top_i: component top
     port map (
      clkbuf_clk_n => clkbuf_clk_n,
      clkbuf_clk_p => clkbuf_clk_p,
      pcie_mgt_rxn(3 downto 0) => pcie_mgt_rxn(3 downto 0),
      pcie_mgt_rxp(3 downto 0) => pcie_mgt_rxp(3 downto 0),
      pcie_mgt_txn(3 downto 0) => pcie_mgt_txn(3 downto 0),
      pcie_mgt_txp(3 downto 0) => pcie_mgt_txp(3 downto 0),
      pcie_ref_clk_n(0) => pcie_ref_clk_n(0),
      pcie_ref_clk_p(0) => pcie_ref_clk_p(0),
      perstn => perstn,
      sfp_rx_los => sfp_rx_los,
      sfp_rxn => sfp_rxn,
      sfp_rxp => sfp_rxp,
      sfp_tx_disable => sfp_tx_disable,
      sfp_txn => sfp_txn,
      sfp_txp => sfp_txp,
      sys_clk_clk_n => sys_clk_clk_n,
      sys_clk_clk_p => sys_clk_clk_p
    );
end STRUCTURE;
