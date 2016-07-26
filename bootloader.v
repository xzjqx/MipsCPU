`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:15 07/20/2016 
// Design Name: 
// Module Name:    bootloader 
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
/*
case (rom_addr)
0: rom_data = 32'h00000000;
4: rom_data = 32'h01000010;
8: rom_data = 32'h00000000;
12: rom_data = 32'hffbe083c;
16: rom_data = 32'hf8ff0835;
20: rom_data = 32'hff000924;
24: rom_data = 32'h000009ad;
28: rom_data = 32'h00be103c;
32: rom_data = 32'h00000f24;
36: rom_data = 32'h21780f02;
40: rom_data = 32'h0000e98d;
44: rom_data = 32'h0400ef8d;
48: rom_data = 32'h007c0f00;
52: rom_data = 32'h25482f01;
56: rom_data = 32'h4c46083c;
60: rom_data = 32'h7f450835;
64: rom_data = 32'h03000911;
68: rom_data = 32'h00000000;
72: rom_data = 32'h42000010;
76: rom_data = 32'h00000000;
80: rom_data = 32'h38000f24;
84: rom_data = 32'h21780f02;
88: rom_data = 32'h0000f18d;
92: rom_data = 32'h0400ef8d;
96: rom_data = 32'h007c0f00;
100: rom_data = 32'h25882f02;
104: rom_data = 32'h58000f24;
108: rom_data = 32'h21780f02;
112: rom_data = 32'h0000f28d;
116: rom_data = 32'h0400ef8d;
120: rom_data = 32'h007c0f00;
124: rom_data = 32'h25904f02;
128: rom_data = 32'hffff5232;
132: rom_data = 32'h30000f24;
136: rom_data = 32'h21780f02;
140: rom_data = 32'h0000f38d;
144: rom_data = 32'h0400ef8d;
148: rom_data = 32'h007c0f00;
152: rom_data = 32'h25986f02;
156: rom_data = 32'h08002f26;
160: rom_data = 32'h40780f00;
164: rom_data = 32'h21780f02;
168: rom_data = 32'h0000f48d;
172: rom_data = 32'h0400ef8d;
176: rom_data = 32'h007c0f00;
180: rom_data = 32'h25a08f02;
184: rom_data = 32'h10002f26;
188: rom_data = 32'h40780f00;
192: rom_data = 32'h21780f02;
196: rom_data = 32'h0000f58d;
200: rom_data = 32'h0400ef8d;
204: rom_data = 32'h007c0f00;
208: rom_data = 32'h25a8af02;
212: rom_data = 32'h04002f26;
216: rom_data = 32'h40780f00;
220: rom_data = 32'h21780f02;
224: rom_data = 32'h0000f68d;
228: rom_data = 32'h0400ef8d;
232: rom_data = 32'h007c0f00;
236: rom_data = 32'h25b0cf02;
240: rom_data = 32'h10008012;
244: rom_data = 32'h00000000;
248: rom_data = 32'h0e00a012;
252: rom_data = 32'h00000000;
256: rom_data = 32'h0000cf26;
260: rom_data = 32'h40780f00;
264: rom_data = 32'h21780f02;
268: rom_data = 32'h0000e88d;
272: rom_data = 32'h0400ef8d;
276: rom_data = 32'h007c0f00;
280: rom_data = 32'h25400f01;
284: rom_data = 32'h000088ae;
288: rom_data = 32'h0400d626;
292: rom_data = 32'h04009426;
296: rom_data = 32'hfcffb526;
300: rom_data = 32'hf4ffa01e;
304: rom_data = 32'h00000000;
308: rom_data = 32'h20003126;
312: rom_data = 32'hffff5226;
316: rom_data = 32'hd7ff401e;
320: rom_data = 32'h00000000;
324: rom_data = 32'h08006002;
328: rom_data = 32'h00000000;
332: rom_data = 32'hffff0010;
336: rom_data = 32'h00000000;
340: rom_data = 32'hffff0010;
344: rom_data = 32'h00000000;
default: rom_data = 0;
endcase
/*
case (rom_addr)
0: rom_data = 32'h3c10be00;	//001111 00000 10000 0xbe00 		lui $16, 0xbe00			$16 = 0xbe000000
4: rom_data = 32'h3c04bfd0;	//001111 00000 00100 0xbfd0 		lui $4, 0xbfd0 			$4 = 0xbfd00000
8: rom_data = 32'h34840400;	//001101 00100 00100 0x0400 		ori $4, $4, 0x0400		$4 = 0xbfd00400
12: rom_data = 32'h240200ff;	//001001 00000 00010 0x00ff 		addiu $2, $0, 0x00ff		$2 = 0x000000ff
20: rom_data = 32'h240f0000;	//001001 00000 01111 0x0000 		addiu $15, $0, 0			$15 = 0
24: rom_data = 32'h020f7821;	//000000 10000 01111 01111 00000 100001 						$15 = 0xbe000000
28: rom_data = 32'h8de90000;	//100011 01111 01001 0x0000		lw $9, 0x0(&15)			$9 = 0x0000zzzz
32: rom_data = 32'h8def0004;	//100011 01111 01111 0x0004		lw $15, 0x0($15)			$15 = 0x0000zzzz
36: rom_data = 32'h000f7c00;	//000000 00000 01111 01111 10000 000000	sll $15, $15, 16	$15 = 0xzzzz0000
40: rom_data = 32'h012f4825;
44: rom_data = 32'h3c08464c;
48: rom_data = 32'h3508457f;
52: rom_data = 32'h11090003;	//000100 01000 01001 0x0003
56: rom_data = 32'h00000000;
60: rom_data = 32'h10000046;	//000100 00000 00000 0x0046
64: rom_data = 32'h00000000;
68: rom_data = 32'h240f0038;
72: rom_data = 32'h020f7821;
76: rom_data = 32'h8df10000;
80: rom_data = 32'h8def0004;
84: rom_data = 32'h000f7c00;
88: rom_data = 32'h022f8825;
92: rom_data = 32'h240f0058;
96: rom_data = 32'h020f7821;
100: rom_data = 32'h8df20000;
104: rom_data = 32'h8def0004;
108: rom_data = 32'h000f7c00;
112: rom_data = 32'h024f9025;
116: rom_data = 32'h3252ffff;
120: rom_data = 32'h240f0030;
124: rom_data = 32'h020f7821;
128: rom_data = 32'h8df30000;
132: rom_data = 32'h8def0004;
136: rom_data = 32'h000f7c00;
140: rom_data = 32'h026f9825;
144: rom_data = 32'h262f0008;
148: rom_data = 32'h000f7840;
152: rom_data = 32'h020f7821;
156: rom_data = 32'h8df40000;
160: rom_data = 32'h8def0004;
164: rom_data = 32'h000f7c00;
168: rom_data = 32'h028fa025;
172: rom_data = 32'h262f0010;
176: rom_data = 32'h000f7840;
180: rom_data = 32'h020f7821;
184: rom_data = 32'h8df50000;
188: rom_data = 32'h8def0004;
192: rom_data = 32'h000f7c00;
196: rom_data = 32'h02afa825;
200: rom_data = 32'h262f0004;
204: rom_data = 32'h000f7840;
208: rom_data = 32'h020f7821;
212: rom_data = 32'h8df60000;
216: rom_data = 32'h8def0004;
220: rom_data = 32'h000f7c00;
224: rom_data = 32'h12800011;
228: rom_data = 32'h02cfb025;
232: rom_data = 32'h12a0000f;
236: rom_data = 32'h00000000;
240: rom_data = 32'hac960000;
244: rom_data = 32'h26cf0000;
248: rom_data = 32'h000f7840;
252: rom_data = 32'h020f7821;
256: rom_data = 32'h8de80000;
260: rom_data = 32'h8def0004;
264: rom_data = 32'h000f7c00;
268: rom_data = 32'h010f4025;
272: rom_data = 32'hae880000;
276: rom_data = 32'h26d60004;
280: rom_data = 32'h26940004;
284: rom_data = 32'h26b5fffc;
288: rom_data = 32'h1ea0fff3;
292: rom_data = 32'h00000000;
296: rom_data = 32'h26310020;
300: rom_data = 32'h2652ffff;
304: rom_data = 32'h1e40ffd7;
308: rom_data = 32'h00000000;
312: rom_data = 32'h24020023;
316: rom_data = 32'h02600008;
320: rom_data = 32'hac820000;
324: rom_data = 32'h3c04bfd0;
328: rom_data = 32'h34840400;
332: rom_data = 32'h240200ef;
336: rom_data = 32'h1000fffc;
340: rom_data = 32'hac820000;
344: rom_data = 32'h3c04bfd0;
348: rom_data = 32'h34840400;
352: rom_data = 32'h240200ee;
356: rom_data = 32'h1000fffc;
360: rom_data = 32'hac820000;
default: rom_data = 0;
endcase
/*
//arithmetic_tb
case (rom_addr)
0: rom_data = 32'h3c018000;
4: rom_data = 32'h34210010;
8: rom_data = 32'h3c028000;
12: rom_data = 32'h34420001;
20: rom_data = 32'h34030000;
24: rom_data = 32'h00411821;
28: rom_data = 32'h34030000;
32: rom_data = 32'h00221823;
36: rom_data = 32'h34030000;
40: rom_data = 32'h00221823;
44: rom_data = 32'h34030000;
48: rom_data = 32'h24638000;
52: rom_data = 32'h3401ffff;
56: rom_data = 32'h3c01ffff;
60: rom_data = 32'h0020102a;
64: rom_data = 32'h0020102b;
68: rom_data = 32'h28228001;
72: rom_data = 32'h2c228001;
76: rom_data = 32'h3c01ffff;
80: rom_data = 32'h3421fffb;
84: rom_data = 32'h34020006;
88: rom_data = 32'h00220018;
92: rom_data = 32'h00000000;
96: rom_data = 32'h00000000;
default: rom_data = 0;
endcase*/
/*
//logic_tb
case (rom_addr)
0: rom_data = 32'h3c010101;
4: rom_data = 32'h34210101;
8: rom_data = 32'h34221100;
12: rom_data = 32'h00220825;
16: rom_data = 32'h302300fe;
20: rom_data = 32'h00610824;
24: rom_data = 32'h3824ff00;
28: rom_data = 32'h00810826;
32: rom_data = 32'h00810827;
default: rom_data = 0;
endcase*/
/*
//move_tb
case (rom_addr)
0: rom_data = 32'h3c010000;
4: rom_data = 32'h3c02ffff;
8: rom_data = 32'h3c030505;
12: rom_data = 32'h3c040000;
16: rom_data = 32'h00000011;
20: rom_data = 32'h00400011;
24: rom_data = 32'h00600011;
28: rom_data = 32'h00002010;
32: rom_data = 32'h00600013;
36: rom_data = 32'h00400013;
40: rom_data = 32'h00200013;
44: rom_data = 32'h00002012;
default: rom_data = 0;
endcase*/
/*
//shift_tb
case (rom_addr)
0: rom_data = 32'h3c020404;
4: rom_data = 32'h34420404;
8: rom_data = 32'h34070007;
12: rom_data = 32'h34050005;
16: rom_data = 32'h34080008;
20: rom_data = 32'h0000000f;
24: rom_data = 32'h00021200;
28: rom_data = 32'h00e21004;
32: rom_data = 32'h00021202;
36: rom_data = 32'h00a21006;
40: rom_data = 32'h00000000;
44: rom_data = 32'h000214c0;
48: rom_data = 32'h00000040;
52: rom_data = 32'h00021403;
56: rom_data = 32'h01021007;
default: rom_data = 0;
endcase*/
/*
//branch_tb
case (rom_addr)
0: rom_data = 32'h34038000;
4: rom_data = 32'h3c038000;
8: rom_data = 32'h34010001;
12: rom_data = 32'h10000004;
16: rom_data = 32'h34010002;
20: rom_data = 32'h34011111;
24: rom_data = 32'h34011100;
28: rom_data = 32'h00000000;
32: rom_data = 32'h34010003;
36: rom_data = 32'h1000000a;
40: rom_data = 32'h341f002c;
44: rom_data = 32'h34011100;
48: rom_data = 32'h34011111;
52: rom_data = 32'h14200012;
56: rom_data = 32'h00000000;
60: rom_data = 32'h34011100;
64: rom_data = 32'h34011111;
68: rom_data = 32'h00000000;
72: rom_data = 32'h00000000;
76: rom_data = 32'h00000000;
80: rom_data = 32'h34010004;
84: rom_data = 32'h1063000a;
88: rom_data = 32'h03e00825;
92: rom_data = 32'h34011111;
96: rom_data = 32'h34011100;
100: rom_data = 32'h34010007;
104: rom_data = 32'h34010008;
108: rom_data = 32'h1c200024;
112: rom_data = 32'h34010009;
116: rom_data = 32'h34011111;
120: rom_data = 32'h34011100;
124: rom_data = 32'h00000000;
128: rom_data = 32'h34010005;
132: rom_data = 32'h0421fff7;
136: rom_data = 32'h34010006;
140: rom_data = 32'h34011111;
144: rom_data = 32'h34011100;
148: rom_data = 32'h00000000;
152: rom_data = 32'h00000000;
156: rom_data = 32'h00000000;
160: rom_data = 32'h00000000;
164: rom_data = 32'h00000000;
168: rom_data = 32'h00000000;
172: rom_data = 32'h00000000;
176: rom_data = 32'h00000000;
180: rom_data = 32'h00000000;
184: rom_data = 32'h00000000;
188: rom_data = 32'h00000000;
192: rom_data = 32'h00000000;
196: rom_data = 32'h00000000;
200: rom_data = 32'h00000000;
204: rom_data = 32'h00000000;
208: rom_data = 32'h00000000;
212: rom_data = 32'h00000000;
216: rom_data = 32'h00000000;
220: rom_data = 32'h00000000;
224: rom_data = 32'h00000000;
228: rom_data = 32'h00000000;
232: rom_data = 32'h00000000;
236: rom_data = 32'h00000000;
240: rom_data = 32'h00000000;
244: rom_data = 32'h00000000;
248: rom_data = 32'h00000000;
252: rom_data = 32'h00000000;
256: rom_data = 32'h3401000a;
260: rom_data = 32'h0461ffde;
264: rom_data = 32'h001f0825;
268: rom_data = 32'h3401000b;
272: rom_data = 32'h3401000c;
276: rom_data = 32'h3401000d;
280: rom_data = 32'h3401000e;
284: rom_data = 32'h04600004;
288: rom_data = 32'h3401000f;
292: rom_data = 32'h34011100;
296: rom_data = 32'h00000000;
300: rom_data = 32'h00000000;
304: rom_data = 32'h34010010;
308: rom_data = 32'h1820ffcb;
312: rom_data = 32'h34010011;
316: rom_data = 32'h34010012;
320: rom_data = 32'h34010013;
324: rom_data = 32'h04600006;
328: rom_data = 32'h001f0825;
332: rom_data = 32'h34011100;
336: rom_data = 32'h00000000;
340: rom_data = 32'h00000000;
344: rom_data = 32'h00000000;
348: rom_data = 32'h00000000;
352: rom_data = 32'h34010014;
356: rom_data = 32'h00000000;
360: rom_data = 32'h0800005a;
364: rom_data = 32'h00000000;
default: rom_data = 0;
endcase*/
/*
//jump_tb
case (rom_addr)
0: rom_data = 32'h34010001;
4: rom_data = 32'h08000008;
8: rom_data = 32'h34010002;
12: rom_data = 32'h34011111;
16: rom_data = 32'h34011100;
20: rom_data = 32'h00000000;
24: rom_data = 32'h00000000;
28: rom_data = 32'h00000000;
32: rom_data = 32'h34010003;
36: rom_data = 32'h0c000010;
40: rom_data = 32'h34010003;
44: rom_data = 32'h34010005;
48: rom_data = 32'h34010006;
52: rom_data = 32'h08000018;
56: rom_data = 32'h34010006;
60: rom_data = 32'h00000000;
64: rom_data = 32'h03e01009;
68: rom_data = 32'h00400825;
72: rom_data = 32'h34010009;
76: rom_data = 32'h3401000a;
80: rom_data = 32'h08000020;
84: rom_data = 32'h34010006;
88: rom_data = 32'h00000000;
92: rom_data = 32'h00000000;
96: rom_data = 32'h34010007;
100: rom_data = 32'h00400008;
104: rom_data = 32'h34010008;
108: rom_data = 32'h34011111;
112: rom_data = 32'h34011100;
116: rom_data = 32'h00000000;
120: rom_data = 32'h00000000;
124: rom_data = 32'h00000000;
128: rom_data = 32'h08000020;
132: rom_data = 32'h34010006;
default: rom_data = 0;
endcase
*/

//serial_port_tb
case (rom_addr)
0: rom_data = 32'h34030000;
4: rom_data = 32'h34040010;
8: rom_data = 32'h24630001;
12: rom_data = 32'h3c01bfd0;
16: rom_data = 32'h342103f8;
20: rom_data = 32'ha0230000;
24: rom_data = 32'h1464fffb;
28: rom_data = 32'h00000000;
32: rom_data = 32'h08000008;
36: rom_data = 32'h00000000;
default: rom_data = 0;
endcase

/*
//mem_tb
case (rom_addr)
0: rom_data = 32'h3403eeff;
4: rom_data = 32'ha0030003;
8: rom_data = 32'h00031a02;
12: rom_data = 32'ha0030002;
16: rom_data = 32'h3403ccdd;
20: rom_data = 32'ha0030001;
24: rom_data = 32'h00031a02;
28: rom_data = 32'ha0030000;
32: rom_data = 32'h80010003;
36: rom_data = 32'h90010002;
40: rom_data = 32'h00000000;
44: rom_data = 32'h3403aabb;
48: rom_data = 32'ha0030004;
52: rom_data = 32'h00031a02;
56: rom_data = 32'ha0030005;
60: rom_data = 32'h94010004;
64: rom_data = 32'h34038899;
68: rom_data = 32'ha0030006;
72: rom_data = 32'h94010006;
76: rom_data = 32'h34034455;
80: rom_data = 32'h00031c00;
84: rom_data = 32'h34636677;
88: rom_data = 32'hac030008;
92: rom_data = 32'h8c010008;
96: rom_data = 32'h00000000;
100: rom_data = 32'h08000019;
104: rom_data = 32'h00000000;
default: rom_data = 0;
endcase
*/