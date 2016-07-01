`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:15 07/01/2016 
// Design Name: 
// Module Name:    ID 
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

module ID(
	input wire rst,
	input wire pc_i,
	input wire inst_i,
	input wire reg1_data_i,
	input wire reg2_data_i,
	
	output reg [2:0] alusel_o,		//8 types of inst
	output reg [7:0] aluop_o,		//47 insts
	output reg [31:0] reg1_o,		//操作数1
	output reg [31:0] reg2_o,		//操作数2
	output reg [4:0] reg1_addr_o,	//要读的寄存器1的地址
	output reg [4:0] reg2_addr_o,	//要读的寄存器2的地址
	output reg reg1_read_o,			//是否读寄存器1
	output reg reg2_read_o,			//是否读寄存器2
	output reg [4:0] wd_o,			//要写的寄存器的地址
	output reg wreg_o					//是否要写寄存器
    );
	
	wire [5:0] op = inst_i[31:26];
	wire [4:0] op1 = inst_i[10:6];
	wire [5:0] op2 = inst_i[5:0];
	wire [4:0] op3 = inst_i[20:16];
	
	reg [31:0] imm;
	
	always @(*) begin
		if (rst == 1'b1) begin
			alusel_o <= 3'b0;
			aluop_o <= 8'b0;
			reg1_o <= 32'b0;
			reg2_o <= 32'b0;
			reg1_addr_o <= 5'b0;
			reg2_addr_o <= 5'b0;
			reg1_read_o <= 1'b0;
			reg2_read_o <= 1'b0;
			wd_o <= 5'b0;
			wreg_o <= 1'b0;
		end
		else begin
			alusel_o <= 3'b0;
			aluop_o <= 8'b0;
			wd_o <= inst_i[25:21];
			wreg_o <= 1'b0;
			reg1_addr_o <= inst_i[25:21];
			reg2_addr_o <= inst_i[20:16];
			reg1_read_o <= 1'b0;
			reg2_read_o <= 1'b0;
			imm <= 32'b0;
			
			case(op)
				//TODO: 根据操作码判断是什么指令，并完成指令的译码
			endcase
		end
	end
	
	always @(*) begin
		//TODO: 确定源操作数1
	end
	
	always @(*) begin
		//TODO: 确定源操作数2
	end

endmodule
