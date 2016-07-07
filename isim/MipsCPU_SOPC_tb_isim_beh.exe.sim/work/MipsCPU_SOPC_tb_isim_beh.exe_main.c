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
    work_m_00000000001622839862_1733832700_init();
    work_m_00000000000852959587_0345418465_init();
    work_m_00000000002723665490_1648104263_init();
    work_m_00000000001885255640_0147336180_init();
    work_m_00000000000472388537_0103510313_init();
    work_m_00000000000487372763_3666345988_init();
    work_m_00000000000823153533_4024466370_init();
    work_m_00000000003345050780_4284950183_init();
    work_m_00000000002856218469_2520395732_init();
    work_m_00000000003478205308_0338038210_init();
    work_m_00000000000255207646_2629718190_init();
    work_m_00000000003731846655_1015039846_init();
    work_m_00000000002299688328_0720364418_init();
    work_m_00000000000163443182_0958738288_init();
    work_m_00000000004093713498_2073120511_init();


    xsi_register_tops("work_m_00000000000163443182_0958738288");
    xsi_register_tops("work_m_00000000004093713498_2073120511");


    return xsi_run_simulation(argc, argv);

}
