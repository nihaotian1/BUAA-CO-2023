`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:15:29 10/15/2023
// Design Name:   VoterPlus
// Module Name:   D:/CO/CO_P1/VoterPlus_tb.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VoterPlus
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module VoterPlus_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] np;
	reg [7:0] vip;
	reg vvip;

	// Outputs
	wire [7:0] result;

	// Instantiate the Unit Under Test (UUT)
	VoterPlus uut (
		.clk(clk), 
		.reset(reset), 
		.np(np), 
		.vip(vip), 
		.vvip(vvip), 
		.result(result)
	);
	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		np = 0;
		vip = 0;
		vvip = 0;

		#5; 
		reset = 0;

		// Wait 100 ns for global reset to finish
		#10;
        np = 32'hf000_f000;
		vip = 8'hff;
		vvip = 1'b1;

		#10;
        np = 32'h0f00_0f00;
		vip = 8'h00;
		vvip = 1'b0;
		// Add stimulus here
		#10;
        np = 32'h00ff_00ff;
		vip = 8'h00;
		vvip = 1'b0;
		#10;
		reset = 1;
	end
      
endmodule

