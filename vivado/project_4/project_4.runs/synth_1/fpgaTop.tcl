# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
create_project -in_memory -part xc7k325tffg900-2
set_param project.compositeFile.enableAutoGeneration 0
read_verilog {
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/SyncResetA.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/SyncFIFO.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/SyncBit.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/ResetInverter.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkCRC32.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/FIFO2.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkGMAC.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/TriState.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/SizedFIFO.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/MakeResetA.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/FIFO10.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/FIFO1.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/Counter.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/Verilog/BRAM2.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkQBGMAC.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkSenderDM1.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkReceiver.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkMLProducer.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkMLConsumer.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkMergeToWireDM1.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkMergeForkFDU.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkMergeForkFAU.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkHBDG2QABS.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkGbeQABS.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkFDU.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkFAU.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkAckTracker.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkAckAggregatorDM1.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/mkFTop_mm705.v
  /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/sources_1/imports/rtl/fpgaTop_mm705.v
}
read_xdc /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/constrs_1/imports/constrs/kc705.xdc
set_property used_in_implementation false [get_files /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.srcs/constrs_1/imports/constrs/kc705.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/cms005/Desktop/cms_v0/vivado/project_4/project_4.data/wt [current_project]
set_property parent.project_dir /home/cms005/Desktop/cms_v0/vivado/project_4 [current_project]
synth_design -top fpgaTop -part xc7k325tffg900-2
write_checkpoint fpgaTop.dcp
report_utilization -file fpgaTop_utilization_synth.rpt -pb fpgaTop_utilization_synth.pb
