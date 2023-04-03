`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2023 03:26:20 PM
// Design Name: 
// Module Name: digitalPulseProcessing
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

module digitalMCA (
    input [9:0] inputBus,
    input dscrTrigger,
    input clk,
    input clear,
    input [3:0] memAddr,
    output [9:0] outputBus,
    output overflow,
    output halfFull
);

    //Internal MCA memory
    reg [9:0] count [0:1023];
    reg memRead;

    always @ (posedge clk) begin
        if (clear) begin
            // Reset all counters to zero
            for (int i = 0; i < 1024; i=i+1) begin
                count[i] <= 10'd0;
            end
            halfFull <= 0;
            overflow <= 0;

        end else begin

             if (dscrTrigger) begin
                count[inputBus] <= count[inputBus] + 1;
             end

             memRead <= count[memAddr];

             for (int i = 0; i < 1024; i=i+1) begin
                if (count[i] > 511) begin
                    halfFull <= 1;
                end

                if (count[i] > 1021) begin
                    overflow <= 1;
                end
             end
        end
    end

    assign outputBus = memRead;

endmodule
