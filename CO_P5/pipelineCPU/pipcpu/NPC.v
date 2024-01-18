`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:47:10 11/01/2023 
// Design Name: 
// Module Name:    NPC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module NPC(
    input [1:0] NPCOp,
    input [15:0] Imm16,
    input [25:0] Imm26,
    input [31:0] Addr,
    input [31:0] pc_F,
    input [31:0] pc_D,
    output [31:0] npc,
    output [31:0] pc4
    );
    reg [31:0] next_pc;
    initial begin
        next_pc <= 32'h0000_0000;
    end

    always @(*) begin
        case(NPCOp)
            2'b00:
                next_pc = pc_F + 4;
            
            2'b01:
                next_pc = pc_F + {{14{Imm16[15]}}, Imm16, 2'b00};

            2'b10:
                next_pc = {pc_D[31:28], Imm26, 2'b00};

            2'b11:
                next_pc = Addr;

            default:
                next_pc = 32'h0000_3000;
        endcase
    end

    assign npc = next_pc;
    assign pc4 = pc_F + 4;
endmodule
