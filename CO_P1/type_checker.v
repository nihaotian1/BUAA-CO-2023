`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:36:13 10/14/2023 
// Design Name: 
// Module Name:    type_checker 
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
module type_checker(
    input [7:0] char,
    output reg [1:0] type
    );
    always @(*) begin
        if(char == "0" || char == "1" || char == "2" || char == "3" 
        || char == "4" || char == "5" || char == "6" 
        || char == "7" || char == "8" || char == "9") // char >= "0" && char <= "9"
            type = 2'b01; // 2'd0
        else if(char == "+")
            type = 2'b10; // 2'd1
        else if(char == "*")
            type = 2'b10; // 2'd2
        else
            type = 2'b00; // 2'd3
    end
endmodule
