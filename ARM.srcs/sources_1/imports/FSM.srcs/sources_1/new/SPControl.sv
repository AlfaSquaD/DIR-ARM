`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/23/2021 11:06:45 PM
// Design Name: 
// Module Name: SPControl
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


module SPControl(
    input reg clk, pop, push,
    output reg [7:0] sp
    );
    reg s_push;
    Flop1Bit pushFlop(clk, push, s_push);
    always @(posedge clk)
        if(pop)sp<=sp+1;
    always @(negedge clk) 
        if(s_push)sp<=sp-1;
    initial sp = 8'b11111111;
endmodule
