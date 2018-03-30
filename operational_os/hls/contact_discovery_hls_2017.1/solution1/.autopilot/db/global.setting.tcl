
set TopModule "contact_discovery"
set ClockPeriod "10.000000"
set ClockList {ap_clk}
set multiClockList {}
set PortClockMap {}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 1
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle "control"
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set fsmEncStyle "onehot"
set maxFanout "0"
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xczu9eg:-ffvb1156:-1-i"
set SourceFiles {sc {} c ../../contact_discovery/src/contact_discovery.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile {/home/aimee/root_of_trust/operational_os/hls/contact_discovery_hls_2017.1/solution1/solution1.directive}
set TBFiles {verilog {../../contact_discovery/src/sha512.h ../../contact_discovery/src/sha512.c ../../contact_discovery/src/fixedint.h ../../contact_discovery/src/contact_discovery_tb.cpp} bc {../../contact_discovery/src/sha512.h ../../contact_discovery/src/sha512.c ../../contact_discovery/src/fixedint.h ../../contact_discovery/src/contact_discovery_tb.cpp} sc {../../contact_discovery/src/sha512.h ../../contact_discovery/src/sha512.c ../../contact_discovery/src/fixedint.h ../../contact_discovery/src/contact_discovery_tb.cpp} vhdl {../../contact_discovery/src/sha512.h ../../contact_discovery/src/sha512.c ../../contact_discovery/src/fixedint.h ../../contact_discovery/src/contact_discovery_tb.cpp} c {} cas {../../contact_discovery/src/sha512.h ../../contact_discovery/src/sha512.c ../../contact_discovery/src/fixedint.h ../../contact_discovery/src/contact_discovery_tb.cpp}}
set SpecLanguage "C"
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/zynquplus/zynquplus xilinx/zynquplus/zynquplus_fpv7}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution1.aps"
set AvePath "../.."
set HPFPO "0"
