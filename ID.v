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
	output reg [31:0] reg1_o,		//������1
	output reg [31:0] reg2_o,		//������2
	output reg [4:0] reg1_addr_o,	//Ҫ���ļĴ���1�ĵ�ַ
	output reg [4:0] reg2_addr_o,	//Ҫ���ļĴ���2�ĵ�ַ
	output reg reg1_read_o,			//�Ƿ���Ĵ���1
	output reg reg2_read_o,			//�Ƿ���Ĵ���2
	output reg [4:0] wd_o,			//Ҫд�ļĴ����ĵ�ַ
	output reg wreg_o					//�Ƿ�Ҫд�Ĵ���
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
				//TODO: ���ݲ������ж���ʲôָ������ָ�������
			endcase
		end
	end
	
	always @(*) begin
		//TODO: ȷ��Դ������1
	end
	
	always @(*) begin
		//TODO: ȷ��Դ������2
	end

endmodule
