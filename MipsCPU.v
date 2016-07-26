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
	input wire clk_init,
	input wire rst_init,
	
	input wire RxD,
	output wire TxD,
	
	input wire usb_rxd,
	output wire usb_txd,
	
	output wire [19:0] baseram_addr,
	output wire [31:0] baseram_data,
	output wire [19:0] extram_addr,
	output wire [31:0] extram_data,
	output wire [22:0] flash_addr,
	output wire [15:0] flash_data,
	output wire baseram_ce,
	output wire baseram_oe,
	output wire baseram_we,
	output wire extram_ce,
	output wire extram_oe,
	output wire extram_we,
	output wire [7:0] flash_ctl,
	
	output wire [15:0] led_pc
    );
	
	wire clk;
	wire rst;
	wire clk_serial;
	wire clk_mem;
	wire rst_o;
	
	CPU  cpu0 (.clk_init(clk_init), 
              .rst_init(rst_o), 
              .clk(clk), 
              .clk_init_o(clk_serial), 
              .clk_25M(clk_mem), 
              .rst(rst));
	RST_SYNC  rst_sync0 (.clk_sys(clk), 
								.rst_in(rst_init), 
								.rst(rst_o));

	//PC模块接口
	wire [31:0] pc;
	wire [31:0] id_pc_i;
	wire [31:0] id_inst_i;
	
	wire pc_branch_flag_i;
	wire [31:0] pc_branch_target_address_i;
	
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
	
	wire [4:0] id_exc_code_i;
	wire [4:0] id_exc_code_o;
	wire [31:0] id_exc_epc_o;
	wire [31:0] id_exc_badvaddr_o;
	
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
	
	wire [4:0] ex_exc_code_i;
	wire [31:0] ex_exc_epc_i;
	wire [31:0] ex_exc_badvaddr_i;
	wire [4:0] ex_exc_code_o;
	wire [31:0] ex_exc_epc_o;
	wire [31:0] ex_exc_badvaddr_o;
	
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

	wire [4:0] mem_exc_code_i;
	wire [31:0] mem_exc_epc_i;
	wire [31:0] mem_exc_badvaddr_i;
	wire [4:0] mem_exc_code_o;
	wire [31:0] mem_exc_epc_o;
	wire [31:0] mem_exc_badvaddr_o;

	
	//HILO模块接口
	wire wb_whilo_i;
	wire [31:0] wb_hi_i;
	wire [31:0] wb_lo_i;
	
	//IF模块接口
	wire [31:0] if_addr_o;
	wire [31:0] if_inst_o;
	wire [4:0] if_exc_code_o;
	
	//CP0模块接口
	wire cp0_int_com;
	wire [4:0] cp0_exc_code_i;
	wire [31:0] cp0_exc_epc_i;
	wire [31:0] cp0_exc_badvaddr_i;
	wire cp0_flush_req;
	wire cp0_exc_jump_flag;
	wire [31:0] cp0_exc_jump_addr;
	wire [31:0] cp0_data_o;
	wire [31:0] index_o;
	wire [31:0] entry_lo0_o;
	wire [31:0] entry_lo1_o;
	wire [31:0] badvaddr_0;
	wire [31:0] count_o;
	wire [31:0] entry_hi_o;
	wire [31:0] compare_o;
	wire [31:0] status_o;
	wire [31:0] cause_o;
	wire [31:0] epc_o;
	wire [31:0] ebase_o;
	wire has_int;
	
	//CTRL模块接口
	wire stop_from_id;
	wire stop_from_ex;
	wire stop_from_mem;
	wire stop_from_pc;
	wire ctrl_flush_i;
	wire [5:0] stop;
	wire flush;
	
	//MMU模块接口
	wire mmu_ce;
	wire mmu_we_i;
	wire [3:0] mmu_sel;
	wire [31:0] mmu_addr;
	wire [31:0] mmu_data_o;
	wire [31:0] mmu_data_i;
	wire [31:0] mmu_addr_pc;
	wire [31:0] mmu_data_inst;
	wire mmu_busy;
	wire [4:0] mmu_exc_code;
	wire [4:0] mmu_exc_code_pc;
	wire [67:0] tlb_write_struct;
	wire [31:0] dev_mem_addr;
	wire [31:0] dev_mem_data_in;
	wire [31:0] dev_mem_data_out;
	wire dev_mem_busy;
	wire dev_mem_is_write;
	
	//phy_mem接口模块
	
	
	//serial_port模块接口
	wire int_ack;
	wire [7:0] ser_data_out;
	wire [7:0] ser_data_in;
	wire ser_write_enable;
	wire ser_write_not_busy;
	
	wire read_ready;
	wire write_ready;
	wire has_break;
	wire [7:0] com_data_out1;
	wire [7:0] com_data_in1;
	wire com_write_enable1;
	wire com_int_ack1;
	wire [4:0] debug_addr;
	wire [31:0] debug_data;
	wire break_flag;
	wire stop_flag;
	wire [31:0] break_addr;

	
	PC pc0(.clk(clk), .rst(rst), .pc(pc),
			 .branch_flag_i(pc_branch_flag_i), .branch_target_address_i(pc_branch_target_address_i),
			 .stall(stop),
			 .cp0_branch_flag(cp0_exc_jump_flag),
			 .cp0_branch_addr(cp0_exc_jump_addr),
			 .break_flag(break_flag),
			 .break_addr(break_addr),
			 .stop_flag(stop_flag),
			 .has_break(has_break),
			 .stop_o(stop_from_pc));
	
	IF if0 (
    .addr_i(pc), 
    .inst_i(mmu_data_inst), 
    .mmu_exc_code(mmu_exc_code_pc), 
    .has_int_from_cp0(has_int), 
    .mem_addr_o(mmu_addr_pc), 
    .addr_o(if_addr_o), 
    .inst_o(if_inst_o), 
    .exc_code_o(if_exc_code_o)
    );
	
	IF_ID if_id0(.clk(clk), .rst(rst), .if_pc(if_addr_o), .if_inst(if_inst_o),
					 .exc_code_i(if_exc_code_o),
					 .id_pc(id_pc_i), .id_inst(id_inst_i),
					 .stall(stop),
					 .flush(flush),
					 .exc_code_o(id_exc_code_i));
					 
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
			 .stallreg(stop_from_id),
			 .exc_code_i(id_exc_code_i),
			 .exc_code_o(id_exc_code_o),
			 .exc_epc_o(id_exc_epc_o),
			 .exc_badvaddr_o(id_exc_badvaddr_o));
	
	REG reg0(.clk(clk), .rst(rst), .we(wb_wreg_i), .waddr(wb_wd_i), .wdata(wb_wdata_i),
				.re1(reg1_read), .raddr1(reg1_addr), .rdata1(reg1_data),
				.re2(reg2_read), .raddr2(reg2_addr), .rdata2(reg2_data),
				.debug_addr(debug_addr), .debug_data(debug_data));
	
	ID_EX id_ex0(.clk(clk), .rst(rst), .id_alusel(id_alusel_o), .id_aluop(id_aluop_o),
					 .id_reg1(id_reg1_o), .id_reg2(id_reg2_o), .id_wd(id_wd_o), .id_wreg(id_wreg_o),
					 .id_is_in_delayslot(id_is_in_delayslot_o), .id_link_address(id_link_addr_o), .next_inst_in_delayslot_i(id_next_inst_in_delayslot_o),
					 .id_inst(id_inst_o),
					 .ex_alusel(ex_alusel_i), .ex_aluop(ex_aluop_i),
					 .ex_reg1(ex_reg1_i), .ex_reg2(ex_reg2_i), .ex_wd(ex_wd_i), .ex_wreg(ex_wreg_i),
					 .is_in_delayslot_o(id_is_in_delayslot_i), .ex_is_in_delayslot(ex_is_in_delayslot_i), .ex_link_address(ex_link_address_i),
					 .ex_inst(ex_inst_i),
					 .stall(stop),
					 .flush(flush),
					 .exc_code_i(id_exc_code_o),
					 .exc_epc_i(id_exc_epc_o),
					 .exc_badvaddr_i(id_exc_badvaddr_o),
					 .exc_code_o(ex_exc_code_i),
					 .exc_epc_o(ex_exc_epc_i),
					 .exc_badvaddr_o(ex_exc_badvaddr_i));
	
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
			 .mem_cp0_data(ex_mem_cp0_data),
			 .mem_cp0_reg_we(ex_mem_cp0_reg_we),
			 .mem_cp0_reg_write_addr(ex_mem_cp0_write_addr),
			 .cp0_reg_read_addr_o(ex_cp0_reg_read_addr_o),
			 .cp0_reg_data_o(ex_cp0_reg_data_o),
			 .cp0_reg_write_addr_o(ex_cp0_reg_write_addr_o),
			 .cp0_reg_we_o(ex_cp0_reg_we_o),
			 .exc_code_i(ex_exc_code_i),
			 .exc_epc_i(ex_exc_epc_i),
			 .exc_badvaddr_i(ex_exc_badvaddr_i),
			 .exc_code_o(ex_exc_code_o),
			 .exc_epc_o(ex_exc_epc_o),
			 .exc_badvaddr_o(ex_exc_badvaddr_o));
	
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
						.stall(stop),
						.flush(flush),
						.exc_code_i(ex_exc_code_o),
					   .exc_epc_i(ex_exc_epc_o),
					   .exc_badvaddr_i(ex_exc_badvaddr_o),
					   .exc_code_o(mem_exc_code_i),
					   .exc_epc_o(mem_exc_epc_i),
					   .exc_badvaddr_o(mem_exc_badvaddr_i));
	
	MEM mem0(.rst(rst), .wd_i(mem_wd_i), .wreg_i(mem_wreg_i), .wdata_i(mem_wdata_i), 
				.whilo_i(mem_whilo_i), .hi_i(mem_hi_i), .lo_i(mem_lo_i),
				.aluop_i(mem_aluop_i), .mem_addr_i(mem_addr_i), .reg2_i(mem_reg2_i), .mem_data_i(mmu_data_o),
				.wd_o(mem_wd_o), .wreg_o(mem_wreg_o), .wdata_o(mem_wdata_o),
				.whilo_o(mem_whilo_o), .hi_o(mem_hi_o), .lo_o(mem_lo_o),
				.mem_data_o(mmu_data_i), .mem_ce_o(mmu_ce), .mem_sel_o(mmu_sel),
				.mem_addr_o(mmu_addr), .mem_we_o(mmu_we_i),
				.cp0_reg_we_i(mem_cp0_reg_we_i),
				.cp0_reg_write_addr_i(mem_cp0_reg_write_addr_i),
				.cp0_reg_data_i(mem_cp0_reg_data_i),
				.cp0_reg_data_o(ex_mem_cp0_data),
				.cp0_reg_write_addr_o(ex_mem_cp0_write_addr),
				.cp0_reg_we_o(ex_mem_cp0_reg_we),
				.exc_code_from_mmu(mmu_exc_code),
				.exc_code_i(mem_exc_code_i),
				.exc_epc_i(mem_exc_epc_i),
				.exc_badvaddr_i(mem_exc_badvaddr_i),
				.exc_code_o(cp0_exc_code_i),
				.exc_epc_o(cp0_exc_epc_i),
				.exc_badvaddr_o(cp0_exc_badvaddr_i),
				.stop_i(mmu_busy),
				.CP0_INDEX_i(index_o),
				.CP0_ENTRY_HI_i(entry_hi_o),
				.CP0_ENTRY_LO1_i(entry_lo1_o),
				.CP0_ENTRY_LO0_i(entry_lo0_o),
				.mmu_tlb_write_struct(tlb_write_struct),
				.stop_o(stop_from_mem));
				
	MEM_WB mem_wb0(.clk(clk), .rst(rst),
						.mem_wd(mem_wd_o), .mem_wreg(mem_wreg_o),	.mem_wdata(mem_wdata_o),
						.mem_whilo(mem_whilo_o), .mem_hi(mem_hi_o), .mem_lo(mem_lo_o),
						.wb_wd(wb_wd_i), .wb_wreg(wb_wreg_i), .wb_wdata(wb_wdata_i),
						.wb_whilo(wb_whilo_i), .wb_hi(wb_hi_i), .wb_lo(wb_lo_i),
						.stall(stop),
						.flush(flush));
						
	HILO hilo0(.clk(clk), .rst(rst), .we(wb_whilo_i),
				  .hi_i(wb_hi_i), .lo_i(wb_lo_i), .hi_o(ex_hi_i), .lo_o(ex_lo_i));
	
	CP0 cp0 (
    .clk(clk), 
    .rst(rst), 
    .we_i(ex_mem_cp0_reg_we), 
    .waddr_i(ex_mem_cp0_write_addr), 
    .raddr_i(ex_cp0_reg_read_addr_o), 
    .wdata_i(ex_mem_cp0_data), 
    .int_com(cp0_int_com), 
    .exc_code_i(cp0_exc_code_i), 
    .exc_epc_i(cp0_exc_epc_i), 
    .exc_badvaddr_i(cp0_exc_badvaddr_i), 
    .flush_req(cp0_flush_req), 
    .exc_jump_flag(cp0_exc_jump_flag), 
    .exc_jump_addr(cp0_exc_jump_addr), 
    .data_o(cp0_data_o), 
    .index_o(index_o), 
    .entry_lo0_o(entry_lo0_o), 
    .entry_lo1_o(entry_lo1_o), 
    .badvaddr_o(badvaddr_o), 
    .count_o(count_o), 
    .entry_hi_o(entry_hi_o), 
    .compare_o(compare_o), 
    .status_o(status_o), 
    .cause_o(cause_o), 
    .epc_o(epc_o), 
    .ebase_o(ebase_o), 
    .has_int(has_int)
	);
	
	CTRL ctrl0 (
    .clk(clk), 
    .rst(rst), 
    .stop_from_id(stop_from_id), 
    .stop_from_ex(stop_from_ex), 
    .stop_from_mem(stop_from_mem), 
    .stop_from_pc(stop_from_pc), 
    .flush_i(ctrl_flush_i), 
    .stop(stop), 
    .flush_o(flush)
    );
	
	MMU mmu0 (
    .clk(clk), 
    .rst(rst), 
    .ce(mmu_ce), 
    .we_i(mmu_we_i), 
    .sel(mmu_sel), 
    .data_i(mmu_data_i), 
    .addr(mmu_addr), 
    .data_o(mmu_data_o), 
    .addr_pc(mmu_addr_pc), 
    .data_inst(mmu_data_inst), 
    .busy(mmu_busy), 
    .exc_code(mmu_exc_code), 
    .exc_code_pc(mmu_exc_code_pc), 
    .tlb_write_struct(tlb_write_struct), 
    .dev_mem_addr(dev_mem_addr), 
    .dev_mem_data_in(dev_mem_data_in), 
    .dev_mem_data_out(dev_mem_data_out), 
    .dev_mem_is_write(dev_mem_is_write), 
    .dev_mem_busy(dev_mem_busy), 
    .busy_1(stop_from_ex)
    );
	
	phy_mem phy_mem0 (
    .clk50M(clk_mem), 
    .rst(rst), 
    .is_write(dev_mem_is_write), 
    .addr_in(dev_mem_addr), 
    .data_in(dev_mem_data_out), 
    .data_out(dev_mem_data_in), 
    .busy(dev_mem_busy), 
    .int_com_ack(int_ack), 
    .segdisp(), 
    .rom_selector(), 
    .baseram_addr(baseram_addr), 
    .baseram_data(baseram_data), 
    .baseram_ce(baseram_ce), 
    .baseram_oe(baseram_oe), 
    .baseram_we(baseram_we), 
    .extram_addr(extram_addr), 
    .extram_data(extram_data), 
    .extram_ce(extram_ce), 
    .extram_oe(extram_oe), 
    .extram_we(extram_we), 
    .com_data_in(ser_data_out), 
    .com_data_out(ser_data_in),
    .enable_com_write(ser_write_enable), 
    .com_read_ready(cp0_int_com), 
    .com_write_ready(ser_write_not_busy), 
    .flash_addr(flash_addr), 
    .flash_data(flash_data), 
    .flash_ctl(flash_ctl)
    );
	
	serial_port serial_port0 (
    .clk(clk_serial), 
    .rst(rst), 
    .int_req(cp0_int_com), 
    .int_ack(int_ack), 
    .data_out(ser_data_out), 
    .data_in(ser_data_in), 
    .write_enable(ser_write_enable), 
    .fuck1(), 
    .fuck2(), 
    .write_not_busy(ser_write_not_busy), 
    .TxD(TxD), 
    .RxD(RxD)
    );
	 
	 DebugControl debugcontrol (
    .clk(clk_serial), 
    .rst(rst), 
    .read_ready(read_ready), 
    .write_ready(write_ready), 
    .com_data_in(com_data_in1), 
    .com_data_out(com_data_out1), 
    .com_write_enable(com_write_enable1), 
    .com_int_ack(com_int_ack1), 
    .has_break(has_break), 
    .reg_data_in(debug_data), 
    .reg_addr_out(debug_addr), 
    .break_flag(break_flag), 
    .stop_flag(stop_flag), 
    .break_addr(break_addr)
    );
	 
	serial_port serial_port1 (
    .clk(clk_serial), 
    .rst(rst), 
    .int_req(read_ready), 
    .int_ack(com_int_ack1), 
    .data_out(com_data_in1), 
    .data_in(com_data_out1), 
    .write_enable(com_write_enable1), 
    .fuck1(), 
    .fuck2(), 
    .write_not_busy(write_ready), 
    .TxD(usb_txd), 
    .RxD(usb_rxd)
    );
	
endmodule
