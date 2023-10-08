----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/22/2022 02:54:24 AM
-- Design Name: 
-- Module Name: PC - Behavioral
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

entity PC is
    Port ( Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (2 downto 0);
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end PC;

architecture Behavioral of PC is
component D_FF
    Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out  STD_LOGIC);

end component;

signal D0, D1, D2 : std_logic; 
signal Q_0, Q_1, Q_2 : std_logic; 

  
begin


 D_FF0 : D_FF 
     PORT MAP( 
         D => D0, 
         Res => Res, 
         Clk => Clk, 
         Q => Q_0
     ); 
 
 D_FF1 : D_FF 
     PORT MAP ( 
         D => D1, 
         Res => Res, 
         Clk => Clk, 
         Q => Q_1
     ); 
 
 D_FF2 : D_FF 
     PORT MAP ( 
         D => D2, 
         Res => Res, 
         Clk => Clk, 
         Q => Q_2
     ); 


D0 <= D(0);
D1 <= D(1);
D2 <= D(2);

Q(0) <= Q_0;
Q(1) <= Q_1;
Q(2) <= Q_2;

end Behavioral;
