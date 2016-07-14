/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x79f3f3a8 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/MipsCPU/DATA_RAM.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {3, 0};
static unsigned int ng5[] = {0U, 0U};



static void Always_36_0(char *t0)
{
    char t6[8];
    char t22[8];
    char t36[8];
    char t52[8];
    char t60[8];
    char t100[8];
    char t122[8];
    char t133[8];
    char t134[8];
    char t141[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t123;
    char *t124;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t135;
    char *t136;
    char *t137;
    char *t138;
    char *t139;
    char *t140;
    char *t142;
    char *t143;
    char *t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    char *t151;
    unsigned int t152;
    int t153;
    char *t154;
    unsigned int t155;
    int t156;
    int t157;
    unsigned int t158;
    unsigned int t159;
    int t160;
    int t161;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2244);
    *((int *)t2) = 1;
    t3 = (t0 + 1932);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    memset(t22, 0, 8);
    t23 = (t6 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t23) != 0)
        goto LAB12;

LAB13:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB14;

LAB15:    memcpy(t60, t22, 8);

LAB16:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB28;

LAB29:
LAB30:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    *((unsigned int *)t22) = 1;
    goto LAB13;

LAB12:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB13;

LAB14:    t34 = (t0 + 784U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng1)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    t38 = (t34 + 4);
    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t34);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB20;

LAB17:    if (t48 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t36) = 1;

LAB20:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t53) != 0)
        goto LAB23;

LAB24:    t61 = *((unsigned int *)t22);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t22 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t52) = 1;
    goto LAB24;

LAB23:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB24;

LAB25:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t22 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t22);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB27;

LAB28:    xsi_set_current_line(37, ng0);

LAB31:    xsi_set_current_line(38, ng0);
    t98 = (t0 + 1060U);
    t99 = *((char **)t98);
    t98 = ((char*)((ng1)));
    memset(t100, 0, 8);
    t101 = (t99 + 4);
    t102 = (t98 + 4);
    t103 = *((unsigned int *)t99);
    t104 = *((unsigned int *)t98);
    t105 = (t103 ^ t104);
    t106 = *((unsigned int *)t101);
    t107 = *((unsigned int *)t102);
    t108 = (t106 ^ t107);
    t109 = (t105 | t108);
    t110 = *((unsigned int *)t101);
    t111 = *((unsigned int *)t102);
    t112 = (t110 | t111);
    t113 = (~(t112));
    t114 = (t109 & t113);
    if (t114 != 0)
        goto LAB35;

LAB32:    if (t112 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t100) = 1;

LAB35:    t116 = (t100 + 4);
    t117 = *((unsigned int *)t116);
    t118 = (~(t117));
    t119 = *((unsigned int *)t100);
    t120 = (t119 & t118);
    t121 = (t120 != 0);
    if (t121 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(44, ng0);

LAB48:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 24);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 24);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 1380);
    t7 = (t0 + 1380);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t23 = (t0 + 1380);
    t29 = (t23 + 40U);
    t30 = *((char **)t29);
    t34 = (t0 + 876U);
    t35 = *((char **)t34);
    memset(t52, 0, 8);
    t34 = (t52 + 4);
    t37 = (t35 + 4);
    t15 = *((unsigned int *)t35);
    t16 = (t15 >> 0);
    *((unsigned int *)t52) = t16;
    t17 = *((unsigned int *)t37);
    t18 = (t17 >> 0);
    *((unsigned int *)t34) = t18;
    t19 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t19 & 2047U);
    t20 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t20 & 2047U);
    xsi_vlog_generic_convert_array_indices(t22, t36, t21, t30, 2, 1, t52, 11, 2);
    t38 = (t22 + 4);
    t24 = *((unsigned int *)t38);
    t84 = (!(t24));
    t51 = (t36 + 4);
    t25 = *((unsigned int *)t51);
    t85 = (!(t25));
    t153 = (t84 && t85);
    if (t153 == 1)
        goto LAB49;

LAB50:
LAB38:    goto LAB30;

LAB34:    t115 = (t100 + 4);
    *((unsigned int *)t100) = 1;
    *((unsigned int *)t115) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(38, ng0);

