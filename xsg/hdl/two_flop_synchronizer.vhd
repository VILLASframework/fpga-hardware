--------------------------------------------------------------------------------
--       Title: Two-Flop Synchronizer
--------------------------------------------------------------------------------
--    $RCSfile: two_flop_synchronizer.vhd,v $
--      Author: Michel Brisson
--  Created on: 2009/04/15
--     Company: Opal-RT Technologies inc.
-- Last update $Author: sisous $
--               $Date: 2012-08-17 19:51:59 $
--           $Revision: 1.6 $
--------------------------------------------------------------------------------
-- Description: A "two pipelined Flip-flops" design is used to reduce the
--              chances of system failure due to metastability.
--              * INPUT is asynchronous, and META might go metastable from time
--                to time
--              * However, as long as META resolves before the next clock period
--                o_signal should have valid logic levels
--              * Place FFs close together to allow maximum time for META to
--                reslove.
--------------------------------------------------------------------------------
--  $CVSHeader: opal_hdl/clock_domain_synchronizer/src/two_flop_synchronizer.vhd,v 1.6 2012-08-17 19:51:59 sisous Exp $
--------------------------------------------------------------------------------
-- Copyright 2009 @ Opal-RT Technologies Inc.
--------------------------------------------------------------------------------

library ieee;
	use ieee.std_logic_1164.all;

entity two_flop_synchronizer is
	generic (
		gs_meta_ffs_maxdelay			: string := "4.8 ns" -- 4 ns for backward compatibility with spartan3
	);
	port (
		i_clk							: in  std_logic; -- system clock
		i_signal						: in  std_logic; -- input
		o_signal						: out std_logic  -- output
	);
end entity two_flop_synchronizer;

architecture behav of two_flop_synchronizer is
	signal meta_signal					: std_logic := '0';
	signal meta_signal_1d				: std_logic := '0';
		
	attribute maxdelay					: string;
	attribute maxdelay of meta_signal	: signal is gs_meta_ffs_maxdelay;
begin
	o_signal <= meta_signal_1d;

	process(i_clk)
	begin
		if rising_edge(i_clk) then
			meta_signal					<= i_signal;
			meta_signal_1d				<= meta_signal;
		end if;
	end process;
end behav;