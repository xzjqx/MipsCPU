// Verilog test fixture created from schematic C:\MipsCPU\MipsCPU.sch - Wed Jul 13 20:59:19 2016

`timescale 1ns / 1ps

module MipsCPU_MipsCPU_sch_tb();

// Inputs
   reg clk_init;
   reg rst_init;

// Output

// Bidirs

// Instantiate the UUT
   MipsCPU UUT (
		.clk_init(clk_init), 
		.rst_init(rst_init)
   );
// Initialize Inputs
   `ifdef auto_init
       initial begin
		clk_init = 0;
		rst_init = 0;
   `endif
	
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
