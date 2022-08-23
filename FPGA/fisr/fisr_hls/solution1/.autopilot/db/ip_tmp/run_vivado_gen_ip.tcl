create_project prj -part xc7z020-clg400-1 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/vhdl"
source "C:/Users/Kamil/Desktop/fisr/fisr_hls/solution1/syn/vhdl/fisr_ap_fmul_2_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips fisr_ap_fmul_2_max_dsp_32]]
}
source "C:/Users/Kamil/Desktop/fisr/fisr_hls/solution1/syn/vhdl/fisr_ap_fsub_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips fisr_ap_fsub_3_full_dsp_32]]
}
