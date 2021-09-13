onerror {exit -code 1}
vlib work
vlog -work work two_bit_adder.vo
vlog -work work two_bit_adder_Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.two_bit_adder_vlg_vec_tst -voptargs="+acc"
vcd file -direction two_bit_adder.msim.vcd
vcd add -internal two_bit_adder_vlg_vec_tst/*
vcd add -internal two_bit_adder_vlg_vec_tst/i1/*
run -all
quit -f
