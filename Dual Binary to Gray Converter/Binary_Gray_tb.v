`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dylan Dang
// 
// Create Date: 11/16/2021 03:11:49 PM
// Design Name: 
// Module Name: Binary_Gray_tb
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


module Binary_Gray_tb (
    );
    
    reg [3:0] num_tb; 
    reg sel_tb;
    wire [3:0] out_tb;
    
    Binary_Gray uut(.num(num_tb), .sel(sel_tb), .out(out_tb));
    
    initial begin
        // Binary to Gray
        sel_tb = 0;
        num_tb = 0101;
        #20;

	    num_tb = 0001;
        #20;
        
        // Gray to Binary
        sel_tb = 1;
        num_tb = 1001;
        #20;
	
	    num_tb = 1000;
        #20;

	    $finish;
    end
endmodule
