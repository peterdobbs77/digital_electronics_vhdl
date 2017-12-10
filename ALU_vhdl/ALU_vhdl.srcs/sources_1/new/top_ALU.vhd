----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/12/2016 06:48:55 PM
-- Design Name: 
-- Module Name: top_ALU - Behavioral
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

entity top_ALU is
  Port ( sw  : in  std_logic_vector(8 downto 0);
         led : out std_logic_vector(2 downto 0));
end top_ALU;

architecture Behavioral of top_ALU is

component ALU is
  Port (in1, in2 : in  std_logic_vector(2 downto 0);
        op       : in  std_logic_vector(2 downto 0);
        result   : out std_logic_vector(2 downto 0));
end component;

begin

u1: ALU
  Port Map(
      in1    => sw(2 downto 0),
      in2    => sw(5 downto 3),
      op     => sw(8 downto 6),
      result => led );

end Behavioral;
