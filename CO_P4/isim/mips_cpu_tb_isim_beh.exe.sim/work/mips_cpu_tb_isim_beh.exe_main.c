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
    work_m_00000000002125777995_3224323566_init();
    work_m_00000000003328677049_4144471541_init();
    work_m_00000000001295498996_1785967555_init();
    work_m_00000000000533209821_1621229167_init();
    work_m_00000000003244940584_0886308060_init();
    work_m_00000000002990865019_2924402094_init();
    work_m_00000000001276849848_0757879789_init();
    work_m_00000000002939129320_3877310806_init();
    work_m_00000000002047498008_0909027239_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002047498008_0909027239");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
