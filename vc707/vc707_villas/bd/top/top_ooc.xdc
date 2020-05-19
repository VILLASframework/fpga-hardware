################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name pcie_ref_clk_p -period 10 [get_ports pcie_ref_clk_p]
create_clock -name clkbuf_clk_p -period 8 [get_ports clkbuf_clk_p]
create_clock -name user_clk_clk_p -period 6.410 [get_ports user_clk_clk_p]

################################################################################