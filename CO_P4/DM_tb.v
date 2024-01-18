`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:40:27 11/01/2023
// Design Name:   DM
// Module Name:   D:/CO/CPU/DM_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DM_tb;

	// Inputs
	reg clk;
	reg reset;
	reg MemWrite;
	reg [31:0] MemAddr;
	reg [31:0] MemData;
	reg [31:0] pc;

	// Outputs
	wire [31:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.clk(clk), 
		.reset(reset), 
		.MemWrite(MemWrite), 
		.MemAddr(MemAddr), 
		.MemData(MemData), 
		.pc(pc), 
		.ReadData(ReadData)
	);

	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		MemWrite = 0;
		MemAddr = 0;
		MemData = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        MemAddr = 122;
		#10
		MemWrite = 1;
		MemData = 32'hf00f_0ff0;

		#10
		reset = 1;
		// Add stimulus here

		#10
		MemWrite = 0;
		reset = 0;

		#10
		MemWrite = 1;
	end
      
endmodule

