create_clock -period 8.000 -name clkbuf [get_ports CLKBUF_Q0_P]
create_clock -period 5.000 -name sys_clk [get_ports SYS_CLK]
