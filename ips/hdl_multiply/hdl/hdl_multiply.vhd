library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library ieee_proposed;
    use ieee_proposed.float_pkg.all;

entity hdl_multiply is
	generic (
		FACTOR			: real := 3.3
	);
	port (
		clk			: in	std_logic;
		aresetn			: in	std_logic;
		
		s_axis_input_tdata	: in	std_logic_vector(31 downto 0);
		s_axis_input_tvalid	: in	std_logic;
		s_axis_input_tlast	: in	std_logic;
		s_axis_input_tready	: out	std_logic;
		
		m_axis_output_tdata	: out	std_logic_vector(31 downto 0);
		m_axis_output_tvalid	: out	std_logic;
		m_axis_output_tlast	: out	std_logic;
		m_axis_output_tready	: in	std_logic
	);
end entity;

architecture rtl of hdl_multiply is
	component multiply_floating_point_v7_1_0
	port (
		aclk				: in	std_logic;
		aclken				: in	std_logic;
		s_axis_a_tvalid			: in	std_logic;
		s_axis_a_tdata			: in	std_logic_vector(31 downto 0);
		s_axis_a_tlast			: in	std_logic;
		s_axis_a_tready			: out	std_logic;
		s_axis_b_tvalid			: in	std_logic;
		s_axis_b_tdata			: in	std_logic_vector(31 downto 0);
		s_axis_b_tlast			: in	std_logic;
		s_axis_b_tready			: out	std_logic;
		m_axis_result_tvalid		: out	std_logic;
		m_axis_result_tdata		: out	std_logic_vector(31 downto 0);
		m_axis_result_tlast		: out	std_logic;
		m_axis_result_tready		: in	std_logic
	);
	end component;
begin

MULTP : multiply_floating_point_v7_1_0
	port map (
		aclk => clk,
		aclken => '1',
		-- Input
		s_axis_a_tvalid			=> s_axis_input_tvalid,
		s_axis_a_tdata			=> s_axis_input_tdata,
		s_axis_a_tlast			=> s_axis_input_tlast,
		s_axis_a_tready			=> s_axis_input_tready,
		-- Factor
		s_axis_b_tvalid			=> '1',
		s_axis_b_tdata			=> to_slv(to_float(FACTOR)),
		s_axis_b_tlast			=> '0',
		s_axis_b_tready			=> open,
		-- Result
		m_axis_result_tvalid		=> m_axis_output_tvalid,
		m_axis_result_tdata		=> m_axis_output_tdata,
		m_axis_result_tlast		=> m_axis_output_tlast,
		m_axis_result_tready		=> m_axis_output_tready
	);
	
end architecture;