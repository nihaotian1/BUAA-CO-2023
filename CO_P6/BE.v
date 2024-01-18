`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:41 11/18/2023 
// Design Name: 
// Module Name:    BE 
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
module BE(
    input MemWrite,
    input [31:0] MemAddr,
    // input [31:0] ReadData,
    input [31:0] MemData,
    input [1:0] BEOp,
    output reg [31:0] StoreData,
    output reg [3:0] ByteWrite
    );

    wire [3:0] WriteEN = {4{MemWrite}};

    always @(*) begin
        ByteWrite = 4'b0000;
        StoreData = 32'h0000_0000;
        if(BEOp == `BE_SW) begin
           ByteWrite = 4'b1111 & WriteEN;
           StoreData = MemData; 
        end
        else if(BEOp == `BE_SH) begin
            if (MemAddr[1] == 1'b0) begin
                ByteWrite = 4'b0011 & WriteEN;
                StoreData = {16'h0000, MemData[15:0]};
            end
            else begin
                ByteWrite = 4'b1100 & WriteEN;
                StoreData = {MemData[15:0], 16'h0000};
            end
        end
        else if(BEOp == `BE_SB) begin
            if (MemAddr[1:0] == 2'b00) begin
                ByteWrite = 4'b0001 & WriteEN;
                StoreData = {24'h00_0000, MemData[7:0]};
            end
            else if(MemAddr[1:0] == 2'b01) begin
                ByteWrite = 4'b0010 & WriteEN;
                StoreData = {16'h0000, MemData[7:0], 8'h00};
            end
            else if(MemAddr[1:0] == 2'b10) begin
                ByteWrite = 4'b0100 & WriteEN;
                StoreData = {8'h00, MemData[7:0], 16'h0000};
            end
            else begin
                ByteWrite = 4'b1000 & WriteEN;
                StoreData = {MemData[7:0], 24'h00_0000};
            end
        end
    end

endmodule
