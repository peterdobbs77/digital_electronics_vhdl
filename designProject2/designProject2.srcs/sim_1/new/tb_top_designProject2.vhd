----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2016 10:34:24 AM
-- Design Name: 
-- Module Name: tb_top_designProject2 - Behavioral
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

entity tb_top_designProject2 is
--  Port ( );
end tb_top_designProject2;

architecture Behavioral of tb_top_designProject2 is

------------------------------------------------
-- Constant Declarations
------------------------------------------------

-- User Generated
constant Tpw_clk : TIME := 10 ns;

component top_designProject2 is
    Port ( clk : in  std_logic;
           sw  : in  std_logic_vector(1 downto 0);
           clr : in  std_logic;
           led : out std_logic_vector(1 downto 0) );
end component;

signal clk   : STD_LOGIC;
signal clr   : STD_LOGIC;
signal sw    : STD_LOGIC_VECTOR(1 downto 0);
signal led   : STD_LOGIC_VECTOR(1 downto 0);

begin

    clock1_gen: PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR Tpw_clk/2;
        clk <= '1';
        WAIT FOR Tpw_clk/2;
    END PROCESS;
    
    clr <= '0', '1' after 10ns, '0' after 20ns;
    
    sw <= "00", "01" after 300ns, "10" after 450ns, "11" after 600ns,
            "10" after 750ns, "01" after 900ms, "00" after 1050ns;
            

TEST: top_designProject2
    Port Map(
        clk => clk,
        clr => clr,
        sw  => sw,
        led => led );

end Behavioral;
