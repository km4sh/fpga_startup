onerror {quit -f}
vlib work
vlog -work work q2.vo
vlog -work work q2.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.edgedetect_vlg_vec_tst
vcd file -direction q2.msim.vcd
vcd add -internal edgedetect_vlg_vec_tst/*
vcd add -internal edgedetect_vlg_vec_tst/i1/*
add wave /*
run -all
