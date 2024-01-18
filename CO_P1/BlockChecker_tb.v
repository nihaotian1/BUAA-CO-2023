`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:06:59 10/14/2023
// Design Name:   BlockChecker
// Module Name:   D:/CO/CO_P1/BlockChecker_tb.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BlockChecker_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        #10;in = " ";
        #10;in = " ";
        #10;in = " ";
        #10;in = "E"; 
        #10;in = "n";
        #10;in = "d";
        #10;in = "e";
        #10;in = " ";
		#10;reset = 1;
		#10;reset = 0;
        #10;in = "b"; 
        #10;in = "e";
        #10;in = "g";
        #10;in = "i";
        #10;in = "n"; 
        #10;in = " ";
        #10;in = " ";
        #10;in = " ";
        #10;in = "e";
        #10;in = "n";
        #10;in = "d"; 
        #10;in = " ";
        #10;in = "e";
        #10;in = "N";
        #10;in = "d"; 
        #10;in = "c";
        #10;in = " ";
        #10;in = " ";
        #10;in = "e";
        #10;in = "n";
        #10;in = "d";
		#10;reset = 1;
		#10;reset = 0;
        #10;in = "b"; 
        #10;in = "B"; 
        #10;in = "e";
        #10;in = "g";
        #10;in = "I";
        #10;in = "n"; 
        #10;in = " ";
        #10;in = " ";
        #10;in = " ";
        #10;in = "a";
        #10;in = " ";
        #10;in = " ";
        #10;in = "B"; 
        #10;in = "e";
        #10;in = "g";
        #10;in = "i";
        #10;in = "n"; 
        #10;in = " ";
        #10;in = "b"; 
        #10;in = "e";
        #10;in = "g";
        #10;in = " ";
        #10;in = " ";
        #10;in = "e";
        #10;in = "n";
        #10;in = "d"; 
        #10;in = "e";
        #10;in = "n";
        #10;in = "d"; 
        #10;in = " ";
        #10;in = " ";
        #10;in = "m"; 
        #10;in = "p";
        #10;in = "q";
        #10;in = " ";
        #10;in = "e";
        #10;in = "n";
        #10;in = "d"; 
		#10;reset = 1;
		#10;reset = 0;
        #10;in = " ";
        #10;in = " ";
        #10;in = " ";
        #10;in = "b"; 
        #10;in = "e";
        #10;in = "g";
        #10;in = "i";
        #10;in = "n"; 
        #10;in = "b"; 
        #10;in = "e";
        #10;in = "g";
        #10;in = "i";
        #10;in = "n"; 
        #10;in = " ";
        #10;in = " ";
        #10;in = "e";
        #10;in = "n";
        #10;in = "d"; 
        #10;in = " ";
        #10;in = "b"; 
        #10;in = "e";
        #10;in = "g";
        #10;in = "i";
        #10;in = "n"; 
        #10;in = " ";
        #10;in = "e";
        #10;in = "n";
        #10;in = "d"; 
        #10;in = "e";
        #10;in = "n";
        #10;in = "d"; 
		#10;reset = 1;
		// Add stimulus here
	end
endmodule