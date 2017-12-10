----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2016 11:36:01 PM
-- Design Name: 
-- Module Name: tb_top_ch4_logicFunction - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_top_ch4_logicFunction is
--  Port ( );
end tb_top_ch4_logicFunction;

architecture Behavioral of tb_top_ch4_logicFunction is

component tp_ch4_logicFunctions is
    Port (sw : in  STD_LOGIC_VECTOR (2 downto 0);
          led: out STD_LOGIC);
end component;

signal switch_input : STD_LOGIC_VECTOR(2 downto0);
signal led_out      : STD_LOGIC;

begin

switch_input(2 downto 0) <= "000", "001" after 10ns, "010" after 20ns, "011" after 30ns,
                            "100" after 40ns, "101" after 50ns, "110" after 60ns, "111" after 70ns;
                            
u1: top_ch4_logicFunctions
    Port Map(
        sw => switch_input,
        led => led_out);

end Behavioral;
