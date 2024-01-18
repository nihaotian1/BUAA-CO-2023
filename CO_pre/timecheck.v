`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:47 08/18/2023 
// Design Name: 
// Module Name:    timecheck 
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
module timecheck(
    input [15:0] t,
    input [15:0] f,
    input clk,
    input rst,
    output Error
    );

wire [15:0] bif = f >> 1;
reg [15:0] out;
integer i;

initial begin
    out <= 0;
end

always @(posedge clk) begin //数组写法好像不太好弄，编译报错了
    if(rst)
        out <= 16'h0000;
    else if(t == 16'h0000)
        out <= 16'h0000;
    else begin
        for(i = 1;i <= 16;i = i + 1)begin  // 设计思路：检查所有的情况，考虑从[i:0]只要不出现 (bif中无1 但t中有1)的情况，就合法！
            if(bif << i == 16'h0000 && t << i != 16'h0000)
                out[i-1] <= 1'b1;
            else
                out[i-1] <= 1'b0;
        end
    end
end

assign Error = |out;
endmodule
