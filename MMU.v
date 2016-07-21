`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:19 07/20/2016 
// Design Name: 
// Module Name:    MMU 
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

module MMU(
	input wire clk,
	input wire rst,
	
	input wire ce,
	input wire we_i,
	input wire[3:0] sel,
	input wire[31:0] data_i,
	input wire[31:0] addr,
	output wire[31:0] data_o,

	input wire[31:0] addr_pc,
	output wire[31:0] data_inst,
	
	output wire busy,
	output reg [`EXC_CODE_WIDTH-1:0] exc_code,
	output reg [`EXC_CODE_WIDTH-1:0] exc_code_pc,

	input wire [ `TLB_WRITE_STRUCT_WIDTH-1: 0] tlb_write_struct,
	
	output reg [31:0] dev_mem_addr,
	input wire [31:0] dev_mem_data_in,
	output reg [31:0] dev_mem_data_out,
	output reg dev_mem_is_write,
	input wire dev_mem_busy,
	output reg busy_1
);
	
	wire tlb_write_enable;
	wire [`TLB_INDEX_WIDTH-1:0] tlb_write_index;
	wire [`TLB_ENTRY_WIDTH-1:0] tlb_write_entry;
	wire tlb_missing, tlb_writable;
	reg [`TLB_ENTRY_WIDTH-1:0] tlb_mem[0:`TLB_NR_ENTRY-1];
	reg[1:0] times;
	assign {tlb_write_enable, tlb_write_index, tlb_write_entry} = tlb_write_struct;
	
	
	localparam READ = 2'b00, WRITE_SB = 2'b01, WRITE_DO_WRITE = 2'b10, WRITE_DO_WRITE1 = 2'b11;
	reg [1:0] state;
	
	assign busy = ((state != READ) || (dev_mem_busy));
	
	wire [31:0] mem_unaligned_addr = (ce != `ChipEnable) ? addr_pc: addr;
	
	assign data_inst = dev_mem_data_in;
	assign data_o = dev_mem_data_in;
	
	wire PCWorkFlag = (state == READ && dev_mem_busy == 0 && ce != `ChipEnable);
	
	wire [31:0] mem_vrt_addr = {mem_unaligned_addr[31:2], 2'b00};
	
	wire fourAlignedFlag = mem_unaligned_addr[1:0] == 2'b00;


	always @(*) begin
		exc_code = `EC_NONE;
		exc_code_pc = `EC_NONE;
		
		if (!fourAlignedFlag && PCWorkFlag) begin
			exc_code_pc = `EC_ADEL;
		end
		
		if (tlb_missing && PCWorkFlag) begin
			exc_code_pc = `EC_TLBL;
		end
		
		if (sel == 4'b0000 && ce==`ChipEnable) begin
			if (we_i==`WriteEnable) begin
				exc_code = `EC_ADES;
			end else begin
				exc_code = `EC_ADEL;
			end
		end
		
		if (tlb_missing && ce==`ChipEnable) begin
			if (we_i==`WriteEnable) begin
				exc_code = `EC_TLBS;
			end else begin
				exc_code = `EC_TLBL;
			end
		end else if (!tlb_writable && we_i==`WriteEnable && ce==`ChipEnable) begin
			exc_code = `EC_TLB_MOD;
		end
		
	end
	
	assign impl_tlb_direct_mapping =
		(mem_vrt_addr[31:28] >= 4'h8 && mem_vrt_addr[31:28] <= 4'hb);

	wire [0:`TLB_NR_ENTRY*2-1] impl_tlb_hit_entry;
	wire [0:`TLB_NR_ENTRY-1] impl_tlb_addr_equal;
	wire [0:`TLB_NR_ENTRY*2-1] impl_tlb_hit_entry_comb [20:0];
	wire [20:0] impl_tlb_lookup_result;
	genvar i, j;
	generate
		for (i = 0; i < `TLB_NR_ENTRY; i = i + 1)  begin
			assign impl_tlb_addr_equal[i] =
				tlb_mem[i][62:44] == mem_vrt_addr[31:13];
			
			assign impl_tlb_hit_entry[i * 2] =
				impl_tlb_addr_equal[i] & tlb_mem[i][0] & ~mem_vrt_addr[12];
			assign impl_tlb_hit_entry[i * 2 + 1] =
				impl_tlb_addr_equal[i] & tlb_mem[i][22] & mem_vrt_addr[12];

			for (j = 0; j <= 20; j = j + 1) begin
				assign impl_tlb_hit_entry_comb[j][i * 2]
					= impl_tlb_hit_entry[i * 2] & tlb_mem[i][j + 1];
				assign impl_tlb_hit_entry_comb[j][i * 2 + 1]
					= impl_tlb_hit_entry[i * 2 + 1] & tlb_mem[i][j + 23];
			end
		end

		for (i = 0; i <= 20; i = i + 1)
			assign impl_tlb_lookup_result[i] = |impl_tlb_hit_entry_comb[i];
	endgenerate

	assign tlb_missing = ~|{impl_tlb_direct_mapping, impl_tlb_hit_entry};
	assign tlb_writable = impl_tlb_direct_mapping | impl_tlb_lookup_result[0];
	
	always @(negedge clk or negedge rst)
		if (rst == `RstEnable) begin: INIT_TLB
			integer i;
			for (i = 0; i < `TLB_NR_ENTRY; i = i + 1)
				tlb_mem[i] <= 0;
		end else if (tlb_write_enable) begin
			tlb_mem[tlb_write_index] <= tlb_write_entry;
		end

	always @(negedge clk or negedge rst) begin
		if (rst == `RstEnable) begin
			state <= READ;
			busy_1 <= 0;
			dev_mem_is_write <= 0;
			dev_mem_addr <= 0;
		end else begin
			dev_mem_addr <= impl_tlb_direct_mapping ?
				{3'b0, mem_vrt_addr[28:0]} : {impl_tlb_lookup_result[20:1], mem_vrt_addr[11:0]};

			if (state == READ && dev_mem_busy == 0 && ce != `ChipEnable) busy_1 <= 0; else busy_1 <= 1;
			case (state) 
			READ:
			
				if (!dev_mem_busy && ce==`ChipEnable && exc_code==`EC_NONE) begin
					dev_mem_data_out <= data_i;
					if (we_i==`WriteEnable) begin
						if (sel!=4'b1111) begin
							state <= WRITE_SB;
							dev_mem_is_write <= 0;
						end
						else begin
							state <= WRITE_DO_WRITE;
							dev_mem_is_write <= 1;
						end
					end
				end 
				else 
					dev_mem_is_write <= 0;
				
			WRITE_SB: begin
				case(sel)
					4'b0001:
						dev_mem_data_out <= { dev_mem_data_in[31:8], dev_mem_data_out[7:0] };
					4'b0010:
						dev_mem_data_out <= { dev_mem_data_in[31:16], dev_mem_data_out[7:0], dev_mem_data_in[7:0]};
					4'b0100:
						dev_mem_data_out <= { dev_mem_data_in[31:24], dev_mem_data_out[7:0], dev_mem_data_in[15:0]};
					4'b1000:
						dev_mem_data_out <= { dev_mem_data_out[7:0], dev_mem_data_in[23:0] };
				endcase
				state <= WRITE_DO_WRITE;
				dev_mem_is_write <= 1;
			end
			
			WRITE_DO_WRITE:begin
					state <= READ;
					dev_mem_is_write <= 0;
			end
			
			default:begin
				state<=READ;
				dev_mem_is_write <= 0;
			end
		endcase
	end
	end

endmodule

