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
static const char *ng0 = "D:/CO/CO_pre/pccheck.v";
static unsigned int ng1[] = {12288U, 0U};
static unsigned int ng2[] = {20479U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {0, 0};



static void Cont_25_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t10[8];
    char t25[8];
    char t29[8];
    char t37[8];
    char t81[8];
    char t82[8];
    char t83[8];
    char t94[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
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
    char *t109;
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

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB4:    t8 = (t2 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t5) < *((unsigned int *)t2))
        goto LAB6;

LAB7:    memset(t10, 0, 8);
    t11 = (t6 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (~(t12));
    t14 = *((unsigned int *)t6);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t11) != 0)
        goto LAB11;

LAB12:    t18 = (t10 + 4);
    t19 = *((unsigned int *)t10);
    t20 = (!(t19));
    t21 = *((unsigned int *)t18);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB13;

LAB14:    memcpy(t37, t10, 8);

LAB15:    memset(t4, 0, 8);
    t65 = (t37 + 4);
    t66 = *((unsigned int *)t65);
    t67 = (~(t66));
    t68 = *((unsigned int *)t37);
    t69 = (t68 & t67);
    t70 = (t69 & 1U);
    if (t70 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t65) != 0)
        goto LAB30;

LAB31:    t72 = (t4 + 4);
    t73 = *((unsigned int *)t4);
    t74 = *((unsigned int *)t72);
    t75 = (t73 || t74);
    if (t75 > 0)
        goto LAB32;

LAB33:    t77 = *((unsigned int *)t4);
    t78 = (~(t77));
    t79 = *((unsigned int *)t72);
    t80 = (t78 || t79);
    if (t80 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t72) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t4) > 0)
        goto LAB38;

LAB39:    memcpy(t3, t81, 8);

LAB40:    t127 = (t0 + 2768);
    t128 = (t127 + 56U);
    t129 = *((char **)t128);
    t130 = (t129 + 56U);
    t131 = *((char **)t130);
    memset(t131, 0, 8);
    t132 = 1U;
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
    xsi_driver_vfirst_trans(t127, 0, 0);
    t140 = (t0 + 2688);
    *((int *)t140) = 1;

LAB1:    return;
LAB5:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t10) = 1;
    goto LAB12;

LAB11:    t17 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB12;

LAB13:    t23 = (t0 + 1048U);
    t24 = *((char **)t23);
    t23 = ((char*)((ng2)));
    memset(t25, 0, 8);
    t26 = (t24 + 4);
    if (*((unsigned int *)t26) != 0)
        goto LAB17;

LAB16:    t27 = (t23 + 4);
    if (*((unsigned int *)t27) != 0)
        goto LAB17;

LAB20:    if (*((unsigned int *)t24) > *((unsigned int *)t23))
        goto LAB18;

LAB19:    memset(t29, 0, 8);
    t30 = (t25 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (~(t31));
    t33 = *((unsigned int *)t25);
    t34 = (t33 & t32);
    t35 = (t34 & 1U);
    if (t35 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t30) != 0)
        goto LAB23;

LAB24:    t38 = *((unsigned int *)t10);
    t39 = *((unsigned int *)t29);
    t40 = (t38 | t39);
    *((unsigned int *)t37) = t40;
    t41 = (t10 + 4);
    t42 = (t29 + 4);
    t43 = (t37 + 4);
    t44 = *((unsigned int *)t41);
    t45 = *((unsigned int *)t42);
    t46 = (t44 | t45);
    *((unsigned int *)t43) = t46;
    t47 = *((unsigned int *)t43);
    t48 = (t47 != 0);
    if (t48 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB15;

LAB17:    t28 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB19;

LAB18:    *((unsigned int *)t25) = 1;
    goto LAB19;

LAB21:    *((unsigned int *)t29) = 1;
    goto LAB24;

LAB23:    t36 = (t29 + 4);
    *((unsigned int *)t29) = 1;
    *((unsigned int *)t36) = 1;
    goto LAB24;

LAB25:    t49 = *((unsigned int *)t37);
    t50 = *((unsigned int *)t43);
    *((unsigned int *)t37) = (t49 | t50);
    t51 = (t10 + 4);
    t52 = (t29 + 4);
    t53 = *((unsigned int *)t51);
    t54 = (~(t53));
    t55 = *((unsigned int *)t10);
    t56 = (t55 & t54);
    t57 = *((unsigned int *)t52);
    t58 = (~(t57));
    t59 = *((unsigned int *)t29);
    t60 = (t59 & t58);
    t61 = (~(t56));
    t62 = (~(t60));
    t63 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t63 & t61);
    t64 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t64 & t62);
    goto LAB27;

