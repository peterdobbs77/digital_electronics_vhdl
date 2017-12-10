----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2016 11:40:34 AM
-- Design Name: 
-- Module Name: top_driver - Behavioral
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

entity top_driver is
  Port ( sw : in STD_LOGIC;
         seg : out STD_LOGIC_VECTOR(6 downto 0) );
end top_driver;

architecture Behavioral of top_driver is

component driver is
    Port ( i_x : in STD_LOGIC;
           segSev : out STD_LOGIC_VECTOR(6 downto 0) );
end component;

begin

u1: driver
    Port Map (
        i_x => sw,
        segSev => seg(6 downto 0) );

end Behavioral;
