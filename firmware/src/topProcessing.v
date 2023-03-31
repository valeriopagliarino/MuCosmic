module top_module (
  input clk,
  input rst,
  input [13:0] data_in,
  output reg [29:0] int_data_out
);

// Instantiate the baseline removal and moving average filter
reg [13:0] filtered_data;
baseline_removal baseline_inst (
  .data_in(data_in),
  .filtered_data_out(filtered_data)
);
moving_average_filter filter_inst (
  .clk(clk),
  .rst(rst),
  .data_in(filtered_data),
  .filtered_data_out(filtered_data)
);

// Instantiate the discriminator and integrator modules
wire trig;
wire disc_out;
discriminator discriminator_inst (
  .clk(clk),
  .rst(rst),
  .data_in(filtered_data),
  .trig_out(trig),
  .disc_out(disc_out)
);
integrator integrator_inst (
  .clk(clk),
  .rst(rst),
  .data_in(filtered_data),
  .trig_in(trig),
  .int_data_out(int_data_out)
);

endmodule
