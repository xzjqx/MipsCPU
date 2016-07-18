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
static const char *ng0 = "C:/MipsCPU/CP0.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {268435456U, 0U};
static unsigned int ng4[] = {32768U, 0U};
static unsigned int ng5[] = {4980994U, 0U};
static int ng6[] = {1, 0};
static int ng7[] = {15, 0};
static int ng8[] = {10, 0};
static unsigned int ng9[] = {9U, 0U};
static unsigned int ng10[] = {11U, 0U};
static unsigned int ng11[] = {12U, 0U};
static unsigned int ng12[] = {14U, 0U};
static unsigned int ng13[] = {13U, 0U};
static int ng14[] = {9, 0};
static int ng15[] = {8, 0};
static int ng16[] = {23, 0};
static int ng17[] = {22, 0};
static unsigned int ng18[] = {15U, 0U};
static unsigned int ng19[] = {16U, 0U};



static void Always_43_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t64[8];
    char t72[8];
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
    int t32;
    int t33;
    int t34;
    int t35;
    int t36;
    int t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    char *t109;
    int t110;

LAB0:    t1 = (t0 + 2640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2980);
    *((int *)t2) = 1;
    t3 = (t0 + 2668);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
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

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(55, ng0);

LAB14:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1472);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t0 + 1748);
    t4 = (t0 + 1748);
    t5 = (t4 + 44U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng7)));
    t21 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t6, t30, t31, ((int*)(t7)), 2, t8, 32, 1, t21, 32, 1);
    t22 = (t6 + 4);
    t9 = *((unsigned int *)t22);
    t32 = (!(t9));
    t28 = (t30 + 4);
    t10 = *((unsigned int *)t28);
    t33 = (!(t10));
    t34 = (t32 && t33);
    t29 = (t31 + 4);
    t11 = *((unsigned int *)t29);
    t35 = (!(t11));
    t36 = (t34 && t35);
    if (t36 == 1)
        goto LAB15;

LAB16:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB18;

LAB17:    if (t18 != 0)
        goto LAB19;

LAB20:    memset(t30, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t22) != 0)
        goto LAB23;

LAB24:    t29 = (t30 + 4);
    t40 = *((unsigned int *)t30);
    t41 = *((unsigned int *)t29);
    t42 = (t40 || t41);
    if (t42 > 0)
        goto LAB25;

LAB26:    memcpy(t72, t30, 8);

LAB27:    t102 = (t72 + 4);
    t103 = *((unsigned int *)t102);
    t104 = (~(t103));
    t105 = *((unsigned int *)t72);
    t106 = (t105 & t104);
    t107 = (t106 != 0);
    if (t107 > 0)
        goto LAB39;

LAB40:
LAB41:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
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
        goto LAB46;

LAB43:    if (t18 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t6) = 1;

LAB46:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB47;

LAB48:
LAB49:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(44, ng0);

LAB13:    xsi_set_current_line(46, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1932);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2116);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB15:    t12 = *((unsigned int *)t31);
    t37 = (t12 + 0);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t30);
    t38 = (t13 - t14);
    t39 = (t38 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t37, *((unsigned int *)t30), t39, 0LL);
    goto LAB16;

LAB18:    *((unsigned int *)t6) = 1;
    goto LAB20;

LAB19:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB20;

LAB21:    *((unsigned int *)t30) = 1;
    goto LAB24;

LAB23:    t28 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB24;

LAB25:    t43 = (t0 + 1472);
    t44 = (t43 + 36U);
    t45 = *((char **)t44);
    t46 = (t0 + 1564);
    t47 = (t46 + 36U);
    t48 = *((char **)t47);
    memset(t31, 0, 8);
    t49 = (t45 + 4);
    t50 = (t48 + 4);
    t51 = *((unsigned int *)t45);
    t52 = *((unsigned int *)t48);
    t53 = (t51 ^ t52);
    t54 = *((unsigned int *)t49);
    t55 = *((unsigned int *)t50);
    t56 = (t54 ^ t55);
    t57 = (t53 | t56);
    t58 = *((unsigned int *)t49);
    t59 = *((unsigned int *)t50);
    t60 = (t58 | t59);
    t61 = (~(t60));
    t62 = (t57 & t61);
    if (t62 != 0)
        goto LAB31;

