/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri May  8 14:39:33 2020
/////////////////////////////////////////////////////////////
`timescale 1ns/10ps

module HalfAdder_0 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_15 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_0 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_0 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_15 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module HalfAdder_9 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_10 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_5 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_10 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_9 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module HalfAdder_11 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_12 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_6 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_12 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_11 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module HalfAdder_13 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_14 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_7 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_14 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_13 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module Adder_4bit_0 ( A, B, CarryIn, SUM, CarryOut );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  input CarryIn;
  output CarryOut;

  wire   [3:1] C;

  FullAdder_0 bit0 ( .x(A[0]), .y(B[0]), .z(CarryIn), .s(SUM[0]), .c(C[1]) );
  FullAdder_7 bit1 ( .x(A[1]), .y(B[1]), .z(C[1]), .s(SUM[1]), .c(C[2]) );
  FullAdder_6 bit2 ( .x(A[2]), .y(B[2]), .z(C[2]), .s(SUM[2]), .c(C[3]) );
  FullAdder_5 bit3 ( .x(A[3]), .y(B[3]), .z(C[3]), .s(SUM[3]), .c(CarryOut) );
endmodule


module HalfAdder_1 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_2 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_1 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_2 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_1 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module HalfAdder_3 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_4 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_2 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_4 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_3 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module HalfAdder_5 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_6 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_3 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_6 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_5 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module HalfAdder_7 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module HalfAdder_8 ( x, y, s, c );
  input x, y;
  output s, c;


  XOR2X1 U1 ( .A(y), .B(x), .Y(s) );
  AND2X1 U2 ( .A(y), .B(x), .Y(c) );
endmodule


module FullAdder_4 ( x, y, z, s, c );
  input x, y, z;
  output s, c;
  wire   hs, hc, tc;

  HalfAdder_8 ha0 ( .x(x), .y(y), .s(hs), .c(hc) );
  HalfAdder_7 ha1 ( .x(hs), .y(z), .s(s), .c(tc) );
  OR2X1 U1 ( .A(hc), .B(tc), .Y(c) );
endmodule


module Adder_4bit_1 ( A, B, CarryIn, SUM, CarryOut );
  input [3:0] A;
  input [3:0] B;
  output [3:0] SUM;
  input CarryIn;
  output CarryOut;

  wire   [3:1] C;

  FullAdder_4 bit0 ( .x(A[0]), .y(B[0]), .z(CarryIn), .s(SUM[0]), .c(C[1]) );
  FullAdder_3 bit1 ( .x(A[1]), .y(B[1]), .z(C[1]), .s(SUM[1]), .c(C[2]) );
  FullAdder_2 bit2 ( .x(A[2]), .y(B[2]), .z(C[2]), .s(SUM[2]), .c(C[3]) );
  FullAdder_1 bit3 ( .x(A[3]), .y(B[3]), .z(C[3]), .s(SUM[3]), .c(CarryOut) );
endmodule


module Adder_8bit ( A, B, CarryIn, SUM, CarryOut );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CarryIn;
  output CarryOut;
  wire   c0;

  Adder_4bit_0 A0 ( .A(A[3:0]), .B(B[3:0]), .CarryIn(CarryIn), .SUM(SUM[3:0]), 
        .CarryOut(c0) );
  Adder_4bit_1 A1 ( .A(A[7:4]), .B(B[7:4]), .CarryIn(c0), .SUM(SUM[7:4]), 
        .CarryOut(CarryOut) );
endmodule


module AdderSubtractor_8bit ( A, B, Add_ctrl, SUM, C_out );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input Add_ctrl;
  output C_out;

  wire   [7:0] _B;

  Adder_8bit A0 ( .A(A), .B(_B), .CarryIn(Add_ctrl), .SUM(SUM), .CarryOut(
        C_out) );
  XOR2X1 U9 ( .A(B[7]), .B(Add_ctrl), .Y(_B[7]) );
  XOR2X1 U10 ( .A(B[6]), .B(Add_ctrl), .Y(_B[6]) );
  XOR2X1 U11 ( .A(B[5]), .B(Add_ctrl), .Y(_B[5]) );
  XOR2X1 U12 ( .A(B[4]), .B(Add_ctrl), .Y(_B[4]) );
  XOR2X1 U13 ( .A(B[3]), .B(Add_ctrl), .Y(_B[3]) );
  XOR2X1 U14 ( .A(B[2]), .B(Add_ctrl), .Y(_B[2]) );
  XOR2X1 U15 ( .A(B[1]), .B(Add_ctrl), .Y(_B[1]) );
  XOR2X1 U16 ( .A(B[0]), .B(Add_ctrl), .Y(_B[0]) );
endmodule

