----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2016 02:07:48 PM
-- Design Name: 
-- Module Name: tb_top_hello_led - Behavioral
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

entity tb_top_hello_led is
--  Port ( );
end tb_top_hello_led;

architecture Behavioral of tb_top_hello_led is

COMPONENT top_hello_led
    PORT (
        sw  : IN  STD_LOGIC;
        led : OUT STD_LOGIC
    );
END COMPONENT;

SIGNAL switch_input : STD_LOGIC;
SIGNAL led          : STD_LOGIC;

begin

switch_input <= '0', '1' after 10ns;

u1: top_hello_led
PORT MAP (
    sw => switch_input,
    led => led
);

end Behavioral;
