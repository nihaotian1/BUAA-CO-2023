`timescale 1ns / 1ps
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
    input [2:0] ALUOp,
    output reg [31:0] outC,
    output [3:0] ALUsig
    );
    always @(*) begin
        case(ALUOp)
        3'b000:
            outC = srcA + srcB;

        3'b001:
            outC = srcA - srcB;
        
        3'b010:
            outC = srcA | srcB;
        
        3'b011:
            outC = srcB << 16;

        default:
            outC = 32'h0000_0000;
        endcase
    end

    wire sig0 = (srcA == srcB);
    wire sig1 = 1'b0;
    wire sig2 = 1'b0;
    wire sig3 = 1'b0;

    assign ALUsig = {sig3, sig2, sig1, sig0};
endmodule
