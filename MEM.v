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
	
	input wire [7:0] aluop_i,
	input wire [31:0] mem_addr_i,
	input wire [31:0] reg2_i,
	
	input wire [31:0] mem_data_i,
	//CP0å¼•å…¥çš„æ–°çš„æ¥å
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
	output wire mem_we_o,
	
	input wire [31:0] exc_i,
	input wire is_in_delayslot_i,
	input wire [31:0] current_inst_address_i,	
	
	input wire [31:0] cp0_status_i,
	input wire [31:0] cp0_cause_i,
	input wire [31:0] cp0_epc_i,

	input wire wb_cp0_reg_we,
	input wire [4:0] wb_cp0_reg_write_addr,
	input wire [31:0] wb_cp0_reg_data,
	
	output reg [31:0] exc_o,
	output wire [31:0] cp0_epc_o,
	output wire is_in_delayslot_o,
	output wire [31:0] current_inst_address_o	
    );

	reg[31:0] cp0_status;
	reg[31:0] cp0_cause;
	reg[31:0] cp0_epc;

	reg mem_we;
	assign mem_we_o = mem_we & (~(|exc_o));

	assign is_in_delayslot_o = is_in_delayslot_i;
	assign current_inst_address_o = current_inst_address_i;
	assign cp0_epc_o = cp0_epc;
	
	always @ (*) begin
		if(rst == `RstEnable) begin
			cp0_status <= `ZeroWord;
		end else if((wb_cp0_reg_we == 1'b1) && 
								(wb_cp0_reg_write_addr == `CP0_REG_STATUS ))begin
			cp0_status <= wb_cp0_reg_data;
		end else begin
		  cp0_status <= cp0_status_i;
		end
	end
	
	always @ (*) begin
		if(rst == `RstEnable) begin
			cp0_epc <= `ZeroWord;
		end else if((wb_cp0_reg_we == 1'b1) && 
								(wb_cp0_reg_write_addr == `CP0_REG_EPC ))begin
			cp0_epc <= wb_cp0_reg_data;
		end else begin
		  cp0_epc <= cp0_epc_i;
		end
	end

  always @ (*) begin
		if(rst == `RstEnable) begin
			cp0_cause <= `ZeroWord;
		end else if((wb_cp0_reg_we == 1'b1) && 
								(wb_cp0_reg_write_addr == `CP0_REG_CAUSE ))begin
			cp0_cause[9:8] <= wb_cp0_reg_data[9:8];
			cp0_cause[22] <= wb_cp0_reg_data[22];
			cp0_cause[23] <= wb_cp0_reg_data[23];
		end else begin
		  cp0_cause <= cp0_cause_i;
		end
	end

	always @ (*) begin
		if(rst == `RstEnable) begin
			exc_o <= `ZeroWord;
		end else begin
			exc_o <= `ZeroWord;
			
			if(current_inst_address_i != `ZeroWord) begin
				if(((cp0_cause[15:8] & (cp0_status[15:8])) != 8'h00) && (cp0_status[1] == 1'b0) && 
							(cp0_status[0] == 1'b1)) begin
					exc_o <= 32'h00000001;        //interrupt
				end else if(exc_i[8] == 1'b1) begin
			  	exc_o <= 32'h00000008;        //syscall
				end else if(exc_i[9] == 1'b1) begin
					exc_o <= 32'h0000000a;        //inst_invalid
				end else if(exc_i[12] == 1'b1) begin  //·µ»ØÖ¸Áî
					exc_o <= 32'h0000000e;
				end
			end
				
		end
	end

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
			cp0_reg_we_o <= 1'b0;
			cp0_reg_write_addr_o <= 5'b00000;
			cp0_reg_data_o <= 32'b0;
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
				`LW: begin	//LW
					mem_addr_o = mem_addr_i;
					mem_we = 1'b0;
					wdata_o = mem_data_i;
					mem_ce_o = 1'b1;
				end
				`SW: begin	//SW
					mem_addr_o = mem_addr_i;
					mem_we = 1'b1;
					mem_data_o = reg2_i;
					mem_ce_o = 1'b1;
				end
				`LB: begin	//LB
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
				`LBU: begin	//LBU
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
				`SB: begin	//SB
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
				`LHU: begin	//LHU
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
