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
static const char *ng0 = "/home/ise/xilinxShare/submission_template/submit/rcs2plus/mulop.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2177518728674633585_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 8096U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 16U);
    t7 = (17U != t6);
    if (t7 == 1)
        goto LAB2;

LAB3:    t8 = (t0 + 5184);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 17U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 8112U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 16U);
    t7 = (17U != t6);
    if (t7 == 1)
        goto LAB4;

LAB5:    t8 = (t0 + 5248);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 17U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 8398);
    t7 = 1;
    if (16U == 16U)
        goto LAB9;

LAB10:    t7 = 0;

LAB11:    if (t7 != 0)
        goto LAB6;

LAB8:
LAB7:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 8431);
    t7 = 1;
    if (16U == 16U)
        goto LAB18;

LAB19:    t7 = 0;

LAB20:    if (t7 != 0)
        goto LAB15;

LAB17:
LAB16:    t1 = (t0 + 5024);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(17U, t6, 0);
    goto LAB3;

LAB4:    xsi_size_not_matching(17U, t6, 0);
    goto LAB5;

LAB6:    xsi_set_current_line(53, ng0);
    t9 = (t0 + 8414);
    t11 = (t0 + 5184);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 17U);
    xsi_driver_first_trans_fast(t11);
    goto LAB7;

LAB9:    t6 = 0;

LAB12:    if (t6 < 16U)
        goto LAB13;
    else
        goto LAB11;

LAB13:    t5 = (t2 + t6);
    t8 = (t1 + t6);
    if (*((unsigned char *)t5) != *((unsigned char *)t8))
        goto LAB10;

LAB14:    t6 = (t6 + 1);
    goto LAB12;

LAB15:    xsi_set_current_line(56, ng0);
    t9 = (t0 + 8447);
    t11 = (t0 + 5248);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 17U);
    xsi_driver_first_trans_fast(t11);
    goto LAB16;

LAB18:    t6 = 0;

LAB21:    if (t6 < 16U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t5 = (t2 + t6);
    t8 = (t1 + t6);
    if (*((unsigned char *)t5) != *((unsigned char *)t8))
        goto LAB19;

LAB23:    t6 = (t6 + 1);
    goto LAB21;

}

static void work_a_3400501926_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 8144U);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t4 = (t0 + 8160U);
    t6 = ieee_p_1242562249_sub_2177518728674633585_1035706684(IEEE_P_1242562249, t1, t3, t2, t5, t4);
    t7 = (t0 + 5312);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 34U);
    xsi_driver_first_trans_fast(t7);

LAB2:    t12 = (t0 + 5040);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3400501926_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (33 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5376);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 5056);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3400501926_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(61, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (33 - 32);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5440);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 17U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 5072);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3400501926_3212880686_p_4(char *t0)
{
    char t5[16];
    char t8[16];
    char t19[16];
    char t20[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t21;
    unsigned int t22;
    char *t23;

LAB0:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4000);
    t4 = xsi_vhdl_greaterEqual(t1, t2, 16U, t3, 17U);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4000);
    t6 = (t0 + 8208U);
    t1 = xsi_base_array_concat(t1, t19, t3, (char)99, (unsigned char)2, (char)97, t2, t6, (char)101);
    t7 = (t0 + 2312U);
    t9 = *((char **)t7);
    t7 = (t0 + 8224U);
    t10 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t8, t1, t19, t9, t7);
    t11 = (t0 + 8464);
    t13 = (t20 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 16;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t21 = (16 - 0);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t22;
    t14 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t5, t10, t8, t11, t20);
    t15 = (t0 + 5504);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t23 = *((char **)t18);
    memcpy(t23, t14, 17U);
    xsi_driver_first_trans_fast(t15);

LAB3:    t1 = (t0 + 5088);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t6 = (t0 + 2152U);
    t7 = *((char **)t6);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t0 + 8208U);
    t6 = xsi_base_array_concat(t6, t8, t9, (char)99, (unsigned char)2, (char)97, t7, t10, (char)101);
    t11 = (t0 + 2312U);
    t12 = *((char **)t11);
    t11 = (t0 + 8224U);
    t13 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t5, t6, t8, t12, t11);
    t14 = (t0 + 5504);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t13, 17U);
    xsi_driver_first_trans_fast(t14);
    goto LAB3;

}

static void work_a_3400501926_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (16 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5568);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 5104);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0,(void *)work_a_3400501926_3212880686_p_1,(void *)work_a_3400501926_3212880686_p_2,(void *)work_a_3400501926_3212880686_p_3,(void *)work_a_3400501926_3212880686_p_4,(void *)work_a_3400501926_3212880686_p_5};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_idea_rcs2plus_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
