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
	output reg ce,
	
	input wire flush,
	input wire [31:0] new_pc
    );

	always @(posedge clk) begin
		if (ce == 1'b0)
			pc <= 32'b0;			//PC的初始值不是全零
		else begin
			if (flush == 1'b1)
				pc <= new_pc;
			else if (stall[0] == `NOSTOP) begin
				if (branch_flag_i == 1'b1)
					pc <= branch_target_address_i;
				else
					pc <= pc + 4'h4;
			end
		end
	end
	
	always @(posedge clk) begin
		if (rst == 1'b1)
			ce <= 1'b0;
		else
			ce <= 1'b1;
	end


endmodule
