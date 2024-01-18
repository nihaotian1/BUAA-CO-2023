`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:20 11/18/2023 
// Design Name: 
// Module Name:    MultDiv 
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
module MultDiv(
    input clk,
    input reset,
    input Req,
    input Start,
    input [2:0] MDOp,
    input MDWrite,
    input MDsel,
    input [31:0] MD1,
    input [31:0] MD2,
    output Busy,
    output [31:0] MDout
    );

    reg [31:0] hi;
    reg [31:0] lo;

    reg [31:0] val_hi;
    reg [31:0] val_lo;

    reg [31:0] tmp_hi;
    reg [31:0] tmp_lo;

    reg [3:0] cnt;

    always @(posedge clk) begin
        if (reset == 1'b1) begin
            hi <= 32'h0000_0000;
            lo <= 32'h0000_0000;
            tmp_hi <= 32'h0000_0000;
            tmp_lo <= 32'h0000_0000;
            cnt <= 4'h0;
        end
        else if (Start && !Req) begin
            if (MDOp == `MD_MULT || MDOp == `MD_MULTU) begin
                cnt <= 4'd5; 
                tmp_hi <= val_hi;
                tmp_lo <= val_lo;
                hi <= hi;
                lo <= lo;
            end
            else if(MDOp == `MD_DIV || MDOp == `MD_DIVU) begin
                cnt <= 4'd10;
                tmp_hi <= val_hi;
                tmp_lo <= val_lo;
                hi <= hi;
                lo <= lo;
            end
            else begin
                cnt <= 4'd0;
                tmp_hi <= val_hi;
                tmp_lo <= val_lo;
                hi <= hi;
                lo <= lo;
            end
        end
        else if(cnt != 4'd0)  begin
            if(cnt == 4'd1) begin
                cnt <= 4'd0;
                hi <= tmp_hi;
                lo <= tmp_lo;
            end
            else begin
                cnt <= cnt - 1;
                hi <= hi;
                lo <= lo;
                tmp_hi <= tmp_hi;
                tmp_lo <= tmp_lo;
            end
        end
        else if(MDOp == `MD_MTHI && MDWrite && !Req) begin
            hi <= MD1;
            lo <= lo;
        end
        else if(MDOp == `MD_MTLO && MDWrite && !Req) begin
            hi <= hi;
            lo <= MD1;
        end
        else begin
            cnt <= 4'd0;
            hi <= hi;
            lo <= lo;
            tmp_hi <= 4'd0;
            tmp_lo <= 4'd0;
        end
    end

    always @(*) begin
        val_hi = 32'd0;
        val_lo = 32'd0;
        if (MDOp == `MD_MULT) begin
            {val_hi, val_lo} = $signed(MD1) * $signed(MD2);
        end
        else if(MDOp == `MD_MULTU) begin
            {val_hi, val_lo} = MD1 * MD2; 
        end
        else if(MDOp == `MD_DIV) begin
            val_hi = $signed(MD1) % $signed(MD2);
            val_lo = $signed(MD1) / $signed(MD2);
        end
        else if (MDOp == `MD_DIVU) begin
            val_hi = MD1 % MD2;
            val_lo = MD1 / MD2;
        end
        else begin
            val_hi = 32'd0;
            val_lo = 32'd0;
        end
    end

    assign Busy = (cnt == 4'h0) ? 1'b0 : 1'b1;
    assign MDout = (MDsel == 1'b0) ? lo : hi;

endmodule
