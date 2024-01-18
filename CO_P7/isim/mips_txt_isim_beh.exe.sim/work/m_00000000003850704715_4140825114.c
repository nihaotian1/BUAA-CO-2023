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
static const char *ng0 = "D:/CO/CO_P7/BE.v";
static int ng1[] = {4, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {15U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {12U, 0U};
static unsigned int ng7[] = {2U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {8U, 0U};



static void NetDecl_32_0(char *t0)
{
    char t4[8];
    char t22[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;

LAB7:    t12 = (t4 + 4);
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    *((unsigned int *)t4) = t15;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t13) != 0)
        goto LAB9;

LAB8:    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 1U);
    t21 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t21 & 1U);
    t23 = *((unsigned int *)t3);
    t24 = *((unsigned int *)t4);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t26 = (t3 + 4);
    t27 = (t4 + 4);
    t28 = (t22 + 4);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 | t30);
    *((unsigned int *)t28) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 != 0);
    if (t33 == 1)
        goto LAB10;

LAB11:
LAB12:    t54 = (t0 + 4416);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memset(t58, 0, 8);
    t59 = 1U;
    t60 = t59;
    t61 = (t22 + 4);
    t62 = *((unsigned int *)t22);
    t59 = (t59 & t62);
    t63 = *((unsigned int *)t61);
    t60 = (t60 & t63);
    t64 = (t58 + 4);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t65 | t59);
    t66 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t66 | t60);
    xsi_driver_vfirst_trans(t54, 0, 0U);
    t67 = (t0 + 4304);
    *((int *)t67) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB9:    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t13);
    *((unsigned int *)t4) = (t16 | t17);
    t18 = *((unsigned int *)t12);
    t19 = *((unsigned int *)t13);
    *((unsigned int *)t12) = (t18 | t19);
    goto LAB8;

LAB10:    t34 = *((unsigned int *)t22);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t22) = (t34 | t35);
    t36 = (t3 + 4);
    t37 = (t4 + 4);
    t38 = *((unsigned int *)t3);
    t39 = (~(t38));
    t40 = *((unsigned int *)t36);
    t41 = (~(t40));
    t42 = *((unsigned int *)t4);
    t43 = (~(t42));
    t44 = *((unsigned int *)t37);
    t45 = (~(t44));
    t46 = (t39 & t41);
    t47 = (t43 & t45);
    t48 = (~(t46));
    t49 = (~(t47));
    t50 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t50 & t48);
    t51 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t51 & t49);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    t53 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t53 & t49);
    goto LAB12;

}

static void NetDecl_33_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
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

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    xsi_vlog_mul_concat(t3, 4, 1, t2, 1U, t5, 1);
    t4 = (t0 + 4480);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t3 + 4);
    t13 = *((unsigned int *)t3);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t4, 0, 3U);
    t18 = (t0 + 4320);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_35_2(char *t0)
{
    char t6[8];
    char t29[8];
    char t61[8];
    char t65[8];
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
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 4336);
    *((int *)t2) = 1;
    t3 = (t0 + 4016);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1688U);
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

LAB11:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1688U);
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
        goto LAB20;

LAB17:    if (t16 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t6) = 1;

LAB20:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng7)));
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
        goto LAB43;

LAB40:    if (t16 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t6) = 1;

LAB43:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB44;

LAB45:
LAB46:
LAB23:
LAB12:    goto LAB2;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(38, ng0);

LAB13:    xsi_set_current_line(39, ng0);
    t26 = ((char*)((ng3)));
    t27 = (t0 + 2008U);
    t28 = *((char **)t27);
    t30 = *((unsigned int *)t26);
    t31 = *((unsigned int *)t28);
    t32 = (t30 & t31);
    *((unsigned int *)t29) = t32;
    t27 = (t26 + 4);
    t33 = (t28 + 4);
    t34 = (t29 + 4);
    t35 = *((unsigned int *)t27);
    t36 = *((unsigned int *)t33);
    t37 = (t35 | t36);
    *((unsigned int *)t34) = t37;
    t38 = *((unsigned int *)t34);
    t39 = (t38 != 0);
    if (t39 == 1)
        goto LAB14;

