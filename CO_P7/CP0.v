`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:53:51 11/30/2023 
// Design Name: 
// Module Name:    CP0 
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
`define SR_IM  SR[15:10]
`define SR_EXL SR[1]
`define SR_IE  SR[0]

`define Cause_BD   Cause[31]
`define Cause_IP   Cause[15:10]
`define Cause_Code Cause[6:2]

module CP0(
    input clk,
    input reset,
    input CPWrite,
    input [31:0] VPC,
    input [4:0] CPAddr,
    input [31:0] CPIn,
    input ISDB,
    input [4:0] EXCode,
    input [5:0] HWInt,
    input EXClr,
    output [31:0] EPCout,
    output [31:0] CPout,
    output Req
    );

    reg [31:0] SR;
    reg [31:0] Cause;
    reg [31:0] EPC;

    wire InterruptReq = (|(SR[15:10] & HWInt)) && SR[0] && !SR[1]; // change here!!!
    wire EXCReq = |(EXCode);
    
    assign Req = (InterruptReq || EXCReq);                         // change here!!!
    
    assign EPCout = EPC;
    assign CPout =  (CPAddr == 5'd12) ? SR : 
                    (CPAddr == 5'd13) ? Cause :
                    (CPAddr == 5'd14) ? EPC : 32'd0;

    always @(posedge clk) begin
        if (reset) begin
            SR    <= 32'h0000_0000;
            Cause <= 32'h0000_0000;
            EPC   <= 32'h0000_0000;
        end
        else begin
            // write IP whatever occurs
            Cause[15:10] <= HWInt;

            if (CPWrite) begin     // mtc0 
               if (CPAddr == 5'd12)
                    SR <= CPIn;
                //else if (CPAddr == 5'd13) never write to Cause_REG
                //    Cause <= CPIn;
                else if (CPAddr == 5'd14 && !Req)
                    EPC <= CPIn;
            end
            else if (EXClr) begin // eret
                SR[1] <= 1'b0;
            end
            else if (Req) begin // Exception occurs           CHANGE HERE!!!!!
                SR[1] <= 1'b1;
                
                Cause[31] <= ISDB;
                if (InterruptReq) // Interrupt prior to exception
                    Cause[6:2] <= 5'd0;
                else
                    Cause[6:2] <= EXCode;
                
                if (ISDB) 
                    EPC <= VPC - 4;  // delay branch trace back to jump ins
                else 
                    EPC <= VPC;
            end
        end
    end

endmodule
