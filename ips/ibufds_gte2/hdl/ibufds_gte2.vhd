----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2016 02:12:41 PM
-- Design Name: 
-- Module Name: pcie_refclk - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity ibufds_gte2_wrapper is
    Port ( clk_p : in STD_LOGIC;
           clk_n : in STD_LOGIC;
           clk : out STD_LOGIC);
end ibufds_gte2_wrapper;

architecture Behavioral of ibufds_gte2_wrapper is
	constant GND : std_logic := '0';
begin

    clk_buf : IBUFDS_GTE2
        port map (
            I => clk_p,
            IB => clk_n,
            O => clk,
            CEB => GND,
            ODIV2 => open
        );

end Behavioral;
