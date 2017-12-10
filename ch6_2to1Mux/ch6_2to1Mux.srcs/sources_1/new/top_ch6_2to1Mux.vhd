----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2016 06:39:34 PM
-- Design Name: 
-- Module Name: top_ch6_2to1Mux - Behavioral
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

entity top_ch6_2to1Mux is
  Port ( sw  : in  STD_LOGIC_VECTOR(1 downto 0);
         sel : in  STD_LOGIC;
         led : out STD_LOGIC);
end top_ch6_2to1Mux;

architecture Behavioral of top_ch6_2to1Mux is

COMPONENT mux_2_1 IS
    PORT ( w0 : in  STD_LOGIC;
           w1 : in  STD_LOGIC;
           s  : in  STD_LOGIC;
           f  : out STD_LOGIC);
END COMPONENT;

begin

u1: mux_2_1
    PORT MAP(
        w0 => sw(0),
        w1 => sw(1),
        s  => sel,
        f  => led);

end Behavioral;
