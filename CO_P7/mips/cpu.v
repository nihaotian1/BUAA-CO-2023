`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:35:22 11/30/2023 
// Design Name: 
// Module Name:    cpu 
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
module cpu(
    input clk,
    input reset,
    input [5:0] HWInt,            // new
    output [31:0] macroscopic_pc, // new

    input [31:0] i_inst_rdata,
    output [31:0] i_inst_addr,

    output [31:0] m_data_addr,
    input [31:0] m_data_rdata,
    output [3:0] m_data_byteen,
    output [31:0] m_data_wdata,
    output [31:0] m_inst_addr,

    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
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
    wire [2:0] NPCOp;
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
    wire [2:0] RegSrc_E;
    wire [4:0] RegAddr_E; 
    wire RegWrite_E;
    wire [31:0] RegData_E;
    wire Start_E;
    wire [2:0] MDOp_E;
    wire MDsel_E;
    wire [31:0] MD1_E;
    wire [31:0] MD2_E;
    wire Busy;
    wire [31:0] MDout_E;
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
    wire [1:0] BEOp_M;
    wire [2:0] DPOp_M;
    wire [31:0] MemData;
    wire [31:0] MemAddr;
    wire [31:0] ReadData_M;
    wire [1:0] RegDst_M;
    wire [2:0] RegSrc_M;
    wire [4:0] RegAddr_M;
    wire [31:0] RegData_M;
    wire RegWrite_M;
    wire [3:0] Tnew_M;
    wire [31:0] MDout_M;
    wire [31:0] StoreData_M;
    wire [31:0] LoadData_M;
    wire [3:0] ByteWrite_M;
    wire [31:0] CPOut_M;

    wire [31:0] Instr_W;
    wire [4:0] rt_W = Instr_W[20:16];
    wire [4:0] rd_W = Instr_W[15:11];
    wire [31:0] pc_W;
    wire [31:0] pc4_W;
    wire [31:0] outC_W;
    wire [31:0] MDout_W;
    wire [31:0] LoadData_W;
    wire RegWrite_W;
    wire [2:0] RegSrc_W;
    wire [1:0] RegDst_W;
    wire [4:0] RegAddr_W;
    wire [31:0] RegData_W;
    wire [3:0] Tnew_W;
    wire [31:0] CPOut_W;

    wire Req;
    wire PC_EXC_F;
    wire PC_EXC_D;
    wire PC_EXC_E;
    wire PC_EXC_M;

    wire Overflow;

    wire flush_D;
    wire eret_D;

    wire ISDB_F;
    wire ISDB_D;
    wire ISDB_E;
    wire ISDB_M;

    wire EXClr;
    wire [31:0] EPCOut;

    wire [4:0] EXCode_F;
    wire [4:0] EXCode_D;
    wire [4:0] EXCode_E;
    wire [4:0] EXCode_M;
    wire [4:0] T_EXCode_D;
    wire [4:0] T_EXCode_E;
    wire [4:0] T_EXCode_M;
    
    assign C1 = T_RD1_D;
    assign C2 = T_RD2_D;

    assign MD1_E = T_RD1_E;
    assign MD2_E = T_RD2_E;

    assign srcA = T_RD1_E;
    assign srcB = (ALUSrc == 1'b1) ? ExtImm_E : T_RD2_E;

    /**
    * Source MUX of MoveForward
    */
    // RegAddr_E
    assign RegAddr_E =  (RegDst_E == `RD_rd) ? rd_E :
                        (RegDst_E == `RD_rt) ? rt_E :
                        (RegDst_E == `RD_ra) ? 5'h1f : 5'h00;

    assign RegData_E =  (RegSrc_E == `RS_ALU_C)   ? ExtImm_E : // LUI-Imm E_already generated
                        (RegSrc_E == `RS_NPC_PC4) ? pc4_E : 5'h00;

    // RegAddr_M
    assign RegAddr_M =  (RegDst_M == `RD_rd) ? rd_M :
                        (RegDst_M == `RD_rt) ? rt_M :
                        (RegDst_M == `RD_ra) ? 5'h1f : 5'h00;

    // M_SRCMUX
    assign RegData_M =  (RegSrc_M == `RS_ALU_C)   ? outC_M : 
                        (RegSrc_M == `RS_NPC_PC4) ? pc4_M  :
                        (RegSrc_M == `RS_MD)      ? MDout_M : 32'h0000_0000;

    // RegAddr_W
    assign RegAddr_W =  (RegDst_W == `RD_rd) ? rd_W :
                        (RegDst_W == `RD_rt) ? rt_W :
                        (RegDst_W == `RD_ra) ? 5'h1f : 5'h00;

    // W_SRCMUX
    assign RegData_W =  (RegSrc_W == `RS_ALU_C)   ? outC_W :
                        (RegSrc_W == `RS_DM_RD)   ? LoadData_W :
                        (RegSrc_W == `RS_NPC_PC4) ? pc4_W :
                        (RegSrc_W == `RS_MD)      ? MDout_W :
                        (RegSrc_W == `RS_CPOUT)   ? CPOut_W : 32'h0000_0000;

    assign MemData = T_RD2_M;
    assign MemAddr = outC_M;

    /**
    * Receiver MUX of MoveForward
    */
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


    // MoveForward for EPC
    // D: eret E: mtc0 M: mtc0
    wire CPWrite_M;
    wire CPWrite_E;

    // EPC = 5'd14
    wire [31:0] T_EPC = (CPWrite_E && rd_E == 5'd14) ? T_RD2_E :
                        (CPWrite_M && rd_M == 5'd14) ? T_RD2_M : EPCOut;


    /*
    *   Realize MoveForward & Stall Controller
    */
    MFSCU myMFSCU(
        .EXCode_D(EXCode_D),
        .Instr_D(Instr_D),
        .Instr_E(Instr_E),
        .Instr_M(Instr_M),
        .RegAddr_E(RegAddr_E),
        .RegWrite_E(RegWrite_E),
        .RegAddr_M(RegAddr_M),
        .RegWrite_M(RegWrite_M),
        .RegAddr_W(RegAddr_W),
        .RegWrite_W(RegWrite_W),
        .Start(Start_E),
        .Busy(Busy),
        .eret_D(eret_D),
        .CPWrite_E(CPWrite_E),
        .CPWrite_M(CPWrite_M),
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


    /*
    * Fetch Stage, include:
    *   IFU
    */
    IFU myIFU(
        .clk(clk),
        .reset(reset),
        .Req(Req),
        .stall(stall),
        .npc(npc_F),
        .pc(pc_F)
    );
    

    /*
    * Decode Stage, include:
    *   D_REG
    *   D_CU
    *   NPC
    *   GRF
    *   EXT
    *   CMP
    */
    D myD(
        .clk(clk),
        .reset(reset),
        .Req(Req),
        .flush_D(flush_D),
        .stall(stall),
        .ISDB_F(ISDB_F),
        .Instr_F(Instr_F),
        .pc_F(pc_F),
        .EXCode_F(EXCode_F),
        .Instr_D(Instr_D),
        .pc_D(pc_D),
        .Imm16_D(Imm16_D),
        .Imm26_D(Imm26_D),
        .ISDB_D(ISDB_D),
        .EXCode_D(EXCode_D)
    );

    Controller D_CU(
        .Instr(Instr_D),
        .outC(32'd0),
        .EXCode(EXCode_D),
        .Overflow(1'b0),
        .Cond(Cond),
        .NPCOp(NPCOp),
        .EXTOp(EXTOp),
        .CMPOp(CMPOp),
        .Tuse_RS(Tuse_RS),
        .Tuse_RT(Tuse_RT),
        .ISDB_F(ISDB_F),
        .flush_D(flush_D),
        .T_EXCode(T_EXCode_D),
        .Eret(eret_D)
    );

    NPC myNPC(
        .Req(Req),
        .EPC(T_EPC),
        .NPCOp(NPCOp),
        .Imm16(Imm16_D),
        .Imm26(Imm26_D),
        .Addr(T_RD1_D),
        .pc_F(pc_F),
        .pc_D(pc_D),
        .npc(npc_F),
        .pc4(pc4),
        .EXCode_F(EXCode_F)
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


    /*
    * Execution Stage, include:
    *   E_REG
    *   E_CU
    *   ALU
    *   MD
    */
    E myE(
        .clk(clk),
        .reset(reset),
        .Req(Req),
        .stall(stall),
        .ISDB_D(ISDB_D),
        .T_EXCode_D(T_EXCode_D),
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
        .ExtImm_E(ExtImm_E),
        .ISDB_E(ISDB_E),
        .EXCode_E(EXCode_E)
    );
    
    wire MDWrite;

    Controller E_CU(
        .Instr(Instr_E),
        .outC(outC_E),
        .EXCode(EXCode_E),
        .Overflow(Overflow),
        .Cond(1'b0),
        .ALUOp(ALUOp),
        .ALUSrc(ALUSrc),
        .MDOp(MDOp_E),
        .Start(Start_E),
        .MDSel(MDsel_E),
        .RegDst(RegDst_E),
        .RegSrc(RegSrc_E),
        .RegWrite(RegWrite_E),
        .Tnew(Tnew_E),
        .MDWrite(MDWrite),
        .CPWrite(CPWrite_E),
        .T_EXCode(T_EXCode_E)
    );

    ALU myALU(
        .ALUOp(ALUOp),
        .srcA(srcA),
        .srcB(srcB),
        .outC(outC_E),
        .Overflow(Overflow)
    );

    MultDiv myMD(
        .clk(clk),
        .Req(Req),
        .reset(reset),
        .Start(Start_E),
        .MDWrite(MDWrite),
        .MDOp(MDOp_E),
        .MDsel(MDsel_E),
        .MD1(MD1_E),
        .MD2(MD2_E),
        .Busy(Busy),
        .MDout(MDout_E) 
    );


    /*
    * Memory Stage, include:
    *   M_REG
    *   M_CU
    *   BE
    *   DP
    *   CP0
    */  
    M myM(
        .clk(clk),
        .reset(reset),
        .Req(Req),
        .ISDB_E(ISDB_E),
        .T_EXCode_E(T_EXCode_E),
        .Instr_E(Instr_E),
        .pc_E(pc_E),
        .pc4_E(pc4_E),
        .RD2_E(T_RD2_E),
        .outC_E(outC_E),
        .MDout_E(MDout_E),
        .Tnew_E(Tnew_E),
        .Instr_M(Instr_M),
        .pc_M(pc_M),
        .pc4_M(pc4_M),
        .RD2_M(RD2_M),
        .outC_M(outC_M),
        .MDout_M(MDout_M),
        .Tnew_M(Tnew_M),
        .ISDB_M(ISDB_M),
        .EXCode_M(EXCode_M)
    );
    
    Controller M_CU(
        .Instr(Instr_M),
        .outC(32'd0),
        .EXCode(EXCode_M),
        .Overflow(1'b0),
        .Cond(1'b0),
        .MemWrite(MemWrite),
        .RegDst(RegDst_M),
        .RegSrc(RegSrc_M),
        .RegWrite(RegWrite_M),
        .BEOp(BEOp_M),
        .DPOp(DPOp_M),
        .CPWrite(CPWrite_M),
        .EXClr(EXClr),
        .T_EXCode(T_EXCode_M)                 
    );

    BE myBE(
        .Req(Req),
        .MemWrite(MemWrite),
        .MemAddr(MemAddr),
        .MemData(MemData),
        .BEOp(BEOp_M),
        .StoreData(StoreData_M),
        .ByteWrite(ByteWrite_M)
    );

    DP myDP(
        .DPOp(DPOp_M),
        .ReadData(ReadData_M),
        .MemAddr(MemAddr),
        .LoadData(LoadData_M)
    );

    CP0 myCP0(
        .clk(clk),
        .reset(reset),
        .CPWrite(CPWrite_M),
        .VPC(pc_M),
        .CPAddr(rd_M),
        .CPIn(T_RD2_M),
        .ISDB(ISDB_M),
        .EXCode(T_EXCode_M),
        .HWInt(HWInt),
        .EXClr(EXClr),
        .EPCout(EPCOut),
        .CPout(CPOut_M),
        .Req(Req)
    );


    /*
    * Write Stage, include:
    *   W_REG
    *   W_CU
    *   GRF
    */  
    W myW(
        .clk(clk),
        .reset(reset),
        .Req(Req),
        .Instr_M(Instr_M),
        .pc_M(pc_M),
        .pc4_M(pc4_M),
        .outC_M(outC_M),
        .MDout_M(MDout_M),
        .LoadData_M(LoadData_M),
        .Tnew_M(Tnew_M),
        .CPOut_M(CPOut_M),
        .Instr_W(Instr_W),
        .pc_W(pc_W),
        .pc4_W(pc4_W),
        .LoadData_W(LoadData_W),
        .outC_W(outC_W),
        .MDout_W(MDout_W),
        .Tnew_W(Tnew_W),
        .CPOut_W(CPOut_W)
    );

    Controller W_CU(
        .Instr(Instr_W),
        .outC(32'd0),
        .EXCode(5'd0),
        .Overflow(1'b0),
        .Cond(1'b0),
        .RegWrite(RegWrite_W),
        .RegDst(RegDst_W),
        .RegSrc(RegSrc_W)
    );


    /*
    * Deal with System I/O
    */
    // output [31:0] i_inst_addr,
    // output [31:0] m_data_addr,
    // output [31:0] m_data_wdata,
    // output [3:0] m_data_byteen,
    // output [31:0] m_inst_addr,
    // output w_grf_we,
    // output [4:0] w_grf_addr,
    // output [31:0] w_grf_wdata,
    // output [31:0] w_inst_addr

    // IN
    assign Instr_F = i_inst_rdata;
    assign ReadData_M = m_data_rdata;

    // OUT
    assign macroscopic_pc = pc_M;

    assign i_inst_addr = pc_F;
    assign m_data_addr = {MemAddr[31:2], 2'b00};
    assign m_data_wdata = StoreData_M;
    assign m_data_byteen = ByteWrite_M;
    assign m_inst_addr = pc_M;
    assign w_grf_we = RegWrite_W;
    assign w_grf_addr = RegAddr_W;
    assign w_grf_wdata = RegData_W;
    assign w_inst_addr = pc_W;

endmodule
