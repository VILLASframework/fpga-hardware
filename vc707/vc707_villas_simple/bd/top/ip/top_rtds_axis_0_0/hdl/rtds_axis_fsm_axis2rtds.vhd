library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity rtds_axis_fsm_axis2rtds is
	port (
		-- Control
		clk				: in	std_logic;
		aresetn				: in	std_logic;

		-- AXI-Stream slave
		s_axis_tdata			: in	std_logic_vector(31 downto 0);
		s_axis_tvalid			: in	std_logic;
		s_axis_tlast			: in	std_logic;
		s_axis_tready			: out	std_logic;
	    	
		-- RTDS User Interface TX
		tx_data				: out	std_logic_vector(31 downto 0);
		tx_addr				: out	std_logic_vector(7 downto 0);
		tx_wr				: out	std_logic;
		
		-- RTDS flow control
		ts_pulse			: in	std_logic;
		tx_inprogress			: in	std_logic;
		tx_full				: in	std_logic;
		lock_bank			: out	std_logic;
		free_bank			: out	std_logic;
		
		-- Status & Control
		overflow			: out	std_logic;
		mrate				: in	std_logic_vector(15 downto 0)
	);
end entity;

architecture rtl of rtds_axis_fsm_axis2rtds is
	type states is (STATE_LOCK_BANK, STATE_WRITE_WORD, STATE_UNLOCK_BANK);
	signal state				: states := STATE_LOCK_BANK;

	-- Aliased to s_axis_tready
	signal ready				: std_logic;
	-- Did we completed a transmission in the current timestep?
	signal completed			: std_logic;
	-- The index / address of the last received value 
	signal index				: unsigned(5 downto 0); -- 0 to 63 values are supported
	
	signal tx_inprogress_1d			: std_logic;
begin
	-- We trigger an overflow if a new timestep starts while old data has
	-- not completely put on link
	overflow				<= ts_pulse and not completed;

	ready					<= '1' when tx_full = '0' and state = STATE_WRITE_WORD else
						   '0';

	s_axis_tready				<= ready;

	process (clk, aresetn)
	begin
		if aresetn = '0' then
			completed		<= '0';
			lock_bank		<= '0';
			free_bank		<= '0';
			index			<= (others => '0');
			tx_addr			<= (others => '0');
			tx_data			<= (others => '0');
		elsif rising_edge(clk) then
			tx_wr			<= '0';
			lock_bank		<= '0';
			free_bank		<= '0';
			
			-- Detect end of transmission
			tx_inprogress_1d	<= tx_inprogress;
			if tx_inprogress = '0' and tx_inprogress_1d = '1' then -- if falling edge on tx_inprogress
				completed	<= '1';
			end if;
			
			-- For all states
			if ts_pulse = '1' then
				completed	<= '0';
			end if;

			case state is
				-- Wait for first data word and lock bank
				when STATE_LOCK_BANK =>
					index 	<= (others => '0');

					-- We only start a transmission if there's valid data
					-- ready to be sent to RTDS
					if s_axis_tvalid = '1' then
						lock_bank	<= '1';
						tx_wr		<= '1';
						
						state		<= STATE_WRITE_WORD;
					end if;
					
				-- Wait for data from AXI-stream (probably fed by a FIFO)
				when STATE_WRITE_WORD =>
					if s_axis_tvalid = '1' and ready = '1' then
						index	<= index + 1;
				
						tx_addr		<= std_logic_vector(index) & "00";	
						tx_data		<= s_axis_tdata;
						tx_wr		<= '1';
						
						if s_axis_tlast = '1' then
							state		<= STATE_UNLOCK_BANK;
						end if;
					end if;
				
				-- Unlock memory bank
				when STATE_UNLOCK_BANK =>
					free_bank		<= '1';
					tx_wr			<= '1';
					
					-- Wait for beginning of next TS
					state			<= STATE_LOCK_BANK;
			end case;
		end if;
	end process;
end architecture;
