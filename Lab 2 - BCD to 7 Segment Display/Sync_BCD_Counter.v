`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 03:15:13 PM
// Design Name: 
// Module Name: Sync_BCD_Counter
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


module Sync_BCD_Counter (
    input clk, 
    input reset, 
    output reg [3:0] Q
);

reg [26:0] counter; //What size? log2(100_000_000) = 26.5 = 26

    always@(posedge clk, posedge reset) begin
        if(reset) begin
            counter <= 27'b0; //What size?
            Q <= 4'b0;
        end
        else if(counter == 100_000_000) begin //Make 1 for sim purposes.
            counter <= 27'b0; //Reset the counter
            if(Q < 9) //What is the max decimal number in BCD counter?
                Q <= Q + 1'b1;
            else 
                Q <= 4'b0;
        end
        else
            counter <= counter + 1'b1;
       end
endmodule
