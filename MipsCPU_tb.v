`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:23:51 07/21/2016
// Design Name:   MipsCPU
// Module Name:   C:/MipsCPU/MipsCPU_tb.v
// Project Name:  MipsCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MipsCPU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MipsCPU_tb;

	// Inputs
	reg clk_init;
	reg rst_init;
	reg RxD;

	// Outputs
	wire TxD;
	wire [19:0] baseram_addr;
	wire [31:0] baseram_data;
	wire [19:0] extram_addr;
	wire [31:0] extram_data;
	wire [22:0] flash_addr;
	wire [15:0] flash_data;
	wire baseram_ce;
	wire baseram_oe;
	wire baseram_we;
	wire extram_ce;
	wire extram_oe;
	wire extram_we;
	wire [7:0] flash_ctl;
	wire [15:0] led_pc;

	// Instantiate the Unit Under Test (UUT)
	MipsCPU uut (
		.clk_init(clk_init), 
		.rst_init(rst_init), 
		.RxD(RxD), 
		.TxD(TxD), 
		.baseram_addr(baseram_addr), 
		.baseram_data(baseram_data), 
		.extram_addr(extram_addr), 
		.extram_data(extram_data), 
		.flash_addr(flash_addr), 
		.flash_data(flash_data), 
		.baseram_ce(baseram_ce), 
		.baseram_oe(baseram_oe), 
		.baseram_we(baseram_we), 
		.extram_ce(extram_ce), 
		.extram_oe(extram_oe), 
		.extram_we(extram_we), 
		.flash_ctl(flash_ctl), 
		.led_pc(led_pc)
	);

	initial begin
		// Initialize Inputs
		clk_init = 0;
		rst_init = 0;
		RxD = 0;
		
		rst_init = 1'b0;
		#50 
		#1000
		rst_init = 1'b1;
		#100000 $stop;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial begin
	  clk_init = 1'b0;
	  forever #10 clk_init  = ~clk_init ;
	end
      
endmodule

