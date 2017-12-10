----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/02/2016 01:01:40 PM
-- Design Name: 
-- Module Name: top_designProject2 - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_designProject2 is
  Port ( clk : in  std_logic;
         sw  : in  std_logic_vector(1 downto 0);
         clr : in  std_logic;
         led : out std_logic_vector(2 downto 0) );
end top_designProject2;

architecture Behavioral of top_designProject2 is

component clocks is
    Port ( i_osc_clk : in  STD_LOGIC;
           i_reset   : in  STD_LOGIC;
           o_clk     : out STD_LOGIC);
end component;

component dff is --
    Port ( i_clk   : in  STD_LOGIC;
           i_reset : in  STD_LOGIC;
           i_data  : in  STD_LOGIC;
           o_data  : out STD_LOGIC);
end component;

signal clk1Hz : std_logic;
signal X2PS   : std_logic; -- previous input (X2)
signal X1PS   : std_logic; -- previous input (X1)
signal X2NS   : std_logic; -- current input (X2)
signal X1NS   : std_logic; -- current input (X1)

begin

X2NS <= sw(1); -- first switch
X1NS <= sw(0); -- second switch

CLOCK: clocks
    Port Map (
        i_osc_clk => clk,
        i_reset   => clr,
        o_clk     => clk1Hz );

X2PrevState: dff
    Port Map (
        i_clk   => clk1Hz,
        i_reset => clr,
        i_data  => sw(1),
        o_data  => X2PS );

X1PrevState: dff
    Port Map (
        i_clk   => clk1Hz,
        i_reset => clr,
        i_data  => sw(0),
        o_data  => X1PS );

led(2) <= clk1Hz;
-- if NS < PS
led(1) <= ((X2PS and (not X2NS)) OR (X1PS and (not X2NS) and (not X1NS)) OR (X2PS and X1PS and (not X1NS)));
-- if NS > PS
led(0) <= (((not X2PS) and X2NS) OR ((not X2PS) and (not X1PS) and X1NS) OR ((not X1PS) and X2NS and X1NS));

end Behavioral;
