----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2016 10:12:07 AM
-- Design Name: 
-- Module Name: fourIn - Behavioral
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

entity fourIn is
  Port (
    i_x : IN  STD_LOGIC_VECTOR (3 downto 0);
    o_f : OUT STD_LOGIC;
    o_g : OUT STD_LOGIC
   );
end fourIn;

architecture Behavioral of fourIn is

begin

o_f <= (i_x(0) AND i_x(2)) OR (i_x(1) AND i_x(3));
o_g <= (i_x(0) OR NOT i_x(2)) AND (NOT i_x(1) OR i_x(3));

end Behavioral;
