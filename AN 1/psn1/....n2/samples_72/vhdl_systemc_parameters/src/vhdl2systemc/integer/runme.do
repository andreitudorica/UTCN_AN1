
adel -all

set TARGET systemc.dll

ccomp -sc $dsn/src/vhdl2systemc/integer/systemc.cpp -o $TARGET
addsc $TARGET

acom $dsn/src/vhdl2systemc/integer/vhdl.vhd

# initialize simulation
asim top

run -all

# uncomment following line to terminate simulation automatically from script
#endsim
