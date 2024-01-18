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
static const char *ng0 = "D:/CO/CO_pre/ishex.v";
static int ng1[] = {48, 0};
static int ng2[] = {57, 0};
static int ng3[] = {1, 0};
static int ng4[] = {97, 0};
static int ng5[] = {102, 0};
static int ng6[] = {0, 0};



static void Cont_25_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t10[8];
    char t24[8];
    char t28[8];
    char t36[8];
    char t84[8];
    char t85[8];
    char t88[8];
    char t92[8];
    char t106[8];
    char t110[8];
    char t118[8];
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
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    int t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t86;
    char *t87;
    char *t89;
    char *t90;
    char *t91;
    char *t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    char *t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    char *t107;
    char *t108;
    char *t109;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    char *t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    int t142;
    int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    char *t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    char *t156;
    char *t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    char *t167;
    char *t168;
    char *t169;
    char *t170;
    char *t171;
    unsigned int t172;
    unsigned int t173;
    char *t174;
    unsigned int t175;
    unsigned int t176;
    char *t177;
    unsigned int t178;
    unsigned int t179;
    char *t180;

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
        goto LAB7;

LAB6:    *((unsigned int *)t6) = 1;

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
    t20 = *((unsigned int *)t18);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB13;

LAB14:    memcpy(t36, t10, 8);

LAB15:    memset(t4, 0, 8);
    t68 = (t36 + 4);
    t69 = *((unsigned int *)t68);
    t70 = (~(t69));
    t71 = *((unsigned int *)t36);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t68) != 0)
        goto LAB30;

LAB31:    t75 = (t4 + 4);
    t76 = *((unsigned int *)t4);
    t77 = *((unsigned int *)t75);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB32;

LAB33:    t80 = *((unsigned int *)t4);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t75) > 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t4) > 0)
        goto LAB38;

LAB39:    memcpy(t3, t84, 8);

LAB40:    t167 = (t0 + 2768);
    t168 = (t167 + 56U);
    t169 = *((char **)t168);
    t170 = (t169 + 56U);
    t171 = *((char **)t170);
    memset(t171, 0, 8);
    t172 = 1U;
    t173 = t172;
    t174 = (t3 + 4);
    t175 = *((unsigned int *)t3);
    t172 = (t172 & t175);
    t176 = *((unsigned int *)t174);
    t173 = (t173 & t176);
    t177 = (t171 + 4);
    t178 = *((unsigned int *)t171);
    *((unsigned int *)t171) = (t178 | t172);
    t179 = *((unsigned int *)t177);
    *((unsigned int *)t177) = (t179 | t173);
    xsi_driver_vfirst_trans(t167, 0, 0);
    t180 = (t0 + 2688);
    *((int *)t180) = 1;

LAB1:    return;
LAB5:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t10) = 1;
    goto LAB12;

LAB11:    t17 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB12;

LAB13:    t22 = (t0 + 1048U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng2)));
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    if (*((unsigned int *)t25) != 0)
        goto LAB17;

LAB16:    t26 = (t22 + 4);
    if (*((unsigned int *)t26) != 0)
        goto LAB17;

LAB20:    if (*((unsigned int *)t23) > *((unsigned int *)t22))
        goto LAB19;

LAB18:    *((unsigned int *)t24) = 1;

LAB19:    memset(t28, 0, 8);
    t29 = (t24 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t24);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t29) != 0)
        goto LAB23;

LAB24:    t37 = *((unsigned int *)t10);
    t38 = *((unsigned int *)t28);
    t39 = (t37 & t38);
    *((unsigned int *)t36) = t39;
    t40 = (t10 + 4);
    t41 = (t28 + 4);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t40);
    t44 = *((unsigned int *)t41);
    t45 = (t43 | t44);
    *((unsigned int *)t42) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB25;

LAB26:
LAB27:    goto LAB15;

LAB17:    t27 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB19;

LAB21:    *((unsigned int *)t28) = 1;
    goto LAB24;

LAB23:    t35 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB24;

LAB25:    t48 = *((unsigned int *)t36);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t36) = (t48 | t49);
    t50 = (t10 + 4);
    t51 = (t28 + 4);
    t52 = *((unsigned int *)t10);
    t53 = (~(t52));
    t54 = *((unsigned int *)t50);
    t55 = (~(t54));
    t56 = *((unsigned int *)t28);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (~(t58));
    t60 = (t53 & t55);
    t61 = (t57 & t59);
    t62 = (~(t60));
    t63 = (~(t61));
    t64 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t64 & t62);
    t65 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t65 & t63);
    t66 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t66 & t62);
    t67 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t67 & t63);
    goto LAB27;

LAB28:    *((unsigned int *)t4) = 1;
    goto LAB31;

LAB30:    t74 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t74) = 1;
    goto LAB31;

LAB32:    t79 = ((char*)((ng3)));
    goto LAB33;

LAB34:    t86 = (t0 + 1048U);
    t87 = *((char **)t86);
    t86 = ((char*)((ng4)));
    memset(t88, 0, 8);
    t89 = (t87 + 4);
    if (*((unsigned int *)t89) != 0)
        goto LAB42;

LAB41:    t90 = (t86 + 4);
    if (*((unsigned int *)t90) != 0)
        goto LAB42;

LAB45:    if (*((unsigned int *)t87) < *((unsigned int *)t86))
        goto LAB44;

LAB43:    *((unsigned int *)t88) = 1;

