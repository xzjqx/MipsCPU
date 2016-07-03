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

	MipsCPU MipsCPU0 (
		.clk(clk), 
		.rst(rst), 
		.rom_data_i(rom_data_i), 
		.rom_addr_o(rom_addr_o), 
		.rom_ce_o(rom_ce_o)
	);
	
	Inst_ROM Inst_ROM0 (
		.ce(rom_ce_o),
		.addr(rom_addr_o),
		.inst(rom_data_i)
	);

endmodule
