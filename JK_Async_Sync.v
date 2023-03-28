`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 04:14:58 PM
// Design Name: 
// Module Name: JK_Async_Sync
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


module JK_Async_Sync(
    input J,
    input K,
    input clk,
    input reset,
    output Q_asyn,
    output Q_syn
    );
    
    JK_Sync JK2(.J(J), .K(K), .clk1(clk), .s_reset(reset), .Q(Q_syn));
    JK_Async JK1(.J(J), .K(K), .clk2(clk), .a_reset(reset), .Q(Q_asyn));
    

endmodule
