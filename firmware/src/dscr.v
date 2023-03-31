module discriminator (
    input clk,          // clock input
    input rst,          // reset input
    input [13:0] data,  // 14-bit data input
    input [13:0] high_threshold,  // high threshold input
    input [13:0] low_threshold,   // low threshold input
    output reg trigger   // trigger output
);

// Internal state register
reg [13:0] state;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= 0;
        trigger <= 0;
    end
    else begin
        state <= data;
        if (state >= high_threshold) begin
            trigger <= 1;
        end
        else if (state <= low_threshold) begin
            trigger <= 0;
        end
    end
end

endmodule
