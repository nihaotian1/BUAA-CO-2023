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
static unsigned int ng0[] = {1U, 0U};
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {5U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {10U, 0U};
static int ng7[] = {1, 0};



static void Always_47_0(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t33[8];
    char t72[8];
    char t88[8];
    char t103[8];
    char t119[8];
    char t127[8];
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
    unsigned int t32;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    int t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    char *t87;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    char *t102;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    char *t118;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    char *t161;
    char *t162;

LAB0:    t1 = (t0 + 4928U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5992);
    *((int *)t2) = 1;
    t3 = (t0 + 4960);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng0)));
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

LAB11:    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t2) != 0)
        goto LAB16;

LAB17:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB18;

LAB19:    memcpy(t33, t6, 8);

LAB20:    t64 = (t33 + 4);
    t65 = *((unsigned int *)t64);
    t66 = (~(t65));
    t67 = *((unsigned int *)t33);
    t68 = (t67 & t66);
    t69 = (t68 != 0);
    if (t69 > 0)
        goto LAB32;

LAB33:    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
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
        goto LAB90;

LAB89:    if (t18 != 0)
        goto LAB91;

LAB92:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB93;

LAB94:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
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
        goto LAB109;

LAB106:    if (t18 != 0)
        goto LAB108;

LAB107:    *((unsigned int *)t6) = 1;

LAB109:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB110;

LAB111:    if (*((unsigned int *)t8) != 0)
        goto LAB112;

LAB113:    t22 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t22);
    t35 = (t32 || t34);
    if (t35 > 0)
        goto LAB114;

LAB115:    memcpy(t33, t30, 8);

LAB116:    memset(t72, 0, 8);
    t71 = (t33 + 4);
    t77 = *((unsigned int *)t71);
    t78 = (~(t77));
    t79 = *((unsigned int *)t33);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB124;

LAB125:    if (*((unsigned int *)t71) != 0)
        goto LAB126;

LAB127:    t74 = (t72 + 4);
    t82 = *((unsigned int *)t72);
    t83 = *((unsigned int *)t74);
    t84 = (t82 || t83);
    if (t84 > 0)
        goto LAB128;

LAB129:    memcpy(t119, t72, 8);

LAB130:    t126 = (t119 + 4);
    t137 = *((unsigned int *)t126);
    t138 = (~(t137));
    t139 = *((unsigned int *)t119);
    t140 = (t139 & t138);
    t143 = (t140 != 0);
    if (t143 > 0)
        goto LAB142;

LAB143:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
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
        goto LAB149;

LAB146:    if (t18 != 0)
        goto LAB148;

LAB147:    *((unsigned int *)t6) = 1;

LAB149:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB150;

LAB151:    if (*((unsigned int *)t8) != 0)
        goto LAB152;

LAB153:    t22 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t22);
    t35 = (t32 || t34);
    if (t35 > 0)
        goto LAB154;

LAB155:    memcpy(t33, t30, 8);

LAB156:    memset(t72, 0, 8);
    t71 = (t33 + 4);
    t77 = *((unsigned int *)t71);
    t78 = (~(t77));
    t79 = *((unsigned int *)t33);
    t80 = (t79 & t78);
    t81 = (t80 & 1U);
    if (t81 != 0)
        goto LAB164;

LAB165:    if (*((unsigned int *)t71) != 0)
        goto LAB166;

LAB167:    t74 = (t72 + 4);
    t82 = *((unsigned int *)t72);
    t83 = *((unsigned int *)t74);
    t84 = (t82 || t83);
    if (t84 > 0)
        goto LAB168;

LAB169:    memcpy(t119, t72, 8);

LAB170:    t126 = (t119 + 4);
    t137 = *((unsigned int *)t126);
    t138 = (~(t137));
    t139 = *((unsigned int *)t119);
    t140 = (t139 & t138);
    t143 = (t140 != 0);
    if (t143 > 0)
        goto LAB182;

LAB183:
LAB186:    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);

