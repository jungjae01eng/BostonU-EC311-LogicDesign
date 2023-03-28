`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 04:07:02 PM
// Design Name: 
// Module Name: JK_Async
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


module JK_Async(
    input J,
    input K,
    input clk2,
    input a_reset,
    output Q
    );
    
    wire w1, w2;
    wire out1;
    assign w1 = (J && !out1) || (!K && out1);
    DFF_Async flipflop1(.D(w1), .Q(out1), .a_reset(a_reset), .clk2(clk2));
    assign Q = out1;
    
endmodule
