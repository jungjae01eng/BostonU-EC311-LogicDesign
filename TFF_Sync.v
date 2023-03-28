`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2023 04:10:55 PM
// Design Name: 
// Module Name: TFF_Sync
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


module TFF_Sync(
    input T,
    input clk1,
    input s_reset,
    output Q
    );
    wire w1;
    wire out1;
    assign w1 = T ^ out1;             
    D_FF flipflop1(.D(w1), .Q(out1), .s_reset(s_reset), .clk1(clk1));
    assign Q = out1;
    
endmodule
