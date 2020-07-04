-- This testbench verfies the correct behaviour of the UUT rtds_axis
-- 
-- It reads sample values from rtds_axis to a AXI Stream FIFO.
-- Simultaneaously it reads data from the AXI Stream FIFO and writes it
-- to rtds_axis.
--
-- The UUT rtds_axis is a thin wrapper around RTDS_InterfaceModule
-- which is provided by RTDS Technologies and only available as a blackbox
-- netlist.
--
-- Hence a simulation model of this netlist has been implemented which reads
-- and write sample value from textfiles using VHDL's std.textio feature.

library acs;
    use acs.helpers.all;

library ieee;
    use ieee.std_logic_1164.all;

entity top_tb is
end entity;

architecture sim of top_tb is
	component axis_data_fifo_0
		port (
			s_axis_aclk		: in	std_logic;
			s_axis_aresetn		: in	std_logic;

			s_axis_tvalid		: in	std_logic;
			s_axis_tready		: out	std_logic;
			s_axis_tlast		: in	std_logic;
			s_axis_tdata		: in	std_logic_vector(31 downto 0);

			m_axis_tvalid		: out	std_logic;
			m_axis_tready		: in	std_logic;
			m_axis_tlast		: out	std_logic;
			m_axis_tdata		: out	std_logic_vector(31 downto 0);

			axis_data_count		: out	std_logic_vector(31 downto 0);
			axis_wr_data_count	: out	std_logic_vector(31 downto 0);
			axis_rd_data_count	: out	std_logic_vector(31 downto 0)
		);
	end component;
	
	component axis_delay is
		generic (
			MEAN			: real := 5.0;
			VARIANCE		: real := 2.0;
			USE_RANDOM		: boolean := false;
			DISABLED		: boolean := false;
			SEED			: positive := 942935562
		);
		port (
			s_axis_aclk		: in	std_logic;
			s_axis_aresetn		: in	std_logic;
	
			s_axis_tvalid		: in	std_logic;
			s_axis_tready		: out	std_logic;
			s_axis_tlast		: in	std_logic;
			s_axis_tdata		: in	std_logic_vector(31 downto 0);
	
			m_axis_tvalid		: out	std_logic;
			m_axis_tready		: in	std_logic;
			m_axis_tlast		: out	std_logic;
			m_axis_tdata		: out	std_logic_vector(31 downto 0)
		);
	end component;
	
	component rtds_axis is
		generic (
			-- Parameters of Axi Slave Bus Interface S_AXI_CTL
			C_S_AXI_CTL_DATA_WIDTH	: integer := 32;
			C_S_AXI_CTL_ADDR_WIDTH	: integer := 6
		);
		port (
			-- Control
			clk100m			: out	std_logic;
			aresetn			: in	std_logic;
			
			-- MGT interface
			CLKBUF_Q0_N		: in	std_logic;
			CLKBUF_Q0_P		: in	std_logic;
			SFP_RX_N		: in	std_logic;
			SFP_RX_P		: in	std_logic;
			SFP_TX_N		: out	std_logic;
			SFP_TX_P		: out	std_logic;
			SFP_LOS			: in	std_logic;
			SFP_TX_DISABLE		: out	std_logic;
			
			SYS_CLK			: in	std_logic;
	
			-- AXI Stream slave
			s_axis_tdata		: in	std_logic_vector(31 downto 0);
			s_axis_tvalid		: in	std_logic;
			s_axis_tlast		: in	std_logic;
			s_axis_tready		: out	std_logic;
			
			-- AXI Stream master 
			m_axis_tdata		: out	std_logic_vector(31 downto 0);
			m_axis_tvalid		: out	std_logic;
			m_axis_tlast		: out	std_logic;
			m_axis_tready		: in	std_logic;
			
			-- Some interrupt signals
			irq_ts			: out	std_logic;
			irq_overflow		: out	std_logic;
			irq_case		: out	std_logic;
			
			-- Ports of Axi Slave Bus Interface S_AXI_CTL
			s_axi_ctl_awaddr	: in	std_logic_vector(C_S_AXI_CTL_ADDR_WIDTH-1 downto 0);
			s_axi_ctl_awprot	: in	std_logic_vector(2 downto 0);
			s_axi_ctl_awvalid	: in	std_logic;
			s_axi_ctl_awready	: out	std_logic;
			s_axi_ctl_wdata		: in	std_logic_vector(C_S_AXI_CTL_DATA_WIDTH-1 downto 0);
			s_axi_ctl_wstrb		: in	std_logic_vector((C_S_AXI_CTL_DATA_WIDTH/8)-1 downto 0);
			s_axi_ctl_wvalid	: in	std_logic;
			s_axi_ctl_wready	: out	std_logic;
			s_axi_ctl_bvalid	: out	std_logic;
			s_axi_ctl_bready	: in	std_logic;
			s_axi_ctl_araddr	: in	std_logic_vector(C_S_AXI_CTL_ADDR_WIDTH-1 downto 0);
			s_axi_ctl_arprot	: in	std_logic_vector(2 downto 0);
			s_axi_ctl_arvalid	: in	std_logic;
			s_axi_ctl_arready	: out	std_logic;
			s_axi_ctl_rdata		: out	std_logic_vector(C_S_AXI_CTL_DATA_WIDTH-1 downto 0);
			s_axi_ctl_rvalid	: out	std_logic;
			s_axi_ctl_rready	: in	std_logic
		);		
	end component;
	
	-- Signals
	signal clk				: std_logic;
	signal aresetn				: std_logic := '1';

	-- AXI Stream busses
	signal 	axis_rtds2fifo,
		axis_fifo2dly,
		axis_dly2rtds			: axis_bus := (
							tdata => (others => '0'),
							tvalid => '0',
							tready => '0',
							tlast => '0'
						  );
