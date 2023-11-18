//--------PDSD homework 1-1 (Ripple carry)-----------------------------------------------
//--------1-bit full adder---------------------------------------------------------------

`include "HalfAdder.v"

module FullAdder(x,y,z,s,c);
	input x,y,z;
	output s,c;
	wire hs,hc,tc;
	
	HalfAdder ha0(x,y,hs,hc);
	HalfAdder ha1(hs,z,s,tc);
	or (c,tc,hc);
endmodule 