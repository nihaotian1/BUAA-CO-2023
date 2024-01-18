`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:53:52 11/01/2023
// Design Name:   NPC
// Module Name:   D:/CO/CPU/NPC_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: NPC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module NPC_tb;

	// Inputs
	reg [1:0] NPCOp;
	reg [15:0] Imm16;
	reg [25:0] Imm26;
	reg [31:0] Addr;
	reg [31:0] pc;

	// Outputs
	wire [31:0] npc;
	wire [31:0] pc4;

	// Instantiate the Unit Under Test (UUT)
	NPC uut (
		.NPCOp(NPCOp), 
		.Imm16(Imm16), 
		.Imm26(Imm26), 
		.Addr(Addr), 
		.pc(pc), 
		.npc(npc), 
		.pc4(pc4)
	);

	initial begin
		// Initialize Inputs
		NPCOp = 0;
		Imm16 = 0;
		Imm26 = 0;
		Addr = 0;
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        pc = 32'hffff_ff00;

		#10
		NPCOp = 1;
		Imm16 = 16'hf00f;

		#10
		NPCOp = 1;
		Imm16 = 16'h700f;

		#10
		NPCOp = 2;
		Imm26 = 26'hf00_f00f;

		#10
		NPCOp = 3;
		Addr = 32'hf0f0_f0f0;
		// Add stimulus here

	end
      
endmodule

