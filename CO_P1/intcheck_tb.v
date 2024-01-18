`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:02 10/15/2023
// Design Name:   intcheck
// Module Name:   D:/CO/CO_P1/intcheck_tb.v
// Project Name:  CO_P1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: intcheck
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module intcheck_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	intcheck uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.out(out)
	);

	always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		in = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset = 0;
		// int  A;int b_1,c; int i,in,intd;int e[2];;int f,int,g;i
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
        #10;
		in = "\t";
        #10;
		in = " ";
        #10;
		in = "A";
        #10;
		in = ";";

        #10; // int b_1,c;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
        #10;
		in = "b";
        #10;
		in = "_";
		#10;
		in = "1";
        #10;
		in = ",";
        #10;
		in = "c";
		#10;
		in = ";";
		
        #10; // int i,in,inti;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
        #10;
		in = "i";
        #10;
		in = ",";
		#10;
		in = "i";
        #10;
		in = "n";
        #10;
		in = ",";
		#10;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = "i";
        #10;
		in = ";";

		
        #10; // inta A;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = "a";
        #10;
		in = " ";
        #10;
		in = "A";
        #10;
		in = ";";
		#10;
		in = ";";

		
        #10; // int i,int,,g;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
        #10;
		in = "i";
        #10;
		in = ",";
		#10;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
        #10;
		in = ",";
        #10;
		in = ",";
		#10;
		in = "g";
        #10;
		in = ";";
		// Add stimulus here	

        #10; // int i,  ;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
        #10;
		in = "i";
        #10;
		in = ",";
		#10;
		in = " ";
		#10;
		in = " ";
        #10;
		in = ";";

        #10; // int i,,g;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
        #10;
		in = "i";
        #10;
		in = ",";
		#10;
		in = ",";
		#10;
		in = "g";
        #10;
		in = ";";

		
        #10; // int 3a;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
        #10;
		in = "3";
        #10;
		in = "a";
		#10;
		in = ";";

        #10; // int int a;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
		#10;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
        #10;
		in = "a";
		#10;
		in = ";";

		
        #10; // int 3a;
		in = "i";
        #10;
		in = "n";
        #10;
		in = "t";
		#10;
		in = " ";
		#10;
		in = ";";
	end
      
endmodule

