module bfs_maze_solver #(
    parameter MAZE_ROWS = 240,
    parameter MAZE_COLS = 320,
    parameter DATA_WIDTH = 24,
    parameter ADDR_WIDTH = 17
)(
    input clk,
    input resetn,

    // intf for inputting maze
    input maze_wren,
    input maze_din,
    input [ADDR_WIDTH-1:0] maze_addr,

    // control
    input [ADDR_WIDTH-1:0] start_pos,
    input [ADDR_WIDTH-1:0] end_pos,
    input start_solve,
    input maze_received,
    input [ADDR_WIDTH-1:0] dist_addr,
    output [DATA_WIDTH-1:0] dist_out,
    output [3:0] state_out,
    output reg end_found
);
    localparam BLACK = 24'h000000;
    localparam WHITE = 24'hFFFFFF;
    localparam RED   = 24'hFF0000;
    localparam GREEN = 24'h0FF000;
    localparam BLUE  = 24'h0000FF;

    localparam IDLE = 4'b0000;
    localparam INIT_MAZE = 4'b0001;
    localparam ENQUEUE_START = 4'b0010;
    localparam PROCESS_QUEUE = 4'b0011;
    localparam VALIDATE_NEIGHBOURS = 4'b0100;
    localparam READ_MEMORY = 4'b0101;
    localparam WRITE_MEMORY = 4'b0110;
    localparam DONE_SOLVE = 4'b0111;
    localparam BACKTRACK_INIT = 4'b1000;
    localparam BACKTRACK_VALIDATE_NEIGHBOURS = 4'b1001;
    localparam BACKTRACK_READ_MEMORY = 4'b1010;
    localparam BACKTRACK_WRITE_MEMORY = 4'b1011;
    localparam BACKTRACK_FILL_READ = 4'b1100;
    localparam BACKTRACK_FILL_WRITE = 4'b1101;
    localparam BACKTRACK_INCREMENT_ADDR = 4'b1110;
    localparam BACKTRACK_DONE = 4'b1111;
    reg [3:0] state, next_state;
    reg backtrack_path_done, backtrack_fill_done;

    wire [ADDR_WIDTH-1:0] maze_addr_int;
    reg [ADDR_WIDTH-1:0] maze_addr_p;
    assign maze_addr_int = (state == IDLE || state == BACKTRACK_DONE) ? maze_addr : maze_addr_p;
    wire maze_wren_int;
    assign maze_wren_int = (state == IDLE || state == BACKTRACK_DONE) ? maze_wren : 1'b0;

    wire maze_dout;
    ram #(
        .MAZE_ROWS(MAZE_ROWS),
        .MAZE_COLS(MAZE_COLS),
        .DATA_WIDTH(1),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) maze (
        .clk(clk),
        .we(maze_wren_int),
        .din(maze_din),
        .addr(maze_addr_int),
        .dout(maze_dout)
    );

    localparam QUEUE_SIZE = MAZE_ROWS + MAZE_COLS;
    reg [ADDR_WIDTH-1:0] queue [0:QUEUE_SIZE-1];
    reg [$clog2(QUEUE_SIZE)-1:0] queue_idx;
    integer k;
    reg [ADDR_WIDTH-1:0] curr_pos;
    reg [ADDR_WIDTH-1:0] neighbours [3:0]; // up, down, left, right
    reg [3:0] maze_vals;
    reg [3:0] valid_neighbours; // has_up, has_left, has_right, has_down;
    reg [2:0] delay; // delay in reading maze values out of BRAM
    reg [2:0] delay2; // delay in writing distance values to BRAM
    reg [DATA_WIDTH-1:0] curr_dist;
    reg [DATA_WIDTH-1:0] neighbour_dist [3:0]; // current distance of each neighbour
    localparam INF = {DATA_WIDTH{1'b1}};
    reg queue_empty;

    reg dist_wren;
    reg [DATA_WIDTH-1:0] dist_din;
    reg [ADDR_WIDTH-1:0] dist_addr_int;
    reg dist_reset_done;
    wire [DATA_WIDTH-1:0] dist_dout;

    always @(posedge clk) begin
        if(~resetn) begin
            dist_wren <= 0;
            dist_din <= 0;
            dist_addr_int <= 0;
            dist_reset_done <= 0;
            maze_addr_p <= 0;
            end_found <= 0;
            delay <= 0;
            delay2 <= 0;
            queue_idx <= 0;
            for (k = 0; k < QUEUE_SIZE; k = k + 1) begin
                queue[k] <= 0;
            end
            for (k = 0; k < 4; k = k + 1) begin
                neighbours[k] <= 0;
                neighbour_dist[k] <= 0;
                maze_vals[k] <= 0;
                valid_neighbours[k] <= 0;
            end
            backtrack_path_done <= 0;
            backtrack_fill_done <= 0;
        end else begin
            case(state)
                IDLE: begin
                    dist_wren <= 1'b0;
                    dist_din <= 0;
                    dist_addr_int <= {ADDR_WIDTH{1'b1}};
                    dist_reset_done <= 0;
                    end_found <= 0;
                    delay <= 0;
                    delay2 <= 0;
                    queue_idx <= 0;
                    curr_pos <= 0;
                    backtrack_path_done <= 0;
                    backtrack_fill_done <= 0;
                end
                INIT_MAZE: begin
                    dist_din <= {DATA_WIDTH{1'b1}};
                    if(dist_addr_int == MAZE_ROWS * MAZE_COLS - 1) begin
                        dist_reset_done <= 1'b1;
                        dist_wren <= 1'b0;
                        dist_addr_int <= {ADDR_WIDTH{1'b1}};
                    end else begin
                        if(~dist_reset_done) begin
                            dist_wren <= 1'b1;
                            dist_addr_int <= dist_addr_int + 1'b1;
                        end
                    end
                    end_found <= 0;
                    delay <= 0;
                    delay2 <= 0;
                    queue_idx <= 0;
                end
                ENQUEUE_START: begin
                    dist_wren <= 1'b1;
                    dist_addr_int <= start_pos;
                    dist_din <= 0;
                    queue[0] <= start_pos;
                    queue_idx <= 1;
                end
                PROCESS_QUEUE: begin
                    dist_wren <= 1'b0;
                    curr_pos <= queue[0];
                    for (k = 0; k < QUEUE_SIZE - 1; k = k + 1) begin
                        queue[k] <= queue[k + 1];
                    end
                    // up
                    neighbours[0] <= queue[0] - MAZE_COLS;
                    // down
                    neighbours[1] <= queue[0] + MAZE_COLS;
                    // left
                    neighbours[2] <= queue[0] - 1;
                    // right
                    neighbours[3] <= queue[0] + 1;
                    queue_idx <= queue_idx - 1'b1;
                    delay <= 0;
                    delay2 <= 0;
                end
                VALIDATE_NEIGHBOURS: begin
                    valid_neighbours[0] <= (curr_pos > (MAZE_COLS - 1));
                    valid_neighbours[1] <= (curr_pos < (MAZE_ROWS-1) * MAZE_COLS);
                    valid_neighbours[2] <= ((curr_pos % MAZE_COLS) > 0);
                    valid_neighbours[3] <= ((curr_pos % MAZE_COLS) != (MAZE_COLS - 1));
                end
                READ_MEMORY: begin
                    if(delay < 4) begin
                        maze_addr_p <= (valid_neighbours[delay]) ? neighbours[delay] : 0;
                        delay <= delay + 1'b1;
                        if(delay >= 2) begin
                            maze_vals[delay-2] <= maze_dout;
                        end
                    end else begin
                        maze_vals[2] <= maze_dout;
                        dist_addr_int <= curr_pos;
                        delay <= 0;
                    end
                end
                WRITE_MEMORY: begin
                    case(delay)
                        0: maze_vals[3] <= maze_dout;
                        1: curr_dist <= dist_dout;
                        2: neighbour_dist[0] <= dist_dout;
                        3: neighbour_dist[1] <= dist_dout;
                        4: neighbour_dist[2] <= dist_dout;
                        5: neighbour_dist[3] <= dist_dout;
                        default: begin
                        end
                    endcase
                    if(delay < 4) begin
                        dist_addr_int <= (valid_neighbours[delay] && (maze_vals[delay] == 0)) ? neighbours[delay] : 0;
                        delay <= delay + 1'b1;
                    end else begin
                        delay <= (delay < 6) ? delay + 1'b1 : delay;
                        if (delay2 < 4) begin 
                            if(valid_neighbours[delay2] && (maze_vals[delay2] == 0) && neighbour_dist[delay2] == INF) begin
                                dist_addr_int <= neighbours[delay2];
                                dist_wren <= 1'b1;
                                dist_din <= curr_dist + 1'b1;
                                queue[queue_idx] <= neighbours[delay2];
                                queue_idx <= queue_idx + 1'b1;
                                if(neighbours[delay2] == end_pos) begin
                                    end_found <= 1'b1;
                                end
                            end else begin
                                dist_wren <= 1'b0;
                            end
                            delay2 <= delay2 + 1'b1;
                        end else begin
                            dist_wren <= 1'b0;
                            delay2 <= 0;
                        end
                    end
                end
                DONE_SOLVE: begin
                    dist_wren <= 1'b0;
                    dist_din <= 'b0;
                    dist_addr_int <= 0;
                    curr_pos <= end_pos;
                    delay <= 0;
                end
                BACKTRACK_INIT: begin
                    if(delay == 2) begin
                        curr_dist <= dist_dout;
                        dist_wren <= 1'b1;
                        dist_din <= GREEN;
                    end else begin
                        delay <= delay + 1'b1;
                        dist_addr_int <= end_pos;
                    end
                end
                BACKTRACK_VALIDATE_NEIGHBOURS: begin
                    dist_wren <= 1'b0;
                    dist_din <= 'b0;
                    neighbours[0] <= curr_pos - MAZE_COLS;
                    neighbours[1] <= curr_pos + MAZE_COLS;
                    neighbours[2] <= curr_pos - 1;
                    neighbours[3] <= curr_pos + 1;
                    valid_neighbours[0] <= (curr_pos > (MAZE_COLS - 1));
                    valid_neighbours[1] <= (curr_pos < (MAZE_ROWS-1) * MAZE_COLS);
                    valid_neighbours[2] <= ((curr_pos % MAZE_COLS) > 0);
                    valid_neighbours[3] <= ((curr_pos % MAZE_COLS) != (MAZE_COLS - 1));
                    delay <= 0;
                end
                BACKTRACK_READ_MEMORY: begin
                    if(delay < 4) begin
                        dist_addr_int <= (valid_neighbours[delay]) ? neighbours[delay] : 0;
                        delay <= delay + 1'b1;
                        if(delay >= 2) begin
                            neighbour_dist[delay-2] <= dist_dout;
                        end
                    end else begin
                        neighbour_dist[2] <= dist_dout;
                        delay <= 0;
                    end
                end
                BACKTRACK_WRITE_MEMORY: begin
                    case(delay)
                        0: neighbour_dist[3] <= dist_dout;
                        1: begin
                            if (curr_pos == start_pos) begin
                                dist_addr_int <= 0;
                                dist_wren <= 1'b0;
                                dist_din <= 0;
                                backtrack_path_done <= 1'b1;
                            end else if (neighbour_dist[0] == curr_dist - 1) begin
                                curr_pos <= neighbours[0];
                                dist_addr_int <= neighbours[0];
                                dist_wren <= 1'b1;
                                dist_din <= GREEN;
                                backtrack_path_done <= 1'b0;
                                curr_dist <= curr_dist - 1;
                            end else if (neighbour_dist[1] == curr_dist - 1) begin
                                curr_pos <= neighbours[1];
                                dist_addr_int <= neighbours[1];
                                dist_wren <= 1'b1;
                                dist_din <= GREEN;
                                backtrack_path_done <= 1'b0;
                                curr_dist <= curr_dist - 1;
                            end else if (neighbour_dist[2] == curr_dist - 1) begin
                                curr_pos <= neighbours[2];
                                dist_addr_int <= neighbours[2];
                                dist_wren <= 1'b1;
                                dist_din <= GREEN;
                                backtrack_path_done <= 1'b0;
                                curr_dist <= curr_dist - 1;
                            end else if (neighbour_dist[3] == curr_dist - 1) begin
                                curr_pos <= neighbours[3];
                                dist_addr_int <= neighbours[3];
                                dist_wren <= 1'b1;
                                dist_din <= GREEN;
                                backtrack_path_done <= 1'b0;
                                curr_dist <= curr_dist - 1;
                            end else begin
                                dist_addr_int <= 0;
                                dist_wren <= 1'b0;
                                dist_din <= 0;
                                backtrack_path_done <= 1'b0;
                            end
                        end
                        default: begin
                        end
                    endcase
                    delay <= delay + 1'b1;
                end
                BACKTRACK_FILL_READ: begin
                    dist_wren <= 1'b0;
                    dist_din <= 0;
                end
                BACKTRACK_FILL_WRITE: begin
                    if(dist_dout == GREEN) begin
                        dist_wren <= 1'b0;
                    end else begin
                        if(dist_dout == INF) begin
                            dist_wren <= 1'b1;
                            dist_din <= WHITE;
                        end else begin
                            // dist_wren <= 1'b1;
                            // dist_din <= BLACK;
                            dist_wren <= 1'b0; // show gradient
                        end
                    end
                end
                BACKTRACK_INCREMENT_ADDR: begin
                    dist_wren <= 1'b0;
                    if(dist_addr_int == MAZE_ROWS * MAZE_COLS - 1) begin
                        backtrack_fill_done <= 1'b1;
                    end else begin
                        backtrack_fill_done <= 1'b0;
                        dist_addr_int <= dist_addr_int + 1'b1;
                    end
                end
                BACKTRACK_DONE: begin
                    dist_wren <= 1'b0;
                    dist_din <= 'b0;
                    dist_addr_int <= dist_addr;
                end
                default: begin
                end
            endcase
        end
    end

    ram #(
        .MAZE_ROWS(MAZE_ROWS),
        .MAZE_COLS(MAZE_COLS),
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) distance (
        .clk(clk),
        .we(dist_wren),
        .din(dist_din),
        .addr(dist_addr_int),
        .dout(dist_dout)
    );
    
    assign dist_out = dist_dout;
    assign state_out = state;

    always @(posedge clk) begin
        if(~resetn) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        next_state = state;
        queue_empty = 1;
        for (k = 0; k < QUEUE_SIZE; k = k + 1) begin
            if (queue[k] != 0) begin
                queue_empty = 0;
            end
        end
        case(state)
            IDLE: begin
                next_state = IDLE;
                if(start_solve) begin
                    next_state = INIT_MAZE;
                end
            end
            INIT_MAZE: begin
                if(dist_reset_done) begin
                    next_state = ENQUEUE_START;
                end else begin
                    next_state = INIT_MAZE;
                end
            end
            ENQUEUE_START: begin
                next_state = PROCESS_QUEUE;
            end
            PROCESS_QUEUE: begin
                if(queue_empty) begin
                    next_state = DONE_SOLVE;
                end else begin
                    next_state = VALIDATE_NEIGHBOURS;
                end
            end
            VALIDATE_NEIGHBOURS: begin
                next_state = READ_MEMORY;
            end
            READ_MEMORY: begin
                if(delay == 4) begin
                    next_state = WRITE_MEMORY;
                end else begin
                    next_state = READ_MEMORY;
                end
            end
            WRITE_MEMORY: begin
                if(delay2 == 4) begin
                    next_state = PROCESS_QUEUE;
                end else begin
                    next_state = WRITE_MEMORY;
                end
            end
            DONE_SOLVE: begin
                if(end_found) begin
                    next_state = BACKTRACK_INIT;
                end else begin
                    next_state = BACKTRACK_FILL_READ;
                end
            end
            BACKTRACK_INIT: begin
                if(delay == 2) begin
                    next_state = BACKTRACK_VALIDATE_NEIGHBOURS;
                end else begin
                    next_state = BACKTRACK_INIT;
                end
            end
            BACKTRACK_VALIDATE_NEIGHBOURS: begin
                if(backtrack_path_done) begin
                    next_state = BACKTRACK_FILL_READ;
                end else begin
                    next_state = BACKTRACK_READ_MEMORY;
                end
            end
            BACKTRACK_READ_MEMORY: begin
                if(delay == 4) begin
                    next_state = BACKTRACK_WRITE_MEMORY;
                end else begin
                    next_state = BACKTRACK_READ_MEMORY;
                end
            end
            BACKTRACK_WRITE_MEMORY: begin
                if(delay == 1) begin
                    next_state = BACKTRACK_VALIDATE_NEIGHBOURS;
                end else begin
                    next_state = BACKTRACK_WRITE_MEMORY;
                end
            end
            BACKTRACK_FILL_READ: begin
                if(backtrack_fill_done) begin
                    next_state = BACKTRACK_DONE;
                end else begin
                    next_state = BACKTRACK_FILL_WRITE;
                end
            end
            BACKTRACK_FILL_WRITE: begin
                next_state = BACKTRACK_INCREMENT_ADDR;
            end
            BACKTRACK_INCREMENT_ADDR: begin
                next_state = BACKTRACK_FILL_READ;
            end
            BACKTRACK_DONE: begin
                if(maze_received) begin
                    next_state = IDLE;
                end else begin
                    next_state = BACKTRACK_DONE;
                end
            end
            default: begin
            end
        endcase
    end
endmodule

module ram #(
    parameter MAZE_ROWS = 240,
    parameter MAZE_COLS = 320,
    parameter DATA_WIDTH = 24,
    parameter ADDR_WIDTH = 17
)(
    input clk,
    input we,
    input [DATA_WIDTH-1:0] din,
    input [ADDR_WIDTH-1:0] addr,
    output reg [DATA_WIDTH-1:0] dout
);
    reg [DATA_WIDTH-1:0] mem [MAZE_ROWS*MAZE_COLS-1:0];
    // reg [ADDR_WIDTH-1:0] addr_reg;

    always @(posedge clk) begin
        // addr_reg <= addr;
        // dout <= mem[addr_reg];
        dout <= mem[addr];
        if(we) begin
            // mem[addr_reg] <= din;
            mem[addr] <= din;
        end
    end
endmodule