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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/xilinxShare/submission_template/submit/rcs2/tb_clockedround.vhd";



static void work_a_0524747459_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 9824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(439, ng0);
    t2 = (t0 + 10456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(440, ng0);
    t2 = (t0 + 8848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 9632);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(441, ng0);
    t2 = (t0 + 10456);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(442, ng0);
    t2 = (t0 + 8848U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 9632);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0524747459_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    int64 t17;
    unsigned char t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    unsigned int t22;
    char *t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned char t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    int t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned char t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned char t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;

LAB0:    t1 = (t0 + 10072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(450, ng0);
    t2 = (t0 + 22608);
    xsi_report(t2, 16U, 0);
    xsi_set_current_line(452, ng0);
    t2 = (t0 + 22624);
    *((int *)t2) = 0;
    t3 = (t0 + 22628);
    *((int *)t3) = 10;
    t4 = 0;
    t5 = 10;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(473, ng0);
    t17 = (100 * 1000LL);
    t2 = (t0 + 9880);
    xsi_process_wait(t2, t17);

LAB54:    *((char **)t1) = &&LAB55;

LAB1:    return;
LAB5:    xsi_set_current_line(453, ng0);
    t6 = (t0 + 10520);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(454, ng0);
    t2 = (t0 + 10584);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(455, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10648);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(456, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10712);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(457, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10776);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(458, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10840);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(459, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10904);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(460, ng0);
    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10968);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(461, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 11032);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(462, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 11096);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(463, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 11160);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(464, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 11224);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(465, ng0);
    t17 = (15 * 1000LL);
    t2 = (t0 + 9880);
    xsi_process_wait(t2, t17);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 22624);
    t4 = *((int *)t2);
    t3 = (t0 + 22628);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB51:    t11 = (t4 + 1);
    t4 = t11;
    t6 = (t0 + 22624);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(466, ng0);
    t2 = (t0 + 10584);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(467, ng0);
    t17 = (100 * 1000LL);
    t2 = (t0 + 9880);
    xsi_process_wait(t2, t17);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(468, ng0);
    t2 = (t0 + 7432U);
    t3 = *((char **)t2);
    t2 = (t0 + 2632U);
    t6 = *((char **)t2);
    t2 = (t0 + 22624);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (16U * t13);
    t15 = (0 + t14);
    t7 = (t6 + t15);
    t21 = 1;
    if (16U == 16U)
        goto LAB27;

LAB28:    t21 = 0;

LAB29:    if (t21 == 1)
        goto LAB24;

LAB25:    t20 = (unsigned char)0;

LAB26:    if (t20 == 1)
        goto LAB21;

LAB22:    t19 = (unsigned char)0;

LAB23:    if (t19 == 1)
        goto LAB18;

LAB19:    t18 = (unsigned char)0;

LAB20:    if (t18 == 0)
        goto LAB16;

LAB17:    goto LAB6;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t60 = (t0 + 22632);
    xsi_report(t60, 15U, (unsigned char)0);
    goto LAB17;

LAB18:    t47 = (t0 + 7912U);
    t48 = *((char **)t47);
    t47 = (t0 + 3112U);
    t49 = *((char **)t47);
    t47 = (t0 + 22624);
    t50 = *((int *)t47);
    t51 = (t50 - 0);
    t52 = (t51 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t47));
    t53 = (16U * t52);
    t54 = (0 + t53);
    t55 = (t49 + t54);
    t56 = 1;
    if (16U == 16U)
        goto LAB45;

LAB46:    t56 = 0;

LAB47:    t18 = t56;
    goto LAB20;

LAB21:    t34 = (t0 + 7752U);
    t35 = *((char **)t34);
    t34 = (t0 + 2952U);
    t36 = *((char **)t34);
    t34 = (t0 + 22624);
    t37 = *((int *)t34);
    t38 = (t37 - 0);
    t39 = (t38 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t34));
    t40 = (16U * t39);
    t41 = (0 + t40);
    t42 = (t36 + t41);
    t43 = 1;
    if (16U == 16U)
        goto LAB39;

LAB40:    t43 = 0;

LAB41:    t19 = t43;
    goto LAB23;

