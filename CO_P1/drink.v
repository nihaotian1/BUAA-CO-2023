`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:21 10/15/2023 
// Design Name: 
// Module Name:    drink 
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
module drink(
    input clk,
    input reset,
    input [1:0] coin,
    output drink,
    output reg [1:0] back
    );

    parameter S0 = 6'b00_0001;
    parameter S1 = 6'b00_0010;
    parameter S2 = 6'b00_0100;
    parameter S3 = 6'b00_1000;
    parameter S4 = 6'b01_0000;
    parameter S5 = 6'b10_0000;

    reg [5:0] state;

    initial begin
        state <= S0;
        back <= 2'b00;
    end

    always @(posedge clk, posedge reset) begin
        if(reset == 1) begin
            back <= 2'b00;
            state <= S0;
        end
        else begin
            case (state)
                S0:
                    if(coin == 2'd1) begin
                        back <= 0;
                        state <= S1;
                    end
                    else if (coin == 2'd2) begin
                        back <= 0;
                        state <= S2;
                    end
                    else begin
                        back <= 0;
                        state <= S0;
                    end
                S1:
                    if(coin == 2'd0)
                        state <= S1;
                    else if(coin == 2'd1)
                        state <= S2;
                    else if(coin == 2'd2)
                        state <= S3;
                    else begin
                        state <= S0;
                        back <= 2'b01;
                    end
                S2:
                    if(coin == 2'd0)
                        state <= S2;
                    else if(coin == 2'd1)
                        state <= S3;
                    else if(coin == 2'd2)
                        state <= S4;
                    else begin
                        state <= S0;
                        back <= 2'b10;
                    end
                S3:
                    if(coin == 2'd0)
                        state <= S3;
                    else if(coin == 2'd1)
                        state <= S4;
                    else if(coin == 2'd2) begin
                        state <= S5;
                        back <= 2'b01;    
                    end
                    else begin
                        state <= S0;
                        back <= 2'b11;
                    end
                S4:
                    if(coin == 2'd0)
                        state <= S0;
                    else if(coin == 2'd1)
                        state <= S1;
                    else if(coin == 2'd2)
                        state <= S2;
                    else begin
                        state <= S0;
                    end
                S5:
                    if(coin == 2'd0) begin
                        state <= S0;
                        back <= 2'b00;
                    end
                    else if(coin == 2'd1) begin
                        state <= S1;
                        back <= 2'b00;
                    end 
                    else if(coin == 2'd2) begin
                        state <= S2;
                        back <= 2'b00;
                    end 
                    else begin
                        state <= S0;
                        back <= 2'b00;
                    end
                default: begin
                    back <= 2'b00;
                    state <= S0;    
                end 
            endcase
        end
    end

    assign drink = (state == S4 || state == S5) ? 1'b1 : 1'b0;
endmodule
