`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dylan Dang
// 
// Create Date: 11/16/2021 03:11:12 PM
// Design Name: 
// Module Name: Binary_Gray
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


module Binary_Gray(
    input [3:0] num,
    input sel,
    output reg [3:0] out
    );
    
    always @(*) begin
        // num is binary, convert it to gray.
        if(sel == 0) begin
            out[3] = num[3];
            out[2] = num[2] ^ num[3];
            out[1] = num[1] ^ num[2];
            out[0] = num[0] ^ num[1];
        end
        // num is gray, convert to binary.
        else if(sel == 1) begin
            out[3] = num[3];
            out[2] = num[2] ^ out[3];
            out[1] = num[1] ^ out[2];
            out[0] = num[0] ^ out[1];
        end
    end
endmodule