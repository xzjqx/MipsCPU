`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:00 07/03/2016 
// Design Name: 
// Module Name:    Mips_CPU_SOPC 
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
module MipsCPU_SOPC(
	input wire clk_init,
	input wire rst_init,
	
	output wire [15:0] led_pc
    );

	wire [31:0] rom_data_i;
	wire [31:0] rom_addr_o;
	wire rom_ce_o;
	
	wire [31:0] ram_data_o; 
	wire [31:0] ram_addr_i;
	wire [31:0] ram_data_i;
	wire ram_we_i;
	wire ram_ce_i;
	wire [3:0] ram_sel_i;
	
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

	MipsCPU MipsCPU0 (
		.clk(clk), 
		.rst(rst),
		.clk_mem(clk_mem),
		.clk_serial(clk_serial),
		
		.led_pc(led_pc)
	);
	
	Inst_ROM Inst_ROM0 (
		.ce(rom_ce_o),
		.addr(rom_addr_o),
		.inst(rom_data_i)
	);
	
	DATA_RAM DATA_RAM0 (
		.clk(clk),
		.data_i(ram_data_i), 
		.addr(ram_addr_i),
		.data_o(ram_data_o),
		.we(ram_we_i),
		.ce(ram_ce_i),
		.sel(ram_sel_i)
	);

endmodule
