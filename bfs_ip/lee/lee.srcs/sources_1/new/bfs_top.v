`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2025 02:49:36 PM
// Design Name: 
// Module Name: bfs_top
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


module bfs_top #(
    parameter MAZE_ROWS = 240,
    parameter MAZE_COLS = 320
)(
    input               axi_clk,
    input               axi_reset_n,
    //AXI4-S slave i/f
    input               s_axis_valid,
    input [7:0]         s_axis_data,
    output              s_axis_ready,
    //AXI4-S master i/f
    output              m_axis_valid,
    output [31:0]       m_axis_data,
    input               m_axis_ready,
    //inputs from image proc
    input [9:0]         dest_col,
    input [8:0]         dest_row,
    input [9:0]         start_col,
    input [8:0]         start_row,
    input               dest_start_valid
);

    localparam DATA_WIDTH = 24; // for 24-bit pixel values
    localparam ADDR_WIDTH = $clog2(MAZE_ROWS * MAZE_COLS);
    localparam MAX_ADDR = MAZE_ROWS * MAZE_COLS - 1;

    reg dest_start_asserted;
    reg maze_received;
    reg maze_wren;
    reg maze_din;
    reg [ADDR_WIDTH-1:0] maze_addr;
    reg [ADDR_WIDTH-1:0] start_pos;
    reg [ADDR_WIDTH-1:0] end_pos;
    reg start_solve;
    reg [ADDR_WIDTH-1:0] dist_addr;
    wire [DATA_WIDTH-1:0] dist_out;
    wire [3:0] solver_state;
    reg dist_rd_done;
    reg [2:0] delay;

    // maze solver internal state
    localparam IDLE = 4'b0000;
    localparam DONE = 4'b1111;
    assign s_axis_ready = ((solver_state == IDLE) || ((solver_state == DONE) && (delay == 'd5))) && !maze_received && !start_solve;

    always @(posedge axi_clk) begin
        if (~axi_reset_n) begin
            start_pos <= 0;
            end_pos <= 0;
            dest_start_asserted <= 1'b0;
        end else begin
            if (dest_start_valid & s_axis_ready) begin
                start_pos <= start_row * MAZE_COLS + start_col;
                end_pos <= dest_row * MAZE_COLS + dest_col;
                dest_start_asserted <= 1'b1;
            end 
            else if (maze_received & dest_start_asserted & s_axis_ready) begin
                // set up for next maze
                dest_start_asserted <= 1'b0;
            end
        end
    end

    always @(posedge axi_clk) begin
        if (~axi_reset_n) begin
            maze_wren <= 1'b0;
            maze_addr <= {ADDR_WIDTH{1'b1}};
            maze_din <= 0;
            maze_received <= 1'b0;
        end else begin
            if (s_axis_valid & s_axis_ready) begin
                maze_din <= s_axis_data[0];
                if (maze_addr == MAX_ADDR) begin
                    maze_wren <= 1'b0;
                    maze_addr <= {ADDR_WIDTH{1'b1}};
                    maze_received <= 1'b1;
                end else begin
                    maze_wren <= 1'b1;
                    maze_addr <= maze_addr + 1'b1;
                end
            end else begin
                if (maze_addr == MAX_ADDR) begin
                    maze_wren <= 1'b0;
                    maze_addr <= {ADDR_WIDTH{1'b1}};
                    maze_received <= 1'b1;
                end
                else begin
                    // set up for next maze
                    maze_wren <= 1'b0;
                    maze_received <= 1'b0;
                end
            end
        end
    end

    // start_solve pulse generator
    always @(posedge axi_clk) begin
        if (~axi_reset_n) begin
            start_solve <= 1'b0;
        end else begin
            if(maze_received & dest_start_asserted) begin
                start_solve <= 1'b1;
            end else begin
                start_solve <= 1'b0;
            end
        end
    end

    // read distances out of RAM when solver is done
    assign m_axis_valid = ((solver_state == DONE) && (delay >= 'd2 && delay <= 'd4));
    assign m_axis_data = (dist_rd_done) ? ((delay == 'd3) ? start_pos : end_pos) : dist_out;

    always @(posedge axi_clk) begin
        if (~axi_reset_n) begin
            dist_addr <= 0;
            dist_rd_done <= 1'b0;
            delay <= 0;
        end else begin
            if(solver_state == DONE) begin
                if(delay < 'd2) begin
                    delay <= delay + 1'b1;
                end else begin
                    if(m_axis_valid & m_axis_ready) begin
                        if(dist_addr == MAX_ADDR) begin
                            dist_rd_done <= 1'b1;
                            delay <= (delay < 'd5) ? delay + 1'b1 : delay;
                        end else begin
                            dist_addr <= dist_addr + 1'b1;
                            delay <= 0;
                        end
                    end
                end
            end else begin
                dist_addr <= 0;
                dist_rd_done <= 1'b0;
                delay <= 0;
            end
        end
    end

    bfs_maze_solver #(
        .MAZE_ROWS(MAZE_ROWS),
        .MAZE_COLS(MAZE_COLS),
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) solver_inst (
        .clk(axi_clk),
        .resetn(axi_reset_n),
        .maze_wren(maze_wren),
        .maze_din(maze_din),
        .maze_addr(maze_addr),
        .start_pos(start_pos),
        .end_pos(end_pos),
        .start_solve(start_solve),
        .maze_received(maze_received),
        .dist_addr(dist_addr),
        .dist_out(dist_out),
        .state_out(solver_state)
    );

endmodule
