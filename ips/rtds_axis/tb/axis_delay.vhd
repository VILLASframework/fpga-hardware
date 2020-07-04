library ieee;
    use ieee.std_logic_1164.all;

library acs;
    use acs.helpers.all;

entity axis_delay is
	generic (
		MEAN				: real := 5.0;
		VARIANCE			: real := 2.0;
		USE_RANDOM			: boolean := false;
		DISABLED			: boolean := false;
		SEED				: positive := 942935562
	);
	port (
		s_axis_aclk			: in	std_logic;
		s_axis_aresetn			: in	std_logic;

		s_axis_tvalid			: in	std_logic;
		s_axis_tready			: out	std_logic;
		s_axis_tlast			: in	std_logic;
		s_axis_tdata			: in	std_logic_vector(31 downto 0);

		m_axis_tvalid			: out	std_logic;
		m_axis_tready			: in	std_logic;
		m_axis_tlast			: out	std_logic;
		m_axis_tdata			: out	std_logic_vector(31 downto 0)
	);
end entity;

architecture sim of axis_delay is
	signal inpacket				: boolean := false; -- Packet is currently in processing
	signal dly_cnt				: natural;
begin
	m_axis_tlast				<= s_axis_tlast;	
	m_axis_tdata				<= s_axis_tdata;

	m_axis_tvalid				<= s_axis_tvalid when DISABLED or (inpacket and dly_cnt = 0) else '0';
	s_axis_tready				<= m_axis_tready when DISABLED or (inpacket and dly_cnt = 0) else '0';

	process (s_axis_aclk, s_axis_aresetn)
		variable seed1, seed2		: positive := SEED;
  		variable rand			: real;
  		variable dly			: natural;
	begin
		if rising_edge(s_axis_aclk) then
			if s_axis_tvalid = '1' and not inpacket then
				-- Generate random delay cycles
				if USE_RANDOM then
					normal(seed1, seed2, rand);
					dly	:= natural(MEAN + rand * VARIANCE);
				else
					dly	:= natural(MEAN);
				end if;
				
				--report "Delay AXI Stream bus packet for " & real'image(rand) & " " & natural'image(dly);

				dly_cnt		<= dly;
			elsif dly_cnt > 0 then
				dly_cnt		<= dly_cnt - 1;
			end if;
		end if;
	end process;

	process (s_axis_aclk)
	begin
		if rising_edge(s_axis_aclk) and not inpacket and s_axis_tvalid = '1' then
			inpacket <= true;
		elsif inpacket and s_axis_tvalid = '1' and s_axis_tlast = '1' then
			inpacket <= false;
		end if;
	end process;

end architecture;