LAB184:
LAB144:
LAB95:
LAB34:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:
LAB13:    t28 = ((char*)((ng1)));
    t29 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    goto LAB12;

LAB14:    *((unsigned int *)t6) = 1;
    goto LAB17;

LAB16:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB17;

LAB18:    t7 = (t0 + 1368U);
    t8 = *((char **)t7);
    memset(t30, 0, 8);
    t7 = (t8 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t8);
    t20 = (t19 & t18);
    t23 = (t20 & 1U);
    if (t23 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t7) == 0)
        goto LAB21;

LAB23:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;

LAB24:    memset(t31, 0, 8);
    t22 = (t30 + 4);
    t24 = *((unsigned int *)t22);
    t25 = (~(t24));
    t26 = *((unsigned int *)t30);
    t27 = (t26 & t25);
    t32 = (t27 & 1U);
    if (t32 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t22) != 0)
        goto LAB27;

LAB28:    t34 = *((unsigned int *)t6);
    t35 = *((unsigned int *)t31);
    t36 = (t34 & t35);
    *((unsigned int *)t33) = t36;
    t29 = (t6 + 4);
    t37 = (t31 + 4);
    t38 = (t33 + 4);
    t39 = *((unsigned int *)t29);
    t40 = *((unsigned int *)t37);
    t41 = (t39 | t40);
    *((unsigned int *)t38) = t41;
    t42 = *((unsigned int *)t38);
    t43 = (t42 != 0);
    if (t43 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB20;

LAB21:    *((unsigned int *)t30) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t31) = 1;
    goto LAB28;

LAB27:    t28 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB28;

LAB29:    t44 = *((unsigned int *)t33);
    t45 = *((unsigned int *)t38);
    *((unsigned int *)t33) = (t44 | t45);
    t46 = (t6 + 4);
    t47 = (t31 + 4);
    t48 = *((unsigned int *)t6);
    t49 = (~(t48));
    t50 = *((unsigned int *)t46);
    t51 = (~(t50));
    t52 = *((unsigned int *)t31);
    t53 = (~(t52));
    t54 = *((unsigned int *)t47);
    t55 = (~(t54));
    t56 = (t49 & t51);
    t57 = (t53 & t55);
    t58 = (~(t56));
    t59 = (~(t57));
    t60 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t60 & t58);
    t61 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t61 & t59);
    t62 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t62 & t58);
    t63 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t63 & t59);
    goto LAB31;

LAB32:
LAB35:    t70 = (t0 + 1688U);
    t71 = *((char **)t70);
    t70 = ((char*)((ng2)));
    memset(t72, 0, 8);
    t73 = (t71 + 4);
    t74 = (t70 + 4);
    t75 = *((unsigned int *)t71);
    t76 = *((unsigned int *)t70);
    t77 = (t75 ^ t76);
    t78 = *((unsigned int *)t73);
    t79 = *((unsigned int *)t74);
    t80 = (t78 ^ t79);
    t81 = (t77 | t80);
    t82 = *((unsigned int *)t73);
    t83 = *((unsigned int *)t74);
    t84 = (t82 | t83);
    t85 = (~(t84));
    t86 = (t81 & t85);
    if (t86 != 0)
        goto LAB39;

LAB36:    if (t84 != 0)
        goto LAB38;

LAB37:    *((unsigned int *)t72) = 1;

LAB39:    memset(t88, 0, 8);
    t89 = (t72 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t72);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t89) != 0)
        goto LAB42;

LAB43:    t96 = (t88 + 4);
    t97 = *((unsigned int *)t88);
    t98 = (!(t97));
    t99 = *((unsigned int *)t96);
    t100 = (t98 || t99);
    if (t100 > 0)
        goto LAB44;

LAB45:    memcpy(t127, t88, 8);

LAB46:    t155 = (t127 + 4);
    t156 = *((unsigned int *)t155);
    t157 = (~(t156));
    t158 = *((unsigned int *)t127);
    t159 = (t158 & t157);
    t160 = (t159 != 0);
    if (t160 > 0)
        goto LAB58;

