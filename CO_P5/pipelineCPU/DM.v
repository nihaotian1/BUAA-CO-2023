`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:16 11/01/2023 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input clk,
    input reset,
    input MemWrite,
    input [31:0] MemAddr,
    input [31:0] MemData,
    input [31:0] pc,
    output [31:0] ReadData
    );

    reg [31:0] mem [0:3071];
    wire [11:0] addr = MemAddr[13:2];
    integer i;
    
    initial begin
        for (i = 0; i < 3072; i = i + 1) begin
            mem[i] <= 32'h0000_0000;
        end
    end

    always @(posedge clk) begin
        if(reset == 1'b1) begin
            for (i = 0; i < 3072; i = i + 1) begin
                mem[i] <= 32'h0000_0000;
            end
        end
        else if(MemWrite == 1'b1) begin
            mem[addr] <= MemData;
            $display("%d@%h: *%h <= %h", $time, pc, MemAddr, MemData);
        end
    end

    assign ReadData = mem[addr];

endmodule
