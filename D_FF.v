`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2023 04:33:08 PM
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    input D,
    input clk1,
    input s_reset,
    output reg Q
    );
    
    always @(posedge clk1)
        begin
            case(s_reset)
                1'b1 : Q <= 1'b0;
                default : Q <= D;
            endcase
        end
endmodule
