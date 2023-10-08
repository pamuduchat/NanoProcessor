----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2022 05:10:03 PM
-- Design Name: 
-- Module Name: instrctuion_decoder - Behavioral
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

entity instrctuion_decoder is
    Port ( A : in STD_LOGIC_VECTOR (11 downto 0);
           Reg : in STD_LOGIC_VECTOR (3 downto 0);
           RegEnable : out STD_LOGIC_VECTOR (2 downto 0);
           LoadSelect : out STD_LOGIC;                      --0 for ImVal
           ImVal : out STD_LOGIC_VECTOR (3 downto 0); 
           RegA : out STD_LOGIC_VECTOR (2 downto 0);
           RegB : out STD_LOGIC_VECTOR (2 downto 0);
           Sub : out STD_LOGIC;
           Jump : out STD_LOGIC;
           JumpAd : out STD_LOGIC_VECTOR (2 downto 0));
end instrctuion_decoder;

architecture Behavioral of instrctuion_decoder is
begin


process(A, Reg) begin
        JumpAd <= "000";
            
            if (A(11) = '1') and (A(10) = '0') then
                RegEnable <= (A(9), A(8), A(7));
                ImVal <= (A(3), A(2), A(1), A(0));
                LoadSelect <= '0';
                Jump <= '0';
                    
            elsif (A(11) = '0') and (A(10) = '0') then
                RegEnable <= (A(9), A(8), A(7));
                RegA <= (A(9), A(8), A(7));
                RegB <= (A(6), A(5), A(4));
                sub <= '0';
                LoadSelect <= '1';  
                Jump <= '0'; 
                  
            elsif (A(11) = '0') and (A(10) = '1') then
                RegEnable <= (A(9), A(8), A(7));
                RegA <= "000";
                RegB <= (A(9), A(8), A(7));
                
                Sub <= '1';
                LoadSelect <= '1';     
                Jump <= '0';
        
            elsif (A(11) = '1') and (A(10) = '1') then
                LoadSelect <= '0';
                RegA <= (A(9), A(8), A(7));
                RegEnable <= "000";
                if (to_integer(unsigned(Reg)) = 0) then
                    Jump <= '1';
                    JumpAd <=  (A(2), A(1), A(0));
--                    JumpAd <= "101";
                else
                    Jump <= '0';
                end if;
    
    end if;   
    
end process;
end Behavioral;
