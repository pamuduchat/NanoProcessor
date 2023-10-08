----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/20/2022 02:45:22 PM
-- Design Name: 
-- Module Name: add_sub_4bit - Behavioral
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

entity add_sub_4bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sub : in STD_LOGIC;
           Z_out : out STD_LOGIC;
           S : inout STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end add_sub_4bit;

architecture Behavioral of add_sub_4bit is

component RCA_4
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
       B : in STD_LOGIC_VECTOR (3 downto 0);
       C_in : in STD_LOGIC;
       S : out STD_LOGIC_VECTOR (3 downto 0);
       C_out : out STD_LOGIC);

end component;
    signal B_tem : STD_LOGIC_VECTOR (3 downto 0);

begin
RCA_4_0: RCA_4
    port map(
        A => A,
        B => B_tem,
        C_in => Sub,
        C_out => C_out,
        S => S     
    );
    
    B_tem(0) <= B(0) xor Sub;
    B_tem(1) <= B(1) xor Sub;
    B_tem(2) <= B(2) xor Sub;
    B_tem(3) <= B(3) xor Sub;
    
    Z_out <= not(S(0) or S(1) or S(2) or S(3));
    

end Behavioral;
