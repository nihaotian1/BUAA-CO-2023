`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:09 11/09/2023 
// Design Name: 
// Module Name:    DtoE 
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
module E(
    input clk,
    input reset,
    input stall,
    input [31:0] Instr_D,
    input [31:0] pc_D,
    input [31:0] RD1,
    input [31:0] RD2,
    input [31:0] pc4,
    input [31:0] ExtImm,
    output [31:0] Instr_E,
    output [31:0] pc_E,
    output [31:0] pc4_E,
    output [31:0] RD1_E,
    output [31:0] RD2_E,
    output [31:0] ExtImm_E
    );

    reg [31:0] Instr;
    reg [31:0] pc;
    reg [31:0] RD1Reg;
    reg [31:0] RD2Reg;
    reg [31:0] pc4Reg;
    reg [31:0] ExtReg;

    always @(posedge clk) begin
        if(reset == 1'b1 || stall) begin
            Instr <= 32'h0000_0000;
            pc <= 32'h0000_0000;
            RD1Reg <= 32'h0000_0000;
            RD2Reg <= 32'h0000_0000;
            pc4Reg <= 32'h0000_0000;
            ExtReg <= 32'h0000_0000;
        end
        else begin
            Instr <= Instr_D;
            pc <= pc_D;
            RD1Reg <= RD1;
            RD2Reg <= RD2;
            pc4Reg <= pc4;
            ExtReg <= ExtImm;
        end
    end

    assign Instr_E  = Instr;
    assign pc_E     = pc;
    assign RD1_E    = RD1Reg;
    assign RD2_E    = RD2Reg;
    assign pc4_E    = pc4Reg;
    assign ExtImm_E = ExtReg;

endmodule