LAB39:    xsi_set_current_line(39, ng0);
    t123 = (t0 + 968U);
    t124 = *((char **)t123);
    memset(t122, 0, 8);
    t123 = (t122 + 4);
    t125 = (t124 + 4);
    t126 = *((unsigned int *)t124);
    t127 = (t126 >> 24);
    *((unsigned int *)t122) = t127;
    t128 = *((unsigned int *)t125);
    t129 = (t128 >> 24);
    *((unsigned int *)t123) = t129;
    t130 = *((unsigned int *)t122);
    *((unsigned int *)t122) = (t130 & 255U);
    t131 = *((unsigned int *)t123);
    *((unsigned int *)t123) = (t131 & 255U);
    t132 = (t0 + 1380);
    t135 = (t0 + 1380);
    t136 = (t135 + 44U);
    t137 = *((char **)t136);
    t138 = (t0 + 1380);
    t139 = (t138 + 40U);
    t140 = *((char **)t139);
    t142 = (t0 + 876U);
    t143 = *((char **)t142);
    memset(t141, 0, 8);
    t142 = (t141 + 4);
    t144 = (t143 + 4);
    t145 = *((unsigned int *)t143);
    t146 = (t145 >> 0);
    *((unsigned int *)t141) = t146;
    t147 = *((unsigned int *)t144);
    t148 = (t147 >> 0);
    *((unsigned int *)t142) = t148;
    t149 = *((unsigned int *)t141);
    *((unsigned int *)t141) = (t149 & 2047U);
    t150 = *((unsigned int *)t142);
    *((unsigned int *)t142) = (t150 & 2047U);
    xsi_vlog_generic_convert_array_indices(t133, t134, t137, t140, 2, 1, t141, 11, 2);
    t151 = (t133 + 4);
    t152 = *((unsigned int *)t151);
    t153 = (!(t152));
    t154 = (t134 + 4);
    t155 = *((unsigned int *)t154);
    t156 = (!(t155));
    t157 = (t153 && t156);
    if (t157 == 1)
        goto LAB40;

LAB41:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 16);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 16);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 1380);
    t7 = (t0 + 1380);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t23 = (t0 + 1380);
    t29 = (t23 + 40U);
    t30 = *((char **)t29);
    t34 = (t0 + 876U);
    t35 = *((char **)t34);
    memset(t52, 0, 8);
    t34 = (t52 + 4);
    t37 = (t35 + 4);
    t15 = *((unsigned int *)t35);
    t16 = (t15 >> 0);
    *((unsigned int *)t52) = t16;
    t17 = *((unsigned int *)t37);
    t18 = (t17 >> 0);
    *((unsigned int *)t34) = t18;
    t19 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t19 & 2047U);
    t20 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t20 & 2047U);
    t38 = ((char*)((ng2)));
    memset(t60, 0, 8);
    xsi_vlog_unsigned_add(t60, 32, t52, 32, t38, 32);
    xsi_vlog_generic_convert_array_indices(t22, t36, t21, t30, 2, 1, t60, 32, 2);
    t51 = (t22 + 4);
    t24 = *((unsigned int *)t51);
    t84 = (!(t24));
    t53 = (t36 + 4);
    t25 = *((unsigned int *)t53);
    t85 = (!(t25));
    t153 = (t84 && t85);
    if (t153 == 1)
        goto LAB42;

LAB43:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 8);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 8);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 1380);
    t7 = (t0 + 1380);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t23 = (t0 + 1380);
    t29 = (t23 + 40U);
    t30 = *((char **)t29);
    t34 = (t0 + 876U);
    t35 = *((char **)t34);
    memset(t52, 0, 8);
    t34 = (t52 + 4);
    t37 = (t35 + 4);
    t15 = *((unsigned int *)t35);
    t16 = (t15 >> 0);
    *((unsigned int *)t52) = t16;
    t17 = *((unsigned int *)t37);
    t18 = (t17 >> 0);
    *((unsigned int *)t34) = t18;
    t19 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t19 & 2047U);
    t20 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t20 & 2047U);
    t38 = ((char*)((ng3)));
    memset(t60, 0, 8);
    xsi_vlog_unsigned_add(t60, 32, t52, 32, t38, 32);
    xsi_vlog_generic_convert_array_indices(t22, t36, t21, t30, 2, 1, t60, 32, 2);
    t51 = (t22 + 4);
    t24 = *((unsigned int *)t51);
    t84 = (!(t24));
    t53 = (t36 + 4);
    t25 = *((unsigned int *)t53);
    t85 = (!(t25));
    t153 = (t84 && t85);
    if (t153 == 1)
        goto LAB44;

