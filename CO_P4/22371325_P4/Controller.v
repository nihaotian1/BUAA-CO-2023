`timescale 1ns / 1ps
`define ADD 6'b10_0000
`define SUB 6'b10_0010
`define ORI 6'b00_1101
`define LW 6'b10_0011
`define SW 6'b10_1011
`define BEQ 6'b00_0100
`define LUI 6'b00_1111
`define JAL 6'b00_0011
`define JR 6'b00_1000
`define NOP 6'b00_0000

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
    input [5:0] Opcode,
    input [5:0] funct,
    input [3:0] ALUsig,
    output reg [1:0] NPCOp,
    output reg EXTOp,
    output reg RegWrite,
    output reg [1:0] RegSrc,
    output reg [1:0] RegDst,
    output reg ALUSrc,
    output reg [2:0] ALUOp,
    output reg MemWrite
    );

    initial begin
        NPCOp = 2'b00;
        EXTOp = 1'b0;
        RegWrite = 1'b0;
        RegSrc = 2'b00;
        RegDst = 2'b00;
        ALUSrc = 1'b0;
        ALUOp = 3'b000;
        MemWrite = 1'b0;
    end

    wire Rtype = (Opcode == 6'b00_0000);

    // principle : never write "we don't care things" in "if" !!!
    always @(*) begin
        // do init, in case latch
        NPCOp = 2'b00;
        EXTOp = 1'b0;
        RegWrite = 1'b0;
        RegSrc = 2'b00;
        RegDst = 2'b00;
        ALUSrc = 1'b0;
        ALUOp = 3'b000;
        MemWrite = 1'b0;

        if (Rtype == 1'b1 && funct == `ADD) begin
            NPCOp = 2'b00;
            RegWrite = 1'b1;
            RegDst = 2'b00;
            RegSrc = 2'b00;
            ALUSrc = 1'b0;
            ALUOp = 3'b000;
            MemWrite = 1'b0;
        end
        else if (Rtype == 1'b1 && funct == `SUB) begin
            NPCOp = 2'b00;
            RegWrite = 1'b1;
            RegDst = 2'b00;
            RegSrc = 2'b00;
            ALUSrc = 1'b0;
            ALUOp = 3'b001;
            MemWrite = 1'b0;
        end
        else if (Opcode == `ORI) begin
            NPCOp = 2'b00;
            EXTOp = 1'b0;
            RegWrite = 1'b1;
            RegDst = 2'b01;
            RegSrc = 2'b00;
            ALUSrc = 1'b1;
            ALUOp = 3'b010;
            MemWrite = 1'b0;
        end
        else if (Opcode == `LW) begin
            NPCOp = 2'b00;
            EXTOp = 1'b1;
            RegWrite = 1'b1;
            RegDst = 2'b01;
            RegSrc = 2'b01;
            ALUSrc = 1'b1;
            ALUOp = 3'b000;
            MemWrite = 1'b0;
        end
        else if (Opcode == `SW) begin
            NPCOp = 2'b00;
            EXTOp = 1'b1;
            RegWrite = 1'b0;
            ALUSrc = 1'b1;
            ALUOp = 3'b000;
            MemWrite = 1'b1;
        end
        else if (Opcode == `BEQ) begin
            RegWrite = 1'b0;
            MemWrite = 1'b0;
            if (ALUsig[0] == 1'b1)
                NPCOp = 2'b01;
            else    
                NPCOp = 2'b00;
        end
        else if (Opcode == `LUI) begin
            NPCOp = 2'b00;
            RegWrite = 1'b1;
            RegDst = 2'b01;
            RegSrc = 2'b00;
            ALUSrc = 1'b1;
            ALUOp = 3'b011;
            MemWrite = 1'b0;
        end 
        else if (Opcode == `JAL) begin
            NPCOp = 2'b10;
            RegWrite = 1'b1;
            RegSrc = 2'b10;
            RegDst = 2'b10;
            MemWrite = 1'b0;
        end 
        else if (Rtype == 1'b1 && funct == `JR) begin
            NPCOp = 2'b11;
            RegWrite = 1'b0;
            MemWrite = 1'b0;
        end
        else if (Rtype == 1'b1 && funct == `NOP) begin
            NPCOp = 2'b00;
            RegWrite = 1'b0;
            MemWrite = 1'b0;
        end
    end

endmodule
