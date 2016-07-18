`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:46 07/11/2016 
// Design Name: 
// Module Name:    cp0_reg 
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

module CP0(
	input wire			clk,
	input wire			rst,
	input wire			we_i,
	input wire[4:0]		waddr_i,
	input wire[4:0]		raddr_i,
	input wire[31:0]	wdata_i,
	input wire[5:0]		int_i,

	output reg[31:0]	data_o,
	output reg[31:0]	count_o,
	output reg[31:0]	compare_o,
	output reg[31:0]	status_o,
	output reg[31:0]	cause_o,
	output reg[31:0]	epc_o,
	output reg[31:0]	config_o,
	output reg[31:0]	prid_o,
	output reg 			timer_int_o,
	
	input wire [31:0] exc_i,
	input wire [31:0] current_inst_addr_i,
	input wire is_in_delayslot_i
    );

always @(posedge clk) begin
	if (rst == 1'b1) begin
		// reset
		count_o <= 32'b0;
		compare_o <= 32'b0;
		status_o <= 32'b00010000000000000000000000000000;
		cause_o <= 32'b0;
		epc_o <= 32'b0;
		config_o <= 32'b00000000000000001000000000000000;
		prid_o <= 	32'b00000000010011000000000100000010;
		timer_int_o <= 1'b0;
	end 
	else begin
		count_o <= count_o+1;
		cause_o[15:10] <= int_i;
		if(compare_o != 32'b0 && count_o == compare_o) begin
			timer_int_o <= 1'b1;
		end
		if(we_i == 1'b1) begin
			case(waddr_i)
				`COUNT_CP0:begin
					count_o <= wdata_i;
				end
				`COMPARE_CP0:begin
					compare_o <= wdata_i;
					timer_int_o <= 1'b0;
				end
				`STATUS_CP0:begin
					status_o <= wdata_i;
				end
				`EPC_CP0:begin
					epc_o <= wdata_i;
				end
				`CAUSE_CP0:begin
					cause_o [9:8] <= wdata_i[9:8];
					cause_o [23]  <= wdata_i[23];
					cause_o [22]  <= wdata_i[22];
				end
			endcase
		end	//if	
		case (exc_i)
			32'h00000001: begin
				if(is_in_delayslot_i == 1'b1 ) begin
					epc_o <= current_inst_addr_i - 4 ;
					cause_o[31] <= 1'b1;
				end else begin
				  epc_o <= current_inst_addr_i;
				  cause_o[31] <= 1'b0;
				end
				status_o[1] <= 1'b1;
				cause_o[6:2] <= 5'b00000;
				
			end
			32'h00000008: begin
				if(status_o[1] == 1'b0) begin
					if(is_in_delayslot_i == 1'b1 ) begin
						epc_o <= current_inst_addr_i - 4 ;
						cause_o[31] <= 1'b1;
					end else begin
						epc_o <= current_inst_addr_i;
					  	cause_o[31] <= 1'b0;
					end
				end
				status_o[1] <= 1'b1;
				cause_o[6:2] <= 5'b01000;			
			end
			32'h0000000a: begin
				if(status_o[1] == 1'b0) begin
					if(is_in_delayslot_i == 1'b1 ) begin
						epc_o <= current_inst_addr_i - 4 ;
						cause_o[31] <= 1'b1;
					end else begin
				  	epc_o <= current_inst_addr_i;
				  	cause_o[31] <= 1'b0;
					end
				end
				status_o[1] <= 1'b1;
				cause_o[6:2] <= 5'b01010;					
			end	
			32'h0000000e: begin
				status_o[1] <= 1'b0;
			end
			default: begin
			end
		endcase
	end//else
end//always


always @(*) begin
	if (rst == 1'b1) begin
		// reset
		data_o <= 32'b0;
	end
	else begin
		case(raddr_i)
			`COUNT_CP0:begin
				data_o <= count_o;
			end
			`COMPARE_CP0:begin
				data_o <= compare_o;
			end
			`STATUS_CP0:begin
				data_o <= status_o;
			end
			`CAUSE_CP0:begin
				data_o <= cause_o;
			end
			`EPC_CP0:begin
				data_o <= epc_o;
			end
			`PRID_CP0:begin
				data_o <= prid_o;
			end
			`CONFIG_CP0:begin
				data_o <= config_o;
			end
		endcase
	end//else
end

endmodule
