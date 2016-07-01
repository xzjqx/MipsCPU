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
	
	PC pc0(.clk(clk), .rst(rst), .pc(pc), .ce(rom_ce_o));
	
	assign rom_addr_o = pc;
	
	IF_ID if_id0(.clk(clk), .rst(rst), .if_pc(pc), .if_inst(rom_data_i),
					 .id_pc(id_pc_i), .id_inst(id_inst_i));
					 
	ID id0(.rst(rst), .pc_i(id_pc_i), .inst_i(id_inst_i));
	
	REG reg0(.clk(clk), .rst(rst), .we(wb_wreg_i), .waddr(wb_wd_i), .wdata(wb_wdata_i),
				.re1(reg1_read), .raddr1(reg1_addr), .rdata1(reg1_data),
				.re2(reg2_read), .raddr2(reg2_addr), .rdata2(reg2_data));
	
	ID_EX id_ex0(.clk(clk), .rst(rst), );

endmodule
