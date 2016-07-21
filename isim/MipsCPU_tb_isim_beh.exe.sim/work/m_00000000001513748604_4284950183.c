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
static const char *ng0 = "C:/MipsCPU/MEM.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {16U, 0U};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {0, 0};
static int ng5[] = {0, 0, 0, 0};
static unsigned int ng6[] = {18U, 0U};
static unsigned int ng7[] = {15U, 0U};
static unsigned int ng8[] = {19U, 0U};
static unsigned int ng9[] = {20U, 0U};
static int ng10[] = {24, 0};
static unsigned int ng11[] = {2U, 0U};
static unsigned int ng12[] = {4U, 0U};
static unsigned int ng13[] = {3U, 0U};
static unsigned int ng14[] = {8U, 0U};
static unsigned int ng15[] = {22U, 0U};
static unsigned int ng16[] = {21U, 0U};
static unsigned int ng17[] = {23U, 0U};
static unsigned int ng18[] = {12U, 0U};
static unsigned int ng19[] = {46U, 0U};
static int ng20[] = {1, 0};



static void Cont_99_0(char *t0)
{
    char t3[24];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 9248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 8328);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 8168);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 8008);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlogtype_concat(t3, 68, 68, 3U, t11, 1, t8, 4, t5, 63);
    t12 = (t0 + 10176);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    xsi_vlog_bit_copy(t16, 0, t3, 0, 68);
    xsi_driver_vfirst_trans(t12, 0, 67);
    t17 = (t0 + 10064);
    *((int *)t17) = 1;

LAB1:    return;
}

static void Always_101_1(char *t0)
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

LAB0:    t1 = (t0 + 9496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 10080);
    *((int *)t2) = 1;
    t3 = (t0 + 9528);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(101, ng0);

LAB5:    xsi_set_current_line(102, ng0);
    t4 = (t0 + 1048U);
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

LAB11:    xsi_set_current_line(106, ng0);

LAB14:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
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

LAB15:    if (t18 != 0)
        goto LAB17;

LAB18:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(111, ng0);

LAB23:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t2 = (t0 + 7368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3608U);
    t3 = *((char **)t2);
    t2 = (t0 + 7528);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 3768U);
    t3 = *((char **)t2);
    t2 = (t0 + 7688);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);

LAB21:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(102, ng0);

LAB13:    xsi_set_current_line(103, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 7368);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 5, 0LL);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB12;

LAB16:    *((unsigned int *)t6) = 1;
    goto LAB18;

LAB17:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(107, ng0);

LAB22:    xsi_set_current_line(108, ng0);
    t21 = (t0 + 3288U);
    t22 = *((char **)t21);
    t21 = (t0 + 7368);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, 0, 5, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3608U);
    t3 = *((char **)t2);
    t2 = (t0 + 7528);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7688);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB21;

}

