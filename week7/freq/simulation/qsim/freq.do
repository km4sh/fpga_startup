onerror {quit -f}
vlib work
vlog -work work freq.vo
vlog -work work freq.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.digitleds_vlg_vec_tst
vcd file -direction freq.msim.vcd
vcd add -internal digitleds_vlg_vec_tst/*
vcd add -internal digitleds_vlg_vec_tst/i1/*
add wave /*
run -all
