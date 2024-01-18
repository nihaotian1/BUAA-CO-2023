`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:03:57 08/17/2023
// Design Name:   id_fsm
// Module Name:   D:/CO/testfile/tb_id_fsm.v
// Project Name:  testfile
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: id_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_id_fsm;

	// Inputs
	reg [7:0] char;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	id_fsm uut (
		.char(char), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		char = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		char = "a";
		#10
		char = "b";
		#10
		char = "c";
		#10
		char = "d";
		#10
		char = "1";
		#10
		char = "2";
		#10
		char = "3";
		#10
		char = "4";
		#10
		char = "/";
		// Add stimulus here

	end

	always #5 clk = ~clk;
	
endmodule

