`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2023 05:30:39 PM
// Design Name: 
// Module Name: TFF_Async_testbench
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


module TFF_Async_testbench(

    );
    reg T;
    reg clk;
    reg reset;
    wire Q;
    
    TFF_Async test1(.T(T), .Q(Q), .clk(clk), .reset(reset));
    
    initial 
        begin 
            clk = 0;
            forever #2 clk = ~clk;
        end
        
    initial
        begin 
            reset = 0; T = 0;
            #2; reset = 1; T = 1;
            #2; reset = 0; T = 1;
            #2; reset = 0; T = 1;
            #4; reset = 0; T = 1;
            #2; reset = 0; T = 0;
            #4; reset = 1; T = 0;
            #6; reset = 0; T = 1;
            #8; reset = 1; T = 0;
            #4; reset = 0; T = 0;
            #4; reset = 1; T = 0;
            #4; reset = 0; T = 0;
        end     
endmodule
