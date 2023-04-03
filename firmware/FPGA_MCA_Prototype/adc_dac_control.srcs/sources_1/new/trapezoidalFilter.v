module trapezoidal_filter (
  input clk,
  input reset_n,
  input [15:0] data_in,
  output [15:0] data_out
);

  // Define parameters for the trapezoidal filter
  parameter SHORT_DELAY = 50;
  parameter LONG_DELAY = 500;
  parameter SHORT_PEAK_THRESHOLD = 2000;
  parameter LONG_PEAK_THRESHOLD = 5000;
  parameter SHORT_PEAK_WEIGHT = 2;
  parameter LONG_PEAK_WEIGHT = 5;

  // Define state variables
  reg [15:0] short_delay_data [SHORT_DELAY:0];
  reg [15:0] long_delay_data [LONG_DELAY:0];
  reg [15:0] short_peak_data;
  reg [15:0] long_peak_data;

  // Define internal signals
  wire [15:0] short_delay_sum;
  wire [15:0] long_delay_sum;
  wire [15:0] trapezoidal_output;

  // Shift in data on each clock cycle
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      short_delay_data <= {SHORT_DELAY{16'h0}};
      long_delay_data <= {LONG_DELAY{16'h0}};
      short_peak_data <= 16'h0;
      long_peak_data <= 16'h0;
    end else begin
      short_delay_data <= {short_delay_data[SHORT_DELAY-1:0], data_in};
      long_delay_data <= {long_delay_data[LONG_DELAY-1:0], data_in};

      // Calculate short delay sum and update short peak data
      short_delay_sum = 0;
      for (int i = 0; i < SHORT_DELAY; i++) begin
        short_delay_sum = short_delay_sum + short_delay_data[i];
      end
      if (short_delay_sum >= SHORT_PEAK_THRESHOLD) begin
        short_peak_data <= short_delay_sum * SHORT_PEAK_WEIGHT;
      end

      // Calculate long delay sum and update long peak data
      long_delay_sum = 0;
      integer i;
      for (i = 0; i < LONG_DELAY; i++) begin
        long_delay_sum = long_delay_sum + long_delay_data[i];
      end
      if (long_delay_sum >= LONG_PEAK_THRESHOLD) begin
        long_peak_data <= long_delay_sum * LONG_PEAK_WEIGHT;
      end
    end
  end

  // Calculate trapezoidal output on each clock cycle
  always @* begin
    trapezoidal_output = short_peak_data - long_peak_data;
  end

  assign data_out = trapezoidal_output;

endmodule
