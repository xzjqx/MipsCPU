`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:10 07/01/2016 
// Design Name: 
// Module Name:    ID_EX 
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

module ID_EX(
	input wire clk,
	input wire rst,
	input wire [2:0] id_alusel,
	input wire [7:0] id_aluop,
	input wire [31:0] id_reg1,
	input wire [31:0] id_reg2,
	input wire [4:0] id_wd,
	input wire id_wreg,
	
	output reg [2:0] ex_alusel,
	output reg [7:0] ex_aluop,
	output reg [31:0] ex_reg1,
	output reg [31:0] ex_reg2,
	output reg [4:0] ex_wd,
	output reg  ex_wreg
    );

	always @(posedge clk) begin
		if (rst == 1'b1) begin
			ex_alusel <= 3'b0;
			ex_aluop <= 8'b0;
			ex_reg1 <= 32'b0;
			ex_reg2 <= 32'b0;
			ex_wd <= 5'b0;
			ex_wreg <= 1'b0;
		end
		else begin
			ex_alusel <= id_alusel;
			ex_aluop <= id_aluop;
			ex_reg1 <= id_reg1;
			ex_reg2 <= id_reg2;
			ex_wd <= id_wd;
			ex_wreg <= id_wreg;
		end
	end

endmodule
