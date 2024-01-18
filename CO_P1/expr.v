`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:44:42 10/13/2023 
// Design Name: 
// Module Name:    expr 
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
        if(char == "0")
            type = 2'b01;
        else if(char == "1")
            type = 2'b01;
        else if(char == "2")
            type = 2'b01;
        else if(char == "3")
            type = 2'b01;
        else if(char == "4")
            type = 2'b01;
        else if(char == "5")
            type = 2'b01;
        else if(char == "6")
            type = 2'b01;
        else if(char == "7")
            type = 2'b01;
        else if(char == "8")
            type = 2'b01;
        else if(char == "9")
            type = 2'b01;
        else if(char == "+")
            type = 2'b10;
        else if(char == "*")
            type = 2'b10;
        else
            type = 2'b00;
    end
endmodule

module expr(
    input clk,
    input clr,
    input [7:0] in,
    output reg out
    );
    parameter S0 = 4'b0001;
    parameter S1 = 4'b0010;
    parameter S2 = 4'b0100;
    parameter S3 = 4'b1000;

    reg [3:0] state;
    wire [1:0] type;

    type_checker mycheck(.char(in), .type(type));
    initial begin
        state <= S0;
    end

    always @(posedge clk, posedge clr) begin
        if (clr == 1) begin
            state <= S0;
        end
        else begin
            case (state)
                S0:
                    if (type == 2'b01) 
                        state <= S1;
                    else
                        state <= S3;
                S1:
                    if (type == 2'b01)
                        state <= S3;
                    else 
                        state <= S2;
                S2:
                    if (type == 2'b01)
                        state <= S1;
                    else
                        state <= S3;
                S3:
                    state <= S3;
                default: 
                    state <= S0;
            endcase
        end
    end

    always @(*) begin
        if(state == S1)
            out = 1;
        else
            out = 0;
    end
endmodule
