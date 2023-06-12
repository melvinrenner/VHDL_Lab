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
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );
char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1701011461141789389_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_2177518728674633585_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t3[16];
    char t10[16];
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    int t18;
    unsigned int t19;
    char *t21;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t3, 0, 16);
    t4 = 1;
    if (16U == 16U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 5800U);
    t1 = xsi_base_array_concat(t1, t3, t6, (char)99, (unsigned char)2, (char)97, t2, t7, (char)101);
    t8 = (t0 + 1648U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t5 = (1U + 16U);
    memcpy(t8, t1, t5);

LAB3:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t3, 0, 16);
    t6 = (t3 + 12U);
    t5 = *((unsigned int *)t6);
    t5 = (t5 * 1U);
    t4 = 1;
    if (16U == t5)
        goto LAB14;

LAB15:    t4 = 0;

LAB16:    if (t4 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 5816U);
    t1 = xsi_base_array_concat(t1, t3, t6, (char)99, (unsigned char)2, (char)97, t2, t7, (char)101);
    t8 = (t0 + 1768U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t5 = (1U + 16U);
    memcpy(t8, t1, t5);

LAB12:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t1 = (t0 + 5848U);
    t6 = (t0 + 1768U);
    t7 = *((char **)t6);
    t6 = (t0 + 5848U);
    t8 = ieee_p_1242562249_sub_2177518728674633585_1035706684(IEEE_P_1242562249, t3, t2, t1, t7, t6);
    t9 = (t0 + 1888U);
    t11 = *((char **)t9);
    t9 = (t11 + 0);
    t12 = (t3 + 12U);
    t5 = *((unsigned int *)t12);
    t15 = (1U * t5);
    memcpy(t9, t8, t15);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t5 = (33 - 15);
    t15 = (t5 * 1U);
    t17 = (0 + t15);
    t1 = (t2 + t17);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t10 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 15;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t18 = (0 - 15);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t6 = xsi_base_array_concat(t6, t3, t7, (char)99, (unsigned char)2, (char)97, t1, t10, (char)101);
    t9 = (t0 + 2008U);
    t11 = *((char **)t9);
    t9 = (t11 + 0);
    t19 = (1U + 16U);
    memcpy(t9, t6, t19);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t5 = (33 - 32);
    t15 = (t5 * 1U);
    t17 = (0 + t15);
    t1 = (t2 + t17);
    t6 = (t0 + 2128U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 17U);
    xsi_set_current_line(65, ng0);
    t1 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t3, 0, 15);
    t2 = (t0 + 2008U);
    t6 = *((char **)t2);
    t2 = (t0 + 5880U);
    t7 = (t0 + 2128U);
    t8 = *((char **)t7);
    t7 = (t0 + 5896U);
    t9 = ieee_p_1242562249_sub_1701011461141789389_1035706684(IEEE_P_1242562249, t10, t6, t2, t8, t7);
    t12 = ((IEEE_P_1242562249) + 2976);
    t11 = xsi_base_array_concat(t11, t20, t12, (char)97, t1, t3, (char)97, t9, t10, (char)101);
    t13 = (t0 + 2248U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t16 = (t3 + 12U);
    t5 = *((unsigned int *)t16);
    t5 = (t5 * 1U);
    t21 = (t10 + 12U);
    t15 = *((unsigned int *)t21);
    t17 = (1U * t15);
    t19 = (t5 + t17);
    memcpy(t13, t11, t19);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2008U);
    t2 = *((char **)t1);
    t1 = (t0 + 2128U);
    t6 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4000);
    t4 = xsi_vhdl_lessthan(t1, t2, 17U, t6, 17U);
    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2248U);
    t2 = *((char **)t1);
    t5 = (31 - 15);
    t15 = (t5 * 1U);
    t17 = (0 + t15);
    t1 = (t2 + t17);
    t6 = (t0 + 3624);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    t1 = (t0 + 3544);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4000);
    t12 = (t0 + 5800U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)99, (unsigned char)3, (char)97, t9, t12, (char)101);
    t13 = (t0 + 1648U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (1U + 16U);
    memcpy(t13, t8, t15);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 16U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(56, ng0);
    t9 = (t0 + 1192U);
    t11 = *((char **)t9);
    t12 = ((IEEE_P_2592010699) + 4000);
    t13 = (t0 + 5816U);
    t9 = xsi_base_array_concat(t9, t10, t12, (char)99, (unsigned char)3, (char)97, t11, t13, (char)101);
    t14 = (t0 + 1768U);
    t16 = *((char **)t14);
    t14 = (t16 + 0);
    t17 = (1U + 16U);
    memcpy(t14, t9, t17);
    goto LAB12;

LAB14:    t15 = 0;

LAB17:    if (t15 < 16U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t7 = (t2 + t15);
    t8 = (t1 + t15);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB15;

LAB19:    t15 = (t15 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(67, ng0);
    t7 = (t0 + 2248U);
    t8 = *((char **)t7);
    t7 = (t0 + 5912U);
    t9 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, 65537, 32);
    t11 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t3, t8, t7, t9, t10);
    t12 = (t0 + 2248U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    t14 = (t3 + 12U);
    t5 = *((unsigned int *)t14);
    t15 = (1U * t5);
    memcpy(t12, t11, t15);
    goto LAB21;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_idea_rcs2plus_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