static void Always_188_2(char *t0)
{
    char t6[8];
    char t31[8];
    char t32[8];
    char t33[8];
    char t34[8];
    char t35[8];
    char t37[8];
    char t41[8];
    char t42[8];
    char t50[16];
    char t51[8];
    char t52[8];
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
    char *t36;
    char *t38;
    unsigned int t39;
    char *t40;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;

LAB0:    t1 = (t0 + 9744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(188, ng0);
    t2 = (t0 + 10096);
    *((int *)t2) = 1;
    t3 = (t0 + 9776);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(188, ng0);

LAB5:    xsi_set_current_line(189, ng0);
    t4 = (t0 + 1048U);
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

LAB11:    xsi_set_current_line(209, ng0);

LAB14:    xsi_set_current_line(210, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    xsi_set_current_line(211, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 5768);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(212, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 5928);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(213, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 6088);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(214, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 6248);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(215, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 6408);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(216, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(217, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(218, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(219, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(220, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5128);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(221, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t0 + 5288);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 5);
    xsi_set_current_line(222, ng0);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    t2 = (t0 + 5448);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(223, ng0);
    t2 = (t0 + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 7848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(224, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(226, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 63, 0LL);
    xsi_set_current_line(227, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng6)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng9)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng15)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng16)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng19)));
    t30 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t30 == 1)
        goto LAB28;

LAB29:
LAB30:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(189, ng0);

LAB13:    xsi_set_current_line(190, ng0);
    t28 = ((char*)((ng3)));
    t29 = (t0 + 5608);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 5);
    xsi_set_current_line(191, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(192, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(193, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(194, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(195, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(197, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6728);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 6888);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8168);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 63, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(228, ng0);

LAB31:    xsi_set_current_line(229, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 7208);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(232, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6728);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(233, ng0);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB32:    t7 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 2);
    if (t30 == 1)
        goto LAB33;

LAB34:
LAB36:
LAB35:    xsi_set_current_line(238, ng0);

LAB39:    xsi_set_current_line(239, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(240, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB37:    goto LAB30;

LAB18:    xsi_set_current_line(244, ng0);

LAB40:    xsi_set_current_line(245, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    xsi_set_current_line(246, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 7208);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(247, ng0);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    t2 = (t0 + 6568);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 32);
    xsi_set_current_line(248, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6728);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(249, ng0);
    t2 = (t0 + 2328U);
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
    *((unsigned int *)t31) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB41:    t7 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t31, 2, t7, 2);
    if (t30 == 1)
        goto LAB42;

LAB43:
LAB45:
LAB44:    xsi_set_current_line(253, ng0);

LAB48:    xsi_set_current_line(254, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB46:    goto LAB30;

LAB20:    xsi_set_current_line(258, ng0);

LAB49:    xsi_set_current_line(259, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 7208);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(261, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6728);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(263, ng0);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t32, 0, 8);
    t2 = (t32 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t32) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB50:    t7 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 2, t7, 2);
    if (t30 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 2, t2, 2);
    if (t30 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 2, t2, 2);
    if (t30 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t32, 2, t2, 2);
    if (t30 == 1)
        goto LAB57;

LAB58:
LAB60:
LAB59:    xsi_set_current_line(280, ng0);

LAB66:    xsi_set_current_line(281, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(282, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB61:    goto LAB30;

LAB22:    xsi_set_current_line(307, ng0);

LAB67:    xsi_set_current_line(308, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    xsi_set_current_line(309, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 7208);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(310, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6728);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(312, ng0);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t33, 0, 8);
    t2 = (t33 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t33) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB68:    t7 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 2, t7, 2);
    if (t30 == 1)
        goto LAB69;

LAB70:    t2 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 2, t2, 2);
    if (t30 == 1)
        goto LAB71;

LAB72:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 2, t2, 2);
    if (t30 == 1)
        goto LAB73;

LAB74:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t33, 2, t2, 2);
    if (t30 == 1)
        goto LAB75;

LAB76:
LAB78:
LAB77:    xsi_set_current_line(329, ng0);

