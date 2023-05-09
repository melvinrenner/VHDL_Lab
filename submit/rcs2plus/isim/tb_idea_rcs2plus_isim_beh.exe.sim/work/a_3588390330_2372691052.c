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
static const char *ng0 = "/home/ise/xilinxShare/submission_template/submit/rcs2plus/tb_idea_rcs2plus.vhd";



static void work_a_3588390330_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3872);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3872);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3588390330_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned int t14;
    unsigned char t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 4312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 8400);
    t5 = (t0 + 4760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 128U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 8528);
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 8544);
    t5 = (t0 + 4888);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 8560);
    t5 = (t0 + 4952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 8576);
    t5 = (t0 + 5016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5080);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 5080);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t3 = (1100 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 8592);
    t13 = 1;
    if (16U == 16U)
        goto LAB27;

LAB28:    t13 = 0;

LAB29:    if (t13 == 1)
        goto LAB24;

LAB25:    t12 = (unsigned char)0;

LAB26:    if (t12 == 1)
        goto LAB21;

LAB22:    t11 = (unsigned char)0;

LAB23:    if (t11 == 1)
        goto LAB18;

LAB19:    t10 = (unsigned char)0;

LAB20:    if (t10 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(121, ng0);
    t3 = (200 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t3);

LAB53:    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t34 = (t0 + 8656);
    xsi_report(t34, 15U, (unsigned char)0);
    goto LAB17;

LAB18:    t27 = (t0 + 2632U);
    t28 = *((char **)t27);
    t27 = (t0 + 8640);
    t30 = 1;
    if (16U == 16U)
        goto LAB45;

LAB46:    t30 = 0;

LAB47:    t10 = t30;
    goto LAB20;

LAB21:    t20 = (t0 + 2472U);
    t21 = *((char **)t20);
    t20 = (t0 + 8624);
    t23 = 1;
    if (16U == 16U)
        goto LAB39;

LAB40:    t23 = 0;

LAB41:    t11 = t23;
    goto LAB23;

LAB24:    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 8608);
    t16 = 1;
    if (16U == 16U)
        goto LAB33;

LAB34:    t16 = 0;

LAB35:    t12 = t16;
    goto LAB26;

LAB27:    t14 = 0;

LAB30:    if (t14 < 16U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t6 = (t4 + t14);
    t7 = (t2 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB28;

LAB32:    t14 = (t14 + 1);
    goto LAB30;

LAB33:    t17 = 0;

LAB36:    if (t17 < 16U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t18 = (t9 + t17);
    t19 = (t8 + t17);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB34;

LAB38:    t17 = (t17 + 1);
    goto LAB36;

LAB39:    t24 = 0;

LAB42:    if (t24 < 16U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t25 = (t21 + t24);
    t26 = (t20 + t24);
    if (*((unsigned char *)t25) != *((unsigned char *)t26))
        goto LAB40;

LAB44:    t24 = (t24 + 1);
    goto LAB42;

LAB45:    t31 = 0;

LAB48:    if (t31 < 16U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t32 = (t28 + t31);
    t33 = (t27 + t31);
    if (*((unsigned char *)t32) != *((unsigned char *)t33))
        goto LAB46;

LAB50:    t31 = (t31 + 1);
    goto LAB48;

LAB51:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 8671);
    t5 = (t0 + 4760);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 128U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 8799);
    t5 = (t0 + 4824);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 8815);
    t5 = (t0 + 4888);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 8831);
    t5 = (t0 + 4952);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 8847);
    t5 = (t0 + 5016);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 5080);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t3);

LAB57:    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB52:    goto LAB51;

LAB54:    goto LAB52;

LAB55:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5080);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);
    t3 = (1100 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t3);

LAB61:    *((char **)t1) = &&LAB62;
    goto LAB1;

LAB56:    goto LAB55;

LAB58:    goto LAB56;

LAB59:    xsi_set_current_line(134, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 8863);
    t13 = 1;
    if (16U == 16U)
        goto LAB74;

LAB75:    t13 = 0;

LAB76:    if (t13 == 1)
        goto LAB71;

LAB72:    t12 = (unsigned char)0;

LAB73:    if (t12 == 1)
        goto LAB68;

LAB69:    t11 = (unsigned char)0;

LAB70:    if (t11 == 1)
        goto LAB65;

LAB66:    t10 = (unsigned char)0;

LAB67:    if (t10 == 0)
        goto LAB63;

LAB64:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 8942);
    xsi_report(t2, 22U, (unsigned char)0);
    xsi_set_current_line(138, ng0);

LAB100:    *((char **)t1) = &&LAB101;
    goto LAB1;

LAB60:    goto LAB59;

LAB62:    goto LAB60;

LAB63:    t34 = (t0 + 8927);
    xsi_report(t34, 15U, (unsigned char)0);
    goto LAB64;

LAB65:    t27 = (t0 + 2632U);
    t28 = *((char **)t27);
    t27 = (t0 + 8911);
    t30 = 1;
    if (16U == 16U)
        goto LAB92;

LAB93:    t30 = 0;

LAB94:    t10 = t30;
    goto LAB67;

LAB68:    t20 = (t0 + 2472U);
    t21 = *((char **)t20);
    t20 = (t0 + 8895);
    t23 = 1;
    if (16U == 16U)
        goto LAB86;

LAB87:    t23 = 0;

LAB88:    t11 = t23;
    goto LAB70;

LAB71:    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 8879);
    t16 = 1;
    if (16U == 16U)
        goto LAB80;

LAB81:    t16 = 0;

LAB82:    t12 = t16;
    goto LAB73;

LAB74:    t14 = 0;

LAB77:    if (t14 < 16U)
        goto LAB78;
    else
        goto LAB76;

LAB78:    t6 = (t4 + t14);
    t7 = (t2 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB75;

LAB79:    t14 = (t14 + 1);
    goto LAB77;

LAB80:    t17 = 0;

LAB83:    if (t17 < 16U)
        goto LAB84;
    else
        goto LAB82;

LAB84:    t18 = (t9 + t17);
    t19 = (t8 + t17);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB81;

LAB85:    t17 = (t17 + 1);
    goto LAB83;

LAB86:    t24 = 0;

LAB89:    if (t24 < 16U)
        goto LAB90;
    else
        goto LAB88;

LAB90:    t25 = (t21 + t24);
    t26 = (t20 + t24);
    if (*((unsigned char *)t25) != *((unsigned char *)t26))
        goto LAB87;

LAB91:    t24 = (t24 + 1);
    goto LAB89;

LAB92:    t31 = 0;

LAB95:    if (t31 < 16U)
        goto LAB96;
    else
        goto LAB94;

LAB96:    t32 = (t28 + t31);
    t33 = (t27 + t31);
    if (*((unsigned char *)t32) != *((unsigned char *)t33))
        goto LAB93;

LAB97:    t31 = (t31 + 1);
    goto LAB95;

LAB98:    goto LAB2;

LAB99:    goto LAB98;

LAB101:    goto LAB99;

}


extern void work_a_3588390330_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3588390330_2372691052_p_0,(void *)work_a_3588390330_2372691052_p_1};
	xsi_register_didat("work_a_3588390330_2372691052", "isim/tb_idea_rcs2plus_isim_beh.exe.sim/work/a_3588390330_2372691052.didat");
	xsi_register_executes(pe);
}
