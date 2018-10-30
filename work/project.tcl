set projDir "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/planAhead"
set projName "16bitALU"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/mojo_top_0.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/alu_1.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/reset_conditioner_2.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/display_3.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/tester16_4.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/comp_5.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/sixtnbitfa_6.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/mul_7.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/shift_8.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/boolean_9.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/counter_10.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v" "F:/Personal/Term4/ComputationStructures/1d/8bitALUgame-master/16bitALU/work/verilog/fa_11.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
