----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2016 12:22:48 AM
-- Design Name: 
-- Module Name: dff - Behavioral
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

entity dff is
  Port ( i_clk   : in  STD_LOGIC;
         i_reset : in  STD_LOGIC;
         i_data  : in  STD_LOGIC;
         o_data  : out STD_LOGIC);
end dff;

architecture Behavioral of dff is

begin

    PROCESS (i_clk, i_reset)
    BEGIN
        IF i_reset = '1' THEN
            o_data <= '0';
        ELSIF i_clk'EVENT AND i_clk = '1' THEN
            o_data <= i_data;
        END IF;
    END PROCESS;

end Behavioral;
