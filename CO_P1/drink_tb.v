`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:12:47 10/15/2023
// Design Name:   drink
// Module Name:   D:/CO/CO_P1/drink_tb.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: drink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module drink_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] coin;

	// Outputs
	wire drink;
	wire [1:0] back;

	// Instantiate the Unit Under Test (UUT)
	drink uut (
		.clk(clk), 
		.reset(reset), 
		.coin(coin), 
		.drink(drink), 
		.back(back)
	);

	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		coin = 0; // 2'd0 -- noinput  2'd1 -- 5  2'd2 -- 10  2'd3 -- back
		reset = 1;
		// Wait 100 ns for global reset to finish
		#10;
		reset = 0;
        
		#10;
		coin = 2'd1;
		#10;
		coin = 2'd1;
		#10;
		coin = 2'd1;
		#10;
		coin = 2'd0;
		#10;
		coin = 2'd0;
		#10;
		coin = 2'd3;

		#10;
		coin = 2'd1;
		#10;
		coin = 2'd2;
		#10;
		coin = 2'd2;
		#10;
		coin = 2'd3;
		// Add stimulus here

	end
      
endmodule

