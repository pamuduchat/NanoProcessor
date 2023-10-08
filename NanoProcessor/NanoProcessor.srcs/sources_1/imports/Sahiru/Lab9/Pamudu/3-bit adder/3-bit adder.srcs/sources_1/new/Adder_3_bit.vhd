----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2022 02:49:05 AM
-- Design Name: 
-- Module Name: Adder_3_bit - Behavioral
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

entity Adder_3_bit is
    PORT(
        A : in STD_LOGIC_VECTOR (2 downto 0);
        S : out STD_LOGIC_VECTOR (2 downto 0)
    );
end Adder_3_bit;

architecture Behavioral of Adder_3_bit is
component FA
    PORT(
        A : in STD_LOGIC;
        B : in STD_LOGIC;
        C_in : in STD_LOGIC;
        S : out STD_LOGIC;
        C_out : out STD_LOGIC);
end component;

signal FA0_Cout, FA1_Cout, FA2_Cout: STD_LOGIC;
signal S0,S1,S2 : STD_LOGIC;
signal GND : STD_LOGIC := '0';
signal GNDINV : STD_LOGIC := '1';

begin
    FA_0 : FA 
        PORT MAP(
            A => A(0),
            B => GNDINV,
            C_in => GND,
            S => S0,
            C_out => FA0_Cout 
        );
    FA_1 : FA 
        PORT MAP(
            A => A(1),
            B => GND,
            C_in => FA0_Cout,
            S => S1,
            C_out => FA1_Cout 
        );
    FA_2 : FA 
        PORT MAP(
            A => A(2),
            B => GND,
            C_in => FA1_Cout,
            S => S2,
            C_out => FA2_Cout 
        );
    
    S(0) <= S0;
    S(1) <= S1;
    S(2) <= S2;
    
       
end Behavioral;
