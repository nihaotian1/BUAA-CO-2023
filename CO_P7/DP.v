`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:28 11/18/2023 
// Design Name: 
// Module Name:    DP 
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
module DP(
    input [2:0] DPOp,
    input [31:0] ReadData,
    input [31:0] MemAddr,
    output reg [31:0] LoadData
    );

    wire [1:0] Addr = MemAddr[1:0];

    always @(*) begin
        LoadData = 32'h0000_0000;
        if(DPOp == `DP_LW) begin
            LoadData = ReadData;
        end
        else if (DPOp == `DP_LH) begin
            if (Addr[1] == 1'b0)
                LoadData = {{16{ReadData[15]}}, ReadData[15:0]};
            else
                LoadData = {{16{ReadData[31]}}, ReadData[31:16]};
        end
        else if (DPOp == `DP_LB) begin
            if(Addr == 2'b00)
                LoadData = {{24{ReadData[7]}}, ReadData[7:0]};
            else if(Addr == 2'b01)
                LoadData = {{24{ReadData[15]}}, ReadData[15:8]};
            else if(Addr == 2'b10)
                LoadData = {{24{ReadData[23]}}, ReadData[23:16]};
            else if(Addr == 2'b11)
                LoadData = {{24{ReadData[31]}}, ReadData[31:24]}; 
        end
    end

endmodule
