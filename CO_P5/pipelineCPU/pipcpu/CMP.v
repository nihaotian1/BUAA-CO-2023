`timescale 1ns / 1ps

`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:50 11/09/2023 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] C1,
    input [31:0] C2,
    input [2:0] CMPOp,
    output Cond
    );

    assign Cond = (CMPOp == `CMP_beq) ? (C1 == C2) : 1'b0;

endmodule
