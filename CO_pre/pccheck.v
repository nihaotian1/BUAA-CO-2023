`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:21 08/18/2023 
// Design Name: 
// Module Name:    pccheck 
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
module pccheck(
    input [31:0] pc,
    output res
    );
assign res = (pc < 32'h0000_3000 || pc > 32'h0000_4fff) ? 1 :
            (pc[1:0] == 2'b00) ? 0 : 1;

endmodule
