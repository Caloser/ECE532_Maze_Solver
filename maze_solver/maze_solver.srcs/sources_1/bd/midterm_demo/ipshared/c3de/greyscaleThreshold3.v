`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2025 04:19:11 PM
// Design Name: 
// Module Name: greyscaleThreshold3
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


module greyscaleThreshold3 #(parameter NUM_ROW=240, parameter NUM_COL=320)(
    input    axi_clk,
    input    axi_reset_n,
    //AXI4-S slave i/f
    input    s_axis_valid,
    input [31:0] s_axis_data,
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
//    output reg [9:0] dest_col,
//    output reg [8:0] dest_row,
//    output reg [9:0] start_col,
//    output reg [8:0] start_row,
    output reg dest_start_valid
    );
    
    localparam MAX_DEST_THRESH_r = 'd1,
               MAX_DEST_THRESH_g = 'd6,
               MAX_DEST_THRESH_b = 'd9,
               MIN_DEST_THRESH_r = 'd0,
               MIN_DEST_THRESH_g = 'd5,
               MIN_DEST_THRESH_b = 'd8,
               MAX_START_THRESH_r = 'd10,
               MAX_START_THRESH_g = 'd1,
               MAX_START_THRESH_b = 'd1,
               MIN_START_THRESH_r = 'd8,
               MIN_START_THRESH_g = 'd0,
               MIN_START_THRESH_b = 'd0,
               WALL_THRESH = 'd96;
    
    reg [9:0] colIdx;
    reg [8:0] rowIdx;
    
    reg [17:0] destCount;
    reg [17:0] startCount;
    
    reg [9:0] destColMax;
    reg [8:0] destRowMax;
    reg [9:0] destColMin;
    reg [8:0] destRowMin;
    
    reg [9:0] startColMax;
    reg [8:0] startRowMax;
    reg [9:0] startColMin;
    reg [8:0] startRowMin;
    
    wire [3:0] r;
    wire [3:0] g;
    wire [3:0] b;
    wire [7:0] r_weighted;
    wire [7:0] g_weighted;
    wire [7:0] b_weighted;
    wire [7:0] grey;
    wire bin;
    
    // ((colour2 & 0xF) * 2) + (((colour2 >> 4) & 0xF) * 9) + (((colour2 >> 8) & 0xF) * 4)
    assign r = (s_axis_data[23:20]);
    assign g = (s_axis_data[15:12]);
    assign b = (s_axis_data[7:4]);
    assign r_weighted = r * 8'd4;
    assign g_weighted = g * 8'd9;
    assign b_weighted = b * 8'd2;
    assign grey = r_weighted + g_weighted + b_weighted;
    assign bin = (grey >= WALL_THRESH) ? 1 : 0;
        
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
//            destCount <= 1;
//            startCount <= 1;
//            dest_col <= 0;
//            dest_row <= 0;
//            start_col <= 0;
//            start_row <= 0;
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
            if (r <= MAX_DEST_THRESH_r & r >= MIN_DEST_THRESH_r & g <= MAX_DEST_THRESH_g & g >= MIN_DEST_THRESH_g & b <= MAX_DEST_THRESH_b & b >= MIN_DEST_THRESH_b & colIdx > 5 & colIdx < NUM_COL-6 & rowIdx > 5 & rowIdx < NUM_ROW-6)
            begin
//                destCount <= destCount + 1;
                
//                if (colIdx > dest_col)
//                begin
//                    dest_col <= dest_col + ((colIdx - dest_col) / destCount);
//                end
//                else if (dest_col > colIdx)
//                begin
//                    dest_col <= dest_col + ((dest_col - colIdx) / destCount);
//                end
                
//                if (rowIdx > dest_row)
//                begin
//                    dest_row <= dest_row + ((rowIdx - dest_row) / destCount);
//                end
//                else if (dest_row > rowIdx)
//                begin
//                    dest_row <= dest_row + ((dest_row - rowIdx) / destCount);
//                end
                
//                startCount <= startCount;
//                start_col <= start_col;
//                start_row <= start_row;
                
                destColMax <= (colIdx > destColMax) ? colIdx : destColMax;
                destRowMax <= (rowIdx > destRowMax) ? rowIdx : destRowMax;
                destColMin <= (colIdx < destColMin) ? colIdx : destColMin;
                destRowMin <= (rowIdx < destRowMin) ? rowIdx : destRowMin;
                startColMax <= startColMax;
                startRowMax <= startRowMax;
                startColMin <= startColMin;
                startRowMin <= startRowMin;
            end
            else if (r <= MAX_START_THRESH_r & r >= MIN_START_THRESH_r & g <= MAX_START_THRESH_g & g >= MIN_START_THRESH_g & b <= MAX_START_THRESH_b & b >= MIN_START_THRESH_b & colIdx > 5 & colIdx < NUM_COL-6 & rowIdx > 5 & rowIdx < NUM_ROW-6)
            begin
//                startCount <= startCount + 1;
                
//                if (colIdx > start_col)
//                begin
//                    start_col <= start_col + ((colIdx - start_col) / startCount);
//                end
//                else if (dest_col > colIdx)
//                begin
//                    start_col <= start_col + ((start_col - colIdx) / startCount);
//                end
                
//                if (rowIdx > start_row)
//                begin
//                    start_row <= start_row + ((rowIdx - start_row) / startCount);
//                end
//                else if (dest_row > rowIdx)
//                begin
//                    start_row <= start_row + ((start_row - rowIdx) / startCount);
//                end
                
//                destCount <= destCount;
//                dest_col <= dest_col;
//                dest_row <= dest_row;

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
//                destCount <= destCount;
//                dest_col <= dest_col;
//                dest_row <= dest_row;
//                startCount <= startCount;
//                start_col <= start_col;
//                start_row <= start_row;
                
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
