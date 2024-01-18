`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:52 08/18/2023 
// Design Name: 
// Module Name:    addrcheck 
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
module addrcheck(
    input [31:0] addr,
    output res
    );

assign res = (addr > 32'h00002fff) ? 1 :
            (addr[1:0] == 1'b00) ? 0 : 1;

endmodule
