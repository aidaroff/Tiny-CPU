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
    work_m_00000000002969218414_1034755278_init();
    work_m_00000000000208065595_1273460063_init();
    work_m_00000000002077164322_4028292191_init();
    work_m_00000000000151011347_1266318936_init();
    work_m_00000000003730008479_4033376979_init();
    work_m_00000000000460485089_3551675602_init();
    work_m_00000000003057537269_2799873707_init();
    work_m_00000000001437094013_2681574071_init();
    work_m_00000000000235012679_3185700080_init();
    work_m_00000000002703436687_1379065827_init();
    work_m_00000000002898562151_1979693762_init();
    work_m_00000000000199283694_2319802268_init();
    work_m_00000000001078796743_2678537275_init();
    work_m_00000000001559231357_3734323252_init();
    work_m_00000000003030644499_0832438099_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003030644499_0832438099");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}