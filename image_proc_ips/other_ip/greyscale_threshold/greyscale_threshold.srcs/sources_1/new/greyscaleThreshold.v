`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 03:47:42 PM
// Design Name: 
// Module Name: greyscaleThreshold
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


module greyscaleThreshold #(parameter NUM_ROW=480, parameter NUM_COL=640)(
    input    axi_clk,
    input    axi_reset_n,
    //AXI4-S slave i/f
    input    s_axis_valid,
    input [23:0] s_axis_data,
    output   s_axis_ready,
    //AXI4-S master i/f
    output reg  m_axis_valid,
    output reg [7:0] m_axis_data,
    input    m_axis_ready,
    //
    output [9:0] dest_col,
    output [8:0] dest_row,
    output [9:0] start_col,
    output [8:0] start_row,
    output reg dest_start_valid
    );
    
    localparam MAX_DEST_THRESH = 'd160,
               MIN_DEST_THRESH = 'd128,
               MAX_START_THRESH = 'd128,
               MIN_START_THRESH = 'd96;
    
    reg [9:0] colIdx;
    reg [8:0] rowIdx;
    
    reg [9:0] destColMax;
    reg [8:0] destRowMax;
    reg [9:0] destColMin;
    reg [8:0] destRowMin;
    
    reg [9:0] startColMax;
    reg [8:0] startRowMax;
    reg [9:0] startColMin;
    reg [8:0] startRowMin;
    
    wire [15:0] r_weighted;
    wire [15:0] g_weighted;
    wire [15:0] b_weighted;
    wire [15:0] sum;
    wire [7:0] grey;
    wire bin;
    
    assign r_weighted = s_axis_data[23:16] * 8'd77;
    assign g_weighted = s_axis_data[15:8] * 8'd150;
    assign b_weighted = s_axis_data[7:0] * 8'd29;
    assign sum = r_weighted + g_weighted + b_weighted;
    assign grey = sum[15:8];
    assign bin = (grey >= MAX_DEST_THRESH) ? 1 : 0;
        
    assign s_axis_ready = m_axis_ready;
    
    always @(posedge axi_clk)
    begin
        if (!axi_reset_n)
        begin
            colIdx <= 0;
            rowIdx <= 0;
        end
        else
        begin
            if (s_axis_valid & s_axis_ready)
            begin
                if (colIdx == NUM_COL-1)
                begin
                    colIdx <= 0;
                    if (rowIdx == NUM_ROW-1)
                        rowIdx <= 0;
                    else
                        rowIdx <= rowIdx + 1;
                end
                else
                begin
                    colIdx <= colIdx + 1;
                end
            end
            else
            begin
                colIdx <= colIdx;
                rowIdx <= rowIdx;
            end
        end
    end
    
    always @(posedge axi_clk)
    begin
        if (!axi_reset_n | (colIdx == 0 & rowIdx == 0))
        begin
            destColMax <= 0;
            destRowMax <= 0;
            destColMin <= NUM_COL-1;
            destRowMin <= NUM_ROW-1;
            startColMax <= 0;
            startRowMax <= 0;
            startColMin <= NUM_COL-1;
            startRowMin <= NUM_ROW-1;
        end
        if (s_axis_valid & s_axis_ready)
        begin
            if (grey < MAX_DEST_THRESH & grey >= MIN_DEST_THRESH)
            begin
                destColMax <= (colIdx > destColMax) ? colIdx : destColMax;
                destRowMax <= (rowIdx > destRowMax) ? rowIdx : destRowMax;
                destColMin <= (colIdx < destColMin) ? colIdx : destColMin;
                destRowMin <= (rowIdx < destRowMin) ? rowIdx : destRowMin;
                startColMax <= startColMax;
                startRowMax <= startRowMax;
                startColMin <= startColMin;
                startRowMin <= startRowMin;
            end
            else if (grey < MAX_START_THRESH & grey >= MIN_START_THRESH)
            begin
                startColMax <= (colIdx > startColMax) ? colIdx : startColMax;
                startRowMax <= (rowIdx > startRowMax) ? rowIdx : startRowMax;
                startColMin <= (colIdx < startColMin) ? colIdx : startColMin;
                startRowMin <= (rowIdx < startRowMin) ? rowIdx : startRowMin;
                destColMax <= destColMax;
                destRowMax <= destRowMax;
                destColMin <= destColMin;
                destRowMin <= destRowMin;
            end
            else
            begin
                destColMax <= destColMax;
                destRowMax <= destRowMax;
                destColMin <= destColMin;
                destRowMin <= destRowMin;
                startColMax <= startColMax;
                startRowMax <= startRowMax;
                startColMin <= startColMin;
                startRowMin <= startRowMin;
            end
        end
    end
    
    always @(posedge axi_clk)
    begin
        if (s_axis_valid & s_axis_ready)
        begin
            m_axis_data <= {7'b0, bin};
        end
    end
    
    always @(posedge axi_clk)
    begin
        m_axis_valid <= s_axis_valid;
    end
    
    assign dest_col = (destColMax + destColMin) >> 1;
    assign dest_row = (destRowMax + destRowMin) >> 1;
    assign start_col = (startColMax + startColMin) >> 1;
    assign start_row = (startRowMax + startRowMin) >> 1;
    
    always @(posedge axi_clk)
    begin
        if (!axi_reset_n)
            dest_start_valid <= 0;
        else if (dest_start_valid)
            dest_start_valid <= 0;
        else if (s_axis_valid & s_axis_ready)
        begin
            if (rowIdx == NUM_ROW-1 & colIdx == NUM_COL-1)
            begin
                dest_start_valid <= 1;
            end
        end
    end

endmodule
