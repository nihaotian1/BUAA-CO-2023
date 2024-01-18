`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:32:40 09/06/2023 
// Design Name: 
// Module Name:    test 
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
module test(
    output [2:0] judge
    );
    assign judge[0] = (1 > 4'hf) ? 1 : 0;
    assign judge[1] = (1 > 4'shf) ? 1 : 0;
    assign judge[2] = (1 > $signed(4'hf)) ? 1 : 0;
endmodule
