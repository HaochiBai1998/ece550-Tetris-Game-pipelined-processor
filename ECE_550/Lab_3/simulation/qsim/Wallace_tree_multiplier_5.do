onerror {exit -code 1}
vlib work
vlog -work work Wallace_tree_multiplier_5.vo
vlog -work work Wallace_tree_multiplier_5_Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Wallace_tree_multiplier_5_vlg_vec_tst -voptargs="+acc"
vcd file -direction Wallace_tree_multiplier_5.msim.vcd
vcd add -internal Wallace_tree_multiplier_5_vlg_vec_tst/*
vcd add -internal Wallace_tree_multiplier_5_vlg_vec_tst/i1/*
run -all
quit -f
