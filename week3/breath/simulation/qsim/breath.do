onerror {quit -f}
vlib work
vlog -work work breath.vo
vlog -work work breath.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.breath_vlg_vec_tst
vcd file -direction breath.msim.vcd
vcd add -internal breath_vlg_vec_tst/*
vcd add -internal breath_vlg_vec_tst/i1/*
add wave /*
run -all
