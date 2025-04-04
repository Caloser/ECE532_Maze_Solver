`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 03:09:50 PM
// Design Name: 
// Module Name: lineControl
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


module lineControlShrink #(parameter LINE_SIZE=640)(
    input                    i_clk,
    input                    i_rst_n,
    input                    i_pixel_data,
    input                    i_pixel_data_valid,
    output reg [3:0]         o_pixel_data,
    output                   o_pixel_data_valid,
    input                    i_pixel_data_ready
);
    
    reg [9:0] wrCounter;
    reg [1:0] currentWrLineBuffer;
    reg [3:0] lineBuffWrData;
    
    reg [9:0] rdCounter;
    reg [1:0] currentRdLineBuffer;
    reg [3:0] lineBuffRdData;

    wire [1:0] lb0data;
    wire [1:0] lb1data;
    wire [1:0] lb2data;
    wire [1:0] lb3data;

    reg rd_line_buffer;
    reg [12:0] totalPixelCounter;
    reg rdState;
    
    localparam IDLE = 'b0,
               RD_BUFFER = 'b1;
    
    // output pixel data is valid when we are reading
    assign o_pixel_data_valid = rd_line_buffer & i_pixel_data_ready;
    
    // control for total pixel counter
    always @(posedge i_clk)
    begin
        if(!i_rst_n)
            totalPixelCounter <= 0;
        else
        begin
            if(i_pixel_data_valid & !rd_line_buffer)
                totalPixelCounter <= totalPixelCounter + 1;
            else if(i_pixel_data_valid & rd_line_buffer)
                totalPixelCounter <= totalPixelCounter - 3;
            else if(!i_pixel_data_valid & rd_line_buffer)
                totalPixelCounter <= totalPixelCounter - 4;
        end
    end
    
    // FSM control
    always @(posedge i_clk)
    begin
        if(!i_rst_n)
        begin
            rdState <= IDLE;
            rd_line_buffer <= 1'b0;
        end
        else
        begin
            case(rdState)
                IDLE:begin
                    if(totalPixelCounter >= LINE_SIZE*2)
                    begin
                        rd_line_buffer <= 1'b1;
                        rdState <= RD_BUFFER;
                    end
                end
                RD_BUFFER:begin
                    if(rdCounter == LINE_SIZE-2)
                    begin
                        rdState <= IDLE;
                        rd_line_buffer <= 1'b0;
                    end
                end
            endcase
        end
    end

    // update write counter
    always @(posedge i_clk)
    begin
        if(!i_rst_n)
            wrCounter <= 0;
        else 
        begin
            if(i_pixel_data_valid)
            begin
                if (wrCounter == LINE_SIZE-1)
                    wrCounter <= 0;
                else
                    wrCounter <= wrCounter + 1;
            end
        end
    end
    
    // update current write line buffer
    always @(posedge i_clk)
    begin
        if(!i_rst_n)
            currentWrLineBuffer <= 0;
        else
        begin
            if(wrCounter == LINE_SIZE-1 & i_pixel_data_valid)
                currentWrLineBuffer <= currentWrLineBuffer+1;
        end
    end
    
    // update line buffer write data valid
    always @(*)
    begin
        lineBuffWrData = 4'h0;
        lineBuffWrData[currentWrLineBuffer] = i_pixel_data_valid;
    end
    
    // update read counter
    always @(posedge i_clk)
    begin
        if(!i_rst_n)
            rdCounter <= 0;
        else 
        begin
            if(rd_line_buffer & i_pixel_data_ready)
            begin
                if (rdCounter == LINE_SIZE-2)
                    rdCounter <= 0;
                else
                    rdCounter <= rdCounter + 2;
            end
        end
    end
    
    // update current read line buffer
    always @(posedge i_clk)
    begin
        if(!i_rst_n)
        begin
            currentRdLineBuffer <= 0;
        end
        else
        begin
            if(rdCounter == LINE_SIZE-2 & rd_line_buffer)
                currentRdLineBuffer <= currentRdLineBuffer + 2;
        end
    end
    
    // combine output pixel data from read line buffers
    always @(*)
    begin
        case(currentRdLineBuffer)
            0:begin
                o_pixel_data = {lb1data,lb0data};
            end
            1:begin
                o_pixel_data = {lb2data,lb1data};
            end
            2:begin
                o_pixel_data = {lb3data,lb2data};
            end
            3:begin
                o_pixel_data = {lb0data,lb3data};
            end
        endcase
    end
    
    // set which line buffers are to be read from
    always @(*)
    begin
        case(currentRdLineBuffer)
            0:begin
                lineBuffRdData[0] = rd_line_buffer & i_pixel_data_ready;
                lineBuffRdData[1] = rd_line_buffer & i_pixel_data_ready;
                lineBuffRdData[2] = 1'b0;
                lineBuffRdData[3] = 1'b0;
            end
           1:begin
                lineBuffRdData[0] = 1'b0;
                lineBuffRdData[1] = rd_line_buffer & i_pixel_data_ready;
                lineBuffRdData[2] = rd_line_buffer & i_pixel_data_ready;
                lineBuffRdData[3] = 1'b0;
            end
           2:begin
                 lineBuffRdData[0] = 1'b0;
                 lineBuffRdData[1] = 1'b0;
                 lineBuffRdData[2] = rd_line_buffer & i_pixel_data_ready;
                 lineBuffRdData[3] = rd_line_buffer & i_pixel_data_ready;
           end  
          3:begin
                 lineBuffRdData[0] = rd_line_buffer & i_pixel_data_ready;
                 lineBuffRdData[1] = 1'b0;
                 lineBuffRdData[2] = 1'b0;
                 lineBuffRdData[3] = rd_line_buffer & i_pixel_data_ready;
           end        
        endcase
    end
        
    lineBufferShrink #(LINE_SIZE) lB0(
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_data(i_pixel_data),
        .i_data_valid(lineBuffWrData[0]),
        .o_data(lb0data),
        .i_rd_data(lineBuffRdData[0])
    ); 
     
    lineBufferShrink #(LINE_SIZE) lB1(
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_data(i_pixel_data),
        .i_data_valid(lineBuffWrData[1]),
        .o_data(lb1data),
        .i_rd_data(lineBuffRdData[1])
    ); 
      
    lineBufferShrink #(LINE_SIZE) lB2(
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_data(i_pixel_data),
        .i_data_valid(lineBuffWrData[2]),
        .o_data(lb2data),
        .i_rd_data(lineBuffRdData[2])
    ); 
       
    lineBufferShrink #(LINE_SIZE) lB3(
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .i_data(i_pixel_data),
        .i_data_valid(lineBuffWrData[3]),
        .o_data(lb3data),
        .i_rd_data(lineBuffRdData[3])
    );
    
endmodule
