// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 17 20:35:48 2024
// Host        : LAPTOP-QJ9BJU4G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Nico/Documents/Projects/Firmware/FPGA_LAB2/VGA.sim/sim_1/synth/func/xsim/top_vga_tb_func_synth.v
// Design      : topLevel
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module debounce
   (rst,
    button_pressed_reg_0,
    button_pressed_reg_1,
    button_pressed_reg_2,
    E,
    CLK,
    \counter_reg[2] ,
    counter_pressed,
    \counter_reg[2]_0 ,
    \counter_reg[2]_1 ,
    D);
  output rst;
  output button_pressed_reg_0;
  output button_pressed_reg_1;
  output button_pressed_reg_2;
  output [0:0]E;
  input CLK;
  input \counter_reg[2] ;
  input counter_pressed;
  input \counter_reg[2]_0 ;
  input \counter_reg[2]_1 ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [23:0]button_counter;
  wire \button_counter[23]_i_2_n_0 ;
  wire \button_counter[23]_i_3_n_0 ;
  wire \button_counter[23]_i_4_n_0 ;
  wire button_pressed_i_10_n_0;
  wire button_pressed_i_11_n_0;
  wire button_pressed_i_12_n_0;
  wire button_pressed_i_1_n_0;
  wire button_pressed_i_2_n_0;
  wire button_pressed_i_3_n_0;
  wire button_pressed_i_4_n_0;
  wire button_pressed_i_5_n_0;
  wire button_pressed_i_6_n_0;
  wire button_pressed_i_7_n_0;
  wire button_pressed_i_8_n_0;
  wire button_pressed_i_9_n_0;
  wire button_pressed_reg_0;
  wire button_pressed_reg_1;
  wire button_pressed_reg_2;
  wire \clk_counter[0]_i_2_n_0 ;
  wire \clk_counter_reg[0]_i_1_n_0 ;
  wire \clk_counter_reg[0]_i_1_n_1 ;
  wire \clk_counter_reg[0]_i_1_n_2 ;
  wire \clk_counter_reg[0]_i_1_n_3 ;
  wire \clk_counter_reg[0]_i_1_n_4 ;
  wire \clk_counter_reg[0]_i_1_n_5 ;
  wire \clk_counter_reg[0]_i_1_n_6 ;
  wire \clk_counter_reg[0]_i_1_n_7 ;
  wire \clk_counter_reg[12]_i_1_n_0 ;
  wire \clk_counter_reg[12]_i_1_n_1 ;
  wire \clk_counter_reg[12]_i_1_n_2 ;
  wire \clk_counter_reg[12]_i_1_n_3 ;
  wire \clk_counter_reg[12]_i_1_n_4 ;
  wire \clk_counter_reg[12]_i_1_n_5 ;
  wire \clk_counter_reg[12]_i_1_n_6 ;
  wire \clk_counter_reg[12]_i_1_n_7 ;
  wire \clk_counter_reg[16]_i_1_n_3 ;
  wire \clk_counter_reg[16]_i_1_n_6 ;
  wire \clk_counter_reg[16]_i_1_n_7 ;
  wire \clk_counter_reg[4]_i_1_n_0 ;
  wire \clk_counter_reg[4]_i_1_n_1 ;
  wire \clk_counter_reg[4]_i_1_n_2 ;
  wire \clk_counter_reg[4]_i_1_n_3 ;
  wire \clk_counter_reg[4]_i_1_n_4 ;
  wire \clk_counter_reg[4]_i_1_n_5 ;
  wire \clk_counter_reg[4]_i_1_n_6 ;
  wire \clk_counter_reg[4]_i_1_n_7 ;
  wire \clk_counter_reg[8]_i_1_n_0 ;
  wire \clk_counter_reg[8]_i_1_n_1 ;
  wire \clk_counter_reg[8]_i_1_n_2 ;
  wire \clk_counter_reg[8]_i_1_n_3 ;
  wire \clk_counter_reg[8]_i_1_n_4 ;
  wire \clk_counter_reg[8]_i_1_n_5 ;
  wire \clk_counter_reg[8]_i_1_n_6 ;
  wire \clk_counter_reg[8]_i_1_n_7 ;
  wire counter_pressed;
  wire \counter_reg[2] ;
  wire \counter_reg[2]_0 ;
  wire \counter_reg[2]_1 ;
  wire [23:0]prev_button;
  wire rst;
  wire [17:0]\rst_debounce/clk_counter_reg ;
  wire [3:1]\NLW_clk_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_clk_counter_reg[16]_i_1_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \button_counter[23]_i_1 
       (.I0(\button_counter[23]_i_2_n_0 ),
        .I1(\button_counter[23]_i_3_n_0 ),
        .I2(\button_counter[23]_i_4_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \button_counter[23]_i_2 
       (.I0(\rst_debounce/clk_counter_reg [8]),
        .I1(\rst_debounce/clk_counter_reg [9]),
        .I2(\rst_debounce/clk_counter_reg [6]),
        .I3(\rst_debounce/clk_counter_reg [7]),
        .I4(\rst_debounce/clk_counter_reg [11]),
        .I5(\rst_debounce/clk_counter_reg [10]),
        .O(\button_counter[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \button_counter[23]_i_3 
       (.I0(\rst_debounce/clk_counter_reg [14]),
        .I1(\rst_debounce/clk_counter_reg [15]),
        .I2(\rst_debounce/clk_counter_reg [12]),
        .I3(\rst_debounce/clk_counter_reg [13]),
        .I4(\rst_debounce/clk_counter_reg [17]),
        .I5(\rst_debounce/clk_counter_reg [16]),
        .O(\button_counter[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \button_counter[23]_i_4 
       (.I0(\rst_debounce/clk_counter_reg [2]),
        .I1(\rst_debounce/clk_counter_reg [3]),
        .I2(\rst_debounce/clk_counter_reg [0]),
        .I3(\rst_debounce/clk_counter_reg [1]),
        .I4(\rst_debounce/clk_counter_reg [5]),
        .I5(\rst_debounce/clk_counter_reg [4]),
        .O(\button_counter[23]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D),
        .Q(button_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[9]),
        .Q(button_counter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[10]),
        .Q(button_counter[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[11]),
        .Q(button_counter[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[12]),
        .Q(button_counter[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[13]),
        .Q(button_counter[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[14]),
        .Q(button_counter[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[15]),
        .Q(button_counter[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[16]),
        .Q(button_counter[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[17]),
        .Q(button_counter[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[18]),
        .Q(button_counter[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[0]),
        .Q(button_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[19]),
        .Q(button_counter[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[20]),
        .Q(button_counter[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[21]),
        .Q(button_counter[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[22]),
        .Q(button_counter[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[1]),
        .Q(button_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[2]),
        .Q(button_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[3]),
        .Q(button_counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[4]),
        .Q(button_counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[5]),
        .Q(button_counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[6]),
        .Q(button_counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[7]),
        .Q(button_counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[8]),
        .Q(button_counter[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    button_pressed_i_1
       (.I0(button_pressed_i_2_n_0),
        .I1(button_pressed_i_3_n_0),
        .I2(button_pressed_i_4_n_0),
        .I3(button_pressed_i_5_n_0),
        .O(button_pressed_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    button_pressed_i_10
       (.I0(prev_button[5]),
        .I1(prev_button[4]),
        .I2(prev_button[7]),
        .I3(prev_button[6]),
        .O(button_pressed_i_10_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    button_pressed_i_11
       (.I0(prev_button[13]),
        .I1(prev_button[12]),
        .I2(prev_button[15]),
        .I3(prev_button[14]),
        .O(button_pressed_i_11_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    button_pressed_i_12
       (.I0(prev_button[21]),
        .I1(prev_button[20]),
        .I2(prev_button[23]),
        .I3(prev_button[22]),
        .O(button_pressed_i_12_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    button_pressed_i_2
       (.I0(button_pressed_i_6_n_0),
        .I1(button_pressed_i_7_n_0),
        .I2(button_pressed_i_8_n_0),
        .I3(button_pressed_i_9_n_0),
        .O(button_pressed_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    button_pressed_i_3
       (.I0(prev_button[2]),
        .I1(prev_button[3]),
        .I2(prev_button[0]),
        .I3(prev_button[1]),
        .I4(button_pressed_i_10_n_0),
        .O(button_pressed_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    button_pressed_i_4
       (.I0(prev_button[10]),
        .I1(prev_button[11]),
        .I2(prev_button[8]),
        .I3(prev_button[9]),
        .I4(button_pressed_i_11_n_0),
        .O(button_pressed_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    button_pressed_i_5
       (.I0(prev_button[18]),
        .I1(prev_button[19]),
        .I2(prev_button[16]),
        .I3(prev_button[17]),
        .I4(button_pressed_i_12_n_0),
        .O(button_pressed_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    button_pressed_i_6
       (.I0(button_counter[20]),
        .I1(button_counter[21]),
        .I2(button_counter[18]),
        .I3(button_counter[19]),
        .I4(button_counter[23]),
        .I5(button_counter[22]),
        .O(button_pressed_i_6_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    button_pressed_i_7
       (.I0(button_counter[2]),
        .I1(button_counter[3]),
        .I2(button_counter[1]),
        .I3(button_counter[0]),
        .I4(button_counter[5]),
        .I5(button_counter[4]),
        .O(button_pressed_i_7_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    button_pressed_i_8
       (.I0(button_counter[8]),
        .I1(button_counter[9]),
        .I2(button_counter[6]),
        .I3(button_counter[7]),
        .I4(button_counter[11]),
        .I5(button_counter[10]),
        .O(button_pressed_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    button_pressed_i_9
       (.I0(button_counter[14]),
        .I1(button_counter[15]),
        .I2(button_counter[12]),
        .I3(button_counter[13]),
        .I4(button_counter[17]),
        .I5(button_counter[16]),
        .O(button_pressed_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_pressed_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_pressed_i_1_n_0),
        .Q(rst),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_2 
       (.I0(\rst_debounce/clk_counter_reg [0]),
        .O(\clk_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_7 ),
        .Q(\rst_debounce/clk_counter_reg [0]),
        .R(1'b0));
  CARRY4 \clk_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_counter_reg[0]_i_1_n_0 ,\clk_counter_reg[0]_i_1_n_1 ,\clk_counter_reg[0]_i_1_n_2 ,\clk_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_counter_reg[0]_i_1_n_4 ,\clk_counter_reg[0]_i_1_n_5 ,\clk_counter_reg[0]_i_1_n_6 ,\clk_counter_reg[0]_i_1_n_7 }),
        .S({\rst_debounce/clk_counter_reg [3:1],\clk_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_5 ),
        .Q(\rst_debounce/clk_counter_reg [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_4 ),
        .Q(\rst_debounce/clk_counter_reg [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_7 ),
        .Q(\rst_debounce/clk_counter_reg [12]),
        .R(1'b0));
  CARRY4 \clk_counter_reg[12]_i_1 
       (.CI(\clk_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_counter_reg[12]_i_1_n_0 ,\clk_counter_reg[12]_i_1_n_1 ,\clk_counter_reg[12]_i_1_n_2 ,\clk_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[12]_i_1_n_4 ,\clk_counter_reg[12]_i_1_n_5 ,\clk_counter_reg[12]_i_1_n_6 ,\clk_counter_reg[12]_i_1_n_7 }),
        .S(\rst_debounce/clk_counter_reg [15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_6 ),
        .Q(\rst_debounce/clk_counter_reg [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_5 ),
        .Q(\rst_debounce/clk_counter_reg [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_4 ),
        .Q(\rst_debounce/clk_counter_reg [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_7 ),
        .Q(\rst_debounce/clk_counter_reg [16]),
        .R(1'b0));
  CARRY4 \clk_counter_reg[16]_i_1 
       (.CI(\clk_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_clk_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\clk_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\clk_counter_reg[16]_i_1_n_6 ,\clk_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\rst_debounce/clk_counter_reg [17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_6 ),
        .Q(\rst_debounce/clk_counter_reg [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_6 ),
        .Q(\rst_debounce/clk_counter_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_5 ),
        .Q(\rst_debounce/clk_counter_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_4 ),
        .Q(\rst_debounce/clk_counter_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_7 ),
        .Q(\rst_debounce/clk_counter_reg [4]),
        .R(1'b0));
  CARRY4 \clk_counter_reg[4]_i_1 
       (.CI(\clk_counter_reg[0]_i_1_n_0 ),
        .CO({\clk_counter_reg[4]_i_1_n_0 ,\clk_counter_reg[4]_i_1_n_1 ,\clk_counter_reg[4]_i_1_n_2 ,\clk_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[4]_i_1_n_4 ,\clk_counter_reg[4]_i_1_n_5 ,\clk_counter_reg[4]_i_1_n_6 ,\clk_counter_reg[4]_i_1_n_7 }),
        .S(\rst_debounce/clk_counter_reg [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_6 ),
        .Q(\rst_debounce/clk_counter_reg [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_5 ),
        .Q(\rst_debounce/clk_counter_reg [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_4 ),
        .Q(\rst_debounce/clk_counter_reg [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_7 ),
        .Q(\rst_debounce/clk_counter_reg [8]),
        .R(1'b0));
  CARRY4 \clk_counter_reg[8]_i_1 
       (.CI(\clk_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_counter_reg[8]_i_1_n_0 ,\clk_counter_reg[8]_i_1_n_1 ,\clk_counter_reg[8]_i_1_n_2 ,\clk_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[8]_i_1_n_4 ,\clk_counter_reg[8]_i_1_n_5 ,\clk_counter_reg[8]_i_1_n_6 ,\clk_counter_reg[8]_i_1_n_7 }),
        .S(\rst_debounce/clk_counter_reg [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_6 ),
        .Q(\rst_debounce/clk_counter_reg [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h14)) 
    \counter[0]_i_1 
       (.I0(rst),
        .I1(counter_pressed),
        .I2(\counter_reg[2]_1 ),
        .O(button_pressed_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1450)) 
    \counter[1]_i_1 
       (.I0(rst),
        .I1(counter_pressed),
        .I2(\counter_reg[2]_0 ),
        .I3(\counter_reg[2]_1 ),
        .O(button_pressed_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h14444444)) 
    \counter[2]_i_1 
       (.I0(rst),
        .I1(\counter_reg[2] ),
        .I2(counter_pressed),
        .I3(\counter_reg[2]_0 ),
        .I4(\counter_reg[2]_1 ),
        .O(button_pressed_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[0]),
        .Q(prev_button[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[10]),
        .Q(prev_button[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[11]),
        .Q(prev_button[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[12]),
        .Q(prev_button[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[13]),
        .Q(prev_button[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[14]),
        .Q(prev_button[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[15]),
        .Q(prev_button[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[16]),
        .Q(prev_button[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[17]),
        .Q(prev_button[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[18]),
        .Q(prev_button[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[19]),
        .Q(prev_button[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[1]),
        .Q(prev_button[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[20]),
        .Q(prev_button[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[21]),
        .Q(prev_button[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[22]),
        .Q(prev_button[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[23]),
        .Q(prev_button[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[2]),
        .Q(prev_button[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[3]),
        .Q(prev_button[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[4]),
        .Q(prev_button[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[5]),
        .Q(prev_button[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[6]),
        .Q(prev_button[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[7]),
        .Q(prev_button[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[8]),
        .Q(prev_button[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[9]),
        .Q(prev_button[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module debounce_0
   (counter_pressed,
    CLK,
    E,
    D);
  output counter_pressed;
  input CLK;
  input [0:0]E;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [23:0]button_counter;
  wire button_pressed_i_10_n_0;
  wire button_pressed_i_11_n_0;
  wire button_pressed_i_12_n_0;
  wire button_pressed_i_1_n_0;
  wire button_pressed_i_2_n_0;
  wire button_pressed_i_3_n_0;
  wire button_pressed_i_4_n_0;
  wire button_pressed_i_5_n_0;
  wire button_pressed_i_6_n_0;
  wire button_pressed_i_7_n_0;
  wire button_pressed_i_8_n_0;
  wire button_pressed_i_9_n_0;
  wire counter_pressed;
  wire [23:0]prev_button;

  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D),
        .Q(button_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[9]),
        .Q(button_counter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[10]),
        .Q(button_counter[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[11]),
        .Q(button_counter[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[12]),
        .Q(button_counter[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[13]),
        .Q(button_counter[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[14]),
        .Q(button_counter[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[15]),
        .Q(button_counter[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[16]),
        .Q(button_counter[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[17]),
        .Q(button_counter[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[19] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[18]),
        .Q(button_counter[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[0]),
        .Q(button_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[20] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[19]),
        .Q(button_counter[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[21] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[20]),
        .Q(button_counter[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[22] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[21]),
        .Q(button_counter[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[23] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[22]),
        .Q(button_counter[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[1]),
        .Q(button_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[2]),
        .Q(button_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[3]),
        .Q(button_counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[4]),
        .Q(button_counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[5]),
        .Q(button_counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[6]),
        .Q(button_counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[7]),
        .Q(button_counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \button_counter_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(button_counter[8]),
        .Q(button_counter[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAAA8)) 
    button_pressed_i_1
       (.I0(button_pressed_i_2_n_0),
        .I1(button_pressed_i_3_n_0),
        .I2(button_pressed_i_4_n_0),
        .I3(button_pressed_i_5_n_0),
        .O(button_pressed_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    button_pressed_i_10
       (.I0(prev_button[5]),
        .I1(prev_button[4]),
        .I2(prev_button[7]),
        .I3(prev_button[6]),
        .O(button_pressed_i_10_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    button_pressed_i_11
       (.I0(prev_button[13]),
        .I1(prev_button[12]),
        .I2(prev_button[15]),
        .I3(prev_button[14]),
        .O(button_pressed_i_11_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    button_pressed_i_12
       (.I0(prev_button[21]),
        .I1(prev_button[20]),
        .I2(prev_button[23]),
        .I3(prev_button[22]),
        .O(button_pressed_i_12_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    button_pressed_i_2
       (.I0(button_pressed_i_6_n_0),
        .I1(button_pressed_i_7_n_0),
        .I2(button_pressed_i_8_n_0),
        .I3(button_pressed_i_9_n_0),
        .O(button_pressed_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    button_pressed_i_3
       (.I0(prev_button[2]),
        .I1(prev_button[3]),
        .I2(prev_button[0]),
        .I3(prev_button[1]),
        .I4(button_pressed_i_10_n_0),
        .O(button_pressed_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    button_pressed_i_4
       (.I0(prev_button[10]),
        .I1(prev_button[11]),
        .I2(prev_button[8]),
        .I3(prev_button[9]),
        .I4(button_pressed_i_11_n_0),
        .O(button_pressed_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    button_pressed_i_5
       (.I0(prev_button[18]),
        .I1(prev_button[19]),
        .I2(prev_button[16]),
        .I3(prev_button[17]),
        .I4(button_pressed_i_12_n_0),
        .O(button_pressed_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    button_pressed_i_6
       (.I0(button_counter[20]),
        .I1(button_counter[21]),
        .I2(button_counter[18]),
        .I3(button_counter[19]),
        .I4(button_counter[23]),
        .I5(button_counter[22]),
        .O(button_pressed_i_6_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    button_pressed_i_7
       (.I0(button_counter[2]),
        .I1(button_counter[3]),
        .I2(button_counter[1]),
        .I3(button_counter[0]),
        .I4(button_counter[5]),
        .I5(button_counter[4]),
        .O(button_pressed_i_7_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    button_pressed_i_8
       (.I0(button_counter[8]),
        .I1(button_counter[9]),
        .I2(button_counter[6]),
        .I3(button_counter[7]),
        .I4(button_counter[11]),
        .I5(button_counter[10]),
        .O(button_pressed_i_8_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    button_pressed_i_9
       (.I0(button_counter[14]),
        .I1(button_counter[15]),
        .I2(button_counter[12]),
        .I3(button_counter[13]),
        .I4(button_counter[17]),
        .I5(button_counter[16]),
        .O(button_pressed_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_pressed_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_pressed_i_1_n_0),
        .Q(counter_pressed),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[0]),
        .Q(prev_button[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[10]),
        .Q(prev_button[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[11]),
        .Q(prev_button[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[12]),
        .Q(prev_button[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[13]),
        .Q(prev_button[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[14]),
        .Q(prev_button[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[15]),
        .Q(prev_button[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[16]),
        .Q(prev_button[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[17]),
        .Q(prev_button[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[18]),
        .Q(prev_button[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[19]),
        .Q(prev_button[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[1]),
        .Q(prev_button[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[20]),
        .Q(prev_button[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[21]),
        .Q(prev_button[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[22]),
        .Q(prev_button[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[23]),
        .Q(prev_button[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[2]),
        .Q(prev_button[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[3]),
        .Q(prev_button[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[4]),
        .Q(prev_button[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[5]),
        .Q(prev_button[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[6]),
        .Q(prev_button[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[7]),
        .Q(prev_button[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[8]),
        .Q(prev_button[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prev_button_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(button_counter[9]),
        .Q(prev_button[9]),
        .R(1'b0));
endmodule

module sev_seg
   (aones_OBUF,
    Q,
    rst,
    CLK,
    \cathodes_reg[1]_0 ,
    \cathodes_reg[1]_1 ,
    \cathodes_reg[1]_2 );
  output aones_OBUF;
  output [6:0]Q;
  input rst;
  input CLK;
  input \cathodes_reg[1]_0 ;
  input \cathodes_reg[1]_1 ;
  input \cathodes_reg[1]_2 ;

  wire CLK;
  wire [6:0]Q;
  wire an_out_i_1_n_0;
  wire aones_OBUF;
  wire \cathodes[0]_i_1_n_0 ;
  wire \cathodes[1]_i_1_n_0 ;
  wire \cathodes[2]_i_1_n_0 ;
  wire \cathodes[3]_i_1_n_0 ;
  wire \cathodes[4]_i_1_n_0 ;
  wire \cathodes[5]_i_1_n_0 ;
  wire \cathodes[6]_i_1_n_0 ;
  wire \cathodes_reg[1]_0 ;
  wire \cathodes_reg[1]_1 ;
  wire \cathodes_reg[1]_2 ;
  wire \clk_counter[0]_i_2__0_n_0 ;
  wire \clk_counter_reg[0]_i_1__0_n_0 ;
  wire \clk_counter_reg[0]_i_1__0_n_1 ;
  wire \clk_counter_reg[0]_i_1__0_n_2 ;
  wire \clk_counter_reg[0]_i_1__0_n_3 ;
  wire \clk_counter_reg[0]_i_1__0_n_4 ;
  wire \clk_counter_reg[0]_i_1__0_n_5 ;
  wire \clk_counter_reg[0]_i_1__0_n_6 ;
  wire \clk_counter_reg[0]_i_1__0_n_7 ;
  wire \clk_counter_reg[12]_i_1__0_n_0 ;
  wire \clk_counter_reg[12]_i_1__0_n_1 ;
  wire \clk_counter_reg[12]_i_1__0_n_2 ;
  wire \clk_counter_reg[12]_i_1__0_n_3 ;
  wire \clk_counter_reg[12]_i_1__0_n_4 ;
  wire \clk_counter_reg[12]_i_1__0_n_5 ;
  wire \clk_counter_reg[12]_i_1__0_n_6 ;
  wire \clk_counter_reg[12]_i_1__0_n_7 ;
  wire \clk_counter_reg[16]_i_1__0_n_3 ;
  wire \clk_counter_reg[16]_i_1__0_n_6 ;
  wire \clk_counter_reg[16]_i_1__0_n_7 ;
  wire \clk_counter_reg[4]_i_1__0_n_0 ;
  wire \clk_counter_reg[4]_i_1__0_n_1 ;
  wire \clk_counter_reg[4]_i_1__0_n_2 ;
  wire \clk_counter_reg[4]_i_1__0_n_3 ;
  wire \clk_counter_reg[4]_i_1__0_n_4 ;
  wire \clk_counter_reg[4]_i_1__0_n_5 ;
  wire \clk_counter_reg[4]_i_1__0_n_6 ;
  wire \clk_counter_reg[4]_i_1__0_n_7 ;
  wire \clk_counter_reg[8]_i_1__0_n_0 ;
  wire \clk_counter_reg[8]_i_1__0_n_1 ;
  wire \clk_counter_reg[8]_i_1__0_n_2 ;
  wire \clk_counter_reg[8]_i_1__0_n_3 ;
  wire \clk_counter_reg[8]_i_1__0_n_4 ;
  wire \clk_counter_reg[8]_i_1__0_n_5 ;
  wire \clk_counter_reg[8]_i_1__0_n_6 ;
  wire \clk_counter_reg[8]_i_1__0_n_7 ;
  wire \clk_counter_reg_n_0_[0] ;
  wire \clk_counter_reg_n_0_[10] ;
  wire \clk_counter_reg_n_0_[11] ;
  wire \clk_counter_reg_n_0_[12] ;
  wire \clk_counter_reg_n_0_[13] ;
  wire \clk_counter_reg_n_0_[14] ;
  wire \clk_counter_reg_n_0_[15] ;
  wire \clk_counter_reg_n_0_[16] ;
  wire \clk_counter_reg_n_0_[1] ;
  wire \clk_counter_reg_n_0_[2] ;
  wire \clk_counter_reg_n_0_[3] ;
  wire \clk_counter_reg_n_0_[4] ;
  wire \clk_counter_reg_n_0_[5] ;
  wire \clk_counter_reg_n_0_[6] ;
  wire \clk_counter_reg_n_0_[7] ;
  wire \clk_counter_reg_n_0_[8] ;
  wire \clk_counter_reg_n_0_[9] ;
  wire p_0_in;
  wire rst;
  wire [3:1]\NLW_clk_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_clk_counter_reg[16]_i_1__0_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    an_out_i_1
       (.I0(p_0_in),
        .I1(aones_OBUF),
        .O(an_out_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    an_out_reg
       (.C(CLK),
        .CE(1'b1),
        .D(an_out_i_1_n_0),
        .Q(aones_OBUF),
        .S(rst));
  LUT2 #(
    .INIT(4'h1)) 
    \cathodes[0]_i_1 
       (.I0(\cathodes_reg[1]_1 ),
        .I1(\cathodes_reg[1]_0 ),
        .O(\cathodes[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \cathodes[1]_i_1 
       (.I0(\cathodes_reg[1]_0 ),
        .I1(\cathodes_reg[1]_1 ),
        .I2(\cathodes_reg[1]_2 ),
        .O(\cathodes[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \cathodes[2]_i_1 
       (.I0(\cathodes_reg[1]_0 ),
        .I1(\cathodes_reg[1]_1 ),
        .I2(\cathodes_reg[1]_2 ),
        .O(\cathodes[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h94)) 
    \cathodes[3]_i_1 
       (.I0(\cathodes_reg[1]_0 ),
        .I1(\cathodes_reg[1]_2 ),
        .I2(\cathodes_reg[1]_1 ),
        .O(\cathodes[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \cathodes[4]_i_1 
       (.I0(\cathodes_reg[1]_1 ),
        .I1(\cathodes_reg[1]_0 ),
        .I2(\cathodes_reg[1]_2 ),
        .O(\cathodes[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \cathodes[5]_i_1 
       (.I0(\cathodes_reg[1]_0 ),
        .I1(\cathodes_reg[1]_2 ),
        .I2(\cathodes_reg[1]_1 ),
        .O(\cathodes[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cathodes[6]_i_1 
       (.I0(\cathodes_reg[1]_1 ),
        .I1(\cathodes_reg[1]_2 ),
        .I2(\cathodes_reg[1]_0 ),
        .O(\cathodes[6]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cathodes_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cathodes[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \cathodes_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cathodes[1]_i_1_n_0 ),
        .Q(Q[1]),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \cathodes_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cathodes[2]_i_1_n_0 ),
        .Q(Q[2]),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \cathodes_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cathodes[3]_i_1_n_0 ),
        .Q(Q[3]),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \cathodes_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cathodes[4]_i_1_n_0 ),
        .Q(Q[4]),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \cathodes_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cathodes[5]_i_1_n_0 ),
        .Q(Q[5]),
        .S(rst));
  FDSE #(
    .INIT(1'b1)) 
    \cathodes_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cathodes[6]_i_1_n_0 ),
        .Q(Q[6]),
        .S(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_2__0 
       (.I0(\clk_counter_reg_n_0_[0] ),
        .O(\clk_counter[0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1__0_n_7 ),
        .Q(\clk_counter_reg_n_0_[0] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\clk_counter_reg[0]_i_1__0_n_0 ,\clk_counter_reg[0]_i_1__0_n_1 ,\clk_counter_reg[0]_i_1__0_n_2 ,\clk_counter_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_counter_reg[0]_i_1__0_n_4 ,\clk_counter_reg[0]_i_1__0_n_5 ,\clk_counter_reg[0]_i_1__0_n_6 ,\clk_counter_reg[0]_i_1__0_n_7 }),
        .S({\clk_counter_reg_n_0_[3] ,\clk_counter_reg_n_0_[2] ,\clk_counter_reg_n_0_[1] ,\clk_counter[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_5 ),
        .Q(\clk_counter_reg_n_0_[10] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_4 ),
        .Q(\clk_counter_reg_n_0_[11] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_7 ),
        .Q(\clk_counter_reg_n_0_[12] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[12]_i_1__0 
       (.CI(\clk_counter_reg[8]_i_1__0_n_0 ),
        .CO({\clk_counter_reg[12]_i_1__0_n_0 ,\clk_counter_reg[12]_i_1__0_n_1 ,\clk_counter_reg[12]_i_1__0_n_2 ,\clk_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[12]_i_1__0_n_4 ,\clk_counter_reg[12]_i_1__0_n_5 ,\clk_counter_reg[12]_i_1__0_n_6 ,\clk_counter_reg[12]_i_1__0_n_7 }),
        .S({\clk_counter_reg_n_0_[15] ,\clk_counter_reg_n_0_[14] ,\clk_counter_reg_n_0_[13] ,\clk_counter_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_6 ),
        .Q(\clk_counter_reg_n_0_[13] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_5 ),
        .Q(\clk_counter_reg_n_0_[14] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1__0_n_4 ),
        .Q(\clk_counter_reg_n_0_[15] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1__0_n_7 ),
        .Q(\clk_counter_reg_n_0_[16] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[16]_i_1__0 
       (.CI(\clk_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_clk_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:1],\clk_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_counter_reg[16]_i_1__0_O_UNCONNECTED [3:2],\clk_counter_reg[16]_i_1__0_n_6 ,\clk_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,p_0_in,\clk_counter_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1__0_n_6 ),
        .Q(p_0_in),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1__0_n_6 ),
        .Q(\clk_counter_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1__0_n_5 ),
        .Q(\clk_counter_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1__0_n_4 ),
        .Q(\clk_counter_reg_n_0_[3] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_7 ),
        .Q(\clk_counter_reg_n_0_[4] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[4]_i_1__0 
       (.CI(\clk_counter_reg[0]_i_1__0_n_0 ),
        .CO({\clk_counter_reg[4]_i_1__0_n_0 ,\clk_counter_reg[4]_i_1__0_n_1 ,\clk_counter_reg[4]_i_1__0_n_2 ,\clk_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[4]_i_1__0_n_4 ,\clk_counter_reg[4]_i_1__0_n_5 ,\clk_counter_reg[4]_i_1__0_n_6 ,\clk_counter_reg[4]_i_1__0_n_7 }),
        .S({\clk_counter_reg_n_0_[7] ,\clk_counter_reg_n_0_[6] ,\clk_counter_reg_n_0_[5] ,\clk_counter_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_6 ),
        .Q(\clk_counter_reg_n_0_[5] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_5 ),
        .Q(\clk_counter_reg_n_0_[6] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1__0_n_4 ),
        .Q(\clk_counter_reg_n_0_[7] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_7 ),
        .Q(\clk_counter_reg_n_0_[8] ),
        .R(rst));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[8]_i_1__0 
       (.CI(\clk_counter_reg[4]_i_1__0_n_0 ),
        .CO({\clk_counter_reg[8]_i_1__0_n_0 ,\clk_counter_reg[8]_i_1__0_n_1 ,\clk_counter_reg[8]_i_1__0_n_2 ,\clk_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[8]_i_1__0_n_4 ,\clk_counter_reg[8]_i_1__0_n_5 ,\clk_counter_reg[8]_i_1__0_n_6 ,\clk_counter_reg[8]_i_1__0_n_7 }),
        .S({\clk_counter_reg_n_0_[11] ,\clk_counter_reg_n_0_[10] ,\clk_counter_reg_n_0_[9] ,\clk_counter_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1__0_n_6 ),
        .Q(\clk_counter_reg_n_0_[9] ),
        .R(rst));
endmodule

(* NotValidForBitStream *)
module topLevel
   (clk,
    vgaRed,
    vgaGreen,
    vgaBlue,
    Hsync,
    Vsync,
    ca,
    cb,
    cc,
    cd,
    ce,
    cf,
    cg,
    an_0,
    an_1,
    an_2,
    aones,
    btnR,
    btnC);
  input clk;
  output [3:0]vgaRed;
  output [3:0]vgaGreen;
  output [3:0]vgaBlue;
  output Hsync;
  output Vsync;
  output ca;
  output cb;
  output cc;
  output cd;
  output ce;
  output cf;
  output cg;
  output an_0;
  output an_1;
  output an_2;
  output aones;
  input btnR;
  input btnC;

  wire Hsync;
  wire Vsync;
  wire an_0;
  wire an_1;
  wire an_2;
  wire aones;
  wire aones_OBUF;
  wire btnC;
  wire btnC_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire ca;
  wire ca_OBUF;
  wire cb;
  wire cb_OBUF;
  wire cc;
  wire cc_OBUF;
  wire cd;
  wire cd_OBUF;
  wire ce;
  wire ce_OBUF;
  wire cf;
  wire cf_OBUF;
  wire cg;
  wire cg_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire counter_debounce_n_1;
  wire counter_debounce_n_2;
  wire counter_debounce_n_3;
  wire counter_debounce_n_4;
  wire counter_pressed;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire rst;
  wire [3:0]vgaBlue;
  wire [3:0]vgaBlue_OBUF;
  wire [3:0]vgaGreen;
  wire [3:3]vgaGreen_OBUF;
  wire [3:0]vgaRed;
  wire [2:1]vgaRed_OBUF;

  OBUF Hsync_OBUF_inst
       (.I(1'b1),
        .O(Hsync));
  OBUF Vsync_OBUF_inst
       (.I(1'b1),
        .O(Vsync));
  OBUF an_0_OBUF_inst
       (.I(1'b1),
        .O(an_0));
  OBUF an_1_OBUF_inst
       (.I(1'b1),
        .O(an_1));
  OBUF an_2_OBUF_inst
       (.I(1'b1),
        .O(an_2));
  OBUF aones_OBUF_inst
       (.I(aones_OBUF),
        .O(aones));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  OBUF ca_OBUF_inst
       (.I(ca_OBUF),
        .O(ca));
  OBUF cb_OBUF_inst
       (.I(cb_OBUF),
        .O(cb));
  OBUF cc_OBUF_inst
       (.I(cc_OBUF),
        .O(cc));
  OBUF cd_OBUF_inst
       (.I(cd_OBUF),
        .O(cd));
  OBUF ce_OBUF_inst
       (.I(ce_OBUF),
        .O(ce));
  OBUF cf_OBUF_inst
       (.I(cf_OBUF),
        .O(cf));
  OBUF cg_OBUF_inst
       (.I(cg_OBUF),
        .O(cg));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  debounce counter_debounce
       (.CLK(clk_IBUF_BUFG),
        .D(btnC_IBUF),
        .E(counter_debounce_n_4),
        .button_pressed_reg_0(counter_debounce_n_1),
        .button_pressed_reg_1(counter_debounce_n_2),
        .button_pressed_reg_2(counter_debounce_n_3),
        .counter_pressed(counter_pressed),
        .\counter_reg[2] (\counter_reg_n_0_[2] ),
        .\counter_reg[2]_0 (\counter_reg_n_0_[1] ),
        .\counter_reg[2]_1 (\counter_reg_n_0_[0] ),
        .rst(rst));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_debounce_n_2),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_debounce_n_3),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(counter_debounce_n_1),
        .Q(\counter_reg_n_0_[2] ),
        .R(1'b0));
  debounce_0 rst_debounce
       (.CLK(clk_IBUF_BUFG),
        .D(btnR_IBUF),
        .E(counter_debounce_n_4),
        .counter_pressed(counter_pressed));
  sev_seg segments
       (.CLK(clk_IBUF_BUFG),
        .Q({ca_OBUF,cb_OBUF,cc_OBUF,cd_OBUF,ce_OBUF,cf_OBUF,cg_OBUF}),
        .aones_OBUF(aones_OBUF),
        .\cathodes_reg[1]_0 (\counter_reg_n_0_[1] ),
        .\cathodes_reg[1]_1 (\counter_reg_n_0_[2] ),
        .\cathodes_reg[1]_2 (\counter_reg_n_0_[0] ),
        .rst(rst));
  OBUF \vgaBlue_OBUF[0]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaBlue[0]));
  OBUF \vgaBlue_OBUF[1]_inst 
       (.I(vgaBlue_OBUF[1]),
        .O(vgaBlue[1]));
  OBUF \vgaBlue_OBUF[2]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaBlue[2]));
  OBUF \vgaBlue_OBUF[3]_inst 
       (.I(vgaBlue_OBUF[3]),
        .O(vgaBlue[3]));
  OBUF \vgaGreen_OBUF[0]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaGreen[0]));
  OBUF \vgaGreen_OBUF[1]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaGreen[1]));
  OBUF \vgaGreen_OBUF[2]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaGreen[2]));
  OBUF \vgaGreen_OBUF[3]_inst 
       (.I(vgaGreen_OBUF),
        .O(vgaGreen[3]));
  OBUF \vgaRed_OBUF[0]_inst 
       (.I(vgaBlue_OBUF[0]),
        .O(vgaRed[0]));
  OBUF \vgaRed_OBUF[1]_inst 
       (.I(vgaRed_OBUF[1]),
        .O(vgaRed[1]));
  OBUF \vgaRed_OBUF[2]_inst 
       (.I(vgaRed_OBUF[2]),
        .O(vgaRed[2]));
  OBUF \vgaRed_OBUF[3]_inst 
       (.I(vgaRed_OBUF[2]),
        .O(vgaRed[3]));
  vga_top vga_colors
       (.CLK(clk_IBUF_BUFG),
        .Q({vgaRed_OBUF,vgaBlue_OBUF[0],vgaGreen_OBUF,vgaBlue_OBUF[3],vgaBlue_OBUF[1]}),
        .SR(rst),
        .\color_reg[1]_0 (\counter_reg_n_0_[2] ),
        .\color_reg[1]_1 (\counter_reg_n_0_[1] ),
        .\color_reg[1]_2 (\counter_reg_n_0_[0] ));
endmodule

module vga_low_level
   (Q,
    SR,
    \current_color_reg[11]_0 ,
    CLK);
  output [5:0]Q;
  input [0:0]SR;
  input [5:0]\current_color_reg[11]_0 ;
  input CLK;

  wire CLK;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [5:0]\current_color_reg[11]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \current_color_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\current_color_reg[11]_0 [5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_color_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\current_color_reg[11]_0 [0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_color_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\current_color_reg[11]_0 [1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_color_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\current_color_reg[11]_0 [2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_color_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\current_color_reg[11]_0 [3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \current_color_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\current_color_reg[11]_0 [4]),
        .Q(Q[4]),
        .R(SR));
endmodule

module vga_top
   (Q,
    \color_reg[1]_0 ,
    \color_reg[1]_1 ,
    \color_reg[1]_2 ,
    SR,
    CLK);
  output [5:0]Q;
  input \color_reg[1]_0 ;
  input \color_reg[1]_1 ;
  input \color_reg[1]_2 ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [11:1]color;
  wire \color[11]_i_1_n_0 ;
  wire \color[1]_i_1_n_0 ;
  wire \color[3]_i_1_n_0 ;
  wire \color[7]_i_1_n_0 ;
  wire \color[8]_i_1_n_0 ;
  wire \color[9]_i_1_n_0 ;
  wire \color_reg[1]_0 ;
  wire \color_reg[1]_1 ;
  wire \color_reg[1]_2 ;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hC4)) 
    \color[11]_i_1 
       (.I0(\color_reg[1]_0 ),
        .I1(\color_reg[1]_1 ),
        .I2(\color_reg[1]_2 ),
        .O(\color[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \color[1]_i_1 
       (.I0(\color_reg[1]_0 ),
        .I1(\color_reg[1]_1 ),
        .I2(\color_reg[1]_2 ),
        .O(\color[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \color[3]_i_1 
       (.I0(\color_reg[1]_0 ),
        .I1(\color_reg[1]_1 ),
        .I2(\color_reg[1]_2 ),
        .O(\color[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \color[7]_i_1 
       (.I0(\color_reg[1]_0 ),
        .I1(\color_reg[1]_1 ),
        .I2(\color_reg[1]_2 ),
        .O(\color[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \color[8]_i_1 
       (.I0(\color_reg[1]_1 ),
        .I1(\color_reg[1]_2 ),
        .I2(\color_reg[1]_0 ),
        .O(\color[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \color[9]_i_1 
       (.I0(\color_reg[1]_1 ),
        .I1(\color_reg[1]_0 ),
        .O(\color[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\color[11]_i_1_n_0 ),
        .Q(color[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\color[1]_i_1_n_0 ),
        .Q(color[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\color[3]_i_1_n_0 ),
        .Q(color[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\color[7]_i_1_n_0 ),
        .Q(color[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\color[8]_i_1_n_0 ),
        .Q(color[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \color_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\color[9]_i_1_n_0 ),
        .Q(color[9]),
        .R(SR));
  vga_low_level vga_driver
       (.CLK(CLK),
        .Q(Q),
        .SR(SR),
        .\current_color_reg[11]_0 ({color[11],color[9:7],color[3],color[1]}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
