`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:25 07/01/2016 
// Design Name: 
// Module Name:    MEM_WB 
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

module MEM_WB(
	input wire clk,
	input wire rst,
	input wire [4:0] mem_wd,
	input wire mem_wreg,
	input wire [31:0] mem_wdata,
	
	input wire mem_whilo,
	input wire [31:0] mem_hi,
	input wire [31:0] mem_lo,
	
	output reg [4:0] wb_wd,
	output reg wb_wreg,
	output reg [31:0] wb_wdata,
	
	output reg wb_whilo,
	output reg [31:0] wb_hi,
	output reg [31:0] wb_lo
    );

	always @(posedge clk) begin
		if (rst == 1'b1) begin
			wb_wd <= 5'b0;
			wb_wreg <= 1'b0;
			wb_wdata <= 32'b0;
			wb_whilo <= 1'b0;
			wb_hi <= 32'b0;
			wb_lo <= 32'b0;
		end
		else begin
			wb_wd <= mem_wd;
			wb_wreg <= mem_wreg;
			wb_wdata <= mem_wdata;
			wb_whilo <= mem_whilo;
			wb_hi <= mem_hi;
			wb_lo <= mem_lo;
		end
	end

endmodule
