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
static const char *ng0 = "D:/CO/CO_P7/NPC.v";
static unsigned int ng1[] = {12288U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {4, 0};
static unsigned int ng4[] = {1U, 0U};
static int ng5[] = {14, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {16768U, 0U};
static unsigned int ng10[] = {28671U, 0U};



static void Initial_36_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(36, ng0);

LAB2:    xsi_set_current_line(37, ng0);
    t1 = ((char*)((ng1)));
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

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 5280);
    *((int *)t2) = 1;
    t3 = (t0 + 4248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:
LAB18:
LAB17:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB19:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1048U);
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

LAB7:    xsi_set_current_line(43, ng0);
    t7 = (t0 + 2008U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng3)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t8, 32, t7, 32);
    t10 = (t0 + 3048);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    goto LAB19;

LAB9:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    t7 = (t0 + 1368U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng5)));
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

LAB11:    xsi_set_current_line(49, ng0);
    t3 = ((char*)((ng2)));
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

LAB13:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1688U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB19;

LAB15:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 32);
    goto LAB19;

LAB20:    xsi_set_current_line(62, ng0);
    t4 = ((char*)((ng9)));
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

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3048);
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

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
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

static void Cont_68_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t15[8];
    char t47[8];
    char t48[8];
    char t51[8];
    char t55[8];
    char t70[8];
    char t74[8];
    char t82[8];
    char *t1;
    char *t2;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
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
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t71;
    char *t72;
    char *t73;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    char *t86;
    char *t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    char *t127;
    char *t128;
    char *t129;
    char *t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;

LAB0:    t1 = (t0 + 4960U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2008U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t5 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t5) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t12 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t12 & 3U);
    t13 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t13 & 3U);
    t14 = ((char*)((ng2)));
    memset(t15, 0, 8);
    t16 = (t5 + 4);
    t17 = (t14 + 4);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t14);
    t20 = (t18 ^ t19);
    t21 = *((unsigned int *)t16);
    t22 = *((unsigned int *)t17);
    t23 = (t21 ^ t22);
    t24 = (t20 | t23);
    t25 = *((unsigned int *)t16);
    t26 = *((unsigned int *)t17);
    t27 = (t25 | t26);
    t28 = (~(t27));
    t29 = (t24 & t28);
    if (t29 != 0)
        goto LAB5;

LAB4:    if (t27 != 0)
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t31 = (t15 + 4);
    t32 = *((unsigned int *)t31);
    t33 = (~(t32));
    t34 = *((unsigned int *)t15);
    t35 = (t34 & t33);
    t36 = (t35 & 1U);
    if (t36 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t31) != 0)
        goto LAB10;

LAB11:    t38 = (t4 + 4);
    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t38);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB12;

LAB13:    t43 = *((unsigned int *)t4);
    t44 = (~(t43));
    t45 = *((unsigned int *)t38);
    t46 = (t44 || t45);
    if (t46 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t38) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t47, 8);

LAB20:    t127 = (t0 + 5536);
    t128 = (t127 + 56U);
    t129 = *((char **)t128);
    t130 = (t129 + 56U);
    t131 = *((char **)t130);
    memset(t131, 0, 8);
    t132 = 31U;
    t133 = t132;
    t134 = (t3 + 4);
    t135 = *((unsigned int *)t3);
    t132 = (t132 & t135);
    t136 = *((unsigned int *)t134);
    t133 = (t133 & t136);
    t137 = (t131 + 4);
    t138 = *((unsigned int *)t131);
    *((unsigned int *)t131) = (t138 | t132);
    t139 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t139 | t133);
    xsi_driver_vfirst_trans(t127, 0, 4);
    t140 = (t0 + 5328);
    *((int *)t140) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t15) = 1;
    goto LAB7;

LAB6:    t30 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t37 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB11;

LAB12:    t42 = ((char*)((ng8)));
    goto LAB13;

LAB14:    t49 = (t0 + 2008U);
    t50 = *((char **)t49);
    t49 = ((char*)((ng1)));
    memset(t51, 0, 8);
    t52 = (t50 + 4);
    if (*((unsigned int *)t52) != 0)
        goto LAB22;

LAB21:    t53 = (t49 + 4);
    if (*((unsigned int *)t53) != 0)
        goto LAB22;

LAB25:    if (*((unsigned int *)t50) < *((unsigned int *)t49))
        goto LAB23;

LAB24:    memset(t55, 0, 8);
    t56 = (t51 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t51);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t56) != 0)
        goto LAB28;

LAB29:    t63 = (t55 + 4);
    t64 = *((unsigned int *)t55);
    t65 = (!(t64));
    t66 = *((unsigned int *)t63);
    t67 = (t65 || t66);
    if (t67 > 0)
        goto LAB30;

LAB31:    memcpy(t82, t55, 8);

