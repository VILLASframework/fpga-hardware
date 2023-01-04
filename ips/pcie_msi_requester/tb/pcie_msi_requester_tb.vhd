-- Testbench for IRQ priority encoder / requester for Xilinx' PCIe AXI bridge
--
-- @file
-- @author Steffen Vogel <post@steffenvogel.de>
-- @copyright 2014-2016, Institute for Automation of Complex Power Systems, EONERC
--	This file is part of S2SS. All Rights Reserved. Proprietary and confidential.
--	Unauthorized copying of this file, via any medium is strictly prohibited. 
------------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    
-- entity declaration for your testbench.dont declare any ports here
entity pcie_msi_requester_tb is 
end entity;

architecture behavior of pcie_msi_requester_tb is
	-- component declaration for the unit under test (uut)
	component pcie_msi_requester
		generic (
			-- The bridge supports a maximum of 32 MSI IRQs
			 NUM_IRQS			: integer range 1 to 32 := 7;

			 -- Parameters of Axi Slave Bus Interface S00_AXI
			 C_S00_AXI_DATA_WIDTH	: integer	:= 32;
			 C_S00_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
			clk				: in	std_logic;
			aresetn				: in	std_logic;

			-- IRQs are priortitized from LSB to MSB.
			-- i_irq(0) has the highest priority and will be posted first.
			i_irq				: in	std_logic_vector(NUM_IRQS-1 downto 0);
		
			-- To AXI - PCIe bridge
			o_irq				: out	std_logic;
			o_vector_num			: out	std_logic_vector(4 downto 0);
		
			-- From AXI - PCIe bridge
			i_msi_enabled			: in	std_logic;
			i_granted			: in	std_logic;
			i_vector_width			: in	std_logic_vector(2 downto 0);
			
			-- Ports of Axi Slave Bus Interface S00_AXI
			s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
			s00_axi_awprot	: in std_logic_vector(2 downto 0);
			s00_axi_awvalid	: in std_logic;
			s00_axi_awready	: out std_logic;
			s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
			s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
			s00_axi_wvalid	: in std_logic;
			s00_axi_wready	: out std_logic;
			s00_axi_bresp	: out std_logic_vector(1 downto 0);
			s00_axi_bvalid	: out std_logic;
			s00_axi_bready	: in std_logic;
			s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
			s00_axi_arprot	: in std_logic_vector(2 downto 0);
			s00_axi_arvalid	: in std_logic;
			s00_axi_arready	: out std_logic;
			s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
			s00_axi_rresp	: out std_logic_vector(1 downto 0);
			s00_axi_rvalid	: out std_logic;
			s00_axi_rready	: in std_logic
		);
	end component;
	
	procedure wait_clk (
		signal i_clk				: in std_logic;
		constant c_cycles			: in integer
	) is
	begin
		for I in 1 to c_cycles loop
			wait until rising_edge(i_clk);
		end loop;	
	end procedure;
	
	procedure toggle (
		signal i_clk				: in std_logic;
		signal io_toggle			: inout std_logic
	) is
	begin
		io_toggle				<= io_toggle xor '1';
		wait_clk(i_clk, 1);
		io_toggle				<= io_toggle xor '1';
	end procedure;
	
	procedure reset (
		signal reset				: out std_logic
	) is
	begin
		reset					<= '0';
		wait for 10 ns;
		reset					<= '1';
	end procedure;
	
	signal clk : std_logic := '0';
	signal aresetn : std_logic := '0';

	signal s_irq_vector				: std_logic_vector(31 downto 0) := (others => '0');
	signal s_vector_num				: std_logic_vector( 4 downto 0);
	signal s_irq_pin				: std_logic;
	signal s_granted				: std_logic := '0';

	constant clk_period : time := 1 ns;
begin
	-- instantiate the unit under test (uut)
	UUT : pcie_msi_requester
		generic map (
			NUM_IRQS			=> 32
		)
		port map (
			clk				=> clk,
			aresetn				=> aresetn,
			i_granted			=> s_granted,
			i_msi_enabled			=> '1',
			i_vector_width			=> std_logic_vector(to_unsigned(5, 3)),
			i_irq				=> s_irq_vector,
			o_irq				=> s_irq_pin,
			o_vector_num			=> s_vector_num,
			
			s00_axi_awaddr			=> (others => '0'),
			s00_axi_awprot			=> (others => '0'),
			s00_axi_awvalid			=> '0',
			s00_axi_wdata			=> (others => '0'),
			s00_axi_wstrb			=> (others => '0'),
			s00_axi_wvalid			=> '0',
			s00_axi_bready			=> '0',
			s00_axi_araddr			=> (others => '0'),
			s00_axi_arprot			=> (others => '0'),
			s00_axi_arvalid			=> '0',
			s00_axi_rready			=> '0'
		);		 

	-- generate clock with 50% duty cycle is generated here.
	CLK_PROC : process
	begin
		  clk <= '0';
		  wait for clk_period / 2;  --for 0.5 ns signal is '0'.
		  clk <= '1';
		  wait for clk_period / 2;  --for next 0.5 ns signal is '1'.
	end process;
	
	GRANT_PROC : process
	begin
		wait until rising_edge(s_irq_pin);
		wait_clk(clk, 5);
		toggle(clk, s_granted);
	end process;

	-- stimulus process
	STIM_PROC : process
	begin
		reset(aresetn);
		wait for 5 ns;

		s_irq_vector			<= (0 => '1', others => '0');
		wait for 30 ns;

		s_irq_vector			<= (7 => '1', 4 => '1', 2 => '1', others => '0');
		wait for 30 ns;
		
		s_irq_vector			<= (others => '0');
		wait for 10 ns;
		
		s_irq_vector			<= (others => '1');
		wait;
	  end process;
end architecture;
