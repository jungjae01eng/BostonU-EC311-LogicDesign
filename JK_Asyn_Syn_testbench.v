`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 04:36:16 PM
// Design Name: 
// Module Name: JK_Asyn_Syn_testbench
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


module JK_Asyn_Syn_testbench(

    );
    
    reg J;
    reg K;
    reg clk;
    reg reset;
    wire Q_asyn;
    wire Q_syn;
    
    JK_Async_Sync test1(.J(J), .K(K), .clk(clk), .reset(reset), .Q_asyn(Q_asyn), .Q_syn(Q_syn));
    
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
            #2; reset = 1; J = 0; K = 1;
            #8; reset = 0; J = 0; K = 1;
            #4; reset = 0; J = 0; K = 0;
            #4; reset = 0; J = 0; K = 0;
        end   
endmodule
