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
	input wire [31:0] pc_i,
	input wire [31:0] inst_i,
	input wire [31:0] reg1_data_i,
	input wire [31:0] reg2_data_i,
	
	//处理Logic操作的数据相关
	input wire ex_wreg_i,
	input wire [31:0] ex_wdata_i,
	input wire [4:0] ex_wd_i,
	
	input wire mem_wreg_i,
	input wire [31:0] mem_wdata_i,
	input wire [4:0] mem_wd_i,
	
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
			wd_o <= inst_i[15:11];
			wreg_o <= 1'b0;
			reg1_addr_o <= inst_i[25:21];
			reg2_addr_o <= inst_i[20:16];
			reg1_read_o <= 1'b0;
			reg2_read_o <= 1'b0;
			imm <= 32'b0;
			
			case(op)
				//TODO: 根据操作码判断是什么指令，并完成指令的译码
				6'b000000: begin		//special code
					case(op2)
						6'b100100: begin	//AND
							alusel_o <= `Logic;
							aluop_o <= `AND;
							wreg_o <= 1'b1;
							reg1_read_o <= 1'b1;
							reg2_read_o <= 1'b1;
						end
						6'b100111: begin	//NOR
							alusel_o <= `Logic;
							aluop_o <= `NOR;
							wreg_o <= 1'b1;
							reg1_read_o <= 1'b1;
							reg2_read_o <= 1'b1;
						end
						6'b100101: begin	//OR
							alusel_o <= `Logic;
							aluop_o <= `OR;
							wreg_o <= 1'b1;
							reg1_read_o <= 1'b1;
							reg2_read_o <= 1'b1;
						end
						6'b100110: begin	//XOR
							alusel_o <= `Logic;
							aluop_o <= `XOR;
							wreg_o <= 1'b1;
							reg1_read_o <= 1'b1;
							reg2_read_o <= 1'b1;
						end
						6'b010000: begin	//MFHI
							alusel_o <= `Move;
							aluop_o <= `MFHI;
							wreg_o <= 1'b1;
							reg1_read_o <= 1'b0;
							reg2_read_o <= 1'b0;
						end
						6'b010010: begin	//MFLO
							alusel_o <= `Move;
							aluop_o <= `MFLO;
							wreg_o <= 1'b1;
							reg1_read_o <= 1'b1;
							reg2_read_o <= 1'b0;
						end
						6'b010001: begin	//MTHI
							alusel_o <= `Move;
							aluop_o <= `MTHI;
							wreg_o <= 1'b0;
							reg1_read_o <= 1'b1;
							reg2_read_o <= 1'b0;
						end
						6'b010011: begin	//MTLO
							alusel_o <= `Move;
							aluop_o <= `MTHI;
							wreg_o <= 1'b0;
							reg1_read_o <= 1'b1;
							reg2_read_o <= 1'b0;
						end
						default: begin
							//TODO: 其他special code指令
						end
					endcase
				end
				6'b001100: begin	//ANDI
					alusel_o <= `Logic;
					aluop_o <= `ANDI;
					wreg_o <= 1'b1;
					reg1_read_o <= 1'b1;
					reg2_read_o <= 1'b0;
					wd_o <= inst_i[20:16];
					imm <= {16'b0, inst_i[15:0]};
				end
				6'b001111: begin	//LUI
					alusel_o <= `Logic;
					aluop_o <= `LUI;
					wreg_o <= 1'b1;
					reg1_read_o <= 1'b1;
					reg2_read_o <= 1'b0;
					wd_o <= inst_i[20:16];
					imm <= {inst_i[15:0], 16'b0};
				end
				6'b001101: begin	//ORI
					alusel_o <= `Logic;
					aluop_o <= `ORI;
					wreg_o <= 1'b1;
					reg1_read_o <= 1'b1;
					reg2_read_o <= 1'b0;
					wd_o <= inst_i[20:16];
					imm <= {16'b0, inst_i[15:0]};
				end
				6'b001110: begin	//XORI
					alusel_o <= `Logic;
					aluop_o <= `XORI;
					wreg_o <= 1'b1;
					reg1_read_o <= 1'b1;
					reg2_read_o <= 1'b0;
					wd_o <= inst_i[20:16];
					imm <= {16'b0, inst_i[15:0]};
				end
			endcase
		end
	end
	
	always @(*) begin
		if (rst == 1'b1)
			reg1_o <= 32'b0;
		else if (reg1_read_o == 1'b1 && ex_wreg_i == 1'b1 && reg1_addr_o == ex_wd_i)
			reg1_o <= ex_wdata_i;
		else if (reg1_read_o == 1'b1 && mem_wreg_i == 1'b1 && reg1_addr_o == mem_wd_i)
			reg1_o <= mem_wdata_i;
		else if (reg1_read_o == 1'b1)
			reg1_o <= reg1_data_i;
		else if (reg1_read_o == 1'b0)
			reg1_o <= imm;
	end
	
	always @(*) begin
		if (rst == 1'b1)
			reg2_o <= 32'b0;
		else if (reg2_read_o == 1'b1 && ex_wreg_i == 1'b1 && reg2_addr_o == ex_wd_i)
			reg2_o <= ex_wdata_i;
		else if (reg2_read_o == 1'b1 && mem_wreg_i == 1'b1 && reg2_addr_o == mem_wd_i)
			reg2_o <= mem_wdata_i;
		else if (reg2_read_o == 1'b1)
			reg2_o <= reg2_data_i;
		else if (reg2_read_o == 1'b0)
			reg2_o <= imm;
	end

endmodule
