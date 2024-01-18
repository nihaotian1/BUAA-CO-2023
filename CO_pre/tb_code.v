`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:03 08/17/2023
// Design Name:   code
// Module Name:   D:/CO/testfile/tb_code.v
// Project Name:  testfile
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_code;

	// Inputs
	reg Clk;
	reg Reset;
	reg Slt;
	reg En;

	// Outputs
	wire [63:0] Output0;
	wire [63:0] Output1;

	// Instantiate the Unit Under Test (UUT)
	code uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.Slt(Slt), 
		.En(En), 
		.Output0(Output0), 
		.Output1(Output1)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 1;
		Slt = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#5;
        En = 1;
		Slt = 1;
		Reset = 0;
		// Add stimulus here

		# 55
		En = 1;
		Slt = 0;
		Reset = 0;//test reg0

		# 20
		Reset = 1;
		En = 1;
		Slt = 0;  //test reset

		# 20
		Reset = 0;
		En = 0;
		Slt = 0;   //test En
	end

	always #5 Clk = ~Clk;
      
endmodule

