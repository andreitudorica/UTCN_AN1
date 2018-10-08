setactivelib -work
acom -dbg "$DSN/src/packages/twos_complement_types_pkg.vhd"
acom -dbg "$DSN/src/packages/maths_class_pkg.vhd"
acom -dbg "$DSN/src/packages/bus_class_pkg.vhd"
acom -dbg "$DSN/src/packages/matrix_class_pkg.vhd"
acom -dbg "$DSN/src/packages/generic_functions_pkg.vhd"
acom -dbg "$DSN/src/packages/generic_conversions_pkg.vhd"
acom -dbg "$DSN/src/packages/fir_32_coeff_table.vhd"
acom -dbg "$DSN/src/packages/std_operators_pkg.vhd"
acom -dbg "$DSN/src/packages/mixed_operators_pkg.vhd"
acom -dbg "$DSN/src/abs.vhd"
acom -dbg "$DSN/src/sign.vhd"
acom -dbg "$DSN/src/fir_32.vhd"
acom -dbg "$DSN/src/top_demodulator.bde"
acom -dbg "$DSN/src/mult.vhd"
simulinkgenmod -f -o "$WSP/Simulink/top_demodulator.m" top_demodulator top_demodulator
simulinkgenmod -f -o "$WSP/Simulink/mult.m" mult beh
