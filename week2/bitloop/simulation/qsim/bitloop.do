onerror {quit -f}
vlib work
vlog -work work bitloop.vo
vlog -work work bitloop.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bitloop_vlg_vec_tst
vcd file -direction bitloop.msim.vcd
vcd add -internal bitloop_vlg_vec_tst/*
vcd add -internal bitloop_vlg_vec_tst/i1/*
add wave /*
run -all
