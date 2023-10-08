----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 01:27:21 AM
-- Design Name: 
-- Module Name: register_bank - Behavioral
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

entity register_bank is
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           I : in STD_LOGIC_VECTOR (2 downto 0);
           R0, R1, R2, R3, R4, R5, R6, R7 : out STD_LOGIC_VECTOR (3 downto 0));
end register_bank;

architecture Behavioral of register_bank is

component bit4reg
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);  
           CLK : in STD_LOGIC;  
           CLR : in STD_LOGIC;  
           EN : in STD_LOGIC;  
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Decode_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
               EN : in STD_LOGIC;
               Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal y_mid : STD_LOGIC_VECTOR (7 downto 0);

begin

Decoder : Decode_3_to_8
    port map (
        I => I,
        EN => '1',
        Y => y_mid
    );

bit4reg0 : bit4reg
    port map (
        D => "0000",
        CLK => CLK,
        CLR => CLR,
        EN => '1',
        Q => R0
    );
    

bit4reg1 : bit4reg
    port map (
        D => D,
        CLK => CLK,
        CLR => CLR,
        EN => y_mid(1),
        Q => R1
    );
        
        
 
bit4reg2 : bit4reg
    port map (
        D => D,
        CLK => CLK,
        CLR => CLR,
        EN => y_mid(2),
        Q => R2
    );

bit4reg3 : bit4reg
    port map (
        D => D,
        CLK => CLK,
        CLR => CLR,
        EN => y_mid(3),
        Q => R3
    );    
    
bit4reg4 : bit4reg
    port map (
        D => D,
        CLK => CLK,
        CLR => CLR,
        EN => y_mid(4),
        Q => R4
    );
        
        
bit4reg5 : bit4reg
    port map (
        D => D,
        CLK => CLK,
        CLR => CLR,
        EN => y_mid(5),
        Q => R5
    );
            
            
bit4reg6 : bit4reg
    port map (
        D => D,
        CLK => CLK,
        CLR => CLR,
        EN => y_mid(6),
        Q => R6
    );
                
                
bit4reg7 : bit4reg
    port map (
        D => D,
        CLK => CLK,
        CLR => CLR,
        EN => y_mid(7),
        Q => R7
    );
 
 
end Behavioral;
