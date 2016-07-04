`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:20:07 07/04/2016 
// Design Name: 
// Module Name:    HILO 
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
module HILO(
	input wire clk,
	input wire rst,
	input wire we,
	input wire [31:0] hi_i,
	input wire [31:0] lo_i,
	
	output reg [31:0] hi_o,
	output reg [31:0] lo_o
    );

	always @(posedge clk) begin
		if (rst == 1'b1) begin
			hi_o <= 32'b0;
			lo_o <= 32'b0;
		end
		else begin
			hi_o <= hi_i;
			lo_o <= lo_i;
		end
	end

endmodule
