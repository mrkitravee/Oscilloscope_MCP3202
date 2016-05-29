onerror {exit -code 1}
vlib work
vlog -work work Ossiloscope_MCP3202.vo
vlog -work work Waveform3.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.delay_vlg_vec_tst -voptargs="+acc"
vcd file -direction Ossiloscope_MCP3202.msim.vcd
vcd add -internal delay_vlg_vec_tst/*
vcd add -internal delay_vlg_vec_tst/i1/*
run -all
quit -f
