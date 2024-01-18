`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:49:47 10/13/2023 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );

    assign ext = (EOp == 2'b00) ? {{16{imm[15]}}, imm} :
        (EOp == 2'b01) ? {16'h0000, imm} : 
        (EOp == 2'b10) ? {imm, 16'h0000} : 
        (EOp == 2'b11) ? {{16{imm[15]}}, imm} << 2 :32'h0000_0000;
endmodule
