`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2023 05:29:15 PM
// Design Name: 
// Module Name: TFF_Async
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


module TFF_Async(

    input T,
    input clk,
    input reset,
    output Q
    );
    wire w1;
    wire out1;
    assign w1 = T ^ out1;             
    DFF_Async flipflop1(.D(w1), .Q(out1), .reset(reset), .clk(clk));
    assign Q = out1;
endmodule
