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

/* This file is designed for use with ISim build 0xc4ca3437 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/MipsCPU/REG.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};



static void Always_40_0(char *t0)
{
    char t6[8];
    char t7[8];
    char t51[8];
    char t63[8];
    char t79[8];
    char t87[8];
    char t125[8];
    char t126[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    int t17;
    char *t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
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
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
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
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    char *t123;
    char *t124;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    int t140;
    int t141;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 4784);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 3048);
    t8 = (t0 + 3048);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3048);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t6, t7, t10, t13, 2, 1, t14, 32, 1);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t15);
    t17 = (!(t16));
    t18 = (t7 + 4);
    t19 = *((unsigned int *)t18);
    t20 = (!(t19));
    t21 = (t17 && t20);
    if (t21 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t16 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t2);
    t22 = (t16 ^ t19);
    t23 = *((unsigned int *)t4);
    t26 = *((unsigned int *)t5);
    t27 = (t23 ^ t26);
    t28 = (t22 | t27);
    t29 = *((unsigned int *)t4);
    t30 = *((unsigned int *)t5);
    t31 = (t29 | t30);
    t32 = (~(t31));
    t33 = (t28 & t32);
    if (t33 != 0)
        goto LAB11;

LAB8:    if (t31 != 0)
        goto LAB10;

LAB9:    *((unsigned int *)t6) = 1;

LAB11:    t9 = (t6 + 4);
    t34 = *((unsigned int *)t9);
    t35 = (~(t34));
    t36 = *((unsigned int *)t6);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB12;

LAB13:
LAB14:    goto LAB2;

LAB6:    t22 = *((unsigned int *)t6);
    t23 = *((unsigned int *)t7);
    t24 = (t22 - t23);
    t25 = (t24 + 1);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, *((unsigned int *)t7), t25, 0LL);
    goto LAB7;

LAB10:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB11;

LAB12:    xsi_set_current_line(42, ng0);

LAB15:    xsi_set_current_line(43, ng0);
    t10 = (t0 + 1688U);
    t11 = *((char **)t10);
    t10 = ((char*)((ng3)));
    memset(t7, 0, 8);
    t12 = (t11 + 4);
    t13 = (t10 + 4);
    t39 = *((unsigned int *)t11);
    t40 = *((unsigned int *)t10);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t12);
    t43 = *((unsigned int *)t13);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t12);
    t47 = *((unsigned int *)t13);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB19;

LAB16:    if (t48 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t7) = 1;

LAB19:    memset(t51, 0, 8);
    t15 = (t7 + 4);
    t52 = *((unsigned int *)t15);
    t53 = (~(t52));
    t54 = *((unsigned int *)t7);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t15) != 0)
        goto LAB22;

LAB23:    t57 = (t51 + 4);
    t58 = *((unsigned int *)t51);
    t59 = *((unsigned int *)t57);
    t60 = (t58 || t59);
    if (t60 > 0)
        goto LAB24;

LAB25:    memcpy(t87, t51, 8);

LAB26:    t117 = (t87 + 4);
    t118 = *((unsigned int *)t117);
    t119 = (~(t118));
    t120 = *((unsigned int *)t87);
    t121 = (t120 & t119);
    t122 = (t121 != 0);
    if (t122 > 0)
        goto LAB38;

LAB39:
LAB40:    goto LAB14;

LAB18:    t14 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB19;

LAB20:    *((unsigned int *)t51) = 1;
    goto LAB23;

LAB22:    t18 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB23;

LAB24:    t61 = (t0 + 1368U);
    t62 = *((char **)t61);
    t61 = ((char*)((ng1)));
    memset(t63, 0, 8);
    t64 = (t62 + 4);
    t65 = (t61 + 4);
    t66 = *((unsigned int *)t62);
    t67 = *((unsigned int *)t61);
    t68 = (t66 ^ t67);
    t69 = *((unsigned int *)t64);
    t70 = *((unsigned int *)t65);
    t71 = (t69 ^ t70);
    t72 = (t68 | t71);
    t73 = *((unsigned int *)t64);
    t74 = *((unsigned int *)t65);
    t75 = (t73 | t74);
    t76 = (~(t75));
    t77 = (t72 & t76);
    if (t77 != 0)
        goto LAB28;

LAB27:    if (t75 != 0)
        goto LAB29;

LAB30:    memset(t79, 0, 8);
    t80 = (t63 + 4);
    t81 = *((unsigned int *)t80);
    t82 = (~(t81));
    t83 = *((unsigned int *)t63);
    t84 = (t83 & t82);
    t85 = (t84 & 1U);
    if (t85 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t80) != 0)
        goto LAB33;

LAB34:    t88 = *((unsigned int *)t51);
    t89 = *((unsigned int *)t79);
    t90 = (t88 & t89);
    *((unsigned int *)t87) = t90;
    t91 = (t51 + 4);
    t92 = (t79 + 4);
    t93 = (t87 + 4);
    t94 = *((unsigned int *)t91);
    t95 = *((unsigned int *)t92);
    t96 = (t94 | t95);
    *((unsigned int *)t93) = t96;
    t97 = *((unsigned int *)t93);
    t98 = (t97 != 0);
    if (t98 == 1)
        goto LAB35;

LAB36:
LAB37:    goto LAB26;

LAB28:    *((unsigned int *)t63) = 1;
    goto LAB30;

LAB29:    t78 = (t63 + 4);
    *((unsigned int *)t63) = 1;
    *((unsigned int *)t78) = 1;
    goto LAB30;

LAB31:    *((unsigned int *)t79) = 1;
    goto LAB34;

LAB33:    t86 = (t79 + 4);
    *((unsigned int *)t79) = 1;
    *((unsigned int *)t86) = 1;
    goto LAB34;

LAB35:    t99 = *((unsigned int *)t87);
    t100 = *((unsigned int *)t93);
    *((unsigned int *)t87) = (t99 | t100);
    t101 = (t51 + 4);
    t102 = (t79 + 4);
    t103 = *((unsigned int *)t51);
    t104 = (~(t103));
    t105 = *((unsigned int *)t101);
    t106 = (~(t105));
    t107 = *((unsigned int *)t79);
    t108 = (~(t107));
    t109 = *((unsigned int *)t102);
    t110 = (~(t109));
    t17 = (t104 & t106);
    t20 = (t108 & t110);
    t111 = (~(t17));
    t112 = (~(t20));
    t113 = *((unsigned int *)t93);
    *((unsigned int *)t93) = (t113 & t111);
    t114 = *((unsigned int *)t93);
    *((unsigned int *)t93) = (t114 & t112);
    t115 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t115 & t111);
    t116 = *((unsigned int *)t87);
    *((unsigned int *)t87) = (t116 & t112);
    goto LAB37;

LAB38:    xsi_set_current_line(44, ng0);
    t123 = (t0 + 1528U);
    t124 = *((char **)t123);
    t123 = (t0 + 3048);
    t127 = (t0 + 3048);
    t128 = (t127 + 72U);
    t129 = *((char **)t128);
    t130 = (t0 + 3048);
    t131 = (t130 + 64U);
    t132 = *((char **)t131);
    t133 = (t0 + 1368U);
    t134 = *((char **)t133);
    xsi_vlog_generic_convert_array_indices(t125, t126, t129, t132, 2, 1, t134, 5, 2);
    t133 = (t125 + 4);
    t135 = *((unsigned int *)t133);
    t21 = (!(t135));
    t136 = (t126 + 4);
    t137 = *((unsigned int *)t136);
    t24 = (!(t137));
    t25 = (t21 && t24);
    if (t25 == 1)
        goto LAB41;

LAB42:    goto LAB40;

LAB41:    t138 = *((unsigned int *)t125);
    t139 = *((unsigned int *)t126);
    t140 = (t138 - t139);
    t141 = (t140 + 1);
    xsi_vlogvar_wait_assign_value(t123, t124, 0, *((unsigned int *)t126), t141, 0LL);
    goto LAB42;

}

static void Always_48_1(char *t0)
{
    char t6[8];
    char t22[8];
    char t37[8];
    char t53[8];
    char t61[8];
    char t97[8];
    char t105[8];
    char t120[8];
    char t128[8];
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
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
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
    unsigned int t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    int t152;
    int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    char *t167;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 4800);
    *((int *)t2) = 1;
    t3 = (t0 + 4248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(48, ng0);

LAB5:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
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
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB14;

LAB15:    memcpy(t61, t22, 8);

LAB16:    t89 = (t61 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t61);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
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
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t6) = 1;

LAB34:    memset(t22, 0, 8);
    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t8) != 0)
        goto LAB37;

LAB38:    t23 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t23);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB39;

LAB40:    memcpy(t61, t22, 8);

LAB41:    memset(t97, 0, 8);
    t75 = (t61 + 4);
    t93 = *((unsigned int *)t75);
    t94 = (~(t93));
    t98 = *((unsigned int *)t61);
    t99 = (t98 & t94);
    t100 = (t99 & 1U);
    if (t100 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t75) != 0)
        goto LAB55;

LAB56:    t89 = (t97 + 4);
    t101 = *((unsigned int *)t97);
    t102 = *((unsigned int *)t89);
    t103 = (t101 || t102);
    if (t103 > 0)
        goto LAB57;

LAB58:    memcpy(t128, t97, 8);

LAB59:    t160 = (t128 + 4);
    t161 = *((unsigned int *)t160);
    t162 = (~(t161));
    t163 = *((unsigned int *)t128);
    t164 = (t163 & t162);
    t165 = (t164 != 0);
    if (t165 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
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
        goto LAB77;

LAB74:    if (t18 != 0)
        goto LAB76;

LAB75:    *((unsigned int *)t6) = 1;

LAB77:    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB78;

LAB79:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB80:
LAB73:
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

LAB14:    t35 = (t0 + 1848U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng1)));
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = (t35 + 4);
    t40 = *((unsigned int *)t36);
    t41 = *((unsigned int *)t35);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t38);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB20;

LAB17:    if (t49 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t37) = 1;

LAB20:    memset(t53, 0, 8);
    t54 = (t37 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t54) != 0)
        goto LAB23;

LAB24:    t62 = *((unsigned int *)t22);
    t63 = *((unsigned int *)t53);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = (t22 + 4);
    t66 = (t53 + 4);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t65);
    t69 = *((unsigned int *)t66);
    t70 = (t68 | t69);
    *((unsigned int *)t67) = t70;
    t71 = *((unsigned int *)t67);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t53) = 1;
    goto LAB24;

LAB23:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB24;

LAB25:    t73 = *((unsigned int *)t61);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t61) = (t73 | t74);
    t75 = (t22 + 4);
    t76 = (t53 + 4);
    t77 = *((unsigned int *)t75);
    t78 = (~(t77));
    t79 = *((unsigned int *)t22);
    t80 = (t79 & t78);
    t81 = *((unsigned int *)t76);
    t82 = (~(t81));
    t83 = *((unsigned int *)t53);
    t84 = (t83 & t82);
    t85 = (~(t80));
    t86 = (~(t84));
    t87 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t87 & t85);
    t88 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t88 & t86);
    goto LAB27;

LAB28:    xsi_set_current_line(50, ng0);
    t95 = ((char*)((ng1)));
    t96 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t96, t95, 0, 0, 32, 0LL);
    goto LAB30;

LAB33:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t22) = 1;
    goto LAB38;

LAB37:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB38;

LAB39:    t29 = (t0 + 1688U);
    t30 = *((char **)t29);
    t29 = ((char*)((ng3)));
    memset(t37, 0, 8);
    t35 = (t30 + 4);
    t36 = (t29 + 4);
    t34 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t29);
    t41 = (t34 ^ t40);
    t42 = *((unsigned int *)t35);
    t43 = *((unsigned int *)t36);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t35);
    t47 = *((unsigned int *)t36);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB45;

LAB42:    if (t48 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t37) = 1;

LAB45:    memset(t53, 0, 8);
    t39 = (t37 + 4);
    t51 = *((unsigned int *)t39);
    t55 = (~(t51));
    t56 = *((unsigned int *)t37);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t39) != 0)
        goto LAB48;

LAB49:    t59 = *((unsigned int *)t22);
    t62 = *((unsigned int *)t53);
    t63 = (t59 & t62);
    *((unsigned int *)t61) = t63;
    t54 = (t22 + 4);
    t60 = (t53 + 4);
    t65 = (t61 + 4);
    t64 = *((unsigned int *)t54);
    t68 = *((unsigned int *)t60);
    t69 = (t64 | t68);
    *((unsigned int *)t65) = t69;
    t70 = *((unsigned int *)t65);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB50;

LAB51:
LAB52:    goto LAB41;

LAB44:    t38 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB45;

LAB46:    *((unsigned int *)t53) = 1;
    goto LAB49;

LAB48:    t52 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB49;

LAB50:    t72 = *((unsigned int *)t61);
    t73 = *((unsigned int *)t65);
    *((unsigned int *)t61) = (t72 | t73);
    t66 = (t22 + 4);
    t67 = (t53 + 4);
    t74 = *((unsigned int *)t22);
    t77 = (~(t74));
    t78 = *((unsigned int *)t66);
    t79 = (~(t78));
    t81 = *((unsigned int *)t53);
    t82 = (~(t81));
    t83 = *((unsigned int *)t67);
    t85 = (~(t83));
    t80 = (t77 & t79);
    t84 = (t82 & t85);
    t86 = (~(t80));
    t87 = (~(t84));
    t88 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t88 & t86);
    t90 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t90 & t87);
    t91 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t91 & t86);
    t92 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t92 & t87);
    goto LAB52;

LAB53:    *((unsigned int *)t97) = 1;
    goto LAB56;

LAB55:    t76 = (t97 + 4);
    *((unsigned int *)t97) = 1;
    *((unsigned int *)t76) = 1;
    goto LAB56;

LAB57:    t95 = (t0 + 1368U);
    t96 = *((char **)t95);
    t95 = (t0 + 1848U);
    t104 = *((char **)t95);
    memset(t105, 0, 8);
    t95 = (t96 + 4);
    t106 = (t104 + 4);
    t107 = *((unsigned int *)t96);
    t108 = *((unsigned int *)t104);
    t109 = (t107 ^ t108);
    t110 = *((unsigned int *)t95);
    t111 = *((unsigned int *)t106);
    t112 = (t110 ^ t111);
    t113 = (t109 | t112);
    t114 = *((unsigned int *)t95);
    t115 = *((unsigned int *)t106);
    t116 = (t114 | t115);
    t117 = (~(t116));
    t118 = (t113 & t117);
    if (t118 != 0)
        goto LAB63;

LAB60:    if (t116 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t105) = 1;

LAB63:    memset(t120, 0, 8);
    t121 = (t105 + 4);
    t122 = *((unsigned int *)t121);
    t123 = (~(t122));
    t124 = *((unsigned int *)t105);
    t125 = (t124 & t123);
    t126 = (t125 & 1U);
    if (t126 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t121) != 0)
        goto LAB66;

LAB67:    t129 = *((unsigned int *)t97);
    t130 = *((unsigned int *)t120);
    t131 = (t129 & t130);
    *((unsigned int *)t128) = t131;
    t132 = (t97 + 4);
    t133 = (t120 + 4);
    t134 = (t128 + 4);
    t135 = *((unsigned int *)t132);
    t136 = *((unsigned int *)t133);
    t137 = (t135 | t136);
    *((unsigned int *)t134) = t137;
    t138 = *((unsigned int *)t134);
    t139 = (t138 != 0);
    if (t139 == 1)
        goto LAB68;

LAB69:
LAB70:    goto LAB59;

LAB62:    t119 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB63;

LAB64:    *((unsigned int *)t120) = 1;
    goto LAB67;

LAB66:    t127 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t127) = 1;
    goto LAB67;

LAB68:    t140 = *((unsigned int *)t128);
    t141 = *((unsigned int *)t134);
    *((unsigned int *)t128) = (t140 | t141);
    t142 = (t97 + 4);
    t143 = (t120 + 4);
    t144 = *((unsigned int *)t97);
    t145 = (~(t144));
    t146 = *((unsigned int *)t142);
    t147 = (~(t146));
    t148 = *((unsigned int *)t120);
    t149 = (~(t148));
    t150 = *((unsigned int *)t143);
    t151 = (~(t150));
    t152 = (t145 & t147);
    t153 = (t149 & t151);
    t154 = (~(t152));
    t155 = (~(t153));
    t156 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t156 & t154);
    t157 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t157 & t155);
    t158 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t158 & t154);
    t159 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t159 & t155);
    goto LAB70;

LAB71:    xsi_set_current_line(52, ng0);
    t166 = (t0 + 1528U);
    t167 = *((char **)t166);
    t166 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t166, t167, 0, 0, 32, 0LL);
    goto LAB73;

LAB76:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB77;

LAB78:    xsi_set_current_line(54, ng0);
    t21 = (t0 + 3048);
    t23 = (t21 + 56U);
    t29 = *((char **)t23);
    t30 = (t0 + 3048);
    t35 = (t30 + 72U);
    t36 = *((char **)t35);
    t38 = (t0 + 3048);
    t39 = (t38 + 64U);
    t52 = *((char **)t39);
    t54 = (t0 + 1848U);
    t60 = *((char **)t54);
    xsi_vlog_generic_get_array_select_value(t22, 32, t29, t36, t52, 2, 1, t60, 5, 2);
    t54 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t54, t22, 0, 0, 32, 0LL);
    goto LAB80;

}

static void Always_59_2(char *t0)
{
    char t6[8];
    char t22[8];
    char t37[8];
    char t53[8];
    char t61[8];
    char t97[8];
    char t105[8];
    char t120[8];
    char t128[8];
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
    unsigned int t34;
    char *t35;
    char *t36;
    char *t38;
    char *t39;
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
    unsigned int t51;
    char *t52;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t119;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    char *t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    int t152;
    int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    char *t167;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4816);
    *((int *)t2) = 1;
    t3 = (t0 + 4496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);

LAB5:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
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
    t32 = (!(t31));
    t33 = *((unsigned int *)t30);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB14;

LAB15:    memcpy(t61, t22, 8);

LAB16:    t89 = (t61 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t61);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
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
        goto LAB34;

LAB31:    if (t18 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t6) = 1;

LAB34:    memset(t22, 0, 8);
    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t8) != 0)
        goto LAB37;

LAB38:    t23 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t23);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB39;

LAB40:    memcpy(t61, t22, 8);

LAB41:    memset(t97, 0, 8);
    t75 = (t61 + 4);
    t93 = *((unsigned int *)t75);
    t94 = (~(t93));
    t98 = *((unsigned int *)t61);
    t99 = (t98 & t94);
    t100 = (t99 & 1U);
    if (t100 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t75) != 0)
        goto LAB55;

LAB56:    t89 = (t97 + 4);
    t101 = *((unsigned int *)t97);
    t102 = *((unsigned int *)t89);
    t103 = (t101 || t102);
    if (t103 > 0)
        goto LAB57;

LAB58:    memcpy(t128, t97, 8);

LAB59:    t160 = (t128 + 4);
    t161 = *((unsigned int *)t160);
    t162 = (~(t161));
    t163 = *((unsigned int *)t128);
    t164 = (t163 & t162);
    t165 = (t164 != 0);
    if (t165 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
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
        goto LAB77;

LAB74:    if (t18 != 0)
        goto LAB76;

LAB75:    *((unsigned int *)t6) = 1;

LAB77:    t8 = (t6 + 4);
    t24 = *((unsigned int *)t8);
    t25 = (~(t24));
    t26 = *((unsigned int *)t6);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB78;

LAB79:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB80:
LAB73:
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

LAB14:    t35 = (t0 + 2168U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng1)));
    memset(t37, 0, 8);
    t38 = (t36 + 4);
    t39 = (t35 + 4);
    t40 = *((unsigned int *)t36);
    t41 = *((unsigned int *)t35);
    t42 = (t40 ^ t41);
    t43 = *((unsigned int *)t38);
    t44 = *((unsigned int *)t39);
    t45 = (t43 ^ t44);
    t46 = (t42 | t45);
    t47 = *((unsigned int *)t38);
    t48 = *((unsigned int *)t39);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB20;

LAB17:    if (t49 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t37) = 1;

LAB20:    memset(t53, 0, 8);
    t54 = (t37 + 4);
    t55 = *((unsigned int *)t54);
    t56 = (~(t55));
    t57 = *((unsigned int *)t37);
    t58 = (t57 & t56);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t54) != 0)
        goto LAB23;

LAB24:    t62 = *((unsigned int *)t22);
    t63 = *((unsigned int *)t53);
    t64 = (t62 | t63);
    *((unsigned int *)t61) = t64;
    t65 = (t22 + 4);
    t66 = (t53 + 4);
    t67 = (t61 + 4);
    t68 = *((unsigned int *)t65);
    t69 = *((unsigned int *)t66);
    t70 = (t68 | t69);
    *((unsigned int *)t67) = t70;
    t71 = *((unsigned int *)t67);
    t72 = (t71 != 0);
    if (t72 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB16;

LAB19:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t53) = 1;
    goto LAB24;

LAB23:    t60 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB24;

LAB25:    t73 = *((unsigned int *)t61);
    t74 = *((unsigned int *)t67);
    *((unsigned int *)t61) = (t73 | t74);
    t75 = (t22 + 4);
    t76 = (t53 + 4);
    t77 = *((unsigned int *)t75);
    t78 = (~(t77));
    t79 = *((unsigned int *)t22);
    t80 = (t79 & t78);
    t81 = *((unsigned int *)t76);
    t82 = (~(t81));
    t83 = *((unsigned int *)t53);
    t84 = (t83 & t82);
    t85 = (~(t80));
    t86 = (~(t84));
    t87 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t87 & t85);
    t88 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t88 & t86);
    goto LAB27;

LAB28:    xsi_set_current_line(61, ng0);
    t95 = ((char*)((ng1)));
    t96 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t96, t95, 0, 0, 32, 0LL);
    goto LAB30;

LAB33:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t22) = 1;
    goto LAB38;

LAB37:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB38;

LAB39:    t29 = (t0 + 1688U);
    t30 = *((char **)t29);
    t29 = ((char*)((ng3)));
    memset(t37, 0, 8);
    t35 = (t30 + 4);
    t36 = (t29 + 4);
    t34 = *((unsigned int *)t30);
    t40 = *((unsigned int *)t29);
    t41 = (t34 ^ t40);
    t42 = *((unsigned int *)t35);
    t43 = *((unsigned int *)t36);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t35);
    t47 = *((unsigned int *)t36);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB45;

LAB42:    if (t48 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t37) = 1;

LAB45:    memset(t53, 0, 8);
    t39 = (t37 + 4);
    t51 = *((unsigned int *)t39);
    t55 = (~(t51));
    t56 = *((unsigned int *)t37);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t39) != 0)
        goto LAB48;

LAB49:    t59 = *((unsigned int *)t22);
    t62 = *((unsigned int *)t53);
    t63 = (t59 & t62);
    *((unsigned int *)t61) = t63;
    t54 = (t22 + 4);
    t60 = (t53 + 4);
    t65 = (t61 + 4);
    t64 = *((unsigned int *)t54);
    t68 = *((unsigned int *)t60);
    t69 = (t64 | t68);
    *((unsigned int *)t65) = t69;
    t70 = *((unsigned int *)t65);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB50;

LAB51:
LAB52:    goto LAB41;

LAB44:    t38 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB45;

LAB46:    *((unsigned int *)t53) = 1;
    goto LAB49;

LAB48:    t52 = (t53 + 4);
    *((unsigned int *)t53) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB49;

LAB50:    t72 = *((unsigned int *)t61);
    t73 = *((unsigned int *)t65);
    *((unsigned int *)t61) = (t72 | t73);
    t66 = (t22 + 4);
    t67 = (t53 + 4);
    t74 = *((unsigned int *)t22);
    t77 = (~(t74));
    t78 = *((unsigned int *)t66);
    t79 = (~(t78));
    t81 = *((unsigned int *)t53);
    t82 = (~(t81));
    t83 = *((unsigned int *)t67);
    t85 = (~(t83));
    t80 = (t77 & t79);
    t84 = (t82 & t85);
    t86 = (~(t80));
    t87 = (~(t84));
    t88 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t88 & t86);
    t90 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t90 & t87);
    t91 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t91 & t86);
    t92 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t92 & t87);
    goto LAB52;

LAB53:    *((unsigned int *)t97) = 1;
    goto LAB56;

LAB55:    t76 = (t97 + 4);
    *((unsigned int *)t97) = 1;
    *((unsigned int *)t76) = 1;
    goto LAB56;

LAB57:    t95 = (t0 + 1368U);
    t96 = *((char **)t95);
    t95 = (t0 + 2168U);
    t104 = *((char **)t95);
    memset(t105, 0, 8);
    t95 = (t96 + 4);
    t106 = (t104 + 4);
    t107 = *((unsigned int *)t96);
    t108 = *((unsigned int *)t104);
    t109 = (t107 ^ t108);
    t110 = *((unsigned int *)t95);
    t111 = *((unsigned int *)t106);
    t112 = (t110 ^ t111);
    t113 = (t109 | t112);
    t114 = *((unsigned int *)t95);
    t115 = *((unsigned int *)t106);
    t116 = (t114 | t115);
    t117 = (~(t116));
    t118 = (t113 & t117);
    if (t118 != 0)
        goto LAB63;

LAB60:    if (t116 != 0)
        goto LAB62;

LAB61:    *((unsigned int *)t105) = 1;

LAB63:    memset(t120, 0, 8);
    t121 = (t105 + 4);
    t122 = *((unsigned int *)t121);
    t123 = (~(t122));
    t124 = *((unsigned int *)t105);
    t125 = (t124 & t123);
    t126 = (t125 & 1U);
    if (t126 != 0)
        goto LAB64;

LAB65:    if (*((unsigned int *)t121) != 0)
        goto LAB66;

LAB67:    t129 = *((unsigned int *)t97);
    t130 = *((unsigned int *)t120);
    t131 = (t129 & t130);
    *((unsigned int *)t128) = t131;
    t132 = (t97 + 4);
    t133 = (t120 + 4);
    t134 = (t128 + 4);
    t135 = *((unsigned int *)t132);
    t136 = *((unsigned int *)t133);
    t137 = (t135 | t136);
    *((unsigned int *)t134) = t137;
    t138 = *((unsigned int *)t134);
    t139 = (t138 != 0);
    if (t139 == 1)
        goto LAB68;

LAB69:
LAB70:    goto LAB59;

LAB62:    t119 = (t105 + 4);
    *((unsigned int *)t105) = 1;
    *((unsigned int *)t119) = 1;
    goto LAB63;

LAB64:    *((unsigned int *)t120) = 1;
    goto LAB67;

LAB66:    t127 = (t120 + 4);
    *((unsigned int *)t120) = 1;
    *((unsigned int *)t127) = 1;
    goto LAB67;

LAB68:    t140 = *((unsigned int *)t128);
    t141 = *((unsigned int *)t134);
    *((unsigned int *)t128) = (t140 | t141);
    t142 = (t97 + 4);
    t143 = (t120 + 4);
    t144 = *((unsigned int *)t97);
    t145 = (~(t144));
    t146 = *((unsigned int *)t142);
    t147 = (~(t146));
    t148 = *((unsigned int *)t120);
    t149 = (~(t148));
    t150 = *((unsigned int *)t143);
    t151 = (~(t150));
    t152 = (t145 & t147);
    t153 = (t149 & t151);
    t154 = (~(t152));
    t155 = (~(t153));
    t156 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t156 & t154);
    t157 = *((unsigned int *)t134);
    *((unsigned int *)t134) = (t157 & t155);
    t158 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t158 & t154);
    t159 = *((unsigned int *)t128);
    *((unsigned int *)t128) = (t159 & t155);
    goto LAB70;

LAB71:    xsi_set_current_line(63, ng0);
    t166 = (t0 + 1528U);
    t167 = *((char **)t166);
    t166 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t166, t167, 0, 0, 32, 0LL);
    goto LAB73;

LAB76:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB77;

LAB78:    xsi_set_current_line(65, ng0);
    t21 = (t0 + 3048);
    t23 = (t21 + 56U);
    t29 = *((char **)t23);
    t30 = (t0 + 3048);
    t35 = (t30 + 72U);
    t36 = *((char **)t35);
    t38 = (t0 + 3048);
    t39 = (t38 + 64U);
    t52 = *((char **)t39);
    t54 = (t0 + 2168U);
    t60 = *((char **)t54);
    xsi_vlog_generic_get_array_select_value(t22, 32, t29, t36, t52, 2, 1, t60, 5, 2);
    t54 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t54, t22, 0, 0, 32, 0LL);
    goto LAB80;

}


extern void work_m_00000000001885255640_0147336180_init()
{
	static char *pe[] = {(void *)Always_40_0,(void *)Always_48_1,(void *)Always_59_2};
	xsi_register_didat("work_m_00000000001885255640_0147336180", "isim/MipsCPU_tb_isim_beh.exe.sim/work/m_00000000001885255640_0147336180.didat");
	xsi_register_executes(pe);
}
