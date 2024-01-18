`timescale 1ns / 1ps
`include "head.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:08:01 11/30/2023 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
    input [31:0] CPUAddr,
    input [3:0] CPUByteen,
    input [31:0] DMData,
    input [31:0] TCData0,
    input [31:0] TCData1,
    output [3:0] Byteen,
    output WriteTC0,
    output WriteTC1,
    output [31:0] ReadData
    );

    assign Byteen = ((`DATAMEM_LO <= CPUAddr && CPUAddr <= `DATAMEM_HI) || (CPUAddr >= `INTER_LO && CPUAddr <= `INTER_HI)) ? CPUByteen : 4'h0;

    assign WriteTC0 = (`TIMER_LO_0 <= CPUAddr && CPUAddr <= `TIMER_HI_0 && (& CPUByteen)) ? 1'b1 : 1'b0;

    assign WriteTC1 = (`TIMER_LO_1 <= CPUAddr && CPUAddr <= `TIMER_HI_1 && (& CPUByteen)) ? 1'b1 : 1'b0;

    assign ReadData =   (`DATAMEM_LO <= CPUAddr && CPUAddr <= `DATAMEM_HI) ? DMData  :
                        (`TIMER_LO_0 <= CPUAddr && CPUAddr <= `TIMER_HI_0) ? TCData0 :
                        (`TIMER_LO_1 <= CPUAddr && CPUAddr <= `TIMER_HI_1) ? TCData1 : 32'h0000_0000;

endmodule
