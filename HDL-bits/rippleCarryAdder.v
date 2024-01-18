`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:44 08/30/2023 
// Design Name: 
// Module Name:    rippleCarryAdder 
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
module rippleCarryAdder(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
    );

    wire sel, w;
    wire [15:0] tmp1, tmp2;

    add16 lo(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(0),
        .cout(sel),
        .sum(sum[15:0])
    );

    add16 hi0(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(0),
        .cout(w),
        .sum(tmp1)
    );
    
    add16 hi1(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1),
        .cout(w),
        .sum(tmp2)
    );

    MUX_2_1_16 mux(
        .d0(tmp1),
        .d1(tmp2),
        .sel(sel),
        .d(sum[31:16])
    );

endmodule

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

module MUX_2_1_16 (
    input [15:0] d0,
    input [15:0] d1,
    input sel,
    output [15:0] d
);
assign d = (sel == 0) ? d0 : d1;
endmodule