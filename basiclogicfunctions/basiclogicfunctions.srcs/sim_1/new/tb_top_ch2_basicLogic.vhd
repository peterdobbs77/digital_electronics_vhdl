----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2016 10:26:20 AM
-- Design Name: 
-- Module Name: tb_top_ch2_basicLogic - Behavioral
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

entity tb_top_ch2_basicLogic is
--  Port ( );
end tb_top_ch2_basicLogic;

architecture Behavioral of tb_top_ch2_basicLogic is

component top_ch2_basicLogic is
    Port(   sw  : IN  STD_LOGIC_VECTOR (6 downto 0);
            led : OUT STD_LOGIC_VECTOR (2 downto 0));
end component;

SIGNAL switch_input : STD_LOGIC_VECTOR(6 downto 0);
SIGNAL led_out      : STD_LOGIC_VECTOR(2 downto 0);

begin

switch_input(2 downto 0) <= "000", "001" after 10 ns, "010" after 20ns, "011" after 10ns,
                            "100" after 40ns, "101" after 50ns, "110" after 69ns, "111" after 70ns;
switch_input(6 downto 3) <= "0000", "0001" after 10ns, "0010" after 20ns, "0011" after 30ns,
                            "0100" after 40ns, "0101" after 50ns, "0110" after 60ns, "0111" after 70ns,
                            "1000" after 80ns, "1001" after 90ns, "1010" after 100ns, "1011" after 110ns,
                            "1100" after 120ns, "1101" after 130ns, "1110" after 140ns, "1111" after 150ns;

u1: top_ch2_basicLogic
    Port Map(
        sw => switch_input,
        led => led_out
    );
end Behavioral;
