`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:06:51 07/03/2016 
// Design Name: 
// Module Name:    Inst_MEM 
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
module Inst_ROM(
	input wire ce,
	input wire [31:0] addr,
	output reg [31:0] inst,
	output reg [31:0] pc_o
    );

	reg [31:0] inst_mem[0:1000];	//ROM大小，1000条指令
	
	initial $readmemh ("inst_rom.data", inst_mem);
	
	always @(*) begin
		pc_o = addr;
		if (ce == 1'b0)
			inst = 32'b0;
		else
			inst = inst_mem[addr[11:2]];
	end

endmodule
