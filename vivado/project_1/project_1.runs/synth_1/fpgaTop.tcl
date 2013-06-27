# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
create_project -in_memory -part xc7k325tffg900-2
set_param project.compositeFile.enableAutoGeneration 0
read_verilog {
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncResetA.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncFIFO.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SyncBit.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/ResetInverter.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkCRC32.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO2.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkGMAC.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/TriState.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/SizedFIFO.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/MakeResetA.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO10.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/FIFO1.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/Counter.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/pt/Bluespec/lib/Verilog/BRAM2.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkQBGMAC.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkSenderDM1.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkReceiver.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkMLProducer.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkMLConsumer.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkMergeToWireDM1.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkMergeForkFDU.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkMergeForkFAU.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkHBDG2QABS.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkGbeQABS.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkFDU.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkFAU.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkAckTracker.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkAckAggregatorDM1.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/mkFTop_mm705.v
  /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/sources_1/imports/ome/cms005/Desktop/cms_v0/rtl/fpgaTop_mm705.v
}
read_xdc /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/constrs_1/imports/constrs/kc705.xdc
set_property used_in_implementation false [get_files /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.srcs/constrs_1/imports/constrs/kc705.xdc]

set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/cms005/Desktop/cms_v0/vivado/project_1/project_1.data/wt [current_project]
set_property parent.project_dir /home/cms005/Desktop/cms_v0/vivado/project_1 [current_project]
synth_design -top fpgaTop -part xc7k325tffg900-2
write_checkpoint fpgaTop.dcp
report_utilization -file fpgaTop_utilization_synth.rpt -pb fpgaTop_utilization_synth.pb
