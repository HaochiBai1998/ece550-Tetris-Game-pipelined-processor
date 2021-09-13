transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_1 {C:/altera_lite/16.0/ECE_550/Lab_1/mux_4.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_1 {C:/altera_lite/16.0/ECE_550/Lab_1/mux_32.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_1 {C:/altera_lite/16.0/ECE_550/Lab_1/mux_16.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_1 {C:/altera_lite/16.0/ECE_550/Lab_1/mux_8.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_1 {C:/altera_lite/16.0/ECE_550/Lab_1/mux_2.v}

vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_1 {C:/altera_lite/16.0/ECE_550/Lab_1/mux_32_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  mux_32_tb

add wave *
view structure
view signals
run -all
