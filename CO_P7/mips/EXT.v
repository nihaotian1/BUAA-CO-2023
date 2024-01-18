`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:52:05 11/01/2023 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [1:0] EXTOp,
    input [15:0] Imm16,
    output [31:0] ExtImm
    );
    
    assign ExtImm =     (EXTOp == `EXT_Z) ? {16'h0000, Imm16} : 
                        (EXTOp == `EXT_S) ? {{16{Imm16[15]}}, Imm16} :
                        (EXTOp == `EXT_LUI) ? {Imm16, 16'h0000} : 32'h0000_0000;
    
endmodule
