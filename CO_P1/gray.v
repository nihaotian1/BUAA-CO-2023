`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:14:37 10/13/2023 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output reg Overflow,
    output [2:0] Output
    );

    reg [2:0] count;
    // init
    initial begin
        count <= 3'b000;
        Overflow <= 1'b0;
    end

    // next state logic
    always @(posedge Clk) begin
        if (Reset == 1) begin
           count <= 3'b000;
           Overflow <= 1'b0; 
        end
        else if(En == 1) begin
            if(count == 3'b111) begin
                count <= 3'b000;
                Overflow <= 1'b1;
            end
            else
                count <= count + 1;
        end
    end

    // Output logic
    assign Output = (count == 3'b000) ? 3'b000 :
    (count == 3'b001) ? 3'b001 :
    (count == 3'b010) ? 3'b011 :
    (count == 3'b011) ? 3'b010 :
    (count == 3'b100) ? 3'b110 :
    (count == 3'b101) ? 3'b111 :
    (count == 3'b110) ? 3'b101 :
    (count == 3'b111) ? 3'b100 : 3'b000;

endmodule
