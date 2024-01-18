`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:38:39 09/06/2023
// Design Name:   test
// Module Name:   D:/CO/HDL-bits/tb_test.v
// Project Name:  HDL-bits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_test;

	// Outputs
	wire [2:0] judge;

	// Instantiate the Unit Under Test (UUT)
	test uut (
		.judge(judge)
	);

	initial begin
		// Initialize Inputs

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

