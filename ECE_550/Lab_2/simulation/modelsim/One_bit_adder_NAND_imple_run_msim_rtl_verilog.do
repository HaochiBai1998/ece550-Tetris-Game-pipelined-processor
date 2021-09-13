transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_2 {C:/altera_lite/16.0/ECE_550/Lab_2/One_bit_adder_NAND_imple.v}

vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_2 {C:/altera_lite/16.0/ECE_550/Lab_2/One_bit_adder_NAND_imple_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  One_bit_adder_NAND_imple_tb

add wave *
view structure
view signals
run -all
