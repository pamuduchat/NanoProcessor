----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/23/2022 01:32:04 AM
-- Design Name: 
-- Module Name: NanoProcessor - Behavioral
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

entity NanoProcessor is
    Port ( Reset : in STD_LOGIC;
           Clk : in STD_LOGIC;
           R7 : out STD_LOGIC_VECTOR (3 downto 0);
           seven_seg_out : out STD_LOGIC_VECTOR (6 downto 0);
           seven_seg_anode : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Overflow : out STD_LOGIC);
end NanoProcessor;

architecture Behavioral of NanoProcessor is

-- Slow Clock -------------------------------------
component Slow_Clk
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

---------------------------------------------------
---------------------------------------------------


-- Register Bank-------------------------------------
component register_bank
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
               CLK : in STD_LOGIC;
               CLR : in STD_LOGIC;
               I : in STD_LOGIC_VECTOR (2 downto 0);
               R0, R1, R2, R3, R4, R5, R6, R7 : out STD_LOGIC_VECTOR (3 downto 0));
end component;

---------------------------------------------------
---------------------------------------------------


-- Program Counter -------------------------------------
component PC
    Port ( Clk : in STD_LOGIC;
           Res : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (2 downto 0);
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;

---------------------------------------------------
---------------------------------------------------

-- 4-bit Add/Subtract unit -------------------------------------
component add_sub_4bit
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Sub : in STD_LOGIC;
           Z_out : out STD_LOGIC;
           S : inout STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC);
end component;

---------------------------------------------------
---------------------------------------------------

-- 3-bit adder -------------------------------------
component Adder_3_bit
    PORT(
        A : in STD_LOGIC_VECTOR (2 downto 0);
        S : out STD_LOGIC_VECTOR (2 downto 0)
    );
end component;

---------------------------------------------------
---------------------------------------------------

-- 2-way 3-bit multiplexer -------------------------------------
component Mux_2way_3bit
    Port ( S : in STD_LOGIC;
           I_0 : in STD_LOGIC_VECTOR (2 downto 0);
           I_1 : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (2 downto 0));
end component;

---------------------------------------------------
---------------------------------------------------

-- 2-way 4-bit multiplexer -------------------------------------
component Mux_2way_4bit
    Port ( I_0 : in STD_LOGIC_VECTOR (3 downto 0);
           I_1 : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (3 downto 0));
end component;

---------------------------------------------------
---------------------------------------------------

-- 8 way 4 bit Multiplexer-------------------------------------
component Mux_8way_4bit
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           I_0, I_1, I_2, I_3, I_4, I_5, I_6, I_7 : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0));
end component;

---------------------------------------------------
---------------------------------------------------

-- Instruction Decoder -------------------------------------
component instrctuion_decoder
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
end component;

---------------------------------------------------
---------------------------------------------------

-- ROM -------------------------------------
component LUT_8_12
    Port ( M_Select : in STD_LOGIC_VECTOR (2 downto 0);
           I_Bus : out STD_LOGIC_VECTOR (11 downto 0));
end component;

---------------------------------------------------
---------------------------------------------------

-- Seven Segment Display -------------------------------------
component LUT_16_7
 Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
          data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

---------------------------------------------------
---------------------------------------------------

signal rb_in : STD_LOGIC_VECTOR (3 downto 0);
signal reg_en : STD_LOGIC_VECTOR (2 downto 0);
signal dbus_0,dbus_1,dbus_2,dbus_3,dbus_4,dbus_5,dbus_6,dbus_7  : STD_LOGIC_VECTOR (3 downto 0);
signal reg_sel_A, reg_sel_B: STD_LOGIC_VECTOR (2 downto 0);
signal A, B  : STD_LOGIC_VECTOR (3 downto 0);
signal i_bus  : STD_LOGIC_VECTOR (11 downto 0);
signal l_sel, as_sel, jump_flag : STD_LOGIC;
signal im_val : STD_LOGIC_VECTOR (3 downto 0);
signal jump_add : STD_LOGIC_VECTOR (2 downto 0);
signal as_out : STD_LOGIC_VECTOR (3 downto 0);
signal memory_sel, memory_next, memory_inc  : STD_LOGIC_VECTOR (2 downto 0);
signal Clk_out: std_logic;
begin

Slow_Clk_0 : Slow_Clk
    port map(
        Clk_in => Clk,
        Clk_out => Clk_out
    );

instruction_decoder : instrctuion_decoder
    port map (
        A => i_bus,
        Reg => A,
        RegEnable => reg_en,
        LoadSelect => l_sel,
        ImVal => im_val,
        RegA => reg_sel_A,
        RegB => reg_sel_B,
        Sub => as_sel,
        Jump => jump_flag,
        JumpAd => jump_add    
    );


register_bank_0 : register_bank
    port map (
        D =>  rb_in,
        Clk => Clk_out,
        Clr => Reset,
        I => reg_en,
        R0 => dbus_0,
        R1 => dbus_1,
        R2 => dbus_2,
        R3 => dbus_3,
        R4 => dbus_4,
        R5 => dbus_5,
        R6 => dbus_6,
        R7 => dbus_7
    );

Mux_8way_4bit_A : Mux_8way_4bit
    port map (
        S => reg_sel_A,
        I_0 => dbus_0,
        I_1 => dbus_1,
        I_2 => dbus_2,
        I_3 => dbus_3,
        I_4 => dbus_4,
        I_5 => dbus_5,
        I_6 => dbus_6,
        I_7 => dbus_7,
        O => A
    );

Mux_8way_4bit_B : Mux_8way_4bit
    port map (
        S => reg_sel_B,
        I_0 => dbus_0,
        I_1 => dbus_1,
        I_2 => dbus_2,
        I_3 => dbus_3,
        I_4 => dbus_4,
        I_5 => dbus_5,
        I_6 => dbus_6,
        I_7 => dbus_7,
        O => B
    );
 

fourbit_adder :   add_sub_4bit
    port map (
        A => A,
        B => B,
        Sub => as_sel,
        Z_out => Zero,
        S => as_out,
        C_out => Overflow
    );  
    
threebit_adder :  Adder_3_bit
    port map (
        A => memory_sel,
        S => memory_inc
    );   
    
Mux_2way_3bit_0 :   Mux_2way_3bit
    port map (
        S => jump_flag,
        I_0 => memory_inc,
        I_1 => jump_add,
        O => memory_next
    ); 
    
rom_o : LUT_8_12
    port map (
        M_select => memory_sel,
        I_Bus => i_bus
    );
    
p_counter : PC
    port map (
        Clk => Clk_out,
        Res => Reset,
        D => memory_next,
        Q => memory_sel
    ); 

mux :  Mux_2way_4bit
    port map (
    I_0 => im_val,
    I_1 => as_out,
    S => l_sel,
    O => rb_in
    );

LUT_seven_seg : LUT_16_7
port map(
    address => dbus_7,
    data => seven_seg_out
);

seven_seg_anode <= "1110";
 R7 <= dbus_7;  
end Behavioral;
