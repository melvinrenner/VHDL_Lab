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
static const char *ng0 = "/home/ise/xilinxShare/submission_template/submit/rcs2/roundcounter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );


static void work_a_3421611284_3212880686_p_0(char *t0)
{
    char t11[16];
    char t18[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8};

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3944);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 6912U);
    t4 = (t0 + 6952);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t2 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB19;

LAB21:    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 6912U);
    t4 = (t0 + 6956);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB27;

LAB28:
LAB20:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 6912U);
    t4 = (t0 + 6964);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t11);
    if (t2 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 4280);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB33:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 4344);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t12 = (3 - 3);
    t13 = (t12 * -1);
    t19 = (1U * t13);
    t25 = (0 + t19);
    t1 = (t3 + t25);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 4408);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB6:    xsi_set_current_line(61, ng0);
    t6 = (t0 + 4024);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 4088);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6944);
    t4 = (t0 + 4216);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t4);

LAB11:    goto LAB5;

LAB7:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 4024);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4088);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 4152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4024);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB5;

LAB9:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 4152);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 6912U);
    t6 = (t0 + 6948);
    t8 = (t11 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t13;
    t14 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t1, t6, t11);
    if (t14 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 4152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB17:    goto LAB14;

LAB16:    xsi_set_current_line(78, ng0);
    t9 = (t0 + 4152);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)0;
    xsi_driver_first_trans_fast(t9);
    goto LAB17;

LAB19:    xsi_set_current_line(91, ng0);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t5 = *((unsigned char *)t9);
    t14 = (t5 == (unsigned char)3);
    if (t14 != 0)
        goto LAB22;

LAB24:
LAB23:    goto LAB20;

LAB22:    xsi_set_current_line(92, ng0);
    t8 = (t0 + 2472U);
    t10 = *((char **)t8);
    t8 = (t0 + 6912U);
    t15 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t18, t10, t8, 1);
    t16 = (t18 + 12U);
    t13 = *((unsigned int *)t16);
    t19 = (1U * t13);
    t20 = (4U != t19);
    if (t20 == 1)
        goto LAB25;

LAB26:    t17 = (t0 + 4216);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 4U);
    xsi_driver_first_trans_fast(t17);
    goto LAB23;

LAB25:    xsi_size_not_matching(4U, t19, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(95, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t5 = *((unsigned char *)t9);
    t14 = (t5 == (unsigned char)3);
    if (t14 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB20;

LAB29:    xsi_set_current_line(96, ng0);
    t8 = (t0 + 6960);
    t15 = (t0 + 4216);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 4U);
    xsi_driver_first_trans_fast(t15);
    goto LAB30;

LAB32:    xsi_set_current_line(102, ng0);
    t8 = (t0 + 4280);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB33;

}


extern void work_a_3421611284_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3421611284_3212880686_p_0};
	xsi_register_didat("work_a_3421611284_3212880686", "isim/tb_idea_rcs2_isim_beh.exe.sim/work/a_3421611284_3212880686.didat");
	xsi_register_executes(pe);
}
