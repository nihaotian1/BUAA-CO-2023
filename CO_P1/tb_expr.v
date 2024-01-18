`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:45:10 10/13/2023
// Design Name:   expr
// Module Name:   D:/CO/CO_P1/tb_expr.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: expr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_expr;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	expr uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		clr = 1;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;clr = 0;in = "1";
		#10;in = "+";
		#10;in = "3";
		#10;in = "*";
		#10;in = "9";
		#10;in = "0";
		#10;clr = 1;
		#10;clr = 0;
		#10;in = "+";
		#10;in = "1";
		#10;in = "+";
		#10;clr = 1;
		#10;clr = 0;
		#10;in = "1";
		#10;in = "+";
		#10;in = "+";
		#10;clr = 1;
		#10;clr = 0;
		#10;in = "1";
		#10;in = "0";
		#10;in = "+";
		#10;in = "2";
		#10;in = "6";
		#10;clr = 1;
	end
endmodule
