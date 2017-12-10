----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2016 06:23:56 PM
-- Design Name: 
-- Module Name: top_4bitSubtractor - Behavioral
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

entity top_4bitSubtractor is
  Port ( sw  : in  STD_LOGIC_VECTOR(8 downto 0);
         led : out STD_LOGIC_VECTOR(4 downto 0) );
end top_4bitSubtractor;

architecture Behavioral of top_4bitSubtractor is

component fullSubtractor is 
  Port(i_carry : in  STD_LOGIC;
       i_x     : in  STD_LOGIC;
       i_y     : in  STD_LOGIC;
       o_diff  : out STD_LOGIC;
       o_carry : out STD_LOGIC);
end component;

signal x    : STD_LOGIC_VECTOR(3 downto 0);
signal y    : STD_LOGIC_VECTOR(3 downto 0);
signal diff : STD_LOGIC_VECTOR(3 downto 0);
signal B    : STD_LOGIC_VECTOR(3 downto 0);
signal Bout : STD_LOGIC;

begin

x <= sw(3 downto 0);
y <= sw(7 downto 4);
B(0) <= sw(8);

u1: fullSubtractor
  PORT MAP (
        i_carry => B(0),
        i_x     => x(0),
        i_y     => y(0),
        o_diff   => diff(0),
        o_carry => B(1) );

u2: fullSubtractor
  PORT MAP (
        i_carry => B(1),
        i_x     => x(1),
        i_y     => y(1),
        o_diff   => diff(1),
        o_carry => B(2) );

u3: fullSubtractor
  PORT MAP (
        i_carry => B(2),
        i_x     => x(2),
        i_y     => y(2),
        o_diff   => diff(2),
        o_carry => B(3) );

u4: fullSubtractor
  PORT MAP (
        i_carry => B(3),
        i_x     => x(3),
        i_y     => y(3),
        o_diff   => diff(3),
        o_carry => Bout );
        
led <= Bout & diff;

end Behavioral;
