`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:12:38 11/01/2023
// Design Name:   GRF
// Module Name:   D:/CO/CPU/GRF_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GRF_tb;

	// Inputs
	reg clk;
	reg reset;
	reg RegWrite;
	reg [4:0] A1;
	reg [4:0] A2;
	reg [4:0] RegAddr;
	reg [31:0] RegData;
	reg [31:0] pc;

	// Outputs
	wire [31:0] RD1;
	wire [31:0] RD2;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.clk(clk), 
		.reset(reset), 
		.RegWrite(RegWrite), 
		.A1(A1), 
		.A2(A2), 
		.RegAddr(RegAddr), 
		.RegData(RegData), 
		.pc(pc), 
		.RD1(RD1), 
		.RD2(RD2)
	);
	
	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		RegWrite = 0;
		A1 = 0;
		A2 = 1;
		RegAddr = 0;
		RegData = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RegWrite = 0;
		RegAddr = 1;
		RegData = 32'hffff_ffff;
		// Add stimulus here
		#10;
		RegWrite = 1;
		RegAddr = 1;
		RegData = 32'hffff_ffff;
		#10;
		RegWrite = 1;
		RegAddr = 0;
		RegData = 32'hffff_ffff;

	end
      
endmodule

