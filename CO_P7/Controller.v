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
    input [31:0] outC,
    input [4 :0] EXCode,
    input Overflow,
    input Cond,
    output reg [2:0] NPCOp,
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
    output CPWrite,
    output [1:0] BEOp,
    output [2:0] DPOp,
    output [3:0] Tnew,
    output [3:0] Tuse_RS,
    output [3:0] Tuse_RT,
    output Start,
    output ISDB_F,
    output flush_D,
    output EXClr,
    output reg [4:0] T_EXCode,
    output Eret
    );

    /*
    *   if find Exception, treat Instr as nop
    */
    wire exc = |EXCode;

    wire [31:0] useInstr = exc ? 32'd0 : Instr;

    wire [5:0] Opcode = useInstr[31:26];
    wire [5:0] funct  = useInstr[5:0];


    /*
    *   Decode
    */
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

    wire syscall = (R && funct == 6'b001100);

    wire eret = (useInstr == 32'b010000_1_000_0000_0000_0000_0000_011000);

    wire mfc0 = (Opcode == 6'b010000 && useInstr[25:21] == 5'b00000 && useInstr[10:0] == 11'd0);

    wire mtc0 = (Opcode == 6'b010000 && useInstr[25:21] == 5'b00100 && useInstr[10:0] == 11'd0);


    /*
    *   from Instr_Decode to generate Control Signal
    */
    always @(*) begin
        NPCOp = 3'b000;
        if(Cond && branch == 1'b1)
            NPCOp = `NPC_Imm16;
        else if(j_link == 1'b1)
            NPCOp = `NPC_Imm26;
        else if(j_reg == 1'b1)
            NPCOp = `NPC_ra;
        else if(eret)
            NPCOp = `NPC_EPC;
        else
            NPCOp = `NPC_pc4;
    end
    
    assign EXTOp =  (load | store | addi) ? `EXT_S :
                    (lui) ? `EXT_LUI : `EXT_Z;

    assign CMPOp =  (beq) ? `CMP_BEQ : 
                    (bne) ? `CMP_BNE : 3'b000;

    assign RegWrite = cal_reg | cal_imm | load | mv_MD | j_link | lui | mfc0;

    assign RegDst = (cal_imm | load | lui | mfc0) ? `RD_rt :
                    (j_link) ? `RD_ra : `RD_rd;

    assign RegSrc = (mv_MD)  ? `RS_MD :
                    (load)   ? `RS_DM_RD :
                    (j_link) ? `RS_NPC_PC4 :
                    (mfc0)   ? `RS_CPOUT :  `RS_ALU_C;

    assign ALUSrc = (cal_imm | load | store | lui);

    assign ALUOp =  (sub)  ? `ALU_SUB :
                    (ori | Or) ? `ALU_OR :
                    (lui)  ? `ALU_LUI : 
                    (And | andi) ? `ALU_AND :
                    (slt)  ? `ALU_SLT : 
                    (sltu) ? `ALU_SLTU : `ALU_ADD;

    assign MDSel = mfhi;

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

    assign Start   =    (mult | multu | div | divu);

    assign MDWrite =    (cal_MD);

    assign CPWrite = mtc0;
    
    assign flush_D = eret;

    assign EXClr = eret;

    assign ISDB_F = (j_reg | j_link | branch);

    assign Eret = eret;


    /*
    *  Here We generate Tuse & Tnew
    */
    // use for E
    assign Tnew =   (j_link | lui) ? 4'h0 :
                    (cal_imm | cal_reg | mv_MD) ? 4'h1 :
                    (load | mfc0) ? 4'h2 : 4'h0;

    // use for D
    assign Tuse_RS =    (branch | j_reg) ? 4'h0 :
                        (cal_reg | cal_imm | load | store | cal_MD) ? 4'h1 : 4'hf;

    assign Tuse_RT =    (branch)  ? 4'h0 :
                        (cal_reg | mult | multu | divu | div) ? 4'h1 :
                        (store | mtc0)   ? 4'h2 : 4'hf; 


    /*
    *   Here We generate the EXCode
    */
    wire ri = !(cal_reg || lui || cal_imm || cal_MD || mv_MD || load || store || branch || j_link || j_reg || nop || syscall || eret || mfc0 || mtc0);

    wire do_timer = (outC >= `TIMER_LO_1 && outC <= `TIMER_HI_1) || (outC >= `TIMER_LO_0 && outC <= `TIMER_HI_0);
    
    wire range_out = !((outC >= `DATAMEM_LO && outC <= `DATAMEM_HI) || do_timer || (outC >= `INTER_LO && outC <= `INTER_HI));

    wire save_count = do_timer && (outC[3:2] == 2'b10);
    
    always @(*) begin
        T_EXCode = 5'd0;
        if (EXCode != 5'd0)
            T_EXCode = EXCode;
        else begin
            if (ri) 
                T_EXCode = `EXC_RI;
            else if (syscall)
                T_EXCode = `EXC_SYSCALL;
            else if (Overflow && (add || addi || sub))
                T_EXCode = `EXC_OVERFLOW;
            else begin      
                if (lw && outC[1:0] != 2'b00)
                    T_EXCode = `EXC_ADEL;
                else if (lh && outC[0] != 1'b0)
                    T_EXCode = `EXC_ADEL;
                else if ((lh || lb) && do_timer)
                    T_EXCode = `EXC_ADEL;
                else if (load && Overflow)
                    T_EXCode = `EXC_ADEL;
                else if (load && range_out)
                    T_EXCode = `EXC_ADEL;

                if (sw && outC[1:0] != 2'b00)
                    T_EXCode = `EXC_ADES;
                else if(sh && outC[0] != 1'b0)
                    T_EXCode = `EXC_ADES;
                else if((sh || sb) && do_timer)
                    T_EXCode = `EXC_ADES;
                else if (store && Overflow)
                    T_EXCode = `EXC_ADES;
                else if (store && range_out)
                    T_EXCode = `EXC_ADES;
                else if (store && save_count)
                    T_EXCode = `EXC_ADES;
            end
        end
    end
endmodule
