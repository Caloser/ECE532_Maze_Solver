`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 11:16:50 AM
// Design Name: 
// Module Name: shrinkTopLevel
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


module shrinkTopLevel #(parameter LINE_SIZE=640)(
    input    axi_clk,
    input    axi_reset_n,
    //AXI4-S slave i/f
    input    s_axis_valid,
    input [7:0] s_axis_data,
    output   s_axis_ready,
    //AXI4-S master i/f
    output m_axis_valid,
    output [7:0] m_axis_data,
    input    m_axis_ready
    );
    
    wire [3:0] o_pixel_data;
    wire o_pixel_data_valid;
    wire shrunk_pixel_data;
    wire shrunk_pixel_valid;
    
    assign s_axis_ready = m_axis_ready;
    
    lineControlShrink #(LINE_SIZE) LC(
        .i_clk(axi_clk),
        .i_rst_n(axi_reset_n),
        .i_pixel_data(s_axis_data),
        .i_pixel_data_valid(s_axis_valid),
        .o_pixel_data(o_pixel_data),
        .o_pixel_data_valid(o_pixel_data_valid),
        .i_pixel_data_ready(m_axis_ready)
    );
    
    majority majority(
        .i_clk(axi_clk),
        .i_pixel(o_pixel_data),
        .i_pixel_valid(o_pixel_data_valid),
        .o_pixel(shrunk_pixel_data),
        .o_pixel_valid(shrunk_pixel_valid)
    );
    
    assign m_axis_data = shrunk_pixel_data;
    assign m_axis_valid = shrunk_pixel_valid;
    
endmodule