LAB59:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
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
        goto LAB65;

LAB62:    if (t18 != 0)
        goto LAB64;

LAB63:    *((unsigned int *)t6) = 1;

LAB65:    memset(t30, 0, 8);
    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB66;

LAB67:    if (*((unsigned int *)t8) != 0)
        goto LAB68;

LAB69:    t22 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t34 = (!(t32));
    t35 = *((unsigned int *)t22);
    t36 = (t34 || t35);
    if (t36 > 0)
        goto LAB70;

LAB71:    memcpy(t72, t30, 8);

LAB72:    t89 = (t72 + 4);
    t86 = *((unsigned int *)t89);
    t90 = (~(t86));
    t91 = *((unsigned int *)t72);
    t92 = (t91 & t90);
    t93 = (t92 != 0);
    if (t93 > 0)
        goto LAB84;

LAB85:
LAB88:    t2 = ((char*)((ng1)));
    t3 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB86:
LAB60:    goto LAB34;

LAB38:    t87 = (t72 + 4);
    *((unsigned int *)t72) = 1;
    *((unsigned int *)t87) = 1;
    goto LAB39;

LAB40:    *((unsigned int *)t88) = 1;
    goto LAB43;

LAB42:    t95 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB43;

LAB44:    t101 = (t0 + 1688U);
    t102 = *((char **)t101);
    t101 = ((char*)((ng3)));
    memset(t103, 0, 8);
    t104 = (t102 + 4);
    t105 = (t101 + 4);
    t106 = *((unsigned int *)t102);
    t107 = *((unsigned int *)t101);
    t108 = (t106 ^ t107);
    t109 = *((unsigned int *)t104);
    t110 = *((unsigned int *)t105);
    t111 = (t109 ^ t110);
    t112 = (t108 | t111);
    t113 = *((unsigned int *)t104);
    t114 = *((unsigned int *)t105);
    t115 = (t113 | t114);
    t116 = (~(t115));
    t117 = (t112 & t116);
    if (t117 != 0)
        goto LAB50;

LAB47:    if (t115 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t103) = 1;

LAB50:    memset(t119, 0, 8);
    t120 = (t103 + 4);
    t121 = *((unsigned int *)t120);
    t122 = (~(t121));
    t123 = *((unsigned int *)t103);
    t124 = (t123 & t122);
    t125 = (t124 & 1U);
    if (t125 != 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t120) != 0)
        goto LAB53;

LAB54:    t128 = *((unsigned int *)t88);
    t129 = *((unsigned int *)t119);
    t130 = (t128 | t129);
    *((unsigned int *)t127) = t130;
    t131 = (t88 + 4);
    t132 = (t119 + 4);
    t133 = (t127 + 4);
    t134 = *((unsigned int *)t131);
    t135 = *((unsigned int *)t132);
    t136 = (t134 | t135);
    *((unsigned int *)t133) = t136;
    t137 = *((unsigned int *)t133);
    t138 = (t137 != 0);
    if (t138 == 1)
        goto LAB55;

LAB56:
LAB57:    goto LAB46;

LAB49:    t118 = (t103 + 4);
    *((unsigned int *)t103) = 1;
    *((unsigned int *)t118) = 1;
    goto LAB50;

LAB51:    *((unsigned int *)t119) = 1;
    goto LAB54;

LAB53:    t126 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t126) = 1;
    goto LAB54;

LAB55:    t139 = *((unsigned int *)t127);
    t140 = *((unsigned int *)t133);
    *((unsigned int *)t127) = (t139 | t140);
    t141 = (t88 + 4);
    t142 = (t119 + 4);
    t143 = *((unsigned int *)t141);
    t144 = (~(t143));
    t145 = *((unsigned int *)t88);
    t146 = (t145 & t144);
    t147 = *((unsigned int *)t142);
    t148 = (~(t147));
    t149 = *((unsigned int *)t119);
    t150 = (t149 & t148);
    t151 = (~(t146));
    t152 = (~(t150));
    t153 = *((unsigned int *)t133);
    *((unsigned int *)t133) = (t153 & t151);
    t154 = *((unsigned int *)t133);
    *((unsigned int *)t133) = (t154 & t152);
    goto LAB57;

