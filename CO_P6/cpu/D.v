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
    input stall,
    input [31:0] Instr_F,
    input [31:0] pc_F,
    input Cond,
    output [31:0] Instr_D,
    output [31:0] pc_D,
    output [15:0] Imm16_D,
    output [25:0] Imm26_D
    );

    reg [31:0] Instr;
    reg [31:0] pc;

    always @(posedge clk) begin
        if(reset == 1'b1) begin
            Instr <= 32'h0000_0000;
            pc <= 32'h0000_0000;
        end
        else if(stall) begin
            Instr <= Instr;
            pc <= pc;
        end
        else begin
            Instr <= Instr_F;
            pc <= pc_F;
        end
    end

    assign Instr_D = Instr;
    assign pc_D = pc;
    assign Imm16_D = Instr[15:0];
    assign Imm26_D = Instr[25:0];
    
endmodule
