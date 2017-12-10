----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2016 03:41:09 PM
-- Design Name: 
-- Module Name: jk_ff_vhdl - Behavioral
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

entity jk_ff_vhdl is
  Port ( j, k, i_clr, clken, i_clk : in  std_logic;
         q                       : out std_logic);
end jk_ff_vhdl;

architecture Behavioral of jk_ff_vhdl is
    signal temp : std_logic;
begin
    process(i_clk)
    begin
        if i_clk'EVENT and i_clk = '1' then
            if i_clr='1' then
                temp <= '0';
            elsif (clken='1') then
                if (j='0' and k='0') then
                    temp <= temp;
                elsif (j='0' and k='1') then
                    temp <= '0';
                elsif (j='1' and k='0') then
                    temp <= '1';
                elsif (j='1' and k='1') then
                    temp <= not (temp);
                end if;
            end if;
        end if;
    end process;
    q <= temp;
end Behavioral;