LAB15:
LAB16:    t60 = (t0 + 2568);
    xsi_vlogvar_assign_value(t60, t29, 0, 0, 4);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    goto LAB12;

LAB14:    t40 = *((unsigned int *)t29);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t29) = (t40 | t41);
    t42 = (t26 + 4);
    t43 = (t28 + 4);
    t44 = *((unsigned int *)t26);
    t45 = (~(t44));
    t46 = *((unsigned int *)t42);
    t47 = (~(t46));
    t48 = *((unsigned int *)t28);
    t49 = (~(t48));
    t50 = *((unsigned int *)t43);
    t51 = (~(t50));
    t52 = (t45 & t47);
    t53 = (t49 & t51);
    t54 = (~(t52));
    t55 = (~(t53));
    t56 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t56 & t54);
    t57 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t57 & t55);
    t58 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t58 & t54);
    t59 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t59 & t55);
    goto LAB16;

LAB19:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(42, ng0);

LAB24:    xsi_set_current_line(43, ng0);
    t26 = (t0 + 1368U);
    t27 = *((char **)t26);
    memset(t29, 0, 8);
    t26 = (t29 + 4);
    t28 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 1);
    t32 = (t31 & 1);
    *((unsigned int *)t29) = t32;
    t35 = *((unsigned int *)t28);
    t36 = (t35 >> 1);
    t37 = (t36 & 1);
    *((unsigned int *)t26) = t37;
    t33 = ((char*)((ng2)));
    memset(t61, 0, 8);
    t34 = (t29 + 4);
    t42 = (t33 + 4);
    t38 = *((unsigned int *)t29);
    t39 = *((unsigned int *)t33);
    t40 = (t38 ^ t39);
    t41 = *((unsigned int *)t34);
    t44 = *((unsigned int *)t42);
    t45 = (t41 ^ t44);
    t46 = (t40 | t45);
    t47 = *((unsigned int *)t34);
    t48 = *((unsigned int *)t42);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB28;

LAB25:    if (t49 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t61) = 1;

LAB28:    t60 = (t61 + 4);
    t54 = *((unsigned int *)t60);
    t55 = (~(t54));
    t56 = *((unsigned int *)t61);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(47, ng0);

LAB36:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t7 = *((unsigned int *)t2);
    t8 = *((unsigned int *)t4);
    t9 = (t7 & t8);
    *((unsigned int *)t6) = t9;
    t3 = (t2 + 4);
    t5 = (t4 + 4);
    t19 = (t6 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t5);
    t12 = (t10 | t11);
    *((unsigned int *)t19) = t12;
    t13 = *((unsigned int *)t19);
    t14 = (t13 != 0);
    if (t14 == 1)
        goto LAB37;

LAB38:
LAB39:    t27 = (t0 + 2568);
    xsi_vlogvar_assign_value(t27, t6, 0, 0, 4);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t29, 0, 8);
    t3 = (t29 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t29) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t11 & 65535U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 65535U);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t29, 16, t2, 16);
    t19 = (t0 + 2408);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 32);

LAB31:    goto LAB23;

LAB27:    t43 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(43, ng0);

LAB32:    xsi_set_current_line(44, ng0);
    t62 = ((char*)((ng5)));
    t63 = (t0 + 2008U);
    t64 = *((char **)t63);
    t59 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t64);
    t67 = (t59 & t66);
    *((unsigned int *)t65) = t67;
    t63 = (t62 + 4);
    t68 = (t64 + 4);
    t69 = (t65 + 4);
    t70 = *((unsigned int *)t63);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB33;

LAB34:
LAB35:    t93 = (t0 + 2568);
    xsi_vlogvar_assign_value(t93, t65, 0, 0, 4);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t29, 0, 8);
    t2 = (t29 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t29) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t11 & 65535U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 65535U);
    t5 = ((char*)((ng2)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t5, 16, t29, 16);
    t19 = (t0 + 2408);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 32);
    goto LAB31;

