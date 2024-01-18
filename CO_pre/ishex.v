`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:44 08/17/2023 
// Design Name: 
// Module Name:    ishex 
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
module ishex(
    input [7:0] in,
    input out
    );
assign out = (in >= "0" && in <= "9") ? 1 :
            (in >= "a" && in <= "f") ? 1 : 0;

endmodule
