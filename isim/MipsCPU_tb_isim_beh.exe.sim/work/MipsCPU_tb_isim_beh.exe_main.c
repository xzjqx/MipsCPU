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
    unisims_ver_m_00000000001946988858_2297623829_init();
    unisims_ver_m_00000000000061931642_1645440072_init();
    unisims_ver_m_00000000003084551676_2693019893_init();
    unisims_ver_m_00000000003266096158_2593380106_init();
    work_m_00000000001050728562_3544005604_init();
    work_m_00000000000720736468_3508565487_init();
    work_m_00000000002804518902_3229468941_init();
    work_m_00000000002523033739_1733832700_init();
    work_m_00000000004247628103_2352116331_init();
    work_m_00000000000750086428_0345418465_init();
    work_m_00000000001721005491_1648104263_init();
    work_m_00000000000359879509_0147336180_init();
    work_m_00000000000310395752_0103510313_init();
    work_m_00000000000868422808_3666345988_init();
    work_m_00000000002717047244_4024466370_init();
    work_m_00000000001513748604_4284950183_init();
    work_m_00000000002714317222_2520395732_init();
    work_m_00000000003478205308_0338038210_init();
    work_m_00000000000130072075_3975733304_init();
    work_m_00000000000227970054_2593248389_init();
    work_m_00000000003511177374_0617755897_init();
    work_m_00000000002089758265_3242337452_init();
    work_m_00000000003798952462_0571925098_init();
    work_m_00000000004244751496_3438569883_init();
    work_m_00000000003798952462_4084061819_init();
    work_m_00000000002897265921_4042050711_init();
    work_m_00000000001153972676_3904863995_init();
    work_m_00000000000121898138_0502188712_init();
    work_m_00000000001786598552_2629718190_init();
    work_m_00000000004008602954_1064693138_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000004008602954_1064693138");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}
