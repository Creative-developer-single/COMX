
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set write_valid_group [add_wave_group write_valid(wire) -into $coutputgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/write_valid_ap_vld -into $write_valid_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/AESL_inst_DWT/write_valid -into $write_valid_group -radix hex
set read_over_group [add_wave_group read_over(wire) -into $coutputgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/read_over_ap_vld -into $read_over_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/AESL_inst_DWT/read_over -into $read_over_group -radix hex
set read_ready_group [add_wave_group read_ready(wire) -into $coutputgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/read_ready_ap_vld -into $read_ready_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/AESL_inst_DWT/read_ready -into $read_ready_group -radix hex
set data_out_group [add_wave_group data_out(wire) -into $coutputgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/data_out_ap_vld -into $data_out_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/AESL_inst_DWT/data_out -into $data_out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set read_valid_group [add_wave_group read_valid(wire) -into $cinputgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/read_valid -into $read_valid_group -radix hex
set data_group [add_wave_group data(wire) -into $cinputgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/data -into $data_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/ap_start -into $blocksiggroup
add_wave /apatb_DWT_top/AESL_inst_DWT/ap_done -into $blocksiggroup
add_wave /apatb_DWT_top/AESL_inst_DWT/ap_idle -into $blocksiggroup
add_wave /apatb_DWT_top/AESL_inst_DWT/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_DWT_top/AESL_inst_DWT/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_DWT_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_DWT_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_DWT_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_DWT_top/LENGTH_data_out -into $tb_portdepth_group -radix hex
add_wave /apatb_DWT_top/LENGTH_data -into $tb_portdepth_group -radix hex
add_wave /apatb_DWT_top/LENGTH_read_valid -into $tb_portdepth_group -radix hex
add_wave /apatb_DWT_top/LENGTH_read_ready -into $tb_portdepth_group -radix hex
add_wave /apatb_DWT_top/LENGTH_read_over -into $tb_portdepth_group -radix hex
add_wave /apatb_DWT_top/LENGTH_write_valid -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_write_valid_group [add_wave_group write_valid(wire) -into $tbcoutputgroup]
add_wave /apatb_DWT_top/write_valid_ap_vld -into $tb_write_valid_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/write_valid -into $tb_write_valid_group -radix hex
set tb_read_over_group [add_wave_group read_over(wire) -into $tbcoutputgroup]
add_wave /apatb_DWT_top/read_over_ap_vld -into $tb_read_over_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/read_over -into $tb_read_over_group -radix hex
set tb_read_ready_group [add_wave_group read_ready(wire) -into $tbcoutputgroup]
add_wave /apatb_DWT_top/read_ready_ap_vld -into $tb_read_ready_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/read_ready -into $tb_read_ready_group -radix hex
set tb_data_out_group [add_wave_group data_out(wire) -into $tbcoutputgroup]
add_wave /apatb_DWT_top/data_out_ap_vld -into $tb_data_out_group -color #ffff00 -radix hex
add_wave /apatb_DWT_top/data_out -into $tb_data_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_read_valid_group [add_wave_group read_valid(wire) -into $tbcinputgroup]
add_wave /apatb_DWT_top/read_valid -into $tb_read_valid_group -radix hex
set tb_data_group [add_wave_group data(wire) -into $tbcinputgroup]
add_wave /apatb_DWT_top/data -into $tb_data_group -radix hex
save_wave_config DWT.wcfg
run all
quit

