`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:35 11/09/2023 
// Design Name: 
// Module Name:    EtoM 
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
module M(
    input clk,
    input reset,
    input [31:0] Instr_E,
    input [31:0] pc_E,
    input [31:0] pc4_E,
    input [31:0] RD2_E,
    input [31:0] outC_E,
    input [31:0] MDout_E,
    input [3:0] Tnew_E,
    output [31:0] Instr_M,
    output [31:0] pc_M,
    output [31:0] pc4_M,
    output [31:0] RD2_M,
    output [31:0] outC_M,
    output [31:0] MDout_M,
    output [3:0] Tnew_M
    );

    reg [31:0] Instr;
    reg [31:0] pc;
    reg [31:0] pc4;
    reg [31:0] RD2;
    reg [31:0] outC;
    reg [31:0] MDout;
    reg [3:0] Tnew;

    always @(posedge clk) begin
        if(reset == 1'b1) begin
            Instr <= 32'h0000_0000;
            pc <= 32'h0000_0000;
            pc4 <= 32'h0000_0000;
            RD2 <= 32'h0000_0000;
            outC <= 32'h0000_0000;
            MDout <= 32'h0000_0000;
            Tnew <= 4'h0;
        end
        else begin
            Instr <= Instr_E;
            pc <= pc_E;
            pc4 <= pc4_E;
            RD2 <= RD2_E;
            outC <= outC_E;
            MDout <= MDout_E;
            if (Tnew_E > 0)
                Tnew <= Tnew_E - 1;
            else
                Tnew <= 4'h0;
        end
    end

    assign Instr_M = Instr;
    assign pc_M = pc;
    assign pc4_M = pc4;
    assign RD2_M = RD2;
    assign outC_M = outC;
    assign MDout_M = MDout;
    assign Tnew_M = Tnew;
    
endmodule
