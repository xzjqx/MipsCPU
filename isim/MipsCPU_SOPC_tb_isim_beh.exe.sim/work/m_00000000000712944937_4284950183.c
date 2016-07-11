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
static const char *ng0 = "C:/MipsCPU/MEM.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {35U, 0U};
static unsigned int ng4[] = {43U, 0U};
static unsigned int ng5[] = {32U, 0U};
static int ng6[] = {24, 0};
static unsigned int ng7[] = {36U, 0U};
static unsigned int ng8[] = {40U, 0U};
static unsigned int ng9[] = {37U, 0U};



static void Cont_55_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3284U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2760);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3676);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 3624);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_57_1(char *t0)
{
    char t6[8];
    char t31[8];
    char t32[8];
    char t33[8];
    char t35[8];
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
    unsigned int t34;
    char *t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;

LAB0:    t1 = (t0 + 3428U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3632);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 600U);
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

LAB11:    xsi_set_current_line(71, ng0);

LAB14:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1932);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 2116);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    t2 = (t0 + 2208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t0 + 2300);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2576);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1244U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng8)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 6, t2, 6);
    if (t30 == 1)
        goto LAB26;

LAB27:
LAB28:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(58, ng0);

LAB13:    xsi_set_current_line(59, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 5, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1932);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2116);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2300);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2392);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2576);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(83, ng0);

LAB29:    xsi_set_current_line(84, ng0);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(85, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1520U);
    t4 = *((char **)t2);
    t2 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t2, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB28;

LAB18:    xsi_set_current_line(89, ng0);

LAB30:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 1428U);
    t4 = *((char **)t2);
    t2 = (t0 + 2392);
    xsi_vlogvar_wait_assign_value(t2, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB28;

LAB20:    xsi_set_current_line(95, ng0);

LAB31:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1520U);
    t4 = *((char **)t2);
    memset(t31, 0, 8);
    t2 = (t31 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 24);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 24);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t7 = ((char*)((ng6)));
    t8 = (t0 + 1520U);
    t21 = *((char **)t8);
    memset(t33, 0, 8);
    t8 = (t33 + 4);
    t22 = (t21 + 4);
    t15 = *((unsigned int *)t21);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t33) = t17;
    t18 = *((unsigned int *)t22);
    t19 = (t18 >> 31);
    t20 = (t19 & 1);
    *((unsigned int *)t8) = t20;
    xsi_vlog_mul_concat(t32, 24, 1, t7, 1U, t33, 1);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t32, 24, t31, 8);
    t28 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t28, t6, 0, 0, 32, 0LL);
    goto LAB28;

LAB22:    xsi_set_current_line(122, ng0);

LAB32:    xsi_set_current_line(123, ng0);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 1520U);
    t4 = *((char **)t2);
    memset(t31, 0, 8);
    t2 = (t31 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 24);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 24);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t7 = ((char*)((ng2)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t7, 24, t31, 8);
    t8 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 32, 0LL);
    goto LAB28;

LAB24:    xsi_set_current_line(149, ng0);

LAB33:    xsi_set_current_line(150, ng0);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(151, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 1428U);
    t4 = *((char **)t2);
    memset(t31, 0, 8);
    t2 = (t31 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t7 = (t0 + 1428U);
    t8 = *((char **)t7);
    memset(t32, 0, 8);
    t7 = (t32 + 4);
    t21 = (t8 + 4);
    t15 = *((unsigned int *)t8);
    t16 = (t15 >> 0);
    *((unsigned int *)t32) = t16;
    t17 = *((unsigned int *)t21);
    t18 = (t17 >> 0);
    *((unsigned int *)t7) = t18;
    t19 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t19 & 255U);
    t20 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t20 & 255U);
    t22 = (t0 + 1428U);
    t28 = *((char **)t22);
    memset(t33, 0, 8);
    t22 = (t33 + 4);
    t29 = (t28 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (t23 >> 0);
    *((unsigned int *)t33) = t24;
    t25 = *((unsigned int *)t29);
    t26 = (t25 >> 0);
    *((unsigned int *)t22) = t26;
    t27 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t27 & 255U);
    t34 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t34 & 255U);
    t36 = (t0 + 1428U);
    t37 = *((char **)t36);
    memset(t35, 0, 8);
    t36 = (t35 + 4);
    t38 = (t37 + 4);
    t39 = *((unsigned int *)t37);
    t40 = (t39 >> 0);
    *((unsigned int *)t35) = t40;
    t41 = *((unsigned int *)t38);
    t42 = (t41 >> 0);
    *((unsigned int *)t36) = t42;
    t43 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t43 & 255U);
    t44 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t44 & 255U);
    xsi_vlogtype_concat(t6, 32, 32, 4U, t35, 8, t33, 8, t32, 8, t31, 8);
    t45 = (t0 + 2392);
    xsi_vlogvar_wait_assign_value(t45, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2576);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    goto LAB28;

LAB26:    xsi_set_current_line(173, ng0);

LAB34:    xsi_set_current_line(174, ng0);
    t4 = (t0 + 1336U);
    t5 = *((char **)t4);
    t4 = (t0 + 2668);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2760);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2484);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(177, ng0);
    t2 = (t0 + 1520U);
    t4 = *((char **)t2);
    memset(t31, 0, 8);
    t2 = (t31 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t31) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 16);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t13 & 65535U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 65535U);
    t7 = ((char*)((ng2)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t7, 16, t31, 16);
    t8 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t8, t6, 0, 0, 32, 0LL);
    goto LAB28;

}


extern void work_m_00000000000712944937_4284950183_init()
{
	static char *pe[] = {(void *)Cont_55_0,(void *)Always_57_1};
	xsi_register_didat("work_m_00000000000712944937_4284950183", "isim/MipsCPU_SOPC_tb_isim_beh.exe.sim/work/m_00000000000712944937_4284950183.didat");
	xsi_register_executes(pe);
}
