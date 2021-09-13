onerror {exit -code 1}
vlib work
vlog -work work One_bit_adder_NAND_imple.vo
vlog -work work One_bit_adder_NAND_imple_Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.One_bit_adder_NAND_imple_vlg_vec_tst -voptargs="+acc"
vcd file -direction One_bit_adder_NAND_imple.msim.vcd
vcd add -internal One_bit_adder_NAND_imple_vlg_vec_tst/*
vcd add -internal One_bit_adder_NAND_imple_vlg_vec_tst/i1/*
run -all
quit -f
