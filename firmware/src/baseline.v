module baseline_removal_filter (
  input clk,          // clock input
  input rst,          // reset input
  input [13:0] data,  // 14-bit data input
  output reg [13:0] filtered_data // output of the baseline removal filter
);

// Internal state registers
reg [13:0] baseline_est;
reg [13:0] prev_data;

// Filter parameters
parameter ALPHA = 0.1; // smoothing factor for baseline estimation

always @(posedge clk or posedge rst) begin
  if (rst) begin
    // Reset the state registers and the filtered output
    baseline_est <= 0;
    prev_data <= 0;
    filtered_data <= 0;
  end
  else begin
    // Estimate the baseline using a low-pass filter
    baseline_est <= (ALPHA * data) + ((1 - ALPHA) * baseline_est);

    // Subtract the baseline from the input data
    filtered_data <= data - baseline_est;

    // Store the current data for use in the next cycle
    prev_data <= data;
  end
end

endmodule
