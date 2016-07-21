`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:18 07/09/2016 
// Design Name: 
// Module Name:    DATA_RAM 
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
module DATA_RAM(
	input wire clk,
	input wire ce,
	input wire we,
	input wire [31:0] addr,
	input wire [31:0] data_i,
	input wire [3:0] sel,
	output reg [31:0] data_o
    );

	reg[7:0] data_mem[0:1000];	//RAM大小，1000个Byte
	/*reg[7:0] data_mem1[0:1000];	//1/4RAM大小，1000个Byte
	reg[7:0] data_mem2[0:1000];	//1/4RAM大小，1000个Byte
	reg[7:0] data_mem3[0:1000];	//1/4RAM大小，1000个Byte*/

	always @(posedge clk) begin
		if (ce == 1'b1 && we == 1'b1) begin
			if (sel == 1'b1) begin
				data_mem[addr[10:0]] <= data_i[31:24];
				data_mem[addr[10:0]+1] <= data_i[23:16];
				data_mem[addr[10:0]+2] <= data_i[15:8];
				data_mem[addr[10:0]+3] <= data_i[7:0];
			end
			else begin
				data_mem[addr[10:0]] <= data_i[31:24];
			end
			/*if (sel[2] == 1'b1) begin
				data_mem1[addr[11:2]] <= data_i[23:16];
			end
			if (sel[1] == 1'b1) begin
				data_mem2[addr[11:2]] <= data_i[15:8];
			end
			if (sel[0] == 1'b1) begin
				data_mem3[addr[11:2]] <= data_i[7:0];
			end*/
		end
	end
	
	always @(*) begin
		if (ce == 1'b0)
			data_o <= 32'b0;
		else if (we == 1'b0)
			data_o <= {data_mem[addr[10:0]],data_mem[addr[10:0]+1],data_mem[addr[10:0]+2],data_mem[addr[10:0]+3]};
		else
			data_o <= 32'b0;
	end

endmodule
