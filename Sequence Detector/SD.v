`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dylan Dang
// 
// Create Date: 10/05/2021 03:39:15 PM
// Design Name: 
// Module Name: SD
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


module SD(
    input i,
    input clk,
    output o
    );
    
    reg o;
    
    // State delcaration
    localparam [1:0] s0 = 2'b00, s1 = 2'b01, s2 = 2'b10;
    
    // State variables
    reg [1:0] c_state, n_state;
    
    // State register
    always @ (posedge clk) begin
        c_state <= n_state;
    end
    
    // Next state logic
    always @ (*) begin
        case (c_state)
            s0: begin
                n_state = (i) ? s0:s1;
                o = (i) ? 1'b0:1'b1;
                end
            s1: begin
                n_state = (i) ? s0:s2;
                o = 1'b0;
                end
            s2: begin
                n_state = (i) ? s2:s1;
                o = (i) ? 1'b1:1'b0;
                end
            default: begin
                n_state = s0;
                o = 1'b0;
                end
         endcase
    end
endmodule