LAB28:    if (t60 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t31) = 1;

LAB31:    memset(t64, 0, 8);
    t65 = (t31 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t31);
    t69 = (t68 & t67);
    t70 = (t69 & 1U);
    if (t70 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t65) != 0)
        goto LAB34;

LAB35:    t73 = *((unsigned int *)t30);
    t74 = *((unsigned int *)t64);
    t75 = (t73 & t74);
    *((unsigned int *)t72) = t75;
    t76 = (t30 + 4);
    t77 = (t64 + 4);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t76);
    t80 = *((unsigned int *)t77);
    t81 = (t79 | t80);
    *((unsigned int *)t78) = t81;
    t82 = *((unsigned int *)t78);
    t83 = (t82 != 0);
    if (t83 == 1)
        goto LAB36;

LAB37:
LAB38:    goto LAB27;

LAB30:    t63 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t63) = 1;
    goto LAB31;

LAB32:    *((unsigned int *)t64) = 1;
    goto LAB35;

LAB34:    t71 = (t64 + 4);
    *((unsigned int *)t64) = 1;
    *((unsigned int *)t71) = 1;
    goto LAB35;

LAB36:    t84 = *((unsigned int *)t72);
    t85 = *((unsigned int *)t78);
    *((unsigned int *)t72) = (t84 | t85);
    t86 = (t30 + 4);
    t87 = (t64 + 4);
    t88 = *((unsigned int *)t30);
    t89 = (~(t88));
    t90 = *((unsigned int *)t86);
    t91 = (~(t90));
    t92 = *((unsigned int *)t64);
    t93 = (~(t92));
    t94 = *((unsigned int *)t87);
    t95 = (~(t94));
    t32 = (t89 & t91);
    t33 = (t93 & t95);
    t96 = (~(t32));
    t97 = (~(t33));
    t98 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t98 & t96);
    t99 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t99 & t97);
    t100 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t100 & t96);
    t101 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t101 & t97);
    goto LAB38;

LAB39:    xsi_set_current_line(58, ng0);

LAB42:    xsi_set_current_line(59, ng0);
    t108 = ((char*)((ng1)));
    t109 = (t0 + 2116);
    xsi_vlogvar_wait_assign_value(t109, t108, 0, 0, 1, 0LL);
    goto LAB41;

LAB45:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB46;

LAB47:    xsi_set_current_line(62, ng0);

LAB50:    xsi_set_current_line(63, ng0);
    t21 = (t0 + 876U);
    t22 = *((char **)t21);

LAB51:    t21 = ((char*)((ng9)));
    t32 = xsi_vlog_unsigned_case_compare(t22, 5, t21, 5);
    if (t32 == 1)
        goto LAB52;

LAB53:    t2 = ((char*)((ng10)));
    t32 = xsi_vlog_unsigned_case_compare(t22, 5, t2, 5);
    if (t32 == 1)
        goto LAB54;

LAB55:    t2 = ((char*)((ng11)));
    t32 = xsi_vlog_unsigned_case_compare(t22, 5, t2, 5);
    if (t32 == 1)
        goto LAB56;

LAB57:    t2 = ((char*)((ng12)));
    t32 = xsi_vlog_unsigned_case_compare(t22, 5, t2, 5);
    if (t32 == 1)
        goto LAB58;

LAB59:    t2 = ((char*)((ng13)));
    t32 = xsi_vlog_unsigned_case_compare(t22, 5, t2, 5);
    if (t32 == 1)
        goto LAB60;

LAB61:
LAB62:    goto LAB49;

LAB52:    xsi_set_current_line(64, ng0);

LAB63:    xsi_set_current_line(65, ng0);
    t28 = (t0 + 1060U);
    t29 = *((char **)t28);
    t28 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t28, t29, 0, 0, 32, 0LL);
    goto LAB62;

LAB54:    xsi_set_current_line(67, ng0);

LAB64:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 1060U);
    t4 = *((char **)t3);
    t3 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2116);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB62;

LAB56:    xsi_set_current_line(71, ng0);

LAB65:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1060U);
    t4 = *((char **)t3);
    t3 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB62;

