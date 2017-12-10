----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2016 07:27:32 PM
-- Design Name: 
-- Module Name: top_BCDto7seg - Behavioral
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

entity top_BCDto7seg is
  Port ( sw  : in  STD_LOGIC_VECTOR(3 downto 0);
         seg : out STD_LOGIC_VECTOR(6 downto 0);
         an  : out STD_LOGIC_VECTOR(3 downto 0);
         dp  : out STD_LOGIC);
end top_BCDto7seg;

architecture Behavioral of top_BCDto7seg is

component decoder is
    Port( bcd  : in  STD_LOGIC_VECTOR(3 downto 0);
          seg7 : out STD_LOGIC_VECTOR(6 downto 0));
end component;

begin

an <= "0000"; -- all digits on
dp <= '1';    -- dp off

u1: decoder
    Port Map(
        bcd  => sw,
        seg7 => seg);

end Behavioral;
