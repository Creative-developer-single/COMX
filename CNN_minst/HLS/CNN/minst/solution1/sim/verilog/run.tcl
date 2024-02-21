
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set predict_group [add_wave_group predict(wire) -into $coutputgroup]
add_wave /apatb_run_top/AESL_inst_run/predict_ap_vld -into $predict_group -color #ffff00 -radix hex
add_wave /apatb_run_top/AESL_inst_run/predict -into $predict_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set data_in_group [add_wave_group data_in(wire) -into $cinputgroup]
add_wave /apatb_run_top/AESL_inst_run/data_in -into $data_in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_run_top/AESL_inst_run/ap_start -into $blocksiggroup
add_wave /apatb_run_top/AESL_inst_run/ap_done -into $blocksiggroup
add_wave /apatb_run_top/AESL_inst_run/ap_idle -into $blocksiggroup
add_wave /apatb_run_top/AESL_inst_run/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_run_top/AESL_inst_run/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_run_top/AESL_inst_run/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_run_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_run_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_run_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_run_top/LENGTH_data_in -into $tb_portdepth_group -radix hex
add_wave /apatb_run_top/LENGTH_predict -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_predict_group [add_wave_group predict(wire) -into $tbcoutputgroup]
add_wave /apatb_run_top/predict_ap_vld -into $tb_predict_group -color #ffff00 -radix hex
add_wave /apatb_run_top/predict -into $tb_predict_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_data_in_group [add_wave_group data_in(wire) -into $tbcinputgroup]
add_wave /apatb_run_top/data_in -into $tb_data_in_group -radix hex
save_wave_config run.wcfg
run all
quit

