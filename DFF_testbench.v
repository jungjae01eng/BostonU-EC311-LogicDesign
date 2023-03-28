`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2023 04:34:42 PM
// Design Name: 
// Module Name: DFF_testbench
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


module DFF_testbench(

    );
    reg D;
    reg clk;
    reg reset;
    wire Q;

    
    D_FF test1(.D(D), .Q(Q), .clk(clk), .reset(reset));
    
    initial 
        begin 
            clk = 0;
            forever #2 clk = ~clk;
        end
        
    initial
        begin 
            reset = 0; D = 0;
            #2; reset = 1; D = 1;
            #2; reset = 0; D = 1;
            #2; reset = 1; D = 1;
            #4; reset = 0; D = 1;
        end   
endmodule
