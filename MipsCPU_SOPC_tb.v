`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:14 07/17/2016
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
	reg clk_init;
	reg rst_init;

	// Outputs
	wire [15:0] led_pc;

	// Instantiate the Unit Under Test (UUT)
	MipsCPU_SOPC uut (
		.clk_init(clk_init), 
		.rst_init(rst_init), 
		.led_pc(led_pc)
	);

	initial begin
		// Initialize Inputs
		rst_init = 1'b1;

		// Wait 100 ns for global reset to finish
		#95;
		rst_init = 1'b0;
        
		// Add stimulus here
		#1000 $stop;
	end
	
	initial begin
		clk_init = 1'b0;
		forever #10 clk_init = ~clk_init;
	end
      
endmodule