LAB33:    t75 = *((unsigned int *)t65);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t65) = (t75 | t76);
    t77 = (t62 + 4);
    t78 = (t64 + 4);
    t79 = *((unsigned int *)t62);
    t80 = (~(t79));
    t81 = *((unsigned int *)t77);
    t82 = (~(t81));
    t83 = *((unsigned int *)t64);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (~(t85));
    t52 = (t80 & t82);
    t53 = (t84 & t86);
    t87 = (~(t52));
    t88 = (~(t53));
    t89 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t89 & t87);
    t90 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t90 & t88);
    t91 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t91 & t87);
    t92 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t92 & t88);
    goto LAB35;

LAB37:    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t19);
    *((unsigned int *)t6) = (t15 | t16);
    t20 = (t2 + 4);
    t26 = (t4 + 4);
    t17 = *((unsigned int *)t2);
    t18 = (~(t17));
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t25 = *((unsigned int *)t26);
    t30 = (~(t25));
    t52 = (t18 & t22);
    t53 = (t24 & t30);
    t31 = (~(t52));
    t32 = (~(t53));
    t35 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t35 & t31);
    t36 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t36 & t32);
    t37 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t37 & t31);
    t38 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t38 & t32);
    goto LAB39;

LAB42:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(52, ng0);

LAB47:    xsi_set_current_line(53, ng0);
    t26 = (t0 + 1368U);
    t27 = *((char **)t26);
    memset(t29, 0, 8);
    t26 = (t29 + 4);
    t28 = (t27 + 4);
    t30 = *((unsigned int *)t27);
    t31 = (t30 >> 0);
    *((unsigned int *)t29) = t31;
    t32 = *((unsigned int *)t28);
    t35 = (t32 >> 0);
    *((unsigned int *)t26) = t35;
    t36 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t36 & 3U);
    t37 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t37 & 3U);
    t33 = ((char*)((ng2)));
    memset(t61, 0, 8);
    t34 = (t29 + 4);
    t42 = (t33 + 4);
    t38 = *((unsigned int *)t29);
    t39 = *((unsigned int *)t33);
    t40 = (t38 ^ t39);
    t41 = *((unsigned int *)t34);
    t44 = *((unsigned int *)t42);
    t45 = (t41 ^ t44);
    t46 = (t40 | t45);
    t47 = *((unsigned int *)t34);
    t48 = *((unsigned int *)t42);
    t49 = (t47 | t48);
    t50 = (~(t49));
    t51 = (t46 & t50);
    if (t51 != 0)
        goto LAB51;

LAB48:    if (t49 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t61) = 1;

LAB51:    t60 = (t61 + 4);
    t54 = *((unsigned int *)t60);
    t55 = (~(t54));
    t56 = *((unsigned int *)t61);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 3U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 3U);
    t5 = ((char*)((ng4)));
    memset(t29, 0, 8);
    t19 = (t6 + 4);
    t20 = (t5 + 4);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 ^ t17);
    t21 = (t15 | t18);
    t22 = *((unsigned int *)t19);
    t23 = *((unsigned int *)t20);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t30 = (t21 & t25);
    if (t30 != 0)
        goto LAB62;

LAB59:    if (t24 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t29) = 1;

LAB62:    t27 = (t29 + 4);
    t31 = *((unsigned int *)t27);
    t32 = (~(t31));
    t35 = *((unsigned int *)t29);
    t36 = (t35 & t32);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 3U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 3U);
    t5 = ((char*)((ng7)));
    memset(t29, 0, 8);
    t19 = (t6 + 4);
    t20 = (t5 + 4);
    t13 = *((unsigned int *)t6);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 ^ t17);
    t21 = (t15 | t18);
    t22 = *((unsigned int *)t19);
    t23 = *((unsigned int *)t20);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t30 = (t21 & t25);
    if (t30 != 0)
        goto LAB73;

LAB70:    if (t24 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t29) = 1;

LAB73:    t27 = (t29 + 4);
    t31 = *((unsigned int *)t27);
    t32 = (~(t31));
    t35 = *((unsigned int *)t29);
    t36 = (t35 & t32);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB74;

