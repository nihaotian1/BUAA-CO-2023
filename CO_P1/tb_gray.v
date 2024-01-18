`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:15:50 10/13/2023
// Design Name:   gray
// Module Name:   D:/CO/CO_P1/tb_gray.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_gray;

	// Inputs
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire Overflow;
	wire [2:0] Output;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Overflow(Overflow), 
		.Output(Output)
	);
	always #5 Clk = ~Clk;

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#40;
		En = 1;
        
		#20
		En = 1;
		Reset = 1; // test Reset logic

		#10
		En = 0;
		Reset = 0; // test En logic

		#10
		En = 1;

		#100
		Reset = 1; // test Overflow Reset

		#20
		Reset = 0;
		// Add stimulus here
	end
endmodule