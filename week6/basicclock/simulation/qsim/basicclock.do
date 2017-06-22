onerror {quit -f}
vlib work
vlog -work work basicclock.vo
vlog -work work basicclock.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.rtc_vlg_vec_tst
vcd file -direction basicclock.msim.vcd
vcd add -internal rtc_vlg_vec_tst/*
vcd add -internal rtc_vlg_vec_tst/i1/*
add wave /*
run -all
