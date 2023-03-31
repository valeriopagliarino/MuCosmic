module moving_average_filter (
  input clk,          // clock input
  input rst,          // reset input
  input [13:0] data,  // 14-bit data input
  output reg [13:0] filtered_data // output of the moving average filter
);

// Internal state registers
reg [13:0] state[0:6];
reg [2:0] index;

// Filter parameters
parameter WINDOW_SIZE = 7; // window size of the moving average filter

always @(posedge clk or posedge rst) begin
  if (rst) begin
    // Reset the state registers and the index
    for (int i = 0; i < WINDOW_SIZE; i = i + 1) begin
      state[i] <= 0;
    end
    index <= 0;
    filtered_data <= 0;
  end
  else begin
    // Shift the state registers and add the new input to the end
    for (int i = WINDOW_SIZE - 1; i > 0; i = i - 1) begin
      state[i] <= state[i-1];
    end
    state[0] <= data;

    // Increment the index and calculate the filtered output
    index <= (index == (WINDOW_SIZE - 1)) ? 0 : (index + 1);
    filtered_data <= (state[0] + state[1] + state[2] + state[3] + state[4] + state[5] + state[6]) / WINDOW_SIZE;
  end
end

endmodule
