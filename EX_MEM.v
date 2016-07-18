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
	
	input wire ex_whilo,
	input wire [31:0] ex_hi,
	input wire [31:0] ex_lo,
	
	input wire [7:0] ex_aluop,
	input wire [31:0] ex_mem_addr,
	input wire [31:0] ex_reg2,

	//新增CP0相关输入输出接口
	input wire ex_cp0_reg_we,
	input wire [4:0] ex_cp0_reg_write_addr,
	input wire [31:0] ex_cp0_reg_data,

	output reg mem_cp0_reg_we,
	output reg [4:0] mem_cp0_reg_write_addr,
	output reg [31:0] mem_cp0_reg_data,
	
	output reg [4:0] mem_wd,
	output reg mem_wreg,
	output reg [31:0] mem_wdata,
	
	output reg mem_whilo,
	output reg [31:0] mem_hi,
	output reg [31:0] mem_lo,
	
	output reg [7:0] mem_aluop,
	output reg [31:0] mem_mem_addr,
	output reg [31:0] mem_reg2,
	
	input wire [5:0] stall,
	
	input wire [31:0] ex_exc,
	input wire [31:0] ex_current_inst_address,
	input wire ex_is_in_delayslot,
	
	output reg [31:0] mem_exc,
	output reg [31:0] mem_current_inst_address,
	output reg mem_is_in_delayslot
    );

	always @(posedge clk) begin
		if (rst == 1'b1) begin
			mem_wd <= 5'b0;
			mem_wreg <= 1'b0;
			mem_wdata <= 32'b0;
			mem_whilo <= 1'b0;
			mem_hi <= 32'b0;
			mem_lo <= 32'b0;
			mem_aluop <= 8'b0;
			mem_mem_addr <= 32'b0;
			mem_reg2 <= 32'b0;
			mem_cp0_reg_we <= 1'b0;
			mem_cp0_reg_write_addr <= 5'b0;
			mem_cp0_reg_data <= 32'b0;
			
			mem_exc <= 32'b0;
			mem_current_inst_address <= 32'b0;
			mem_is_in_delayslot <= 1'b0;
		end
		else if (stall[3] == `STOP && stall[4] == `NOSTOP) begin
			mem_wd <= 5'b0;
			mem_wreg <= 1'b0;
			mem_wdata <= 32'b0;
			mem_whilo <= 1'b0;
			mem_hi <= 32'b0;
			mem_lo <= 32'b0;
			mem_aluop <= 8'b0;
			mem_mem_addr <= 32'b0;
			mem_reg2 <= 32'b0;
			mem_cp0_reg_we <= 1'b0;
			mem_cp0_reg_write_addr <= 5'b0;
			mem_cp0_reg_data <= 32'b0;
			
			mem_exc <= 32'b0;
			mem_current_inst_address <= 32'b0;
			mem_is_in_delayslot <= 1'b0;
		end
		else if (stall[3] == `NOSTOP) begin
			mem_wd <= ex_wd;
			mem_wreg <= ex_wreg;
			mem_wdata <= ex_wdata;
			mem_whilo <= ex_whilo;
			mem_hi <= ex_hi;
			mem_lo <= ex_lo;
			mem_aluop <= ex_aluop;
			mem_mem_addr <= ex_mem_addr;
			mem_reg2 <= ex_reg2;
			mem_cp0_reg_we <= ex_cp0_reg_we;
			mem_cp0_reg_write_addr <= ex_cp0_reg_write_addr;
			mem_cp0_reg_data <= ex_cp0_reg_data;
			
			mem_exc <= ex_exc;
			mem_current_inst_address <= ex_current_inst_address;
			mem_is_in_delayslot <= ex_is_in_delayslot;
		end
	end
	
endmodule
