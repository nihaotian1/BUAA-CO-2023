`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:04 11/01/2023 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
    // DataBus
    wire [31:0] Instr;
    wire [31:0] pc;
    wire [31:0] npc;
    wire [31:0] pc4;
    wire [31:0] ExtImm;
    wire [4:0] RegAddr;
    wire [31:0] RegData;
    wire [31:0] srcA;
    wire [31:0] srcB;
    wire [31:0] outC;
    wire [3:0] ALUsig;
    wire [31:0] MemAddr;
    wire [31:0] MemData;
    wire [31:0] ReadData;

    // fetch
    IFU myIFU(
        .clk(clk), 
        .reset(reset), 
        .npc(npc), 
        .pc(pc),
        .Instr(Instr)
        );

    // split
    wire [5:0] Opcode = Instr[31:26];
    wire [4:0] rs = Instr[25:21];
    wire [4:0] rt = Instr[20:16];
    wire [4:0] rd = Instr[15:11];
    wire [4:0] shamt = Instr[10:6];
    wire [5:0] funct = Instr[5:0];
    
    wire [15:0] Imm16 = Instr[15:0];
    wire [25:0] Imm26 = Instr[25:0];

    // decode
    wire [1:0] NPCOp;
    wire EXTOp;
    wire RegWrite;
    wire [1:0] RegSrc;
    wire [1:0] RegDst;
    wire ALUSrc;
    wire [2:0] ALUOp;
    wire MemWrite;

    Controller myCU(
        .Opcode(Opcode), 
        .funct(funct), 
        .ALUsig(ALUsig),
        .NPCOp(NPCOp), 
        .EXTOp(EXTOp), 
        .RegWrite(RegWrite), 
        .RegSrc(RegSrc),
        .RegDst(RegDst), 
        .ALUSrc(ALUSrc), 
        .ALUOp(ALUOp), 
        .MemWrite(MemWrite)
        );

    // EXT
    EXT myEXT(
    .EXTOp(EXTOp), 
    .Imm16(Imm16), 
    .ExtImm(ExtImm));

    // GRF
    wire [4:0] A1 = rs;
    wire [4:0] A2 = rt;
    assign RegAddr = (RegDst == 2'b00) ? rd :
                        (RegDst == 2'b01) ? rt :
                        (RegDst == 2'b10) ? 5'h1f:
                        5'h00;

    assign RegData = (RegSrc == 2'b00) ? outC :
                        (RegSrc == 2'b01) ? ReadData :
                        (RegSrc == 2'b10) ? pc4 :
                        32'h0000_0000;
    wire [31:0] RD1;
    wire [31:0] RD2;

    GRF myGRF(
        .clk(clk), 
        .reset(reset), 
        .RegWrite(RegWrite), 
        .A1(A1), 
        .A2(A2), 
        .RegAddr(RegAddr), 
        .RegData(RegData),
        .pc(pc), 
        .RD1(RD1), 
        .RD2(RD2)
        );

    // ALU
    assign srcA = RD1;
    assign srcB = (ALUSrc == 1'b0) ? RD2 : ExtImm;

    ALU myALU(
        .srcA(srcA), 
        .srcB(srcB), 
        .ALUOp(ALUOp), 
        .outC(outC), 
        .ALUsig(ALUsig)
        );

    // DM
    assign MemAddr = outC;
    assign MemData = RD2;
    DM myDM(
        .clk(clk), 
        .reset(reset), 
        .MemWrite(MemWrite), 
        .MemAddr(MemAddr), 
        .MemData(MemData),
        .pc(pc), 
        .ReadData(ReadData)
        );

    // NPC
    NPC myNPC(
        .NPCOp(NPCOp), 
        .Imm16(Imm16), 
        .Imm26(Imm26), 
        .Addr(RD1), 
        .pc(pc),
        .npc(npc), 
        .pc4(pc4)
        );
    

endmodule
