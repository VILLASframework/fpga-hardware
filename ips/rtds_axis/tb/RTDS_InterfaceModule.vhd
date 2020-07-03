-- Simulation model for RTDS_InterfaceModule
-- Board: Xilinx VC707
-- PCB Version: 03, Firmware Version: 06

library acs;
    use acs.helpers.all;
    use acs.villas.all;

library std;
    use std.textio.all;

library ieee_proposed;
    use ieee_proposed.float_pkg.all; 

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_textio.all;
    use ieee.numeric_std.all;
    use ieee.math_real.all;

entity RTDS_InterfaceModule is
	generic (
		RX_FILE_PATH				: string := "receive.txt";
		TX_FILE_PATH				: string := "send.txt";
		DEBUG					: boolean := true;
		
		-- Period of UserTstepPulse's
		TIMESTEP				: time := 10 us;
		CLK_PERIOD				: time := 10 ns;
				
		-- All offsets are in Clk100M cycles
		
		-- Initialization timings
		--------------------------------------------------------------------------------------------
		-- They do not completely match the real timings of RTDS_InterfaceModule
		-- To improve simulation performance only the logical order has been preserved
		OFFSET_RESET				: natural := 2;  -- assertion of PowerOnRst for 1 cycle
		OFFSET_LINKUP				: natural := 100;	 -- assertion of LinkUp
		OFFSET_CARDDETECTED			: natural := 50; -- assertion of CardDetected
		OFFSET_PRE_TS				: natural := 80; -- single assertion of UserTStepPulse before CaseReset for 1 cycle
		OFFSET_CASE_RESET			: natural := 500; -- assertion of CaseReset for 1 cycle
		OFFSET_FIRST_TS				: natural := 1500; -- first assertion of UserTStepPulse after CaseReset for 1 cycle
		
		-- Receive Timings
		--------------------------------------------------------------------------------------------
		OFFSET_RX_START				: natural := 59; -- wait 59 cycles after assertion of UserTstepPulse before asserting UserRxValid for the first time
		RX_GAP					: natural := 8   -- wait 8 cycles between consecutive assertions of UserRxValid

	);
	port
	(
		-- MGT interface
		SFP_RX_N				: in  std_logic;
		SFP_RX_P				: in  std_logic;
		SFP_TX_N				: out std_logic;
		SFP_TX_P				: out std_logic;
		SFP_LOS					: in  std_logic;
		
		-- to MGT user interface
		UserTxAdr				: in  std_logic_vector( 7 downto 0);
		UserTxData				: in  std_logic_vector(31 downto 0);
		UserTxWr				: in  std_logic;
		UserTxFull				: out std_logic;
		UserTxInProgress			: out std_logic;
		UserLockBank				: in  std_logic;
		UserFreeBank				: in  std_logic;

		UserVersion		 		: in  std_logic_vector(15 downto 0);

		-- from MGT user interface
		UserRxAdr				: out std_logic_vector(23 downto 0);
		UserRxData				: out std_logic_vector(31 downto 0);
		UserRxValid				: out std_logic := '0';
		UserTstepPulse				: out std_logic;

		-- misc control signals
		LinkUp					: out std_logic := '0';
		CardDetected				: out std_logic := '0';
		CaseReset				: out std_logic := '0';
		CaseInit				: out std_logic := '0';

		Clk100M				 	: out std_logic;
		CLKBUF_Q0_P		 		: in std_logic;
		CLKBUF_Q0_N		 		: in std_logic;
		SYS_CLK				 	: in std_logic;
		--MGTREFCLK		 		: in std_logic;
		Button_Reset				: in std_logic; -- High active button reset	 
		PowerOnRst				: out std_logic;

		-- RTDS internal
		--Dip_reset				: in std_logic;
		ila_data				: out std_logic_vector(127 downto 0);
		ila_data1				: out std_logic_vector(127 downto 0)
	);
end entity;

architecture sim_acs of RTDS_InterfaceModule is
	signal clk					: std_logic := '0';
	signal rst					: std_logic := '0';
	signal crst					: std_logic := '0';
	signal ts_pulse, ts_pulse_pre			: std_logic := '0';
	
	signal initialized, running, locked		: boolean := false;
