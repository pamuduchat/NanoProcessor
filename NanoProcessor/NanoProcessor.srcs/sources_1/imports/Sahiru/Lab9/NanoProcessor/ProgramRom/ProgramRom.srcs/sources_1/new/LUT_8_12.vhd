----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2022 09:33:38 PM
-- Design Name: 
-- Module Name: LUT_8_12 - Behavioral
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
use IEEE.NUMERIC_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LUT_8_12 is
    Port ( M_Select : in STD_LOGIC_VECTOR (2 downto 0);
           I_Bus : out STD_LOGIC_VECTOR (11 downto 0));
end LUT_8_12;

architecture Behavioral of LUT_8_12 is
type rom_type is array (0 to 7) of std_logic_vector(0 to 11);
    signal sevenSegment_ROM : rom_type := (


           "100010000011", -- MOVI REG1, 3
           "100100000001", -- MOVI REG2, 1
           "010100000000" , -- NEG REG2
           
           "001110010000" , -- ADD REG7, REG1
           "000010100000" , -- ADD REG1, REG2
           
           "110010000111",   -- JZR REG1, LINE8
           "110000000011",   -- JZR REG0, LINE4  
           
           "110000000111"   -- JZR REG0, LINE8   
    );  

begin

    I_Bus <= sevenSegment_ROM(to_integer(unsigned(M_Select)));

end Behavioral;