LAB84:    xsi_set_current_line(330, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(331, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB79:    goto LAB30;

LAB24:    xsi_set_current_line(356, ng0);

LAB85:    xsi_set_current_line(357, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    xsi_set_current_line(358, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 7208);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(359, ng0);
    t2 = (t0 + 2488U);
    t4 = *((char **)t2);
    memset(t35, 0, 8);
    t2 = (t35 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t35) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t7 = (t0 + 2488U);
    t8 = *((char **)t7);
    memset(t37, 0, 8);
    t7 = (t37 + 4);
    t21 = (t8 + 4);
    t15 = *((unsigned int *)t8);
    t16 = (t15 >> 0);
    *((unsigned int *)t37) = t16;
    t17 = *((unsigned int *)t21);
    t18 = (t17 >> 0);
    *((unsigned int *)t7) = t18;
    t19 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t19 & 255U);
    t20 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t20 & 255U);
    t22 = (t0 + 2488U);
    t28 = *((char **)t22);
    memset(t41, 0, 8);
    t22 = (t41 + 4);
    t29 = (t28 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (t23 >> 0);
    *((unsigned int *)t41) = t24;
    t25 = *((unsigned int *)t29);
    t26 = (t25 >> 0);
    *((unsigned int *)t22) = t26;
    t27 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t27 & 255U);
    t39 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t39 & 255U);
    t36 = (t0 + 2488U);
    t38 = *((char **)t36);
    memset(t42, 0, 8);
    t36 = (t42 + 4);
    t40 = (t38 + 4);
    t43 = *((unsigned int *)t38);
    t44 = (t43 >> 0);
    *((unsigned int *)t42) = t44;
    t45 = *((unsigned int *)t40);
    t46 = (t45 >> 0);
    *((unsigned int *)t36) = t46;
    t47 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t47 & 255U);
    t48 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t48 & 255U);
    xsi_vlogtype_concat(t34, 32, 32, 4U, t42, 8, t41, 8, t37, 8, t35, 8);
    t49 = (t0 + 6568);
    xsi_vlogvar_assign_value(t49, t34, 0, 0, 32);
    xsi_set_current_line(360, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6728);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(361, ng0);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t34, 0, 8);
    t2 = (t34 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t34) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB86:    t7 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t34, 2, t7, 2);
    if (t30 == 1)
        goto LAB87;

LAB88:    t2 = ((char*)((ng1)));
    t30 = xsi_vlog_unsigned_case_compare(t34, 2, t2, 2);
    if (t30 == 1)
        goto LAB89;

LAB90:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t34, 2, t2, 2);
    if (t30 == 1)
        goto LAB91;

LAB92:    t2 = ((char*)((ng13)));
    t30 = xsi_vlog_unsigned_case_compare(t34, 2, t2, 2);
    if (t30 == 1)
        goto LAB93;

LAB94:
LAB96:
LAB95:    xsi_set_current_line(374, ng0);

LAB102:    xsi_set_current_line(375, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB97:    goto LAB30;

LAB26:    xsi_set_current_line(396, ng0);

LAB103:    xsi_set_current_line(397, ng0);
    t4 = (t0 + 2328U);
    t5 = *((char **)t4);
    t4 = (t0 + 7048);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    xsi_set_current_line(398, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 7208);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(399, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6728);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(401, ng0);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t35, 0, 8);
    t2 = (t35 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t35) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);

LAB104:    t7 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t35, 2, t7, 2);
    if (t30 == 1)
        goto LAB105;

LAB106:    t2 = ((char*)((ng11)));
    t30 = xsi_vlog_unsigned_case_compare(t35, 2, t2, 2);
    if (t30 == 1)
        goto LAB107;

LAB108:
LAB110:
LAB109:    xsi_set_current_line(410, ng0);

