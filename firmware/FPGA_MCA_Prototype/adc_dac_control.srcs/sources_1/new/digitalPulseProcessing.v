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


module digitalPulseProcessing(
    input [13:0] dataIn,
    input clk,
    input trigIn,
    output trigOut,
    output [9:0] dataOut
    );
    
    
    //Framebuffer
    reg [9:0] count [0:255];
    
endmodule
