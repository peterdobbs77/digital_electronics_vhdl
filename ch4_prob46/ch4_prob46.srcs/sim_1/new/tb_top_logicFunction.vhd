----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2016 01:23:24 AM
-- Design Name: 
-- Module Name: tb_top_logicFunction - Behavioral
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

entity tb_top_logicFunction is
--  Port ( );
end tb_top_logicFunction;

architecture Behavioral of tb_top_logicFunction is

signal switch_input : STD_LOGIC_VECTOR(10 downto 0);
signal led_output : STD_LOGIC_VECTOR(1 downto 0);

component top_logicFunction is
    Port ( sw : in STD_LOGIC_VECTOR(10 downto 0);
           led : out STD_LOGIC_VECTOR(1 downto 0) );
end component;

begin

switch_input(6 downto 0) <= "0000000", "0000001" after 10ns, "0000010" after 20ns, "0000011" after 30ns,
                            "0000100" after 40ns, "0000101" after 50ns, "0000110" after 60ns, "0000111" after 70ns,
                            "0001000" after 80ns, "0001001" after 90ns, "0001010" after 100ns, "0001011" after 110ns,
                            "0001100" after 120ns, "0001101" after 130ns, "0001110" after 140ns, "0001111" after 150ns,
                            "0010000" after 160ns, "0010001" after 170ns, "0010010" after 180ns, "0010011" after 190ns,
                            "0010100" after 200ns, "0010101" after 210ns, "0010110" after 220ns, "0010111" after 230ns,
                            "0011000" after 240ns, "0011001" after 250ns, "0011010" after 260ns, "0011011" after 270ns,
                            "0011100" after 280ns, "0011101" after 290ns, "0011110" after 300ns, "0011111" after 310ns,
                            "0100000" after 320ns, "0100001" after 330ns, "0100010" after 340ns, "0100011" after 350ns,
                            "0100100" after 360ns, "0100101" after 370ns, "0100110" after 380ns, "0100111" after 390ns,
                            "0101000" after 400ns, "0101001" after 410ns, "0101010" after 420ns, "0101011" after 430ns,
                            "0101100" after 440ns, "0101101" after 450ns, "0101110" after 460ns, "0101111" after 470ns,
                            "0110000" after 480ns, "0110001" after 490ns, "0110010" after 500ns, "0110011" after 510ns,
                            "0110100" after 520ns, "0110101" after 530ns, "0110110" after 540ns, "0110111" after 550ns,
                            "0111000" after 560ns, "0111001" after 570ns, "0111010" after 580ns, "0111011" after 590ns,
                            "0111100" after 600ns, "0111101" after 610ns, "0111110" after 620ns, "0111111" after 630ns,
                            "1000000" after 640ns, "1000001" after 650ns, "1000010" after 660ns, "1000011" after 670ns,
                            "1000100" after 680ns, "1000101" after 690ns, "1000110" after 700ns, "1000111" after 710ns,
                            "1001000" after 720ns, "1001001" after 730ns, "1001010" after 740ns, "1001011" after 750ns,
                            "1001100" after 760ns, "1001101" after 770ns, "1001110" after 780ns, "1001111" after 790ns,
                            "1010000" after 800ns, "1010001" after 810ns, "1010010" after 820ns, "1010011" after 830ns,
                            "1010100" after 840ns, "1010101" after 850ns, "1010110" after 860ns, "1010111" after 870ns,
                            "1011000" after 880ns, "1011001" after 890ns, "1011010" after 900ns, "1011011" after 910ns,
                            "1011100" after 920ns, "1011101" after 930ns, "1011110" after 940ns, "1011111" after 950ns,
                            "1100000" after 960ns, "1100001" after 970ns, "1100010" after 980ns, "1100011" after 990ns,
                            "1100100" after 1000ns, "1100101" after 1010ns, "1100110" after 1020ns, "1100111" after 1030ns,
                            "1101000" after 1040ns, "1101001" after 1050ns, "1101010" after 1060ns, "1101011" after 1070ns,
                            "1101100" after 1080ns, "1101101" after 1090ns, "1101110" after 1100ns, "1101111" after 1110ns,
                            "1110000" after 1120ns, "1110001" after 1130ns, "1110010" after 1140ns, "1110011" after 1150ns,
                            "1110100" after 1160ns, "1110101" after 1170ns, "1110110" after 1180ns, "1110111" after 1190ns,
                            "1111000" after 1200ns, "1111001" after 1210ns, "1111010" after 1220ns, "1111011" after 1230ns,
                            "1111100" after 1240ns, "1111101" after 1250ns, "1111110" after 1260ns, "1111111" after 1270ns;
                            
switch_input(10 downto 7) <= "0000", "0001" after 10ns, "0010" after 20ns, "0011" after 30ns,
                             "0100" after 40ns, "0101" after 50ns, "0110" after 60ns, "0111" after 70ns,
                             "1000" after 80ns, "1001" after 90ns, "1010" after 100ns, "1011" after 110ns,
                             "1100" after 120ns, "1101" after 130ns, "1110" after 140ns, "1111" after 150ns;

u1: top_logicFunction
    Port Map (
        switch_input <= sw,
        led_output <= led );

end Behavioral;
