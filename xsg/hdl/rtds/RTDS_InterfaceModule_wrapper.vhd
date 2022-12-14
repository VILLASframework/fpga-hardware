-- Clock Domain Crossing wrapper for RTDS_InterfaceModule
--
-- Based on work from Sisounthone Souvanlasy (OPAL-RT)
--
-- @author Steffen Vogel <post@steffenvogel.de>
-- @author Sisounthone Souvanlasy <sisou@opal-rt.com>
--

library ieee;
	use ieee.std_logic_1164.all;

library UNISIM;
	use UNISIM.vcomponents.all;

entity RTDS_InterfaceModule_wrapper is
	port (
		-- XSG clocking
		i_Clk							: in	std_logic;
		i_Ce							: in	std_logic;
		i_Rst_b							: in	std_logic := '1';

		-- MGT interface
		i_CLKBUF_Q0_N						: in	std_logic;
		i_CLKBUF_Q0_P						: in	std_logic;
		i_SFP_RX_N						: in	std_logic;
		i_SFP_RX_P						: in	std_logic;
		o_SFP_TX_N						: out	std_logic;
		o_SFP_TX_P						: out	std_logic;
		i_SFP_LOS						: in	std_logic;

		-- to MGT user interface
		iv_TxAdr						: in	std_logic_vector( 7 downto 0);
		iv_TxData						: in	std_logic_vector(31 downto 0);
		i_TxWr							: in	std_logic;
		o_TxFull						: out	std_logic;
		o_TxInProgress						: out	std_logic;
		i_LockBank						: in	std_logic;
		i_FreeBank						: in	std_logic;
		iv_Version						: in	std_logic_vector(15 downto 0);

		-- from MGT user interface
		ov_RxAdr						: out	std_logic_vector(23 downto 0);
		ov_RxData						: out	std_logic_vector(31 downto 0);
		o_RxValid						: out	std_logic;
		o_TstepPulse						: out	std_logic;

		-- misc control signals
		o_LinkUp						: out	std_logic;
		o_CardDetected						: out	std_logic;
		o_CaseInit						: out	std_logic;
		o_CaseReset						: out	std_logic;
		o_Clk100M						: out	std_logic;
		i_SYS_CLK_N						: in	std_logic;
        i_SYS_CLK_P							: in	std_logic;
		o_PowerOnRst						: out	std_logic
	);
end entity RTDS_InterfaceModule_wrapper;

