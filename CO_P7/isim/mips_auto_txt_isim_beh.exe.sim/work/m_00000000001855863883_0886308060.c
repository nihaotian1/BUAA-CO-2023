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
static const char *ng0 = "D:/CO/CO_P7/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};



static void Always_30_0(char *t0)
{
    char t8[8];
    char t9[16];
    char t16[16];
    char t20[8];
    char t28[16];
    char t32[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    int t56;
    int t57;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    t3 = (t0 + 3040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(30, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 1928);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(34, ng0);

LAB24:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 31);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 31);
    t15 = (t14 & 1);
    *((unsigned int *)t2) = t15;
    xsi_vlogtype_concat(t9, 33, 33, 2U, t8, 1, t4, 32);
    t17 = (t0 + 1208U);
    t18 = *((char **)t17);
    t17 = (t0 + 1208U);
    t19 = *((char **)t17);
    memset(t20, 0, 8);
    t17 = (t20 + 4);
    t21 = (t19 + 4);
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t20) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t17) = t27;
    xsi_vlogtype_concat(t16, 33, 33, 2U, t20, 1, t18, 32);
    xsi_vlog_unsigned_add(t28, 33, t9, 33, t16, 33);
    t29 = (t0 + 2088);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 33);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t7 = (t8 + 4);
    t17 = (t5 + 8);
    t18 = (t5 + 12);
    t10 = *((unsigned int *)t17);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t18);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t7) = t15;
    t19 = (t0 + 2088);
    t21 = (t19 + 56U);
    t29 = *((char **)t21);
    memset(t20, 0, 8);
    t30 = (t20 + 4);
    t31 = (t29 + 4);
    t22 = *((unsigned int *)t29);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t20) = t24;
    t25 = *((unsigned int *)t31);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t30) = t27;
    memset(t32, 0, 8);
    t33 = (t8 + 4);
    t34 = (t20 + 4);
    t35 = *((unsigned int *)t8);
    t36 = *((unsigned int *)t20);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB26;

LAB25:    if (t44 != 0)
        goto LAB27;

LAB28:    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB29;

LAB30:
LAB31:    goto LAB23;

LAB9:    xsi_set_current_line(42, ng0);

LAB33:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 32, t5, 32, t7, 32);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 32);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t8, 0, 8);
    t2 = (t8 + 4);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 31);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t7);
    t14 = (t13 >> 31);
    t15 = (t14 & 1);
    *((unsigned int *)t2) = t15;
    xsi_vlogtype_concat(t9, 33, 33, 2U, t8, 1, t4, 32);
    t17 = (t0 + 1208U);
    t18 = *((char **)t17);
    t17 = (t0 + 1208U);
    t19 = *((char **)t17);
    memset(t20, 0, 8);
    t17 = (t20 + 4);
    t21 = (t19 + 4);
    t22 = *((unsigned int *)t19);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t20) = t24;
    t25 = *((unsigned int *)t21);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t17) = t27;
    xsi_vlogtype_concat(t16, 33, 33, 2U, t20, 1, t18, 32);
    xsi_vlog_unsigned_minus(t28, 33, t9, 33, t16, 33);
    t29 = (t0 + 2088);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 33);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t8, 0, 8);
    t7 = (t8 + 4);
    t17 = (t5 + 8);
    t18 = (t5 + 12);
    t10 = *((unsigned int *)t17);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t8) = t12;
    t13 = *((unsigned int *)t18);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t7) = t15;
    t19 = (t0 + 2088);
    t21 = (t19 + 56U);
    t29 = *((char **)t21);
    memset(t20, 0, 8);
    t30 = (t20 + 4);
    t31 = (t29 + 4);
    t22 = *((unsigned int *)t29);
    t23 = (t22 >> 31);
    t24 = (t23 & 1);
    *((unsigned int *)t20) = t24;
    t25 = *((unsigned int *)t31);
    t26 = (t25 >> 31);
    t27 = (t26 & 1);
    *((unsigned int *)t30) = t27;
    memset(t32, 0, 8);
    t33 = (t8 + 4);
    t34 = (t20 + 4);
    t35 = *((unsigned int *)t8);
    t36 = *((unsigned int *)t20);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB35;

LAB34:    if (t44 != 0)
        goto LAB36;

LAB37:    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB38;

LAB39:
LAB40:    goto LAB23;

LAB11:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t7);
    t12 = (t10 | t11);
    *((unsigned int *)t8) = t12;
    t4 = (t5 + 4);
    t17 = (t7 + 4);
    t18 = (t8 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t17);
    t15 = (t13 | t14);
    *((unsigned int *)t18) = t15;
    t22 = *((unsigned int *)t18);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB42;

