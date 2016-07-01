`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:11 07/01/2016 
// Design Name: 
// Module Name:    EX 
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

module EX(
	input wire rst,
	input wire alusel_i,
	input wire aluop_i,
	input wire [31:0] reg1_i,
	input wire [31:0] reg2_i,
	input wire [4:0] wd_i,
	input wire wreg_i,
	
	output reg [4:0] wd_o,
	output reg wreg_o,
	output reg [31:0] wdata_o
    );

	reg [31:0] logicout;

	always @(*) begin
		if (rst == 1'b1) begin
			logicout <= 32'b0;
		end
		else begin
			case(aluop_i)
				//TODO: 相关指令的执行部分
				default: begin
					logicout <= 32'b0;
					//其他类型暂时结果的赋值
				end
			endcase
		end
	end
	
	always @(*) begin
		wd_o <= wd_i;
		wreg_o <= wreg_i;
		if (rst == 1'b1) begin
			wdata_o <= 32'b0;
		end
		else begin
			case(alusel_i)
				`Logic:
					wdata_o <= logicout;
				//TODO: 其他类型指令的写（目的）寄存器赋值
				default:
					wdata_o <= 32'b0;
			endcase
		end
	end
	
endmodule
