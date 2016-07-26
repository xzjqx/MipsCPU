`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:07 07/01/2016 
// Design Name: 
// Module Name:    pc 
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

module PC(
	input wire clk,
	input wire rst,
	
	input wire branch_flag_i,
	input wire [31:0] branch_target_address_i,
	
	input wire [5:0] stall,
	
	output reg [31:0] pc,
	
	input wire cp0_branch_flag,
	input wire[31:0] cp0_branch_addr,
	
	input wire break_flag,
	input wire [31:0] break_addr,
	input wire stop_flag,
	
	output reg has_break,
	output reg stop_o
    );

	always @(posedge clk) begin
		if (rst == 1'b1)
			pc <= 32'hbfc00000;			//PC的初始值,bootload起始地址
		else begin
			if (cp0_branch_flag == 1'b1)
				pc <= cp0_branch_addr;
			else if (stall[0] == `NOSTOP) begin
				if (branch_flag_i == 1'b1)
					pc <= branch_target_address_i;
				else
					pc <= pc + 4'h4;
			end
		end
	end
	
	always @ (*) begin
		has_break <= 0;
		stop_o <= 0;
		if (break_flag && pc == break_addr) begin
			has_break <= 1;
			stop_o <= 1;
		end
		else if (stop_flag) begin
			has_break <= 1;
			stop_o <= 1;
		end
	end

endmodule
