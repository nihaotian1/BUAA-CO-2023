`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:04:57 10/13/2023
// Design Name:   alu
// Module Name:   D:/CO/CO_P1/alu_tb.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.C(C), 
		.A(A), 
		.B(B), 
		.ALUOp(ALUOp)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		ALUOp = 0;
		// Wait 100 ns for global reset to finish
		#50;
		A = 100;
		B = 99;
		ALUOp = 3'b000;
		#50;
		A = 100;
		B = 99;
		ALUOp = 3'b001;
        #50;
		A = 32'h00ff00ff;
		B = 32'hff00ff00;
		ALUOp = 3'b010;
		#50;
		A = 32'h00ff00ff;
		B = 32'hff00ff00;
		ALUOp = 3'b011;
		#50
		A = 32'h0fffffff;
		B = 12;
		ALUOp = 3'b100;
		#50
		A = 32'hffffffff;
		B = 32;
		ALUOp = 3'b100;
		#50
		A = 32'hefff_ffff;
		B = 12;
		ALUOp = 3'b101;
		#50
		A = 32'hffff_ffff;
		B = 32;
		ALUOp = 3'b101;
		#50
		A = 32'h3fff_ffff;
		B = 12;
		ALUOp = 3'b101;
		#50
		A = 32'h3fff_ffff;
		B = 32;
		ALUOp = 3'b101;
		// Add stimulus here
	end
      
endmodule