LAB43:
LAB44:    t29 = (t0 + 1768);
    xsi_vlogvar_assign_value(t29, t8, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(57, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t7);
    t12 = (t10 & t11);
    *((unsigned int *)t8) = t12;
    t4 = (t5 + 4);
    t17 = (t7 + 4);
    t18 = (t8 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t17);
    t15 = (t13 | t14);
    *((unsigned int *)t18) = t15;
    t22 = *((unsigned int *)t18);
    t23 = (t22 != 0);
    if (t23 == 1)
        goto LAB45;

LAB46:
LAB47:    t29 = (t0 + 1768);
    xsi_vlogvar_assign_value(t29, t8, 0, 0, 32);
    goto LAB23;

LAB17:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t32, 0, 8);
    xsi_vlog_signed_less(t32, 32, t5, 32, t7, 32);
    t4 = (t32 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (~(t10));
    t12 = *((unsigned int *)t32);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB48;

LAB49:    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB50:    goto LAB23;

LAB19:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 1208U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB52;

LAB51:    t17 = (t7 + 4);
    if (*((unsigned int *)t17) != 0)
        goto LAB52;

LAB55:    if (*((unsigned int *)t5) < *((unsigned int *)t7))
        goto LAB53;

LAB54:    t19 = (t8 + 4);
    t10 = *((unsigned int *)t19);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 32);

LAB58:    goto LAB23;

LAB26:    *((unsigned int *)t32) = 1;
    goto LAB28;

LAB27:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(37, ng0);

LAB32:    xsi_set_current_line(38, ng0);
    t54 = ((char*)((ng2)));
    t55 = (t0 + 1928);
    xsi_vlogvar_assign_value(t55, t54, 0, 0, 1);
    goto LAB31;

LAB35:    *((unsigned int *)t32) = 1;
    goto LAB37;

LAB36:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB37;

LAB38:    xsi_set_current_line(45, ng0);

LAB41:    xsi_set_current_line(46, ng0);
    t54 = ((char*)((ng2)));
    t55 = (t0 + 1928);
    xsi_vlogvar_assign_value(t55, t54, 0, 0, 1);
    goto LAB40;

LAB42:    t24 = *((unsigned int *)t8);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t8) = (t24 | t25);
    t19 = (t5 + 4);
    t21 = (t7 + 4);
    t26 = *((unsigned int *)t19);
    t27 = (~(t26));
    t35 = *((unsigned int *)t5);
    t56 = (t35 & t27);
    t36 = *((unsigned int *)t21);
    t37 = (~(t36));
    t38 = *((unsigned int *)t7);
    t57 = (t38 & t37);
    t39 = (~(t56));
    t40 = (~(t57));
    t41 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t41 & t39);
    t42 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t42 & t40);
    goto LAB44;

LAB45:    t24 = *((unsigned int *)t8);
    t25 = *((unsigned int *)t18);
    *((unsigned int *)t8) = (t24 | t25);
    t19 = (t5 + 4);
    t21 = (t7 + 4);
    t26 = *((unsigned int *)t5);
    t27 = (~(t26));
    t35 = *((unsigned int *)t19);
    t36 = (~(t35));
    t37 = *((unsigned int *)t7);
    t38 = (~(t37));
    t39 = *((unsigned int *)t21);
    t40 = (~(t39));
    t56 = (t27 & t36);
    t57 = (t38 & t40);
    t41 = (~(t56));
    t42 = (~(t57));
    t43 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t43 & t41);
    t44 = *((unsigned int *)t18);
    *((unsigned int *)t18) = (t44 & t42);
    t45 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t45 & t41);
    t46 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t46 & t42);
    goto LAB47;

LAB48:    xsi_set_current_line(61, ng0);
    t17 = ((char*)((ng2)));
    t18 = (t0 + 1768);
    xsi_vlogvar_assign_value(t18, t17, 0, 0, 32);
    goto LAB50;

LAB52:    t18 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB54;

LAB53:    *((unsigned int *)t8) = 1;
    goto LAB54;

LAB56:    xsi_set_current_line(67, ng0);
    t21 = ((char*)((ng2)));
    t29 = (t0 + 1768);
    xsi_vlogvar_assign_value(t29, t21, 0, 0, 32);
    goto LAB58;

}


extern void work_m_00000000001855863883_0886308060_init()
{
	static char *pe[] = {(void *)Always_30_0};
	xsi_register_didat("work_m_00000000001855863883_0886308060", "isim/mips_auto_txt_isim_beh.exe.sim/work/m_00000000001855863883_0886308060.didat");
	xsi_register_executes(pe);
}
