# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/vediccalc/vediccalc.cache/wt [current_project]
set_property parent.project_path D:/vediccalc/vediccalc.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/vediccalc/vediccalc.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/project_5/project_5.srcs/sources_1/new/FULLadder.v
  D:/project_1/project_1.srcs/sources_1/new/hadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/4bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_6bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/vedic2.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_8bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_12bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/vedic4.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_24bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_16bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/vedic8.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_48bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_32bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/vedic16.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_96bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/_64bitadder.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/vedic32.v
  D:/vediccalc/vediccalc.srcs/sources_1/new/vedic64.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top vedic64 -part xc7k70tfbv676-1


write_checkpoint -force -noxdef vedic64.dcp

catch { report_utilization -file vedic64_utilization_synth.rpt -pb vedic64_utilization_synth.pb }
