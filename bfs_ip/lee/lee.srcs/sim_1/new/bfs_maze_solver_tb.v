`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2025 12:59:53 PM
// Design Name: 
// Module Name: bfs_maze_solver_tb
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


module bfs_maze_solver_tb(

    );
    parameter MAZE_ROWS = 20;
    parameter MAZE_COLS = 20;
    parameter DATA_WIDTH = 24;
    parameter ADDR_WIDTH = $clog2(MAZE_ROWS * MAZE_COLS);

    reg clk;
    reg resetn;
    reg maze_wren;
    reg maze_din;
    reg [ADDR_WIDTH-1:0] maze_addr;
    reg [ADDR_WIDTH-1:0] start_pos;
    reg [ADDR_WIDTH-1:0] end_pos;
    reg start_solve;
    reg [ADDR_WIDTH-1:0] dist_addr;
    wire [DATA_WIDTH-1:0] dist_out;
    wire [3:0] solver_state;
    
    bfs_maze_solver #(
        .MAZE_ROWS(MAZE_ROWS),
        .MAZE_COLS(MAZE_COLS),
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) DUT (
        .clk(clk),
        .resetn(resetn),
        .maze_wren(maze_wren),
        .maze_din(maze_din),
        .maze_addr(maze_addr),
        .start_pos(start_pos),
        .end_pos(end_pos),
        .start_solve(start_solve),
        .dist_addr(dist_addr),
        .dist_out(dist_out),
        .state_out(solver_state)
    );

    localparam DONE = 4'b1111;
    wire mock_valid;
    reg mock_ready;
    initial begin
        clk = 0;
        resetn = 0;
        maze_wren = 0;
        maze_din = 0;
        maze_addr = 0;
        start_pos = 0;
        end_pos = MAZE_ROWS * MAZE_COLS - 1;
        start_solve = 0;
        mock_ready = 0;
        $readmemb("maze20x20.mem",DUT.maze.mem);
        #35; 
        resetn = 1;
        start_pos = 9 * MAZE_COLS + 16; // row 1 col 0
        end_pos = 17 * MAZE_COLS + 17; // row 8 col 9
        #35;
        start_solve = 1;
        #20;
        start_solve = 0;
        #100000;
        $writememh("dist20x20.mem",DUT.distance.mem);
        mock_ready = 1;
        #20000;
        $finish;
    end

    reg [2:0] delay;
    reg dist_rd_done;
    wire [31:0] mock_data;

    assign mock_valid = ((solver_state == DONE) && (delay >= 'd2 && delay <= 'd4));
    assign mock_data = (dist_rd_done) ? ((delay == 'd3) ? start_pos : end_pos) : dist_out;

    always @(posedge clk) begin
        if(~resetn) begin
            dist_addr <= 0;
            dist_rd_done <= 1'b0;
            delay <= 0;
        end else begin
            if(solver_state == DONE) begin
                if(delay < 'd2) begin
                    delay <= delay + 1'b1;
                end else begin
                    if(mock_valid & mock_ready) begin
                        if(dist_addr == MAZE_ROWS * MAZE_COLS - 1) begin
                            dist_rd_done <= 1'b1;
                            delay <= (delay < 'd5) ? delay + 1'b1 : delay;
                        end else begin
                            dist_addr <= dist_addr + 1'b1;
                            delay <= 0;
                        end
                        $display("display: dist_out: %x", mock_data);
                    end
                end
            end else begin
                dist_addr <= 0;
                dist_rd_done <= 1'b0;
                delay <= 0;
            end
        end
    end

    always @(clk) begin
        #10 clk <= ~clk;
    end
endmodule
