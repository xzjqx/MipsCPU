`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:11:25 07/01/2016 
// Design Name: 
// Module Name:    REG 
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
module REG(
	input wire clk,
	input wire rst,
	
	input wire [4:0] waddr,
	input wire [31:0] wdata,
	input wire we,
	
	input wire [4:0] raddr1,
	output reg [31:0] rdata1,
	input wire re1,
	
	input wire [4:0] raddr2,
	output reg [31:0] rdata2,
	input wire re2
    );
	
	reg [31:0] regs[0:31];

	always @(posedge clk) begin
		if (rst == 1'b0) begin
			if (we == 1'b1 && waddr != 32'b0)	//0号寄存器要一直保持为全0
				regs[waddr] <= wdata;
		end
	end
	
	always @(*) begin
		if (rst == 1'b1 || raddr1 == 1'b0)
			rdata1 <= 32'b0;
		else if (re1 == 1'b1 && we == 1'b1 && waddr == raddr1)
			rdata1 <= wdata;
		else if (re1 == 1'b1)
			rdata1 <= regs[raddr1];
		else
			rdata1 <= 32'b0;
	end
	
	always @(*) begin
		if (rst == 1'b1 || raddr2 == 1'b0)
			rdata2 <= 32'b0;
		else if (re2 == 1'b1 && we == 1'b1 && waddr == raddr2)
			rdata2 <= wdata;
		else if (re2 == 1'b1)
			rdata2 <= regs[raddr2];
		else
			rdata2 <= 32'b0;
	end
	
endmodule
