----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2016 03:54:10 PM
-- Design Name: 
-- Module Name: top_jk_ff - Behavioral
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

entity top_jk_ff is
  Port ( clk   : in  STD_LOGIC;
         clr   : in  STD_LOGIC;
         sw    : in  STD_LOGIC_vector(2 downto 0);
         led   : out STD_LOGIC_VECTOR(1 downto 0) );
end top_jk_ff;

architecture Behavioral of top_jk_ff is

component clocks is
    Port ( i_osc_clk : in  STD_LOGIC;
           i_clr     : in  STD_LOGIC;
           o_clk     : out STD_LOGIC);
end component;

component jk_ff_vhdl is
    Port ( j, k, i_clr, clken, i_clk : in  std_logic;
           q                         : out std_logic);
end component;

signal clk_1Hz : STD_LOGIC;

begin

u1: clocks
    Port Map (
        i_osc_clk => clk,
        i_clr     => clr,
        o_clk     => clk_1Hz);

u2: jk_ff_vhdl
    Port Map(
        j     => sw(1),
        k     => sw(0),
        i_clr => clr,        
        clken => sw(2),
        i_clk => clk_1Hz,
        q     => led(0) );

led(1) <= clk_1Hz;

end Behavioral;
