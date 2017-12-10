----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/10/2016 10:16:17 AM
-- Design Name: 
-- Module Name: top_ch2_basicLogic - Behavioral
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

entity top_ch2_basicLogic is
  Port (
    sw  : IN  STD_LOGIC_VECTOR (6 downto 0);
    led : OUT STD_LOGIC_VECTOR (2 downto 0)
  );
end top_ch2_basicLogic;

architecture Behavioral of top_ch2_basicLogic is
--=============================================
-- Component Declaration
--=============================================
component threeIn is
    Port(
        i_x : IN  STD_LOGIC_VECTOR(2 downto 0);
        o_f : OUT STD_LOGIC );
end component;

component fourIn is
    Port(
        i_x : IN  STD_LOGIC_VECTOR (3 downto 0);
        o_f : OUT STD_LOGIC;
        o_g : OUT STD_LOGIC
    );
end component;

begin

--=============================================
-- Instantiate threeIn
-- Connect to sw(2 downto 0) and led(0)
--=============================================
u1: threeIn
    Port Map(
        i_x => sw(2 downto 0),
        o_f => led(0)
    );

--=============================================
-- Component Declaration
--=============================================
u2: fourIn
    Port Map(
        i_x => sw(6 downto 3),
        o_f => led(1),
        o_g => led(2)
    );

end Behavioral;