LAB75:    xsi_set_current_line(65, ng0);

LAB81:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t7 = *((unsigned int *)t2);
    t8 = *((unsigned int *)t4);
    t9 = (t7 & t8);
    *((unsigned int *)t6) = t9;
    t3 = (t2 + 4);
    t5 = (t4 + 4);
    t19 = (t6 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t5);
    t12 = (t10 | t11);
    *((unsigned int *)t19) = t12;
    t13 = *((unsigned int *)t19);
    t14 = (t13 != 0);
    if (t14 == 1)
        goto LAB82;

LAB83:
LAB84:    t27 = (t0 + 2568);
    xsi_vlogvar_assign_value(t27, t6, 0, 0, 4);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t29, 0, 8);
    t3 = (t29 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t29) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t11 & 255U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 255U);
    xsi_vlogtype_concat(t6, 32, 32, 2U, t29, 8, t2, 24);
    t19 = (t0 + 2408);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 32);

LAB76:
LAB65:
LAB54:    goto LAB46;

LAB50:    t43 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t43) = 1;
    goto LAB51;

LAB52:    xsi_set_current_line(53, ng0);

LAB55:    xsi_set_current_line(54, ng0);
    t62 = ((char*)((ng4)));
    t63 = (t0 + 2008U);
    t64 = *((char **)t63);
    t59 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t64);
    t67 = (t59 & t66);
    *((unsigned int *)t65) = t67;
    t63 = (t62 + 4);
    t68 = (t64 + 4);
    t69 = (t65 + 4);
    t70 = *((unsigned int *)t63);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB56;

LAB57:
LAB58:    t93 = (t0 + 2568);
    xsi_vlogvar_assign_value(t93, t65, 0, 0, 4);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t29, 0, 8);
    t2 = (t29 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 0);
    *((unsigned int *)t29) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t11 & 255U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 255U);
    t5 = ((char*)((ng2)));
    xsi_vlogtype_concat(t6, 32, 32, 2U, t5, 24, t29, 8);
    t19 = (t0 + 2408);
    xsi_vlogvar_assign_value(t19, t6, 0, 0, 32);
    goto LAB54;

LAB56:    t75 = *((unsigned int *)t65);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t65) = (t75 | t76);
    t77 = (t62 + 4);
    t78 = (t64 + 4);
    t79 = *((unsigned int *)t62);
    t80 = (~(t79));
    t81 = *((unsigned int *)t77);
    t82 = (~(t81));
    t83 = *((unsigned int *)t64);
    t84 = (~(t83));
    t85 = *((unsigned int *)t78);
    t86 = (~(t85));
    t52 = (t80 & t82);
    t53 = (t84 & t86);
    t87 = (~(t52));
    t88 = (~(t53));
    t89 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t89 & t87);
    t90 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t90 & t88);
    t91 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t91 & t87);
    t92 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t92 & t88);
    goto LAB58;

LAB61:    t26 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB62;

LAB63:    xsi_set_current_line(57, ng0);

LAB66:    xsi_set_current_line(58, ng0);
    t28 = ((char*)((ng7)));
    t33 = (t0 + 2008U);
    t34 = *((char **)t33);
    t38 = *((unsigned int *)t28);
    t39 = *((unsigned int *)t34);
    t40 = (t38 & t39);
    *((unsigned int *)t61) = t40;
    t33 = (t28 + 4);
    t42 = (t34 + 4);
    t43 = (t61 + 4);
    t41 = *((unsigned int *)t33);
    t44 = *((unsigned int *)t42);
    t45 = (t41 | t44);
    *((unsigned int *)t43) = t45;
    t46 = *((unsigned int *)t43);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB67;

LAB68:
LAB69:    t63 = (t0 + 2568);
    xsi_vlogvar_assign_value(t63, t61, 0, 0, 4);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t29, 0, 8);
    t3 = (t29 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t29) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t11 & 255U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t6, 32, 32, 3U, t19, 16, t29, 8, t2, 8);
    t20 = (t0 + 2408);
    xsi_vlogvar_assign_value(t20, t6, 0, 0, 32);
    goto LAB65;

