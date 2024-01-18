`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:51 11/10/2023 
// Design Name: 
// Module Name:    MFSCU 
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
module MFSCU(
    input [31:0] Instr_D,
    input [31:0] Instr_E,
    input [31:0] Instr_M,
    input [4:0] RegAddr_E,
    input RegWrite_E,
    input [4:0] RegAddr_M,
    input [4:0] RegAddr_W,
    input RegWrite_M,
    input RegWrite_W,
    input [3:0] Tuse_RS,
    input [3:0] Tuse_RT,
    input [3:0] Tnew_E,
    input [3:0] Tnew_M,
    input [3:0] Tnew_W,
    input Start,
    input Busy,
    output reg [1:0] D_RT_SEL,
    output reg [1:0] D_RS_SEL,
    output reg [1:0] E_RS_SEL,
    output reg [1:0] E_RT_SEL,
    output reg [1:0] M_RT_SEL,
    output stall
    );

    wire [4:0] rs_D = Instr_D[25:21];
    wire [4:0] rt_D = Instr_D[20:16];
    wire [4:0] rs_E = Instr_E[25:21];
    wire [4:0] rt_E = Instr_E[20:16];
    wire [4:0] rt_M = Instr_M[20:16];

    wire [5:0] Opcode_D = Instr_D[31:26];
    wire [5:0] funct_D = Instr_D[5:0];

    wire R = (Opcode_D == 6'b00_0000);

    wire MD_STALL = (Start | Busy) && R &&
                    (   funct_D == `MULT || funct_D == `MULTU || 
                        funct_D == `DIV || funct_D == `DIVU || 
                        funct_D == `MFHI || funct_D == `MFLO || 
                        funct_D == `MTHI || funct_D == `MTLO);

    always @(*) begin
        if(RegAddr_E == rs_D && RegAddr_E != 5'h00 && RegWrite_E)
            D_RS_SEL = `E2D;
        else if(RegAddr_M == rs_D && RegAddr_M != 5'h00 && RegWrite_M)
            D_RS_SEL = `M2D;
        else 
            D_RS_SEL = `D2D;

        if(RegAddr_E == rt_D && RegAddr_E != 5'h00 && RegWrite_E)
            D_RT_SEL = `E2D;
        else if(RegAddr_M == rt_D && RegAddr_M != 5'h00 && RegWrite_M)
            D_RT_SEL = `M2D;
        else 
            D_RT_SEL = `D2D;

        if(RegAddr_M == rs_E && RegAddr_M != 5'h00 && RegWrite_M)
            E_RS_SEL = `M2E;
        else if(RegAddr_W == rs_E && RegAddr_W != 5'h00 && RegWrite_W)
            E_RS_SEL = `W2E;
        else
            E_RS_SEL = `E2E;
            
        if(RegAddr_M == rt_E && RegAddr_M != 5'h00 && RegWrite_M)
            E_RT_SEL = `M2E;
        else if(RegAddr_W == rt_E && RegAddr_W != 5'h00 && RegWrite_W)
            E_RT_SEL = `W2E;
        else
            E_RT_SEL = `E2E;

        if(RegAddr_W == rt_M && RegAddr_W != 5'h00 && RegWrite_W)
            M_RT_SEL = `W2M;
        else 
            M_RT_SEL = `M2M;
    end

    // wire STALL_RS0_E1 = (Tuse_RS == 0) && (Tnew_E == 4'h1) && (RegAddr_E != 5'd0) && (RegAddr_E == rs_D) && (RegWrite_E);
    // wire STALL_RS0_E2 = (Tuse_RS == 0) && (Tnew_E == 4'h2) && (RegAddr_E != 5'd0) && (RegAddr_E == rs_D) && (RegWrite_E);
    // wire STALL_RS0_M1 = (Tuse_RS == 0) && (Tnew_M == 4'h1) && (RegAddr_M != 5'd0) && (RegAddr_M == rs_D) && (RegWrite_M);
    // wire STALL_RS1_E2 = (Tuse_RS == 1) && (Tnew_E == 4'h2) && (RegAddr_E != 5'd0) && (RegAddr_E == rs_D) && (RegWrite_E);
    
    // wire STALL_RT0_E1 = (Tuse_RT == 0) && (Tnew_E == 4'h1) && (RegAddr_E != 5'd0) && (RegAddr_E == rt_D) && (RegWrite_E);
    // wire STALL_RT0_E2 = (Tuse_RT == 0) && (Tnew_E == 4'h2) && (RegAddr_E != 5'd0) && (RegAddr_E == rt_D) && (RegWrite_E);
    // wire STALL_RT0_M1 = (Tuse_RT == 0) && (Tnew_M == 4'h1) && (RegAddr_M != 5'd0) && (RegAddr_M == rt_D) && (RegWrite_M);
    // wire STALL_RT1_E2 = (Tuse_RT == 1) && (Tnew_E == 4'h2) && (RegAddr_E != 5'd0) && (RegAddr_E == rt_D) && (RegWrite_E);

    wire STALL_RS_E = (Tuse_RS < Tnew_E) && (RegAddr_E != 5'd0) && (RegAddr_E == rs_D) && (RegWrite_E);
    wire STALL_RS_M = (Tuse_RS < Tnew_M) && (RegAddr_M != 5'd0) && (RegAddr_M == rs_D) && (RegWrite_M);
    wire STALL_RS_W = (Tuse_RS < Tnew_W) && (RegAddr_W != 5'd0) && (RegAddr_W == rs_D) && (RegWrite_W);
    
    wire STALL_RT_E = (Tuse_RT < Tnew_E) && (RegAddr_E != 5'd0) && (RegAddr_E == rt_D) && (RegWrite_E);
    wire STALL_RT_M = (Tuse_RT < Tnew_M) && (RegAddr_M != 5'd0) && (RegAddr_M == rt_D) && (RegWrite_M);
    wire STALL_RT_W = (Tuse_RT < Tnew_W) && (RegAddr_W != 5'd0) && (RegAddr_W == rt_D) && (RegWrite_W);

    wire STALL_RS = STALL_RS_E | STALL_RS_M | STALL_RS_W;
    wire STALL_RT = STALL_RT_E | STALL_RT_M | STALL_RT_W;

    assign stall = STALL_RS | STALL_RT | MD_STALL;

endmodule
