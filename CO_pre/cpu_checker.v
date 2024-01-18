`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:20 08/17/2023 
// Design Name: 
// Module Name:    cpu_checker 
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
`include "isdec.v"
`include "ishex.v"
`include "char2hex.v"
`include "timecheck.v"
`include "pccheck.v"
`include "addrcheck.v"
`include "grfcheck.v"

`define S0 4'b0000
`define S1 4'b0001
`define S2 4'b0010
`define S3 4'b0011
`define S4 4'b0100
`define S5 4'b0101
`define S6 4'b0110
`define S7 4'b0111
`define S8 4'b1000
`define S9 4'b1001
`define S10 4'b1010
`define S11 4'b1011
`define S12 4'b1100
`define S13 4'b1101
`define S14 4'b1110

module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    input [15:0] freq,
    output [1:0] format_type,
    output [3:0] error_code
    );


reg [31:0] pc;
reg [31:0] addr;
reg [15:0] t;
reg [15:0] grf;
reg [3:0] state; // 16进制表达数字
reg [2:0] cnt;
reg sign;
reg t_rst;

wire hex;
wire dec;
wire [3:0] res;

wire pc_f;
wire addr_f;
wire t_f;
wire grf_f;

ishex myhex(.in(char), .out(hex));
isdec mydec(.in(char), .out(dec));
char2hex mytrans1(.char(char), .hex(res));

pccheck pcc(.pc(pc), .res(pc_f));
addrcheck addrc(.addr(addr), .res(addr_f));
grfcheck grfc(.grf(grf), .res(grf_f)); 
timecheck tc(.clk(clk), .t(t), .f(freq), .rst(t_rst), .Error(t_f));

initial begin   //initial 也不用阻塞！！！
    pc <= 0;
    addr <= 0;
    t <= 0;
    grf <= 0;
    state <= 0;
    sign <= 0;
    cnt <= 0;
    t_rst <= 1;
end

always @(posedge clk) begin
    case(state)
        `S0:begin//复位位置需要严格思考一下
            pc <= 0;
            addr <= 0;
            t <= 0;
            grf <= 0;
            t_rst <= 1;

            if(reset)
                state <= `S0;
            else if(char == "^")
                state <= `S1;
            else
                state <= `S0;
        end

        `S1:
            if(reset)
                state <= `S0;
            else if(dec) begin
                pc <= 0;
                addr <= 0;
                grf <= 0;
                state <= `S2;
                t <= t | res;
                t_rst <= 0; // 这里必须先准备好�
            end
            else
                state <= `S0;
            
        `S2://time
            if(reset) begin
                state <= `S0;
                cnt <= 3'b000;
            end
            else if(dec && cnt == 3'b011)begin
                state <= `S0;
                cnt <= 3'b000;//reset cnt
            end
            else if(dec && cnt < 3'b011)begin
                state <= `S2;
                cnt <= cnt + 1;//reset cnt
                t <= (t << 3) + (t << 1) + res; //t 10 + res
            end
            else if(char == "@")begin
                state <= `S3;
                cnt <= 3'b000;//reset cnt
            end
            else begin
                state <= `S0;
                cnt <= 3'b000;//reset cnt
            end
            
        `S3:
            if(reset)
                state <= `S0;
            else if(hex)begin
                state <= `S4;
                pc <= pc | res;
            end
            else  
                state <= `S0;
            
        `S4://pc
            if(reset) begin
                state <= `S0;
                cnt <= 3'b000;
            end
            else if(cnt == 3'b111 && char == ":") begin
                state <= `S5;
                cnt <= 3'b000;
            end
            else if(hex && cnt < 3'b111) begin
                state <= `S4;
                cnt <= cnt + 1;
                pc <= (pc << 4) | res;
            end
            else begin
                state <= `S0;
                cnt <= 3'b000;
            end

            
        `S5:
            if(reset)
                state <= `S0;
            else if(char == " ")
                state <= `S5;
            else if(char == "$")
                state <= `S6;
            else if(char == 8'd42)  //use 8'd42 instead  
                state <= `S7;
            else 
                state <= `S0;
                 
        `S6:
            if(reset)
                state <= `S0;
            else if(dec) begin
                state <= `S8;
                sign <= 1'b0;
                grf <= grf | res;
            end
            else
                state <= `S0;
                
        `S7:
            if(reset)
                state <= `S0;
            else if(hex) begin
                state <= `S9;
                sign <= 1'b1;
            end
            else
                state <= `S0;
            
        `S8://grf
            if(reset) begin
                state <= `S0;
                cnt <= 3'b000;
            end
            else if(dec && cnt == 3'b011)begin
                state <= `S0;
                cnt <= 3'b000;//reset cnt
            end
            else if(dec && cnt < 3'b011)begin
                state <= `S8;
                cnt <= cnt + 1;//reset cnt
                grf <= (grf << 3) + (grf << 1) + res;  //grf  10 + res
            end
            else if(char == " ")begin
                state <= `S10;
                cnt <= 3'b000;//reset cnt
            end
            else if(char == "<")begin
                state <= `S11;
                cnt <= 3'b000;//reset cnt
            end
            else begin
                state <= `S0;
                cnt <= 3'b000;
            end

        `S9://addr
            if(reset) begin
                state <= `S0;
                cnt <= 3'b000;
            end
            else if(cnt == 3'b111 && char == "<") begin
                state <= `S11;
                cnt <= 3'b000;
            end
            else if(cnt == 3'b111 && char == " ") begin
                state <= `S10;
                cnt <= 3'b000;
            end
            else if(hex && cnt < 3'b111) begin
                state <= `S9;
                cnt <= cnt + 1;
                addr <= (addr << 4) | res; 
            end
            else begin
                state <= `S0;
                cnt <= 3'b000;
            end

            
        `S10:
            if(reset)
                state <= `S0;
            else if(char == " ")
                state <= `S10;
            else if(char == "<")
                state <= `S11;
            else
                state <= `S0;
            
        `S11:
            if(reset)
                state <= `S0;
            else if(char == "=")
                state <= `S12;
            else
                state <= `S0;

        `S12:
            if(reset)
                state <= `S0;
            else if(hex)
                state <= `S13;
            else if(char == " ")
                state <= `S12;
            else
                state <= `S0;

        `S13:
            if(reset) begin
                state <= `S0;
                cnt <= 3'b000;
            end
            else if(cnt == 3'b111 && char == "#") begin
                state <= `S14;
                cnt <= 3'b000;
            end
            else if(hex && cnt < 3'b111) begin
                state <= `S13;
                cnt <= cnt +1;
            end
            else begin
                state <= `S0;
                cnt <= 3'b000;
            end
            
        `S14:
            if(reset)
                state <= `S0;
            else if(char == "^")begin
                state <= `S1;
                t <= 0;
                t_rst <= 1;
            end
            else
                state <= `S0;
        
        default:
            state <= `S0;
    endcase
end

assign format_type = (state != `S14) ? 2'b00 :
                (sign == 1'b0) ? 2'b01 : 2'b10;

assign error_code = (state != `S14) ? 4'b0000 : {grf_f, addr_f, pc_f, t_f};

endmodule
