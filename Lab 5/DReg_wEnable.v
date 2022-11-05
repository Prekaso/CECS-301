`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 03:04:52 PM
// Design Name: 
// Module Name: DReg_wEnable
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

module DReg_wEnable(
    input clk,
    input reset,
    input e,
    input [7:0] D,
    output reg [7:0] Q
    );
    
    always@(posedge clk, posedge reset) begin 
        if(reset)
            Q <= 8'b0;
        else if(e)
            Q <= D;
    end
endmodule
