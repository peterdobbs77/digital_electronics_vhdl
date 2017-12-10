----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2016 09:10:29 AM
-- Design Name: 
-- Module Name: tb_top_4bitSubtractor - Behavioral
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

entity tb_top_4bitSubtractor is
--  Port ( );
end tb_top_4bitSubtractor;

architecture Behavioral of tb_top_4bitSubtractor is

component top_4bitSubtractor is
  Port ( sw  : in  STD_LOGIC_VECTOR(8 downto 0);
         led : out STD_LOGIC_VECTOR(4 downto 0) );
end component;

signal switch_set1 : STD_LOGIC_VECTOR(3 downto 0);
signal switch_set2 : STD_LOGIC_VECTOR(3 downto 0);
signal output      : STD_LOGIC_VECTOR(4 downto 0);
signal carryIn     : STD_LOGIC;

begin

switch_set1 <= "0111", "1101" after 10ns;
switch_set2 <= "0001", "0101" after 10ns;
carryIn     <= '0';

u1: top_4bitSubtractor
    Port Map(
        sw => carryIn & switch_set1 & switch_set2,
        led => output
    );

end Behavioral;
