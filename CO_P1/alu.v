`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:22 10/13/2023 
// Design Name: 
// Module Name:    alu 
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
module alu(
    output [31:0] C,
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp
    );
    wire [31:0] tmp = $signed(A) >>> B;
    assign C = (ALUOp == 3'b000) ? A + B :
        (ALUOp == 3'b001) ? A - B :
        (ALUOp == 3'b010) ? A & B :
        (ALUOp == 3'b011) ? A | B :
        (ALUOp == 3'b100) ? A >> B :
        (ALUOp == 3'b101) ? tmp : 32'h0000_0000;
endmodule
