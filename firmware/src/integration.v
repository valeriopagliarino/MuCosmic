module integrator (
  input clk,            // clock input
  input rst,            // reset input
  input [13:0] data_in, // 14-bit data input
  input trig_in,        // trigger input from discriminator
  output reg [29:0] int_data_out // integrated output data
);

// Internal state registers
reg [29:0] int_data;

// Filter parameters
parameter DELTA_T = 1;  // time step for integration

always @(posedge clk or posedge rst) begin
  if (rst) begin
    // Reset the state registers and the output
    int_data <= 0;
    int_data_out <= 0;
  end
  else begin
    // Update the integration state based on the input data and trigger
    if (trig_in) begin
      int_data <= int_data + (data_in * DELTA_T);
    end

    // Update the output data
    int_data_out <= int_data;
  end
end

endmodule

module test_module (
  input clk,
  input rst,
  input [13:0] data_in,
  output reg [29:0] int_data_out
);

// Instantiate the discriminator and integrator modules
wire trig;
wire disc_out;
discriminator discriminator_inst (
  .clk(clk),
  .rst(rst),
  .data_in(data_in),
  .trig_out(trig),
  .disc_out(disc_out)
);
integrator integrator_inst (
  .clk(clk),
  .rst(rst),
  .data_in(data_in),
  .trig_in(trig),
  .int_data_out(int_data_out)
);

endmodule
