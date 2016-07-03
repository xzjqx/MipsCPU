`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:46 07/03/2016
// Design Name:   MipsCPU_SOPC
// Module Name:   C:/MipsCPU/MipsCPU_SOPC_tb.v
// Project Name:  MipsCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MipsCPU_SOPC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MipsCPU_SOPC_tb;

	// Inputs
	reg clk;
	reg rst;

	// Instantiate the Unit Under Test (UUT)
	MipsCPU_SOPC uut (
		.clk(clk), 
		.rst(rst)
	);

	initial begin
		// Initialize Inputs
		rst = 1'b1;

		// Wait 100 ns for global reset to finish
		#95;
		rst = 1'b0;
        
		// Add stimulus here
		#1000 $stop;
	end
	
	initial begin
		clk = 1'b0;
		forever #10 clk = ~clk;
	end
      
endmodule

