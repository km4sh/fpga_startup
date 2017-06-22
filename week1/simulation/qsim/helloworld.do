onerror {quit -f}
vlib work
vlog -work work helloworld.vo
vlog -work work helloworld.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.week1_vlg_vec_tst
vcd file -direction helloworld.msim.vcd
vcd add -internal week1_vlg_vec_tst/*
vcd add -internal week1_vlg_vec_tst/i1/*
add wave /*
run -all
