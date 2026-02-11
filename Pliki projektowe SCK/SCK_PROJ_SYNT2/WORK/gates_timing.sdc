# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.13-s093_1 on Thu Jan 16 11:04:59 CET 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design EXE

set_load -pin_load 1.0 [get_ports {o_flag[3]}]
set_load -pin_load 1.0 [get_ports {o_flag[2]}]
set_load -pin_load 1.0 [get_ports {o_flag[1]}]
set_load -pin_load 1.0 [get_ports {o_flag[0]}]
set_load -pin_load 1.0 [get_ports {o_data[5]}]
set_load -pin_load 1.0 [get_ports {o_data[4]}]
set_load -pin_load 1.0 [get_ports {o_data[3]}]
set_load -pin_load 1.0 [get_ports {o_data[2]}]
set_load -pin_load 1.0 [get_ports {o_data[1]}]
set_load -pin_load 1.0 [get_ports {o_data[0]}]
set_max_delay 50 -from [list \
  [get_ports {i_oper[2]}]  \
  [get_ports {i_oper[1]}]  \
  [get_ports {i_oper[0]}]  \
  [get_ports {i_reg0[3]}]  \
  [get_ports {i_reg0[2]}]  \
  [get_ports {i_reg0[1]}]  \
  [get_ports {i_reg0[0]}]  \
  [get_ports {i_reg1[3]}]  \
  [get_ports {i_reg1[2]}]  \
  [get_ports {i_reg1[1]}]  \
  [get_ports {i_reg1[0]}]  \
  [get_ports {i_reg2[3]}]  \
  [get_ports {i_reg2[2]}]  \
  [get_ports {i_reg2[1]}]  \
  [get_ports {i_reg2[0]}]  \
  [get_ports {i_data2[5]}]  \
  [get_ports {i_data2[4]}]  \
  [get_ports {i_data2[3]}]  \
  [get_ports {i_data2[2]}]  \
  [get_ports {i_data2[1]}]  \
  [get_ports {i_data2[0]}]  \
  [get_ports {i_data[5]}]  \
  [get_ports {i_data[4]}]  \
  [get_ports {i_data[3]}]  \
  [get_ports {i_data[2]}]  \
  [get_ports {i_data[1]}]  \
  [get_ports {i_data[0]}]  \
  [get_ports i_imm]  \
  [get_ports i_clk]  \
  [get_ports i_rsn] ] -to [list \
  [get_ports {o_flag[3]}]  \
  [get_ports {o_flag[2]}]  \
  [get_ports {o_flag[1]}]  \
  [get_ports {o_flag[0]}]  \
  [get_ports {o_data[5]}]  \
  [get_ports {o_data[4]}]  \
  [get_ports {o_data[3]}]  \
  [get_ports {o_data[2]}]  \
  [get_ports {o_data[1]}]  \
  [get_ports {o_data[0]}] ]
group_path -name cg_enable_group_default -through [list \
  [get_pins regs2_RC_CG_HIER_INST0/enable]  \
  [get_pins regs2_RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST1/enable]  \
  [get_pins regs2_RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST2/enable]  \
  [get_pins regs2_RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST3/enable]  \
  [get_pins regs2_RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST4/enable]  \
  [get_pins regs2_RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST5/enable]  \
  [get_pins regs2_RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST6/enable]  \
  [get_pins regs2_RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST7/enable]  \
  [get_pins regs2_RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST8/enable]  \
  [get_pins regs2_RC_CG_HIER_INST8/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST9/enable]  \
  [get_pins regs2_RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST10/enable]  \
  [get_pins regs2_RC_CG_HIER_INST10/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST0/enable]  \
  [get_pins regs2_RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST1/enable]  \
  [get_pins regs2_RC_CG_HIER_INST1/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST2/enable]  \
  [get_pins regs2_RC_CG_HIER_INST2/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST3/enable]  \
  [get_pins regs2_RC_CG_HIER_INST3/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST4/enable]  \
  [get_pins regs2_RC_CG_HIER_INST4/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST5/enable]  \
  [get_pins regs2_RC_CG_HIER_INST5/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST6/enable]  \
  [get_pins regs2_RC_CG_HIER_INST6/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST7/enable]  \
  [get_pins regs2_RC_CG_HIER_INST7/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST8/enable]  \
  [get_pins regs2_RC_CG_HIER_INST8/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST9/enable]  \
  [get_pins regs2_RC_CG_HIER_INST9/RC_CGIC_INST/E]  \
  [get_pins regs2_RC_CG_HIER_INST10/enable]  \
  [get_pins regs2_RC_CG_HIER_INST10/RC_CGIC_INST/E] ]
