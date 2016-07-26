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
static const char *ng0 = "C:/MipsCPU/MEM_WB.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {0U, 0U};



static void Always_55_0(char *t0)
{
    char t6[8];
    char t22[8];
    char t37[8];
    char t53[8];
    char t61[8];
    char t97[8];
    char t98[8];
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
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
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
    char *t114;
    char *t115;

LAB0:    t1 = (t0 + 2640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2836);
    *((int *)t2) = 1;
    t3 = (t0 + 2668);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
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

LAB29:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1336U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 4);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 4);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = ((char*)((ng1)));
    memset(t22, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 ^ t19);
    t24 = (t17 | t20);
    t25 = *((unsigned int *)t7);
    t26 = *((unsigned int *)t8);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t31 = (t24 & t28);
    if (t31 != 0)
        goto LAB35;

LAB32:    if (t27 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t22) = 1;

LAB35:    memset(t37, 0, 8);
    t23 = (t22 + 4);
    t32 = *((unsigned int *)t23);
    t33 = (~(t32));
    t34 = *((unsigned int *)t22);
    t40 = (t34 & t33);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t23) != 0)
        goto LAB38;

LAB39:    t30 = (t37 + 4);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t30);
    t44 = (t42 || t43);
    if (t44 > 0)
        goto LAB40;

LAB41:    memcpy(t98, t37, 8);

LAB42:    t96 = (t98 + 4);
    t109 = *((unsigned int *)t96);
    t110 = (~(t109));
    t111 = *((unsigned int *)t98);
    t112 = (t111 & t110);
    t113 = (t112 != 0);
    if (t113 > 0)
        goto LAB54;

LAB55:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1336U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 4);
    t11 = (t10 & 1);
    *((unsigned int *)t6) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 4);
    t14 = (t13 & 1);
    *((unsigned int *)t2) = t14;
    t5 = ((char*)((ng2)));
    memset(t22, 0, 8);
    t7 = (t6 + 4);
    t8 = (t5 + 4);
    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t5);
    t17 = (t15 ^ t16);
    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t8);
    t20 = (t18 ^ t19);
    t24 = (t17 | t20);
    t25 = *((unsigned int *)t7);
    t26 = *((unsigned int *)t8);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t31 = (t24 & t28);
    if (t31 != 0)
        goto LAB61;

LAB58:    if (t27 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t22) = 1;

LAB61:    t23 = (t22 + 4);
    t32 = *((unsigned int *)t23);
    t33 = (~(t32));
    t34 = *((unsigned int *)t22);
    t40 = (t34 & t33);
    t41 = (t40 != 0);
    if (t41 > 0)
        goto LAB62;

LAB63:
LAB64:
LAB56:
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

LAB14:    t35 = (t0 + 1428U);
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

LAB28:    xsi_set_current_line(56, ng0);

LAB31:    xsi_set_current_line(57, ng0);
    t95 = ((char*)((ng2)));
    t96 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t96, t95, 0, 0, 5, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
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
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB30;

LAB34:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB35;

LAB36:    *((unsigned int *)t37) = 1;
    goto LAB39;

LAB38:    t29 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB39;

LAB40:    t35 = (t0 + 1336U);
    t36 = *((char **)t35);
    memset(t53, 0, 8);
    t35 = (t53 + 4);
    t38 = (t36 + 4);
    t45 = *((unsigned int *)t36);
    t46 = (t45 >> 5);
    t47 = (t46 & 1);
    *((unsigned int *)t53) = t47;
    t48 = *((unsigned int *)t38);
    t49 = (t48 >> 5);
    t50 = (t49 & 1);
    *((unsigned int *)t35) = t50;
    t39 = ((char*)((ng2)));
    memset(t61, 0, 8);
    t52 = (t53 + 4);
    t54 = (t39 + 4);
    t51 = *((unsigned int *)t53);
    t55 = *((unsigned int *)t39);
    t56 = (t51 ^ t55);
    t57 = *((unsigned int *)t52);
    t58 = *((unsigned int *)t54);
    t59 = (t57 ^ t58);
    t62 = (t56 | t59);
    t63 = *((unsigned int *)t52);
    t64 = *((unsigned int *)t54);
    t68 = (t63 | t64);
    t69 = (~(t68));
    t70 = (t62 & t69);
    if (t70 != 0)
        goto LAB46;

LAB43:    if (t68 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t61) = 1;

LAB46:    memset(t97, 0, 8);
    t65 = (t61 + 4);
    t71 = *((unsigned int *)t65);
    t72 = (~(t71));
    t73 = *((unsigned int *)t61);
    t74 = (t73 & t72);
    t77 = (t74 & 1U);
    if (t77 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t65) != 0)
        goto LAB49;

LAB50:    t78 = *((unsigned int *)t37);
    t79 = *((unsigned int *)t97);
    t81 = (t78 & t79);
    *((unsigned int *)t98) = t81;
    t67 = (t37 + 4);
    t75 = (t97 + 4);
    t76 = (t98 + 4);
    t82 = *((unsigned int *)t67);
    t83 = *((unsigned int *)t75);
    t85 = (t82 | t83);
    *((unsigned int *)t76) = t85;
    t86 = *((unsigned int *)t76);
    t87 = (t86 != 0);
    if (t87 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB42;

LAB45:    t60 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB46;

LAB47:    *((unsigned int *)t97) = 1;
    goto LAB50;

LAB49:    t66 = (t97 + 4);
    *((unsigned int *)t97) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB50;

LAB51:    t88 = *((unsigned int *)t98);
    t90 = *((unsigned int *)t76);
    *((unsigned int *)t98) = (t88 | t90);
    t89 = (t37 + 4);
    t95 = (t97 + 4);
    t91 = *((unsigned int *)t37);
    t92 = (~(t91));
    t93 = *((unsigned int *)t89);
    t94 = (~(t93));
    t99 = *((unsigned int *)t97);
    t100 = (~(t99));
    t101 = *((unsigned int *)t95);
    t102 = (~(t101));
    t80 = (t92 & t94);
    t84 = (t100 & t102);
    t103 = (~(t80));
    t104 = (~(t84));
    t105 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t105 & t103);
    t106 = *((unsigned int *)t76);
    *((unsigned int *)t76) = (t106 & t104);
    t107 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t107 & t103);
    t108 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t108 & t104);
    goto LAB53;

LAB54:    xsi_set_current_line(64, ng0);

LAB57:    xsi_set_current_line(65, ng0);
    t114 = ((char*)((ng2)));
    t115 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t115, t114, 0, 0, 5, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1932);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2116);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB56;

LAB60:    t21 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB61;

LAB62:    xsi_set_current_line(72, ng0);

LAB65:    xsi_set_current_line(73, ng0);
    t29 = (t0 + 784U);
    t30 = *((char **)t29);
    t29 = (t0 + 1656);
    xsi_vlogvar_wait_assign_value(t29, t30, 0, 0, 5, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1060U);
    t3 = *((char **)t2);
    t2 = (t0 + 1932);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1152U);
    t3 = *((char **)t2);
    t2 = (t0 + 2024);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1244U);
    t3 = *((char **)t2);
    t2 = (t0 + 2116);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB64;

}


extern void work_m_00000000002714317222_2520395732_init()
{
	static char *pe[] = {(void *)Always_55_0};
	xsi_register_didat("work_m_00000000002714317222_2520395732", "isim/MipsCPU_tb_isim_beh.exe.sim/work/m_00000000002714317222_2520395732.didat");
	xsi_register_executes(pe);
}
