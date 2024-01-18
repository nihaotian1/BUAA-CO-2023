`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:50:08 10/13/2023
// Design Name:   ext
// Module Name:   D:/CO/CO_P1/tb_ext.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ext;

	// Inputs
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin
		// Initialize Inputs
		imm = 0;
		EOp = 0;
		// Wait 100 ns for global reset to finish
		#50;
		imm = 16'hffff;
		EOp = 2'b00;
		#50;
		imm = 16'hffff;
		EOp = 2'b01;
		#50;
		imm = 16'hffff;
		EOp = 2'b10;
		#50;
		imm = 16'hffff;
		EOp = 2'b11;
		#50;
		imm = 16'h0000;
		EOp = 2'b00;
		#50;
		imm = 16'h0000;
		EOp = 2'b01;
		#50;
		imm = 16'h0000;
		EOp = 2'b10;
		#50;
		imm = 16'h0000;
		EOp = 2'b11;
		// Add stimulus here
	end
      
endmodule

