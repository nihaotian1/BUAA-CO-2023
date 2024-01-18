`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:41 10/15/2023 
// Design Name: 
// Module Name:    VoterPlus 
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
module VoterPlus(
    input clk,
    input reset,
    input [31:0] np,
    input [7:0] vip,
    input vvip,
    output [7:0] result
    );

    reg [31:0] npreg;
    reg [7:0] vipreg;
    reg vvipreg;
    integer sum1 = 0, sum2 = 0, sum3 = 0;

    initial begin
        npreg <= 32'h0000_0000;
        vipreg <= 8'h00;
        vvipreg <= 1'b0;
        sum1 = 0;
        sum2 = 0;
        sum3 = 0;
    end

    always @(posedge clk, posedge reset) begin
        if(reset == 1) begin
            npreg <= 32'h0000_0000;
            vipreg <= 8'h00;
            vvipreg <= 1'b0;
            sum1 = 0;
            sum2 = 0;
            sum3 = 0;
        end
        else begin
            npreg <= npreg | np;
            vipreg <= vipreg | vip;
            vvipreg <= vvipreg | vvip;
            sum1 = 0;
            sum2 = 0;
            sum3 = 0;
        end
    end

    integer i; 
    integer j; // Must define in main but not in always
    always @(*) begin
        sum1 = 0;
        sum2 = 0;
        for(i = 0; i < 32; i = i + 1) begin
                sum1 = sum1 + npreg[i];
        end
        
        for(j = 0; j < 8; j = j + 1)
                sum2 = sum2 + vipreg[j];
    end

    assign result = sum1 + (sum2 * 4) + (vvipreg * 16);
endmodule