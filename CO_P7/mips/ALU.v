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
    output reg [31:0] outC,
    output reg Overflow
    );
    reg [32:0] tmp;
    always @(*) begin
        Overflow = 1'b0;
        
        case(ALUOp)
        `ALU_ADD: begin
            outC = srcA + srcB;
            tmp = {srcA[31], srcA} + {srcB[31], srcB};
            if (tmp[32] != tmp[31]) begin
                Overflow = 1'b1;
            end
        end

        `ALU_SUB: begin
            outC = srcA - srcB;
            tmp = {srcA[31], srcA} - {srcB[31], srcB};
            if (tmp[32] != tmp[31]) begin
                Overflow = 1'b1;
            end
        end
        
        `ALU_OR:
            outC = srcA | srcB;
        
        `ALU_LUI:
            outC = srcB;

        `ALU_AND:
            outC = srcA & srcB;

        `ALU_SLT:
            if ($signed(srcA) < $signed(srcB))
                outC = 32'h0000_0001;
            else
                outC = 32'h0000_0000;
        
        `ALU_SLTU:
            if (srcA < srcB)
                outC = 32'h0000_0001;
            else
                outC = 32'h0000_0000;

        default:
            outC = 32'h0000_0000;
        endcase
    end

endmodule
