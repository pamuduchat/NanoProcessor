----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/16/2022 02:34:30 PM
-- Design Name: 
-- Module Name: Reg - Behavioral
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

entity bit4reg is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           En : in STD_LOGIC;
           Clk, CLR : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end bit4reg;

architecture Behavioral of bit4reg is

begin
process(Clk) begin
    if (rising_edge(Clk)) then
        if (En = '1') then
            Q <= D;
        end if;

    
    
        if (CLR = '1') then
            Q <= "0000";
        end if;
    
    end if;
end process;


end Behavioral;
