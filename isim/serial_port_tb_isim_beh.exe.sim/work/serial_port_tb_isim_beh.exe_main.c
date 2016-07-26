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
    work_m_00000000003798952462_0571925098_init();
    work_m_00000000004244751496_3438569883_init();
    work_m_00000000003798952462_4084061819_init();
    work_m_00000000002897265921_4042050711_init();
    work_m_00000000001153972676_3904863995_init();
    work_m_00000000002219425519_1482677722_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000002219425519_1482677722");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}
