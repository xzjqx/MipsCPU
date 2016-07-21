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
	input wire int_com,
	
	input wire [4:0] exc_code_i,
	input wire [31:0] exc_epc_i,
	input wire [31:0] exc_badvaddr_i,
	 
	output reg flush_req,
	output reg exc_jump_flag,
	output reg [31:0] exc_jump_addr,

	output reg[31:0]	data_o,
	
	output reg[31:0] index_o,
   output reg[31:0] entry_lo0_o,
   output reg[31:0] entry_lo1_o,
   output reg[31:0] badvaddr_o,
	output reg[31:0]	count_o,
	output reg[31:0] entry_hi_o,
	output reg[31:0]	compare_o,
	output reg[31:0]	status_o,
	output reg[31:0]	cause_o,
	output reg[31:0]	epc_o,
	output reg[31:0] ebase_o,
	
	output wire has_int
    );
	 
	wire [7:0] int_actual;
	reg timer_int_o;
	assign int_actual = { timer_int_o, 1'b0, 1'b0, int_com, 4'b0	};
	assign has_int = (int_actual & status_o[15:8]) !=0  && status_o[0] && !status_o[1];
	
	always @(*) begin
		if (rst == 1'b1) begin
			flush_req <= 1'b0;
		end else begin
			if (exc_code_i != `EC_NONE)
				flush_req <= 1'b1;
			else
				flush_req <= 1'b0;
		end
	 end

always @(posedge clk) begin
	if (rst == 1'b1) begin
		// reset
		index_o <= 32'b0;
		entry_lo0_o <= 32'b0;
		entry_lo1_o <= 32'b0;
		badvaddr_o <= 32'b0;
		count_o <= 32'b0;
		entry_hi_o <= 32'b0;
		compare_o <= 32'b0;
		status_o <= 32'b00010000000000000000000000000000;
		cause_o <= 32'b0;
		epc_o <= 32'b0;
		ebase_o <= 32'h80000000;
		timer_int_o <= 1'b0;
		exc_jump_flag <= 0;
		exc_jump_addr <= `ZeroWord;
	end 
	else begin
		cause_o[15:8] <= int_actual;
		count_o <= count_o+1;
		
		if(compare_o != 32'b0 && count_o == compare_o) begin
			timer_int_o <= 1'b1;
		end
		
		exc_jump_flag <= 0;
		exc_jump_addr <= `ZeroWord;
		
		case (exc_code_i)
			`EC_NONE:
				if (we_i == 1'b1) begin
					if (waddr_i == `COMPARE_CP0)
						timer_int_o <= 0;
					//regs[waddr] <= wdata;
					case(waddr_i)
						`INDEX_CP0:begin
							index_o <= wdata_i;
						end
						`ENTRYLO0_CP0:begin
							entry_lo0_o <= wdata_i;
						end
						`ENTRYLO1_CP0:begin
							entry_lo1_o <= wdata_i;
						end
						`BADVADDR_CP0:begin
							badvaddr_o <= wdata_i;
						end
						`COUNT_CP0:begin
							count_o <= wdata_i;
						end
						`ENTRYHI_CP0:begin
							entry_hi_o <= wdata_i;
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
							cause_o <= wdata_i;
						end
						`EBASE_CP0:begin
							ebase_o <= wdata_i;
						end
						
					endcase
				end
						
			`EC_ERET: begin
				exc_jump_flag <= 1;
				exc_jump_addr <= epc_o;
			end
						
			default: begin
				exc_jump_flag <= 1;
		
				if (status_o[1]) begin
					exc_jump_addr <= 32'h180 + {2'b10, ebase_o[29:12], {12{1'b0}} };
					cause_o[6:2] <= exc_code_i;
				end
				else begin
					status_o[1] <= 1;
					epc_o <= exc_epc_i;
					badvaddr_o <= exc_badvaddr_i;
					cause_o[6:2] <= exc_code_i;
					
					if (exc_code_i == `EC_TLB_MOD || exc_code_i == `EC_TLBL || exc_code_i == `EC_TLBS)
						entry_hi_o[31:13] <= exc_badvaddr_i[31:13];

					if (exc_code_i ==`EC_TLBL || exc_code_i == `EC_TLBS) //tlb refill
					begin
						exc_jump_addr <= 	{2'b10, ebase_o[29:12], {12{1'b0}} };
					end
					else begin
						exc_jump_addr <= 	32'h180 + {2'b10, ebase_o[29:12], {12{1'b0}} };
					end
				end
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
			`INDEX_CP0:begin
				data_o <= index_o;
			end
			`ENTRYLO0_CP0:begin
				data_o <= entry_lo0_o;
			end
			`ENTRYLO1_CP0:begin
				data_o <= entry_lo1_o;
			end
			`BADVADDR_CP0:begin
				data_o <= badvaddr_o;
			end
			`COUNT_CP0:begin
				data_o <= count_o;
			end
			`ENTRYHI_CP0:begin
				data_o <= entry_hi_o;
			end
			`COMPARE_CP0:begin
				data_o <= compare_o;
			end
			`STATUS_CP0:begin
				data_o <= status_o;
			end
			`CAUSE_CP0:begin
				data_o <= {16'b0000000000000000, int_actual, cause_o[7:0]};
			end
			`EPC_CP0:begin
				data_o <= epc_o;
			end
			`EBASE_CP0:begin
				data_o <= ebase_o;
			end
		endcase
	end//else
end

endmodule
