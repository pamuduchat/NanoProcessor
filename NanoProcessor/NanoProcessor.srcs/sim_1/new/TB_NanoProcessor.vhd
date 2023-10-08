----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/23/2022 03:19:23 AM
-- Design Name: 
-- Module Name: TB_NanoProcessor - Behavioral
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

entity TB_NanoProcessor is
--  Port ( );
end TB_NanoProcessor;

architecture Behavioral of TB_NanoProcessor is

component NanoProcessor
    Port ( Reset : in STD_LOGIC;
               Clk : in STD_LOGIC;
               R7 : out STD_LOGIC_VECTOR (3 downto 0);
               seven_seg_out : out STD_LOGIC_VECTOR (6 downto 0);
               seven_seg_anode : out STD_LOGIC_VECTOR (3 downto 0);
               Zero : out STD_LOGIC;
               Overflow : out STD_LOGIC);
end component;
signal Reset,  Zero, Overflow : STD_LOGIC;
signal R7 :  STD_LOGIC_VECTOR (3 downto 0);
signal Clk : STD_LOGIC := '0';
signal seven_seg_out : STD_LOGIC_VECTOR (6 downto 0);
signal seven_seg_anode  : STD_LOGIC_VECTOR (3 downto 0);
begin

UUT: NanoProcessor
    port map (
        Reset => Reset,
        Clk => Clk,
        Zero => Zero,
        Overflow => Overflow,
        R7 => R7,
        seven_seg_out => seven_seg_out,
        seven_seg_anode => seven_seg_anode
    );

process begin
    Clk <= NOT(Clk);
    wait for 5ns;
end process;

process begin    
    reset <= '1';
    wait for 90ns;
    
    reset <= '0';
    wait;
end process;

end Behavioral;
