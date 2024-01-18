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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003880870012_2018721085_init();
    work_m_00000000000284268343_3224323566_init();
    work_m_00000000004007144133_0112637215_init();
    work_m_00000000001259961603_4144471541_init();
    work_m_00000000004172630715_0757879789_init();
    work_m_00000000000533209821_1621229167_init();
    work_m_00000000000040717078_1785967555_init();
    work_m_00000000003136089978_1579609468_init();
    work_m_00000000001629547617_1907459465_init();
    work_m_00000000001341222917_0886308060_init();
    work_m_00000000002040145802_2042706489_init();
    work_m_00000000002377069233_2137656763_init();
    work_m_00000000003644513415_4140825114_init();
    work_m_00000000004109400852_3444095351_init();
    work_m_00000000003384212165_2181625025_init();
    work_m_00000000002777141006_3877310806_init();
    work_m_00000000001292392995_1131260308_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001292392995_1131260308");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
