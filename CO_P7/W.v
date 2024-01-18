`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:40:55 11/09/2023 
// Design Name: 
// Module Name:    W 
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
module W(
    input clk,
    input reset,
    input Req,
    input [31:0] Instr_M,
    input [31:0] pc_M,
    input [31:0] pc4_M,
    input [31:0] outC_M,
    input [31:0] MDout_M,
    input [31:0] LoadData_M,
    input [3:0] Tnew_M,
    input [31:0] CPOut_M,
    output [31:0] Instr_W,
    output [31:0] pc_W,
    output [31:0] pc4_W,
    output [31:0] LoadData_W,
    output [31:0] outC_W,
    output [31:0] MDout_W,
    output [3:0] Tnew_W,
    output [31:0] CPOut_W
    );

    reg [31:0] Instr;
    reg [31:0] pc;
    reg [31:0] pc4;
    reg [31:0] outC;
    reg [31:0] LoadData;
    reg [3:0] Tnew;
    reg [31:0] MDout;
    reg [31:0] CPOut;

    always @(posedge clk) begin
        if(reset | Req) begin
            Instr <= 32'h0000_0000;
            pc    <= 32'h0000_3000;
            pc4   <= 32'h0000_0000;
            outC  <= 32'h0000_0000;
            LoadData <= 32'h0000_0000;
            MDout <= 32'h0000_0000;
            Tnew  <= 4'h0;
            CPOut <= 32'h0000_0000;
        end
        else begin
            Instr <= Instr_M;
            pc    <= pc_M;
            pc4   <= pc4_M;
            outC  <= outC_M;
            LoadData <= LoadData_M;
            MDout <= MDout_M;
            CPOut <= CPOut_M;
            if (Tnew_M > 0)
                Tnew <= Tnew_M - 1;
            else
                Tnew <= 4'h0;
        end
    end

    assign Instr_W = Instr;
    assign pc_W    = pc;
    assign pc4_W   = pc4;
    assign LoadData_W = LoadData;
    assign outC_W  = outC;
    assign Tnew_W  = Tnew;
    assign MDout_W = MDout;
    assign CPOut_W = CPOut;
    
endmodule