LAB45:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 1380);
    t7 = (t0 + 1380);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t23 = (t0 + 1380);
    t29 = (t23 + 40U);
    t30 = *((char **)t29);
    t34 = (t0 + 876U);
    t35 = *((char **)t34);
    memset(t52, 0, 8);
    t34 = (t52 + 4);
    t37 = (t35 + 4);
    t15 = *((unsigned int *)t35);
    t16 = (t15 >> 0);
    *((unsigned int *)t52) = t16;
    t17 = *((unsigned int *)t37);
    t18 = (t17 >> 0);
    *((unsigned int *)t34) = t18;
    t19 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t19 & 2047U);
    t20 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t20 & 2047U);
    t38 = ((char*)((ng4)));
    memset(t60, 0, 8);
    xsi_vlog_unsigned_add(t60, 32, t52, 32, t38, 32);
    xsi_vlog_generic_convert_array_indices(t22, t36, t21, t30, 2, 1, t60, 32, 2);
    t51 = (t22 + 4);
    t24 = *((unsigned int *)t51);
    t84 = (!(t24));
    t53 = (t36 + 4);
    t25 = *((unsigned int *)t53);
    t85 = (!(t25));
    t153 = (t84 && t85);
    if (t153 == 1)
        goto LAB46;

LAB47:    goto LAB38;

LAB40:    t158 = *((unsigned int *)t133);
    t159 = *((unsigned int *)t134);
    t160 = (t158 - t159);
    t161 = (t160 + 1);
    xsi_vlogvar_wait_assign_value(t132, t122, 0, *((unsigned int *)t134), t161, 0LL);
    goto LAB41;

LAB42:    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t36);
    t156 = (t26 - t27);
    t157 = (t156 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t36), t157, 0LL);
    goto LAB43;

LAB44:    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t36);
    t156 = (t26 - t27);
    t157 = (t156 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t36), t157, 0LL);
    goto LAB45;

LAB46:    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t36);
    t156 = (t26 - t27);
    t157 = (t156 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t36), t157, 0LL);
    goto LAB47;

LAB49:    t26 = *((unsigned int *)t22);
    t27 = *((unsigned int *)t36);
    t156 = (t26 - t27);
    t157 = (t156 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t36), t157, 0LL);
    goto LAB50;

}

