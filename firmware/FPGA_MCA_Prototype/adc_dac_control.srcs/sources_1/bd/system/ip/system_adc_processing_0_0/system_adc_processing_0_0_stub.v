// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar  9 15:17:44 2023
// Host        : VALERIOPAGLFEF1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/XilinxProjects/redpitaya-fpga-example-template/adc_dac_control.srcs/sources_1/bd/system/ip/system_adc_processing_0_0/system_adc_processing_0_0_stub.v
// Design      : system_adc_processing_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc_processing,Vivado 2022.1" *)
module system_adc_processing_0_0(adc_dat_a_i, adc_dat_b_i, clk, led_out)
/* synthesis syn_black_box black_box_pad_pin="adc_dat_a_i[13:0],adc_dat_b_i[13:0],clk,led_out[7:0]" */;
  input [13:0]adc_dat_a_i;
  input [13:0]adc_dat_b_i;
  input clk;
  output [7:0]led_out;
endmodule
