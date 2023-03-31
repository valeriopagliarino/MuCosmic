# Makefile for Vivado simulation flow

# Set the Vivado installation directory
VIVADO_DIR = /opt/Xilinx/Vivado/2021.1

# Set the name of the top-level module
TOP_MODULE = top_module

# Set the name of the testbench module
TB_MODULE = top_module_tb

# Set the name of the simulation executable
SIM_EXE = xsim

# Set the name of the simulation run script
SIM_SCRIPT = sim.tcl

# Set the options for xvlog and xelab
XVLOG_OPTS = --sv --relax
XELAB_OPTS = --debug typical --mt 4

# Set the options for xsim
XSIM_OPTS = -R

all: sim

# Compile the design and testbench
compile: $(TOP_MODULE).v $(TB_MODULE).v
	$(VIVADO_DIR)/bin/xvlog $(XVLOG_OPTS) $(TOP_MODULE).v $(TB_MODULE).v

# Elaborate the design and testbench
elaborate: compile
	$(VIVADO_DIR)/bin/xelab $(XELAB_OPTS) $(TOP_MODULE) $(TB_MODULE)

# Run the simulation
sim: elaborate
	$(VIVADO_DIR)/bin/$(SIM_EXE) $(XSIM_OPTS) -t $(SIM_SCRIPT)

# Clean up the generated files
clean:
	rm -rf xsim.dir webtalk* *.log *.jou *.pb $(TOP_MODULE).vcd
