`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:39 10/15/2023 
// Design Name: 
// Module Name:    intcheck 
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
module intcheck(
    input clk,
    input reset,
    input [7:0] in,
    output out
    );

    parameter S0 = 7'b000_0001;
    parameter S1 = 7'b000_0010;
    parameter S2 = 7'b000_0100;
    parameter S3 = 7'b000_1000;
    parameter S4 = 7'b001_0000;
    parameter S5 = 7'b010_0000;
    parameter S6 = 7'b100_0000;

    reg [6:0] state;
    reg [2:0] type; 
    reg [23:0] check;
    reg flag;
    reg isInt;

    always @(*) begin
        if(in <= "9" && in >= "0")
            type = 3'd0; // num
        else if((in >= "a" && in <= "z") || (in >= "A" && in <= "Z") || in == "_")
            type = 3'd1; // alpha
        else if(in == " " || in == "\t")
            type = 3'd2; // spc
        else if(in == ",")
            type = 3'd3; // ,
        else if(in == ";")
            type = 3'd4; // ;
        else
            type = 3'd5; // others
    end

    initial begin
        state <= S0;
        type <= 0;
        isInt <= 0;
        flag <= 0;
        check <= 0;
    end

    wire isImpty = (check[15:8] == 8'h00) ? 1 : 0;

    always @(posedge clk) begin
        if(reset == 1) begin
            state <= S0;
            check <= 0;
            flag <= 0;
        end
        else begin
            case(state)
                S0:
                    if(type == 3'd2 || type == 3'd4)
                        state <= S0;
                    else if(in == "i") begin
                        state <= S1;
                        check[7:0] <= in; 
                    end
                    else
                        state <= S6; 
                S1: 
                    if(type == 3'd1) begin
                        if(flag == 0) begin
                            if(isImpty == 1) begin
                                state <= state;
                                check <= (check << 8) | in;
                            end
                            else begin
                                flag <= 1;
                                if(check[15:8] == "i" && check[7:0] == "n" && in == "t") begin
                                    isInt <= 1;
                                    state <= state;
                                end
                                else
                                    state <= S6;
                            end
                        end
                        else begin // flag = 1
                            state <= S6;
                        end
                    end
                    else if(type == 3'd2) begin
                        if(isInt == 1) begin
                            flag <= 0;
                            isInt <= 0;
                            check <= 0;
                            state <= S2;
                        end
                        else
                            state <= S6;                            
                    end
                    else if(type == 3'd4) begin
                        flag <= 0;
                        isInt <= 0;
                        check <= 0;
                        state <= S0;
                    end
                    else
                        state <= S6;
                
                S2:
                    if(type == 3'd2)
                        state <= state;
                    else if(type == 3'd1) begin
                        state <= S3;
                        check[7:0] <= {16'h0000, in};
                    end
                    else if(type == 3'd4) begin
                        flag <= 0;
                        isInt <= 0;
                        check <= 0;
                        state <= S0;
                    end
                    else
                        state <= S6;
                /*
                    first time -> 3-bit
                        f = 1;

                    if(flag == 0)
                        
                */


                S3: // a new name
                    if(type == 3'd2) begin // spc
                        if(isInt == 1)
                            state <= S6;
                        else begin
                            isInt <= 0;
                            state <= S4;
                            flag <= 0;
                            check <= 0;
                        end
                    end
                    else if(type == 3'd0 || type == 3'd1) begin
                        if(flag == 0) begin       
                            state <= state;
                            if(isImpty == 1) begin // useless
                                check <= (check << 8) | in;
                            end
                            else begin
                                flag <= 1;
                                if(check[15:8] == "i" && check[7:0] == "n" && in == "t")
                                    isInt <= 1;
                                else
                                    isInt <= 0;
                            end
                        end
                        else begin
                            isInt <= 0;
                            state <= state;
                            flag <= flag;
                        end
                    end
                    else if(type == 3'd3) begin
                        if(isInt == 1)
                            state <= S6;
                        else begin
                            state <= S2;
                            check <= 0;
                            isInt <= 0;
                            flag <= 0;
                        end
                    end
                    else if(type == 3'd4) begin
                        if(isInt == 1)
                            state <= S6;
                        else
                            state <= S5; 
                    end
                    else if(type == 3'd5)
                        state <= S6;
                S4:
                    if(type == 3'd2)
                        state <= state;
                    else if(type == 3'd3)
                        state <= S2;
                    else if(type == 3'd4)
                        state <= S5;
                    else
                        state <= S6;
                S5:
                    if(in == "i") begin
                        check <= {16'h0000,in};
                        flag <= 0;
                        isInt <= 0;
                        state <= S1;
                    end
                    else if(type == 3'd2 || type == 3'd4) begin
                        state <= S0;
                        flag <= 0;
                        isInt <= 0;
                    end
                    else
                        state <= S6;

                S6:
                    if(in == ";") begin
                        state <= S0;
                        flag <= 0;
                        isInt <= 0;
                        check <= 0;
                    end
                    else
                        state <= S6;
                default: begin
                    state <= S0;
                    check <= 0;
                    flag <= 0;
                end
            endcase
        end
    end

    assign out = (state == S5) ? 1 : 0;
endmodule
