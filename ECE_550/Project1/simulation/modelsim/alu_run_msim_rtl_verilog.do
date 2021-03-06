transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/RCA_2.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_2_2bit.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/CSA_4.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_2_4bit.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/CSA_8.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_2_8bit.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/CSA_16.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_2_16bit.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/CSA_32.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/alu.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_2_32bit.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/not_8.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/not_16.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/not_32.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/and_4.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/and_16.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/and_32.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/and_8.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/SLL.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/SRA.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/and_1_5.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/isequal_5.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_1_4.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_1_8.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_1_16.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_1_32.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/xnor_5.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/addsub.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/not_4.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/full_adder.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_2_1bit.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_32.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_16.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_8.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/or_4.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_alu_selector.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_32.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_16.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_8.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_4.v}
vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/mux_2.v}

vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Project1 {C:/altera_lite/16.0/ECE_550/Project1/alu_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  alu_tb

add wave *
view structure
view signals
run -all
