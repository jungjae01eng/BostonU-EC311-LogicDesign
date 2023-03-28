`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/28/2023 04:58:07 PM
// Design Name: 
// Module Name: part3
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


module part3(
        input T,
        input clk,
        input reset1,
        input reset2,
        output Q,
        output clk_new
    );
    
    clk_divider2 cd(
	   .clk_in(clk),
	   .rst(reset2),
	   .divided_clk(clk_new)
	);
	
	TFF_Sync TS(
        .T(T),
        .clk(clk_new),
        .reset(reset1),
        .Q(Q)
    );
    
endmodule
