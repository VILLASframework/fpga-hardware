library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity rtds_axis_fsm_rtds2axis is
	port (
		-- Control
		clk				: in	std_logic;
		aresetn				: in	std_logic;

		-- AXI-Stream master
		m_axis_tdata			: out	std_logic_vector(31 downto 0);
		m_axis_tvalid			: out	std_logic;
		m_axis_tlast			: out	std_logic;
		m_axis_tready			: in	std_logic;
	    	
		-- RTDS User Interface RX
		rx_data				: in	std_logic_vector(31 downto 0);
		rx_addr				: in	std_logic_vector(23 downto 0);
		rx_valid			: in	std_logic;
		
		-- RTDS flow control
		ts_pulse			: in	std_logic;
		
		-- Control & Status
		mrate				: in	std_logic_vector(15 downto 0)
	);
end entity;

architecture rtl of rtds_axis_fsm_rtds2axis is
	type states is (STATE_WAIT_FIRST, STATE_WAIT_FIRST2, STATE_WAIT_RECV);
	signal state				: states := STATE_WAIT_FIRST;

	signal wdt				: unsigned(3 downto 0);
	
	signal rx_data_prev			: std_logic_vector(31 downto 0);
begin
	-- We delay received value until we receive the next one
	-- This way we can detect the last value if the wdt is triggering
	-- The last value is marked as the last in the sample by asserting m_axis_tlast
	process (clk, aresetn)
	begin
		if aresetn = '0' then
			wdt			<= (others => '0');
			
			rx_data_prev		<= (others => '0');

			m_axis_tvalid		<= '0';			
			m_axis_tlast		<= '0';
			m_axis_tdata		<= (others => '0');

		elsif rising_edge(clk) then
			m_axis_tvalid		<= '0';			
			m_axis_tlast		<= '0';
			m_axis_tdata		<= (others => '0');
			
			-- Register rx_data to rx_data_prev
			if rx_valid = '1' then
				rx_data_prev	<= rx_data;
				wdt		<= (others => '0');
			else
				wdt		<= wdt + 1;
			end if;
								
			case state is
				-- Waiting for first value
				when STATE_WAIT_FIRST =>
					if rx_valid = '1' then
						state		<= STATE_WAIT_FIRST2;
					end if;
				
				when STATE_WAIT_FIRST2 =>
					state			<= STATE_WAIT_RECV;

				-- Wait for more values
				when STATE_WAIT_RECV =>
					-- WDT expired, we assume this rx_data_prev was the last one
					if wdt = (wdt'range => '1') then
						-- Post data to AXI Stream
						m_axis_tvalid 	<= '1';
						m_axis_tlast 	<= '1';
						m_axis_tdata	<= rx_data_prev;
						
						state		<= STATE_WAIT_FIRST;
					elsif rx_valid = '1' then
						-- Post data to AXI Stream
						m_axis_tvalid 	<= '1';
						m_axis_tdata	<= rx_data_prev;
						
						if rx_addr = (rx_addr'range => '0') then
							m_axis_tlast	<= '1';
							state		<= STATE_WAIT_FIRST2;
						else
							state		<= STATE_WAIT_RECV;
						end if;
					end if;
			end case;
		end if;
	end process;
end architecture;