LAB58:    xsi_set_current_line(74, ng0);

LAB66:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 1060U);
    t4 = *((char **)t3);
    t3 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 32, 0LL);
    goto LAB62;

LAB60:    xsi_set_current_line(77, ng0);

LAB67:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 1060U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t3 = (t6 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 8);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 8);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 3U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 3U);
    t7 = (t0 + 1748);
    t8 = (t0 + 1748);
    t21 = (t8 + 44U);
    t28 = *((char **)t21);
    t29 = ((char*)((ng14)));
    t43 = ((char*)((ng15)));
    xsi_vlog_convert_partindices(t30, t31, t64, ((int*)(t28)), 2, t29, 32, 1, t43, 32, 1);
    t44 = (t30 + 4);
    t15 = *((unsigned int *)t44);
    t33 = (!(t15));
    t45 = (t31 + 4);
    t16 = *((unsigned int *)t45);
    t34 = (!(t16));
    t35 = (t33 && t34);
    t46 = (t64 + 4);
    t17 = *((unsigned int *)t46);
    t36 = (!(t17));
    t37 = (t35 && t36);
    if (t37 == 1)
        goto LAB68;

LAB69:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 23);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 23);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1748);
    t7 = (t0 + 1748);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t28 = ((char*)((ng16)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t28, 32, 1);
    t29 = (t30 + 4);
    t15 = *((unsigned int *)t29);
    t32 = (!(t15));
    if (t32 == 1)
        goto LAB70;

LAB71:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 22);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 22);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = (t0 + 1748);
    t7 = (t0 + 1748);
    t8 = (t7 + 44U);
    t21 = *((char **)t8);
    t28 = ((char*)((ng17)));
    xsi_vlog_generic_convert_bit_index(t30, t21, 2, t28, 32, 1);
    t29 = (t30 + 4);
    t15 = *((unsigned int *)t29);
    t32 = (!(t15));
    if (t32 == 1)
        goto LAB72;

LAB73:    goto LAB62;

LAB68:    t18 = *((unsigned int *)t64);
    t38 = (t18 + 0);
    t19 = *((unsigned int *)t30);
    t20 = *((unsigned int *)t31);
    t39 = (t19 - t20);
    t110 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t7, t6, t38, *((unsigned int *)t31), t110, 0LL);
    goto LAB69;

LAB70:    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t30), 1, 0LL);
    goto LAB71;

LAB72:    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t30), 1, 0LL);
    goto LAB73;

}

static void Always_88_1(char *t0)
{
    char t6[8];
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
    int t30;

LAB0:    t1 = (t0 + 2784U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2988);
    *((int *)t2) = 1;
    t3 = (t0 + 2812);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(88, ng0);

LAB5:    xsi_set_current_line(89, ng0);
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

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(93, ng0);

LAB14:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng12)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng18)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t30 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng19)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t30 == 1)
        goto LAB28;

LAB29:
LAB30:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(89, ng0);

LAB13:    xsi_set_current_line(91, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(95, ng0);

LAB31:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 1472);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB30;

LAB18:    xsi_set_current_line(98, ng0);

LAB32:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 1564);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB30;

LAB20:    xsi_set_current_line(101, ng0);

LAB33:    xsi_set_current_line(102, ng0);
    t4 = (t0 + 1656);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB30;

LAB22:    xsi_set_current_line(104, ng0);

LAB34:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 1748);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB30;

LAB24:    xsi_set_current_line(107, ng0);

LAB35:    xsi_set_current_line(108, ng0);
    t4 = (t0 + 1840);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB30;

LAB26:    xsi_set_current_line(110, ng0);

LAB36:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 2024);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB30;

LAB28:    xsi_set_current_line(113, ng0);

LAB37:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 1932);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 32, 0LL);
    goto LAB30;

}


extern void work_m_00000000001608097457_3975733304_init()
{
	static char *pe[] = {(void *)Always_43_0,(void *)Always_88_1};
	xsi_register_didat("work_m_00000000001608097457_3975733304", "isim/MipsCPU_SOPC_tb_isim_beh.exe.sim/work/m_00000000001608097457_3975733304.didat");
	xsi_register_executes(pe);
}
