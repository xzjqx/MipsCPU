`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:11 07/01/2016 
// Design Name: 
// Module Name:    EX 
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

module EX(
	input wire rst,
	input wire [2:0] alusel_i,
	input wire [7:0] aluop_i,
	input wire [31:0] reg1_i,
	input wire [31:0] reg2_i,
	input wire [4:0] wd_i,
	input wire wreg_i,
	
	input wire [31:0] hi_i,
	inout wire [31:0] lo_i,
	input wire mem_whilo_i,
	input wire [31:0] mem_hi_i,
	input wire [31:0] mem_lo_i,
	input wire wb_whilo_i,
	input wire [31:0] wb_hi_i,
	input wire [31:0] wb_lo_i,
	
	input wire is_in_delayslot_i,
	input wire [31:0] link_address_i,
	
	input wire [31:0] inst_i,
	
	output reg [4:0] wd_o,
	output reg wreg_o,
	output reg [31:0] wdata_o,
	
	output reg whilo_o,
	output reg [31:0] hi_o,
	output reg [31:0] lo_o,
	
	output wire [5:0] aluop_o,
	output wire [31:0] mem_addr_o,
	output wire [31:0] reg2_o
    );
	 
	assign aluop_o = inst_i[31:26];
	assign mem_addr_o = {{16{inst_i[15]}}, inst_i[15:0]} + reg1_i;
	assign reg2_o = reg2_i;

	reg [31:0] logicout;
	reg [31:0] moveout;
	reg [31:0] shiftout;
	reg [31:0] HI;
	reg [31:0] LO;
	
	//����ָ���������±���
	wire ov_sum; 			// ����������
	wire reg1_eq_reg2; 		//reg1 �Ƿ���� reg2
	wire reg1_lt_reg2;		//reg1 �Ƿ�С�� reg2
	reg [31:0] arithmeticres;	//������������Ľ��
	wire [31:0] reg2_i_mux;		//reg2 �Ĳ���
	wire [31:0] reg1_i_nout;		//reg1 ȡ��
	wire [31:0] result_sum;		//����ӷ����
	wire [31:0] opdata1_mult;	//�˷������еı�����
	wire [31:0] opdata2_mult;	//�˷������еĳ���
	wire [63:0] hilo_temp;		//��ʱ����˷����
	reg [63:0] mulres;			//����˷����

	//************************��һ�Σ� ��������5��������ֵ***********//
	//1. ���� reg2_i �Ĳ���
	assign reg2_i_mux = ((aluop_i== `SUBU)||
						 (aluop_i== `SLT) ||
						 (aluop_i == `SLTU))? (~reg2_i)+1 : reg2_i;
	//2. ��ɺͲ���ӷ�--�ӷ����������Ƚ�
	assign result_sum = reg1_i + reg2_i_mux;
	//3. �����Ƿ������subָ��ִ��ʱ��Ҫ�ж�
	assign ov_sum = ((!reg1_i[31] && !reg2_i_mux[31]) && result_sum[31]) || ((reg1_i[31] && reg2_i_mux[31]) && (!result_sum[31]));
	//4. ����reg1�Ƿ�С��reg2�����������
	assign reg1_lt_reg2 = (aluop_i == `SLT) ? 
						  ((reg1_i[31] && !reg2_i[31]) || 
						  (!reg1_i[31] && !reg2_i[31] && result_sum[31]) ||
						  ( reg1_i[31] &&  reg2_i[31] && result_sum[31])) 
						  : (reg1_i < reg2_i);
	//5. ����reg1_i_not
	assign reg1_i_nout = ~reg1_i ;

	//************************�ڶ��Σ����ݲ�ͬ�������������ͣ���arithmeticres������ֵ***********//
	always @(*) begin
		if (rst == 1'b1) begin
			// reset
			arithmeticres = 32'b0;
		end
		else begin
			case(aluop_i)
				`SLT, `SLTU, `SLTI, `SLTIU:begin
					arithmeticres = reg1_lt_reg2;
				end
				`ADDU, `ADDIU, `SUBU :begin
					arithmeticres = result_sum;
				end
				default: begin
					arithmeticres = 32'b0;
				end
			endcase
		end
	end

	//*********************�����Σ� ���г˷����� **********************//
	//1. ȡ�ó˷����㱻����
	assign opdata1_mult = ((aluop_i == `MULT) && (reg1_i[31]==1'b1)) ? (~reg1_i +1) : reg1_i;
	assign opdata2_mult = ((aluop_i == `MULT) && (reg2_i[31]==1'b1)) ? (~reg2_i +1) : reg2_i;

	//2. �õ���ʱ�˷����
	assign hilo_temp = opdata1_mult * opdata2_mult;

	//3. �Խ�������޶�
	always @(*) begin
		if (rst == 1'b1 ) begin
			// reset
			mulres = 64'b0;
		end
		else begin
			if(reg1_i[31]^reg2_i[31] == 1'b1) begin
				mulres = ~hilo_temp + 1 ;
			end else begin
				mulres = hilo_temp;
			end
		end
	end
	
	always @(*) begin
		if (rst == 1'b1)
			{HI,LO} = 64'b0;
		else if (mem_whilo_i == 1'b1)
			{HI,LO} = {mem_hi_i, mem_lo_i};
		else if (wb_whilo_i == 1'b1)
			{HI,LO} = {wb_hi_i, wb_lo_i};
		else
			{HI,LO} = {hi_i, lo_i};
	end

	always @(*) begin				//Logic
		if (rst == 1'b1) begin
			logicout = 32'b0;
		end
		else begin
			case(aluop_i)
				`AND: logicout = reg1_i & reg2_i;
				`ANDI: logicout = reg1_i & reg2_i;
				`LUI: logicout = reg2_i;
				`NOR: logicout = ~(reg1_i | reg2_i);
				`OR: logicout = reg1_i | reg2_i;
				`ORI: logicout = reg1_i | reg2_i;
				`XOR: logicout = reg1_i ^ reg2_i;
				`XORI: logicout = reg1_i ^ reg2_i;
				default: begin
					logicout = 32'b0;
				end
			endcase
		end
	end
	
	always @(*) begin				//Move: MFHI, MFLO
		if (rst == 1'b1) begin
			moveout = 32'b0;
		end
		else begin
			case(aluop_i)
				`MFHI: moveout = HI;
				`MFLO: moveout = LO;
				default: moveout = 32'b0;
			endcase
		end
	end
	
	always @(*) begin				//Move: MTHI. MTLO
		if (rst == 1'b1) begin
			whilo_o = 1'b0;
			hi_o = 32'b0;
			lo_o = 32'b0;
		end
		else if (aluop_i == `MTHI) begin
			whilo_o = 1'b1;
			hi_o = reg1_i;
			lo_o = LO;
		end
		else if (aluop_i == `MTLO) begin
			whilo_o = 1'b1;
			hi_o = HI;
			lo_o = reg1_i;
		end
		else if(aluop_i == `MULT) begin
			whilo_o = 1'b1;
			hi_o = mulres[63:32];
			lo_o = mulres[31:0];
		end
		else begin
			whilo_o = 1'b0;
			hi_o = 32'b0;
			lo_o = 32'b0;
		end
	end
	
	always @(*) begin			//Shift
		if (rst == 1'b1) begin
			shiftout = 32'b0;
		end
		else begin
			case(aluop_i)
				`SLL: shiftout = reg2_i << reg1_i[4:0];
				`SRL: shiftout = reg2_i >> reg1_i[4:0];
				`SRA: shiftout = ({32{reg2_i[31]}}<<(6'd32-{1'b0,reg1_i[4:0]})) | reg2_i >> reg1_i[4:0];
				default: begin
					shiftout = 32'b0;
				end
			endcase
		end
	end
	
	always @(*) begin			
		wd_o = wd_i;
		wreg_o = wreg_i;
		if (rst == 1'b1) begin
			wdata_o = 32'b0;
		end
		else begin
			case(alusel_i)
				`Logic:
					wdata_o = logicout;
				`Move:
					wdata_o = moveout;
				`Branch_Jump:
					wdata_o = link_address_i;
				`Shift:
					wdata_o = shiftout;
				`Arithmetic:
					wdata_o = arithmeticres; //���˷�����ļ�ָ��
				//TODO: ��������ָ���д��Ŀ�ģ��Ĵ�����ֵ
				default:
					wdata_o = 32'b0;
			endcase
		end
	end
	
endmodule
