----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2016 11:14:06 AM
-- Design Name: 
-- Module Name: driver - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity driver is
  Port ( i_x : IN  STD_LOGIC;
         segSev : OUT STD_LOGIC_VECTOR(6 downto 0) );
end driver;

architecture Behavioral of driver is
    
begin
    multiplex: process(i_x)
    begin
        case i_x is
            --when '0' => segSev <= "0000001"; -- 0
            --when '1' => segSev <= "1001111"; -- 1
            when '0' => segSev <= "1000000"; -- 0
            when '1' => segSev <= "1111001"; -- 1
            when others => segSev <= "1111111"; -- nothing
        end case;
    end process;

end Behavioral;
