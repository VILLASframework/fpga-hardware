library acs;
    use acs.helpers.all;
    use acs.villas.all;

library std;
    use std.textio.all;

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_textio.all;

entity villas_tb is
end entity;

architecture sim of villas_tb is
	file input_file				: text open READ_MODE is "receive.txt";
	file output_file			: text open WRITE_MODE is "send.txt";

	signal s				: sample;
begin
	process
		variable good				: boolean;
	begin
		if endfile(input_file) then
			report "End of file" severity FAILURE;
		end if;
		
		read_sample(input_file, s, good);
		if not good then
			report "Failed to parse sample from file!" severity WARNING;
		end if;

		write_sample(output, s, good);
				
		wait for 1 ns;
	end process;

end architecture;