begin

	UUT : component rtds_axis
		port map (
			-- Control
			clk100m			=> clk,
			aresetn			=> aresetn,
			
			-- Tie down some top level ports which are useless in simulation
			SYS_CLK			=> '0',
			CLKBUF_Q0_N		=> '0',
			CLKBUF_Q0_P		=> '0',
			SFP_RX_N		=> '0',
			SFP_RX_P		=> '0',
			SFP_TX_N		=> open,
			SFP_TX_P		=> open,
			SFP_LOS			=> '0',
	
			-- AXI Stream slave: TB -> RTDS
			s_axis_tdata		=> axis_dly2rtds.tdata, -- connect Master to Slave
			s_axis_tvalid		=> axis_dly2rtds.tvalid,
			s_axis_tlast		=> axis_dly2rtds.tlast,
			s_axis_tready		=> axis_dly2rtds.tready,
			
			-- AXI Stream master: RTDS -> TB
			m_axis_tdata		=> axis_rtds2fifo.tdata, -- connect Slave to Master
			m_axis_tvalid		=> axis_rtds2fifo.tvalid,
			m_axis_tlast		=> axis_rtds2fifo.tlast,
			m_axis_tready		=> axis_rtds2fifo.tready,
			
			irq_ts			=> open,
			
			s_axi_ctl_awaddr	=> (others => '0'),
			s_axi_ctl_awprot	=> (others => '0'),
			s_axi_ctl_awvalid	=> '0',
			s_axi_ctl_wdata		=> (others => '0'),
			s_axi_ctl_wstrb		=> (others => '0'),
			s_axi_ctl_wvalid	=> '0',
			s_axi_ctl_bready	=> '0',
			s_axi_ctl_araddr	=> (others => '0'),
			s_axi_ctl_arprot	=> (others => '0'),
			s_axi_ctl_arvalid	=> '0',
			s_axi_ctl_rready	=> '0'
		);
		
	FIFO : axis_data_fifo_0
		port map (
			s_axis_aresetn		=> aresetn,
			s_axis_aclk		=> clk,
			
			s_axis_tvalid		=> axis_rtds2fifo.tvalid,
			s_axis_tready		=> axis_rtds2fifo.tready,
			s_axis_tdata		=> axis_rtds2fifo.tdata,
			s_axis_tlast		=> axis_rtds2fifo.tlast,
			
			m_axis_tvalid		=> axis_fifo2dly.tvalid,
			m_axis_tready		=> axis_fifo2dly.tready,
			m_axis_tdata		=> axis_fifo2dly.tdata,
			m_axis_tlast		=> axis_fifo2dly.tlast
		);
		
	AXIS_DLY : axis_delay
		generic map (
			USE_RANDOM		=> true,
			DISABLED		=> true,
			MEAN			=> 83.0,
			VARIANCE		=> 30.0
		)
		port map (
			s_axis_aclk		=> clk,
			s_axis_aresetn		=> aresetn,
	
			s_axis_tvalid		=> axis_fifo2dly.tvalid,
			s_axis_tready		=> axis_fifo2dly.tready,
			s_axis_tlast		=> axis_fifo2dly.tlast,
			s_axis_tdata		=> axis_fifo2dly.tdata,
	
			m_axis_tvalid		=> axis_dly2rtds.tvalid,
			m_axis_tready		=> axis_dly2rtds.tready,
			m_axis_tlast		=> axis_dly2rtds.tlast,
			m_axis_tdata		=> axis_dly2rtds.tdata
		);

	-- Stimuli
	process
	begin
		reset(aresetn);
		wait;
	end process;
end architecture;