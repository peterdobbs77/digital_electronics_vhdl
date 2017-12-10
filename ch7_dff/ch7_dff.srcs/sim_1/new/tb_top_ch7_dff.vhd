----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2016 12:31:55 AM
-- Design Name: 
-- Module Name: tb_top_ch7_dff - Behavioral
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

entity tb_top_ch7_dff is
--  Port ( );
end tb_top_ch7_dff;

architecture Behavioral of tb_top_ch7_dff is

------------------------------------------------
-- Constant Declarations
------------------------------------------------

-- User Generated
constant Tpw_clk : TIME := 10 ns;

component top_ch7_dff is
    Port ( clk   : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sw    : in  STD_LOGIC;
           led   : out STD_LOGIC_VECTOR(1 downto 0));
end component;

signal clk   : STD_LOGIC;
signal reset : STD_LOGIC;
signal sw    : STD_LOGIC;
signal led   : STD_LOGIC_VECTOR(1 downto 0);

begin

    ------------------------------------------------
    -- Constant Declarations
    ------------------------------------------------
    clock1_gen: PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR Tpw_clk/2;
        clk <= '1';
        WAIT FOR Tpw_clk/2;
    END PROCESS;
    
reset <= '0', '1' after 10 ns, '0' after 20ns;

sw <= '0', '1' after 300ns, '0' after 450ns, '1' after 550ns;

u1: top_ch7_dff
    Port Map(
        clk   => clk,
        reset => reset,
        sw    => sw,
        ked   => led);

end Behavioral;
