----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2016 05:42:05 PM
-- Design Name: 
-- Module Name: top_4bitAdder - Behavioral
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

entity top_4bitAdder is
  Port ( sw  : in  STD_LOGIC_VECTOR(8 downto 0);
         led : out STD_LOGIC_VECTOR(4 downto 0));
end top_4bitAdder;

architecture Behavioral of top_4bitAdder is

component fullAdder is
  Port ( i_carry : in  STD_LOGIC;
         i_x     : in  STD_LOGIC;
         i_y     : in  STD_LOGIC;
         o_sum   : out STD_LOGIC;
         o_carry : out STD_LOGIC);
end component;

signal x    : STD_LOGIC_VECTOR(3 downto 0);
signal y    : STD_LOGIC_VECTOR(3 downto 0);
signal sum  : STD_LOGIC_VECTOR(3 downto 0);
signal C    : STD_LOGIC_VECTOR(3 downto 0);
signal Cout : STD_LOGIC;

begin

x <= sw(3 downto 0);
y <= sw(7 downto 4);
C(0) <= sw(8);

u1: fullAdder
    Port MAP (
        i_carry => C(0),
        i_x     => x(0),
        i_y     => y(0),
        o_sum   => sum(0),
        o_carry => C(1) );

u2: fullAdder
    Port MAP (
        i_carry => C(1),
        i_x     => x(1),
        i_y     => y(1),
        o_sum   => sum(1),
        o_carry => C(2) );
        
u3: fullAdder
    Port MAP (
        i_carry => C(2),
        i_x     => x(2),
        i_y     => y(2),
        o_sum   => sum(2),
        o_carry => C(3) );
u4: fullAdder
    Port MAP (
        i_carry => C(3),
        i_x     => x(3),
        i_y     => y(3),
        o_sum   => sum(3),
        o_carry => Cout );

led <= Cout & sum;

end Behavioral;