LAB58:
LAB61:    t161 = ((char*)((ng4)));
    t162 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t162, t161, 0, 0, 4, 0LL);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB60;

LAB64:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB65;

LAB66:    *((unsigned int *)t30) = 1;
    goto LAB69;

LAB68:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB69;

LAB70:    t28 = (t0 + 1688U);
    t29 = *((char **)t28);
    t28 = ((char*)((ng4)));
    memset(t31, 0, 8);
    t37 = (t29 + 4);
    t38 = (t28 + 4);
    t39 = *((unsigned int *)t29);
    t40 = *((unsigned int *)t28);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t48 = *((unsigned int *)t37);
    t49 = *((unsigned int *)t38);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t45 & t51);
    if (t52 != 0)
        goto LAB76;

LAB73:    if (t50 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t31) = 1;

LAB76:    memset(t33, 0, 8);
    t47 = (t31 + 4);
    t53 = *((unsigned int *)t47);
    t54 = (~(t53));
    t55 = *((unsigned int *)t31);
    t58 = (t55 & t54);
    t59 = (t58 & 1U);
    if (t59 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t47) != 0)
        goto LAB79;

LAB80:    t60 = *((unsigned int *)t30);
    t61 = *((unsigned int *)t33);
    t62 = (t60 | t61);
    *((unsigned int *)t72) = t62;
    t70 = (t30 + 4);
    t71 = (t33 + 4);
    t73 = (t72 + 4);
    t63 = *((unsigned int *)t70);
    t65 = *((unsigned int *)t71);
    t66 = (t63 | t65);
    *((unsigned int *)t73) = t66;
    t67 = *((unsigned int *)t73);
    t68 = (t67 != 0);
    if (t68 == 1)
        goto LAB81;

LAB82:
LAB83:    goto LAB72;

LAB75:    t46 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t46) = 1;
    goto LAB76;

LAB77:    *((unsigned int *)t33) = 1;
    goto LAB80;

LAB79:    t64 = (t33 + 4);
    *((unsigned int *)t33) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB80;

LAB81:    t69 = *((unsigned int *)t72);
    t75 = *((unsigned int *)t73);
    *((unsigned int *)t72) = (t69 | t75);
    t74 = (t30 + 4);
    t87 = (t33 + 4);
    t76 = *((unsigned int *)t74);
    t77 = (~(t76));
    t78 = *((unsigned int *)t30);
    t56 = (t78 & t77);
    t79 = *((unsigned int *)t87);
    t80 = (~(t79));
    t81 = *((unsigned int *)t33);
    t57 = (t81 & t80);
    t82 = (~(t56));
    t83 = (~(t57));
    t84 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t84 & t82);
    t85 = *((unsigned int *)t73);
    *((unsigned int *)t73) = (t85 & t83);
    goto LAB83;

LAB84:
LAB87:    t95 = ((char*)((ng6)));
    t96 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t96, t95, 0, 0, 4, 0LL);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB86;

LAB90:    *((unsigned int *)t6) = 1;
    goto LAB92;

LAB91:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB92;

LAB93:
LAB96:    t28 = (t0 + 4008);
    t29 = (t28 + 56U);
    t37 = *((char **)t29);
    t38 = ((char*)((ng0)));
    memset(t30, 0, 8);
    t46 = (t37 + 4);
    t47 = (t38 + 4);
    t32 = *((unsigned int *)t37);
    t34 = *((unsigned int *)t38);
    t35 = (t32 ^ t34);
    t36 = *((unsigned int *)t46);
    t39 = *((unsigned int *)t47);
    t40 = (t36 ^ t39);
    t41 = (t35 | t40);
    t42 = *((unsigned int *)t46);
    t43 = *((unsigned int *)t47);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t48 = (t41 & t45);
    if (t48 != 0)
        goto LAB100;

