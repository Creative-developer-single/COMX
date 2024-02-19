create_project prj -part xc7z020clg400-2 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "E:/FPGA/Xilinx/HLS/DWT/Demo/solution1/syn/verilog/DWT_ap_fadd_2_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DWT_ap_fadd_2_full_dsp_32]]
}
source "E:/FPGA/Xilinx/HLS/DWT/Demo/solution1/syn/verilog/DWT_ap_fmul_1_max_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips DWT_ap_fmul_1_max_dsp_32]]
}