LAB28:    *((unsigned int *)t4) = 1;
    goto LAB31;

LAB30:    t71 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t71) = 1;
    goto LAB31;

LAB32:    t76 = ((char*)((ng3)));
    goto LAB33;

LAB34:    t84 = (t0 + 1048U);
    t85 = *((char **)t84);
    memset(t83, 0, 8);
    t84 = (t83 + 4);
    t86 = (t85 + 4);
    t87 = *((unsigned int *)t85);
    t88 = (t87 >> 0);
    *((unsigned int *)t83) = t88;
    t89 = *((unsigned int *)t86);
    t90 = (t89 >> 0);
    *((unsigned int *)t84) = t90;
    t91 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t91 & 3U);
    t92 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t92 & 3U);
    t93 = ((char*)((ng4)));
    memset(t94, 0, 8);
    t95 = (t83 + 4);
    t96 = (t93 + 4);
    t97 = *((unsigned int *)t83);
    t98 = *((unsigned int *)t93);
    t99 = (t97 ^ t98);
    t100 = *((unsigned int *)t95);
    t101 = *((unsigned int *)t96);
    t102 = (t100 ^ t101);
    t103 = (t99 | t102);
    t104 = *((unsigned int *)t95);
    t105 = *((unsigned int *)t96);
    t106 = (t104 | t105);
    t107 = (~(t106));
    t108 = (t103 & t107);
    if (t108 != 0)
        goto LAB44;

LAB41:    if (t106 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t94) = 1;

LAB44:    memset(t82, 0, 8);
    t110 = (t94 + 4);
    t111 = *((unsigned int *)t110);
    t112 = (~(t111));
    t113 = *((unsigned int *)t94);
    t114 = (t113 & t112);
    t115 = (t114 & 1U);
    if (t115 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t110) != 0)
        goto LAB47;

LAB48:    t117 = (t82 + 4);
    t118 = *((unsigned int *)t82);
    t119 = *((unsigned int *)t117);
    t120 = (t118 || t119);
    if (t120 > 0)
        goto LAB49;

LAB50:    t122 = *((unsigned int *)t82);
    t123 = (~(t122));
    t124 = *((unsigned int *)t117);
    t125 = (t123 || t124);
    if (t125 > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t117) > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t82) > 0)
        goto LAB55;

LAB56:    memcpy(t81, t126, 8);

LAB57:    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t3, 32, t76, 32, t81, 32);
    goto LAB40;

LAB38:    memcpy(t3, t76, 8);
    goto LAB40;

LAB43:    t109 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t109) = 1;
    goto LAB44;

LAB45:    *((unsigned int *)t82) = 1;
    goto LAB48;

LAB47:    t116 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t116) = 1;
    goto LAB48;

LAB49:    t121 = ((char*)((ng5)));
    goto LAB50;

LAB51:    t126 = ((char*)((ng3)));
    goto LAB52;

LAB53:    xsi_vlog_unsigned_bit_combine(t81, 32, t121, 32, t126, 32);
    goto LAB57;

LAB55:    memcpy(t81, t121, 8);
    goto LAB57;

}


extern void work_m_00000000004241584443_1560528991_init()
{
	static char *pe[] = {(void *)Cont_25_0};
	xsi_register_didat("work_m_00000000004241584443_1560528991", "isim/tb_cpu_checker_isim_beh.exe.sim/work/m_00000000004241584443_1560528991.didat");
	xsi_register_executes(pe);
}
