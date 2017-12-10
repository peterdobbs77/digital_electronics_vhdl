----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/11/2016 05:51:47 PM
-- Design Name: 
-- Module Name: mux_2_1 - Behavioral
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

entity mux_2_1 is
  Port ( w0 : in  STD_LOGIC;
         w1 : in  STD_LOGIC;
         s  : in  STD_LOGIC;
         f  : out STD_LOGIC);
end mux_2_1;

architecture Behavioral of mux_2_1 is

begin

PROCESS(w0,w1,s)
BEGIN
    CASE s IS
        WHEN '0' =>
            f <= w0;
        WHEN OTHERS =>
            f <= w1;
    END CASE;
END PROCESS;

end Behavioral;
