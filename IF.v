`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:29 07/20/2016 
// Design Name: 
// Module Name:    IF 
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

module IF(
	input wire[31:0] addr_i,
	input wire[31:0] inst_i,
	
	input wire[`EXC_CODE_WIDTH-1:0] mmu_exc_code,
	input wire has_int_from_cp0,
	
	output reg[31:0] mem_addr_o,
	output reg[31:0] addr_o,
	output reg[31:0] inst_o,
	output reg[`EXC_CODE_WIDTH-1:0] exc_code_o
);
	 
	always @ (*) begin
		if (mmu_exc_code != `EC_NONE) begin
			inst_o <= 32'h00000000; 
			addr_o <= addr_i; 
			mem_addr_o <= addr_i; 
			exc_code_o <= mmu_exc_code;
		end else if (has_int_from_cp0 != 0) begin
			inst_o <= 32'h00000000; 
			addr_o <= addr_i; 
			mem_addr_o <= addr_i; 
			exc_code_o <= `EC_INT;
		end else begin 
			addr_o <= addr_i;
			mem_addr_o <= addr_i;
			inst_o <= inst_i;
			exc_code_o <= `EC_NONE;
		end
	end
	 
endmodule