set_clock_gating_check -setup 0.0 
set_max_capacitance 0.03 [get_ports {i_oper[2]}]
set_max_capacitance 0.03 [get_ports {i_oper[1]}]
set_max_capacitance 0.03 [get_ports {i_oper[0]}]
set_max_capacitance 0.03 [get_ports {i_reg0[3]}]
set_max_capacitance 0.03 [get_ports {i_reg0[2]}]
set_max_capacitance 0.03 [get_ports {i_reg0[1]}]
set_max_capacitance 0.03 [get_ports {i_reg0[0]}]
set_max_capacitance 0.03 [get_ports {i_reg1[3]}]
set_max_capacitance 0.03 [get_ports {i_reg1[2]}]
set_max_capacitance 0.03 [get_ports {i_reg1[1]}]
set_max_capacitance 0.03 [get_ports {i_reg1[0]}]
set_max_capacitance 0.03 [get_ports {i_reg2[3]}]
set_max_capacitance 0.03 [get_ports {i_reg2[2]}]
set_max_capacitance 0.03 [get_ports {i_reg2[1]}]
set_max_capacitance 0.03 [get_ports {i_reg2[0]}]
set_max_capacitance 0.03 [get_ports {i_data2[5]}]
set_max_capacitance 0.03 [get_ports {i_data2[4]}]
set_max_capacitance 0.03 [get_ports {i_data2[3]}]
set_max_capacitance 0.03 [get_ports {i_data2[2]}]
set_max_capacitance 0.03 [get_ports {i_data2[1]}]
set_max_capacitance 0.03 [get_ports {i_data2[0]}]
set_max_capacitance 0.03 [get_ports {i_data[5]}]
set_max_capacitance 0.03 [get_ports {i_data[4]}]
set_max_capacitance 0.03 [get_ports {i_data[3]}]
set_max_capacitance 0.03 [get_ports {i_data[2]}]
set_max_capacitance 0.03 [get_ports {i_data[1]}]
set_max_capacitance 0.03 [get_ports {i_data[0]}]
set_max_capacitance 0.03 [get_ports i_imm]
set_max_capacitance 0.03 [get_ports i_clk]
set_max_capacitance 0.03 [get_ports i_rsn]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY1HDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY1HDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY2HDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY2HDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY4HDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY4HDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY8HDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/DLY8HDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCNHDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCNHDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCNHDX2]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCNHDX4]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCPHDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCPHDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCPHDX2]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LGCPHDX4]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCNHDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCNHDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCNHDX2]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCNHDX4]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCPHDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCPHDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCPHDX2]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSGCPHDX4]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCNHDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCNHDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCNHDX2]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCNHDX4]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCPHDX0]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCPHDX1]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCPHDX2]
set_dont_use false [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/LSOGCPHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFQHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRQHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFRSQHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFFSQHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFR2HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFR2HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFR4HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFR4HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFR8HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFR8HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQ2HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQ2HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQ4HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQ4HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQ8HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQ8HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRQHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRR2HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRR2HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRR4HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRR4HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRR8HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRR8HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQ2HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQ2HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQ4HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQ4HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQ8HDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQ8HDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRQHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRRSQHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSHDX4]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSQHDX0]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSQHDX1]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSQHDX2]
set_dont_use true [get_lib_cells D_CELLS_HD_LPMOS_slow_1_62V_125C/SDFRSQHDX4]
