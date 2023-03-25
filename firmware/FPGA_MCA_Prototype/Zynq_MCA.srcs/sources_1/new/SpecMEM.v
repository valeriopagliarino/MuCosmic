`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// "Solo una sana e consapevole libidine salva il giovane dello stress e dalla microelettronica" - Zucchero, 1987.
// Company: MLJC - Dipartimento di Fisica - Università degli Studi di Torino
// Engineer: Valerio Pagliarino
// 
// Create Date: 11/04/2022 10:25:27 AM
// Design Name: SpecMEM for Zynq MCA
// Module Name: SpecMEM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module stores the spectrum histogram
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SpecMEM(
    input Clk,
    input [15:0] BinNumIn,
    input WriteTrig,
    input ReadTrig,
    input [15:0] BinReadAddr,
    output WriteCompleted,
    output [15:0] BinNumOut,
    input Cleanup
    );
endmodule
