transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Lab_3 {C:/Users/hb/Desktop/ece550/ECE_550/Lab_3/Wallace_tree_multiplier_5.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Lab_3 {C:/Users/hb/Desktop/ece550/ECE_550/Lab_3/and_combination_5.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Lab_3 {C:/Users/hb/Desktop/ece550/ECE_550/Lab_3/half_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Lab_3 {C:/Users/hb/Desktop/ece550/ECE_550/Lab_3/full_adder.v}

vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Lab_3 {C:/Users/hb/Desktop/ece550/ECE_550/Lab_3/Wallace_tree_multiplier_5_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  Wallace_tree_multiplier_5_tb

add wave *
view structure
view signals
run -all
