`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 11:28:14 AM
// Design Name: 
// Module Name: majority
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


module majority(
    input i_clk,
    input [3:0] i_pixel,
    input i_pixel_valid,
    output reg o_pixel,
    output reg o_pixel_valid
    );
    
    wire p012, p013, p023, p123;
    
    assign p012 = i_pixel[0] & i_pixel[1] & i_pixel[2];
    assign p013 = i_pixel[0] & i_pixel[1] & i_pixel[3];
    assign p023 = i_pixel[0] & i_pixel[2] & i_pixel[3];
    assign p123 = i_pixel[1] & i_pixel[2] & i_pixel[3];
    
    always@(posedge i_clk)
    begin
        o_pixel_valid <= i_pixel_valid;
    end
    
    always@(posedge i_clk)
    begin
        if (i_pixel_valid)
            o_pixel <= p012 | p013 | p023 | p123;
    end
endmodule