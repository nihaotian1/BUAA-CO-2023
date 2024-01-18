`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:04 11/01/2023 
// Design Name: 
// Module Name:    mips 
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
// module mips(
//     input clk,
//     input reset,
//     input [31:0] i_inst_rdata,
//     input [31:0] m_data_rdata,
//     output [31:0] i_inst_addr,
//     output [31:0] m_data_addr,
//     output [31:0] m_data_wdata,
//     output [3 :0] m_data_byteen,
//     output [31:0] m_inst_addr,
//     output w_grf_we,
//     output [4:0] w_grf_addr,
//     output [31:0] w_grf_wdata,
//     output [31:0] w_inst_addr
// );
module mips(
    input clk,
    input reset,
    input interrupt,              // new
    output [31:0] macroscopic_pc, // new

    input  [31:0] i_inst_rdata,
    output [31:0] i_inst_addr,

    output [31:0] m_data_addr,
    input  [31:0] m_data_rdata,
    output [31:0] m_data_wdata,
    output [3 :0] m_data_byteen,

    output [31:0] m_int_addr,     // new
    output [3 :0] m_int_byteen,   // new
    
    output [31:0] m_inst_addr,

    output w_grf_we,
    output [4 :0] w_grf_addr,
    output [31:0] w_grf_wdata,

    output [31:0] w_inst_addr
    );

    wire [5:0] HWInt;
    wire IQR0;
    wire IQR1;
    assign HWInt = {3'b000, interrupt, IQR1, IQR0};

    wire [31:0] CPUAddr;
    wire [31:0] CPUData;
    wire [3 :0] CPUByteen;
    wire [31:0] TCData0;
    wire [31:0] TCData1;
    wire [3 :0] Byteen;
    wire WriteTC0;
    wire WriteTC1;
    wire [31:0] ReadData;


    TC Timer0(
        .clk      (clk),
        .reset    (reset),
        .Addr     (CPUAddr[31:2]),
        .WE       (WriteTC0),
        .Din      (CPUData),
        .Dout     (TCData0),
        .IRQ      (IQR0)
    );


    TC Timer1(
        .clk      (clk),
        .reset    (reset),
        .Addr     (CPUAddr[31:2]),
        .WE       (WriteTC1),
        .Din      (CPUData),
        .Dout     (TCData1),
        .IRQ      (IQR1)
    );


    cpu myCPU(
        .clk               (clk),
        .reset             (reset),
        .HWInt             (HWInt),
        .macroscopic_pc    (macroscopic_pc),
        
        .i_inst_rdata      (i_inst_rdata),
        .i_inst_addr       (i_inst_addr),

        .m_data_addr       (CPUAddr),
        .m_data_rdata      (ReadData),
        .m_data_byteen     (CPUByteen),
        .m_data_wdata      (CPUData),
        .m_inst_addr       (m_inst_addr),

        .w_grf_we          (w_grf_we),
        .w_grf_addr        (w_grf_addr),
        .w_grf_wdata       (w_grf_wdata),
        .w_inst_addr       (w_inst_addr)
    );


    Bridge myBridge(
        .CPUAddr      (CPUAddr),
        .CPUByteen    (CPUByteen),
        .DMData       (m_data_rdata),
        .TCData0      (TCData0),
        .TCData1      (TCData1),
        .Byteen       (Byteen),
        .WriteTC0     (WriteTC0),
        .WriteTC1     (WriteTC1),
        .ReadData     (ReadData)
    );


    assign m_data_addr   = CPUAddr;
    assign m_data_byteen = Byteen;
    assign m_data_wdata  = CPUData;

    assign m_int_addr   = m_data_addr;
    assign m_int_byteen = m_data_byteen;

endmodule
