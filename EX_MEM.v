`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:37 07/01/2016 
// Design Name: 
// Module Name:    EX_MEM 
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
`include "defines.v"

module EX_MEM(
	input wire clk,
	input wire rst,
	input wire [4:0] ex_wd,
	input wire ex_wreg,
	input wire [31:0] ex_wdata,
	
	output reg [4:0] mem_wd,
	output reg mem_wreg,
	output reg [31:0] mem_wdata
    );

	always @(posedge clk) begin
		if (rst == 1'b1) begin
			mem_wd <= 5'b0;
			mem_wreg <= 1'b0;
			mem_wdata <= 32'b0;
		end
		else begin
			mem_wd <= ex_wd;
			mem_wreg <= ex_wreg;
			mem_wdata <= ex_wdata;
		end
	end
	
endmodule
