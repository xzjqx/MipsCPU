`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:51 07/01/2016 
// Design Name: 
// Module Name:    IF_ID 
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

module IF_ID(
	input wire clk,
	input wire rst,
	input wire [31:0] if_pc,
	input wire [31:0] if_inst,
	output reg [31:0] id_pc,
	output reg [31:0] id_inst
    );

	always @(posedge clk) begin
		if (Rst == 1'b1) begin
			id_pc <= 32'b0;
			id_inst <= 32;
		end
		else begin
			id_pc <= if_pc;
			id_inst <= if_inst;
		end
	end
	
endmodule
