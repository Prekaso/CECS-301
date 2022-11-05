create_clock -period 10.000 -name KLOK -waveform {0.000 5.000} [get_ports -filter { NAME =~  "*clk*" && DIRECTION == "IN" }]
