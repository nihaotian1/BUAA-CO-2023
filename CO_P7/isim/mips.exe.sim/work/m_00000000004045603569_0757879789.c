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
static unsigned int ng0[] = {12288U, 0U};
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {4, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {14, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {16768U, 0U};
static unsigned int ng9[] = {28671U, 0U};



static void Initial_36_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:
LAB2:    t1 = ((char*)((ng0)));
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}

static void Always_40_1(char *t0)
{
    char t9[8];
    char t11[8];
    char t13[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5280);
    *((int *)t2) = 1;
    t3 = (t0 + 4248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    t2 = ((char*)((ng0)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB19:    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t15 = *((unsigned int *)t2);
    t16 = (~(t15));
    t17 = *((unsigned int *)t3);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB20;

LAB21:
LAB22:    goto LAB2;

LAB7:    t7 = (t0 + 2008U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    t10 = (t0 + 3048);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    goto LAB19;

LAB9:    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng1)));
    t7 = (t0 + 1368U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng4)));
    t10 = (t0 + 1368U);
    t12 = *((char **)t10);
    memset(t13, 0, 8);
    t10 = (t13 + 4);
    t14 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (t15 >> 15);
    t17 = (t16 & 1);
    *((unsigned int *)t13) = t17;
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 15);
    t20 = (t19 & 1);
    *((unsigned int *)t10) = t20;
    xsi_vlog_mul_concat(t11, 14, 1, t7, 1U, t13, 1);
    xsi_vlogtype_concat(t9, 32, 32, 3U, t11, 14, t8, 16, t3, 2);
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t4, 32, t9, 32);
    t22 = (t0 + 3048);
    xsi_vlogvar_assign_value(t22, t21, 0, 0, 32);
    goto LAB19;

LAB11:    t3 = ((char*)((ng1)));
    t4 = (t0 + 1528U);
    t7 = *((char **)t4);
    t4 = (t0 + 2168U);
    t8 = *((char **)t4);
    memset(t11, 0, 8);
    t4 = (t11 + 4);
    t10 = (t8 + 4);
    t15 = *((unsigned int *)t8);
    t16 = (t15 >> 28);
    *((unsigned int *)t11) = t16;
    t17 = *((unsigned int *)t10);
    t18 = (t17 >> 28);
    *((unsigned int *)t4) = t18;
    t19 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t19 & 15U);
    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 15U);
    xsi_vlogtype_concat(t9, 32, 32, 3U, t11, 4, t7, 26, t3, 2);
    t12 = (t0 + 3048);
    xsi_vlogvar_assign_value(t12, t9, 0, 0, 32);
    goto LAB19;

LAB13:    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB19;

LAB15:    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB19;

LAB20:    t4 = ((char*)((ng8)));
    t7 = (t0 + 3048);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 32);
    goto LAB22;

}

static void Cont_65_2(char *t0)
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
    char *t10;

LAB0:    t1 = (t0 + 4464U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5408);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5296);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_66_3(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t3, 32, t2, 32);
    t5 = (t0 + 5472);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5312);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_67_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t17[8];
    char t49[8];
    char t50[8];
    char t55[8];
    char t59[8];
    char t76[8];
    char t80[8];
    char t88[8];
    char *t1;
    char *t2;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t77;
    char *t78;
    char *t79;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    char *t102;
    char *t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3048);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    memset(t5, 0, 8);
    t8 = (t5 + 4);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t9);
    t13 = (t12 >> 0);
    *((unsigned int *)t8) = t13;
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 3U);
    t15 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t15 & 3U);
    t16 = ((char*)((ng1)));
    memset(t17, 0, 8);
    t18 = (t5 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t5);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB5;

LAB4:    if (t29 != 0)
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t33 = (t17 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 & 1U);
    if (t38 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t33) != 0)
        goto LAB10;

LAB11:    t40 = (t4 + 4);
    t41 = *((unsigned int *)t4);
    t42 = *((unsigned int *)t40);
    t43 = (t41 || t42);
    if (t43 > 0)
        goto LAB12;

LAB13:    t45 = *((unsigned int *)t4);
    t46 = (~(t45));
    t47 = *((unsigned int *)t40);
    t48 = (t46 || t47);
    if (t48 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t40) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t49, 8);

LAB20:    t133 = (t0 + 5536);
    t134 = (t133 + 56U);
    t135 = *((char **)t134);
    t136 = (t135 + 56U);
    t137 = *((char **)t136);
    memset(t137, 0, 8);
    t138 = 1U;
    t139 = t138;
    t140 = (t3 + 4);
    t141 = *((unsigned int *)t3);
    t138 = (t138 & t141);
    t142 = *((unsigned int *)t140);
    t139 = (t139 & t142);
    t143 = (t137 + 4);
    t144 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t144 | t138);
    t145 = *((unsigned int *)t143);
    *((unsigned int *)t143) = (t145 | t139);
    xsi_driver_vfirst_trans(t133, 0, 0);
    t146 = (t0 + 5328);
    *((int *)t146) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t17) = 1;
    goto LAB7;

LAB6:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t39 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB11;

LAB12:    t44 = ((char*)((ng3)));
    goto LAB13;

LAB14:    t51 = (t0 + 3048);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    t54 = ((char*)((ng0)));
    memset(t55, 0, 8);
    t56 = (t53 + 4);
    if (*((unsigned int *)t56) != 0)
        goto LAB22;

LAB21:    t57 = (t54 + 4);
    if (*((unsigned int *)t57) != 0)
        goto LAB22;

LAB25:    if (*((unsigned int *)t53) < *((unsigned int *)t54))
        goto LAB23;