LAB97:    if (t44 != 0)
        goto LAB99;

LAB98:    *((unsigned int *)t30) = 1;

LAB100:    t70 = (t30 + 4);
    t49 = *((unsigned int *)t70);
    t50 = (~(t49));
    t51 = *((unsigned int *)t30);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB101;

LAB102:
LAB105:    t2 = (t0 + 4008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_minus(t6, 32, t4, 4, t5, 32);
    t7 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t7, t6, 0, 0, 4, 0LL);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3848);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);

LAB103:    goto LAB95;

LAB99:    t64 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB100;

LAB101:
LAB104:    t71 = ((char*)((ng1)));
    t73 = (t0 + 4008);
    xsi_vlogvar_wait_assign_value(t73, t71, 0, 0, 4, 0LL);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB103;

LAB108:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB109;

LAB110:    *((unsigned int *)t30) = 1;
    goto LAB113;

LAB112:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB113;

LAB114:    t28 = (t0 + 1848U);
    t29 = *((char **)t28);
    memset(t31, 0, 8);
    t28 = (t29 + 4);
    t36 = *((unsigned int *)t28);
    t39 = (~(t36));
    t40 = *((unsigned int *)t29);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB117;

LAB118:    if (*((unsigned int *)t28) != 0)
        goto LAB119;

LAB120:    t43 = *((unsigned int *)t30);
    t44 = *((unsigned int *)t31);
    t45 = (t43 & t44);
    *((unsigned int *)t33) = t45;
    t38 = (t30 + 4);
    t46 = (t31 + 4);
    t47 = (t33 + 4);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB121;

LAB122:
LAB123:    goto LAB116;

LAB117:    *((unsigned int *)t31) = 1;
    goto LAB120;

LAB119:    t37 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB120;

LAB121:    t53 = *((unsigned int *)t33);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t33) = (t53 | t54);
    t64 = (t30 + 4);
    t70 = (t31 + 4);
    t55 = *((unsigned int *)t30);
    t58 = (~(t55));
    t59 = *((unsigned int *)t64);
    t60 = (~(t59));
    t61 = *((unsigned int *)t31);
    t62 = (~(t61));
    t63 = *((unsigned int *)t70);
    t65 = (~(t63));
    t56 = (t58 & t60);
    t57 = (t62 & t65);
    t66 = (~(t56));
    t67 = (~(t57));
    t68 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t68 & t66);
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t75 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t75 & t66);
    t76 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t76 & t67);
    goto LAB123;

LAB124:    *((unsigned int *)t72) = 1;
    goto LAB127;

LAB126:    t73 = (t72 + 4);
    *((unsigned int *)t72) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB127;

LAB128:    t87 = (t0 + 1368U);
    t89 = *((char **)t87);
    memset(t88, 0, 8);
    t87 = (t89 + 4);
    t85 = *((unsigned int *)t87);
    t86 = (~(t85));
    t90 = *((unsigned int *)t89);
    t91 = (t90 & t86);
    t92 = (t91 & 1U);
    if (t92 != 0)
        goto LAB134;

LAB132:    if (*((unsigned int *)t87) == 0)
        goto LAB131;

LAB133:    t95 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t95) = 1;

LAB134:    memset(t103, 0, 8);
    t96 = (t88 + 4);
    t93 = *((unsigned int *)t96);
    t94 = (~(t93));
    t97 = *((unsigned int *)t88);
    t98 = (t97 & t94);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB135;

LAB136:    if (*((unsigned int *)t96) != 0)
        goto LAB137;