LAB114:    xsi_set_current_line(411, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(412, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB111:    goto LAB30;

LAB28:    xsi_set_current_line(428, ng0);

LAB115:    xsi_set_current_line(429, ng0);
    t4 = ((char*)((ng20)));
    t5 = (t0 + 8008);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(430, ng0);
    t2 = (t0 + 4088U);
    t4 = *((char **)t2);
    memset(t37, 0, 8);
    t2 = (t37 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t37) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t13 & 15U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 15U);
    t7 = (t0 + 8168);
    xsi_vlogvar_wait_assign_value(t7, t37, 0, 0, 4, 0LL);
    xsi_set_current_line(431, ng0);
    t2 = (t0 + 4568U);
    t4 = *((char **)t2);
    memset(t37, 0, 8);
    t2 = (t37 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 1);
    *((unsigned int *)t37) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 1);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t13 & 3U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 3U);
    t7 = (t0 + 4568U);
    t8 = *((char **)t7);
    memset(t41, 0, 8);
    t7 = (t41 + 4);
    t21 = (t8 + 4);
    t15 = *((unsigned int *)t8);
    t16 = (t15 >> 6);
    *((unsigned int *)t41) = t16;
    t17 = *((unsigned int *)t21);
    t18 = (t17 >> 6);
    *((unsigned int *)t7) = t18;
    t19 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t19 & 1048575U);
    t20 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t20 & 1048575U);
    t22 = (t0 + 4408U);
    t28 = *((char **)t22);
    memset(t42, 0, 8);
    t22 = (t42 + 4);
    t29 = (t28 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (t23 >> 1);
    *((unsigned int *)t42) = t24;
    t25 = *((unsigned int *)t29);
    t26 = (t25 >> 1);
    *((unsigned int *)t22) = t26;
    t27 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t27 & 3U);
    t39 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t39 & 3U);
    t36 = (t0 + 4408U);
    t38 = *((char **)t36);
    memset(t51, 0, 8);
    t36 = (t51 + 4);
    t40 = (t38 + 4);
    t43 = *((unsigned int *)t38);
    t44 = (t43 >> 6);
    *((unsigned int *)t51) = t44;
    t45 = *((unsigned int *)t40);
    t46 = (t45 >> 6);
    *((unsigned int *)t36) = t46;
    t47 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t47 & 1048575U);
    t48 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t48 & 1048575U);
    t49 = (t0 + 4248U);
    t53 = *((char **)t49);
    memset(t52, 0, 8);
    t49 = (t52 + 4);
    t54 = (t53 + 4);
    t55 = *((unsigned int *)t53);
    t56 = (t55 >> 13);
    *((unsigned int *)t52) = t56;
    t57 = *((unsigned int *)t54);
    t58 = (t57 >> 13);
    *((unsigned int *)t49) = t58;
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t59 & 524287U);
    t60 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t60 & 524287U);
    xsi_vlogtype_concat(t50, 63, 63, 5U, t52, 19, t51, 20, t42, 2, t41, 20, t37, 2);
    t61 = (t0 + 8328);
    xsi_vlogvar_wait_assign_value(t61, t50, 0, 0, 63, 0LL);
    goto LAB30;

LAB33:    xsi_set_current_line(234, ng0);

LAB38:    xsi_set_current_line(235, ng0);
    t8 = (t0 + 2648U);
    t21 = *((char **)t8);
    t8 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t8, t21, 0, 0, 32, 0LL);
    xsi_set_current_line(236, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB37;

LAB42:    xsi_set_current_line(250, ng0);

LAB47:    xsi_set_current_line(251, ng0);
    t8 = ((char*)((ng7)));
    t21 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t21, t8, 0, 0, 4, 0LL);
    goto LAB46;

LAB51:    xsi_set_current_line(264, ng0);

