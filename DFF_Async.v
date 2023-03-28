`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2023 03:57:12 PM
// Design Name: 
// Module Name: DFF_Async
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


module DFF_Async(
        input D,
        input clk2,
        input a_reset,
        output reg Q
    );
    
    always @(posedge clk2 or posedge a_reset)
        begin
            case(a_reset)
                1'b1 : Q <= 1'b0;
                default : Q <= D;
            endcase
        end
endmodule