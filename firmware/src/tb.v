module top_module_tb();

// Inputs
reg clk;
reg rst;
reg [13:0] data_in;

// Outputs
wire [29:0] int_data_out;

// Instantiate the top module
top_module dut (
  .clk(clk),
  .rst(rst),
  .data_in(data_in),
  .int_data_out(int_data_out)
);

// Generate clock signal
initial clk = 0;
always #5 clk = ~clk;

// Reset the DUT
initial begin
  rst = 1;
  #10;
  rst = 0;
end

// Stimulus
initial begin
  // Send a pulse with some baseline noise
  data_in = 1000;
  #5;
  data_in = 2000;
  #5;
  data_in = 3000;
  #5;
  data_in = 4000;
  #5;
  data_in = 5000;
  #5;
  data_in = 4000;
  #5;
  data_in = 3000;
  #5;
  data_in = 2000;
  #5;
  data_in = 1000;
  #5;
  // Wait a few cycles to observe the output
  #100;
  // Send another pulse
  data_in = 8000;
  #5;
  data_in = 7000;
  #5;
  data_in = 6000;
  #5;
  data_in = 5000;
  #5;
  data_in = 4000;
  #5;
  data_in = 5000;
  #5;
  data_in = 6000;
  #5;
  data_in = 7000;
  #5;
  data_in = 8000;
  #5;
  // Wait a few cycles to observe the output
  #100;
  $finish;
end

endmodule
