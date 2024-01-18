`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:48:52 11/02/2023 
// Design Name: 
// Module Name:    demo 
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
module demo(
    input clk
    );
    integer i;
    initial begin
        for(i = 0; i < 32; i = i + 1) begin
            $display("this is demo");
        end
    end


endmodule
