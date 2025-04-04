`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2025 02:29:30 AM
// Design Name: 
// Module Name: ov7670_to_axis
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


module ov7670_to_axis(
    input arst_n,
    input ov_vsync,
    input ov_href,
    input ov_pclk,
    input [7:0] ov_d,
    input pause,
    input resume,
    
    input m_axis_ready,
    output [31:0] m_axis_data,
    output m_axis_valid,
    output m_axis_last,
    output [3:0] m_axis_keep,
    output [0:0] m_axis_user,
    
    output [$clog2(NUM_COLS)-1:0] dbg_col_count,
    output dbg_pxv
    );
    
//    parameter NUM_ROWS = 240;
    parameter NUM_COLS = 320; // 320 => 9 bits?

    wire [15:0] pxd; // pixel data
    wire pxv; // pixel valid
    wire fd; // frame done
    wire we; // write enable
    wire [31:0] data;
    
    reg pause_asserted;
    reg pause_wr;
    reg fd_detected;
    wire last;
    reg [$clog2(NUM_COLS)-1:0] col_count;
    
    // TODO: currently don't know what to do if ready is low... should I buffer? How big should the buffer be? Is there already a FIFO we can use?
    // I'm counting on m_axis_ready never going low, otherwise it's gonna screw up the alignment of subsequent frames
    wire dma_ready;
    assign dma_ready = m_axis_ready;
    
    assign m_axis_last = last;
    assign m_axis_keep = 4'hf;
    assign m_axis_user = ov_vsync;
    assign m_axis_data = data;
    assign m_axis_valid = we;

    assign dbg_col_count = col_count;
    assign dbg_pxv = pxv;
    
    camera_read camera_read_i(
        .p_clock(ov_pclk),
        .vsync(ov_vsync),
        .href(ov_href),
        .p_data(ov_d),
        .pixel_data(pxd),
        .pixel_valid(pxv),
        .frame_done(fd)
    );
    
    // format pixel data from RGB444 to TFT IP memory format
    // if we config camera correctly, we should already get the data as xRGB
    assign data = {8'h0, pxd[11:8], 4'h0, pxd[7:4], 4'h0, pxd[3:0], 4'h0};
    
    // write enable logic
    // if we config camera correctly, should already be outputting QVGA 320 x 240
    // fd_detected: only allow writes once the first vsync signal has been detected after dma_ready goes high (to ensure proper frame alignment w/ buffer)
    assign we = pxv & fd_detected & ~pause_wr;
    
    // tlast logic
    assign last = ((col_count == NUM_COLS-1) && pxv && fd_detected) ? 1'b1 : 1'b0;
    always @(posedge ov_pclk or negedge arst_n) begin
        if(~arst_n | ov_vsync | last) col_count <= 0;
        else col_count <= col_count + pxv;
    end
    
    // fd_detected
    always @(posedge ov_pclk or negedge arst_n) begin
        if(~arst_n) fd_detected <= 1'b0;
        else if(fd) fd_detected <= dma_ready; // axis spec says that tx mustn't wait for tready to go high before asserting valid... so this might violate that condition. whoops
    end
    
    // pause_asserted
    // take in input from push buttons, store input until next vsync
    always @(posedge ov_pclk or negedge arst_n) begin
        if(~arst_n) pause_asserted <= 1'b0;
        else if(pause) pause_asserted <= 1'b1;
        else if(resume) pause_asserted <= 1'b0;
        else pause_asserted <= pause_asserted;
    end
    
    // pause_wr
    always @(posedge ov_pclk or negedge arst_n) begin
        if(~arst_n) pause_wr <= 1'b0;
        else if(ov_vsync) pause_wr <= pause_asserted;
        else pause_wr <= pause_wr;
    end
     
endmodule
