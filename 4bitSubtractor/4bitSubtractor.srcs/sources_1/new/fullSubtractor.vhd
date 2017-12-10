----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2016 06:16:30 PM
-- Design Name: 
-- Module Name: fullSubtractor - Behavioral
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

entity fullSubtractor is
  Port ( i_carry : in  STD_LOGIC;
         i_x     : in  STD_LOGIC;
         i_y     : in  STD_LOGIC;
         o_diff  : out STD_LOGIC;
         o_carry : out STD_LOGIC);
end fullSubtractor;

architecture Behavioral of fullSubtractor is

begin

o_diff <= i_x XOR i_y XOR i_carry;
o_carry <= NOT((NOT((NOT i_x) AND i_y)) AND (NOT(i_carry AND (NOT i_x))) AND (NOT(i_carry AND i_y)));

end Behavioral;
