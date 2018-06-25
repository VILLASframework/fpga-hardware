library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity rtds_axis is
	generic (
		-- Parameters of Axi Slave Bus Interface S_AXI_CTL
		C_S_AXI_CTL_DATA_WIDTH		: integer := 32;
		C_S_AXI_CTL_ADDR_WIDTH		: integer := 6
	);
	port (
		-- Control
		clk100m				: out	std_logic;
		
		-- Asynchronous reset input
		aresetn				: in	std_logic;
		-- Synchronous reset output for AXI busses
		axi_resetn			: out	std_logic;
		
		-- MGT interface
		CLKBUF_Q0_N			: in	std_logic;
		CLKBUF_Q0_P			: in	std_logic;
		SFP_RX_N			: in	std_logic;
		SFP_RX_P			: in	std_logic;
		SFP_TX_N			: out	std_logic;
		SFP_TX_P			: out	std_logic;
		SFP_LOS				: in	std_logic;
		SFP_TX_DISABLE			: out	std_logic;
		
		SYS_CLK				: in	std_logic;

		-- AXI Stream slave
		s_axis_tdata			: in	std_logic_vector(31 downto 0);
		s_axis_tvalid			: in	std_logic;
		s_axis_tlast			: in	std_logic;
		s_axis_tready			: out	std_logic;
		
		-- AXI Stream master 
		m_axis_tdata			: out	std_logic_vector(31 downto 0);
		m_axis_tvalid			: out	std_logic;
		m_axis_tlast			: out	std_logic;
		m_axis_tready			: in	std_logic;
		
		-- Some interrupt signals
		irq_ts				: out	std_logic;
		irq_overflow			: out	std_logic;
		irq_case			: out	std_logic;
		
		-- Ports of Axi Slave Bus Interface S_AXI_CTL
		s_axi_ctl_awaddr		: in	std_logic_vector(C_S_AXI_CTL_ADDR_WIDTH-1 downto 0);
		s_axi_ctl_awprot		: in	std_logic_vector(2 downto 0);
		s_axi_ctl_awvalid		: in	std_logic;
		s_axi_ctl_awready		: out	std_logic;
		s_axi_ctl_wdata			: in	std_logic_vector(C_S_AXI_CTL_DATA_WIDTH-1 downto 0);
		s_axi_ctl_wstrb			: in	std_logic_vector((C_S_AXI_CTL_DATA_WIDTH/8)-1 downto 0);
		s_axi_ctl_wvalid		: in	std_logic;
		s_axi_ctl_wready		: out	std_logic;
		s_axi_ctl_bvalid		: out	std_logic;
		s_axi_ctl_bready		: in	std_logic;
		s_axi_ctl_araddr		: in	std_logic_vector(C_S_AXI_CTL_ADDR_WIDTH-1 downto 0);
		s_axi_ctl_arprot		: in	std_logic_vector(2 downto 0);
		s_axi_ctl_arvalid		: in	std_logic;
		s_axi_ctl_arready		: out	std_logic;
		s_axi_ctl_rdata			: out	std_logic_vector(C_S_AXI_CTL_DATA_WIDTH-1 downto 0);
		s_axi_ctl_rvalid		: out	std_logic;
		s_axi_ctl_rready		: in	std_logic
	);		
end entity;

