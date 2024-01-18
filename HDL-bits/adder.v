`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:41 08/30/2023 
// Design Name: 
// Module Name:    adder 
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
module add16(
     input [15:0] a,
     input [15:0] b,
     input cin,
     output cout,
     output [15:0] sum
    );
    wire [16:0] c = a + b + cin;
    assign cout = c[16];
    assign sum = c[15:0];
endmodule

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout, c1;

    add16 a1(
        a[15:0],
        b[15:0],
        0,
        cout,
        sum[15:0]
    );

    
    add16 a2(
        a[31:16],
        b[31:16],
        cout,
        c1,
        sum[31:16]
    );
endmodule