static void Always_59_1(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t37[8];
    char t48[8];
    char t52[8];
    char t59[8];
    char t70[8];
    char t74[8];
    char t81[8];
    char t92[8];
    char t96[8];
    char t103[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t49;
    char *t50;
    char *t51;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t93;
    char *t94;
    char *t95;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;

LAB0:    t1 = (t0 + 2048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2252);
    *((int *)t2) = 1;
    t3 = (t0 + 2076);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);

LAB5:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB16;

LAB13:    if (t18 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t6) = 1;

LAB16:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB19:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(61, ng0);
    t28 = ((char*)((ng5)));
    t29 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB15:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(63, ng0);
    t21 = (t0 + 1380);
    t22 = (t21 + 36U);
    t28 = *((char **)t22);
    t29 = (t0 + 1380);
    t32 = (t29 + 44U);
    t33 = *((char **)t32);
    t34 = (t0 + 1380);
    t35 = (t34 + 40U);
    t36 = *((char **)t35);
    t38 = (t0 + 876U);
    t39 = *((char **)t38);
    memset(t37, 0, 8);
    t38 = (t37 + 4);
    t40 = (t39 + 4);
    t41 = *((unsigned int *)t39);
    t42 = (t41 >> 0);
    *((unsigned int *)t37) = t42;
    t43 = *((unsigned int *)t40);
    t44 = (t43 >> 0);
    *((unsigned int *)t38) = t44;
    t45 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t45 & 2047U);
    t46 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t46 & 2047U);
    t47 = ((char*)((ng4)));
    memset(t48, 0, 8);
    xsi_vlog_unsigned_add(t48, 32, t37, 32, t47, 32);
    xsi_vlog_generic_get_array_select_value(t31, 8, t28, t33, t36, 2, 1, t48, 32, 2);
    t49 = (t0 + 1380);
    t50 = (t49 + 36U);
    t51 = *((char **)t50);
    t53 = (t0 + 1380);
    t54 = (t53 + 44U);
    t55 = *((char **)t54);
    t56 = (t0 + 1380);
    t57 = (t56 + 40U);
    t58 = *((char **)t57);
    t60 = (t0 + 876U);
    t61 = *((char **)t60);
    memset(t59, 0, 8);
    t60 = (t59 + 4);
    t62 = (t61 + 4);
    t63 = *((unsigned int *)t61);
    t64 = (t63 >> 0);
    *((unsigned int *)t59) = t64;
    t65 = *((unsigned int *)t62);
    t66 = (t65 >> 0);
    *((unsigned int *)t60) = t66;
    t67 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t67 & 2047U);
    t68 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t68 & 2047U);
    t69 = ((char*)((ng3)));
    memset(t70, 0, 8);
    xsi_vlog_unsigned_add(t70, 32, t59, 32, t69, 32);
    xsi_vlog_generic_get_array_select_value(t52, 8, t51, t55, t58, 2, 1, t70, 32, 2);
    t71 = (t0 + 1380);
    t72 = (t71 + 36U);
    t73 = *((char **)t72);
    t75 = (t0 + 1380);
    t76 = (t75 + 44U);
    t77 = *((char **)t76);
    t78 = (t0 + 1380);
    t79 = (t78 + 40U);
    t80 = *((char **)t79);
    t82 = (t0 + 876U);
    t83 = *((char **)t82);
    memset(t81, 0, 8);
    t82 = (t81 + 4);
    t84 = (t83 + 4);
    t85 = *((unsigned int *)t83);
    t86 = (t85 >> 0);
    *((unsigned int *)t81) = t86;
    t87 = *((unsigned int *)t84);
    t88 = (t87 >> 0);
    *((unsigned int *)t82) = t88;
    t89 = *((unsigned int *)t81);
    *((unsigned int *)t81) = (t89 & 2047U);
    t90 = *((unsigned int *)t82);
    *((unsigned int *)t82) = (t90 & 2047U);
    t91 = ((char*)((ng2)));
    memset(t92, 0, 8);
    xsi_vlog_unsigned_add(t92, 32, t81, 32, t91, 32);
    xsi_vlog_generic_get_array_select_value(t74, 8, t73, t77, t80, 2, 1, t92, 32, 2);
    t93 = (t0 + 1380);
    t94 = (t93 + 36U);
    t95 = *((char **)t94);
    t97 = (t0 + 1380);
    t98 = (t97 + 44U);
    t99 = *((char **)t98);
    t100 = (t0 + 1380);
    t101 = (t100 + 40U);
    t102 = *((char **)t101);
    t104 = (t0 + 876U);
    t105 = *((char **)t104);
    memset(t103, 0, 8);
    t104 = (t103 + 4);
    t106 = (t105 + 4);
    t107 = *((unsigned int *)t105);
    t108 = (t107 >> 0);
    *((unsigned int *)t103) = t108;
    t109 = *((unsigned int *)t106);
    t110 = (t109 >> 0);
    *((unsigned int *)t104) = t110;
    t111 = *((unsigned int *)t103);
    *((unsigned int *)t103) = (t111 & 2047U);
    t112 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t112 & 2047U);
    xsi_vlog_generic_get_array_select_value(t96, 8, t95, t99, t102, 2, 1, t103, 11, 2);
    xsi_vlogtype_concat(t30, 32, 32, 4U, t96, 8, t74, 8, t52, 8, t31, 8);
    t113 = (t0 + 1288);
    xsi_vlogvar_wait_assign_value(t113, t30, 0, 0, 32, 0LL);
    goto LAB19;

}


extern void work_m_00000000003501358686_1939551284_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)Always_59_1};
	xsi_register_didat("work_m_00000000003501358686_1939551284", "isim/MipsCPU_MipsCPU_sch_tb_isim_beh.exe.sim/work/m_00000000003501358686_1939551284.didat");
	xsi_register_executes(pe);
}