architecture behav of rtds_axis is
	signal clk				: std_logic;
	signal reset				: std_logic;

	-- Timestep start pulse is asserted once at the beginning of a new TS
	signal ts_pulse				: std_logic;
	
	-- Counter of elapsed TS in current simulation case
	-- With 10 uS TS this will not overflow in ~1 year.
	signal ts_cnt				: unsigned(39 downto 0);
	
	-- Timestep interrupt coalescing counter
	signal ts_coalesc_cnt			: unsigned(31 downto 0);
	
	-- Multi-rate time-step counter
	signal ts_mrate_cnt			: unsigned(15 downto 0);

	-- Number of clock cycles in current TS
	-- This is used to detect the end of a simulation which
	-- is indicated by absence of ts_pulse assertions.
	signal ts_period_cnt			: unsigned(15 downto 0); -- this allows TS up to ~327 uS
	signal ts_prev_period_cnt		: unsigned(15 downto 0); -- this allows TS up to ~327 uS
	
	-- AXI-Lite slave registers
	signal status				: std_logic_vector( 7 downto 0);
	signal control				: std_logic_vector( 7 downto 0);
	signal version				: std_logic_vector(15 downto 0);
	signal coalesc				: std_logic_vector(31 downto 0);
	signal mrate				: std_logic_vector(15 downto 0);
	
	-- RTDS => AXIS master
	signal rx_data				: std_logic_vector(31 downto 0);
	signal rx_addr				: std_logic_vector(23 downto 0);
	signal rx_valid				: std_logic;
	signal rx_rd				: std_logic;
	
	-- AXIS slave => RTDS
	signal tx_data				: std_logic_vector(31 downto 0);
	signal tx_addr				: std_logic_vector( 7 downto 0);
	signal tx_wr				: std_logic;
	signal tx_full				: std_logic;
	signal tx_inprogress			: std_logic;
	signal lock_bank			: std_logic;
	signal free_bank			: std_logic;
	
	signal case_init			: std_logic; -- TODO: broken or unsupported by RTDS_InterfaceModule?
	signal case_reset			: std_logic;
	signal linkup				: std_logic;
	signal carddetected			: std_logic;
	
	signal case_running			: std_logic;
	signal case_inreset			: std_logic;
	
	signal overflow				: std_logic;
	signal irq_active			: std_logic;
	signal mrate_active			: std_logic;
	signal mrate_pre_active			: std_logic;
	
	component two_flop_synchronizer is
		generic (
			-- 4 ns for backward compatibility with spartan3
			META_FFS_MAXDELAY		: string := "4.8 ns"
		);
		port (
			i_clk				: in	std_logic; -- destination clock
			i_signal			: in	std_logic; -- input
			o_signal			: out	std_logic  -- output
		);
	end component;
	
	component rtds_axis_axi_slv is
		generic (
			C_S_AXI_DATA_WIDTH	: integer := C_S_AXI_CTL_DATA_WIDTH;
			C_S_AXI_ADDR_WIDTH	: integer := C_S_AXI_CTL_ADDR_WIDTH
		);
		port (
			ts_cnt			: in	std_logic_vector(39 downto 0);
			ts_period		: in	std_logic_vector(15 downto 0);
			status			: in	std_logic_vector( 7 downto 0);
			control			: out	std_logic_vector( 7 downto 0);
			version			: out	std_logic_vector(15 downto 0);
			coalesc			: out	std_logic_vector(31 downto 0);
			mrate			: out	std_logic_vector(15 downto 0);
				
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
			S_AXI_BVALID		: out	std_logic;
			S_AXI_BREADY		: in	std_logic;
			S_AXI_ARADDR		: in	std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
			S_AXI_ARPROT		: in	std_logic_vector(2 downto 0);
			S_AXI_ARVALID		: in	std_logic;
			S_AXI_ARREADY		: out	std_logic;
			S_AXI_RDATA		: out	std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			S_AXI_RVALID		: out	std_logic;
			S_AXI_RREADY		: in	std_logic
		);
	end component;
	
	component RTDS_InterfaceModule is
		port (
			-- MGT interface
			SFP_RX_N		: in	std_logic;
			SFP_RX_P		: in	std_logic;
			SFP_TX_N		: out	std_logic;
			SFP_TX_P		: out	std_logic;
			SFP_LOS			: in	std_logic;
		
			-- to MGT user interface
			UserTxAdr		: in	std_logic_vector( 7 downto 0);
			UserTxData		: in	std_logic_vector(31 downto 0);
			UserTxWr		: in	std_logic;
			UserTxFull		: out	std_logic;
			UserTxInProgress	: out	std_logic;
			UserLockBank		: in	std_logic;
			UserFreeBank		: in	std_logic;
		
			UserVersion		 : in	std_logic_vector(15 downto 0);
		
			-- from MGT user interface
			UserRxAdr		: out	std_logic_vector(23 downto 0);
			UserRxData		: out	std_logic_vector(31 downto 0);
			UserRxValid		: out	std_logic;
			UserTstepPulse		: out	std_logic;
		
			-- misc control signals
			LinkUp			: out	std_logic;
			CardDetected		: out	std_logic;
			CaseReset		: out	std_logic;
			CaseInit		: out	std_logic;
		
			Clk100M			: out	std_logic;
			CLKBUF_Q0_P		: in	std_logic;
			CLKBUF_Q0_N		: in	std_logic;
			SYS_CLK			: in	std_logic;
			Button_Reset		: in	std_logic; -- High active button reset
			PowerOnRst		: out	std_logic;
		
			-- RTDS internal
			--Dip_reset		: in	std_logic;
			ila_data		: out	std_logic_vector(127 downto 0);
			ila_data1		: out	std_logic_vector(127 downto 0)
		);
	end component;
	
	component rtds_axis_fsm_rtds2axis is
		port (
			-- Control
			clk			: in	std_logic;
			aresetn			: in	std_logic;
	
			-- AXI-Stream master
			m_axis_tdata		: out	std_logic_vector(31 downto 0);
			m_axis_tvalid		: out	std_logic;
			m_axis_tlast		: out	std_logic;
			m_axis_tready		: in	std_logic;
		    	
			-- RTDS User Interface RX
			rx_data			: in	std_logic_vector(31 downto 0);
			rx_addr			: in	std_logic_vector(23 downto 0);
			rx_valid		: in	std_logic;
			
			-- RTDS flow control
			ts_pulse		: in	std_logic;
			
			-- Control
			mrate			: in	std_logic_vector(15 downto 0)
		);
	end component;
	
	component rtds_axis_fsm_axis2rtds is
		port (
			-- Control
			clk			: in	std_logic;
			aresetn			: in	std_logic;
	
			-- AXI-Stream slave
			s_axis_tdata		: in	std_logic_vector(31 downto 0);
			s_axis_tvalid		: in	std_logic;
			s_axis_tlast		: in	std_logic;
			s_axis_tready		: out	std_logic;
		    	
			-- RTDS User Interface TX
			tx_data			: out	std_logic_vector(31 downto 0);
			tx_addr			: out	std_logic_vector(7 downto 0);
			tx_wr			: out	std_logic;
			
			-- RTDS flow control
			ts_pulse		: in	std_logic;
			tx_inprogress		: in	std_logic;
			tx_full			: in	std_logic;
			lock_bank		: out	std_logic;
			free_bank		: out	std_logic;
			
			-- Control & Status
			overflow		: out	std_logic;
			mrate			: in	std_logic_vector(15 downto 0)
		);
	end component;
