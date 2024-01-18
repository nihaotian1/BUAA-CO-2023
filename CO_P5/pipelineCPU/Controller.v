`timescale 1ns / 1ps
`define ADD 6'b10_0000
`define SUB 6'b10_0010
`define ORI 6'b00_1101
`define LW  6'b10_0011
`define SW  6'b10_1011
`define BEQ 6'b00_0100
`define LUI 6'b00_1111
`define JAL 6'b00_0011
`define JR  6'b00_1000
`define NOP 6'b00_0000

`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:28 11/01/2023 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input [31:0] Instr,
    input Cond,
    output [1:0] NPCOp,
    output [1:0] EXTOp,
    output [2:0] CMPOp,
    output RegWrite,
    output [1:0] RegSrc,
    output [1:0] RegDst,
    output ALUSrc,
    output [4:0] ALUOp,
    output MemWrite,
    output [3:0] Tnew,
    output [3:0] Tuse_RS,
    output [3:0] Tuse_RT
    );

    wire [5:0] Opcode = Instr[31:26];
    wire [5:0] funct  = Instr[5:0];

    wire R   = (Opcode == 6'b00_0000);
    wire add = (R && funct == `ADD);
    wire sub = (R && funct == `SUB);
    wire ori = (Opcode == `ORI);
    wire lui = (Opcode == `LUI);
    wire lw  = (Opcode == `LW);
    wire sw  = (Opcode == `SW);
    wire beq = (Opcode == `BEQ);
    wire jal = (Opcode == `JAL);
    wire jr  = (R && funct == `JR);
    wire nop = (R && funct == `NOP);

    assign NPCOp =  (Cond && beq) ? `NPC_Imm16 :
                    (jal) ? `NPC_Imm26 :
                    (jr) ? `NPC_ra : `NPC_pc4;
    
    assign EXTOp =  (lw | sw) ? `EXT_S :
                    (lui) ? `EXT_LUI : `EXT_Z;

    assign CMPOp = (beq) ? `CMP_beq : 3'b000;

    assign RegWrite = add | sub | ori | lui | lw | jal;

    assign RegDst = (ori | lw | lui) ? `RD_rt :
                    (jal) ? `RD_ra : `RD_rd;

    assign RegSrc = (lw) ? `RS_DM_RD :
                    (jal) ? `RS_NPC_pc4 : `RS_ALU_c;

    assign ALUSrc = ori | lw | sw | lui;

    assign ALUOp =  (sub) ? `ALU_sub :
                    (ori) ? `ALU_or :
                    (lui) ? `ALU_lui : `ALU_add;

    assign MemWrite = sw;

    // use for E
    assign Tnew =   (jal | lui) ? 4'h0 :
                    (add | sub | ori) ? 4'h1 :
                    (lw) ? 4'h2 : 4'h0;

    // use for D
    assign Tuse_RS =    (beq | jr) ? 4'h0 :
                        (add | sub | ori | lw |sw) ? 4'h1 : 4'hf;

    assign Tuse_RT =    (beq) ? 4'h0 :
                        (add | sub) ? 4'h1 :
                        (sw) ? 4'h2 : 4'hf; 
endmodule
