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
    input stall,
    input [31:0] npc,
    output [31:0] pc,
    output [31:0] Instr
    );
    reg [31:0] IM [0:4095]; // attetion : must use 0:4095 but not inversed version
    reg [31:0] pc_reg; // only cares [13:2] !!!

    wire [11:0] IMaddr = pc_reg[13:2];
    
    integer i;
    initial begin
        for (i = 0; i < 4096; i = i + 1)
            IM[i] = 32'h0000_0000;
        $readmemh("code.txt", IM);
        pc_reg = 32'h0000_0000;
    end

    always @(posedge clk) begin
        if(reset == 1'b1) 
            pc_reg <= 32'h0000_0000;
        else if (stall || npc > 32'h0000_6fff)
            pc_reg <= pc_reg;
        else    
            pc_reg <= npc - 32'h0000_3000;
    end

    assign pc = pc_reg + 32'h0000_3000;
    assign Instr = IM[IMaddr];

endmodule
