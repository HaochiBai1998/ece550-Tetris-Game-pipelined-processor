transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Project2 {C:/Users/hb/Desktop/ece550/ECE_550/Project2/register0.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Project2 {C:/Users/hb/Desktop/ece550/ECE_550/Project2/register.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Project2 {C:/Users/hb/Desktop/ece550/ECE_550/Project2/regfile.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Project2 {C:/Users/hb/Desktop/ece550/ECE_550/Project2/dec5_32.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Project2 {C:/Users/hb/Desktop/ece550/ECE_550/Project2/dec3_8.v}
vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Project2 {C:/Users/hb/Desktop/ece550/ECE_550/Project2/dec2_4.v}

vlog -vlog01compat -work work +incdir+C:/Users/hb/Desktop/ece550/ECE_550/Project2 {C:/Users/hb/Desktop/ece550/ECE_550/Project2/regfile_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  regfile_tb

add wave *
view structure
view signals
run -all
