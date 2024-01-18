`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:56 11/01/2023 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input clk,
    input reset,
    input RegWrite,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] RegAddr,
    input [31:0] RegData,
    input [31:0] pc,
    output [31:0] RD1,
    output [31:0] RD2
    );

    reg [31:0] mem [0:31];
    integer i;

    initial begin
        for(i = 0; i < 32; i = i + 1) begin
            mem[i] <= 32'h0000_0000;
        end
    end

    always @(posedge clk) begin
        if(reset == 1'b1) begin
            for(i = 0; i < 32; i = i + 1) begin
                mem[i] <= 32'h0000_0000;
            end
        end
        else begin
            if (RegWrite == 1'b1) begin
                if (RegAddr == 5'h00) begin // reg 0 can't write in
                    // should we print???
                    // $display("@%h: $%d <= %h", pc, RegAddr, 32'h0000_0000);
                end
                else begin
                    mem[RegAddr] <= RegData; // others maintain
                    $display("@%h: $%d <= %h", pc, RegAddr, RegData);
                end
            end
        end
    end

    assign RD1 = mem[A1];
    assign RD2 = mem[A2];

endmodule