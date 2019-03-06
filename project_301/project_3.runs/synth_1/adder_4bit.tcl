# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k70tfbg676-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_vhdl -library xil_defaultlib C:/Users/zhangbb/Desktop/project_3/project_3.srcs/sources_1/new/adder_4bit.vhd
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/zhangbb/Desktop/project_3/project_3.cache/wt [current_project]
set_property parent.project_dir C:/Users/zhangbb/Desktop/project_3 [current_project]
catch { write_hwdef -file adder_4bit.hwdef }
synth_design -top adder_4bit -part xc7k70tfbg676-1
write_checkpoint adder_4bit.dcp
report_utilization -file adder_4bit_utilization_synth.rpt -pb adder_4bit_utilization_synth.pb
