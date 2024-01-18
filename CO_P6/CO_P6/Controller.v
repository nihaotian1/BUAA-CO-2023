`timescale 1ns / 1ps
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
    output reg [1:0] NPCOp,
    output [1:0] EXTOp,
    output [2:0] CMPOp,
    output RegWrite,
    output [2:0] RegSrc,
    output [1:0] RegDst,
    output ALUSrc,
    output [4:0] ALUOp,
    output [2:0] MDOp,
    output MDWrite,
    output MDSel,
    output MemWrite,
    output [1:0] BEOp,
    output [2:0] DPOp,
    output [3:0] Tnew,
    output [3:0] Tuse_RS,
    output [3:0] Tuse_RT,
    output Start
    );

    wire [5:0] Opcode = Instr[31:26];
    wire [5:0] funct  = Instr[5:0];

    wire R    = (Opcode == 6'b00_0000);
    wire add  = (R && funct == `ADD);
    wire sub  = (R && funct == `SUB);
    wire And  = (R && funct == `AND);
    wire Or   = (R && funct == `OR);
    wire slt  = (R && funct == `SLT);
    wire sltu = (R && funct == `SLTU);
    wire cal_reg = (add | sub | And | Or | slt | sltu);

    wire lui = (Opcode == `LUI);

    wire ori  = (Opcode == `ORI);
    wire addi = (Opcode == `ADDI);
    wire andi = (Opcode == `ANDI);
    wire cal_imm = (ori | addi | andi);

    wire mtlo  = (R && funct == `MTLO);
    wire mthi  = (R && funct == `MTHI);
    wire mult  = (R && funct == `MULT);
    wire multu = (R && funct == `MULTU);
    wire div   = (R && funct == `DIV);
    wire divu  = (R && funct == `DIVU);
    wire cal_MD = (mtlo | mthi | mult | multu | div | divu);

    wire mflo  = (R && funct == `MFLO);
    wire mfhi  = (R && funct == `MFHI);
    wire mv_MD = (mflo | mfhi) ? 1'b1 : 1'b0;

    wire lw  = (Opcode == `LW);
    wire lh  = (Opcode == `LH);
    wire lb  = (Opcode == `LB);
    wire load = (lw | lh | lb) ? 1'b1 : 1'b0;

    wire sw  = (Opcode == `SW);
    wire sh  = (Opcode == `SH);
    wire sb  = (Opcode == `SB);
    wire store = (sw | sh | sb) ? 1'b1 : 1'b0;

    wire beq = (Opcode == `BEQ);
    wire bne = (Opcode == `BNE);
    wire branch = (beq | bne) ? 1'b1 : 1'b0;

    wire jal = (Opcode == `JAL);
    wire j_link = (jal) ? 1'b1 : 1'b0;
    
    wire jr  = (R && funct == `JR);
    wire j_reg = (jr) ? 1'b1 : 1'b0;

    wire nop = (R && funct == `NOP);


    always @(*) begin
        NPCOp = 2'b00;
        if(Cond && branch == 1'b1) begin
            NPCOp = `NPC_Imm16;
        end
        else if(j_link == 1'b1)
            NPCOp = `NPC_Imm26;
        else if(j_reg == 1'b1)
            NPCOp = `NPC_ra;
        else
            NPCOp = `NPC_pc4;
    end
    
    assign EXTOp =  (load | store | addi) ? `EXT_S :
                    (lui) ? `EXT_LUI : `EXT_Z;

    assign CMPOp =  (beq) ? `CMP_BEQ : 
                    (bne) ? `CMP_BNE : 3'b000;

    assign RegWrite = cal_reg | cal_imm | load | mv_MD | j_link | lui;

    assign RegDst = (cal_imm | load | lui) ? `RD_rt :
                    (j_link) ? `RD_ra : `RD_rd;

    assign RegSrc = (mv_MD)  ? `RS_MD :
                    (load)   ? `RS_DM_RD :
                    (j_link) ? `RS_NPC_PC4 : `RS_ALU_C;

    assign ALUSrc = (cal_imm | load | store | lui);

    assign ALUOp =  (sub)  ? `ALU_SUB :
                    (ori | Or) ? `ALU_OR :
                    (lui)  ? `ALU_LUI : 
                    (And | andi) ? `ALU_AND :
                    (slt)  ? `ALU_SLT : 
                    (sltu) ? `ALU_SLTU : `ALU_ADD;

    assign MDSel = mfhi;

// `define MD_MTLO  3'b000
// `define MD_MTHI  3'b001
// `define MD_MULT  3'b010
// `define MD_MULTU 3'b011
// `define MD_DIV   3'b100
// `define MD_DIVU  3'b101

    assign MDOp =   (mtlo) ? `MD_MTLO : 
                    (mthi) ? `MD_MTHI :
                    (mult) ? `MD_MULT : 
                    (multu) ? `MD_MULTU :
                    (div)  ? `MD_DIV :
                    (divu) ? `MD_DIVU : 3'b000;

    assign MemWrite = store;

    assign BEOp =   (sw) ? `BE_SW :
                    (sh) ? `BE_SH :
                    (sb) ? `BE_SB : 2'b00;

    assign DPOp =   (lw) ? `DP_LW :
                    (lh) ? `DP_LH :
                    (lb) ? `DP_LB : 3'b000;

    // use for E
    assign Tnew =   (j_link | lui) ? 4'h0 :
                    (cal_imm | cal_reg | mv_MD) ? 4'h1 :
                    (load) ? 4'h2 : 4'h0;

    // use for D
    assign Tuse_RS =    (branch | j_reg) ? 4'h0 :
                        (cal_reg | cal_imm | load | store | cal_MD) ? 4'h1 : 4'hf;

    assign Tuse_RT =    (branch)  ? 4'h0 :
                        (cal_reg | mult | multu | divu | div) ? 4'h1 :
                        (store)   ? 4'h2 : 4'hf; 

    assign Start   =    (mult | multu | div | divu);

    assign MDWrite =    (cal_MD);
endmodule
