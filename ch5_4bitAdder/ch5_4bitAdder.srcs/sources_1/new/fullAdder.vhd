----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2016 05:39:27 PM
-- Design Name: 
-- Module Name: fullAdder - Behavioral
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

entity fullAdder is
  Port ( i_carry : in  STD_LOGIC;
         i_x     : in  STD_LOGIC;
         i_y     : in  STD_LOGIC;
         o_sum   : out STD_LOGIC;
         o_carry : out STD_LOGIC);
end fullAdder;

architecture Behavioral of fullAdder is

begin

o_sum <= i_x XOR i_y XOR i_carry;
o_carry <= (i_x AND i_y) OR (i_carry AND i_x) OR (i_carry AND i_y);

end Behavioral;
