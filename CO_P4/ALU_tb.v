`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:29:42 11/01/2023
// Design Name:   ALU
// Module Name:   D:/CO/CPU/ALU_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] srcA;
	reg [31:0] srcB;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] outC;
	wire [3:0] ALUsig;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.srcA(srcA), 
		.srcB(srcB), 
		.ALUOp(ALUOp), 
		.outC(outC), 
		.ALUsig(ALUsig)
	);

	initial begin
		// Initialize Inputs
		srcA = 0;
		srcB = 0;
		ALUOp = 0;

		// Wait 100 ns for global reset to finish
		#100;
		srcA = 32'hffff_ffff;
		srcB = 32'h8000_0000;
        ALUOp = 0;
		#100;
		srcA = 32'hffff_ffff;
		srcB = 32'h8000_0000;
        ALUOp = 1;
		#100;
		srcA = 32'hf0f0_0f00;
		srcB = 32'h0f0f_00f0;
        ALUOp = 2;
		#100
		srcA = 32'hffff_0f00;
		srcB = 32'h0f0f_ffff;
        ALUOp = 3;
		// Add stimulus here

	end
      
endmodule

