----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2016 11:45:14 AM
-- Design Name: 
-- Module Name: tb_top_driver - Behavioral
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

entity tb_top_driver is
--  Port ( );
end tb_top_driver;

architecture Behavioral of tb_top_driver is

component top_driver is
    Port ( sw : in STD_LOGIC;
           sevenSeg : out STD_LOGIC_VECTOR(6 downto 0) );
end component;

signal sw_in : STD_LOGIC;
signal seg_out : STD_LOGIC_VECTOR(6 downto 0);

begin

sw_in <= '0', '1' after 10ns;

u1: top_driver
    Port Map(
        sw => sw_in,
        sevenSeg => seg_out );

end Behavioral;
