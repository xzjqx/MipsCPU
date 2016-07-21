`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:49 07/19/2016 
// Design Name: 
// Module Name:    CPU 
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
module CPU(
	input wire clk_init,
	input wire rst_init,
	input wire rst_1,
	output wire clk,
	output wire rst,
	output wire clk_init_o,
	output wire clk_25M
    );

	assign rst = ~rst_init;
	
	clockpll instance_name (
		.CLK_IN1(clk_init),
		.CLK_OUT1(clk_init_o),   
		.CLK_OUT2(clk_25M),
		.CLK_OUT3(clk)   
    );

endmodule
