cd $dsn\src
#building and importing SystemC modules	into working library  
buildc $dsn\src\systemc\hex_ram.dlm	   
# Verilog testbench compilation
vlog testbench.v
#initialization of simulation
vsim hex_ram_tb

wave -noreg sc_u/CLK
wave -noreg sc_u/CLR
wave -noreg sc_u/EN
wave -noreg sc_u/C0
wave -noreg sc_u/DUMP_RAM
wave -noreg sc_u/CHR
wave -noreg sc_u/WR
wave -noreg sc_u/ERR
wave -noreg sc_u/ADDR
wave -noreg sc_u/DATA

run -all
endsim