`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2021 03:33:55 PM
// Design Name: 
// Module Name: AddSubCLA_4bit_tb
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


module AddSubCLA_4bit_tb( );
    
    reg [3:0] a_tb, b_tb;
    reg  sel_tb;    
    wire c_out_tb, of_tb;
    wire [3:0] sum_tb;
    
    localparam period = 100;
    
    AddSubCLA_4bit uut (.a(a_tb), .b(b_tb), .sel(sel_tb), .sum(sum_tb), .carry(c_out_tb), .overflow(of_tb));
    
    initial begin
	//case 1
	
	/*Example 1: 0000+0000=0000, 0000-0000=0000
      Example2: 1000+0001=1001, 1000-0001=0111
      Example 3: 1010+0101=1111, 1010-0101=0101
      Example 4: 0010+1110=0000, 0010-1110=0100*/
      
        a_tb = 4'b0000;
        b_tb = 4'b0000;
        sel_tb = 0;      
        #period;        //add
       
        a_tb = 4'b0000;
        b_tb = 4'b0000;
        sel_tb = 1;      
        #period;        //sub

    //case 2
       
        a_tb = 4'b1000;
        b_tb = 4'b0001;
        sel_tb = 0;      
        #period;        //add
        
        a_tb = 4'b1000;
        b_tb = 4'b0001;
        sel_tb = 1;      
        #period;        //sub
                    
    //case 3
      
        a_tb = 4'b1010;
        b_tb = 4'b0101;
        sel_tb = 0;      
        #period;        //add
        
        a_tb = 4'b1010;
        b_tb = 4'b0101;
        sel_tb = 1;      
        #period;        //sub
        
    //case 4
         
        a_tb = 4'b0010;
        b_tb = 4'b1110;
        sel_tb = 0;      
        #period;        //add
        
        a_tb = 4'b0010;
        b_tb = 4'b1110;
        sel_tb = 1;      
        #period;        //sub
       
        $finish;
    end  
endmodule