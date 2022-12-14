-- CDC Synchronizer for single pulse signals
--
-- Based on work from Sisou (OPAL-RT)
--
-- @author Steffen Vogel <post@steffenvogel.de>
-- @author Sisounthone Souvanlasy <sisou@opal-rt.com>
--

library ieee;
	use ieee.std_logic_1164.all;

entity two_flop_toggle_synchronizer is
	generic (
		gs_meta_ffs_maxdelay			: string := "4.8 ns" -- 4 ns for backward compatibility with spartan3
	);
	port
	(
		i_src_clk						: in	std_logic;
		i_dst_clk						: in	std_logic;
		i_rst							: in	std_logic;
		i_signal						: in	std_logic;
		o_signal						: out	std_logic
	);
end entity two_flop_toggle_synchronizer;

architecture behav of two_flop_toggle_synchronizer is
	signal s_tff						: std_logic;
	signal s_resynch					: std_logic := '0';
	signal s_resynch_1d					: std_logic := '0';
	signal s_resynch_2d					: std_logic := '0';

	attribute maxdelay					: string;
	attribute maxdelay of s_tff			: signal is gs_meta_ffs_maxdelay;
	attribute maxdelay of s_resynch		: signal is gs_meta_ffs_maxdelay;
	attribute maxdelay of s_resynch_1d	: signal is gs_meta_ffs_maxdelay;
	attribute maxdelay of s_resynch_2d	: signal is gs_meta_ffs_maxdelay;
begin
	Toggle_Flip_Flop : process (i_src_clk, i_rst)
	begin
		if(i_rst = '0') then
			s_tff						<= '0';
		elsif(rising_edge(i_src_clk)) then
			s_tff						<= s_tff XOR i_signal;
		end if;
	end process;

	Edge_Synchronizer : process (i_dst_clk, i_rst)
	begin
		if(i_rst = '0') then
			s_resynch					<= '0';
			s_resynch_1d				<= '0';
			s_resynch_2d				<= '0';
			o_signal					<= '0';
		elsif(rising_edge(i_dst_clk)) then
			s_resynch					<= s_tff;
			s_resynch_1d				<= s_resynch;
			s_resynch_2d				<= s_resynch_1d;
			o_signal					<= s_resynch_2d xor s_resynch_1d;
		end if;
	end process;
end architecture behav;