begin
	Clk100M						<= clk;
	
	PowerOnRst					<= rst;
	CaseReset					<= crst;
	UserTstepPulse					<= ts_pulse or ts_pulse_pre;

	-- Generate the user clock (Clk100M) with a 10 ns period
	CLK_GEN : process
	begin
		wait for CLK_PERIOD / 2;
		clk				<= '0';
		wait for CLK_PERIOD / 2;
		clk				<= '1';
	end process;
	
	-- Initialization sequence
	TS_GEN : process
	begin
		wait on clk;
		if rising_edge(clk) and running then
			ts_pulse			<= '1';
			wait until rising_edge(clk);
			ts_pulse			<= '0';
			wait for TIMESTEP - CLK_PERIOD;
		end if;
	end process;
	
	-- Read data from file and send it to UserRx interface
	RX : process
		file rx_file			: text open READ_MODE is RX_FILE_PATH;
		variable sample			: sample;
		variable cmd			: command;
	begin
		-- Initial values
		UserRxValid			<= '0';
		UserRxAdr			<= (others => '0');
		UserRxData			<= (others => '0');
		
		-- Only if simulation case started
		read_sample(rx_file, sample, cmd); -- Read next sample from file
		case cmd is
			when CMD_INIT =>
				report "Start GTFPGA init";
			
				wait for OFFSET_RESET * CLK_PERIOD;
				wait until rising_edge(clk);
				toggle(clk, rst);
				
				wait for OFFSET_LINKUP * CLK_PERIOD;
				wait until rising_edge(clk);
				LinkUp		<= '1';
			
				wait for OFFSET_CARDDETECTED * CLK_PERIOD;
				wait until rising_edge(clk);
				CardDetected	<= '1';
				
				initialized	<= true;
				
			when CMD_DEINIT =>
				wait until rising_edge(clk);
				CardDetected	<= '0';
				LinkUp		<= '0';
				
			when CMD_START =>
				report "Start simulation case";
			
				wait for OFFSET_PRE_TS * CLK_PERIOD;
				wait until rising_edge(clk);
				toggle(clk, ts_pulse_pre);
				
				wait for OFFSET_CASE_RESET * CLK_PERIOD;
				wait until rising_edge(clk);
				toggle(clk, crst);
				
				wait for OFFSET_FIRST_TS * CLK_PERIOD;
				wait until rising_edge(clk);
				
				running		<= true;
				wait until rising_edge(clk);
			
			when CMD_STOP =>
				running		<= false;
				
			when CMD_PAUSE =>
				report "CMD: pause";
				wait for sample.values(0) * CLK_PERIOD;				
				wait until rising_edge(clk);
				
			when CMD_WAIT =>
				report "CMD: wait for next timestep";
				wait until rising_edge(ts_pulse);
				wait for OFFSET_RX_START * CLK_PERIOD;
				wait until rising_edge(clk);

			when CMD_ABORT =>
				report "CMD: abort => Simulation stopped" severity FAILURE;
								
			when CMD_DATA =>
				report "CMD: data";
				assert initialized and running report "Not ready" severity FAILURE;
				
				

				for index in 0 to sample.length - 1 loop
					UserRxAdr		<= std_logic_vector(to_unsigned((index) * 4, UserRxAdr'length));
					UserRxData		<= to_slv(to_float(sample.values(index)));
					UserRxValid		<= '1';
					wait for CLK_PERIOD;
					UserRxValid		<= '0';
					wait for (RX_GAP-1) * CLK_PERIOD; -- we already consumed one cycle
				end loop;
			when others =>
		end case;  
	end process;
	
	-- Write data to disk and check if LockFree handshaking is correct.
	TX : process(clk)
		file tx_file			: text open WRITE_MODE is TX_FILE_PATH;
		variable sample			: sample;
		variable seq			: natural := 0;
	begin
		if rising_edge(clk) then
			-- A new timestep started. We will write values from the last timestep to file
			if ts_pulse = '1' and sample.length > 0 then
				sample.seconds		:= now / 1 sec;
				sample.nanoseconds	:= (now - (now / 1 sec) * 1 sec) / 1 ns;
				sample.sequence		:= seq;
	
				write_sample(tx_file, sample, CMD_DATA);
				
				if DEBUG then -- Write to STDOUT as well if desired
					write_sample(output, sample, CMD_DATA);
				end if;
				
				sample.length		:= 0;
				seq			:= seq + 1;
			end if;
			
			-- A new write action
			if UserTxWr = '1' then
				if UserLockBank = '1' then
					assert locked = false report "Bank was already locked" severity FAILURE;
					locked		<= true;
				elsif UserFreeBank = '1' then
					assert locked = true report "Bank was not locked" severity FAILURE;
					locked		<= false;
				else
					assert locked = true report "Write with unlocked bank!" severity FAILURE;
					
					sample.values(sample.length)	:= to_real(to_float(UserTxData));
					sample.length			:= (sample.length  + 1) mod sample.values'high;
				end if;
			end if;
		end if; 
	end process;
	
	-- Simulate UserTxInProgress and UserTxFull
	process (clk)
		constant FIFO_DEPTH		: natural := 256;
		constant TX_CLKS		: natural := 5;

		variable fifo_occupancy		: natural := 0;
		variable tx_timer		: natural := 0;
	begin
		if rising_edge(clk) then
			-- Increment countdown timer if more words are transmitted
			if UserTxWr = '1' then
				assert fifo_occupancy < fifo_depth report "Writing to full FIFO. Data will be lost!" severity WARNING;

				fifo_occupancy	:= fifo_occupancy + 1;
			end if;
			
			if fifo_occupancy >= fifo_depth then
				UserTxFull	<= '1';
			else
				UserTxFull	<= '0';
			end if;
			
			if fifo_occupancy > 0 then
				tx_timer		:= tx_timer + 1;
				if tx_timer >= TX_CLKS then
					fifo_occupancy	:= fifo_occupancy - 1;
					tx_timer	:= 0;
				end if;

				UserTxInProgress	<= '1';
			else
				UserTxInProgress	<= '0';
			end if;
		
		end if;
	end process;
end architecture;