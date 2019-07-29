# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir v:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.tmp/digital_recognition_v1_1_project/digital_recognition_v1_1_project.cache/wt [current_project]
set_property parent.project_path v:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.tmp/digital_recognition_v1_1_project/digital_recognition_v1_1_project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys-a7-100t:part0:1.0 [current_project]
set_property ip_repo_paths {
  v:/hardware/m3_for_arty_a7/ip_repo/send_line_data_1.0
  v:/hardware/m3_for_arty_a7/ip_repo/char_recongize_5thing_1.0
  v:/hardware/m3_for_arty_a7/ip_repo/char_5_1.0
  v:/hardware/m3_for_arty_a7/ip_repo/one_char_read_40bit_1.0
  v:/vivado/Arm_ipi_repository
} [current_project]
set_property ip_output_repo v:/hardware/m3_for_arty_a7/m3_for_arty_a7/m3_for_arty_a7.tmp/digital_recognition_v1_1_project/digital_recognition_v1_1_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  v:/vivado/Arm_ipi_repository/number_recgonize/src/fifo_y.v
  v:/vivado/Arm_ipi_repository/number_recgonize/src/digital_recognition.v
}
read_ip -quiet v:/vivado/Arm_ipi_repository/number_recgonize/src/digital_ram/digital_ram.xci
set_property used_in_implementation false [get_files -all v:/vivado/Arm_ipi_repository/number_recgonize/src/digital_ram/digital_ram_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top digital_recognition -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef digital_recognition.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file digital_recognition_utilization_synth.rpt -pb digital_recognition_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
