vlog -work work /home/kmash/altera/projects/week7/freq/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.freq_vlg_vec_tst
onerror {resume}
add wave {freq_vlg_vec_tst/i1/clk}
add wave {freq_vlg_vec_tst/i1/digout}
add wave {freq_vlg_vec_tst/i1/digout[3]}
add wave {freq_vlg_vec_tst/i1/digout[2]}
add wave {freq_vlg_vec_tst/i1/digout[1]}
add wave {freq_vlg_vec_tst/i1/digout[0]}
add wave {freq_vlg_vec_tst/i1/led_rst}
add wave {freq_vlg_vec_tst/i1/segout}
add wave {freq_vlg_vec_tst/i1/signal}
add wave {freq_vlg_vec_tst/i1/led_clk_x}
add wave {freq_vlg_vec_tst/i1/inst1/digit2}
add wave {freq_vlg_vec_tst/i1/inst1/digit2[3]}
add wave {freq_vlg_vec_tst/i1/inst1/digit2[2]}
add wave {freq_vlg_vec_tst/i1/inst1/digit2[1]}
add wave {freq_vlg_vec_tst/i1/inst1/digit2[0]}
add wave {freq_vlg_vec_tst/i1/inst1/digit1}
add wave {freq_vlg_vec_tst/i1/inst1/digit1[3]}
add wave {freq_vlg_vec_tst/i1/inst1/digit1[2]}
add wave {freq_vlg_vec_tst/i1/inst1/digit1[1]}
add wave {freq_vlg_vec_tst/i1/inst1/digit1[0]}
add wave {freq_vlg_vec_tst/i1/inst1/digit3}
add wave {freq_vlg_vec_tst/i1/inst1/digit3[3]}
add wave {freq_vlg_vec_tst/i1/inst1/digit3[2]}
add wave {freq_vlg_vec_tst/i1/inst1/digit3[1]}
add wave {freq_vlg_vec_tst/i1/inst1/digit3[0]}
add wave {freq_vlg_vec_tst/i1/inst1/digit4}
add wave {freq_vlg_vec_tst/i1/inst1/digit4[3]}
add wave {freq_vlg_vec_tst/i1/inst1/digit4[2]}
add wave {freq_vlg_vec_tst/i1/inst1/digit4[1]}
add wave {freq_vlg_vec_tst/i1/inst1/digit4[0]}
run -all
