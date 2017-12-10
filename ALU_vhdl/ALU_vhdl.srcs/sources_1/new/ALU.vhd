----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2016 06:32:46 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
  Port (in1, in2 : in  std_logic_vector(2 downto 0);
        op       : in  std_logic_vector(2 downto 0);
        result   : out std_logic_vector(2 downto 0));
end ALU;

architecture Behavioral of ALU is

    signal temp: std_logic_vector(3 downto 0);

begin

    process(in1, in2, op, temp)
    begin
        case op is
            when "000" => -- clear
                result <= "000";
            when "001" => -- addition
                temp <= std_logic_vector(unsigned("0" & in1) + unsigned(in2));
                    result <= temp(2 downto 0);
            when "010" => -- subtraction
                if (in1 >= in2) then
                    result <= std_logic_vector(unsigned(in1) - unsigned(in2));
                else
                    result <= std_logic_vector(unsigned(in2) - unsigned(in1));
                end if;
            when "011" => -- bitwise AND 
                result <= in1 and in2;
            when "100" => -- bitwise OR
                result <= in1 or in2;
            when "101" => -- bitwise XOR
                result <= in1 xor in2;
            when "111" => -- preset
                result <= "111";
            when others =>
                result <= "000";
        end case;
    end process;

end Behavioral;
