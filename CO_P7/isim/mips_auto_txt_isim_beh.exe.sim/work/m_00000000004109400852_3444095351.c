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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/CO/CO_P7/DP.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {16, 0};
static unsigned int ng4[] = {2U, 0U};
static int ng5[] = {24, 0};
static unsigned int ng6[] = {3U, 0U};



static void NetDecl_29_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1368U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 0);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 3U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 3U);
    t12 = (t0 + 3512);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 3U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 1U);
    t25 = (t0 + 3416);
    *((int *)t25) = 1;

LAB1:    return;
}

static void Always_31_1(char *t0)
{
    char t6[8];
    char t28[8];
    char t37[8];
    char t59[8];
    char t60[8];
    char t70[8];
    char t74[8];
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
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
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
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t61;
    char *t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3432);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1048U);
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

LAB11:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
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
        goto LAB17;

LAB14:    if (t16 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
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
        goto LAB32;

LAB29:    if (t16 != 0)
        goto LAB31;

LAB30:    *((unsigned int *)t6) = 1;

LAB32:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB33;

LAB34:
LAB35:
LAB20:
LAB12:    goto LAB2;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(33, ng0);

LAB13:    xsi_set_current_line(34, ng0);
    t26 = (t0 + 1208U);
    t27 = *((char **)t26);
    t26 = (t0 + 1928);
    xsi_vlogvar_assign_value(t26, t27, 0, 0, 32);
    goto LAB12;

LAB16:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(36, ng0);

LAB21:    xsi_set_current_line(37, ng0);
    t26 = (t0 + 1528U);
    t27 = *((char **)t26);
    memset(t28, 0, 8);
    t26 = (t28 + 4);
    t29 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 1);
    t32 = (t31 & 1);
    *((unsigned int *)t28) = t32;
    t33 = *((unsigned int *)t29);
    t34 = (t33 >> 1);
    t35 = (t34 & 1);
    *((unsigned int *)t26) = t35;
    t36 = ((char*)((ng1)));
    memset(t37, 0, 8);
    t38 = (t28 + 4);
    t39 = (t36 + 4);
    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t36);
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
        goto LAB25;

LAB22:    if (t49 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t37) = 1;

LAB25:    t53 = (t37 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t37);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t28, 0, 8);
    t2 = (t28 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 16);
    *((unsigned int *)t28) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 16);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t11 & 65535U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 65535U);
    t5 = ((char*)((ng3)));
    t19 = (t0 + 1208U);
    t20 = *((char **)t19);
    memset(t59, 0, 8);
    t19 = (t59 + 4);
    t26 = (t20 + 4);
    t13 = *((unsigned int *)t20);
    t14 = (t13 >> 31);
    t15 = (t14 & 1);
    *((unsigned int *)t59) = t15;
    t16 = *((unsigned int *)t26);
    t17 = (t16 >> 31);
    t18 = (t17 & 1);
    *((unsigned int *)t19) = t18;
    xsi_vlog_mul_concat(t37, 16, 1, t5, 1U, t59, 1);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t37, 16, t28, 16);
    t27 = (t0 + 1928);
    xsi_vlogvar_assign_value(t27, t6, 0, 0, 32);

LAB28:    goto LAB20;

LAB24:    t52 = (t37 + 4);
    *((unsigned int *)t37) = 1;
    *((unsigned int *)t52) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(38, ng0);
    t61 = (t0 + 1208U);
    t62 = *((char **)t61);
    memset(t60, 0, 8);
    t61 = (t60 + 4);
    t63 = (t62 + 4);
    t64 = *((unsigned int *)t62);
    t65 = (t64 >> 0);
    *((unsigned int *)t60) = t65;
    t66 = *((unsigned int *)t63);
    t67 = (t66 >> 0);
    *((unsigned int *)t61) = t67;
    t68 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t68 & 65535U);
    t69 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t69 & 65535U);
    t71 = ((char*)((ng3)));
    t72 = (t0 + 1208U);
    t73 = *((char **)t72);
    memset(t74, 0, 8);
    t72 = (t74 + 4);
    t75 = (t73 + 4);
    t76 = *((unsigned int *)t73);
    t77 = (t76 >> 15);
    t78 = (t77 & 1);
    *((unsigned int *)t74) = t78;
    t79 = *((unsigned int *)t75);
    t80 = (t79 >> 15);
    t81 = (t80 & 1);
    *((unsigned int *)t72) = t81;
    xsi_vlog_mul_concat(t70, 16, 1, t71, 1U, t74, 1);
    xsi_vlogtype_concat(t59, 32, 32, 2U, t70, 16, t60, 16);
    t82 = (t0 + 1928);
    xsi_vlogvar_assign_value(t82, t59, 0, 0, 32);
    goto LAB28;

