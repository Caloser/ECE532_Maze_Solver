`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 05:19:46 PM
// Design Name: 
// Module Name: vga_truncator
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


module vga_truncator(
    output [3:0] red_out,
    output [3:0] green_out,
    output [3:0] blue_out,
    output hsync_out,
    output vsync_out,
    input [5:0] red_in,
    input [5:0] green_in,
    input [5:0] blue_in,
    input hsync_in,
    input vsync_in,
    input de_in,
    input dps_in,
    input vga_clk_in
    );
    assign red_out = red_in[5:2];
    assign green_out = green_in[5:2];
    assign blue_out = blue_in[5:2];
    assign hsync_out = hsync_in;
    assign vsync_out = vsync_in;
    
    wire [1:0] dummy_red;
    wire [1:0] dummy_green;
    wire [1:0] dummy_blue;
    wire dummy_de;
    wire dummy_dps;
    wire dummy_vga_clk_in;
    
    assign dummy_red = red_in[1:0];
    assign dummy_green = green_in[1:0];
    assign dummy_blue = blue_in[1:0];
    assign {dummy_de, dummy_dps, dummy_vga_clk_in} = {de_in, dps_in, vga_clk_in};
endmodule
