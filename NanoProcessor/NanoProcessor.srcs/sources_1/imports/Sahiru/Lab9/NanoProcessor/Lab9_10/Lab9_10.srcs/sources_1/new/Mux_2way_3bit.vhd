----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/20/2022 06:31:01 PM
-- Design Name: 
-- Module Name: Mux_2way_3bit - Behavioral
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

entity Mux_2way_3bit is
    Port ( S : in STD_LOGIC;
           I_0 : in STD_LOGIC_VECTOR (2 downto 0);
           I_1 : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2way_3bit;

architecture Behavioral of Mux_2way_3bit is

component Mux_2_to_1
    PORT(
        I : in STD_LOGIC_VECTOR (1 downto 0);
        S : in STD_LOGIC;
        Q : out STD_LOGIC
    );
    
end component;

begin

Mux_2_to_1_0 : Mux_2_to_1
    port map(
        I(0) => I_0(0),
        I(1) => I_1(0),
        S => S,
        Q => O(0) 
    );

Mux_2_to_1_1 : Mux_2_to_1
        port map(
            I(0) => I_0(1),
            I(1) => I_1(1),
            S => S,
            Q => O(1)   
        );

Mux_2_to_1_2 : Mux_2_to_1
            port map(
                I(0) => I_0(2),
                I(1) => I_1(2),
                S => S,
                Q => O(2)
            );

end Behavioral;