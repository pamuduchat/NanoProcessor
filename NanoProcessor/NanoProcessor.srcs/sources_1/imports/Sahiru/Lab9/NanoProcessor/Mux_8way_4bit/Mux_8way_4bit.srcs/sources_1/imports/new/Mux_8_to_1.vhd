----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2022 04:09:30 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
component Decode_3_to_8
Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
  EN : in STD_LOGIC;
  Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal mid : std_logic_vector(7 downto 0);
signal dec_out : std_logic_vector(7 downto 0);

begin

Decode_3_to_8_0 : Decode_3_to_8
port map(
    I => S,
    EN =>EN,
    Y => dec_out);
    
    mid(0) <= dec_out(0) AND D(0);
    mid(1) <= dec_out(1) AND D(1);
    mid(2) <= dec_out(2) AND D(2);
    mid(3) <= dec_out(3) AND D(3);
    mid(4) <= dec_out(4) AND D(4);
    mid(5) <= dec_out(5) AND D(5);
    mid(6) <= dec_out(6) AND D(6);
    mid(7) <= dec_out(7) AND D(7);
    
    Y <= mid(0) OR mid(1) OR mid(2) OR mid(3)
        OR mid(4) OR mid(5) OR mid(6) OR mid(7);
         
end Behavioral;
