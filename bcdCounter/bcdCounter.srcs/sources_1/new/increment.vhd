----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2016 11:29:08 AM
-- Design Name: 
-- Module Name: increment - Behavioral
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

entity increment is
  Port ( i_clk, i_clr, en : IN  STD_LOGIC;
         Q              : OUT STD_LOGIC_VECTOR(0 to 3));
end increment;

architecture Behavioral of increment is
    signal count : STD_LOGIC_VECTOR(0 to 3);
begin
    process(i_clk, i_clr)
        BEGIN
            if i_clr = '1' then
                count <= "0000";
            elsif(i_clk'EVENT AND i_clk = '1') then
                if en = '1' then
                    count <= count + 1;
                else
                    count <= count;
                end if;
            end if;
    end process;
    Q <= count;
end Behavioral;
