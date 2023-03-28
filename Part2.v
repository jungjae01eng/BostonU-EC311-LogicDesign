`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 04:48:02 PM
// Design Name: 
// Module Name: Part2
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


module Part2(
    input X,
    input Y, 
    input Z,
    input S0,
    input S1,
    input reset,
    input clk,
    output reg T
    );
    
    reg [1:0] case_in;
    wire w1, w2, w3;
    wire out1, out2, out3;
    wire D0, D1, D2, D3;
    
    assign w1 = (!out1 ^ X) || (X && out1);
    D_FF FF1(.D(w1), .clk1(clk), .s_reset(reset), .Q(out1));
    
    assign w2 = (out2 && ~(out1 && Y));
    TFF_Sync FF2(.T(w2), .clk1(clk), .s_reset(reset), .Q(out2));
    
    assign w3 = !((Y ^ Z) && (Y ^ Z));
    JK_Sync FF3(.J(w2), .K(w3), .s_reset(reset), .clk1(clk), .Q(out3));
    
    assign D0 = out1;
    assign D1 = (out2 ^ out3) ^ (out2);
    assign D2 = !(out3 && out3);
    assign D3 = 0;
    
    always @(*) begin
        case_in = {S1, S0};
        case(case_in)
            2'b00: T = D0;
            2'b01: T = D1;
            2'b10: T = D2;
            2'b11: T = D3;
        endcase
    end         
endmodule
