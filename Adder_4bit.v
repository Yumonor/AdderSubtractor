//--------PDSD homework 1-1 (Ripple carry)-----------------------------------------------
//--------4-bit ripple carry adder-------------------------------------------------------

`include "FullAdder.v"

module Adder_4bit(A,B,CarryIn,SUM,CarryOut);
	input [3:0] A,B;
	input CarryIn;
	output [3:0] SUM;
	output CarryOut;
	wire [3:1] C;
	
	FullAdder bit0(A[0],B[0],CarryIn,SUM[0],C[1]);
	FullAdder bit1(A[1],B[1],C[1],SUM[1],C[2]);
	FullAdder bit2(A[2],B[2],C[2],SUM[2],C[3]);
	FullAdder bit3(A[3],B[3],C[3],SUM[3],CarryOut);
	
endmodule