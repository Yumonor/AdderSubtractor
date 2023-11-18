//--------PDSD homework 1-1 (Ripple carry)-----------------------------------------------
//--------8-bit ripple carry adder-------------------------------------------------------

`include "Adder_4bit.v"

module Adder_8bit(A,B,CarryIn,SUM,CarryOut);
	input [7:0] A,B;
	input CarryIn;
	output [7:0] SUM;
	output CarryOut;
	wire c0;
	
	Adder_4bit A0(.A(A[3:0]),.B(B[3:0]),.CarryIn(CarryIn),.SUM(SUM[3:0]),.CarryOut(c0));
	Adder_4bit A1(.A(A[7:4]),.B(B[7:4]),.CarryIn(c0),.SUM(SUM[7:4]),.CarryOut(CarryOut));
	
endmodule