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
	input wire 			rst,
	input wire [2:0] 	alusel_i,
	input wire [7:0] 	aluop_i,
	input wire [31:0] 	reg1_i,
	input wire [31:0] 	reg2_i,
	input wire [4:0] 	wd_i,
	input wire 			wreg_i,
	
	input wire [31:0] 	hi_i,
	inout wire [31:0] 	lo_i,
	input wire 			mem_whilo_i,
	input wire [31:0] 	mem_hi_i,
	input wire [31:0] 	mem_lo_i,
	input wire 			wb_whilo_i,
	input wire [31:0] 	wb_hi_i,
	input wire [31:0] 	wb_lo_i,
	
	input wire 			is_in_delayslot_i,
	input wire [31:0] 	link_address_i,
	
	input wire [31:0] 	inst_i,
	//访存阶段是否访问CP0，用来检测数据相关
	input wire		  	mem_cp0_reg_we,
	input wire [4:0]	mem_cp0_reg_write_addr,
	input wire [31:0]	mem_cp0_data,	
	//回写阶段的指令是否要写CP0，用来检测数据相关
  	input wire			wb_cp0_reg_we,
	input wire[4:0]     wb_cp0_reg_write_addr,
	input wire[31:0] 	wb_cp0_reg_data,

	//与CP0相连，读取其中CP0寄存器的值
	input wire[31:0]    cp0_reg_data_i,
	output reg[4:0]     cp0_reg_read_addr_o,

	//向下一流水级传递，用于写CP0中的寄存器
	output reg          cp0_reg_we_o,
	output reg[4:0]     cp0_reg_write_addr_o,
	output reg[31:0] 	cp0_reg_data_o,

	output reg [4:0] 	wd_o,
	output reg 			wreg_o,
	output reg [31:0] 	wdata_o,
	
	output reg 			whilo_o,
	output reg [31:0] 	hi_o,
	output reg [31:0] 	lo_o,
	
	output wire [5:0] 	aluop_o,
	output wire [31:0] 	mem_addr_o,
	output wire [31:0] 	reg2_o

    );
	 
	assign aluop_o = inst_i[31:26];
	assign mem_addr_o = {{16{inst_i[15]}}, inst_i[15:0]} + reg1_i;
	assign reg2_o = reg2_i;

	reg [31:0] logicout;
	reg [31:0] moveout;
	reg [31:0] shiftout;
	reg [31:0] HI;
	reg [31:0] LO;
	
	//ËãÊýÖ¸ÁîÒý½øµÄÐÂ±äÁ¿
	wire ov_sum; 			// ±£´æÒç³öÇé¿ö
	wire reg1_eq_reg2; 		//reg1 ÊÇ·ñµÈÓÚ reg2
	wire reg1_lt_reg2;		//reg1 ÊÇ·ñÐ¡ÓÚ reg2
	reg [31:0] arithmeticres;	//±£´æËãÊõÔËËãµÄ½á¹û
	wire [31:0] reg2_i_mux;		//reg2 µÄ²¹Âë
	wire [31:0] reg1_i_nout;		//reg1 È¡·´
	wire [31:0] result_sum;		//±£´æ¼Ó·¨½á¹û
	wire [31:0] opdata1_mult;	//³Ë·¨²Ù×÷ÖÐµÄ±»³ËÊý
	wire [31:0] opdata2_mult;	//³Ë·¨²Ù×÷ÖÐµÄ³ËÊý
	wire [63:0] hilo_temp;		//ÁÙÊ±±£´æ³Ë·¨½á¹û
	reg [63:0] mulres;			//±£´æ³Ë·¨½á¹û

	//************************µÚÒ»¶Î£º ¼ÆËãÒÔÏÂ5¸ö±äÁ¿µÄÖµ***********//
	//1. ¼ÆËã reg2_i µÄ²¹Âë
	assign reg2_i_mux = ((aluop_i== `SUBU)||
						 (aluop_i== `SLT) ||
						 (aluop_i == `SLTU))? (~reg2_i)+1 : reg2_i;
	//2. Íê³ÉºÍ²¹Âë¼Ó·¨--¼Ó·¨£¬¼õ·¨£¬±È½Ï
	assign result_sum = reg1_i + reg2_i_mux;
	//3. ¼ÆËãÊÇ·ñÒç³ö£¬subÖ¸ÁîÖ´ÐÐÊ±ÐèÒªÅÐ¶Ï
	assign ov_sum = ((!reg1_i[31] && !reg2_i_mux[31]) && result_sum[31]) || ((reg1_i[31] && reg2_i_mux[31]) && (!result_sum[31]));
	//4. ¼ÆËãreg1ÊÇ·ñÐ¡ÓÚreg2£¬·ÖÁ½ÖÖÇé¿ö
	assign reg1_lt_reg2 = (aluop_i == `SLT) ? 
						  ((reg1_i[31] && !reg2_i[31]) || 
						  (!reg1_i[31] && !reg2_i[31] && result_sum[31]) ||
						  ( reg1_i[31] &&  reg2_i[31] && result_sum[31])) 
						  : (reg1_i < reg2_i);
	//5. ¼ÆËãreg1_i_not
	assign reg1_i_nout = ~reg1_i ;

	//************************µÚ¶þ¶Î£º¸ù¾Ý²»Í¬µÄËãÊõÔËËãÀàÐÍ£¬¸øarithmeticres±äÁ¿¸³Öµ***********//
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

	//*********************µÚÈý¶Î£º ½øÐÐ³Ë·¨ÔËËã **********************//
	//1. È¡µÃ³Ë·¨ÔËËã±»³ËÊý
	assign opdata1_mult = ((aluop_i == `MULT) && (reg1_i[31]==1'b1)) ? (~reg1_i +1) : reg1_i;
	assign opdata2_mult = ((aluop_i == `MULT) && (reg2_i[31]==1'b1)) ? (~reg2_i +1) : reg2_i;

	//2. µÃµ½ÁÙÊ±³Ë·¨½á¹û
	assign hilo_temp = opdata1_mult * opdata2_mult;

	//3. ¶Ô½á¹û½øÐÐÐÞ¶©
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
				`MFC0: begin
					cp0_reg_read_addr_o = inst_i[15:11];
					moveout = cp0_reg_data_i;
					if(mem_cp0_reg_we == 1'b1 && mem_cp0_reg_write_addr == inst_i[15:11])//存在数据相关
					begin
						moveout = mem_cp0_data;
					end else if (wb_cp0_reg_we == 1'b1 && wb_cp0_reg_write_addr == inst_i[15:11])
					begin
						moveout = wb_cp0_reg_data;
					end
				end
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
		if (rst == 1'b1) begin
			// reset
			cp0_reg_write_addr_o = 5'b00000;
			cp0_reg_we_o = 1'b0;
			cp0_reg_data_o = 32'b0;
		end
		else if (aluop_i == `MTC0) begin
			cp0_reg_write_addr_o = inst_i[15:11];
			cp0_reg_we_o = 1'b1;
			cp0_reg_data_o = reg1_i;
		end else begin
			cp0_reg_write_addr_o = 5'b00000;
			cp0_reg_we_o = 1'b0;
			cp0_reg_data_o = 32'b0;			
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
					wdata_o = arithmeticres; //³ý³Ë·¨ÒÔÍâµÄ¼òµ¥Ö¸Áî
				//TODO: ÆäËûÀàÐÍÖ¸ÁîµÄÐ´£¨Ä¿µÄ£©¼Ä´æÆ÷¸³Öµ

				default:
					wdata_o = 32'b0;
			endcase
		end
	end
	
endmodule
