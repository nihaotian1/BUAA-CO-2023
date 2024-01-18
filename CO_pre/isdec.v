`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:39 08/17/2023 
// Design Name: 
// Module Name:    isdec 
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
module isdec(
    input [7:0] in,
    output out
    );

assign out = (in >= "0" && in <= "9") ? 1 : 0;

endmodule
