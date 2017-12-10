----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2016 11:32:39 PM
-- Design Name: 
-- Module Name: top_ch4_logicFunctions - Behavioral
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

entity top_ch4_logicFunctions is
  Port ( sw  : IN  STD_LOGIC_VECTOR (2 downto 0);
         led : OUT STD_LOGIC);
end top_ch4_logicFunctions;

architecture Behavioral of top_ch4_logicFunctions is

component logicFunction is
    Port (i_x : IN  STD_LOGIC_VECTOR (2 downto 0);
          o_f : OUT STD_LOGIC);
end component;

begin

u1: logicFunction
    Port Map(
        i_x => sw,
        o_f => led);

end Behavioral;
