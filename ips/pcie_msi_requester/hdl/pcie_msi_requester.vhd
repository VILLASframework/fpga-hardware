-- IRQ priority encoder / requester for Xilinx' PCIe AXI bridge
--
-- @file
-- @author Steffen Vogel <stvogel@eonerc.rwth-aachen.de>
-- @copyright 2014-2016, Institute for Automation of Complex Power Systems, EONERC
--   This file is part of S2SS. All Rights Reserved. Proprietary and confidential.
--   Unauthorized copying of this file, via any medium is strictly prohibited. 
------------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity pcie_msi_requester is
	generic (
		-- The bridge supports a maximum of 32 MSI IRQs
		NUM_IRQS			: integer range 1 to 32 := 7;
		
		-- Parameters of Axi Slave Bus Interface s_axi_ctl
		C_S_AXI_CTL_DATA_WIDTH		: integer	:= 32;
		C_S_AXI_CTL_ADDR_WIDTH		: integer	:= 4
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
		
		-- Ports of Axi Slave Bus Interface s_axi_ctl
		s_axi_ctl_awaddr		: in	std_logic_vector(C_S_AXI_CTL_ADDR_WIDTH-1 downto 0);
		s_axi_ctl_awprot		: in	std_logic_vector(2 downto 0);
		s_axi_ctl_awvalid		: in	std_logic;
		s_axi_ctl_awready		: out	std_logic;
		s_axi_ctl_wdata			: in	std_logic_vector(C_S_AXI_CTL_DATA_WIDTH-1 downto 0);
		s_axi_ctl_wstrb			: in	std_logic_vector((C_S_AXI_CTL_DATA_WIDTH/8)-1 downto 0);
		s_axi_ctl_wvalid		: in	std_logic;
		s_axi_ctl_wready		: out	std_logic;
		s_axi_ctl_bresp			: out	std_logic_vector(1 downto 0);
		s_axi_ctl_bvalid		: out	std_logic;
		s_axi_ctl_bready		: in	std_logic;
		s_axi_ctl_araddr		: in	std_logic_vector(C_S_AXI_CTL_ADDR_WIDTH-1 downto 0);
		s_axi_ctl_arprot		: in	std_logic_vector(2 downto 0);
		s_axi_ctl_arvalid		: in	std_logic;
		s_axi_ctl_arready		: out	std_logic;
		s_axi_ctl_rdata			: out	std_logic_vector(C_S_AXI_CTL_DATA_WIDTH-1 downto 0);
		s_axi_ctl_rresp			: out	std_logic_vector(1 downto 0);
		s_axi_ctl_rvalid		: out	std_logic;
		s_axi_ctl_rready		: in	std_logic
	);
end entity;

