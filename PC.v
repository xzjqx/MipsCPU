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
	output reg [31:0] pc,
	output reg ce
    );

	always @(posedge clk) begin
		if (rst == 1'b1)
			ce <= 1'b0;
		else
			ce <= 1'b1;
	end
	
	always @(posedge clk) begin
		if (rst == 1'b0)
			pc <= 32'b0;
		else begin
			pc <= pc + 4'h4;
		end
	end


endmodule
