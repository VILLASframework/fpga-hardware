-- Read and write samples to files for simulation
--
-- This package can read and write samples line by line
-- from text files.
-- The format is the same one which is used my S2SS / VILLASnode:
--
--    seconds.nanoseconds+offset(sequence) value1 value2 value3 ...
--
-- @author Steffen Vogel <steffen.vogel.rwth-aachen.de> 
-- @copyright 2016, Steffen Vogel

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_textio.all;
    use ieee.numeric_std.all;
    use ieee.math_real.all;
    
library std;
    use std.textio.all;

library acs;
    use acs.txt_util.all;

package villas is
	type sample_values is array (natural range <>) of real; --std_logic_vector(31 downto 0);
	type sample is record
		seconds				: natural;
		nanoseconds			: natural;
		sequence			: integer;
		length				: natural;
		values				: sample_values(0 to 63); -- RTDS_InterfaceModule supports up to 64 values
	end record;
	
	type command				is (CMD_DATA, CMD_INIT, CMD_DEINIT, CMD_START, CMD_STOP, CMD_PAUSE, CMD_ABORT, CMD_WAIT);
	
	procedure read_sample(
		file f				: text;
		variable data			: out sample;
		variable cmd			: out command
	);	
	
	procedure write_sample(
		file f				: text;
		variable data			: in sample;
		constant cmd			: in command
	);
end package;

package body villas is

	procedure read_sample(
		file f				: text;
		variable data			: out sample;
		variable cmd			: out command
	) is
		variable good			: boolean := false;
		variable l			: line;
		variable i, secs, nsecs 	: integer := 0;
		variable seq			: integer := -1;
		variable c			: character;
		variable r			: real;
		variable s			: string(1 to 16);
	begin
		-- Read next valid line
		retry : loop
			if endfile(f) then
				return;
			end if;
			
			readline(f, l);
			
			next when l'length = 0;			-- Skip empty lines 
			
			white : for p in 1 to l'right loop	-- Skip whitespaces
				c := l(p);
				next retry when c = '#';
				exit retry when c /= ' ' and c /= HT;
			end loop;
		end loop;
		
		-- Check for special command
		if l(1) = '!' then
			str_read(l, s);
			case s is
				when "!init" =>
					cmd 	:= CMD_INIT;
				when "!deinit" =>
					cmd 	:= CMD_DEINIT;
				when "!start" =>
					cmd	:= CMD_START;
				when "!stop" =>
					cmd	:= CMD_STOP;
				when "!pause" =>
					cmd	:= CMD_PAUSE;
					read(l, r, good); assert good report "Failed to read argument of !pause" severity FAILURE;
					data.values(0) := r;
				when "!abort" =>
					cmd	:= CMD_ABORT;
				when "!wait" =>
					cmd	:= CMD_WAIT;
				when others =>
					report "Invalid command word" severity FAILURE;
			end case;
			
			return;
		end if;
		
		-- Read seconds
		read(l, secs, good); assert good report "Failed to read seconds" severity FAILURE;

		-- Seperator
		read(l, c, good); assert good report "Failed to read seperator" severity FAILURE;

		-- Try to read nanoseconds
		if c = '.' then
			read(l, nsecs, good); assert good report "Failed to read nanoseconds" severity FAILURE;
			read(l, c, good);     assert good report "Failed to read seperator2" severity FAILURE;
		end if;

		-- Try to read sequence
		if c = '(' then
			read(l, seq, good); assert good report "Failed to read sequence" severity FAILURE;
			read(l, c, good);   assert good and c = ')' report "Sequence not well-formed" severity FAILURE;
			read(l, c, good);   assert good report "Failed to read seperator3" severity FAILURE;
		end if;
		
		-- Did not read whitespace after first column
		assert c = HT or c = ' ' report "No whitespace after time/seq" severity FAILURE;

		-- Read values
		for i in data.values'range loop
			read(l, r, good);
			exit when not good;
			
			data.values(i)		:= r;
			data.length		:= i + 1;			
		end loop;
		
		data.seconds			:= secs;
		data.nanoseconds		:= nsecs;
		data.sequence			:= seq;
		
		cmd				:= CMD_DATA;
	end procedure;
	
	procedure write_sample(
		file f				: text;
		variable data			: in sample;
		constant cmd			: in command
	) is
		variable l			: line;
		variable i			: integer;
		variable secs, nsecs		: natural;
	begin
		-- Write seconds
		write(l, data.seconds);

		-- Write nanoseconds
		if data.nanoseconds > 0 then
			write(l, '.');
			write(l, data.nanoseconds);
		end if;

 		-- Write sequence
		if data.sequence >= 0 then
			write(l, '(');
			write(l, data.sequence);
			write(l, ')');
		end if;
		
		-- Write values
		for i in 0 to data.length-1 loop
			write(l, HT);
			write(l, data.values(i));
		end loop;
		
		writeline(f, l);
	end procedure;

end package body;