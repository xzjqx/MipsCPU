`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:01:59 07/01/2016 
// Design Name: 
// Module Name:    MEM 
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

module MEM(
	input wire rst,
	input wire [4:0] wd_i,
	input wire wreg_i,
	input wire [31:0] wdata_i,
	
	input wire whilo_i,
	input wire [31:0] hi_i,
	input wire [31:0] lo_i,
	
	input wire [5:0] aluop_i,
	input wire [31:0] mem_addr_i,
	input wire [31:0] reg2_i,
	
	input wire [31:0] mem_data_i,
	//CP0引入的新的接口
	input wire cp0_reg_we_i,
	input wire [4:0] cp0_reg_write_addr_i,
	input wire [31:0] cp0_reg_data_i,

	output reg cp0_reg_we_o,
	output reg [4:0] cp0_reg_write_addr_o,
	output reg [31:0] cp0_reg_data_o,
	
	output reg [4:0] wd_o,
	output reg wreg_o,
	output reg [31:0] wdata_o,
	
	output reg whilo_o,
	output reg [31:0] hi_o,
	output reg [31:0] lo_o,
	
	output reg [31:0] mem_data_o,
	output reg mem_ce_o,
	output reg mem_sel_o,
	output reg [31:0] mem_addr_o,
	output wire mem_we_o
    );

	reg mem_we;
	assign mem_we_o = mem_we;

	always @(*) begin
		if (rst == 1'b1) begin
			wd_o = 5'b0;
			wreg_o = 1'b0;
			wdata_o = 32'b0;
			whilo_o = 1'b0;
			hi_o = 32'b0;
			lo_o = 32'b0;
			mem_data_o = 32'b0;
			mem_ce_o = 1'b0;
			mem_sel_o = 1'b0;
			mem_addr_o = 32'b0;
			mem_we = 1'b0;
		end
		else begin
			wd_o = wd_i;
			wreg_o = wreg_i;
			wdata_o = wdata_i;
			whilo_o = whilo_i;
			hi_o = hi_i;
			lo_o = lo_i;
			mem_ce_o = 1'b0;
			mem_sel_o = 1'b1;
			mem_addr_o = 32'b0;
			mem_we = 1'b0;
			cp0_reg_we_o = cp0_reg_we_i;
			cp0_reg_write_addr_o = cp0_reg_write_addr_i;
			cp0_reg_data_o = cp0_reg_data_i;
			case(aluop_i)
				6'b100011: begin	//LW
					mem_addr_o = mem_addr_i;
					mem_we = 1'b0;
					wdata_o = mem_data_i;
					mem_ce_o = 1'b1;
				end
				6'b101011: begin	//SW
					mem_addr_o = mem_addr_i;
					mem_we = 1'b1;
					mem_data_o = reg2_i;
					mem_ce_o = 1'b1;
				end
				6'b100000: begin	//LB
					mem_addr_o = mem_addr_i;
					mem_we = 1'b0;
					mem_ce_o = 1'b1;
					wdata_o = {{24{mem_data_i[31]}}, mem_data_i[31:24]};
					/*case(mem_addr_i[1:0])
						2'b11: begin
							wdata_o <= {{24{mem_data_i[31]}}, mem_data_i[31:24]};
							mem_sel_o <= 4'b1000;
						end
						2'b10: begin
							wdata_o <= {{24{mem_data_i[23]}}, mem_data_i[23:16]};
							mem_sel_o <= 4'b0100;
						end
						2'b01: begin
							wdata_o <= {{24{mem_data_i[15]}}, mem_data_i[15:8]};
							mem_sel_o <= 4'b0010;
						end
						2'b00: begin
							wdata_o <= {{24{mem_data_i[7]}}, mem_data_i[7:0]};
							mem_sel_o <= 4'b0001;
						end
						default: begin
							mem_sel_o <= 4'b0;
						end
					endcase*/
				end
				6'b100100: begin	//LBU
					mem_addr_o = mem_addr_i;
					mem_we = 1'b0;
					mem_ce_o = 1'b1;
					wdata_o = {24'b0, mem_data_i[31:24]};
					/*case(mem_addr_i[1:0])
						2'b11: begin
							wdata_o <= {24'b0, mem_data_i[31:24]};
							mem_sel_o <= 4'b1000;
						end
						2'b10: begin
							wdata_o <= {24'b0, mem_data_i[23:16]};
							mem_sel_o <= 4'b0100;
						end
						2'b01: begin
							wdata_o <= {24'b0, mem_data_i[15:8]};
							mem_sel_o <= 4'b0010;
						end
						2'b00: begin
							wdata_o <= {24'b0, mem_data_i[7:0]};
							mem_sel_o <= 4'b0001;
						end
						default: begin
							mem_sel_o <= 4'b0;
						end
					endcase*/
				end
				6'b101000: begin	//SB
					mem_addr_o = mem_addr_i;
					mem_we = 1'b1;
					mem_data_o = {reg2_i[7:0], reg2_i[7:0], reg2_i[7:0], reg2_i[7:0]};
					mem_ce_o = 1'b1;
					mem_sel_o = 1'b0;
					/*case(mem_addr_i[1:0])
						2'b11: begin
							mem_sel_o <= 4'b1000;
						end
						2'b10: begin
							mem_sel_o <= 4'b0100;
						end
						2'b01: begin
							mem_sel_o <= 4'b0010;
						end
						2'b00: begin
							mem_sel_o <= 4'b0001;
						end
						default: begin
							mem_sel_o <= 4'b0;
						end
					endcase*/
				end
				6'b100101: begin	//LHU
					mem_addr_o = mem_addr_i;
					mem_we = 1'b0;
					mem_ce_o = 1'b1;
					wdata_o = {16'b0, mem_data_i[31:16]};
					/*case(mem_addr_i[1:0])
						2'b10: begin
							wdata_o <= {16'b0, mem_data_i[31:16]};
							mem_sel_o <= 4'b1100;
						end
						2'b00: begin
							wdata_o <= {16'b0, mem_data_i[15:0]};
							mem_sel_o <= 4'b0011;
						end
						default:
							mem_sel_o <= 4'b0;
					endcase*/
				end
			endcase
		end
	end
	
endmodule
