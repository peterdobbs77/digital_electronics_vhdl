----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2016 03:47:49 PM
-- Design Name: 
-- Module Name: clocks - Behavioral
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clocks is
  Port ( i_osc_clk : in  std_logic;
         i_clr   : in  std_logic;
         o_clk : out std_logic );
end clocks;

architecture Behavioral of clocks is

component IBUFG
    Port (
        I : in  STD_ULOGIC;
        O : out STD_ULOGIC
        );
end component;

signal clk   : STD_LOGIC;
signal clk_1 : STD_LOGIC;
signal count : STD_LOGIC_VECTOR(27 downto 0);

begin
    
    -- OSC Interface
    IBUF_OSC_CLK : IBUFG
    Port Map (
        I => i_osc_clk,
        O => clk );
    PROCESS (clk, i_clr)
    BEGIN
        IF i_clr = '1' THEN
            clk_1 <= '0';
            count <= (others => '0');
        ELSIF clk'EVENT AND clk = '1' THEN
            IF count = 49999999 THEN -- uncomment for synthesis
            -- IF count = 49 THEN -- uncomment for simulation
                clk_1 <= NOT clk_1;
                count <= (others => '0');
            ELSE
                clk_1 <= clk_1;
                count <= count + 1;
            END If;
        END IF;
    END PROCESS;
    o_clk <= clk_1;
end Behavioral;