LAB31:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB32;

LAB33:    xsi_set_current_line(42, ng0);

LAB36:    xsi_set_current_line(43, ng0);
    t26 = (t0 + 1528U);
    t27 = *((char **)t26);
    t26 = ((char*)((ng1)));
    memset(t28, 0, 8);
    t29 = (t27 + 4);
    t36 = (t26 + 4);
    t30 = *((unsigned int *)t27);
    t31 = *((unsigned int *)t26);
    t32 = (t30 ^ t31);
    t33 = *((unsigned int *)t29);
    t34 = *((unsigned int *)t36);
    t35 = (t33 ^ t34);
    t40 = (t32 | t35);
    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t36);
    t43 = (t41 | t42);
    t44 = (~(t43));
    t45 = (t40 & t44);
    if (t45 != 0)
        goto LAB40;

LAB37:    if (t43 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t28) = 1;

LAB40:    t39 = (t28 + 4);
    t46 = *((unsigned int *)t39);
    t47 = (~(t46));
    t48 = *((unsigned int *)t28);
    t49 = (t48 & t47);
    t50 = (t49 != 0);
    if (t50 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
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
        goto LAB47;

LAB44:    if (t16 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t6) = 1;

LAB47:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
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
        goto LAB54;

LAB51:    if (t16 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t6) = 1;

LAB54:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
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
        goto LAB61;

LAB58:    if (t16 != 0)
        goto LAB60;

LAB59:    *((unsigned int *)t6) = 1;

LAB61:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB62;

LAB63:
LAB64:
LAB57:
LAB50:
LAB43:    goto LAB35;

LAB39:    t38 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t38) = 1;
    goto LAB40;

LAB41:    xsi_set_current_line(44, ng0);
    t52 = (t0 + 1208U);
    t53 = *((char **)t52);
    memset(t59, 0, 8);
    t52 = (t59 + 4);
    t61 = (t53 + 4);
    t51 = *((unsigned int *)t53);
    t54 = (t51 >> 0);
    *((unsigned int *)t59) = t54;
    t55 = *((unsigned int *)t61);
    t56 = (t55 >> 0);
    *((unsigned int *)t52) = t56;
    t57 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t57 & 255U);
    t58 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t58 & 255U);
    t62 = ((char*)((ng5)));
    t63 = (t0 + 1208U);
    t71 = *((char **)t63);
    memset(t70, 0, 8);
    t63 = (t70 + 4);
    t72 = (t71 + 4);
    t64 = *((unsigned int *)t71);
    t65 = (t64 >> 7);
    t66 = (t65 & 1);
    *((unsigned int *)t70) = t66;
    t67 = *((unsigned int *)t72);
    t68 = (t67 >> 7);
    t69 = (t68 & 1);
    *((unsigned int *)t63) = t69;
    xsi_vlog_mul_concat(t60, 24, 1, t62, 1U, t70, 1);
    xsi_vlogtype_concat(t37, 32, 32, 2U, t60, 24, t59, 8);
    t73 = (t0 + 1928);
    xsi_vlogvar_assign_value(t73, t37, 0, 0, 32);
    goto LAB43;

LAB46:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB47;

