all: verilog vvp yosys gtkw
verilog:
	iverilog -o tarea01  mux_bancoPrueb.v
vvp:
	vvp tarea01
gtkw:
	gtkwave multiplexor.vcd
yosys:
	yosys yosys.ys
clean:
	rm multiplexor.vcd tarea01 mux_syn.v
