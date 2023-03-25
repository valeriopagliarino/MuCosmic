`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// "Solo una sana e consapevole libidine salva il giovane dello stress e dalla microelettronica" - Zucchero, 1987.
// Company: MLJC - Dipartimento di Fisica - Università degli Studi di Torino
// Engineer: Valerio Pagliarino
// 
// Create Date: 11/04/2022 10:25:27 AM
// Design Name: Zynq MCA
// Module Name: MCA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This module reads the digitized samples in real time from the ADC and it manages trigger, time windowing and find max
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MCA(
    input Clk,
    input Reset,
    input ADCClk,
    input [15:0] ADCData,
    input ExtTrigger,
    input TriggerSource,
    input [15:0] TriggerThreshold,
    input [15:0] Pretrigger,
    input ReadoutCompleted,
    output reg [15:0] BinNum,
    output reg OutTrig
    );
    

    reg shClk   = 0; 
    reg shClr   = 0;
    reg status  = 0; // Status: 0-> Free running, 1-> Triggered, 2-> PHA Processing
    reg [15:0] itCounter = 0;
    reg [15:0] tempValue = 0; 
    reg [15:0] max       = 0;
    reg [15:0] maxT      = 0;
    SHIFT_REG register[15:0](shClk, ADCData, shClrm);
    
    //Reset
    always @(posedge Reset) begin
        itCounter   <= 0;
        BinNum      <= 0;
        OutTrig     <= 0;
        shClk       <= 0;
        shClr       <= 0;
        max         <= 0;
        maxT        <= 0;
    end
    
    //ADC event (store in reg) and threshold trigger
    always @(negedge ADCClk) begin
        if(status == 2) begin //Readout completed
            max     <=0;
            maxT    <=0;
        end
        
        if(status == 1) begin //Trigger fired
            itCounter <= itCounter + 1;
            shClk <= 1;
            if(ADCData > max) begin
                max <= ADCData;
                maxT <= maxT + 1;
            end
            if(itCounter > (256 - Pretrigger)) begin
                status = 2;
                BinNum  <=max <<< 3; //Rebinning power of 2 factor
                OutTrig <=1;
            end    
        end
        
        if(status == 0) begin //Free running
            itCounter <= 0;
            shClk <= 1;      
            if(ADCData > max) begin
                max <= ADCData;
                maxT <= maxT + 1;
            end
            if(ADCData > TriggerThreshold) begin
                status <= 1;
            end
        end
    end
   
    
    always @(posedge ADCClk) begin
            shClk <= 0;
    end
    
    //External trigger event 
    always @(posedge ExtTrigger) begin
        if(TriggerSource) begin
            status <= 1;
        end
    end
    
    //Readout completed, go back to acquisition mode
    always @(posedge ReadoutCompleted) begin
        status <= 0;
    end
    
endmodule


// Circular shift register with a size of 256 bit (256 * 1/100 MSa/s = 2560 ns of maximum window!)
module SHIFT_REG #(parameter MSB=256) (
    input Clk,
    input WriteIn,
    input Clear,
    output reg [MSB-1:0] OutReg
    ); 
    
    // Clear operation
    always @(posedge Clear) begin
        OutReg <= 0;
    end
    
    // Shift operation
    always @(posedge Clk) begin
        if(!Clear)
            OutReg <= {WriteIn, OutReg[MSB-1:1]};    
    end
    
endmodule




