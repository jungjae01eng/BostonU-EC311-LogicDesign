`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2023 05:07:21 PM
// Design Name: 
// Module Name: TFF_Sync_testbench
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


module TFF_Sync_testbench(

    );
    reg T;
    reg clk;
    reg reset;
    wire Q;
    
    TFF_Sync test1(.T(T), .Q(Q), .clk(clk), .reset(reset));
    
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
            #4; reset = 0; T = 1;
        end   
endmodule
