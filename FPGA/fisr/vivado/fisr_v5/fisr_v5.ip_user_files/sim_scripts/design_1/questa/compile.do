vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_21
vlib questa_lib/msim/microblaze_v11_0_1
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_23
vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_15
vlib questa_lib/msim/floating_point_v7_1_8
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_16
vlib questa_lib/msim/blk_mem_gen_v8_4_3
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_19
vlib questa_lib/msim/fifo_generator_v13_2_4
vlib questa_lib/msim/axi_data_fifo_v2_1_18
vlib questa_lib/msim/axi_crossbar_v2_1_20
vlib questa_lib/msim/axi_intc_v4_1_13
vlib questa_lib/msim/xlconcat_v2_1_3
vlib questa_lib/msim/mdm_v3_2_16
vlib questa_lib/msim/proc_sys_reset_v5_0_13

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 questa_lib/msim/axi_gpio_v2_0_21
vmap microblaze_v11_0_1 questa_lib/msim/microblaze_v11_0_1
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_23 questa_lib/msim/axi_uartlite_v2_0_23
vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 questa_lib/msim/mult_gen_v12_0_15
vmap floating_point_v7_1_8 questa_lib/msim/floating_point_v7_1_8
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_16 questa_lib/msim/lmb_bram_if_cntlr_v4_0_16
vmap blk_mem_gen_v8_4_3 questa_lib/msim/blk_mem_gen_v8_4_3
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 questa_lib/msim/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 questa_lib/msim/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 questa_lib/msim/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 questa_lib/msim/axi_crossbar_v2_1_20
vmap axi_intc_v4_1_13 questa_lib/msim/axi_intc_v4_1_13
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3
vmap mdm_v3_2_16 questa_lib/msim/mdm_v3_2_16
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vcom -work microblaze_v11_0_1 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/f8c3/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_23 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/0315/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_8 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1eaf/hdl/vhdl/fisr_fmul_32ns_32cud.vhd" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1eaf/hdl/vhdl/fisr_fsub_32ns_32bkb.vhd" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1eaf/hdl/vhdl/fisr.vhd" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1eaf/hdl/ip/fisr_ap_fmul_2_max_dsp_32.vhd" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1eaf/hdl/ip/fisr_ap_fsub_3_full_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_fisr_0_0/sim/design_1_fisr_0_0.vhd" \
"../../../bd/design_1/ipshared/1288/hdl/fisr_controller_v2_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/1288/hdl/fisr_controller_v2_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_fisr_controller_v2_0_0/sim/design_1_fisr_controller_v2_0_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_16 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/6335/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_3 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_intc_v4_1_13 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c0fe/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_3 -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_16 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/550e/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/c923" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../fisr_v5.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \
"../../../bd/design_1/ip/design_1_reset_inverter_0_0/sim/design_1_reset_inverter_0_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

