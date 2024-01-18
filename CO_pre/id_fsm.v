`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:04 08/17/2023 
// Design Name: 
// Module Name:    id_fsm 
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
`define S0 3'b001
`define S1 3'b010
`define S2 3'b100

module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
 
wire isdigit;
wire isalpha;
reg [2:0] state;

initial begin
    state = `S0;
end

assign isdigit = (char <= "9" && char >= "0") ? 1'b1 : 1'b0;
assign isalpha = (char >= "a" && char <= "z") ? 1'b1 :
            (char >= "A" && char <= "Z") ? 1'b1 : 1'b0;

always @(posedge clk) begin
    case(state)
        `S0:
            if(isalpha)
                state <= `S1;
            else 
                state <= `S0;

        `S1:
            if(isalpha)
                state <= `S1;
            else if(isdigit)
                state <= `S2;
            else
                state <= `S0;

        `S2:
            if(isalpha)
                state <= `S1;
            else if(isdigit)
                state <= `S2;
            else
                state <= `S0;
        
        default:
            state <= `S0;
    endcase
end

assign out = (state == `S2) ? 1'b1 : 1'b0;

endmodule