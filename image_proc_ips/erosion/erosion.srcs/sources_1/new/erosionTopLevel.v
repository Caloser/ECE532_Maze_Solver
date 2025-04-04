`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 04:12:24 PM
// Design Name: 
// Module Name: erosionTopLevel
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


module erosionTopLevel#(parameter LINE_SIZE=320, parameter ROW_SIZE=240)(
    input   axi_clk,
    input   axi_reset_n,
    //slave interface
    input   s_axis_valid,
    input [7:0] s_axis_data,
    output  s_axis_ready,
    //master interface
    output  m_axis_valid,
    output  [7:0] m_axis_data,
    input   m_axis_ready
);

    localparam RESET = 'd0,
               INIT = 'd1,
               RUN = 'd2,
               FINAL = 'd3,
               WAIT = 'd4,
               SKIP = 'd5;
               
    reg [2:0] state;
    reg [9:0] colCtrIn;
    reg [8:0] rowCtrIn;
    reg [9:0] colCtrOut;
    reg [8:0] rowCtrOut;
    reg skip;

    reg [7:0] i_pixel_data;
    reg i_pixel_data_valid;
    wire [8:0] o_pixel_data;
    wire o_pixel_data_valid;
    wire eroded_pixel_data;
    wire eroded_pixel_valid;
    
    assign s_axis_ready = m_axis_ready & (state == RUN);
    
    // FSM control
    always @(posedge axi_clk)
    begin
        if(!axi_reset_n)
        begin
            state <= RESET;
        end
        else
        begin
            case(state)
                RESET:begin
                    state <= INIT;
                end
                INIT:begin
                    if (colCtrIn == LINE_SIZE - 1)
                        state <= RUN;
                end
                RUN:begin
                    if (colCtrIn == LINE_SIZE - 1 & rowCtrIn == ROW_SIZE - 1)
                        state <= FINAL;
                end
                FINAL:begin
                    if (colCtrIn == LINE_SIZE - 1)
                        state <= WAIT;
                end
                WAIT:begin
                    if (colCtrOut == LINE_SIZE - 1 & rowCtrOut == ROW_SIZE - 1)
                        state <= SKIP;
                end
                SKIP:begin
                    state <= RUN;
                end
            endcase
        end
    end
    
    always @(posedge axi_clk)
    begin
        if (!axi_reset_n)
        begin
            colCtrIn <= 'd0;
            rowCtrIn <= 'd0;
        end
        else if (state == INIT | state == FINAL)
        begin
            if (colCtrIn == LINE_SIZE - 1)
                colCtrIn <= 0;
            else
                colCtrIn <= colCtrIn + 'd1;
        end
        else if (state == RUN)
        begin
            if (s_axis_valid & s_axis_ready)
            begin
                if (colCtrIn == LINE_SIZE-1)
                begin
                    colCtrIn <= 0;
                    if (rowCtrIn == ROW_SIZE-1)
                        rowCtrIn <= 0;
                    else
                        rowCtrIn <= rowCtrIn + 1;
                end
                else
                begin
                    colCtrIn <= colCtrIn + 1;
                end
            end
        end
    end
    
    always @(posedge axi_clk)
    begin
        if (!axi_reset_n)
        begin
            colCtrOut <= 'd0;
            rowCtrOut <= 'd0;
        end
        else if (eroded_pixel_valid)
        begin
            if (colCtrOut == LINE_SIZE-1)
            begin
                colCtrOut <= 0;
                if (rowCtrOut == ROW_SIZE-1)
                    rowCtrOut <= 0;
                else
                    rowCtrOut <= rowCtrOut + 1;
            end
            else
            begin
                colCtrOut <= colCtrOut + 1;
            end
        end
    end
    
    always @(*)
    begin
        if (!axi_reset_n)
        begin
            i_pixel_data = 0;
            i_pixel_data_valid = 0;
            skip = 0;
        end
        else
        begin
            case(state)
                INIT:begin
                    i_pixel_data = 1;
                    i_pixel_data_valid = 1;
                    skip = 0;
                end
                RUN:begin
                    i_pixel_data = s_axis_data;
                    i_pixel_data_valid = (s_axis_valid & s_axis_ready);
                    skip = 0;
                end
                FINAL:begin
                    i_pixel_data = 1;
                    i_pixel_data_valid = 1;
                    skip = 0;
                end
                SKIP:begin
                    i_pixel_data = 0;
                    i_pixel_data_valid = 0;
                    skip = 1;
                end
                default:begin
                    i_pixel_data = 0;
                    i_pixel_data_valid = 0;
                    skip = 0;
                end
           endcase
       end
    end
        
    lineControlErosion #(LINE_SIZE) LC(
        .i_clk(axi_clk),
        .i_rst_n(axi_reset_n),
        .i_pixel_data(i_pixel_data[0]),
        .i_pixel_data_valid(i_pixel_data_valid),
        .o_pixel_data(o_pixel_data),
        .o_pixel_data_valid(o_pixel_data_valid),
        .i_pixel_data_ready(m_axis_ready),
        .i_skip(skip)
    );    
      
    erosion erosion(
        .i_clk(axi_clk),
        .i_pixel(o_pixel_data),
        .i_pixel_valid(o_pixel_data_valid),
        .o_pixel(eroded_pixel_data),
        .o_pixel_valid(eroded_pixel_valid)
    );
    
    assign m_axis_data = eroded_pixel_data;
    assign m_axis_valid = eroded_pixel_valid;
     
endmodule