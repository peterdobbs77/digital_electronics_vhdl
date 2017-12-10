----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2016 12:25:37 AM
-- Design Name: 
-- Module Name: top_ch7_dff - Behavioral
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

entity top_ch7_dff is
  Port ( clk   : in  STD_LOGIC;
         reset : in  STD_LOGIC;
         sw    : in  STD_LOGIC;
         led   : out STD_LOGIC_VECTOR(1 downto 0));
end top_ch7_dff;

architecture Behavioral of top_ch7_dff is

component clocks is
    Port ( i_osc_clk : in  STD_LOGIC;
           i_reset   : in  STD_LOGIC;
           o_clk     : out STD_LOGIC);
end component;

component dff is
    Port ( i_clk   : in  STD_LOGIC;
           i_reset : in  STD_LOGIC;
           i_data  : in  STD_LOGIC;
           o_data  : out STD_LOGIC);
end component;

signal clk_1Hz : STD_LOGIC;

begin

u1: clocks
    Port Map (
        i_osc_clk => clk,
        i_reset   => reset,
        o_clk     => clk_1Hz);

u2: dff
    Port Map(
        i_clk   => clk_1Hz,
        i_reset => reset,
        i_data  => sw,
        o_data  => led(0));

led(1) <= clk_1Hz;

end Behavioral;
