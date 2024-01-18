`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:13 11/01/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] srcA,
    input [31:0] srcB,
    input [4:0] ALUOp,
    output reg [31:0] outC
    );
    always @(*) begin
        case(ALUOp)
        `ALU_add:
            outC = srcA + srcB;

        `ALU_sub:
            outC = srcA - srcB;
        
        `ALU_or:
            outC = srcA | srcB;
        
        `ALU_lui:
            outC = srcB;

        default:
            outC = 32'h0000_0000;
        endcase
    end

endmodule
