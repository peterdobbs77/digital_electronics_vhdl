----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2016 11:27:14 PM
-- Design Name: 
-- Module Name: logicFunction - Behavioral
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

entity logicFunction is
  Port ( i_x : IN  STD_LOGIC_VECTOR (2 downto 0);
         o_f : OUT STD_LOGIC);
end logicFunction;

architecture Behavioral of logicFunction is

begin

o_f <= (NOT i_x(2) AND NOT i_x(1) AND NOT i_x(0)) OR
       (NOT i_x(2) AND i_x(1) AND NOT i_x(0)) OR
       (i_x(2) AND NOT i_x(1) AND NOT i_x(0)) OR
       (i_x(2) AND NOT i_x(1) AND i_x(0)) OR
       (i_x(2) AND i_x(1) AND NOT i_x(0));

end Behavioral;