LAB67:    t48 = *((unsigned int *)t61);
    t49 = *((unsigned int *)t43);
    *((unsigned int *)t61) = (t48 | t49);
    t60 = (t28 + 4);
    t62 = (t34 + 4);
    t50 = *((unsigned int *)t28);
    t51 = (~(t50));
    t54 = *((unsigned int *)t60);
    t55 = (~(t54));
    t56 = *((unsigned int *)t34);
    t57 = (~(t56));
    t58 = *((unsigned int *)t62);
    t59 = (~(t58));
    t52 = (t51 & t55);
    t53 = (t57 & t59);
    t66 = (~(t52));
    t67 = (~(t53));
    t70 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t70 & t66);
    t71 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t71 & t67);
    t72 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t72 & t66);
    t73 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t73 & t67);
    goto LAB69;

LAB72:    t26 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB73;

LAB74:    xsi_set_current_line(61, ng0);

LAB77:    xsi_set_current_line(62, ng0);
    t28 = ((char*)((ng8)));
    t33 = (t0 + 2008U);
    t34 = *((char **)t33);
    t38 = *((unsigned int *)t28);
    t39 = *((unsigned int *)t34);
    t40 = (t38 & t39);
    *((unsigned int *)t61) = t40;
    t33 = (t28 + 4);
    t42 = (t34 + 4);
    t43 = (t61 + 4);
    t41 = *((unsigned int *)t33);
    t44 = *((unsigned int *)t42);
    t45 = (t41 | t44);
    *((unsigned int *)t43) = t45;
    t46 = *((unsigned int *)t43);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB78;

LAB79:
LAB80:    t63 = (t0 + 2568);
    xsi_vlogvar_assign_value(t63, t61, 0, 0, 4);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1528U);
    t4 = *((char **)t3);
    memset(t29, 0, 8);
    t3 = (t29 + 4);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t29) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    *((unsigned int *)t3) = t10;
    t11 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t11 & 255U);
    t12 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t12 & 255U);
    t19 = ((char*)((ng2)));
    xsi_vlogtype_concat(t6, 32, 32, 3U, t19, 8, t29, 8, t2, 16);
    t20 = (t0 + 2408);
    xsi_vlogvar_assign_value(t20, t6, 0, 0, 32);
    goto LAB76;

LAB78:    t48 = *((unsigned int *)t61);
    t49 = *((unsigned int *)t43);
    *((unsigned int *)t61) = (t48 | t49);
    t60 = (t28 + 4);
    t62 = (t34 + 4);
    t50 = *((unsigned int *)t28);
    t51 = (~(t50));
    t54 = *((unsigned int *)t60);
    t55 = (~(t54));
    t56 = *((unsigned int *)t34);
    t57 = (~(t56));
    t58 = *((unsigned int *)t62);
    t59 = (~(t58));
    t52 = (t51 & t55);
    t53 = (t57 & t59);
    t66 = (~(t52));
    t67 = (~(t53));
    t70 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t70 & t66);
    t71 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t71 & t67);
    t72 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t72 & t66);
    t73 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t73 & t67);
    goto LAB80;

LAB82:    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t19);
    *((unsigned int *)t6) = (t15 | t16);
    t20 = (t2 + 4);
    t26 = (t4 + 4);
    t17 = *((unsigned int *)t2);
    t18 = (~(t17));
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (~(t23));
    t25 = *((unsigned int *)t26);
    t30 = (~(t25));
    t52 = (t18 & t22);
    t53 = (t24 & t30);
    t31 = (~(t52));
    t32 = (~(t53));
    t35 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t35 & t31);
    t36 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t36 & t32);
    t37 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t37 & t31);
    t38 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t38 & t32);
    goto LAB84;

}


extern void work_m_00000000003850704715_4140825114_init()
{
	static char *pe[] = {(void *)NetDecl_32_0,(void *)NetDecl_33_1,(void *)Always_35_2};
	xsi_register_didat("work_m_00000000003850704715_4140825114", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000003850704715_4140825114.didat");
	xsi_register_executes(pe);
}