LAB138:    t100 = *((unsigned int *)t72);
    t106 = *((unsigned int *)t103);
    t107 = (t100 & t106);
    *((unsigned int *)t119) = t107;
    t102 = (t72 + 4);
    t104 = (t103 + 4);
    t105 = (t119 + 4);
    t108 = *((unsigned int *)t102);
    t109 = *((unsigned int *)t104);
    t110 = (t108 | t109);
    *((unsigned int *)t105) = t110;
    t111 = *((unsigned int *)t105);
    t112 = (t111 != 0);
    if (t112 == 1)
        goto LAB139;

LAB140:
LAB141:    goto LAB130;

LAB131:    *((unsigned int *)t88) = 1;
    goto LAB134;

LAB135:    *((unsigned int *)t103) = 1;
    goto LAB138;

LAB137:    t101 = (t103 + 4);
    *((unsigned int *)t103) = 1;
    *((unsigned int *)t101) = 1;
    goto LAB138;

LAB139:    t113 = *((unsigned int *)t119);
    t114 = *((unsigned int *)t105);
    *((unsigned int *)t119) = (t113 | t114);
    t118 = (t72 + 4);
    t120 = (t103 + 4);
    t115 = *((unsigned int *)t72);
    t116 = (~(t115));
    t117 = *((unsigned int *)t118);
    t121 = (~(t117));
    t122 = *((unsigned int *)t103);
    t123 = (~(t122));
    t124 = *((unsigned int *)t120);
    t125 = (~(t124));
    t146 = (t116 & t121);
    t150 = (t123 & t125);
    t128 = (~(t146));
    t129 = (~(t150));
    t130 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t130 & t128);
    t134 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t134 & t129);
    t135 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t135 & t128);
    t136 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t136 & t129);
    goto LAB141;

LAB142:
LAB145:    t131 = (t0 + 2168U);
    t132 = *((char **)t131);
    t131 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t131, t132, 0, 0, 32, 0LL);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    goto LAB144;

LAB148:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB149;

LAB150:    *((unsigned int *)t30) = 1;
    goto LAB153;

LAB152:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB153;

LAB154:    t28 = (t0 + 1848U);
    t29 = *((char **)t28);
    memset(t31, 0, 8);
    t28 = (t29 + 4);
    t36 = *((unsigned int *)t28);
    t39 = (~(t36));
    t40 = *((unsigned int *)t29);
    t41 = (t40 & t39);
    t42 = (t41 & 1U);
    if (t42 != 0)
        goto LAB157;

LAB158:    if (*((unsigned int *)t28) != 0)
        goto LAB159;

LAB160:    t43 = *((unsigned int *)t30);
    t44 = *((unsigned int *)t31);
    t45 = (t43 & t44);
    *((unsigned int *)t33) = t45;
    t38 = (t30 + 4);
    t46 = (t31 + 4);
    t47 = (t33 + 4);
    t48 = *((unsigned int *)t38);
    t49 = *((unsigned int *)t46);
    t50 = (t48 | t49);
    *((unsigned int *)t47) = t50;
    t51 = *((unsigned int *)t47);
    t52 = (t51 != 0);
    if (t52 == 1)
        goto LAB161;

LAB162:
LAB163:    goto LAB156;

LAB157:    *((unsigned int *)t31) = 1;
    goto LAB160;

LAB159:    t37 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t37) = 1;
    goto LAB160;

LAB161:    t53 = *((unsigned int *)t33);
    t54 = *((unsigned int *)t47);
    *((unsigned int *)t33) = (t53 | t54);
    t64 = (t30 + 4);
    t70 = (t31 + 4);
    t55 = *((unsigned int *)t30);
    t58 = (~(t55));
    t59 = *((unsigned int *)t64);
    t60 = (~(t59));
    t61 = *((unsigned int *)t31);
    t62 = (~(t61));
    t63 = *((unsigned int *)t70);
    t65 = (~(t63));
    t56 = (t58 & t60);
    t57 = (t62 & t65);
    t66 = (~(t56));
    t67 = (~(t57));
    t68 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t68 & t66);
    t69 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t69 & t67);
    t75 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t75 & t66);
    t76 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t76 & t67);
    goto LAB163;

