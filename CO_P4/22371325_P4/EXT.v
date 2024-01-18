`timescale 1ns / 1ps
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
    input EXTOp,
    input [15:0] Imm16,
    output [31:0] ExtImm
    );
    assign ExtImm = (EXTOp == 1'b0) ? {{16{1'b0}}, Imm16} : {{16{Imm16[15]}}, Imm16};
    
endmodule
