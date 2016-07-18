`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:39 07/17/2016 
// Design Name: 
// Module Name:    CTRL 
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

module CTRL(
	input wire clk,
	input wire rst,
	input wire stop_from_id,
	input wire stop_from_ex,
	input wire stop_from_mem, 
	output reg[5:0] stop,
	output reg flush,
	
	input wire [31:0] exc_i,
	input wire [31:0] cp0_epc_i,
	output reg [31:0] new_pc
    );

	always @ (*) begin
		if (rst == `RstEnable) begin
			stop <= 6'b000000;
			flush <= 1'b0;
			new_pc <= `ZeroWord;
		end else if (exc_i != `ZeroWord) begin
			flush <= 1'b1;
			stop <= 6'b000000;
			case (exc_i)
				32'h00000001:		begin   //interrupt
					new_pc <= 32'h00000020;
				end
				32'h00000008:		begin   //syscall
					new_pc <= 32'h00000040;
				end
				32'h0000000a:		begin   //inst_invalid
					new_pc <= 32'h00000040;
				end
				32'h0000000e:		begin   //eret
					new_pc <= cp0_epc_i;
				end
				default	: begin
				end
			endcase
		end else if (stop_from_mem == `STOP) begin
			stop <= 6'b011111;
			flush<=0;
		end else if (stop_from_ex == `STOP) begin
			stop <= 6'b001111;
			flush<=0;
		end else if (stop_from_id == `STOP) begin
			stop <= 6'b000111;
			flush<=0;
		end else begin
			stop <= 6'b000000;
			flush<=0;
		end
	end

endmodule
