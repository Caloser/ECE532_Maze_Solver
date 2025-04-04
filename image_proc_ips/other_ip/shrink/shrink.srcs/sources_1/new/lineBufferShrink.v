`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2025 05:01:35 PM
// Design Name: 
// Module Name: linebuffer
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


module lineBufferShrink #(parameter LINE_SIZE=640)(
    input i_clk,
    input i_rst_n,
    input i_data,
    input i_data_valid,
    output reg [1:0] o_data,
    input i_rd_data
);
    reg [LINE_SIZE-1:0] line; // line buffer
    reg [9:0] wrPntr;
    reg [9:0] rdPntr;
    
    always @(posedge i_clk)
    begin;
        if (i_data_valid)
            line[wrPntr] <= i_data;
    end
    
    always @(posedge i_clk)
    begin
        if (!i_rst_n)
            wrPntr <= 'd0;
        else if (i_data_valid)
        begin
            if (wrPntr == LINE_SIZE - 1)
                wrPntr <= 0;
            else
                wrPntr <= wrPntr + 'd1;
        end
    end
    
    always @(*)
    begin
        o_data = {line[rdPntr], line[rdPntr+1]};
    end
    
    always @(posedge i_clk)
    begin
        if (!i_rst_n)
            rdPntr <= 'd0;
        else if (i_rd_data)
        begin
            if (rdPntr == LINE_SIZE - 2)
                rdPntr <= 0;
            else
                rdPntr <= rdPntr + 'd2;
        end
    end

endmodule