architecture rtl of RTDS_InterfaceModule_wrapper is
	component RTDS_InterfaceModule is
		generic (
			-- Simulation attributes
			COMPILE_FOR_SIMULATION				: std_logic := '0'
		);
		port (
			-- MGT interface
			SFP_RX_N					: in	std_logic;
			SFP_RX_P					: in	std_logic;
			SFP_TX_N					: out	std_logic;
			SFP_TX_P					: out	std_logic;
			SFP_LOS						: in	std_logic;

			-- to MGT user interface
			UserTxAdr					: in	std_logic_vector( 7 downto 0);
			UserTxData					: in	std_logic_vector(31 downto 0);
			UserTxWr					: in	std_logic;
			UserTxFull					: out	std_logic;
			UserTxInProgress				: out	std_logic;
			UserLockBank					: in	std_logic;
			UserFreeBank					: in	std_logic;

			UserVersion		 			: in	std_logic_vector(15 downto 0);

			-- from MGT user interface
			UserRxAdr					: out	std_logic_vector(23 downto 0);
			UserRxData					: out	std_logic_vector(31 downto 0);
			UserRxValid					: out	std_logic;
			UserTstepPulse					: out	std_logic;

			-- misc control signals
			LinkUp						: out	std_logic;
			CardDetected					: out	std_logic;
			CaseReset					: out	std_logic;
			CaseInit					: out	std_logic;

			Clk100M				 		: out	std_logic;
			CLKBUF_Q0_P		 			: in	std_logic;
			CLKBUF_Q0_N		 			: in	std_logic;
			SYS_CLK				 		: in	std_logic;
			--MGTREFCLK		 			: in	std_logic;
			Button_Reset					: in	std_logic; -- High active button reset
			PowerOnRst					: out	std_logic;

			-- RTDS internal
			--Dip_reset					: in	std_logic;
			ila_data					: out	std_logic_vector(127 downto 0);
			ila_data1					: out	std_logic_vector(127 downto 0)
		);
	end component;

	component afifo_65x42_fwft_dr
		port (
			rst						: in	std_logic;
			wr_clk						: in	std_logic;
			rd_clk						: in	std_logic;
			din						: in	std_logic_vector(41 downto 0);
			wr_en						: in	std_logic;
			rd_en						: in	std_logic;
			dout						: out	std_logic_vector(41 downto 0);
			full						: out	std_logic;
			empty						: out	std_logic;
			valid						: out	std_logic
		);
	end component afifo_65x42_fwft_dr;

	component afifo_65x56_fwft_dr
		port (
			rst						: in	std_logic;
			wr_clk						: in	std_logic;
			rd_clk						: in	std_logic;
			din						: in	std_logic_vector(55 downto 0);
			wr_en						: in	std_logic;
			rd_en						: in	std_logic;
			dout						: out	std_logic_vector(55 downto 0);
			full						: out	std_logic;
			empty						: out	std_logic;
			valid						: out	std_logic
		);
	end component afifo_65x56_fwft_dr;

	component two_flop_toggle_synchronizer is
		generic (
			gs_meta_ffs_maxdelay				: string := "4.8 ns" -- 4 ns for backward compatibility with spartan3
		);
		port
		(
			i_src_clk					: in	std_logic;
			i_dst_clk					: in	std_logic;
			i_rst						: in	std_logic;
			i_signal					: in	std_logic;
			o_signal					: out	std_logic
		);
	end component two_flop_toggle_synchronizer;

	component two_flop_synchronizer is
		generic (
			gs_meta_ffs_maxdelay				: string := "4.8 ns" -- 4 ns for backward compatibility with spartan3
		);
		port (
			i_clk						: in  std_logic; -- system clock
			i_signal					: in  std_logic; -- input
			o_signal					: out std_logic  -- output
		);
	end component two_flop_synchronizer;

	constant cn_TX_LOCKBANK_POS					: natural := 41;
	constant cn_TX_FREEBANK_POS					: natural := 40;
	constant cn_TX_ADDR_POS_HIGH					: natural := 39;
	constant cn_TX_ADDR_POS_LOW					: natural := 32;
	constant cn_TX_DATA_POS_HIGH					: natural := 31;
	constant cn_TX_DATA_POS_LOW					: natural := 0;

	constant cn_RX_ADDR_POS_HIGH					: natural := 55;
	constant cn_RX_ADDR_POS_LOW					: natural := 32;
	constant cn_RX_DATA_POS_HIGH					: natural := 31;
	constant cn_RX_DATA_POS_LOW					: natural := 0;

	signal s_fifo_rst						: std_logic;

	-- TX Fifo
	signal s_txFifo_we						: std_logic;
	signal s_txFifo_full						: std_logic;
	signal sv_txFifo_din						: std_logic_vector(41 downto 0);
	signal s_txFifo_rd						: std_logic;
	signal s_txFifo_valid						: std_logic;
	signal s_txFifo_valid_1d					: std_logic;
	signal sv_txFifo_dout						: std_logic_vector(41 downto 0);

	-- RX Fifo
	signal s_rxFifo_we						: std_logic;
	signal s_rxFifo_full						: std_logic;
	signal sv_rxFifo_din						: std_logic_vector(55 downto 0);
	signal s_rxFifo_rd						: std_logic;
	signal s_rxFifo_valid						: std_logic;
	signal s_rxFifo_valid_1d					: std_logic;
	signal sv_rxFifo_dout						: std_logic_vector(55 downto 0);

	-- to MGT user interface
	signal sv_UserTxAdr						: std_logic_vector( 7 downto 0);
	signal sv_UserTxData						: std_logic_vector(31 downto 0);
	signal s_UserTxWr						: std_logic;
	signal s_UserTxFull						: std_logic;
	signal s_UserTxInProgress					: std_logic;
	signal s_UserLockBank						: std_logic;
	signal s_UserFreeBank						: std_logic;
	signal sv_UserVersion						: std_logic_vector(15 downto 0);

	-- from MGT user interface
	signal sv_UserRxAdr						: std_logic_vector(23 downto 0);
	signal sv_UserRxData						: std_logic_vector(31 downto 0);
	signal s_UserRxValid						: std_logic;
	signal s_UserTstepPulse						: std_logic;

	-- misc control signals
	signal s_LinkUp							: std_logic;
	signal s_CardDetected						: std_logic;
	signal s_CaseInit						: std_logic;
	signal s_CaseReset						: std_logic;
	signal s_Clk100M						: std_logic;
	signal s_PowerOnRst						: std_logic;
	signal sv_Version						: std_logic_vector(15 downto 0);

	signal s_SYS_CLK						: std_logic;

	attribute maxdelay						: string;
	attribute maxdelay of sv_Version				: signal is "4.8 ns";