LAB48:    xsi_set_current_line(46, ng0);
    t26 = (t0 + 1208U);
    t27 = *((char **)t26);
    memset(t37, 0, 8);
    t26 = (t37 + 4);
    t29 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 8);
    *((unsigned int *)t37) = t31;
    t32 = *((unsigned int *)t29);
    t33 = (t32 >> 8);
    *((unsigned int *)t26) = t33;
    t34 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t34 & 255U);
    t35 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t35 & 255U);
    t36 = ((char*)((ng5)));
    t38 = (t0 + 1208U);
    t39 = *((char **)t38);
    memset(t60, 0, 8);
    t38 = (t60 + 4);
    t52 = (t39 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (t40 >> 15);
    t42 = (t41 & 1);
    *((unsigned int *)t60) = t42;
    t43 = *((unsigned int *)t52);
    t44 = (t43 >> 15);
    t45 = (t44 & 1);
    *((unsigned int *)t38) = t45;
    xsi_vlog_mul_concat(t59, 24, 1, t36, 1U, t60, 1);
    xsi_vlogtype_concat(t28, 32, 32, 2U, t59, 24, t37, 8);
    t53 = (t0 + 1928);
    xsi_vlogvar_assign_value(t53, t28, 0, 0, 32);
    goto LAB50;

LAB53:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(48, ng0);
    t26 = (t0 + 1208U);
    t27 = *((char **)t26);
    memset(t37, 0, 8);
    t26 = (t37 + 4);
    t29 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 16);
    *((unsigned int *)t37) = t31;
    t32 = *((unsigned int *)t29);
    t33 = (t32 >> 16);
    *((unsigned int *)t26) = t33;
    t34 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t34 & 255U);
    t35 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t35 & 255U);
    t36 = ((char*)((ng5)));
    t38 = (t0 + 1208U);
    t39 = *((char **)t38);
    memset(t60, 0, 8);
    t38 = (t60 + 4);
    t52 = (t39 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (t40 >> 23);
    t42 = (t41 & 1);
    *((unsigned int *)t60) = t42;
    t43 = *((unsigned int *)t52);
    t44 = (t43 >> 23);
    t45 = (t44 & 1);
    *((unsigned int *)t38) = t45;
    xsi_vlog_mul_concat(t59, 24, 1, t36, 1U, t60, 1);
    xsi_vlogtype_concat(t28, 32, 32, 2U, t59, 24, t37, 8);
    t53 = (t0 + 1928);
    xsi_vlogvar_assign_value(t53, t28, 0, 0, 32);
    goto LAB57;

LAB60:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB61;

LAB62:    xsi_set_current_line(50, ng0);
    t26 = (t0 + 1208U);
    t27 = *((char **)t26);
    memset(t37, 0, 8);
    t26 = (t37 + 4);
    t29 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 24);
    *((unsigned int *)t37) = t31;
    t32 = *((unsigned int *)t29);
    t33 = (t32 >> 24);
    *((unsigned int *)t26) = t33;
    t34 = *((unsigned int *)t37);
    *((unsigned int *)t37) = (t34 & 255U);
    t35 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t35 & 255U);
    t36 = ((char*)((ng5)));
    t38 = (t0 + 1208U);
    t39 = *((char **)t38);
    memset(t60, 0, 8);
    t38 = (t60 + 4);
    t52 = (t39 + 4);
    t40 = *((unsigned int *)t39);
    t41 = (t40 >> 31);
    t42 = (t41 & 1);
    *((unsigned int *)t60) = t42;
    t43 = *((unsigned int *)t52);
    t44 = (t43 >> 31);
    t45 = (t44 & 1);
    *((unsigned int *)t38) = t45;
    xsi_vlog_mul_concat(t59, 24, 1, t36, 1U, t60, 1);
    xsi_vlogtype_concat(t28, 32, 32, 2U, t59, 24, t37, 8);
    t53 = (t0 + 1928);
    xsi_vlogvar_assign_value(t53, t28, 0, 0, 32);
    goto LAB64;

}


extern void work_m_00000000004109400852_3444095351_init()
{
	static char *pe[] = {(void *)NetDecl_29_0,(void *)Always_31_1};
	xsi_register_didat("work_m_00000000004109400852_3444095351", "isim/mips_auto_txt_isim_beh.exe.sim/work/m_00000000004109400852_3444095351.didat");
	xsi_register_executes(pe);
}
