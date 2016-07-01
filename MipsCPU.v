`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:21 07/01/2016 
// Design Name: 
// Module Name:    MipsCPU 
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

module MipsCPU(
	input wire clk,
	input wire rst,
	input wire [31:0] rom_data_i,
	
	output wire [31:0] rom_addr_o,
	output wire rom_ce_o
    );

	wire [31:0] pc;
	wire [31:0] id_pc_i;
	wire [31:0] id_inst_i;
	
	wire wb_wreg_i;
	wire [4:0] wb_wd_i;
	wire [31:0] wb_wdata_i;
	
	wire reg1_read;
	wire [4:0] reg1_addr;
	wire [31:0] reg1_data;
	wire reg2_read;
	wire [4:0] reg2_addr;
	wire [31:0] reg2_data;
	
	wire[7:0] id_aluop_o;
	wire[2:0] id_alusel_o;
	wire[31:0] id_reg1_o;
	wire[31:0] id_reg2_o;
	wire id_wreg_o;
	wire[4:0] id_wd_o;
	
	wire[7:0] ex_aluop_i;
	wire[2:0] ex_alusel_i;
	wire[31:0] ex_reg1_i;
	wire[31:0] ex_reg2_i;
	wire ex_wreg_i;
	wire[4:0] ex_wd_i;
	
	wire ex_wreg_o;
	wire[4:0] ex_wd_o;
	wire[31:0] ex_wdata_o;
	
	wire mem_wreg_i;
	wire[4:0] mem_wd_i;
	wire[31:0] mem_wdata_i;

	wire mem_wreg_o;
	wire[4:0] mem_wd_o;
	wire[31:0] mem_wdata_o;
	
	PC pc0(.clk(clk), .rst(rst), .pc(pc), .ce(rom_ce_o));
	
	assign rom_addr_o = pc;
	
	IF_ID if_id0(.clk(clk), .rst(rst), .if_pc(pc), .if_inst(rom_data_i),
					 .id_pc(id_pc_i), .id_inst(id_inst_i));
					 
	ID id0(.rst(rst), .pc_i(id_pc_i), .inst_i(id_inst_i));
	
	REG reg0(.clk(clk), .rst(rst), .we(wb_wreg_i), .waddr(wb_wd_i), .wdata(wb_wdata_i),
				.re1(reg1_read), .raddr1(reg1_addr), .rdata1(reg1_data),
				.re2(reg2_read), .raddr2(reg2_addr), .rdata2(reg2_data));
	
	ID_EX id_ex0(.clk(clk), .rst(rst), .id_alusel(id_aluop_o), .id_aluop(id_aluop_o),
					 .id_reg1(id_reg1_o), .id_reg2(id_reg2_o), .id_wd(id_wd_o), .id_wreg(id_wreg_o),
					 .ex_alusel(ex_alusel_i), .ex_aluop(ex_aluop_i),
					 .ex_reg1(ex_reg1_i), .ex_reg2(ex_reg2_i), .ex_wd(ex_wd_i), .ex_wreg(ex_wreg_i));
	
	EX ex0(.rst(rst), .alusel_i(ex_alusel_i), .aluop_i(ex_aluop_i),
			 .reg1_i(ex_reg1_i), .reg2_i(ex_reg2_i),
			 .wd_i(ex_wd_i), .wreg_i(ex_wreg_i),
			 .wd_o(ex_wd_o), .wreg_o(ex_wreg_o), .wdata_o(ex_wdata_o));
	
	EX_MEM ex_mem0(.clk(clk), .rst(rst), .ex_wd(ex_wd_o), .ex_wreg(ex_wreg_o), .ex_wdata(ex_wdata_o),
						.mem_wd(mem_wd_i), .mem_wreg(mem_wreg_i),	.mem_wdata(mem_wdata_i));

	MEM mem0(.rst(rst), .wd_i(mem_wd_i), .wreg_i(mem_wreg_i), .wdata_i(mem_wdata_i), 
				.wd_o(mem_wd_o), .wreg_o(mem_wreg_o), .wdata_o(mem_wdata_o));
				
	MEM_WB mem_wb0(.clk(clk), .rst(rst),
						.mem_wd(mem_wd_o), .mem_wreg(mem_wreg_o),	.mem_wdata(mem_wdata_o),
						.wb_wd(wb_wd_i), .wb_wreg(wb_wreg_i), .wb_wdata(wb_wdata_i));
	
endmodule
