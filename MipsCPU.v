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
	
	input wire [31:0] ram_data_i, 
	
	output wire [31:0] rom_addr_o,
	output wire rom_ce_o,
	
	output wire [31:0] ram_addr_o,
	output wire [31:0] ram_data_o,
	output wire ram_we_o,
	output wire ram_ce_o,
	output wire ram_sel_o,
	
	output wire [15:0] led_pc
    );

	//PC模块接口
	wire [31:0] pc;
	wire [31:0] id_pc_i;
	wire [31:0] id_inst_i;
	
	wire pc_branch_flag_i;
	wire [31:0] pc_branch_target_address_i;
	
	wire flush;
	wire [31:0] new_pc;
	
	assign led_pc = pc[15:0];
	
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
	wire [31:0] id_inst_o;
	
	wire id_stallreg;
	wire [31:0] id_exc_o;
	wire [31:0] id_current_inst_address_o;
	
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
	
	wire [31:0] ex_inst_i;
	wire [7:0] ex_aluop_o;
	wire [31:0] ex_mem_addr_o;
	wire [31:0] ex_reg2_o;

	wire		  	ex_mem_cp0_reg_we;
	wire [4:0]		ex_mem_cp0_write_addr;
	wire [31:0]		ex_mem_cp0_data;
  	wire			ex_wb_cp0_reg_we;
	wire[4:0]     	ex_wb_cp0_reg_write_addr;
	wire[31:0] 		ex_wb_cp0_reg_data;
	wire[4:0]     	ex_cp0_reg_read_addr_o;
	wire          	ex_cp0_reg_we_o;
	wire[4:0]     	ex_cp0_reg_write_addr_o;
	wire[31:0] 		ex_cp0_reg_data_o;
	
	wire ex_stallreg;
	wire[31:0] ex_exc_i;	
	wire[31:0] ex_current_inst_address_i;
	
	wire [31:0] ex_exc_o;
	wire ex_is_in_delayslot_o;
	wire [31:0] ex_current_inst_address_o;
	
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
	
	wire [7:0] mem_aluop_i;
	wire [31:0] mem_addr_i;
	wire [31:0] mem_reg2_i;

	wire mem_cp0_reg_we_i;
	wire [4:0] mem_cp0_reg_write_addr_i;
	wire [31:0] mem_cp0_reg_data_i;

	wire mem_cp0_reg_we_o;
	wire [4:0] mem_cp0_reg_write_addr_o;
	wire [31:0] mem_cp0_reg_data_o;

	wire [31:0] mem_exc_i;
	wire mem_is_in_delayslot_i;
	wire [31:0] mem_current_inst_address_i;	
	
	wire[31:0] mem_exc_o;
	wire mem_is_in_delayslot_o;
	wire[31:0] mem_current_inst_address_o;	
	
	wire[31:0] cp0_count;
	wire[31:0]	cp0_compare;
	wire[31:0]	cp0_status;
	wire[31:0]	cp0_cause;
	wire[31:0]	cp0_epc;
	wire[31:0]	cp0_config;
	wire[31:0]	cp0_prid;
	
	wire[31:0] latest_epc;
	
	wire wb_cp0_reg_we_i;
	wire[4:0] wb_cp0_reg_write_addr_i;
	wire[31:0] wb_cp0_reg_data_i;		
	wire[31:0] wb_exc_i;
	wire wb_is_in_delayslot_i;
	wire[31:0] wb_current_inst_address_i;

	
	//HILO模块接口
	wire wb_whilo_i;
	wire [31:0] wb_hi_i;
	wire [31:0] wb_lo_i;
	
	//CP0模块接口
	wire [31:0]	cp0_data_o;
	wire [31:0]	cp0_count_o;
	wire [31:0]	cp0_compare_o;
	wire [31:0]	cp0_status_o;
	wire [31:0]	cp0_cause_o;
	wire [31:0]	cp0_epc_o;
	wire [31:0]	cp0_config_o;
	wire [31:0]	cp0_prid_o;
	wire 		cp0_timer_int_o;
	wire [5:0]	cp0_int_i;

	//CTRL模块接口
	wire [5:0] ctrl_stop;

	
	PC pc0(.clk(clk), .rst(rst), .pc(pc), .ce(rom_ce_o),
			 .branch_flag_i(pc_branch_flag_i), .branch_target_address_i(pc_branch_target_address_i),
			 .stall(ctrl_stop),
			 .flush(flush),
			 .new_pc(new_pc));
	
	assign rom_addr_o = pc;
	
	IF_ID if_id0(.clk(clk), .rst(rst), .if_pc(pc), .if_inst(rom_data_i),
					 .id_pc(id_pc_i), .id_inst(id_inst_i),
					 .stall(ctrl_stop),
					 .flush(flush));
					 
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
			 .branch_target_address_o(pc_branch_target_address_i), .branch_flag_o(pc_branch_flag_i),
			 .inst_o(id_inst_o),
			 .ex_aluop(ex_aluop_o),
			 .stallreg(id_stallreg),
			 .exc_o(id_exc_o),
			 .current_inst_address_o(id_current_inst_address_o));
	
	REG reg0(.clk(clk), .rst(rst), .we(wb_wreg_i), .waddr(wb_wd_i), .wdata(wb_wdata_i),
				.re1(reg1_read), .raddr1(reg1_addr), .rdata1(reg1_data),
				.re2(reg2_read), .raddr2(reg2_addr), .rdata2(reg2_data));
	
	ID_EX id_ex0(.clk(clk), .rst(rst), .id_alusel(id_alusel_o), .id_aluop(id_aluop_o),
					 .id_reg1(id_reg1_o), .id_reg2(id_reg2_o), .id_wd(id_wd_o), .id_wreg(id_wreg_o),
					 .id_is_in_delayslot(id_is_in_delayslot_o), .id_link_address(id_link_addr_o), .next_inst_in_delayslot_i(id_next_inst_in_delayslot_o),
					 .id_inst(id_inst_o),
					 .ex_alusel(ex_alusel_i), .ex_aluop(ex_aluop_i),
					 .ex_reg1(ex_reg1_i), .ex_reg2(ex_reg2_i), .ex_wd(ex_wd_i), .ex_wreg(ex_wreg_i),
					 .is_in_delayslot_o(id_is_in_delayslot_i), .ex_is_in_delayslot(ex_is_in_delayslot_i), .ex_link_address(ex_link_address_i),
					 .ex_inst(ex_inst_i),
					 .stall(ctrl_stop),
					 .id_exc(id_exc_o),
					 .id_current_inst_address(id_current_inst_address_o),
					 .ex_exc(ex_exc_i),
					 .ex_current_inst_address(ex_current_inst_address_i));
	
	EX ex0(.rst(rst), .alusel_i(ex_alusel_i), .aluop_i(ex_aluop_i),
			 .reg1_i(ex_reg1_i), .reg2_i(ex_reg2_i),
			 .wd_i(ex_wd_i), .wreg_i(ex_wreg_i),
			 .hi_i(ex_hi_i), .lo_i(ex_lo_i), 
			 .mem_whilo_i(mem_whilo_o), .mem_hi_i(mem_hi_o), .mem_lo_i(mem_lo_o),
			 .wb_whilo_i(wb_whilo_i), .wb_hi_i(wb_hi_i), .wb_lo_i(wb_lo_i),
			 .is_in_delayslot_i(ex_is_in_delayslot_i), .link_address_i(ex_link_address_i),
			 .inst_i(ex_inst_i),
			 .wd_o(ex_wd_o), .wreg_o(ex_wreg_o), .wdata_o(ex_wdata_o),
			 .whilo_o(ex_whilo_o), .hi_o(ex_hi_o), .lo_o(ex_lo_o),
			 .aluop_o(ex_aluop_o), .mem_addr_o(ex_mem_addr_o), .reg2_o(ex_reg2_o),
			 .cp0_reg_data_i(cp0_data_o),
			 .wb_cp0_reg_data(ex_wb_cp0_reg_data),
			 .wb_cp0_reg_write_addr(ex_wb_cp0_reg_write_addr),
			 .wb_cp0_reg_we(ex_wb_cp0_reg_we),
			 .mem_cp0_data(ex_mem_cp0_data),
			 .mem_cp0_reg_we(ex_mem_cp0_reg_we),
			 .mem_cp0_reg_write_addr(ex_mem_cp0_write_addr),
			 .cp0_reg_read_addr_o(ex_cp0_reg_read_addr_o),
			 .cp0_reg_data_o(ex_cp0_reg_data_o),
			 .cp0_reg_write_addr_o(ex_cp0_reg_write_addr_o),
			 .cp0_reg_we_o(ex_cp0_reg_we_o),
			 .stallreg(ex_stallreg),
			 .exc_i(ex_exc_i),
			 .current_inst_address_i(ex_current_inst_address_i),
			 .exc_o(ex_exc_o),
			 .is_in_delayslot_o(ex_is_in_delayslot_o),
			 .current_inst_address_o(ex_current_inst_address_o));
	
	EX_MEM ex_mem0(.clk(clk), .rst(rst), .ex_wd(ex_wd_o), .ex_wreg(ex_wreg_o), .ex_wdata(ex_wdata_o),
						.ex_whilo(ex_whilo_o), .ex_hi(ex_hi_o), .ex_lo(ex_lo_o),
						.ex_aluop(ex_aluop_o), .ex_mem_addr(ex_mem_addr_o), .ex_reg2(ex_reg2_o),
						.mem_wd(mem_wd_i), .mem_wreg(mem_wreg_i),	.mem_wdata(mem_wdata_i),
						.mem_whilo(mem_whilo_i), .mem_hi(mem_hi_i), .mem_lo(mem_lo_i),
						.mem_aluop(mem_aluop_i), .mem_mem_addr(mem_addr_i), .mem_reg2(mem_reg2_i),
						.ex_cp0_reg_we(ex_cp0_reg_we_o),
						.ex_cp0_reg_write_addr(ex_cp0_reg_write_addr_o),
						.ex_cp0_reg_data(ex_cp0_reg_data_o),
						.mem_cp0_reg_we(mem_cp0_reg_we_i),
						.mem_cp0_reg_write_addr(mem_cp0_reg_write_addr_i),
						.mem_cp0_reg_data(mem_cp0_reg_data_i),
						.stall(ctrl_stop),
						.ex_exc(ex_exc_o),
						.ex_is_in_delayslot(ex_is_in_delayslot_o),
						.ex_current_inst_address(ex_current_inst_address_o),
						.mem_exc(mem_exc_i),
						.mem_is_in_delayslot(mem_is_in_delayslot_i),
						.mem_current_inst_address(mem_current_inst_address_i));
	
	MEM mem0(.rst(rst), .wd_i(mem_wd_i), .wreg_i(mem_wreg_i), .wdata_i(mem_wdata_i), 
				.whilo_i(mem_whilo_i), .hi_i(mem_hi_i), .lo_i(mem_lo_i),
				.aluop_i(mem_aluop_i), .mem_addr_i(mem_addr_i), .reg2_i(mem_reg2_i), .mem_data_i(ram_data_i),
				.wd_o(mem_wd_o), .wreg_o(mem_wreg_o), .wdata_o(mem_wdata_o),
				.whilo_o(mem_whilo_o), .hi_o(mem_hi_o), .lo_o(mem_lo_o),
				.mem_data_o(ram_data_o), .mem_ce_o(ram_ce_o), .mem_sel_o(ram_sel_o),
				.mem_addr_o(ram_addr_o), .mem_we_o(ram_we_o),
				.cp0_reg_we_i(mem_cp0_reg_we_i),
				.cp0_reg_write_addr_i(mem_cp0_reg_write_addr_i),
				.cp0_reg_data_i(mem_cp0_reg_data_i),
				.cp0_reg_data_o(ex_mem_cp0_data),
				.cp0_reg_write_addr_o(ex_mem_cp0_write_addr),
				.cp0_reg_we_o(ex_mem_cp0_reg_we),
				.exc_i(mem_exc_i),
				.is_in_delayslot_i(mem_is_in_delayslot_i),
				.current_inst_address_i(mem_current_inst_address_i),	
				.cp0_status_i(cp0_status),
				.cp0_cause_i(cp0_cause),
				.cp0_epc_i(cp0_epc),
				.wb_cp0_reg_we(wb_cp0_reg_we_i),
				.wb_cp0_reg_write_addr(wb_cp0_reg_write_addr_i),
				.wb_cp0_reg_data(wb_cp0_reg_data_i),
				.exc_o(mem_exc_o),
				.cp0_epc_o(latest_epc),
				.is_in_delayslot_o(mem_is_in_delayslot_o),
				.current_inst_address_o(mem_current_inst_address_o));
				
	MEM_WB mem_wb0(.clk(clk), .rst(rst),
						.mem_wd(mem_wd_o), .mem_wreg(mem_wreg_o),	.mem_wdata(mem_wdata_o),
						.mem_whilo(mem_whilo_o), .mem_hi(mem_hi_o), .mem_lo(mem_lo_o),
						.wb_wd(wb_wd_i), .wb_wreg(wb_wreg_i), .wb_wdata(wb_wdata_i),
						.wb_whilo(wb_whilo_i), .wb_hi(wb_hi_i), .wb_lo(wb_lo_i),
						.mem_cp0_reg_data(ex_mem_cp0_data),
						.mem_cp0_reg_write_addr(ex_mem_cp0_write_addr),
						.mem_cp0_reg_we(ex_mem_cp0_reg_we),
						.wb_cp0_reg_we(ex_wb_cp0_reg_we),
						.wb_cp0_reg_write_addr(ex_wb_cp0_reg_write_addr),
						.wb_cp0_reg_data(ex_wb_cp0_reg_data),
						.stall(ctrl_stop),
						.flush(flush));
						
	HILO hilo0(.clk(clk), .rst(rst), .we(wb_whilo_i),
				  .hi_i(wb_hi_i), .lo_i(wb_lo_i), .hi_o(ex_hi_i), .lo_o(ex_lo_i));
				  
	CP0 cp0(.clk(clk), .rst(rst), .we_i(ex_wb_cp0_reg_we), 
				.waddr_i(ex_wb_cp0_reg_write_addr), 
				.raddr_i(ex_cp0_reg_read_addr_o),
				.wdata_i(ex_wb_cp0_reg_data),
				.int_i(cp0_int_i),
				.data_o(cp0_data_o),
				.status_o(cp0_status_o),
				.count_o(cp0_count_o),
				.compare_o(cp0_compare_o),
				.cause_o(cp0_cause_o),
				.epc_o(cp0_epc_o),
				.config_o(cp0_config_o),
				.prid_o(cp0_prid_o),
				.timer_int_o(cp0_timer_int_o),
				.exc_i(mem_exc_o),
				.current_inst_addr_i(mem_current_inst_address_o),
				.is_in_delayslot_i(mem_is_in_delayslot_o));
				
	CTRL ctrl0(.clk(clk), .rst(rst),
				  .stop_from_id(id_stallreg),
				  .stop_from_ex(ex_stallreg),
				  .stop_from_mem(),
				  .exc_i(mem_exc_o),
				  .cp0_epc_i(latest_epc),
				  .new_pc(new_pc),
				  .flush(flush),
				  .stop(ctrl_stop));
	
endmodule
