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
	input wire clk,
	input wire rst
    );

	wire [31:0] rom_data_i;
	wire [31:0] rom_addr_o;
	wire rom_ce_o;
	
	wire [31:0] ram_data_o; 
	wire [31:0] ram_addr_i;
	wire [31:0] ram_data_i;
	wire ram_we_i;
	wire ram_ce_i;
	wire ram_sel_i;

	MipsCPU MipsCPU0 (
		.clk(clk), 
		.rst(rst), 
		.rom_data_i(rom_data_i),  
		.rom_addr_o(rom_addr_o), 
		.rom_ce_o(rom_ce_o),
		
		.ram_data_i(ram_data_o), 
		.ram_addr_o(ram_addr_i),
		.ram_data_o(ram_data_i),
		.ram_we_o(ram_we_i),
		.ram_ce_o(ram_ce_i),
		.ram_sel_o(ram_sel_i)
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
