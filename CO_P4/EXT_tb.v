`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:56:40 11/01/2023
// Design Name:   EXT
// Module Name:   D:/CO/CPU/EXT_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module EXT_tb;

	// Inputs
	reg EXTOp;
	reg [15:0] Imm16;

	// Outputs
	wire [31:0] ExtImm;

	// Instantiate the Unit Under Test (UUT)
	EXT uut (
		.EXTOp(EXTOp), 
		.Imm16(Imm16), 
		.ExtImm(ExtImm)
	);

	initial begin
		// Initialize Inputs
		EXTOp = 0;
		Imm16 = 16'hf000;

		// Wait 100 ns for global reset to finish
		#100;
        EXTOp = 1;
		Imm16 = 16'h7000;
		
		#50;
		Imm16 = 16'hf000;
		// Add stimulus here

	end
      
endmodule