LAB32:    memset(t48, 0, 8);
    t110 = (t82 + 4);
    t111 = *((unsigned int *)t110);
    t112 = (~(t111));
    t113 = *((unsigned int *)t82);
    t114 = (t113 & t112);
    t115 = (t114 & 1U);
    if (t115 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t110) != 0)
        goto LAB47;

LAB48:    t117 = (t48 + 4);
    t118 = *((unsigned int *)t48);
    t119 = *((unsigned int *)t117);
    t120 = (t118 || t119);
    if (t120 > 0)
        goto LAB49;

LAB50:    t122 = *((unsigned int *)t48);
    t123 = (~(t122));
    t124 = *((unsigned int *)t117);
    t125 = (t123 || t124);
    if (t125 > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t117) > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t48) > 0)
        goto LAB55;

LAB56:    memcpy(t47, t126, 8);

LAB57:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 5, t42, 5, t47, 5);
    goto LAB20;

LAB18:    memcpy(t3, t42, 8);
    goto LAB20;

LAB22:    t54 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB24;

LAB23:    *((unsigned int *)t51) = 1;
    goto LAB24;

LAB26:    *((unsigned int *)t55) = 1;
    goto LAB29;

LAB28:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB29;

LAB30:    t68 = (t0 + 2008U);
    t69 = *((char **)t68);
    t68 = ((char*)((ng10)));
    memset(t70, 0, 8);
    t71 = (t69 + 4);
    if (*((unsigned int *)t71) != 0)
        goto LAB34;

LAB33:    t72 = (t68 + 4);
    if (*((unsigned int *)t72) != 0)
        goto LAB34;

LAB37:    if (*((unsigned int *)t69) > *((unsigned int *)t68))
        goto LAB35;

LAB36:    memset(t74, 0, 8);
    t75 = (t70 + 4);
    t76 = *((unsigned int *)t75);
    t77 = (~(t76));
    t78 = *((unsigned int *)t70);
    t79 = (t78 & t77);
    t80 = (t79 & 1U);
    if (t80 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t75) != 0)
        goto LAB40;

LAB41:    t83 = *((unsigned int *)t55);
    t84 = *((unsigned int *)t74);
    t85 = (t83 | t84);
    *((unsigned int *)t82) = t85;
    t86 = (t55 + 4);
    t87 = (t74 + 4);
    t88 = (t82 + 4);
    t89 = *((unsigned int *)t86);
    t90 = *((unsigned int *)t87);
    t91 = (t89 | t90);
    *((unsigned int *)t88) = t91;
    t92 = *((unsigned int *)t88);
    t93 = (t92 != 0);
    if (t93 == 1)
        goto LAB42;

LAB43:
LAB44:    goto LAB32;

LAB34:    t73 = (t70 + 4);
    *((unsigned int *)t70) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB36;

LAB35:    *((unsigned int *)t70) = 1;
    goto LAB36;

LAB38:    *((unsigned int *)t74) = 1;
    goto LAB41;

LAB40:    t81 = (t74 + 4);
    *((unsigned int *)t74) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB41;

LAB42:    t94 = *((unsigned int *)t82);
    t95 = *((unsigned int *)t88);
    *((unsigned int *)t82) = (t94 | t95);
    t96 = (t55 + 4);
    t97 = (t74 + 4);
    t98 = *((unsigned int *)t96);
    t99 = (~(t98));
    t100 = *((unsigned int *)t55);
    t101 = (t100 & t99);
    t102 = *((unsigned int *)t97);
    t103 = (~(t102));
    t104 = *((unsigned int *)t74);
    t105 = (t104 & t103);
    t106 = (~(t101));
    t107 = (~(t105));
    t108 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t108 & t106);
    t109 = *((unsigned int *)t88);
    *((unsigned int *)t88) = (t109 & t107);
    goto LAB44;

LAB45:    *((unsigned int *)t48) = 1;
    goto LAB48;

LAB47:    t116 = (t48 + 4);
    *((unsigned int *)t48) = 1;
    *((unsigned int *)t116) = 1;
    goto LAB48;

LAB49:    t121 = ((char*)((ng8)));
    goto LAB50;

LAB51:    t126 = ((char*)((ng2)));
    goto LAB52;

LAB53:    xsi_vlog_unsigned_bit_combine(t47, 5, t121, 5, t126, 5);
    goto LAB57;

LAB55:    memcpy(t47, t121, 8);
    goto LAB57;

}


extern void work_m_00000000000207560542_0757879789_init()
{
	static char *pe[] = {(void *)Initial_36_0,(void *)Always_40_1,(void *)Cont_65_2,(void *)Cont_66_3,(void *)Cont_68_4};
	xsi_register_didat("work_m_00000000000207560542_0757879789", "isim/mips_txt_isim_beh.exe.sim/work/m_00000000000207560542_0757879789.didat");
	xsi_register_executes(pe);
}
