`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:15 07/22/2016
// Design Name:   CP0
// Module Name:   C:/MipsCPU/cp0_tb.v
// Project Name:  MipsCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CP0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cp0_tb;

	// Inputs
	reg clk;
	reg rst;
	reg we_i;
	reg [4:0] waddr_i;
	reg [4:0] raddr_i;
	reg [31:0] wdata_i;
	reg int_com;
	reg [4:0] exc_code_i;
	reg [31:0] exc_epc_i;
	reg [31:0] exc_badvaddr_i;

	// Outputs
	wire flush_req;
	wire exc_jump_flag;
	wire [31:0] exc_jump_addr;
	wire [31:0] data_o;
	wire [31:0] index_o;
	wire [31:0] entry_lo0_o;
	wire [31:0] entry_lo1_o;
	wire [31:0] badvaddr_o;
	wire [31:0] count_o;
	wire [31:0] entry_hi_o;
	wire [31:0] compare_o;
	wire [31:0] status_o;
	wire [31:0] cause_o;
	wire [31:0] epc_o;
	wire [31:0] ebase_o;
	wire has_int;

	// Instantiate the Unit Under Test (UUT)
	CP0 uut (
		.clk(clk), 
		.rst(rst), 
		.we_i(we_i), 
		.waddr_i(waddr_i), 
		.raddr_i(raddr_i), 
		.wdata_i(wdata_i), 
		.int_com(int_com), 
		.exc_code_i(exc_code_i), 
		.exc_epc_i(exc_epc_i), 
		.exc_badvaddr_i(exc_badvaddr_i), 
		.flush_req(flush_req), 
		.exc_jump_flag(exc_jump_flag), 
		.exc_jump_addr(exc_jump_addr), 
		.data_o(data_o), 
		.index_o(index_o), 
		.entry_lo0_o(entry_lo0_o), 
		.entry_lo1_o(entry_lo1_o), 
		.badvaddr_o(badvaddr_o), 
		.count_o(count_o), 
		.entry_hi_o(entry_hi_o), 
		.compare_o(compare_o), 
		.status_o(status_o), 
		.cause_o(cause_o), 
		.epc_o(epc_o), 
		.ebase_o(ebase_o), 
		.has_int(has_int)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		we_i = 0;
		waddr_i = 0;
		raddr_i = 0;
		wdata_i = 0;
		int_com = 0;
		exc_code_i = 0;
		exc_epc_i = 0;
		exc_badvaddr_i = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

