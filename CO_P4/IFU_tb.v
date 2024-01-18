`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:38:45 11/01/2023
// Design Name:   IFU
// Module Name:   D:/CO/CPU/IFU_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IFU_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] npc;

	// Outputs
	wire [31:0] pc;
	wire [31:0] Instr;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.clk(clk), 
		.reset(reset), 
		.npc(npc), 
		.pc(pc), 
		.Instr(Instr)
	);

	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		npc = 32'h0000_3000;

		// Wait 100 ns for global reset to finish
		#10;
		npc = npc + 4;
		#10;
		npc = npc + 4;
		#10;
		npc = npc + 4;
		#10;
		npc = npc + 2;
		#10;
		npc = npc + 2;
		#10;
		npc = npc + 2;
		#10;
		npc = npc + 2;
		#10;
		npc = npc + 4;
		#10;
		npc = npc + 4;
		#10;
		npc = npc + 4;
		#10
		reset = 1;
		#10
		reset = 0;
		#10;
		npc = npc + 2;
		#10;
		npc = npc + 2;
		#10;
		npc = npc + 4;
		// Add stimulus here
	end
      
endmodule