begin
	RST_CDC : two_flop_synchronizer
		port map (
			i_clk			=> clk,
			i_signal		=> aresetn,
			o_signal		=> reset
		);

	AXI_SLAVE : rtds_axis_axi_slv
		generic map (
			C_S_AXI_DATA_WIDTH	=> C_S_AXI_CTL_DATA_WIDTH,
			C_S_AXI_ADDR_WIDTH	=> C_S_AXI_CTL_ADDR_WIDTH
		)
		port map (
			ts_cnt			=> std_logic_vector(ts_cnt),
			ts_period		=> std_logic_vector(ts_prev_period_cnt), -- we report the period of the previous TS
			status			=> status,
			control			=> control,
			version			=> version,
			coalesc			=> coalesc,
			mrate			=> mrate, 
			
			S_AXI_ACLK		=> clk,
			S_AXI_ARESETN		=> reset,
			S_AXI_AWADDR		=> s_axi_ctl_awaddr,
			S_AXI_AWPROT		=> s_axi_ctl_awprot,
			S_AXI_AWVALID		=> s_axi_ctl_awvalid,
			S_AXI_AWREADY		=> s_axi_ctl_awready,
			S_AXI_WDATA		=> s_axi_ctl_wdata,
			S_AXI_WSTRB		=> s_axi_ctl_wstrb,
			S_AXI_WVALID		=> s_axi_ctl_wvalid,
			S_AXI_WREADY		=> s_axi_ctl_wready,
			S_AXI_BVALID		=> s_axi_ctl_bvalid,
			S_AXI_BREADY		=> s_axi_ctl_bready,
			S_AXI_ARADDR		=> s_axi_ctl_araddr,
			S_AXI_ARPROT		=> s_axi_ctl_arprot,
			S_AXI_ARVALID		=> s_axi_ctl_arvalid,
			S_AXI_ARREADY		=> s_axi_ctl_arready,
			S_AXI_RDATA		=> s_axi_ctl_rdata,
			S_AXI_RVALID		=> s_axi_ctl_rvalid,
			S_AXI_RREADY		=> s_axi_ctl_rready
		);

	IFM : RTDS_InterfaceModule
		port map (
			-- MGT interface
			SFP_RX_N		=> SFP_RX_N,
			SFP_RX_P		=> SFP_RX_P,
			SFP_TX_N		=> SFP_TX_N,
			SFP_TX_P		=> SFP_TX_P,
			SFP_LOS			=> SFP_LOS,
		
			-- to MGT user interface
			UserTxAdr		=> tx_addr,
			UserTxData		=> tx_data,
			UserTxWr		=> tx_wr,
			UserTxFull		=> tx_full,
			UserTxInProgress	=> tx_inprogress,
			UserLockBank		=> lock_bank,
			UserFreeBank		=> free_bank,
			UserVersion		=> version,
		
			-- from MGT user interface
			UserRxAdr		=> rx_addr,
			UserRxData		=> rx_data,
			UserRxValid		=> rx_valid,
			UserTstepPulse	 	=> ts_pulse,
		
			-- misc control signals
			LinkUp			=> linkup,
			CardDetected		=> carddetected,
			CaseInit		=> case_init,
			CaseReset		=> case_reset,
			Clk100M			=> clk,
			SYS_CLK			=> SYS_CLK,
			CLKBUF_Q0_N 		=> CLKBUF_Q0_N,
			CLKBUF_Q0_P 		=> CLKBUF_Q0_P,
			PowerOnRst		=> open,
			Button_Reset		=> '0'
		);
		
	FSM_RTDS2AXIS : component rtds_axis_fsm_rtds2axis
		port map (
			-- Control
			clk			=> clk,
			aresetn			=> reset,
		
			-- AXI-Stream master
			m_axis_tdata		=> m_axis_tdata,
			m_axis_tvalid		=> m_axis_tvalid,
			m_axis_tlast		=> m_axis_tlast,
			m_axis_tready		=> m_axis_tready,
			    	
			-- RTDS User Interface RX
			rx_data			=> rx_data,
			rx_addr			=> rx_addr,
			rx_valid		=> rx_valid,
				
			-- RTDS flow control
			ts_pulse		=> ts_pulse,

			-- Control			
			mrate			=> mrate
		);

	FSM_AXIS2RTDS : component rtds_axis_fsm_axis2rtds
		port map (
			-- Control
			clk			=> clk,
			aresetn			=> reset,
	
			-- AXI-Stream slave
			s_axis_tdata		=> s_axis_tdata,
			s_axis_tvalid		=> s_axis_tvalid,
			s_axis_tlast		=> s_axis_tlast,
			s_axis_tready		=> s_axis_tready,
			
			-- RTDS User Interface TX
			tx_data			=> tx_data,
			tx_addr			=> tx_addr,
			tx_wr			=> tx_wr,
						
			-- RTDS flow control
			ts_pulse		=> ts_pulse,
			tx_inprogress		=> tx_inprogress,
			tx_full			=> tx_full,
			lock_bank		=> lock_bank,
			free_bank		=> free_bank,
			
			
			-- Status & Control
			overflow		=> overflow,
			mrate			=> mrate
		);
	
	-- Various counters for simulation timestep, period and IRQ coalescing
	COUNTERS : process (clk, reset)
	begin
		if reset = '0' then
			ts_cnt				<= (others => '0');
			ts_period_cnt			<= (others => '0');
			ts_coalesc_cnt			<= (others => '0');
			ts_mrate_cnt			<= (others => '0');
			ts_period_cnt			<= (others => '0');
			ts_prev_period_cnt 		<= (others => '1');
		elsif rising_edge(clk) then
			if ts_pulse = '1' then
				ts_cnt			<= ts_cnt + 1;
				ts_coalesc_cnt		<= ts_coalesc_cnt + 1;
				ts_mrate_cnt		<= ts_mrate_cnt + 1;

				ts_period_cnt		<= (0 => '1', others => '0'); -- if ts_pulse asserted, 1 cycle already passed
				
				if case_running = '1' then
					ts_prev_period_cnt <= ts_period_cnt;
				end if;

				-- Check overflows of counters
				if ts_coalesc_cnt + 1 = unsigned(coalesc) then
					ts_coalesc_cnt	<= (others => '0');
				end if;
				if ts_mrate_cnt + 1 = unsigned(mrate) then
					ts_mrate_cnt	<= (others => '0');
				end if;
			elsif case_reset = '1' then
				ts_cnt			<= (others => '0');
				ts_coalesc_cnt		<= (others => '0');
				ts_mrate_cnt		<= (others => '0');
				ts_prev_period_cnt	<= (others => '1');
			elsif ts_period_cnt /= (ts_period_cnt'range => '1') then -- avoid overflow of period counter
				ts_period_cnt		<= ts_period_cnt + 1;
			end if;
		end if;
	end process;
	
	process (clk, reset)
	begin
		if reset = '0' then
			case_running		<= '0';
			case_inreset		<= '0';
		elsif rising_edge(clk) then
			-- CaseReset signal is asserted for simulation start
			if case_reset = '1' then
				case_inreset	<= '1';
			end if;
			
			if ts_pulse = '1' then
				case_inreset	<= '0';
				case_running	<= '1';
			end if;

			-- We have not seen a UserTStepPulse for more than 2 TS
			-- Assuming simulation has stopped
			if case_running = '1' and ts_period_cnt > ts_prev_period_cnt * 2 then
				case_running	<= '0';
			end if;
		end if;
	end process;
	
	status					<= "00" & case_inreset & case_running & tx_inprogress & tx_full & linkup & carddetected;
	
	sfp_tx_disable				<= not control(0);  -- active low!
	
	irq_active				<= '1' when ts_coalesc_cnt + 1 = unsigned(coalesc) else '0';
	mrate_active				<= '1' when ts_mrate_cnt + 1 = unsigned(mrate) else '0';

	clk100m					<= clk;
	axi_resetn				<= reset;

	-- Interrupt outputs
	irq_case				<= case_reset;
	irq_overflow				<= overflow and case_running;
	irq_ts					<= ts_pulse and irq_active and (case_running or case_inreset);

end architecture;