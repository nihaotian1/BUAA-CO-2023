`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:27 10/14/2023 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );

    parameter S0 = 4'b0001;
    parameter S1 = 4'b0010;
    parameter S2 = 4'b0100;
    parameter S3 = 4'b1000;

    wire [7:0] char = (in >= "A" && in <= "Z") ? in + "a" -"A" : in;
    // regularize
    
    reg flag;
    reg [3:0] state;
    reg [39:0] str;
    reg [7:0] stk;
    reg addflag;
    reg latch;

    wire [7:0] a0 = str[7:0];
    wire [7:0] a1 = str[15:8];
    wire [7:0] a2 = str[23:16];
    wire [7:0] a3 = str[31:24];

    initial begin
        latch <= 1'b1;
        flag <= 1'b0;
        stk <= 8'h00;
        state <= S0;
        str <= 48'h00_0000;
        addflag <= 1'b0;
    end
    
    always @(posedge clk, posedge reset) begin
        if (reset == 1) begin
            latch <= 1'b1;
            flag <= 1'b0;
            str <= 48'h00_0000;
            stk <= 8'h00;
            state <= S0;
            addflag <= 1'b0;
        end else begin
            case (state)
                S0: begin
                    if(stk == 8'hff) begin
                        latch <= 1'b0;
                    end else
                        latch <= latch;
                    if (char == " ") 
                        state <= S0;
                     else if (char == "b") begin
                        state <= S1;
                        str[7:0] <= char;
                     end
                     else if (char == "e")  begin
                        state <= S2;
                        str[7:0] <= char;
                     end
                    else
                        state <= S3;
                    end
                S1: // check_begin
                    if (char == " ") begin
                        str <= 48'h00_0000;
                        state <= S0;
                        addflag <= 1'b0;
                        flag <= 1'b0;
                    end
                    else begin
                        state <= state;
                        if (a3 == 8'h00) begin
                            str <= (str << 8) | char;
                        end else if(flag == 0) begin
                            flag <= 1'b1;
                            if(char == "n" && a0 == "i" && a1 == "g" && a2 == "e" && a3 == "b") begin
                                addflag <= 1'b1;
                                str <= (str << 8) | char;
                                stk <= stk + 1;
                            end else begin
                                str <= (str << 8) | char;
                            end
                        end else begin
                            flag <= flag;
                            str <= str;
                            if(addflag == 1) begin
                                addflag <= 0;
                                stk = stk - 1;
                            end else
                                addflag <= addflag;
                        end
                    end
                /*
                    S1:
                        if()
                
                */
            
                S2:
                    if(char == " ") begin
                        str <= 48'h00_0000;
                        state <= S0;
                        addflag <= 1'b0;
                        flag <= 1'b0;
                    end else begin
                        state <= state;
                        if (a1 == 8'h00) begin
                            str <= (str << 8) | char;
                        end else if(flag == 0) begin
                            flag <= 1;
                            if(a1 == "e" && a0 == "n" && char == "d") begin
                                addflag <= 1;
                                stk <= stk - 1;
                                str <= (str << 8) | char;
                            end else begin
                                addflag <= 0;
                                str <= (str << 8) | char;
                            end
                        end else begin
                            flag <= flag;
                            str <= str;
                            if(addflag == 1) begin
                                addflag <= 0;
                                stk = stk + 1;
                            end else
                                addflag <= addflag;
                        end
                    end
                S3:
                    if(char == " ") begin
                        str <= 48'h00_0000;
                        state <= S0;
                        addflag <= 1'b0;
                        flag <= 1'b0;
                    end else begin
                        state <= state;
                        stk <= stk;
                        addflag <= addflag;
                        flag <= flag;
                    end 
                default: begin
                    str <= 48'h00_0000;
                    stk <= 8'h00;
                    state <= S0;
                    addflag <= 1'b0;
                end 
            endcase
        end
    end

    assign result = (stk == 0) && latch;
endmodule
