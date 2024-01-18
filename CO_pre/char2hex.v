`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:55 08/18/2023 
// Design Name: 
// Module Name:    char2hex 
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
module char2hex(
    input [7:0] char,
    output [3:0] hex
    );
wire [7:0] base = "0";
wire [7:0] alpha = "a";
wire [7:0] dec = (char >= "0" && char <= "9") ? char - base :
                 (char >= "a" && char <= "f") ? (char - alpha + 10) : 8'h00;  // 这里忘记了+10

assign hex = dec[3:0];

endmodule
