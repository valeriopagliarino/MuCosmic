# Red Pitaya STEMLab  FPGA Example Template
An FPGA project for the Red Pitaya STEMLab with an exmaple of displaying values from the ADC on the LEDS.


## A few notes
A Field Programmable Gate Array (FPGA) is a programmable circuit that can be set to emulate a wide range of other physical circuits. To program an FPGA, you create an FPGA “Image” using a Hardware Description Language like Verlig, System Verilog, or VHDL (my preference). These programs, in combination with a block circuit diagram can be turned into a physical electrical circuit that can run very quickly. The STEMLab is powered by an FPGA and combined with an ARM CPU core that runs the Red Pitaya OS.
The FPGA in the STEMLab is a Xilinx Zync 7 core – serach for this for useful development information. You can create FPGA images for it using Vivado 2017.1, a free download if you register on their site.
Applications on the STEMLab all specify what FPGA image to be loaded to power their hardware functionalities. Most of the built in apps all use the same image, so they can sometimes be used at the same time.
Good sites for learning about FPGA development on the STEMLab are http://antonpotocnik.com/?p=487360, and   http://wiki.echopen.org/index.php/How_To_Program_the_FPGA_on_Red_Pitaya (don’t bother with all the promgen stuff; after hitting implementation in Vivado, just copy the .bit file to the STEMLab using scp and pipe it to /dev/xdevcfg, a hardware device that can be written to to reflash the FPGA).
Note that many of these examles do not wire up some basic functionality of the STEMLab and thus the CPU will crash upon reflashing the FPGA image. This is fine, just unplug it and plug it back in when you are ready to try something else.
The LED blink examples are a good way to get your head around digital design.

TIPS:
•	Vivado is a very heavy application. I recommend you run it on a desktop if you can, or you’ll be waiting on 20 minute “compiles”.
•	Click “Open Block Diagram” in the left panel to see your block diagram
•	After changing your HDL code in the sources tab, go to the block diagram and right clock any existing blocks that use the code and hit refresh module to recompile the code. 
Once you’re happy with some of those tuorials, download this folder and open it in Vivado.
