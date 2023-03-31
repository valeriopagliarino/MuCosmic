module trapezoid_filter (
  input clk,          // clock input
  input rst,          // reset input
  input [13:0] data,  // 14-bit data input from scintillator
  output reg [13:0] filtered_data // output of the trapezoid filter
);

// Internal state registers
reg [13:0] state1;
reg [13:0] state2;
reg [13:0] state3;
reg [13:0] state4;
reg [13:0] state5;

// Filter parameters
parameter t_rise = 50;     // rise time constant in clock cycles (approx 100 microseconds)
parameter t_flat = 200;    // flat top time constant in clock cycles (approx 400 microseconds)
parameter t_fall = 300;    // fall time constant in clock cycles (approx 600 microseconds)
parameter gain1 = 2;       // gain for the rising edge
parameter gain2 = 4;       // gain for the flat top
parameter gain3 = -2;      // gain for the falling edge

always @(posedge clk or posedge rst) begin
  if (rst) begin
    state1 <= 0;
    state2 <= 0;
    state3 <= 0;
    state4 <= 0;
    state5 <= 0;
    filtered_data <= 0;
  end
  else begin
    // Calculate the first derivative using a forward difference
    state1 <= data - state5;

    // Apply the rising edge gain and integrate to get the first state
    state2 <= state2 + gain1 * state1;
    
    // Apply the flat top gain and integrate to get the second state
    if (state2 > t_rise * 8192) begin // 8192 = 2^13 / 2, to avoid overflow
      state3 <= state3 + gain2 * (state2 - t_rise * 8192);
    end
    
    // Apply the falling edge gain and integrate to get the third state
    if (state3 > t_flat * 8192) begin // 8192 = 2^13 / 2, to avoid overflow
      state4 <= state4 + gain3 * (state3 - t_flat * 8192);
    end
    
    // Apply a delay of one clock cycle and subtract the third state to get the filtered output
    filtered_data <= state4 - state1;
    
    // Save the input for the next cycle
    state5 <= data;
  end
end

endmodule
