library ieee;
    use ieee.std_logic_1164.all;

library acs;
    use acs.helpers.all;

entity tb is
	generic (
		CLK_PERIOD				: time := 10 ns
	);
end entity;

architecture behav of tb is
	signal clk					: std_logic;
	signal tvalid, tready, tlast			: std_logic;

	component axis_delay is
		generic (
			MEAN				: real := 5.0;
			VARIANCE			: real := 2.0;
			USE_RANDOM			: boolean := false;
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
	end component;
begin
	DELAY : axis_delay
		generic map (
			USE_RANDOM		=> false
		)
		port map (
			s_axis_aclk		=> clk,	
			s_axis_aresetn		=> '1',
			
			s_axis_tvalid		=> tvalid,
			s_axis_tready		=> open,
			s_axis_tlast		=> tlast,	
			s_axis_tdata		=> (others => '0'),
			
			m_axis_tvalid		=> open,
			m_axis_tready		=> tready,
			m_axis_tlast		=> open,
			m_axis_tdata		=> open
		);
		
	GEN_CLK : process
	begin
		clk				<= '1';
		wait for CLK_PERIOD / 2;
		clk				<= '0';
		wait for CLK_PERIOD / 2;
	end process;
		
	STIMULUS : process
	begin
		tvalid				<= '0';
		tlast				<= '0';
		tready				<= '1';

		wait for 20 * CLK_PERIOD;
		
		toggle(clk, tvalid);
		wait until rising_edge(clk);
		toggle(clk, tvalid);
		wait until rising_edge(clk);
		toggle(clk, tvalid);
		wait until rising_edge(clk);

		tlast				<= '1';
		tvalid				<= '1';
		wait until rising_edge(clk);
		tlast				<= '0';
		tvalid				<= '0';
		wait until rising_edge(clk);
	
		wait for 20 * CLK_PERIOD;
		toggle(clk, tvalid);

	
		wait;
	end process;
end architecture;