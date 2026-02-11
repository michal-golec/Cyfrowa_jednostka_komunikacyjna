
# Ustawienie nazwy portu zegara
set CLOCK_PORT clk

# Okres zegara w ns
set CK1_PERIOD 50

	set CK1_WAVE 	 [list 0 [expr $CK1_PERIOD/2]]
	create_clock -name CLOCK   -period $CK1_PERIOD -waveform $CK1_WAVE [get_port $CLOCK_PORT]
	set_max_delay $CK1_PERIOD -from [all_inputs] -to [all_outputs]
	
	set_load -pin_load 	1 		[all_outputs]
	set_max_capacitance 0.03 	[all_inputs]
