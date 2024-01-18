`timescale 1ns / 1ps
`include "head.v"
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
    wire stall;
    wire [1:0] D_RT_SEL;
    wire [1:0] D_RS_SEL;
    wire [1:0] E_RS_SEL;
    wire [1:0] E_RT_SEL;
    wire [1:0] M_RT_SEL;

    wire [31:0] pc_F;
    wire [31:0] npc_F;
    wire [31:0] Instr_F;    
    
    wire [31:0] Instr_D;
    wire [31:0] pc_D;
    wire [4:0] rs_D = Instr_D[25:21];
    wire [4:0] rt_D = Instr_D[20:16];
    wire [15:0] Imm16_D;
    wire [25:0] Imm26_D;
    wire [1:0] NPCOp;
    wire [31:0] pc4;
    wire [31:0] RD1_D;
    wire [31:0] RD2_D;
    wire [31:0] T_RD1_D;
    wire [31:0] T_RD2_D;
    wire [1:0] EXTOp;
    wire [31:0] ExtImm_D;
    wire [31:0] C1;    
    wire [31:0] C2;
    wire [2:0] CMPOp;
    wire Cond;
    wire [3:0] Tuse_RS;
    wire [3:0] Tuse_RT;
    
    wire [31:0] Instr_E;
    wire [4:0] rs_E = Instr_E[25:21];
    wire [4:0] rt_E = Instr_E[20:16];
    wire [4:0] rd_E = Instr_E[15:11];
    wire [31:0] pc_E;
    wire [31:0] pc4_E;
    wire [31:0] RD1_E;
    wire [31:0] RD2_E;
    wire [31:0] T_RD1_E;
    wire [31:0] T_RD2_E;
    wire [31:0] ExtImm_E;
    wire [4:0] ALUOp;
    wire [31:0] srcA;
    wire [31:0] srcB;
    wire [31:0] outC_E;
    wire ALUSrc;
    wire [1:0] RegDst_E;
    wire [1:0] RegSrc_E;
    wire [4:0] RegAddr_E; 
    wire RegWrite_E;
    wire [31:0] RegData_E;
    wire [3:0] Tnew_E;

    wire [31:0] Instr_M;
    wire [4:0] rt_M = Instr_M[20:16];
    wire [4:0] rd_M = Instr_M[15:11];
    wire [31:0] pc_M;
    wire [31:0] pc4_M;
    wire [31:0] RD2_M;
    wire [31:0] T_RD2_M;
    wire [31:0] outC_M;
    wire MemWrite;
    wire [31:0] MemData;
    wire [31:0] MemAddr;
    wire [31:0] ReadData_M;
    wire [1:0] RegDst_M;
    wire [1:0] RegSrc_M;
    wire [4:0] RegAddr_M;
    wire [31:0] RegData_M;
    wire RegWrite_M;
    wire [3:0] Tnew_M;

    wire [31:0] Instr_W;
    wire [4:0] rt_W = Instr_W[20:16];
    wire [4:0] rd_W = Instr_W[15:11];
    wire [31:0] pc_W;
    wire [31:0] pc4_W;
    wire [31:0] outC_W;
    wire [31:0] ReadData_W;
    wire RegWrite_W;
    wire [1:0] RegSrc_W;
    wire [1:0] RegDst_W;
    wire [4:0] RegAddr_W;    
    wire [31:0] RegData_W;
    wire [3:0] Tnew_W;
    
    assign C1 = T_RD1_D;
    assign C2 = T_RD2_D;

    assign srcA = T_RD1_E;
    assign srcB = (ALUSrc == 1'b1) ? ExtImm_E : T_RD2_E;

    // RegAddr_E
    assign RegAddr_E =  (RegDst_E == `RD_rd) ? rd_E :
                        (RegDst_E == `RD_rt) ? rt_E :
                        (RegDst_E == `RD_ra) ? 5'h1f : 5'h00;

    assign RegData_E =  (RegSrc_E == `RS_ALU_c) ? ExtImm_E : // LUI-Imm
                        (RegSrc_E == `RS_NPC_pc4) ? pc4_E : 5'h00;

    // RegAddr_W
    assign RegAddr_W =  (RegDst_W == `RD_rd) ? rd_W :
                        (RegDst_W == `RD_rt) ? rt_W :
                        (RegDst_W == `RD_ra) ? 5'h1f : 5'h00;

    // W_SRCMUX
    assign RegData_W =  (RegSrc_W == `RS_ALU_c) ? outC_W :
                        (RegSrc_W == `RS_DM_RD) ? ReadData_W :
                        (RegSrc_W == `RS_NPC_pc4) ? pc4_W : 32'h0000_0000;

    assign MemData = T_RD2_M;
    assign MemAddr = outC_M;


    // RegAddr_M
    assign RegAddr_M =  (RegDst_M == `RD_rd) ? rd_M :
                        (RegDst_M == `RD_rt) ? rt_M :
                        (RegDst_M == `RD_ra) ? 5'h1f : 5'h00;

    // M_SRCMUX
    assign RegData_M =  (RegSrc_M == `RS_ALU_c) ? outC_M :
                        (RegSrc_M == `RS_DM_RD) ? ReadData_M :
                        (RegSrc_M == `RS_NPC_pc4) ? pc4_M : 32'h0000_0000;

    // Receiver
    // D_RS
    assign T_RD1_D =    (D_RS_SEL == `E2D) ? RegData_E :
                        (D_RS_SEL == `M2D) ? RegData_M :
                        (D_RS_SEL == `D2D) ? RD1_D : 32'd0;
    // D_RT
    assign T_RD2_D =    (D_RT_SEL == `E2D) ? RegData_E : 
                        (D_RT_SEL == `M2D) ? RegData_M :
                        (D_RT_SEL == `D2D) ? RD2_D : 32'd0;
    // E_RS
    assign T_RD1_E =    (E_RS_SEL == `M2E) ? RegData_M :
                        (E_RS_SEL == `W2E) ? RegData_W :
                        (E_RS_SEL == `E2E) ? RD1_E : 32'd0;
    // E_RT                    
    assign T_RD2_E =    (E_RT_SEL == `M2E) ? RegData_M :
                        (E_RT_SEL == `W2E) ? RegData_W :
                        (E_RT_SEL == `E2E) ? RD2_E : 32'd0;
    // M_RT
    assign T_RD2_M =    (M_RT_SEL == `W2M) ? RegData_W :
                        (M_RT_SEL == `M2M) ? RD2_M : 32'd0;

    MFSCU myMFSCU(
        .rs_D(rs_D),
        .rt_D(rt_D),
        .rs_E(rs_E),
        .rt_E(rt_E),
        .RegAddr_E(RegAddr_E),
        .RegWrite_E(RegWrite_E),
        .rt_M(rt_M),
        .RegAddr_M(RegAddr_M),
        .RegWrite_M(RegWrite_M),
        .RegAddr_W(RegAddr_W),
        .RegWrite_W(RegWrite_W),
        .Tuse_RS(Tuse_RS),
        .Tuse_RT(Tuse_RT),
        .Tnew_E(Tnew_E),
        .Tnew_M(Tnew_M),
        .Tnew_W(Tnew_W),
        .D_RS_SEL(D_RS_SEL),
        .D_RT_SEL(D_RT_SEL),
        .E_RS_SEL(E_RS_SEL),
        .E_RT_SEL(E_RT_SEL),
        .M_RT_SEL(M_RT_SEL),
        .stall(stall)
    );

    // Fetch
    IFU myIFU(
        .clk(clk),
        .reset(reset),
        .stall(stall),
        .npc(npc_F),
        .pc(pc_F),
        .Instr(Instr_F)
    );
    

    // Decode
    D myD(
        .clk(clk),
        .reset(reset),
        .stall(stall),
        .Instr_F(Instr_F),
        .pc_F(pc_F),
        .Cond(Cond),
        .Instr_D(Instr_D),
        .pc_D(pc_D),
        .Imm16_D(Imm16_D),
        .Imm26_D(Imm26_D)
    );

    Controller D_CU(
        .Instr(Instr_D),
        .Cond(Cond),
        .NPCOp(NPCOp),
        .EXTOp(EXTOp),
        .CMPOp(CMPOp),
        .Tuse_RS(Tuse_RS),
        .Tuse_RT(Tuse_RT)
    );

    NPC myNPC(
        .NPCOp(NPCOp),
        .Imm16(Imm16_D),
        .Imm26(Imm26_D),
        .Addr(T_RD1_D),
        .pc_F(pc_F),
        .pc_D(pc_D),
        .npc(npc_F),
        .pc4(pc4)
    );

    GRF myGRF(
        .clk(clk),
        .reset(reset),
        .RegWrite(RegWrite_W),
        .A1(rs_D),
        .A2(rt_D),
        .RegAddr(RegAddr_W),
        .RegData(RegData_W),
        .pc(pc_W),
        .RD1(RD1_D),
        .RD2(RD2_D)
    );

    EXT myEXT(
        .EXTOp(EXTOp),
        .Imm16(Imm16_D),
        .ExtImm(ExtImm_D)
    );

    CMP myCMP(
        .CMPOp(CMPOp),
        .C1(C1),
        .C2(C2),
        .Cond(Cond)
    );


    // Execute
    E myE(
        .clk(clk),
        .reset(reset),
        .stall(stall),
        .Instr_D(Instr_D),
        .pc_D(pc_D),
        .RD1(T_RD1_D),
        .RD2(T_RD2_D),
        .pc4(pc4),
        .ExtImm(ExtImm_D),
        .Instr_E(Instr_E),
        .pc_E(pc_E),
        .pc4_E(pc4_E),
        .RD1_E(RD1_E),
        .RD2_E(RD2_E),
        .ExtImm_E(ExtImm_E)
    );

    Controller E_CU(
        .Instr(Instr_E),
        .Cond(1'b0),
        .ALUOp(ALUOp),
        .ALUSrc(ALUSrc),
        .RegDst(RegDst_E),
        .RegSrc(RegSrc_E),
        .RegWrite(RegWrite_E),
        .Tnew(Tnew_E)
    );

    ALU myALU(
        .ALUOp(ALUOp),
        .srcA(srcA),
        .srcB(srcB),
        .outC(outC_E)
    );


    // Memory    
    M myM(
        .clk(clk),
        .reset(reset),
        .Instr_E(Instr_E),
        .pc_E(pc_E),
        .pc4_E(pc4_E),
        .RD2_E(T_RD2_E),
        .outC_E(outC_E),
        .Tnew_E(Tnew_E),
        .Instr_M(Instr_M),
        .pc_M(pc_M),
        .pc4_M(pc4_M),
        .RD2_M(RD2_M),
        .outC_M(outC_M),
        .Tnew_M(Tnew_M)
    );
    

    Controller M_CU(
        .Instr(Instr_M),
        .Cond(1'b0),
        .MemWrite(MemWrite),
        .RegDst(RegDst_M),
        .RegSrc(RegSrc_M),
        .RegWrite(RegWrite_M)
    );

    DM myDM(
        .clk(clk),
        .reset(reset),
        .MemWrite(MemWrite),
        .MemData(MemData),
        .MemAddr(MemAddr),
        .pc(pc_M),
        .ReadData(ReadData_M)
    );


    // Write
    W myW(
        .clk(clk),
        .reset(reset),
        .Instr_M(Instr_M),
        .pc_M(pc_M),
        .pc4_M(pc4_M),
        .outC_M(outC_M),
        .ReadData_M(ReadData_M),
        .Tnew_M(Tnew_M),
        .Instr_W(Instr_W),
        .pc_W(pc_W),
        .pc4_W(pc4_W),
        .ReadData_W(ReadData_W),
        .outC_W(outC_W),
        .Tnew_W(Tnew_W)
    );

    Controller W_CU(
        .Instr(Instr_W),
        .Cond(1'b0),
        .RegWrite(RegWrite_W),
        .RegDst(RegDst_W),
        .RegSrc(RegSrc_W)
    );

endmodule