LAB24:    t10 = (t0 + 7592U);
    t16 = *((char **)t10);
    t10 = (t0 + 2792U);
    t23 = *((char **)t10);
    t10 = (t0 + 22624);
    t24 = *((int *)t10);
    t25 = (t24 - 0);
    t26 = (t25 * 1);
    xsi_vhdl_check_range_of_index(0, 10, 1, *((int *)t10));
    t27 = (16U * t26);
    t28 = (0 + t27);
    t29 = (t23 + t28);
    t30 = 1;
    if (16U == 16U)
        goto LAB33;

LAB34:    t30 = 0;

LAB35:    t20 = t30;
    goto LAB26;

LAB27:    t22 = 0;

LAB30:    if (t22 < 16U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t8 = (t3 + t22);
    t9 = (t7 + t22);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB28;

LAB32:    t22 = (t22 + 1);
    goto LAB30;

LAB33:    t31 = 0;

LAB36:    if (t31 < 16U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t32 = (t16 + t31);
    t33 = (t29 + t31);
    if (*((unsigned char *)t32) != *((unsigned char *)t33))
        goto LAB34;

LAB38:    t31 = (t31 + 1);
    goto LAB36;

LAB39:    t44 = 0;

LAB42:    if (t44 < 16U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t45 = (t35 + t44);
    t46 = (t42 + t44);
    if (*((unsigned char *)t45) != *((unsigned char *)t46))
        goto LAB40;

LAB44:    t44 = (t44 + 1);
    goto LAB42;

LAB45:    t57 = 0;

LAB48:    if (t57 < 16U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t58 = (t48 + t57);
    t59 = (t55 + t57);
    if (*((unsigned char *)t58) != *((unsigned char *)t59))
        goto LAB46;

LAB50:    t57 = (t57 + 1);
    goto LAB48;

LAB52:    xsi_set_current_line(475, ng0);
    t2 = (t0 + 22647);
    xsi_report(t2, 16U, 0);
    xsi_set_current_line(478, ng0);
    t2 = (t0 + 22663);
    *((int *)t2) = 0;
    t3 = (t0 + 22667);
    *((int *)t3) = 8;
    t4 = 0;
    t5 = 8;

LAB56:    if (t4 <= t5)
        goto LAB57;

LAB59:    xsi_set_current_line(496, ng0);
    t2 = (t0 + 22686);
    xsi_report(t2, 22U, (unsigned char)0);
    xsi_set_current_line(497, ng0);

LAB106:    *((char **)t1) = &&LAB107;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB57:    xsi_set_current_line(479, ng0);
    t6 = (t0 + 10520);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(480, ng0);
    t2 = (t0 + 10584);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(481, ng0);
    t2 = (t0 + 3272U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10648);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(482, ng0);
    t2 = (t0 + 3432U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10712);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(483, ng0);
    t2 = (t0 + 3592U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10776);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(484, ng0);
    t2 = (t0 + 3752U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10840);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(485, ng0);
    t2 = (t0 + 3912U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10904);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(486, ng0);
    t2 = (t0 + 4072U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 10968);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(487, ng0);
    t2 = (t0 + 4232U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 11032);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(488, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t2));
    t14 = (16U * t13);
    t15 = (0 + t14);
    t6 = (t3 + t15);
    t7 = (t0 + 11096);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t6, 16U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(489, ng0);
    t17 = (15 * 1000LL);
    t2 = (t0 + 9880);
    xsi_process_wait(t2, t17);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB58:    t2 = (t0 + 22663);
    t4 = *((int *)t2);
    t3 = (t0 + 22667);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB59;

LAB103:    t11 = (t4 + 1);
    t4 = t11;
    t6 = (t0 + 22663);
    *((int *)t6) = t4;
    goto LAB56;

LAB60:    xsi_set_current_line(490, ng0);
    t2 = (t0 + 10584);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(491, ng0);
    t17 = (100 * 1000LL);
    t2 = (t0 + 9880);
    xsi_process_wait(t2, t17);

LAB66:    *((char **)t1) = &&LAB67;
    goto LAB1;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    xsi_set_current_line(492, ng0);
    t2 = (t0 + 8072U);
    t3 = *((char **)t2);
    t2 = (t0 + 4552U);
    t6 = *((char **)t2);
    t2 = (t0 + 22663);
    t11 = *((int *)t2);
    t12 = (t11 - 0);
    t13 = (t12 * 1);
    t14 = (16U * t13);
    t15 = (0 + t14);
    t7 = (t6 + t15);
    t21 = 1;
    if (16U == 16U)
        goto LAB79;

LAB80:    t21 = 0;

LAB81:    if (t21 == 1)
        goto LAB76;

LAB77:    t20 = (unsigned char)0;

LAB78:    if (t20 == 1)
        goto LAB73;

LAB74:    t19 = (unsigned char)0;

LAB75:    if (t19 == 1)
        goto LAB70;

LAB71:    t18 = (unsigned char)0;

LAB72:    if (t18 == 0)
        goto LAB68;

LAB69:    goto LAB58;

LAB65:    goto LAB64;

LAB67:    goto LAB65;

LAB68:    t60 = (t0 + 22671);
    xsi_report(t60, 15U, (unsigned char)0);
    goto LAB69;

LAB70:    t47 = (t0 + 8552U);
    t48 = *((char **)t47);
    t47 = (t0 + 5032U);
    t49 = *((char **)t47);
    t47 = (t0 + 22663);
    t50 = *((int *)t47);
    t51 = (t50 - 0);
    t52 = (t51 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t47));
    t53 = (16U * t52);
    t54 = (0 + t53);
    t55 = (t49 + t54);
    t56 = 1;
    if (16U == 16U)
        goto LAB97;

LAB98:    t56 = 0;

LAB99:    t18 = t56;
    goto LAB72;

LAB73:    t34 = (t0 + 8392U);
    t35 = *((char **)t34);
    t34 = (t0 + 4872U);
    t36 = *((char **)t34);
    t34 = (t0 + 22663);
    t37 = *((int *)t34);
    t38 = (t37 - 0);
    t39 = (t38 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t34));
    t40 = (16U * t39);
    t41 = (0 + t40);
    t42 = (t36 + t41);
    t43 = 1;
    if (16U == 16U)
        goto LAB91;

LAB92:    t43 = 0;

LAB93:    t19 = t43;
    goto LAB75;

LAB76:    t10 = (t0 + 8232U);
    t16 = *((char **)t10);
    t10 = (t0 + 4712U);
    t23 = *((char **)t10);
    t10 = (t0 + 22663);
    t24 = *((int *)t10);
    t25 = (t24 - 0);
    t26 = (t25 * 1);
    xsi_vhdl_check_range_of_index(0, 8, 1, *((int *)t10));
    t27 = (16U * t26);
    t28 = (0 + t27);
    t29 = (t23 + t28);
    t30 = 1;
    if (16U == 16U)
        goto LAB85;

LAB86:    t30 = 0;

LAB87:    t20 = t30;
    goto LAB78;

LAB79:    t22 = 0;

LAB82:    if (t22 < 16U)
        goto LAB83;
    else
        goto LAB81;

LAB83:    t8 = (t3 + t22);
    t9 = (t7 + t22);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB80;

LAB84:    t22 = (t22 + 1);
    goto LAB82;

LAB85:    t31 = 0;

LAB88:    if (t31 < 16U)
        goto LAB89;
    else
        goto LAB87;

LAB89:    t32 = (t16 + t31);
    t33 = (t29 + t31);
    if (*((unsigned char *)t32) != *((unsigned char *)t33))
        goto LAB86;

LAB90:    t31 = (t31 + 1);
    goto LAB88;

LAB91:    t44 = 0;

LAB94:    if (t44 < 16U)
        goto LAB95;
    else
        goto LAB93;

LAB95:    t45 = (t35 + t44);
    t46 = (t42 + t44);
    if (*((unsigned char *)t45) != *((unsigned char *)t46))
        goto LAB92;

LAB96:    t44 = (t44 + 1);
    goto LAB94;

LAB97:    t57 = 0;

LAB100:    if (t57 < 16U)
        goto LAB101;
    else
        goto LAB99;

LAB101:    t58 = (t48 + t57);
    t59 = (t55 + t57);
    if (*((unsigned char *)t58) != *((unsigned char *)t59))
        goto LAB98;

LAB102:    t57 = (t57 + 1);
    goto LAB100;

LAB104:    goto LAB2;

LAB105:    goto LAB104;

LAB107:    goto LAB105;

}


extern void work_a_0524747459_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0524747459_2372691052_p_0,(void *)work_a_0524747459_2372691052_p_1};
	xsi_register_didat("work_a_0524747459_2372691052", "isim/tb_clockedround_isim_beh.exe.sim/work/a_0524747459_2372691052.didat");
	xsi_register_executes(pe);
}
