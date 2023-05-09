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
static const char *ng0 = "/home/ise/xilinxShare/submission_template/submit/rcs1/clk_div.vhd";



static void work_a_3125025815_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2824);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((int *)t8);
    t10 = (t9 + 1);
    t4 = (t0 + 2904);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((int *)t14) = t10;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t1 = (t9 < 81);
    if (t1 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t9 = *((int *)t4);
    t1 = (t9 < 162);
    if (t1 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2904);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((int *)t11) = 0;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2968);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2968);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB9;

}


extern void work_a_3125025815_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3125025815_3212880686_p_0};
	xsi_register_didat("work_a_3125025815_3212880686", "isim/idea_com_isim_beh.exe.sim/work/a_3125025815_3212880686.didat");
	xsi_register_executes(pe);
}
