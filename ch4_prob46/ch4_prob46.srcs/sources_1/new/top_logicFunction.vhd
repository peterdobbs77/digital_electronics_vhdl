----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2016 01:19:16 AM
-- Design Name: 
-- Module Name: top_logicFunction - Behavioral
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

entity top_logicFunction is
  Port ( sw : in STD_LOGIC_VECTOR(10 downto 0);
         led : out STD_LOGIC_VECTOR(1 downto 0) );
end top_logicFunction;

architecture Behavioral of top_logicFunction is

component logicFunction is
    Port ( i_x : in STD_LOGIC_VECTOR (6 downto 0);
           i_y : in STD_LOGIC_VECTOR (3 downto 0);
           o_f : out STD_LOGIC_VECTOR (1 downto 0) );
end component;

begin

u1: logicFunction
    Port Map (
        i_x => sw(6 downto 0),
        i_y => sw(10 downto 7),
        o_f => led(1 downto 0));

end Behavioral;
