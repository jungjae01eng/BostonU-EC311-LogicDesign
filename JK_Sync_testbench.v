`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 03:50:02 PM
// Design Name: 
// Module Name: JK_Sync_testbench
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


module JK_Sync_testbench(

    );
    reg J;
    reg K;
    reg clk;
    reg reset;
    wire Q;
    
    JK_Sync test1(.J(J), .K(K), .clk(clk), .reset(reset), .Q(Q));
    
    initial 
        begin 
            clk = 0;
            forever #2 clk = ~clk;
        end
        
    initial
        begin 
            reset = 1; J = 1; K = 0;
            #2; reset = 0; J = 1; K = 0;
            #2; reset = 0; J = 1; K = 0;
            #2; reset = 0; J = 0; K = 1;
            #4; reset = 0; J = 0; K = 0;
            #2; reset = 0; J = 0; K = 1;
            #2; reset = 0; J = 1; K = 1;
            #8; reset = 0; J = 0; K = 1;
            #4; reset = 0; J = 0; K = 0;
            #4; reset = 0; J = 0; K = 0;
        end   
endmodule