LAB62:    xsi_set_current_line(265, ng0);
    t8 = (t0 + 2648U);
    t21 = *((char **)t8);
    memset(t34, 0, 8);
    t8 = (t34 + 4);
    t22 = (t21 + 4);
    t15 = *((unsigned int *)t21);
    t16 = (t15 >> 0);
    *((unsigned int *)t34) = t16;
    t17 = *((unsigned int *)t22);
    t18 = (t17 >> 0);
    *((unsigned int *)t8) = t18;
    t19 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t19 & 255U);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t20 & 255U);
    t28 = ((char*)((ng10)));
    t29 = (t0 + 2648U);
    t36 = *((char **)t29);
    memset(t37, 0, 8);
    t29 = (t37 + 4);
    t38 = (t36 + 4);
    t23 = *((unsigned int *)t36);
    t24 = (t23 >> 7);
    t25 = (t24 & 1);
    *((unsigned int *)t37) = t25;
    t26 = *((unsigned int *)t38);
    t27 = (t26 >> 7);
    t39 = (t27 & 1);
    *((unsigned int *)t29) = t39;
    xsi_vlog_mul_concat(t35, 24, 1, t28, 1U, t37, 1);
    xsi_vlogtype_concat(t33, 32, 32, 2U, t35, 24, t34, 8);
    t40 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t40, t33, 0, 0, 32, 0LL);
    xsi_set_current_line(266, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB61;

LAB53:    xsi_set_current_line(268, ng0);

LAB63:    xsi_set_current_line(269, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memset(t34, 0, 8);
    t4 = (t34 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 8);
    *((unsigned int *)t34) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 8);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t8 = ((char*)((ng10)));
    t21 = (t0 + 2648U);
    t22 = *((char **)t21);
    memset(t37, 0, 8);
    t21 = (t37 + 4);
    t28 = (t22 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t37) = t17;
    t18 = *((unsigned int *)t28);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t21) = t20;
    xsi_vlog_mul_concat(t35, 24, 1, t8, 1U, t37, 1);
    xsi_vlogtype_concat(t33, 32, 32, 2U, t35, 24, t34, 8);
    t29 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t29, t33, 0, 0, 32, 0LL);
    xsi_set_current_line(270, ng0);
    t2 = ((char*)((ng11)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB61;

LAB55:    xsi_set_current_line(272, ng0);

LAB64:    xsi_set_current_line(273, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memset(t34, 0, 8);
    t4 = (t34 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 16);
    *((unsigned int *)t34) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 16);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t8 = ((char*)((ng10)));
    t21 = (t0 + 2648U);
    t22 = *((char **)t21);
    memset(t37, 0, 8);
    t21 = (t37 + 4);
    t28 = (t22 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (t15 >> 23);
    t17 = (t16 & 1);
    *((unsigned int *)t37) = t17;
    t18 = *((unsigned int *)t28);
    t19 = (t18 >> 23);
    t20 = (t19 & 1);
    *((unsigned int *)t21) = t20;
    xsi_vlog_mul_concat(t35, 24, 1, t8, 1U, t37, 1);
    xsi_vlogtype_concat(t33, 32, 32, 2U, t35, 24, t34, 8);
    t29 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t29, t33, 0, 0, 32, 0LL);
    xsi_set_current_line(274, ng0);
    t2 = ((char*)((ng12)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB61;

LAB57:    xsi_set_current_line(276, ng0);

LAB65:    xsi_set_current_line(277, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memset(t34, 0, 8);
    t4 = (t34 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 24);
    *((unsigned int *)t34) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 24);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t8 = ((char*)((ng10)));
    t21 = (t0 + 2648U);
    t22 = *((char **)t21);
    memset(t37, 0, 8);
    t21 = (t37 + 4);
    t28 = (t22 + 4);
    t15 = *((unsigned int *)t22);
    t16 = (t15 >> 31);
    t17 = (t16 & 1);
    *((unsigned int *)t37) = t17;
    t18 = *((unsigned int *)t28);
    t19 = (t18 >> 31);
    t20 = (t19 & 1);
    *((unsigned int *)t21) = t20;
    xsi_vlog_mul_concat(t35, 24, 1, t8, 1U, t37, 1);
    xsi_vlogtype_concat(t33, 32, 32, 2U, t35, 24, t34, 8);
    t29 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t29, t33, 0, 0, 32, 0LL);
    xsi_set_current_line(278, ng0);
    t2 = ((char*)((ng14)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB61;

LAB69:    xsi_set_current_line(313, ng0);

LAB80:    xsi_set_current_line(314, ng0);
    t8 = (t0 + 2648U);
    t21 = *((char **)t8);
    memset(t35, 0, 8);
    t8 = (t35 + 4);
    t22 = (t21 + 4);
    t15 = *((unsigned int *)t21);
    t16 = (t15 >> 0);
    *((unsigned int *)t35) = t16;
    t17 = *((unsigned int *)t22);
    t18 = (t17 >> 0);
    *((unsigned int *)t8) = t18;
    t19 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t19 & 255U);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t20 & 255U);
    t28 = ((char*)((ng3)));
    xsi_vlogtype_concat(t34, 32, 32, 2U, t28, 24, t35, 8);
    t29 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t29, t34, 0, 0, 32, 0LL);
    xsi_set_current_line(315, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB79;

LAB71:    xsi_set_current_line(317, ng0);

LAB81:    xsi_set_current_line(318, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memset(t35, 0, 8);
    t4 = (t35 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 8);
    *((unsigned int *)t35) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 8);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t8 = ((char*)((ng3)));
    xsi_vlogtype_concat(t34, 32, 32, 2U, t8, 24, t35, 8);
    t21 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t21, t34, 0, 0, 32, 0LL);
    xsi_set_current_line(319, ng0);
    t2 = ((char*)((ng11)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB79;

LAB73:    xsi_set_current_line(321, ng0);

LAB82:    xsi_set_current_line(322, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memset(t35, 0, 8);
    t4 = (t35 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 16);
    *((unsigned int *)t35) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 16);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t8 = ((char*)((ng3)));
    xsi_vlogtype_concat(t34, 32, 32, 2U, t8, 24, t35, 8);
    t21 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t21, t34, 0, 0, 32, 0LL);
    xsi_set_current_line(323, ng0);
    t2 = ((char*)((ng12)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB79;

LAB75:    xsi_set_current_line(325, ng0);

LAB83:    xsi_set_current_line(326, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memset(t35, 0, 8);
    t4 = (t35 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 24);
    *((unsigned int *)t35) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 24);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t13 & 255U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 255U);
    t8 = ((char*)((ng3)));
    xsi_vlogtype_concat(t34, 32, 32, 2U, t8, 24, t35, 8);
    t21 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t21, t34, 0, 0, 32, 0LL);
    xsi_set_current_line(327, ng0);
    t2 = ((char*)((ng14)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB79;

LAB87:    xsi_set_current_line(362, ng0);

LAB98:    xsi_set_current_line(363, ng0);
    t8 = ((char*)((ng1)));
    t21 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t21, t8, 0, 0, 4, 0LL);
    goto LAB97;

LAB89:    xsi_set_current_line(365, ng0);

LAB99:    xsi_set_current_line(366, ng0);
    t4 = ((char*)((ng11)));
    t5 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    goto LAB97;

LAB91:    xsi_set_current_line(368, ng0);

LAB100:    xsi_set_current_line(369, ng0);
    t4 = ((char*)((ng12)));
    t5 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    goto LAB97;

LAB93:    xsi_set_current_line(371, ng0);

LAB101:    xsi_set_current_line(372, ng0);
    t4 = ((char*)((ng14)));
    t5 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    goto LAB97;

LAB105:    xsi_set_current_line(402, ng0);

LAB112:    xsi_set_current_line(403, ng0);
    t8 = (t0 + 2648U);
    t21 = *((char **)t8);
    memset(t41, 0, 8);
    t8 = (t41 + 4);
    t22 = (t21 + 4);
    t15 = *((unsigned int *)t21);
    t16 = (t15 >> 0);
    *((unsigned int *)t41) = t16;
    t17 = *((unsigned int *)t22);
    t18 = (t17 >> 0);
    *((unsigned int *)t8) = t18;
    t19 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t19 & 65535U);
    t20 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t20 & 65535U);
    t28 = ((char*)((ng3)));
    xsi_vlogtype_concat(t37, 32, 32, 2U, t28, 16, t41, 16);
    t29 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t29, t37, 0, 0, 32, 0LL);
    xsi_set_current_line(404, ng0);
    t2 = ((char*)((ng13)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB111;

LAB107:    xsi_set_current_line(406, ng0);

LAB113:    xsi_set_current_line(407, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    memset(t41, 0, 8);
    t4 = (t41 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 16);
    *((unsigned int *)t41) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 16);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t13 & 65535U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 65535U);
    t8 = ((char*)((ng3)));
    xsi_vlogtype_concat(t37, 32, 32, 2U, t8, 16, t41, 16);
    t21 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t21, t37, 0, 0, 32, 0LL);
    xsi_set_current_line(408, ng0);
    t2 = ((char*)((ng18)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);
    goto LAB111;

}


extern void work_m_00000000001513748604_4284950183_init()
{
	static char *pe[] = {(void *)Cont_99_0,(void *)Always_101_1,(void *)Always_188_2};
	xsi_register_didat("work_m_00000000001513748604_4284950183", "isim/MipsCPU_tb_isim_beh.exe.sim/work/m_00000000001513748604_4284950183.didat");
	xsi_register_executes(pe);
}
