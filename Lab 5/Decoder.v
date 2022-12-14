`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2021 03:05:32 PM
// Design Name: 
// Module Name: Decoder
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

module Decoder(
    input [4:0] address,
    input enable,
    output reg [31:0] out
    );
    
    always@(*) begin 
        case({enable,address})
            6'b1_00000: out = 32'b0000_0000_0000_0000_0000_0000_0000_0001; //What value of enable should we check?
            6'b1_00001: out = 32'b0000_0000_0000_0000_0000_0000_0000_0010; 
            6'b1_00010: out = 32'b0000_0000_0000_0000_0000_0000_0000_0100; 
            6'b1_00011: out = 32'b0000_0000_0000_0000_0000_0000_0000_1000; 
            6'b1_00100: out = 32'b0000_0000_0000_0000_0000_0000_0001_0000; 
            6'b1_00101: out = 32'b0000_0000_0000_0000_0000_0000_0010_0000;  
            6'b1_00110: out = 32'b0000_0000_0000_0000_0000_0000_0100_0000; 
            6'b1_00111: out = 32'b0000_0000_0000_0000_0000_0000_1000_0000; 
            6'b1_01000: out = 32'b0000_0000_0000_0000_0000_0001_0000_0000; 
            6'b1_01001: out = 32'b0000_0000_0000_0000_0000_0010_0000_0000; 
            6'b1_01010: out = 32'b0000_0000_0000_0000_0000_0100_0000_0000; 
            6'b1_01011: out = 32'b0000_0000_0000_0000_0000_1000_0000_0000; 
            6'b1_01100: out = 32'b0000_0000_0000_0000_0001_0000_0000_0000; 
            6'b1_01101: out = 32'b0000_0000_0000_0000_0010_0000_0000_0000;
            6'b1_01110: out = 32'b0000_0000_0000_0000_0100_0000_0000_0000; 
            6'b1_01111: out = 32'b0000_0000_0000_0000_1000_0000_0000_0000; 
            6'b1_10000: out = 32'b0000_0000_0000_0001_0000_0000_0000_0000;
            6'b1_10001: out = 32'b0000_0000_0000_0010_0000_0000_0000_0000; 
            6'b1_10010: out = 32'b0000_0000_0000_0100_0000_0000_0000_0000; 
            6'b1_10011: out = 32'b0000_0000_0000_1000_0000_0000_0000_0000; 
            6'b1_10100: out = 32'b0000_0000_0001_0000_0000_0000_0000_0000; 
            6'b1_10101: out = 32'b0000_0000_0010_0000_0000_0000_0000_0000; 
            6'b1_10110: out = 32'b0000_0000_0100_0000_0000_0000_0000_0000; 
            6'b1_10111: out = 32'b0000_0000_1000_0000_0000_0000_0000_0000; 
            6'b1_11000: out = 32'b0000_0001_0000_0000_0000_0000_0000_0000; 
            6'b1_11001: out = 32'b0000_0010_0000_0000_0000_0000_0000_0000; 
            6'b1_11010: out = 32'b0000_0100_0000_0000_0000_0000_0000_0000; 
            6'b1_11011: out = 32'b0000_1000_0000_0000_0000_0000_0000_0000; 
            6'b1_11100: out = 32'b0001_0000_0000_0000_0000_0000_0000_0000; 
            6'b1_11101: out = 32'b0010_0000_0000_0000_0000_0000_0000_0000; 
            6'b1_11110: out = 32'b0100_0000_0000_0000_0000_0000_0000_0000; 
            6'b1_11111: out = 32'b1000_0000_0000_0000_0000_0000_0000_0000;
            default: out = 32'b0;
        endcase       
    end 
endmodule
