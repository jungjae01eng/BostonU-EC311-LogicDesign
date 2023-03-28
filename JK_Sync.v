`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 03:35:06 PM
// Design Name: 
// Module Name: JK_Sync
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


module JK_Sync(
    input J,
    input K,
    input clk1,
    input s_reset,
    output Q
    );
    
    wire w1, w2;
    wire out1;
    assign w1 = (J && !out1) || (!K && out1);
    D_FF flipflop1(.D(w1), .Q(out1), .s_reset(s_reset), .clk1(clk1));
    assign Q = out1;
    
endmodule
