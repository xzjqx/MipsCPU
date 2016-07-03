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
static const char *ng0 = "C:/MipsCPU/EX.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {24U, 0U};
static unsigned int ng4[] = {25U, 0U};
static unsigned int ng5[] = {26U, 0U};
static unsigned int ng6[] = {27U, 0U};
static unsigned int ng7[] = {28U, 0U};
static unsigned int ng8[] = {29U, 0U};
static unsigned int ng9[] = {30U, 0U};
static unsigned int ng10[] = {31U, 0U};
static unsigned int ng11[] = {3U, 0U};



static void Always_39_0(char *t0)
{
    char t6[8];
    char t40[8];
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
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;

LAB0:    t1 = (t0 + 2180U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2520);
    *((int *)t2) = 1;
    t3 = (t0 + 2208);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
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

LAB11:    xsi_set_current_line(43, ng0);

LAB14:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng4)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng7)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng8)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng10)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB30;

LAB31:
LAB33:
LAB32:    xsi_set_current_line(54, ng0);

LAB58:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB34:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(40, ng0);

LAB13:    xsi_set_current_line(41, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB35;

LAB36:
LAB37:    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    goto LAB34;

LAB18:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 & t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB38;

LAB39:
LAB40:    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    goto LAB34;

LAB20:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 968U);
    t5 = *((char **)t4);
    t4 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 32, 0LL);
    goto LAB34;

LAB22:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t40) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t40 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB41;

LAB42:
LAB43:    memset(t6, 0, 8);
    t29 = (t6 + 4);
    t41 = (t40 + 4);
    t36 = *((unsigned int *)t40);
    t37 = (~(t36));
    *((unsigned int *)t6) = t37;
    *((unsigned int *)t29) = 0;
    if (*((unsigned int *)t41) != 0)
        goto LAB45;

LAB44:    t44 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t44 & 4294967295U);
    t45 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t45 & 4294967295U);
    t46 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t46, t6, 0, 0, 32, 0LL);
    goto LAB34;

LAB24:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB46;

LAB47:
LAB48:    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    goto LAB34;

LAB26:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 | t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB49;

LAB50:
LAB51:    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    goto LAB34;

LAB28:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB52;

LAB53:
LAB54:    t22 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t22, t6, 0, 0, 32, 0LL);
    goto LAB34;

LAB30:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 876U);
    t5 = *((char **)t4);
    t4 = (t0 + 968U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t6) = t11;
    t4 = (t5 + 4);
    t8 = (t7 + 4);
    t21 = (t6 + 4);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t8);
    t14 = (t12 | t13);
    *((unsigned int *)t21) = t14;
    t15 = *((unsigned int *)t21);
    t16 = (t15 != 0);
    if (t16 == 1)
        goto LAB55;

LAB56:
LAB57:    t22 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t22, t6, 0, 0, 32, 0LL);
    goto LAB34;

LAB35:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (~(t25));
    t27 = *((unsigned int *)t28);
    t31 = (~(t27));
    t32 = (t20 & t24);
    t33 = (t26 & t31);
    t34 = (~(t32));
    t35 = (~(t33));
    t36 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t36 & t34);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & t35);
    t38 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t38 & t34);
    t39 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t39 & t35);
    goto LAB37;

LAB38:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t5);
    t20 = (~(t19));
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t7);
    t26 = (~(t25));
    t27 = *((unsigned int *)t28);
    t31 = (~(t27));
    t32 = (t20 & t24);
    t33 = (t26 & t31);
    t34 = (~(t32));
    t35 = (~(t33));
    t36 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t36 & t34);
    t37 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t37 & t35);
    t38 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t38 & t34);
    t39 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t39 & t35);
    goto LAB40;

LAB41:    t17 = *((unsigned int *)t40);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t40) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t5);
    t32 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t33 = (t26 & t25);
    t27 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t27);
    t35 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t35 & t31);
    goto LAB43;

LAB45:    t38 = *((unsigned int *)t6);
    t39 = *((unsigned int *)t41);
    *((unsigned int *)t6) = (t38 | t39);
    t42 = *((unsigned int *)t29);
    t43 = *((unsigned int *)t41);
    *((unsigned int *)t29) = (t42 | t43);
    goto LAB44;

LAB46:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t5);
    t32 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t33 = (t26 & t25);
    t27 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t27);
    t35 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t35 & t31);
    goto LAB48;

LAB49:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    t22 = (t5 + 4);
    t28 = (t7 + 4);
    t19 = *((unsigned int *)t22);
    t20 = (~(t19));
    t23 = *((unsigned int *)t5);
    t32 = (t23 & t20);
    t24 = *((unsigned int *)t28);
    t25 = (~(t24));
    t26 = *((unsigned int *)t7);
    t33 = (t26 & t25);
    t27 = (~(t32));
    t31 = (~(t33));
    t34 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t34 & t27);
    t35 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t35 & t31);
    goto LAB51;

LAB52:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    goto LAB54;

LAB55:    t17 = *((unsigned int *)t6);
    t18 = *((unsigned int *)t21);
    *((unsigned int *)t6) = (t17 | t18);
    goto LAB57;

}

static void Always_61_1(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
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
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    int t28;

LAB0:    t1 = (t0 + 2324U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2528);
    *((int *)t2) = 1;
    t3 = (t0 + 2352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);

LAB5:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1060U);
    t5 = *((char **)t4);
    t4 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(67, ng0);

LAB14:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng11)));
    t28 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t28 == 1)
        goto LAB16;

LAB17:
LAB19:
LAB18:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB20:
LAB12:    goto LAB2;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(64, ng0);

LAB13:    xsi_set_current_line(65, ng0);
    t26 = ((char*)((ng2)));
    t27 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t27, t26, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 1656);
    t5 = (t4 + 36U);
    t19 = *((char **)t5);
    t20 = (t0 + 1564);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 32, 0LL);
    goto LAB20;

}


extern void work_m_00000000000193114523_3666345988_init()
{
	static char *pe[] = {(void *)Always_39_0,(void *)Always_61_1};
	xsi_register_didat("work_m_00000000000193114523_3666345988", "isim/MipsCPU_SOPC_tb_isim_beh.exe.sim/work/m_00000000000193114523_3666345988.didat");
	xsi_register_executes(pe);
}
