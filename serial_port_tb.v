`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:29:26 07/21/2016
// Design Name:   serial_port
// Module Name:   C:/MipsCPU/serial_port_tb.v
// Project Name:  MipsCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: serial_port
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module serial_port_tb;

	// Inputs
	reg clk;
	reg rst;
	reg int_ack;
	reg [7:0] data_in;
	reg write_enable;
	reg fuck1;
	reg RxD;

	// Outputs
	wire int_req;
	wire [7:0] data_out;
	wire fuck2;
	wire write_not_busy;
	wire TxD;

	// Instantiate the Unit Under Test (UUT)
	serial_port uut (
		.clk(clk), 
		.rst(rst), 
		.int_req(int_req), 
		.int_ack(int_ack), 
		.data_out(data_out), 
		.data_in(data_in), 
		.write_enable(write_enable), 
		.fuck1(fuck1), 
		.fuck2(fuck2), 
		.write_not_busy(write_not_busy), 
		.TxD(TxD), 
		.RxD(RxD)
	);

	initial begin
        
		// Add stimulus here
		fuck1=0;
		#100;
		fuck1=1-fuck1;
		#100;
		fuck1=1-fuck1;
		#100;
		fuck1=1-fuck1;
		#100;
		fuck1=1-fuck1;
		#100;
		fuck1=1-fuck1;
		#100;
		fuck1=1-fuck1;

	end
      
endmodule

