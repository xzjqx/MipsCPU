`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:59 07/01/2016 
// Design Name: 
// Module Name:    MEM 
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

module MEM(
	input wire rst,
	input wire [4:0] wd_i,
	input wire wreg_i,
	input wire [31:0] wdata_i,
	
	input wire whilo_i,
	input wire [31:0] hi_i,
	input wire [31:0] lo_i,
	
	output reg [4:0] wd_o,
	output reg wreg_o,
	output reg [31:0] wdata_o,
	
	output reg whilo_o,
	output reg [31:0] hi_o,
	output reg [31:0] lo_o
    );

	always @(*) begin
		if (rst == 1'b1) begin
			wd_o <= 5'b0;
			wreg_o <= 1'b0;
			wdata_o <= 32'b0;
			whilo_o <= 1'b0;
			hi_o <= 32'b0;
			lo_o <= 32'b0;
		end
		else begin
			wd_o <= wd_i;
			wreg_o <= wreg_i;
			wdata_o <= wdata_i;
			whilo_o <= whilo_i;
			hi_o <= hi_i;
			lo_o <= lo_i;
		end
	end
	
endmodule