begin
	RTDS_InterfaceModule_u0 : RTDS_InterfaceModule
	port map (
		-- MGT interface
		-- Those signals will be ignored by this entity
		SFP_RX_N						=> i_SFP_RX_N,
		SFP_RX_P						=> i_SFP_RX_P,
		SFP_TX_N						=> o_SFP_TX_N,
		SFP_TX_P						=> o_SFP_TX_P,
		SFP_LOS							=> i_SFP_LOS,

		-- to MGT user interface
		UserTxAdr						=> sv_UserTxAdr,
		UserTxData						=> sv_UserTxData,
		UserTxWr						=> s_UserTxWr,
		UserTxFull						=> s_UserTxFull,
		UserTxInProgress					 => s_UserTxInProgress,
		UserLockBank						 => s_UserLockBank,
		UserFreeBank						 => s_UserFreeBank,
		UserVersion						=> sv_UserVersion,

		-- from MGT user interface
		UserRxAdr						=> sv_UserRxAdr,
		UserRxData						=> sv_UserRxData,
		UserRxValid						=> s_UserRxValid,
		UserTstepPulse	 					=> s_UserTstepPulse,

		-- misc control signals
		LinkUp							=> s_LinkUp,
		CardDetected		 				=> s_CardDetected,
		CaseInit						=> s_CaseInit,
		CaseReset						=> s_CaseReset,
		Clk100M							=> s_Clk100M,
		SYS_CLK							=> s_SYS_CLK,
		CLKBUF_Q0_N 						=> i_CLKBUF_Q0_N,
		CLKBUF_Q0_P 						=> i_CLKBUF_Q0_P,
		PowerOnRst			 			=> s_PowerOnRst,
		Button_Reset						=> '0'
	);

	TX_FIFO_u0 : afifo_65x42_fwft_dr
	port map (
		rst							=> s_fifo_rst,
		wr_clk							=> i_Clk,
		rd_clk							=> s_Clk100M,
		din							=> sv_txFifo_din,
		wr_en							=> s_txFifo_we and i_Ce,
		rd_en							=> s_txFifo_rd,
		dout							=> sv_txFifo_dout,
		full							=> s_txFifo_full,
		empty							=> open,
		valid							=> s_txFifo_valid
	);

	RX_FIFO_u0 : afifo_65x56_fwft_dr
	port map (
		rst							=> s_fifo_rst,
		wr_clk							=> s_Clk100M,
		rd_clk							=> i_Clk,
		din							=> sv_rxFifo_din,
		wr_en							=> s_rxFifo_we,
		rd_en							=> s_rxFifo_rd and i_Ce,
		dout							=> sv_rxFifo_dout,
		full							=> open,
		empty				 			=> open,
		valid							=> s_rxFifo_valid
	);

	s_fifo_rst							<= not i_Rst_b;

	-- Write TX Fifo
	o_TxFull							<= s_txFifo_full;
	s_txFifo_we							<= i_TxWr and (not s_txFifo_full);
	sv_txFifo_din(cn_TX_DATA_POS_HIGH downto cn_TX_DATA_POS_LOW)	<= iv_TxData;
	sv_txFifo_din(cn_TX_ADDR_POS_HIGH downto cn_TX_ADDR_POS_LOW)	<= iv_TxAdr;
	sv_txFifo_din(cn_TX_FREEBANK_POS)				<= i_FreeBank;
	sv_txFifo_din(cn_TX_LOCKBANK_POS)				<= i_LockBank;

	-- Read TX Fifo
	s_txFifo_rd							<= s_txFifo_valid and s_txFifo_valid_1d;

	TxFifoRead : process(s_Clk100M)
	begin
		if rising_edge(s_Clk100M) then
			if (i_Rst_b = '0') then
				s_UserTxWr				<= '0';
				sv_UserTxData				<= (others => '0');
				sv_UserTxAdr				<= (others => '0');
				s_UserLockBank				<= '0';
				s_UserFreeBank				<= '0';
				s_txFifo_valid_1d			<= '0';
			else
				s_txFifo_valid_1d			<= s_txFifo_valid and (not s_UserTxFull);
				s_UserTxWr					<= s_txFifo_rd;
				sv_UserTxData				<= sv_txFifo_dout(cn_TX_DATA_POS_HIGH downto cn_TX_DATA_POS_LOW);
				sv_UserTxAdr				<= sv_txFifo_dout(cn_TX_ADDR_POS_HIGH downto cn_TX_ADDR_POS_LOW);
				s_UserFreeBank				<= sv_txFifo_dout(cn_TX_FREEBANK_POS);
				s_UserLockBank				<= sv_txFifo_dout(cn_TX_LOCKBANK_POS);
			end if;
		end if;
	end process TxFifoRead;

	-- Write RX Fifo
	sv_rxFifo_din(cn_RX_ADDR_POS_HIGH downto cn_RX_ADDR_POS_LOW)	<= sv_UserRxAdr;
	sv_rxFifo_din(cn_RX_DATA_POS_HIGH downto cn_RX_DATA_POS_LOW)	<= sv_UserRxData;
	s_rxFifo_we							<= s_UserRxValid;

	-- Read TX Fifo
	s_rxFifo_rd							<= s_rxFifo_valid and s_rxFifo_valid_1d;

	RxFifoRead : process(i_Clk, i_Ce)
	begin
		if rising_edge(i_Clk) and i_Ce = '1' then
			if (i_Rst_b = '0') then
				s_rxFifo_valid_1d	<= '0';
				ov_RxAdr				<= (others => '0');
				ov_RxData				<= (others => '0');
				o_RxValid				<= '0';
			else
				s_rxFifo_valid_1d			<= s_rxFifo_valid;
				ov_RxAdr				<= sv_rxFifo_dout(cn_RX_ADDR_POS_HIGH downto cn_RX_ADDR_POS_LOW);
				ov_RxData				<= sv_rxFifo_dout(cn_RX_DATA_POS_HIGH downto cn_RX_DATA_POS_LOW);
				o_RxValid				<= s_rxFifo_rd;
			end if;
		end if;
	end process RxFifoRead;

	-- Clock out
	o_Clk100M			 				<= s_Clk100M;

	LinkUp_CDC : two_flop_synchronizer
	port map (
		i_Clk							=> i_Clk,
		i_signal						=> s_LinkUp,
		o_signal						=> o_LinkUp
	);

	CardDetected_CDC : two_flop_synchronizer
	port map (
		i_Clk							=> i_Clk,
		i_signal						=> s_CardDetected,
		o_signal						=> o_CardDetected
	);

	PowerOnRst_CDC : two_flop_synchronizer
	port map (
		i_Clk							=> i_Clk,
		i_signal						=> s_PowerOnRst,
		o_signal						=> o_PowerOnRst
	);

	TxInProgress_CDC : two_flop_synchronizer
	port map (
		i_Clk							=> i_Clk,
		i_signal						=> s_UserTxInProgress,
		o_signal						=> o_TxInProgress
	);

	-- UserVersion CDC : This can be set as false path.
	--    But for the sake of stability we'll use synchronizers to filter metastabilities
	UserVersion_CDC : for i in 0 to iv_Version'length - 1 generate
		SynchronizerUserVersion : two_flop_synchronizer
		port map (
			i_Clk						=> i_Clk,
			i_signal					=> sv_Version(i),
			o_signal					=> sv_UserVersion(i)
		);
	end generate;

	sv_Version <= iv_Version;

	-- UserTstepPulse CDC: single pulse -> use toggle flip-flop + synchronizer
	UserTstepPulse_CDC: two_flop_toggle_synchronizer
	port map (
		i_src_clk						=> s_Clk100M,
		i_dst_clk						=> i_Clk,
		i_rst							=> i_Rst_b,
		i_signal						=> s_UserTstepPulse,
		o_signal						=> o_TstepPulse
	);

	-- CaseInit CDC: Single pulse -> use toggle flip-flop + synchronizer
	CaseInit_CDC: two_flop_toggle_synchronizer
	port map (
		i_src_clk						=> s_Clk100M,
		i_dst_clk						=> i_Clk,
		i_rst							=> i_Rst_b,
		i_signal						=> s_CaseInit,
		o_signal						=> o_CaseInit
	);

	-- CaseReset CDC: Single pulse -> use toggle flip-flop + synchronizer
	CaseReset_CDC: two_flop_toggle_synchronizer
	port map (
		i_src_clk						=> s_Clk100M,
		i_dst_clk						=> i_Clk,
		i_rst							=> i_Rst_b,
		i_signal						=> s_CaseReset,
		o_signal						=> o_CaseReset
	);

	-- Clocking buffers
	--------------------------------------------------------------------------------
	-- Clock buffering for MGT module (REQUIRED)
	-- Note: use the Clk100M port to clock user application
	--------------------------------------------------------------------------------
	--q4_clk0_refclk_ibufds_i : IBUFDS_GTE2
	--port map
	--(
	--	O							=> MGTREFCLK ,
	--	ODIV2							=> open ,
	--	CEB							=> gnd ,
	--	I							=> CLKBUF_Q0_P ,  -- Connect to package pin AH8
	--	IB							=> CLKBUF_Q0_N   -- Connect to package pin AH7
	--);

	SYS_CLKBUF: IBUFDS port map
	(
		I							=> i_SYS_CLK_P, -- Connect to package pin E19
		IB							=> i_SYS_CLK_N, -- Connect to package pin E18
		O							=> s_SYS_CLK
	);

end rtl;
