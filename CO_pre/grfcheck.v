`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:27 08/18/2023 
// Design Name: 
// Module Name:    grfcheck 
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
module grfcheck(
    input [15:0] grf,
    output res
    );
assign res = (grf < 16'h0020) ? 0 : 1;

endmodule
