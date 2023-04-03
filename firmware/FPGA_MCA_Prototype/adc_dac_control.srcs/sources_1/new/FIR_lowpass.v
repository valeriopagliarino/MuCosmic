`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 03:07:20 PM
// Design Name: 
// Module Name: FIR_lowpass
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fir_lowpass(
  input clk,
  input reset,
  input signed [9:0] sample_in,
  output signed [9:0] sample_out
);

  parameter COEFF_DEPTH = 8;
  parameter COEFF_SIZE = 1 << COEFF_DEPTH;
  parameter DATA_WIDTH = 10;
  parameter SAMPLE_RATE = 125_000_000;
  parameter CUTOFF_FREQ = 35_000_000;
  
  reg signed [DATA_WIDTH-1:0] shift_reg [0:COEFF_SIZE-1];
  reg signed [DATA_WIDTH-1:0] sample_reg [0:COEFF_SIZE-1];
  reg signed [DATA_WIDTH-1:0] coeff_reg [0:COEFF_SIZE-1];
  reg signed [DATA_WIDTH-1:0] product_reg [0:COEFF_SIZE-1];
  reg signed [DATA_WIDTH-1:0] sum_reg;

  reg [COEFF_DEPTH-1:0] addr_reg;
  reg [31:0] phase_acc;

  assign sample_out = sum_reg;

  always @(posedge clk) begin
    if (reset) begin
      shift_reg <= 0;
      sample_reg <= 0;
      coeff_reg <= 0;
      product_reg <= 0;
      sum_reg <= 0;
      addr_reg <= 0;
      phase_acc <= 0;
    end else begin
      // Calculate the phase increment
      wire phase_inc = (2*3.14159265*CUTOFF_FREQ)/SAMPLE_RATE * (1 << 32);

      // Accumulate the phase
      phase_acc <= phase_acc + phase_inc;

      // Calculate the phase offset
      wire phase_offset = phase_acc[31:20];

      // Shift the sample values through the shift register
      shift_reg[0] <= sample_in;
      for (reg i = 1; i < COEFF_SIZE; i = i+1) begin
        shift_reg[i] <= sample_reg[i-1];
      end

      // Load the coefficient values into the coefficient register
      for (reg i = 0; i < COEFF_SIZE; i = i+1) begin
        coeff_reg[i] <= $signed({COEFF_DEPTH{addr_reg == i}});
      end

      // Multiply the shift register values with the coefficients
      for (reg i = 0; i < COEFF_SIZE; i = i+1) begin
        product_reg[i] <= shift_reg[i] * coeff_reg[i];
      end

      // Add up the product values to get the filter output
      sum_reg <= 0;
      for (reg i = 0; i < COEFF_SIZE; i = i+1) begin
        sum_reg <= sum_reg + product_reg[i];
      end

      // Update the sample and address registers
      sample_reg <= shift_reg;
      addr_reg <= addr_reg + 1;
      if (addr_reg == COEFF_SIZE-1) begin
        addr_reg <= 0;
      end
    end
  end

endmodule
