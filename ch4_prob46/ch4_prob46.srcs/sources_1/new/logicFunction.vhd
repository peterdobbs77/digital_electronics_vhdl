----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2016 12:48:07 AM
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
  Port (i_x : in STD_LOGIC_VECTOR (6 downto 0);
        i_y : in STD_LOGIC_VECTOR (3 downto 0);
        o_f : out STD_LOGIC_VECTOR (1 downto 0));
end logicFunction;

architecture Behavioral of logicFunction is

begin

--BV 4.26
o_f(0) <= (NOT i_x(0) nand (i_x(1) nand i_x(2))) AND
          (NOT i_x(6) nand (i_x(3) nand (NOT i_x(4) AND NOT i_x(5))));

--BV 4.50
--f(x1,...,x4) = M(6,8,9,12,13)
o_f(1) <= (i_y(0) OR NOT i_y(1) OR NOT i_y(2) OR i_y(3)) AND
          (NOT i_y(0) OR i_y(2));

end Behavioral;
