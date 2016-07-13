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
	input wire			we_i,//是否要写cp0中的寄存�
	input wire[4:0]		waddr_i,//要写的cp0中的寄存器的地址
	input wire[4:0]		raddr_i,//要读的cp0中的寄存器的地址
	input wire[31:0]	wdata_i,//要写入cp0寄存器中的数�
	input wire[5:0]		int_i,//6个外部硬件中断输�

	output reg[31:0]	data_o,//从cp0寄存器中读出的数�
	output reg[31:0]	count_o,//count寄存器的�
	output reg[31:0]	compare_o,//compare寄存器的�
	output reg[31:0]	status_o,//status寄存器的�
	output reg[31:0]	cause_o,//cause寄存器的�
	output reg[31:0]	epc_o,//ecp寄存器的�
	output reg[31:0]	config_o,//config寄存器的�
	output reg[31:0]	prid_o,//PRID寄存器的�
	output reg 			timer_int_o//是否有定时中断发�
    );

//******************************第一段，对CP0寄存器的写操�******************************//
always @(posedge clk) begin
	if (rst == 1'b1) begin
		// reset
		count_o <= 32'b0;
		compare_o <= 32'b0;
		status_o <= 32'b00010000000000000000000000000000;
		cause_o <= 32'b0;
		epc_o <= 32'b0;
		config_o <= 32'b00000000000000001000000000000000;// �be字段�，表示工作在大端模式
		prid_o <= 	32'b00000000010011000000000100000010;//
		timer_int_o <= 1'b0;
	end 
	else begin
		count_o <= count_o+1;
		cause_o[15:10] <= int_i;
		if(compare_o != 32'b0 && count_o == compare_o) begin
			timer_int_o <= 1'b1;
		end
		if(we_i == 1'b1)
		begin
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
				//cause寄存器只有IP,IV,WP字段可写
				cause_o [9:8] <= wdata_i[9:8];
				cause_o [23]  <= wdata_i[23];
				cause_o [22]  <= wdata_i[22];
			end
			endcase
		end	//if	
	end//else
end//always

//*******************************第二段，对CP0的读操作**********************//

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
			`COUNT_CP0:begin
				data_o <= count_o;
			end
		endcase
	end//else
end

endmodule
