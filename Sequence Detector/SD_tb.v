`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dylan Dang
// 
// Create Date: 10/05/2021 03:39:42 PM
// Design Name: 
// Module Name: SD_tb
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


module SD_tb(
    );
    
    // Create registers, wires, and required variables
    reg i_tb, clk_tb;
    wire o_tb;
    integer index;
    reg [9:0] data;
    
    // Instantiate the module
    SD uut(.i(i_tb), .clk(clk_tb), .o(o_tb));
    
    // Initialization
    initial begin
        i_tb = 0;
        data = 10'b0001101011;
        index = 0;
    end
    
    // Clock generation
    initial begin 
        clk_tb = 0;
        forever begin
            #20;
            clk_tb = ~clk_tb;
        end
    end
    
    // Generating input sequence
    always @ (posedge clk_tb) begin
        i_tb = data >> index;
        index = index + 1;
    end
endmodule
