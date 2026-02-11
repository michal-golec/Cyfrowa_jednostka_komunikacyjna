#################################################################################
#
# Created by Genus(TM) Synthesis Solution 22.13-s093_1 on Thu Jan 16 11:05:00 CET 2025
#
#################################################################################

## library_sets
create_library_set -name lib_ss \
    -timing { /dk/xfab/PDK/xh018/diglibs/D_CELLS_HD/v4_0/liberty_LPMOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LPMOS_slow_1_62V_125C.lib }
create_library_set -name lib_ff \
    -timing { /dk/xfab/PDK/xh018/diglibs/D_CELLS_HD/v4_0/liberty_LPMOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LPMOS_fast_1_98V_m40C.lib }
create_library_set -name lib_tt \
    -timing { /dk/xfab/PDK/xh018/diglibs/D_CELLS_HD/v4_0/liberty_LPMOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LPMOS_typ_1_80V_25C.lib }

## timing_condition
create_timing_condition -name tc_ss \
    -library_sets { lib_ss }
create_timing_condition -name tc_ff \
    -library_sets { lib_ff }
create_timing_condition -name tc_tt \
    -library_sets { lib_tt }

## rc_corner
create_rc_corner -name rc_ss \
    -temperature 125.0 \
    -qrc_tech /dk/xfab/PDK/xh018/cadence/v8_1/QRC_assura/v8_1_1/XH018_1143/QRC-Max/qrcTechFile \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0} \
    -post_route_clock_cross_cap {1.0 1.0 1.0}
create_rc_corner -name rc_ff \
    -temperature -40.0 \
    -qrc_tech /dk/xfab/PDK/xh018/cadence/v8_1/QRC_assura/v8_1_1/XH018_1143/QRC-Min/qrcTechFile \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0} \
    -post_route_clock_cross_cap {1.0 1.0 1.0}
create_rc_corner -name rc_tt \
    -temperature 25.0 \
    -qrc_tech /dk/xfab/PDK/xh018/cadence/v8_1/QRC_assura/v8_1_1/XH018_1143/QRC-Typ/qrcTechFile \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0} \
    -post_route_clock_cross_cap {1.0 1.0 1.0}