architecture rtl of pcie_msi_requester is
	signal s_irq_d				: std_logic_vector(i_irq'range);
	signal s_irq_pending			: std_logic_vector(i_irq'range);
	signal s_irq_en				: std_logic_vector(i_irq'range);
	signal s_irq_clear			: std_logic_vector(i_irq'range);
	signal s_granted			: std_logic;
	
		-- component declaration
	component pcie_msi_requester_axi_slv is
		generic (
			C_S_AXI_DATA_WIDTH	: integer	:= 32;
			C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
			-- Vector of pending interrupts
			irq_pending		: in	std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			-- Per vector IRQ enable
			irq_en			: out	std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			-- Clear pending pending interrupts by asserting for 1 cycle
			irq_clear		: out	std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		
			S_AXI_ACLK		: in	std_logic;
			S_AXI_ARESETN		: in	std_logic;
			S_AXI_AWADDR		: in	std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
			S_AXI_AWPROT		: in	std_logic_vector(2 downto 0);
			S_AXI_AWVALID		: in	std_logic;
			S_AXI_AWREADY		: out	std_logic;
			S_AXI_WDATA		: in	std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			S_AXI_WSTRB		: in	std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
			S_AXI_WVALID		: in	std_logic;
			S_AXI_WREADY		: out	std_logic;
			S_AXI_BRESP		: out	std_logic_vector(1 downto 0);
			S_AXI_BVALID		: out	std_logic;
			S_AXI_BREADY		: in	std_logic;
			S_AXI_ARADDR		: in	std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
			S_AXI_ARPROT		: in	std_logic_vector(2 downto 0);
			S_AXI_ARVALID		: in	std_logic;
			S_AXI_ARREADY		: out	std_logic;
			S_AXI_RDATA		: out	std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			S_AXI_RRESP		: out	std_logic_vector(1 downto 0);
			S_AXI_RVALID		: out	std_logic;
			S_AXI_RREADY		: in	std_logic
		);
	end component;
begin
	-- Instantiation of Axi Bus Interface s_axi_ctl
	AXI_SLAVE : pcie_msi_requester_axi_slv
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S_AXI_CTL_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S_AXI_CTL_ADDR_WIDTH
	)
	port map (
		irq_pending(NUM_IRQS-1               downto        0) => s_irq_pending,
		irq_pending(C_S_AXI_CTL_DATA_WIDTH-1 downto NUM_IRQS) => open,
		irq_en(NUM_IRQS-1                    downto        0) => s_irq_en,
		irq_en(C_S_AXI_CTL_DATA_WIDTH-1      downto NUM_IRQS) => open,       
		irq_clear(NUM_IRQS-1                 downto        0) => s_irq_clear,
		irq_clear(C_S_AXI_CTL_DATA_WIDTH-1   downto NUM_IRQS) => open,

		S_AXI_ACLK	=> clk,
		S_AXI_ARESETN	=> aresetn,
		S_AXI_AWADDR	=> s_axi_ctl_awaddr,
		S_AXI_AWPROT	=> s_axi_ctl_awprot,
		S_AXI_AWVALID	=> s_axi_ctl_awvalid,
		S_AXI_AWREADY	=> s_axi_ctl_awready,
		S_AXI_WDATA	=> s_axi_ctl_wdata,
		S_AXI_WSTRB	=> s_axi_ctl_wstrb,
		S_AXI_WVALID	=> s_axi_ctl_wvalid,
		S_AXI_WREADY	=> s_axi_ctl_wready,
		S_AXI_BRESP	=> s_axi_ctl_bresp,
		S_AXI_BVALID	=> s_axi_ctl_bvalid,
		S_AXI_BREADY	=> s_axi_ctl_bready,
		S_AXI_ARADDR	=> s_axi_ctl_araddr,
		S_AXI_ARPROT	=> s_axi_ctl_arprot,
		S_AXI_ARVALID	=> s_axi_ctl_arvalid,
		S_AXI_ARREADY	=> s_axi_ctl_arready,
		S_AXI_RDATA	=> s_axi_ctl_rdata,
		S_AXI_RRESP	=> s_axi_ctl_rresp,
		S_AXI_RVALID	=> s_axi_ctl_rvalid,
		S_AXI_RREADY	=> s_axi_ctl_rready
	);

	EDGE_DETECT: process (clk, aresetn)
		variable v_irq_edges		: std_logic_vector(i_irq'range);
		variable v_irq_pending		: std_logic_vector(i_irq'range);

	begin
		if aresetn = '0' then
			s_irq_d			<= (others => '0');
			s_irq_pending		<= (others => '0');
			
			s_granted		<= '1';
			o_irq			<= '0';
		elsif rising_edge(clk) then
			s_irq_d			<= i_irq;
			s_granted		<= s_granted or i_granted;

			v_irq_edges		:= (not s_irq_d) and i_irq;
			v_irq_pending		:= s_irq_pending or v_irq_edges;

			if s_granted = '1' or i_granted = '1' then
				for I in	v_irq_pending'reverse_range loop -- LSB to MSB
					if v_irq_pending(I) = '1' and s_irq_en(I) = '1' then
						o_vector_num	<= std_logic_vector(to_unsigned(I, o_vector_num'length));

						-- We request an IRQ if it is enabled
						o_irq		<= '1';
						
						-- Wait for grant before next IRQ
						s_granted	<= '0';

						-- Clear pending IRQ
						v_irq_pending(I) := '0';

						exit; -- We can issue one pending IRQ at a time
					end if;
				end loop;
				
				s_irq_pending		<= v_irq_pending and (not s_irq_clear or s_irq_en); -- register new incoming IRQs
			else
				o_irq		<= '0';
				o_vector_num	<= (others => '0');
			end if;
		end if;
	end process;
end architecture;