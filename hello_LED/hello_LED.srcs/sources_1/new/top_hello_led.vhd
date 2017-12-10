----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/06/2016 01:58:37 PM
-- Design Name: 
-- Module Name: top_hello_led - Behavioral
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

entity top_hello_led is
  Port ( sw : IN STD_LOGIC;
         led : OUT STD_LOGIC);
end top_hello_led;

architecture Behavioral of top_hello_led is

COMPONENT hello_led
    PORT (
        i_switch : IN STD_LOGIC;
        o_light : OUT STD_LOGIC
    );
END COMPONENT;

begin

u1: hello_led
    PORT MAP (
        i_switch => sw,
        o_light => led
    );

end Behavioral;
