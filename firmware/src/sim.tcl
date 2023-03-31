# Set the name of the testbench module
set TB_MODULE "top_module_tb"

# Set the simulation time
set SIM_TIME 1000ns

# Set the dumpfile name
set DUMPFILE "dump.vcd"

# Set the waveform viewer name
set WAVEFORM_VIEWER "xsdb_waveform"

# Specify the simulator tool
set SIMULATOR "xsim"

# Specify the simulator options
set SIM_OPTIONS "-R"

# Specify the compile options
set COMPILE_OPTIONS "-sv"

# Compile the design and testbench
${SIMULATOR} ${COMPILE_OPTIONS} work.${TB_MODULE}

# Set the simulation time resolution
config_time -unit ns -resolution 1ps

# Set the simulation time
run ${SIM_TIME}

# Dump the signals to the VCD file
write_vcd ${DUMPFILE}

# Launch the waveform viewer
exec ${WAVEFORM_VIEWER} ${DUMPFILE} &

# Exit the simulation
exit
