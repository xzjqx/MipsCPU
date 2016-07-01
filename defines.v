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

`define Arithmetic 3'b000
`define Branch_Jump 3'b001
`define Mem 3'b010
`define Logic 3'b011
`define Shift 3'b100
`define Move 3'b101
`define Trap 3'b110
`define Privilege 3'b111
