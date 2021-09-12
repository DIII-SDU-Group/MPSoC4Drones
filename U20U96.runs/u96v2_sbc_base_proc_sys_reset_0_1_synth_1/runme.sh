#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vitis/2020.2/bin:/tools/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2020.2/bin
else
  PATH=/tools/Xilinx/Vitis/2020.2/bin:/tools/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/training/Projects/bsp_build_tests/test_tag/u96v2_sbc_base/hdl/projects/u96v2_sbc_base_2020_2/u96v2_sbc_base.runs/u96v2_sbc_base_proc_sys_reset_0_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log u96v2_sbc_base_proc_sys_reset_0_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source u96v2_sbc_base_proc_sys_reset_0_1.tcl
