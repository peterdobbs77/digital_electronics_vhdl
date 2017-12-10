----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2016 11:46:30 AM
-- Design Name: 
-- Module Name: top_bcdCounter - Behavioral
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

entity top_bcdCounter is
  Port ( clk  : in  std_logic;
         clr  : in  std_logic;
         sw   : in  std_logic;
         seg  : out std_logic_vector(6 downto 0);
         an   : out std_logic_vector(3 downto 0);
         dp   : out std_logic;
         led  : out std_logic);
end top_bcdCounter;

architecture Behavioral of top_bcdCounter is

signal seg_in : std_logic_vector(3 downto 0);
signal temp   : std_logic;

component clocks is
    Port ( i_osc_clk : in  std_logic;
           i_clr     : in  std_logic;
           o_clk     : out std_logic );
end component;

component increment is
    PORT ( i_clk, i_clr, en : IN  STD_LOGIC;
           Q               : OUT STD_LOGIC_VECTOR(0 to 3));
end component;

component decoder is
    Port( bcd  : in  STD_LOGIC_VECTOR(3 downto 0);
          seg7 : out STD_LOGIC_VECTOR(6 downto 0));
end component;

begin

an(3 downto 0) <= "0000";   -- only 1st digit on
dp <= '1';      -- dp off

u1: clocks
    Port Map (
        i_osc_clk => clk,
        i_clr     => clr,
        o_clk     => temp );

u2: increment
    Port Map ( 
        i_clk => temp,
        i_clr => clr,
        en    => sw,
        Q     => seg_in );

u3: decoder
    Port Map (
        bcd  => seg_in,
        seg7 => seg );

led <= temp;
end Behavioral;