LAB44:    memset(t92, 0, 8);
    t93 = (t88 + 4);
    t94 = *((unsigned int *)t93);
    t95 = (~(t94));
    t96 = *((unsigned int *)t88);
    t97 = (t96 & t95);
    t98 = (t97 & 1U);
    if (t98 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t93) != 0)
        goto LAB48;

LAB49:    t100 = (t92 + 4);
    t101 = *((unsigned int *)t92);
    t102 = *((unsigned int *)t100);
    t103 = (t101 || t102);
    if (t103 > 0)
        goto LAB50;

LAB51:    memcpy(t118, t92, 8);

LAB52:    memset(t85, 0, 8);
    t150 = (t118 + 4);
    t151 = *((unsigned int *)t150);
    t152 = (~(t151));
    t153 = *((unsigned int *)t118);
    t154 = (t153 & t152);
    t155 = (t154 & 1U);
    if (t155 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t150) != 0)
        goto LAB67;

LAB68:    t157 = (t85 + 4);
    t158 = *((unsigned int *)t85);
    t159 = *((unsigned int *)t157);
    t160 = (t158 || t159);
    if (t160 > 0)
        goto LAB69;

LAB70:    t162 = *((unsigned int *)t85);
    t163 = (~(t162));
    t164 = *((unsigned int *)t157);
    t165 = (t163 || t164);
    if (t165 > 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t157) > 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t85) > 0)
        goto LAB75;

LAB76:    memcpy(t84, t166, 8);

LAB77:    goto LAB35;

LAB36:    xsi_vlog_unsigned_bit_combine(t3, 32, t79, 32, t84, 32);
    goto LAB40;

LAB38:    memcpy(t3, t79, 8);
    goto LAB40;

LAB42:    t91 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t91) = 1;
    goto LAB44;

LAB46:    *((unsigned int *)t92) = 1;
    goto LAB49;

LAB48:    t99 = (t92 + 4);
    *((unsigned int *)t92) = 1;
    *((unsigned int *)t99) = 1;
    goto LAB49;

LAB50:    t104 = (t0 + 1048U);
    t105 = *((char **)t104);
    t104 = ((char*)((ng5)));
    memset(t106, 0, 8);
    t107 = (t105 + 4);
    if (*((unsigned int *)t107) != 0)
        goto LAB54;

LAB53:    t108 = (t104 + 4);
    if (*((unsigned int *)t108) != 0)
        goto LAB54;

LAB57:    if (*((unsigned int *)t105) > *((unsigned int *)t104))
        goto LAB56;

LAB55:    *((unsigned int *)t106) = 1;

LAB56:    memset(t110, 0, 8);
    t111 = (t106 + 4);
    t112 = *((unsigned int *)t111);
    t113 = (~(t112));
    t114 = *((unsigned int *)t106);
    t115 = (t114 & t113);
    t116 = (t115 & 1U);
    if (t116 != 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t111) != 0)
        goto LAB60;

LAB61:    t119 = *((unsigned int *)t92);
    t120 = *((unsigned int *)t110);
    t121 = (t119 & t120);
    *((unsigned int *)t118) = t121;
    t122 = (t92 + 4);
    t123 = (t110 + 4);
    t124 = (t118 + 4);
    t125 = *((unsigned int *)t122);
    t126 = *((unsigned int *)t123);
    t127 = (t125 | t126);
    *((unsigned int *)t124) = t127;
    t128 = *((unsigned int *)t124);
    t129 = (t128 != 0);
    if (t129 == 1)
        goto LAB62;

LAB63:
LAB64:    goto LAB52;

LAB54:    t109 = (t106 + 4);
    *((unsigned int *)t106) = 1;
    *((unsigned int *)t109) = 1;
    goto LAB56;

LAB58:    *((unsigned int *)t110) = 1;
    goto LAB61;

LAB60:    t117 = (t110 + 4);
    *((unsigned int *)t110) = 1;
    *((unsigned int *)t117) = 1;
    goto LAB61;

LAB62:    t130 = *((unsigned int *)t118);
    t131 = *((unsigned int *)t124);
    *((unsigned int *)t118) = (t130 | t131);
    t132 = (t92 + 4);
    t133 = (t110 + 4);
    t134 = *((unsigned int *)t92);
    t135 = (~(t134));
    t136 = *((unsigned int *)t132);
    t137 = (~(t136));
    t138 = *((unsigned int *)t110);
    t139 = (~(t138));
    t140 = *((unsigned int *)t133);
    t141 = (~(t140));
    t142 = (t135 & t137);
    t143 = (t139 & t141);
    t144 = (~(t142));
    t145 = (~(t143));
    t146 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t146 & t144);
    t147 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t147 & t145);
    t148 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t148 & t144);
    t149 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t149 & t145);
    goto LAB64;

LAB65:    *((unsigned int *)t85) = 1;
    goto LAB68;

LAB67:    t156 = (t85 + 4);
    *((unsigned int *)t85) = 1;
    *((unsigned int *)t156) = 1;
    goto LAB68;

LAB69:    t161 = ((char*)((ng3)));
    goto LAB70;

LAB71:    t166 = ((char*)((ng6)));
    goto LAB72;

LAB73:    xsi_vlog_unsigned_bit_combine(t84, 32, t161, 32, t166, 32);
    goto LAB77;

LAB75:    memcpy(t84, t161, 8);
    goto LAB77;

}


extern void work_m_00000000003808768733_0634939722_init()
{
	static char *pe[] = {(void *)Cont_25_0};
	xsi_register_didat("work_m_00000000003808768733_0634939722", "isim/tb_cpu_checker_isim_beh.exe.sim/work/m_00000000003808768733_0634939722.didat");
	xsi_register_executes(pe);
}
