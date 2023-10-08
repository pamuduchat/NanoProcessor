// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Jul 26 18:19:43 2022
// Host        : JaDdA running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Sahiru/Lab9/NanoProcessor/NanoProcessor/NanoProcessor.sim/sim_1/impl/func/xsim/TB_NanoProcessor_func_impl.v
// Design      : NanoProcessor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module D_FF
   (Q_reg_0,
    \Q_reg[3] ,
    Q_reg_1,
    Ao_OBUF,
    CLK,
    Q_reg_2,
    Q_reg_3,
    jump_flag,
    \Q_reg[1] ,
    Reset_IBUF);
  output Q_reg_0;
  output [0:0]\Q_reg[3] ;
  output Q_reg_1;
  output [4:0]Ao_OBUF;
  input CLK;
  input Q_reg_2;
  input Q_reg_3;
  input jump_flag;
  input \Q_reg[1] ;
  input Reset_IBUF;

  wire [4:0]Ao_OBUF;
  wire CLK;
  wire Q_i_1__0_n_0;
  wire \Q_reg[1] ;
  wire [0:0]\Q_reg[3] ;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Reset_IBUF;
  wire jump_flag;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    \Ao_OBUF[11]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(Ao_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \Ao_OBUF[1]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(Ao_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD1)) 
    \Ao_OBUF[2]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .I2(Q_reg_2),
        .O(Ao_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Ao_OBUF[4]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .I2(Q_reg_2),
        .O(Ao_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \Ao_OBUF[8]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(Ao_OBUF[3]));
  LUT6 #(
    .INIT(64'h00000000D1111111)) 
    Q_i_1__0
       (.I0(Q_reg_0),
        .I1(jump_flag),
        .I2(Q_reg_2),
        .I3(Q_reg_3),
        .I4(\Q_reg[1] ),
        .I5(Reset_IBUF),
        .O(Q_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00000000C0780078)) 
    Q_i_1__1
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .I3(jump_flag),
        .I4(\Q_reg[1] ),
        .I5(Reset_IBUF),
        .O(Q_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Q_i_1__0_n_0),
        .Q(Q_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h65)) 
    \RegA_reg[0]_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(\Q_reg[3] ));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_2
   (Q_reg_0,
    \Q_reg[3] ,
    Q_reg_1,
    Ao_OBUF,
    CLK,
    Q_reg_2,
    Q_reg_3,
    jump_flag,
    \Q_reg[1] ,
    Reset_IBUF);
  output Q_reg_0;
  output [0:0]\Q_reg[3] ;
  output Q_reg_1;
  output [2:0]Ao_OBUF;
  input CLK;
  input Q_reg_2;
  input Q_reg_3;
  input jump_flag;
  input \Q_reg[1] ;
  input Reset_IBUF;

  wire [2:0]Ao_OBUF;
  wire CLK;
  wire Q_i_1_n_0;
  wire \Q_reg[1] ;
  wire [0:0]\Q_reg[3] ;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire Q_reg_3;
  wire Reset_IBUF;
  wire jump_flag;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \Ao_OBUF[10]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(Ao_OBUF[2]));
  LUT2 #(
    .INIT(4'h1)) 
    \Ao_OBUF[3]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .O(Ao_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6B)) 
    \Ao_OBUF[7]_inst_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .I2(Q_reg_2),
        .O(Ao_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    Jump_reg_i_2
       (.I0(Q_reg_0),
        .I1(Q_reg_3),
        .O(Q_reg_1));
  LUT6 #(
    .INIT(64'h0000000086060606)) 
    Q_i_1
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(jump_flag),
        .I3(Q_reg_3),
        .I4(\Q_reg[1] ),
        .I5(Reset_IBUF),
        .O(Q_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Q_i_1_n_0),
        .Q(Q_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \RegA_reg[1]_i_1 
       (.I0(Q_reg_0),
        .I1(Q_reg_2),
        .I2(Q_reg_3),
        .O(\Q_reg[3] ));
endmodule

(* ORIG_REF_NAME = "D_FF" *) 
module D_FF_3
   (\Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    E,
    \Q_reg[1] ,
    RegEnable0,
    \Q_reg[3]_2 ,
    Ao_OBUF,
    Q_reg_0,
    CLK,
    Q_reg_1,
    Q_reg_2);
  output \Q_reg[3] ;
  output [1:0]\Q_reg[3]_0 ;
  output \Q_reg[3]_1 ;
  output [0:0]E;
  output [0:0]\Q_reg[1] ;
  output RegEnable0;
  output [0:0]\Q_reg[3]_2 ;
  output [0:0]Ao_OBUF;
  input Q_reg_0;
  input CLK;
  input Q_reg_1;
  input Q_reg_2;

  wire [0:0]Ao_OBUF;
  wire CLK;
  wire [0:0]E;
  wire [0:0]\Q_reg[1] ;
  wire \Q_reg[3] ;
  wire [1:0]\Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire [0:0]\Q_reg[3]_2 ;
  wire Q_reg_0;
  wire Q_reg_1;
  wire Q_reg_2;
  wire RegEnable0;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Ao_OBUF[5]_inst_i_1 
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_1),
        .O(Ao_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    LoadSelect_reg_i_1
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_1),
        .O(RegEnable0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h15)) 
    LoadSelect_reg_i_2
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_2),
        .I2(Q_reg_1),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h62)) 
    LoadSelect_reg_i_3
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_1),
        .I2(Q_reg_2),
        .O(\Q_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \Q[3]_i_1 
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_1),
        .I2(Q_reg_2),
        .O(\Q_reg[3]_2 ));
  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(\Q_reg[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \RegB_reg[0]_i_1 
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_1),
        .I2(Q_reg_2),
        .O(\Q_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h36)) 
    \RegB_reg[1]_i_1 
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_1),
        .I2(Q_reg_2),
        .O(\Q_reg[3]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    Sub_reg_i_1
       (.I0(\Q_reg[3] ),
        .I1(Q_reg_1),
        .I2(Q_reg_2),
        .O(\Q_reg[3]_1 ));
endmodule

module Decode_3_to_8
   (y_mid,
    memory_sel);
  output [1:0]y_mid;
  input [2:0]memory_sel;

  wire [2:0]memory_sel;
  wire [1:0]y_mid;

  Decoder_2_to_4 Decoder_2_to_4_0
       (.memory_sel(memory_sel),
        .y_mid(y_mid));
endmodule

module Decoder_2_to_4
   (y_mid,
    memory_sel);
  output [1:0]y_mid;
  input [2:0]memory_sel;

  wire [2:0]memory_sel;
  wire [1:0]y_mid;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Q[3]_i_1 
       (.I0(memory_sel[2]),
        .I1(memory_sel[1]),
        .I2(memory_sel[0]),
        .O(y_mid[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h61)) 
    \Q[3]_i_1__0 
       (.I0(memory_sel[2]),
        .I1(memory_sel[1]),
        .I2(memory_sel[0]),
        .O(y_mid[0]));
endmodule

(* ECO_CHECKSUM = "77d0da2c" *) 
(* NotValidForBitStream *)
module NanoProcessor
   (Reset,
    Clk,
    R1,
    R2,
    R3,
    Zero,
    Ao,
    Overflow);
  input Reset;
  input Clk;
  output [3:0]R1;
  output [3:0]R2;
  output [3:0]R3;
  output Zero;
  output [11:0]Ao;
  output Overflow;

  wire [11:0]Ao;
  wire [11:0]Ao_OBUF;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire Overflow;
  wire Overflow_OBUF;
  wire [3:0]R1;
  wire [3:0]R1_OBUF;
  wire [3:0]R2;
  wire [3:0]R2_OBUF;
  wire [3:0]R3;
  wire [3:0]R3_OBUF;
  wire RegEnable0;
  wire RegEnable19_out;
  wire Reset;
  wire Reset_IBUF;
  wire Zero;
  wire Zero_OBUF;
  wire as_sel;
  wire [3:2]im_val;
  wire instruction_decoder_n_10;
  wire instruction_decoder_n_6;
  wire instruction_decoder_n_9;
  wire jump_flag;
  wire l_sel;
  wire [2:0]memory_sel;
  wire p_counter_n_10;
  wire p_counter_n_21;
  wire p_counter_n_3;
  wire p_counter_n_4;
  wire p_counter_n_5;
  wire p_counter_n_6;
  wire p_counter_n_7;
  wire p_counter_n_9;
  wire [1:1]rb_in;
  wire [1:0]reg_sel_A;
  wire [1:0]reg_sel_B;
  wire register_bank_0_n_2;
  wire register_bank_0_n_3;

  OBUF \Ao_OBUF[0]_inst 
       (.I(Ao_OBUF[0]),
        .O(Ao[0]));
  OBUF \Ao_OBUF[10]_inst 
       (.I(Ao_OBUF[10]),
        .O(Ao[10]));
  OBUF \Ao_OBUF[11]_inst 
       (.I(Ao_OBUF[11]),
        .O(Ao[11]));
  OBUF \Ao_OBUF[1]_inst 
       (.I(Ao_OBUF[1]),
        .O(Ao[1]));
  OBUF \Ao_OBUF[2]_inst 
       (.I(Ao_OBUF[0]),
        .O(Ao[2]));
  OBUF \Ao_OBUF[3]_inst 
       (.I(Ao_OBUF[3]),
        .O(Ao[3]));
  OBUF \Ao_OBUF[4]_inst 
       (.I(Ao_OBUF[4]),
        .O(Ao[4]));
  OBUF \Ao_OBUF[5]_inst 
       (.I(Ao_OBUF[5]),
        .O(Ao[5]));
  OBUF \Ao_OBUF[6]_inst 
       (.I(1'b0),
        .O(Ao[6]));
  OBUF \Ao_OBUF[7]_inst 
       (.I(Ao_OBUF[7]),
        .O(Ao[7]));
  OBUF \Ao_OBUF[8]_inst 
       (.I(Ao_OBUF[8]),
        .O(Ao[8]));
  OBUF \Ao_OBUF[9]_inst 
       (.I(1'b0),
        .O(Ao[9]));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  OBUF Overflow_OBUF_inst
       (.I(Overflow_OBUF),
        .O(Overflow));
  OBUF \R1_OBUF[0]_inst 
       (.I(R1_OBUF[0]),
        .O(R1[0]));
  OBUF \R1_OBUF[1]_inst 
       (.I(R1_OBUF[1]),
        .O(R1[1]));
  OBUF \R1_OBUF[2]_inst 
       (.I(R1_OBUF[2]),
        .O(R1[2]));
  OBUF \R1_OBUF[3]_inst 
       (.I(R1_OBUF[3]),
        .O(R1[3]));
  OBUF \R2_OBUF[0]_inst 
       (.I(R2_OBUF[0]),
        .O(R2[0]));
  OBUF \R2_OBUF[1]_inst 
       (.I(R2_OBUF[1]),
        .O(R2[1]));
  OBUF \R2_OBUF[2]_inst 
       (.I(R2_OBUF[2]),
        .O(R2[2]));
  OBUF \R2_OBUF[3]_inst 
       (.I(R2_OBUF[3]),
        .O(R2[3]));
  OBUF \R3_OBUF[0]_inst 
       (.I(R3_OBUF[0]),
        .O(R3[0]));
  OBUF \R3_OBUF[1]_inst 
       (.I(R3_OBUF[1]),
        .O(R3[1]));
  OBUF \R3_OBUF[2]_inst 
       (.I(R3_OBUF[2]),
        .O(R3[2]));
  OBUF \R3_OBUF[3]_inst 
       (.I(R3_OBUF[3]),
        .O(R3[3]));
  IBUF Reset_IBUF_inst
       (.I(Reset),
        .O(Reset_IBUF));
  OBUF Zero_OBUF_inst
       (.I(Zero_OBUF),
        .O(Zero));
  instrctuion_decoder instruction_decoder
       (.Ao_OBUF({Ao_OBUF[8],Ao_OBUF[3],Ao_OBUF[1:0]}),
        .D(rb_in),
        .E(RegEnable19_out),
        .Q(im_val),
        .Q_reg(p_counter_n_9),
        .\Q_reg[1] (instruction_decoder_n_6),
        .\Q_reg[1]_0 (register_bank_0_n_3),
        .\Q_reg[3] (reg_sel_B),
        .\Q_reg[3]_0 (instruction_decoder_n_9),
        .\Q_reg[3]_1 (instruction_decoder_n_10),
        .\Q_reg[3]_2 (reg_sel_A),
        .\Q_reg[3]_3 (R2_OBUF[3:1]),
        .\Q_reg[3]_4 (R3_OBUF[3:1]),
        .\Q_reg[3]_5 (R1_OBUF[3:1]),
        .Q_reg_0(p_counter_n_6),
        .Q_reg_0_sp_1(register_bank_0_n_2),
        .Q_reg_1(p_counter_n_10),
        .Q_reg_2(p_counter_n_7),
        .Q_reg_3(p_counter_n_5),
        .Q_reg_4({p_counter_n_3,p_counter_n_4}),
        .RegEnable0(RegEnable0),
        .as_sel(as_sel),
        .jump_flag(jump_flag),
        .l_sel(l_sel));
  PC p_counter
       (.Ao_OBUF({Ao_OBUF[11:10],Ao_OBUF[8:7],Ao_OBUF[5:3],Ao_OBUF[1:0]}),
        .CLK(Clk_IBUF_BUFG),
        .E(RegEnable19_out),
        .Q_reg(p_counter_n_10),
        .\Q_reg[1] (p_counter_n_9),
        .\Q_reg[1]_0 (register_bank_0_n_3),
        .\Q_reg[3] ({p_counter_n_3,p_counter_n_4}),
        .\Q_reg[3]_0 (p_counter_n_5),
        .\Q_reg[3]_1 (p_counter_n_6),
        .\Q_reg[3]_2 (p_counter_n_7),
        .\Q_reg[3]_3 (p_counter_n_21),
        .RegEnable0(RegEnable0),
        .Reset_IBUF(Reset_IBUF),
        .jump_flag(jump_flag),
        .memory_sel(memory_sel));
  register_bank register_bank_0
       (.CLK(Clk_IBUF_BUFG),
        .D(rb_in),
        .E(p_counter_n_21),
        .Overflow_OBUF(Overflow_OBUF),
        .Q(im_val),
        .Q_reg(register_bank_0_n_3),
        .\Q_reg[1] (register_bank_0_n_2),
        .\Q_reg[1]_0 (instruction_decoder_n_6),
        .\Q_reg[2] (instruction_decoder_n_9),
        .\Q_reg[3] (R1_OBUF),
        .\Q_reg[3]_0 (R3_OBUF),
        .\Q_reg[3]_1 (R2_OBUF),
        .\Q_reg[3]_2 (instruction_decoder_n_10),
        .Q_reg_0(reg_sel_A),
        .Q_reg_1(reg_sel_B),
        .SR(Reset_IBUF),
        .Zero_OBUF(Zero_OBUF),
        .as_sel(as_sel),
        .l_sel(l_sel),
        .memory_sel(memory_sel));
endmodule

module PC
   (memory_sel,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    E,
    \Q_reg[1] ,
    Q_reg,
    RegEnable0,
    Ao_OBUF,
    \Q_reg[3]_3 ,
    CLK,
    jump_flag,
    \Q_reg[1]_0 ,
    Reset_IBUF);
  output [2:0]memory_sel;
  output [1:0]\Q_reg[3] ;
  output [0:0]\Q_reg[3]_0 ;
  output \Q_reg[3]_1 ;
  output [0:0]\Q_reg[3]_2 ;
  output [0:0]E;
  output [0:0]\Q_reg[1] ;
  output Q_reg;
  output RegEnable0;
  output [8:0]Ao_OBUF;
  output [0:0]\Q_reg[3]_3 ;
  input CLK;
  input jump_flag;
  input \Q_reg[1]_0 ;
  input Reset_IBUF;

  wire [8:0]Ao_OBUF;
  wire CLK;
  wire D_FF0_n_2;
  wire [0:0]E;
  wire Q_reg;
  wire [0:0]\Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire [1:0]\Q_reg[3] ;
  wire [0:0]\Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire [0:0]\Q_reg[3]_2 ;
  wire [0:0]\Q_reg[3]_3 ;
  wire RegEnable0;
  wire Reset_IBUF;
  wire jump_flag;
  wire [2:0]memory_sel;

  D_FF D_FF0
       (.Ao_OBUF({Ao_OBUF[8],Ao_OBUF[6],Ao_OBUF[3],Ao_OBUF[1:0]}),
        .CLK(CLK),
        .\Q_reg[1] (\Q_reg[1]_0 ),
        .\Q_reg[3] (\Q_reg[3]_0 ),
        .Q_reg_0(memory_sel[0]),
        .Q_reg_1(D_FF0_n_2),
        .Q_reg_2(memory_sel[1]),
        .Q_reg_3(memory_sel[2]),
        .Reset_IBUF(Reset_IBUF),
        .jump_flag(jump_flag));
  D_FF_2 D_FF1
       (.Ao_OBUF({Ao_OBUF[7],Ao_OBUF[5],Ao_OBUF[2]}),
        .CLK(CLK),
        .\Q_reg[1] (\Q_reg[1]_0 ),
        .\Q_reg[3] (\Q_reg[3]_2 ),
        .Q_reg_0(memory_sel[1]),
        .Q_reg_1(Q_reg),
        .Q_reg_2(memory_sel[0]),
        .Q_reg_3(memory_sel[2]),
        .Reset_IBUF(Reset_IBUF),
        .jump_flag(jump_flag));
  D_FF_3 D_FF2
       (.Ao_OBUF(Ao_OBUF[4]),
        .CLK(CLK),
        .E(E),
        .\Q_reg[1] (\Q_reg[1] ),
        .\Q_reg[3] (memory_sel[2]),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[3]_1 (\Q_reg[3]_1 ),
        .\Q_reg[3]_2 (\Q_reg[3]_3 ),
        .Q_reg_0(D_FF0_n_2),
        .Q_reg_1(memory_sel[1]),
        .Q_reg_2(memory_sel[0]),
        .RegEnable0(RegEnable0));
endmodule

module bit4reg
   (Overflow_OBUF,
    D,
    Zero_OBUF,
    \Q_reg[1]_0 ,
    Q_reg,
    \Q_reg[3]_0 ,
    \Q_reg[2]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    l_sel,
    Q,
    \Q_reg[2]_1 ,
    \Q_reg[1]_1 ,
    \Q_reg[3]_3 ,
    Q_reg_0,
    \Q_reg[3]_4 ,
    \Q_reg[1]_2 ,
    as_sel,
    Q_reg_1,
    SR,
    E,
    CLK,
    \Q_reg[0]_0 );
  output Overflow_OBUF;
  output [2:0]D;
  output Zero_OBUF;
  output \Q_reg[1]_0 ;
  output Q_reg;
  output [3:0]\Q_reg[3]_0 ;
  input \Q_reg[2]_0 ;
  input \Q_reg[3]_1 ;
  input \Q_reg[3]_2 ;
  input l_sel;
  input [1:0]Q;
  input \Q_reg[2]_1 ;
  input \Q_reg[1]_1 ;
  input [2:0]\Q_reg[3]_3 ;
  input [1:0]Q_reg_0;
  input [2:0]\Q_reg[3]_4 ;
  input \Q_reg[1]_2 ;
  input as_sel;
  input [1:0]Q_reg_1;
  input [0:0]SR;
  input [0:0]E;
  input CLK;
  input [0:0]\Q_reg[0]_0 ;

  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire Jump_reg_i_4_n_0;
  wire Overflow_OBUF;
  wire Overflow_OBUF_inst_i_3_n_0;
  wire [1:0]Q;
  wire \Q[0]_i_2_n_0 ;
  wire Q_reg;
  wire [0:0]\Q_reg[0]_0 ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[1]_1 ;
  wire \Q_reg[1]_2 ;
  wire \Q_reg[2]_0 ;
  wire \Q_reg[2]_1 ;
  wire [3:0]\Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire [2:0]\Q_reg[3]_3 ;
  wire [2:0]\Q_reg[3]_4 ;
  wire [1:0]Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]SR;
  wire Zero_OBUF;
  wire Zero_OBUF_inst_i_3_n_0;
  wire Zero_OBUF_inst_i_5_n_0;
  wire Zero_OBUF_inst_i_7_n_0;
  wire as_sel;
  wire l_sel;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    Jump_reg_i_1
       (.I0(\Q_reg[1]_1 ),
        .I1(Zero_OBUF_inst_i_7_n_0),
        .I2(Overflow_OBUF_inst_i_3_n_0),
        .I3(Jump_reg_i_4_n_0),
        .O(Q_reg));
  LUT5 #(
    .INIT(32'hCFA0C0A0)) 
    Jump_reg_i_4
       (.I0(\Q_reg[3]_0 [0]),
        .I1(\Q_reg[3]_3 [0]),
        .I2(Q_reg_0[0]),
        .I3(Q_reg_0[1]),
        .I4(\Q_reg[3]_4 [0]),
        .O(Jump_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    Overflow_OBUF_inst_i_1
       (.I0(Zero_OBUF_inst_i_5_n_0),
        .I1(\Q_reg[2]_0 ),
        .I2(Zero_OBUF_inst_i_7_n_0),
        .I3(\Q_reg[3]_1 ),
        .I4(Overflow_OBUF_inst_i_3_n_0),
        .O(Overflow_OBUF));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    Overflow_OBUF_inst_i_3
       (.I0(\Q_reg[3]_0 [3]),
        .I1(\Q_reg[3]_4 [2]),
        .I2(Q_reg_0[1]),
        .I3(Q_reg_0[0]),
        .I4(\Q_reg[3]_3 [2]),
        .O(Overflow_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'h9F90)) 
    \Q[0]_i_1 
       (.I0(\Q[0]_i_2_n_0 ),
        .I1(Jump_reg_i_4_n_0),
        .I2(l_sel),
        .I3(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h305F3F5F)) 
    \Q[0]_i_2 
       (.I0(\Q_reg[3]_0 [0]),
        .I1(\Q_reg[3]_3 [0]),
        .I2(Q_reg_1[0]),
        .I3(Q_reg_1[1]),
        .I4(\Q_reg[3]_4 [0]),
        .O(\Q[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \Q[2]_i_1 
       (.I0(Zero_OBUF_inst_i_5_n_0),
        .I1(\Q_reg[2]_1 ),
        .I2(l_sel),
        .I3(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h2BD4FFFF2BD40000)) 
    \Q[3]_i_2 
       (.I0(Zero_OBUF_inst_i_7_n_0),
        .I1(\Q_reg[2]_0 ),
        .I2(Zero_OBUF_inst_i_5_n_0),
        .I3(\Q_reg[3]_2 ),
        .I4(l_sel),
        .I5(Q[1]),
        .O(D[2]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\Q_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\Q_reg[0]_0 ),
        .Q(\Q_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\Q_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\Q_reg[3]_0 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h1000000100101000)) 
    Zero_OBUF_inst_i_1
       (.I0(\Q_reg[1]_0 ),
        .I1(Zero_OBUF_inst_i_3_n_0),
        .I2(\Q_reg[3]_2 ),
        .I3(Zero_OBUF_inst_i_5_n_0),
        .I4(\Q_reg[2]_0 ),
        .I5(Zero_OBUF_inst_i_7_n_0),
        .O(Zero_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE21D1DE2)) 
    Zero_OBUF_inst_i_2
       (.I0(Jump_reg_i_4_n_0),
        .I1(\Q[0]_i_2_n_0 ),
        .I2(as_sel),
        .I3(\Q_reg[1]_2 ),
        .I4(\Q_reg[1]_1 ),
        .O(\Q_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h9)) 
    Zero_OBUF_inst_i_3
       (.I0(\Q[0]_i_2_n_0 ),
        .I1(Jump_reg_i_4_n_0),
        .O(Zero_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hE8EEE888)) 
    Zero_OBUF_inst_i_5
       (.I0(\Q_reg[1]_1 ),
        .I1(\Q_reg[1]_2 ),
        .I2(as_sel),
        .I3(\Q[0]_i_2_n_0 ),
        .I4(Jump_reg_i_4_n_0),
        .O(Zero_OBUF_inst_i_5_n_0));
  LUT5 #(
    .INIT(32'h305F3F5F)) 
    Zero_OBUF_inst_i_7
       (.I0(\Q_reg[3]_0 [2]),
        .I1(\Q_reg[3]_3 [1]),
        .I2(Q_reg_0[0]),
        .I3(Q_reg_0[1]),
        .I4(\Q_reg[3]_4 [1]),
        .O(Zero_OBUF_inst_i_7_n_0));
endmodule

(* ORIG_REF_NAME = "bit4reg" *) 
module bit4reg_0
   (\Q_reg[2]_0 ,
    \Q_reg[3]_0 ,
    Q_reg,
    \Q_reg[2]_1 ,
    \Q_reg[2]_2 ,
    \Q_reg[2]_3 ,
    SR,
    E,
    D,
    CLK);
  output \Q_reg[2]_0 ;
  output [3:0]\Q_reg[3]_0 ;
  input [1:0]Q_reg;
  input [0:0]\Q_reg[2]_1 ;
  input [0:0]\Q_reg[2]_2 ;
  input \Q_reg[2]_3 ;
  input [0:0]SR;
  input [0:0]E;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q_reg;
  wire \Q_reg[2]_0 ;
  wire [0:0]\Q_reg[2]_1 ;
  wire [0:0]\Q_reg[2]_2 ;
  wire \Q_reg[2]_3 ;
  wire [3:0]\Q_reg[3]_0 ;
  wire [0:0]SR;

  LUT6 #(
    .INIT(64'h07C737F7F838C808)) 
    \Q[2]_i_2 
       (.I0(\Q_reg[3]_0 [2]),
        .I1(Q_reg[1]),
        .I2(Q_reg[0]),
        .I3(\Q_reg[2]_1 ),
        .I4(\Q_reg[2]_2 ),
        .I5(\Q_reg[2]_3 ),
        .O(\Q_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\Q_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\Q_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\Q_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\Q_reg[3]_0 [3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bit4reg" *) 
module bit4reg_1
   (Q_reg,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    \Q_reg[3]_3 ,
    Q_reg_0,
    \Q_reg[3]_4 ,
    SR,
    E,
    D,
    CLK);
  output Q_reg;
  output [3:0]\Q_reg[3]_0 ;
  output \Q_reg[3]_1 ;
  input [1:0]\Q_reg[3]_2 ;
  input [1:0]\Q_reg[3]_3 ;
  input [1:0]Q_reg_0;
  input \Q_reg[3]_4 ;
  input [0:0]SR;
  input [0:0]E;
  input [3:0]D;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire Q_reg;
  wire [3:0]\Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire [1:0]\Q_reg[3]_2 ;
  wire [1:0]\Q_reg[3]_3 ;
  wire \Q_reg[3]_4 ;
  wire [1:0]Q_reg_0;
  wire [0:0]SR;

  LUT5 #(
    .INIT(32'hAAF0CC00)) 
    Jump_reg_i_3
       (.I0(\Q_reg[3]_0 [1]),
        .I1(\Q_reg[3]_2 [0]),
        .I2(\Q_reg[3]_3 [0]),
        .I3(Q_reg_0[1]),
        .I4(Q_reg_0[0]),
        .O(Q_reg));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\Q_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\Q_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\Q_reg[3]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\Q_reg[3]_0 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h43734F7FBC8CB080)) 
    Zero_OBUF_inst_i_4
       (.I0(\Q_reg[3]_0 [3]),
        .I1(Q_reg_0[0]),
        .I2(Q_reg_0[1]),
        .I3(\Q_reg[3]_2 [1]),
        .I4(\Q_reg[3]_3 [1]),
        .I5(\Q_reg[3]_4 ),
        .O(\Q_reg[3]_1 ));
endmodule

module instrctuion_decoder
   (l_sel,
    as_sel,
    jump_flag,
    D,
    Q,
    \Q_reg[1] ,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[3]_2 ,
    RegEnable0,
    E,
    Q_reg,
    Q_reg_0,
    \Q_reg[1]_0 ,
    Q_reg_1,
    Q_reg_0_sp_1,
    \Q_reg[3]_3 ,
    \Q_reg[3]_4 ,
    \Q_reg[3]_5 ,
    Ao_OBUF,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4);
  output l_sel;
  output as_sel;
  output jump_flag;
  output [0:0]D;
  output [1:0]Q;
  output \Q_reg[1] ;
  output [1:0]\Q_reg[3] ;
  output \Q_reg[3]_0 ;
  output \Q_reg[3]_1 ;
  output [1:0]\Q_reg[3]_2 ;
  input RegEnable0;
  input [0:0]E;
  input [0:0]Q_reg;
  input Q_reg_0;
  input \Q_reg[1]_0 ;
  input Q_reg_1;
  input Q_reg_0_sp_1;
  input [2:0]\Q_reg[3]_3 ;
  input [2:0]\Q_reg[3]_4 ;
  input [2:0]\Q_reg[3]_5 ;
  input [3:0]Ao_OBUF;
  input [0:0]Q_reg_2;
  input [0:0]Q_reg_3;
  input [1:0]Q_reg_4;

  wire [3:0]Ao_OBUF;
  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]Q_reg;
  wire \Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire [1:0]\Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire [1:0]\Q_reg[3]_2 ;
  wire [2:0]\Q_reg[3]_3 ;
  wire [2:0]\Q_reg[3]_4 ;
  wire [2:0]\Q_reg[3]_5 ;
  wire Q_reg_0;
  wire Q_reg_0_sn_1;
  wire Q_reg_1;
  wire [0:0]Q_reg_2;
  wire [0:0]Q_reg_3;
  wire [1:0]Q_reg_4;
  wire RegEnable0;
  wire as_sel;
  wire [1:1]im_val;
  wire jump_flag;
  wire l_sel;

  assign Q_reg_0_sn_1 = Q_reg_0_sp_1;
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImVal_reg[1] 
       (.CLR(1'b0),
        .D(Ao_OBUF[1]),
        .G(E),
        .GE(1'b1),
        .Q(im_val));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImVal_reg[2] 
       (.CLR(1'b0),
        .D(Ao_OBUF[0]),
        .G(E),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ImVal_reg[3] 
       (.CLR(1'b0),
        .D(Ao_OBUF[2]),
        .G(E),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    Jump_reg
       (.CLR(Q_reg_1),
        .D(\Q_reg[1]_0 ),
        .G(RegEnable0),
        .GE(1'b1),
        .Q(jump_flag));
  LDCP #(
    .INIT(1'b0)) 
    LoadSelect_reg
       (.CLR(E),
        .D(1'b0),
        .G(RegEnable0),
        .PRE(Q_reg),
        .Q(l_sel));
  LUT6 #(
    .INIT(64'h556AA56A5A6AAA6A)) 
    Overflow_OBUF_inst_i_2
       (.I0(as_sel),
        .I1(\Q_reg[3]_3 [2]),
        .I2(\Q_reg[3] [1]),
        .I3(\Q_reg[3] [0]),
        .I4(\Q_reg[3]_4 [2]),
        .I5(\Q_reg[3]_5 [2]),
        .O(\Q_reg[3]_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Q[1]_i_1 
       (.I0(Q_reg_0_sn_1),
        .I1(l_sel),
        .I2(im_val),
        .O(D));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegA_reg[0] 
       (.CLR(1'b0),
        .D(Q_reg_3),
        .G(Q_reg_2),
        .GE(1'b1),
        .Q(\Q_reg[3]_2 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegA_reg[1] 
       (.CLR(1'b0),
        .D(Ao_OBUF[3]),
        .G(Q_reg_2),
        .GE(1'b1),
        .Q(\Q_reg[3]_2 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegB_reg[0] 
       (.CLR(1'b0),
        .D(Q_reg_4[0]),
        .G(Q_reg),
        .GE(1'b1),
        .Q(\Q_reg[3] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegB_reg[1] 
       (.CLR(1'b0),
        .D(Q_reg_4[1]),
        .G(Q_reg),
        .GE(1'b1),
        .Q(\Q_reg[3] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    Sub_reg
       (.CLR(1'b0),
        .D(Q_reg_0),
        .G(Q_reg),
        .GE(1'b1),
        .Q(as_sel));
  LUT6 #(
    .INIT(64'h655A6A5A65AA6AAA)) 
    Zero_OBUF_inst_i_6
       (.I0(as_sel),
        .I1(\Q_reg[3]_4 [1]),
        .I2(\Q_reg[3] [0]),
        .I3(\Q_reg[3] [1]),
        .I4(\Q_reg[3]_3 [1]),
        .I5(\Q_reg[3]_5 [1]),
        .O(\Q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h556AA56A5A6AAA6A)) 
    Zero_OBUF_inst_i_8
       (.I0(as_sel),
        .I1(\Q_reg[3]_3 [0]),
        .I2(\Q_reg[3] [1]),
        .I3(\Q_reg[3] [0]),
        .I4(\Q_reg[3]_4 [0]),
        .I5(\Q_reg[3]_5 [0]),
        .O(\Q_reg[1] ));
endmodule

module register_bank
   (Overflow_OBUF,
    Zero_OBUF,
    \Q_reg[1] ,
    Q_reg,
    \Q_reg[3] ,
    \Q_reg[3]_0 ,
    \Q_reg[3]_1 ,
    \Q_reg[2] ,
    \Q_reg[3]_2 ,
    D,
    l_sel,
    Q,
    Q_reg_0,
    \Q_reg[1]_0 ,
    as_sel,
    Q_reg_1,
    SR,
    CLK,
    E,
    memory_sel);
  output Overflow_OBUF;
  output Zero_OBUF;
  output \Q_reg[1] ;
  output Q_reg;
  output [3:0]\Q_reg[3] ;
  output [3:0]\Q_reg[3]_0 ;
  output [3:0]\Q_reg[3]_1 ;
  input \Q_reg[2] ;
  input \Q_reg[3]_2 ;
  input [0:0]D;
  input l_sel;
  input [1:0]Q;
  input [1:0]Q_reg_0;
  input \Q_reg[1]_0 ;
  input as_sel;
  input [1:0]Q_reg_1;
  input [0:0]SR;
  input CLK;
  input [0:0]E;
  input [2:0]memory_sel;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire Overflow_OBUF;
  wire [1:0]Q;
  wire Q_reg;
  wire \Q_reg[1] ;
  wire \Q_reg[1]_0 ;
  wire \Q_reg[2] ;
  wire [3:0]\Q_reg[3] ;
  wire [3:0]\Q_reg[3]_0 ;
  wire [3:0]\Q_reg[3]_1 ;
  wire \Q_reg[3]_2 ;
  wire [1:0]Q_reg_0;
  wire [1:0]Q_reg_1;
  wire [0:0]SR;
  wire Zero_OBUF;
  wire as_sel;
  wire bit4reg2_n_0;
  wire bit4reg3_n_0;
  wire bit4reg3_n_5;
  wire l_sel;
  wire [2:0]memory_sel;
  wire [3:0]rb_in;
  wire [3:1]y_mid;

  Decode_3_to_8 Decoder
       (.memory_sel(memory_sel),
        .y_mid({y_mid[3],y_mid[1]}));
  bit4reg bit4reg1
       (.CLK(CLK),
        .D({rb_in[3:2],rb_in[0]}),
        .E(y_mid[1]),
        .Overflow_OBUF(Overflow_OBUF),
        .Q(Q),
        .Q_reg(Q_reg),
        .\Q_reg[0]_0 (D),
        .\Q_reg[1]_0 (\Q_reg[1] ),
        .\Q_reg[1]_1 (bit4reg3_n_0),
        .\Q_reg[1]_2 (\Q_reg[1]_0 ),
        .\Q_reg[2]_0 (\Q_reg[2] ),
        .\Q_reg[2]_1 (bit4reg2_n_0),
        .\Q_reg[3]_0 (\Q_reg[3] ),
        .\Q_reg[3]_1 (\Q_reg[3]_2 ),
        .\Q_reg[3]_2 (bit4reg3_n_5),
        .\Q_reg[3]_3 ({\Q_reg[3]_0 [3:2],\Q_reg[3]_0 [0]}),
        .\Q_reg[3]_4 ({\Q_reg[3]_1 [3:2],\Q_reg[3]_1 [0]}),
        .Q_reg_0(Q_reg_0),
        .Q_reg_1(Q_reg_1),
        .SR(SR),
        .Zero_OBUF(Zero_OBUF),
        .as_sel(as_sel),
        .l_sel(l_sel));
  bit4reg_0 bit4reg2
       (.CLK(CLK),
        .D({rb_in[3:2],D,rb_in[0]}),
        .E(E),
        .Q_reg(Q_reg_0),
        .\Q_reg[2]_0 (bit4reg2_n_0),
        .\Q_reg[2]_1 (\Q_reg[3]_0 [2]),
        .\Q_reg[2]_2 (\Q_reg[3] [2]),
        .\Q_reg[2]_3 (\Q_reg[2] ),
        .\Q_reg[3]_0 (\Q_reg[3]_1 ),
        .SR(SR));
  bit4reg_1 bit4reg3
       (.CLK(CLK),
        .D({rb_in[3:2],D,rb_in[0]}),
        .E(y_mid[3]),
        .Q_reg(bit4reg3_n_0),
        .\Q_reg[3]_0 (\Q_reg[3]_0 ),
        .\Q_reg[3]_1 (bit4reg3_n_5),
        .\Q_reg[3]_2 ({\Q_reg[3]_1 [3],\Q_reg[3]_1 [1]}),
        .\Q_reg[3]_3 ({\Q_reg[3] [3],\Q_reg[3] [1]}),
        .\Q_reg[3]_4 (\Q_reg[3]_2 ),
        .Q_reg_0(Q_reg_0),
        .SR(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
