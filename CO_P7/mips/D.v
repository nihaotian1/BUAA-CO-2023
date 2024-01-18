`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:06 11/09/2023 
// Design Name: 
// Module Name:    D 
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
module D(
    input clk,
    input reset,
    input Req,
    input flush_D,
    input stall,
    input ISDB_F,
    input [31:0] Instr_F,
    input [31:0] pc_F,
    input [4:0] EXCode_F,
    output [31:0] Instr_D,
    output [31:0] pc_D,
    output [15:0] Imm16_D,
    output [25:0] Imm26_D,
    output ISDB_D,
    output [4:0] EXCode_D
    );

    reg [31:0] Instr;
    reg [31:0] pc;
    reg isdb;
    reg [4:0] EXCode;

    always @(posedge clk) begin
        if(reset == 1'b1) begin
            Instr <= 32'h0000_0000;
            pc <= 32'h0000_3000;
            isdb <= 1'b0;
            EXCode <= 5'd0;
        end
        else if (Req) begin
            Instr <= 32'h0000_0000;
            pc <= 32'h0000_4180;
            isdb <= 1'b0;
            EXCode <= 5'd0;
        end
        else if(stall) begin
            isdb <= isdb;
            Instr <= Instr;
            pc <= pc;
            EXCode <= EXCode;
        end
        else if (flush_D) begin // use for eret
            Instr <= 32'h0000_0000;
            pc <= pc_F;         // pc same as f
            isdb <= 1'b0;       // always 0
            EXCode <= 5'd0;
        end
        else begin
            Instr <= Instr_F;
            pc <= pc_F;
            isdb <= ISDB_F;
            EXCode <= EXCode_F;
        end
    end

    assign Instr_D = Instr;
    assign pc_D = pc;
    assign Imm16_D = Instr[15:0];
    assign Imm26_D = Instr[25:0];
    assign ISDB_D = isdb;
    assign EXCode_D = EXCode;

endmodule
