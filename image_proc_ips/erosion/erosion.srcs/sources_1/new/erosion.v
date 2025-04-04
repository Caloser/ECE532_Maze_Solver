`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 04:12:24 PM
// Design Name: 
// Module Name: erosion
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


module erosion(
    input i_clk,
    input [8:0] i_pixel,
    input i_pixel_valid,
    output reg o_pixel,
    output reg o_pixel_valid
    );
    
    always@(posedge i_clk)
    begin
        o_pixel_valid <= i_pixel_valid;
    end
    
    always@(posedge i_clk)
    begin
        if (i_pixel_valid)
            o_pixel <= i_pixel[0] & i_pixel[1] & i_pixel[2] & i_pixel[3] & i_pixel[4] & i_pixel[5] & i_pixel[6] & i_pixel[7] & i_pixel[8];
    end
    
endmodule