LAB24:    memset(t59, 0, 8);
    t60 = (t55 + 4);
    t61 = *((unsigned int *)t60);
    t62 = (~(t61));
    t63 = *((unsigned int *)t55);
    t64 = (t63 & t62);
    t65 = (t64 & 1U);
    if (t65 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t60) != 0)
        goto LAB28;

LAB29:    t67 = (t59 + 4);
    t68 = *((unsigned int *)t59);
    t69 = (!(t68));
    t70 = *((unsigned int *)t67);
    t71 = (t69 || t70);
    if (t71 > 0)
        goto LAB30;

LAB31:    memcpy(t88, t59, 8);

LAB32:    memset(t50, 0, 8);
    t116 = (t88 + 4);
    t117 = *((unsigned int *)t116);
    t118 = (~(t117));
    t119 = *((unsigned int *)t88);
    t120 = (t119 & t118);
    t121 = (t120 & 1U);
    if (t121 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t116) != 0)
        goto LAB47;

LAB48:    t123 = (t50 + 4);
    t124 = *((unsigned int *)t50);
    t125 = *((unsigned int *)t123);
    t126 = (t124 || t125);
    if (t126 > 0)
        goto LAB49;

LAB50:    t128 = *((unsigned int *)t50);
    t129 = (~(t128));
    t130 = *((unsigned int *)t123);
    t131 = (t129 || t130);
    if (t131 > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t123) > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t50) > 0)
        goto LAB55;

LAB56:    memcpy(t49, t132, 8);

LAB57:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t44, 1, t49, 1);
    goto LAB20;

LAB18:    memcpy(t3, t44, 8);
    goto LAB20;

LAB22:    t58 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t58) = 1;
    goto LAB24;

LAB23:    *((unsigned int *)t55) = 1;
    goto LAB24;

LAB26:    *((unsigned int *)t59) = 1;
    goto LAB29;

LAB28:    t66 = (t59 + 4);
    *((unsigned int *)t59) = 1;
    *((unsigned int *)t66) = 1;
    goto LAB29;

LAB30:    t72 = (t0 + 3048);
    t73 = (t72 + 56U);
    t74 = *((char **)t73);
    t75 = ((char*)((ng9)));
    memset(t76, 0, 8);
    t77 = (t74 + 4);
    if (*((unsigned int *)t77) != 0)
        goto LAB34;

LAB33:    t78 = (t75 + 4);
    if (*((unsigned int *)t78) != 0)
        goto LAB34;

LAB37:    if (*((unsigned int *)t74) > *((unsigned int *)t75))
        goto LAB35;

LAB36:    memset(t80, 0, 8);
    t81 = (t76 + 4);
    t82 = *((unsigned int *)t81);
    t83 = (~(t82));
    t84 = *((unsigned int *)t76);
    t85 = (t84 & t83);
    t86 = (t85 & 1U);
    if (t86 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t81) != 0)
        goto LAB40;

LAB41:    t89 = *((unsigned int *)t59);
    t90 = *((unsigned int *)t80);
    t91 = (t89 | t90);
    *((unsigned int *)t88) = t91;
    t92 = (t59 + 4);
    t93 = (t80 + 4);
    t94 = (t88 + 4);
    t95 = *((unsigned int *)t92);
    t96 = *((unsigned int *)t93);
    t97 = (t95 | t96);
    *((unsigned int *)t94) = t97;
    t98 = *((unsigned int *)t94);
    t99 = (t98 != 0);
    if (t99 == 1)
        goto LAB42;

LAB43:
LAB44:    goto LAB32;

LAB34:    t79 = (t76 + 4);
    *((unsigned int *)t76) = 1;
    *((unsigned int *)t79) = 1;
    goto LAB36;

LAB35:    *((unsigned int *)t76) = 1;
    goto LAB36;

LAB38:    *((unsigned int *)t80) = 1;
    goto LAB41;

LAB40:    t87 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t87) = 1;
    goto LAB41;

LAB42:    t100 = *((unsigned int *)t88);
    t101 = *((unsigned int *)t94);
    *((unsigned int *)t88) = (t100 | t101);
    t102 = (t59 + 4);
    t103 = (t80 + 4);
    t104 = *((unsigned int *)t102);
    t105 = (~(t104));
    t106 = *((unsigned int *)t59);
    t107 = (t106 & t105);
    t108 = *((unsigned int *)t103);
    t109 = (~(t108));
    t110 = *((unsigned int *)t80);
    t111 = (t110 & t109);
    t112 = (~(t107));
    t113 = (~(t111));
    t114 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t114 & t112);
    t115 = *((unsigned int *)t94);
    *((unsigned int *)t94) = (t115 & t113);
    goto LAB44;

LAB45:    *((unsigned int *)t50) = 1;
    goto LAB48;

LAB47:    t122 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t122) = 1;
    goto LAB48;

LAB49:    t127 = ((char*)((ng3)));
    goto LAB50;

LAB51:    t132 = ((char*)((ng1)));
    goto LAB52;

LAB53:    xsi_vlog_unsigned_bit_combine(t49, 1, t127, 1, t132, 1);
    goto LAB57;

LAB55:    memcpy(t49, t127, 8);
    goto LAB57;

}


extern void work_m_00000000004045603569_0757879789_init()
{
	static char *pe[] = {(void *)Initial_36_0,(void *)Always_40_1,(void *)Cont_65_2,(void *)Cont_66_3,(void *)Cont_67_4};
	xsi_register_didat("work_m_00000000004045603569_0757879789", "isim/mips.exe.sim/work/m_00000000004045603569_0757879789.didat");
	xsi_register_executes(pe);
}