LAB164:    *((unsigned int *)t72) = 1;
    goto LAB167;

LAB166:    t73 = (t72 + 4);
    *((unsigned int *)t72) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB167;

LAB168:    t87 = (t0 + 1368U);
    t89 = *((char **)t87);
    memset(t88, 0, 8);
    t87 = (t89 + 4);
    t85 = *((unsigned int *)t87);
    t86 = (~(t85));
    t90 = *((unsigned int *)t89);
    t91 = (t90 & t86);
    t92 = (t91 & 1U);
    if (t92 != 0)
        goto LAB174;

LAB172:    if (*((unsigned int *)t87) == 0)
        goto LAB171;

LAB173:    t95 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t95) = 1;

LAB174:    memset(t103, 0, 8);
    t96 = (t88 + 4);
    t93 = *((unsigned int *)t96);
    t94 = (~(t93));
    t97 = *((unsigned int *)t88);
    t98 = (t97 & t94);
    t99 = (t98 & 1U);
    if (t99 != 0)
        goto LAB175;

LAB176:    if (*((unsigned int *)t96) != 0)
        goto LAB177;

LAB178:    t100 = *((unsigned int *)t72);
    t106 = *((unsigned int *)t103);
    t107 = (t100 & t106);
    *((unsigned int *)t119) = t107;
    t102 = (t72 + 4);
    t104 = (t103 + 4);
    t105 = (t119 + 4);
    t108 = *((unsigned int *)t102);
    t109 = *((unsigned int *)t104);
    t110 = (t108 | t109);
    *((unsigned int *)t105) = t110;
    t111 = *((unsigned int *)t105);
    t112 = (t111 != 0);
    if (t112 == 1)
        goto LAB179;

LAB180:
LAB181:    goto LAB170;

LAB171:    *((unsigned int *)t88) = 1;
    goto LAB174;

LAB175:    *((unsigned int *)t103) = 1;
    goto LAB178;

LAB177:    t101 = (t103 + 4);
    *((unsigned int *)t103) = 1;
    *((unsigned int *)t101) = 1;
    goto LAB178;

LAB179:    t113 = *((unsigned int *)t119);
    t114 = *((unsigned int *)t105);
    *((unsigned int *)t119) = (t113 | t114);
    t118 = (t72 + 4);
    t120 = (t103 + 4);
    t115 = *((unsigned int *)t72);
    t116 = (~(t115));
    t117 = *((unsigned int *)t118);
    t121 = (~(t117));
    t122 = *((unsigned int *)t103);
    t123 = (~(t122));
    t124 = *((unsigned int *)t120);
    t125 = (~(t124));
    t146 = (t116 & t121);
    t150 = (t123 & t125);
    t128 = (~(t146));
    t129 = (~(t150));
    t130 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t130 & t128);
    t134 = *((unsigned int *)t105);
    *((unsigned int *)t105) = (t134 & t129);
    t135 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t135 & t128);
    t136 = *((unsigned int *)t119);
    *((unsigned int *)t119) = (t136 & t129);
    goto LAB181;

LAB182:
LAB185:    t131 = (t0 + 3048);
    t132 = (t131 + 56U);
    t133 = *((char **)t132);
    t141 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t141, t133, 0, 0, 32, 0LL);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    goto LAB184;

}

static void Always_109_1(char *t0)
{
    char t6[8];
    char t26[16];
    char t29[16];
    char t31[16];
    char t33[8];
    char t34[8];
    char t35[8];
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
    char *t27;
    char *t28;
    char *t30;
    char *t32;

LAB0:    t1 = (t0 + 5176U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 6008);
    *((int *)t2) = 1;
    t3 = (t0 + 5208);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = ((char*)((ng1)));
    t5 = (t0 + 3368);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
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

LAB11:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
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

LAB19:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
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
        goto LAB25;

LAB22:    if (t16 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t6) = 1;

LAB25:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB26;

LAB27:    t2 = (t0 + 1688U);
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
        goto LAB33;

LAB30:    if (t16 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t6) = 1;

LAB33:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB34;

LAB35:
LAB38:    t2 = ((char*)((ng1)));
    t3 = (t0 + 3368);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3528);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB36:
