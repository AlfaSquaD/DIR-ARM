`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2021 09:57:04 AM
// Design Name: 
// Module Name: register
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


module register(input clk, input [2:0] A1, A2, A3, input reg [7:0] WD3, input logic WE3,
    output reg [7:0] RD1, RD2
    );  
    reg [7:0] register [7:0];
    always @ (posedge clk)
    begin
        if(WE3) register[A3]<=WD3;
        RD1 <= register[A1];
        RD2 <= register[A2];
    end
    initial begin
        for(int i = 0; i < $size(register); i++) register[i] = 0;
    end
endmodule