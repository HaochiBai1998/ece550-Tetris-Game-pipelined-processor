transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {mux_2_7_1200mv_85c_slow.vo}

vlog -vlog01compat -work work +incdir+C:/altera_lite/16.0/ECE_550/Lab_1 {C:/altera_lite/16.0/ECE_550/Lab_1/mux_2_tb.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  mux_2_tb

add wave *
view structure
view signals
run -all