LAB28:
LAB20:
LAB12:    goto LAB2;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:
LAB13:    t27 = (t0 + 2168U);
    t28 = *((char **)t27);
    xsi_vlogtype_sign_extend(t26, 64, t28, 32);
    t27 = (t0 + 2328U);
    t30 = *((char **)t27);
    xsi_vlogtype_sign_extend(t29, 64, t30, 32);
    xsi_vlog_signed_multiply(t31, 64, t26, 64, t29, 64);
    t27 = (t0 + 3528);
    xsi_vlogvar_assign_value(t27, t31, 0, 0, 32);
    t32 = (t0 + 3368);
    xsi_vlogvar_assign_value(t32, t31, 32, 0, 32);
    goto LAB12;

LAB16:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB17;

LAB18:
LAB21:    t27 = (t0 + 2168U);
    t28 = *((char **)t27);
    t27 = (t0 + 2328U);
    t30 = *((char **)t27);
    xsi_vlog_unsigned_multiply(t26, 64, t28, 32, t30, 32);
    t27 = (t0 + 3528);
    xsi_vlogvar_assign_value(t27, t26, 0, 0, 32);
    t32 = (t0 + 3368);
    xsi_vlogvar_assign_value(t32, t26, 32, 0, 32);
    goto LAB20;

LAB24:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB25;

LAB26:
LAB29:    t27 = (t0 + 2168U);
    t28 = *((char **)t27);
    t27 = (t0 + 2328U);
    t30 = *((char **)t27);
    memset(t35, 0, 8);
    xsi_vlog_signed_mod(t35, 32, t28, 32, t30, 32);
    t27 = (t0 + 3368);
    xsi_vlogvar_assign_value(t27, t35, 0, 0, 32);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t34, 0, 8);
    xsi_vlog_signed_divide(t34, 32, t3, 32, t4, 32);
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t34, 0, 0, 32);
    goto LAB28;

LAB32:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB33;

LAB34:
LAB37:    t27 = (t0 + 2168U);
    t28 = *((char **)t27);
    t27 = (t0 + 2328U);
    t30 = *((char **)t27);
    memset(t33, 0, 8);
    xsi_vlog_unsigned_mod(t33, 32, t28, 32, t30, 32);
    t27 = (t0 + 3368);
    xsi_vlogvar_assign_value(t27, t33, 0, 0, 32);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 2328U);
    t4 = *((char **)t2);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_divide(t6, 32, t3, 32, t4, 32);
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t6, 0, 0, 32);
    goto LAB36;

}

static void Cont_132_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
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
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
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
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 5424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4008);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB7;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t8) = 1;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 6120);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 6024);
    *((int *)t54) = 1;

LAB1:    return;
LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng1)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng0)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 1, t35, 1, t40, 1);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}

static void Cont_133_3(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char *t1;
    char *t2;
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
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;

LAB0:    t1 = (t0 + 5672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2008U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
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
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t29);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t42, 8);

LAB20:    t43 = (t0 + 6184);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memcpy(t47, t3, 8);
    xsi_driver_vfirst_trans(t43, 0, 31);
    t48 = (t0 + 6040);
    *((int *)t48) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 3208);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    goto LAB13;

LAB14:    t40 = (t0 + 3048);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t42, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}


extern void work_m_00000000003546689656_2042706489_init()
{
	static char *pe[] = {(void *)Always_47_0,(void *)Always_109_1,(void *)Cont_132_2,(void *)Cont_133_3};
	xsi_register_didat("work_m_00000000003546689656_2042706489", "isim/mips.exe.sim/work/m_00000000003546689656_2042706489.didat");
	xsi_register_executes(pe);
}
