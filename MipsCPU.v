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

	//PC模块接口
	wire [31:0] pc;
	wire [31:0] id_pc_i;
	wire [31:0] id_inst_i;
	
	wire pc_branch_flag_i;
	wire [31:0] pc_branch_target_address_i;
	
	//REG模块接口
	wire reg1_read;
	wire [4:0] reg1_addr;
	wire [31:0] reg1_data;
	wire reg2_read;
	wire [4:0] reg2_addr;
	wire [31:0] reg2_data;
	
	wire wb_wreg_i;
	wire [4:0] wb_wd_i;
	wire [31:0] wb_wdata_i;
	
	//ID模块接口
	wire [7:0] id_aluop_o;
	wire [2:0] id_alusel_o;
	wire [31:0] id_reg1_o;
	wire [31:0] id_reg2_o;
	wire id_wreg_o;
	wire [4:0] id_wd_o;
	
	wire id_is_in_delayslot_i;
	wire id_is_in_delayslot_o;
	wire [31:0] id_link_addr_o;
	wire id_next_inst_in_delayslot_o;
	
	//EX模块接口
	wire [7:0] ex_aluop_i;
	wire [2:0] ex_alusel_i;
	wire [31:0] ex_reg1_i;
	wire [31:0] ex_reg2_i;
	wire ex_wreg_i;
	wire [4:0] ex_wd_i;
	
	wire ex_wreg_o;
	wire [4:0] ex_wd_o;
	wire [31:0] ex_wdata_o;
	
	wire [31:0] ex_hi_i;
	wire [31:0] ex_lo_i;
	
	wire ex_whilo_o;
	wire [31:0] ex_hi_o;
	wire [31:0] ex_lo_o;
	
	wire ex_is_in_delayslot_i;
	wire [31:0] ex_link_address_i;
	
	//MEM模块接口
	wire mem_wreg_i;
	wire [4:0] mem_wd_i;
	wire [31:0] mem_wdata_i;
	
	wire mem_whilo_i;
	wire [31:0] mem_hi_i;
	wire [31:0] mem_lo_i;

	wire mem_wreg_o;
	wire [4:0] mem_wd_o;
	wire [31:0] mem_wdata_o;
	
	wire mem_whilo_o;
	wire [31:0] mem_hi_o;
	wire [31:0] mem_lo_o;
	
	//HILO模块接口
	wire wb_whilo_i;
	wire [31:0] wb_hi_i;
	wire [31:0] wb_lo_i;
	
	PC pc0(.clk(clk), .rst(rst), .pc(pc), .ce(rom_ce_o),
			 .branch_flag_i(pc_branch_flag_i), .branch_target_address_i(pc_branch_target_address_i));
	
	assign rom_addr_o = pc;
	
	IF_ID if_id0(.clk(clk), .rst(rst), .if_pc(pc), .if_inst(rom_data_i),
					 .id_pc(id_pc_i), .id_inst(id_inst_i));
					 
	ID id0(.rst(rst), .pc_i(id_pc_i), .inst_i(id_inst_i),
			 .reg1_data_i(reg1_data), .reg2_data_i(reg2_data),
			 .ex_wreg_i(ex_wreg_o), .ex_wdata_i(ex_wdata_o), .ex_wd_i(ex_wd_o),
			 .mem_wreg_i(mem_wreg_o), .mem_wdata_i(mem_wdata_o), .mem_wd_i(mem_wd_o),
			 .is_in_delayslot_i(id_is_in_delayslot_i),
			 .reg1_read_o(reg1_read), .reg2_read_o(reg2_read), 	  
			 .reg1_addr_o(reg1_addr), .reg2_addr_o(reg2_addr), 
			 .aluop_o(id_aluop_o), .alusel_o(id_alusel_o),
			 .reg1_o(id_reg1_o), .reg2_o(id_reg2_o),
			 .wd_o(id_wd_o), .wreg_o(id_wreg_o),
			 .is_in_delayslot_o(id_is_in_delayslot_o), .link_addr_o(id_link_addr_o), .next_inst_in_delayslot_o(id_next_inst_in_delayslot_o),
			 .branch_target_address_o(pc_branch_target_address_i), .branch_flag_o(pc_branch_flag_i));
	
	REG reg0(.clk(clk), .rst(rst), .we(wb_wreg_i), .waddr(wb_wd_i), .wdata(wb_wdata_i),
				.re1(reg1_read), .raddr1(reg1_addr), .rdata1(reg1_data),
				.re2(reg2_read), .raddr2(reg2_addr), .rdata2(reg2_data));
	
	ID_EX id_ex0(.clk(clk), .rst(rst), .id_alusel(id_alusel_o), .id_aluop(id_aluop_o),
					 .id_reg1(id_reg1_o), .id_reg2(id_reg2_o), .id_wd(id_wd_o), .id_wreg(id_wreg_o),
					 .id_is_in_delayslot(id_is_in_delayslot_o), .id_link_address(id_link_addr_o), .next_inst_in_delayslot_i(id_next_inst_in_delayslot_o),
					 .ex_alusel(ex_alusel_i), .ex_aluop(ex_aluop_i),
					 .ex_reg1(ex_reg1_i), .ex_reg2(ex_reg2_i), .ex_wd(ex_wd_i), .ex_wreg(ex_wreg_i),
					 .is_in_delayslot_o(id_is_in_delayslot_i), .ex_is_in_delayslot(ex_is_in_delayslot_i), .ex_link_address(ex_link_address_i));
	
	EX ex0(.rst(rst), .alusel_i(ex_alusel_i), .aluop_i(ex_aluop_i),
			 .reg1_i(ex_reg1_i), .reg2_i(ex_reg2_i),
			 .wd_i(ex_wd_i), .wreg_i(ex_wreg_i),
			 .hi_i(ex_hi_i), .lo_i(ex_lo_i), 
			 .mem_whilo_i(mem_whilo_o), .mem_hi_i(mem_hi_o), .mem_lo_i(mem_lo_o),
			 .wb_whilo_i(wb_whilo_i), .wb_hi_i(wb_hi_i), .wb_lo_i(wb_lo_i),
			 .is_in_delayslot_i(ex_is_in_delayslot_i), .link_address_i(ex_link_address_i),
			 .wd_o(ex_wd_o), .wreg_o(ex_wreg_o), .wdata_o(ex_wdata_o),
			 .whilo_o(ex_whilo_o), .hi_o(ex_hi_o), .lo_o(ex_lo_o));
	
	EX_MEM ex_mem0(.clk(clk), .rst(rst), .ex_wd(ex_wd_o), .ex_wreg(ex_wreg_o), .ex_wdata(ex_wdata_o),
						.ex_whilo(ex_whilo_o), .ex_hi(ex_hi_o), .ex_lo(ex_lo_o),
						.mem_wd(mem_wd_i), .mem_wreg(mem_wreg_i),	.mem_wdata(mem_wdata_i),
						.mem_whilo(mem_whilo_i), .mem_hi(mem_hi_i), .mem_lo(mem_lo_i));

	//TODO: 更新MEM模块接口 error
	MEM mem0(.rst(rst), .wd_i(mem_wd_i), .wreg_i(mem_wreg_i), .wdata_i(mem_wdata_i), 
				.whilo_i(mem_whilo_i), .hi_i(mem_hi_i), .lo_i(mem_lo_i),
				.wd_o(mem_wd_o), .wreg_o(mem_wreg_o), .wdata_o(mem_wdata_o),
				.whilo_o(mem_whilo_o), .hi_o(mem_hi_o), .lo_o(mem_lo_o));
				
	MEM_WB mem_wb0(.clk(clk), .rst(rst),
						.mem_wd(mem_wd_o), .mem_wreg(mem_wreg_o),	.mem_wdata(mem_wdata_o),
						.mem_whilo(mem_whilo_o), .mem_hi(mem_hi_o), .mem_lo(mem_lo_o),
						.wb_wd(wb_wd_i), .wb_wreg(wb_wreg_i), .wb_wdata(wb_wdata_i),
						.wb_whilo(wb_whilo_i), .wb_hi(wb_hi_i), .wb_lo(wb_lo_i));
						
	HILO hilo0(.clk(clk), .rst(rst), .we(wb_whilo_i),
				  .hi_i(wb_hi_i), .lo_i(wb_lo_i), .hi_o(ex_hi_i), .lo_o(ex_lo_i));
	
endmodule
