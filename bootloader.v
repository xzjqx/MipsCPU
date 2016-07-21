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
/*case (rom_addr)
0: rom_data = 32'h3c10be00;
4: rom_data = 32'h3c04bfd0;
8: rom_data = 32'h34840400;
12: rom_data = 32'h240200ff;
20: rom_data = 32'h240f0000;
24: rom_data = 32'h020f7821;
28: rom_data = 32'h8de90000;
32: rom_data = 32'h8def0004;
36: rom_data = 32'h000f7c00;
40: rom_data = 32'h012f4825;
44: rom_data = 32'h3c08464c;
48: rom_data = 32'h3508457f;
52: rom_data = 32'h11090003;
56: rom_data = 32'h00000000;
60: rom_data = 32'h10000046;
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
endcase*/
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
