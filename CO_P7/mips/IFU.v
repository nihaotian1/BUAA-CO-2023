`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:01:43 11/01/2023 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input clk,
    input reset,
    input Req,
    input stall,
    input [31:0] npc,
    output [31:0] pc
    );
    reg [31:0] pc_reg; // only cares [13:2] !!!

    always @(posedge clk) begin
        if(reset == 1'b1) 
            pc_reg <= 32'h0000_0000;
        else if (Req) 
            pc_reg <= 32'h0000_4180 - 32'h0000_3000;
        else if (stall)
            pc_reg <= pc_reg;
        else    
            pc_reg <= npc - 32'h0000_3000;
    end

    assign pc = pc_reg + 32'h0000_3000;
endmodule
