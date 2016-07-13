`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:45 07/01/2016 
// Design Name: 
// Module Name:    defines 
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

`define Downto31_0 31:0
`define Downto15_0 15:0
`define WordSize 32
`define HalfSize 16
`define ByteSize 8

//**************alusel*******//
`define Arithmetic 3'b000
`define Branch_Jump 3'b001
`define Mem 3'b010
`define Logic 3'b011
`define Shift 3'b100
`define Move 3'b101
`define Trap 3'b110
`define Privilege 3'b111

//*************aluop*******************//
`define ADDIU 8'b00000000
`define ADDU 8'b00000001
`define SLT 8'b00000010
`define SLTI 8'b00000011
`define SLTIU 8'b00000100
`define SLTU 8'b00000101
`define SUBU 8'b00000110
`define MULT 8'b00000111
`define BEQ 8'b00001000
`define BGEZ 8'b00001001
`define BGTZ 8'b00001010
`define BLEZ 8'b00001011
`define BLTZ 8'b00001100
`define BNE 8'b00001101
`define J 8'b00001110
`define JR 8'b00001111
`define JAL 8'b00010000
`define JALR 8'b00010001
`define LW 8'b00010010
`define SW 8'b00010011
`define LB 8'b00010100
`define SB 8'b00010101
`define LBU 8'b00010110
`define LHU 8'b00010111
`define AND 8'b00011000
`define ANDI 8'b00011001
`define LUI 8'b00011010
`define NOR 8'b00011011
`define OR 8'b00011100
`define ORI 8'b00011101
`define XOR 8'b00011110
`define XORI 8'b00011111
`define MFHI 8'b00100000
`define MFLO 8'b00100001
`define MTHI 8'b00100010
`define MTLO 8'b00100011
`define SLL 8'b00100100
`define SLLV 8'b00100101
`define SRA 8'b00100110
`define SRAV 8'b00100111
`define SRL 8'b00101000
`define SRLV 8'b00101001
`define SYSCALL 8'b00101010
`define ERET 8'b00101011
`define MFC0 8'b00101100
`define MTC0 8'b00101101
`define TLBWI 8'b00101110

//**************31:26 OP********//
`define SPECIAL_OP 		6'b000000 
`define ADDIU_OP		6'b001001 
`define SLTI_OP 		6'b001010
`define SLTIU_OP 		6'b001011
`define COP0_OP			6'b010000 

//************5:0 op2*********//
`define ADDU_OP2 		6'b100001
`define SLT_OP2			6'b101010
`define SLTU_OP2 		6'b101011
`define SUBU_OP2		6'b100011 
`define MULT_OP2		6'b011000 
`define AND_OP2 		6'b100100
`define ERET_OP2		6'b011000 
`define TLBWI_OP2	 	6'b000010 

//************25:21 op4************//
`define CP0_OP4		5'b10000
`define MFC0_OP4		5'b00000 
`define MTC0_OP4		5'b00100 
//************CP0内的寄存�*********//
`define COUNT_CP0		5'b01001
`define COMPARE_CP0		5'b01011 
`define STATUS_CP0		5'b01100 
`define CAUSE_CP0		5'b01101 
`define EPC_CP0			5'b01110 
`define PRID_CP0		5'b01111 
`define CONFIG_CP0		5'b10000 
