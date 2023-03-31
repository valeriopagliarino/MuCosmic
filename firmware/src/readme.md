In this makefile, we first set the Vivado installation directory (VIVADO_DIR), the name of the top-level module (TOP_MODULE), the name of the testbench module (TB_MODULE), the name of the simulation executable (SIM_EXE), and the name of the simulation run script (SIM_SCRIPT). We then define several targets:

    all: the default target, which runs the sim target
    compile: compiles the design and testbench using xvlog
    elaborate: elaborates the design and testbench using xelab
    sim: runs the simulation using xsim and the sim.tcl script
    clean: removes the generated files

To run the simulation, simply type make in the terminal, which will run the sim target. If you want to clean up the generated files, type make clean.