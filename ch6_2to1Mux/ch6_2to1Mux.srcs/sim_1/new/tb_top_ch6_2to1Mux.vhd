----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2016 06:42:27 PM
-- Design Name: 
-- Module Name: tb_top_ch6_2to1Mux - Behavioral
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

entity tb_top_ch6_2to1Mux is
--  Port ( );
end tb_top_ch6_2to1Mux;

architecture Behavioral of tb_top_ch6_2to1Mux is

COMPONENT top_ch6_2to1Mux is
    Port ( sw  : in  STD_LOGIC_VECTOR(1 downto 0);
           sel : in  STD_LOGIC;
           led : out STD_LOGIC);
END COMPONENT;

SIGNAL switch : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL sel_in : STD_LOGIC;
SIGNAL led    : STD_LOGIC;

begin

switch(0) <= '0', '1' after 10ns, '0' after 20ns, '1' after 30ns;
switch(1) <= '1', '0' after 10ns, '1' after 20ns, '0' after 30ns;
sel_in    <= '0', '1' after 20ns;

u1: top_ch6_2to1Mux
    Port Map(
        sw  => switch,
        sel => sel_in,
        led => led);

end Behavioral;
