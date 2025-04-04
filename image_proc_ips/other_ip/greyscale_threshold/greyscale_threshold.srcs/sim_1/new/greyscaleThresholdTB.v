`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 03:49:39 PM
// Design Name: 
// Module Name: greyscaleThresholdTB
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

`define headerSize 54
`define numRow 16
`define numCol 16
`define imageSize `numRow*`numCol

module greyscaleThresholdTB();


 reg clk;
 reg resetn;
 reg [23:0] imgData;
 reg [23:0] imgDataRef;
 integer file,file1,i;
 reg imgDataValid;
 wire inDataReady;
 integer sentSize;
 wire [7:0] outData;
 wire outDataValid;
 integer receivedData=0;
 wire [9:0] destCol;
 wire [8:0] destRow;
 wire [9:0] startCol;
 wire [8:0] startRow;
 wire destStartValid;
 

 initial
 begin
    clk = 1'b0;
    forever
    begin
        #5 clk = ~clk;
    end
 end
 
 initial
 begin
    resetn = 1;
    sentSize = 0;
    imgDataValid = 0;
    #100;
    resetn = 0;
    #100;
    resetn = 1;
    file = $fopen("maze16x16.bmp","rb");
    file1 = $fopen("maze16x16output.bmp","wb");
    for(i=0;i<`headerSize;i=i+1)
    begin
        $fscanf(file,"%c",imgData);
        $fwrite(file1,"%c",imgData);
        $display("[$display] imgData ", $time, ": %b", imgData);
    end
    
    for(i=0;i<`imageSize;i=i+1)
    begin
        @(negedge clk);
        $fscanf(file,"%c",imgData[7:0]);
        $fscanf(file,"%c",imgData[15:8]);
        $fscanf(file,"%c",imgData[23:16]);
        $display("[$display] imgData ", $time, ": %b", imgData);
        imgDataValid <= 1'b1;
    end
    @(posedge clk);
    imgDataValid <= 1'b0;
    $fclose(file);
 end
 
 always @(negedge clk)
 begin
     if(outDataValid)
     begin
        if (outData == 1)
        begin
            $fwrite(file1,"%c",8'hff);
            $fwrite(file1,"%c",8'hff);
            $fwrite(file1,"%c",8'hff);
        end
        else
        begin
            $fwrite(file1,"%c",8'h00);
            $fwrite(file1,"%c",8'h00);
            $fwrite(file1,"%c",8'h00);
        end 
         $display("[$display] outData ", $time, " receivedData ", receivedData, ": %b", outData);
         receivedData = receivedData+1;
     end 
     if(receivedData == `imageSize)
     begin
        $fclose(file1);
        file = $fopen("maze16x16output.bmp","rb");
        file1 = $fopen("maze16x16reference.bmp","rb");
        for(i=0;i<`headerSize;i=i+1)
        begin
            $fscanf(file,"%c",imgData);
            $fscanf(file1,"%c",imgDataRef);
        end
        for(i=0;i<`imageSize;i=i+1)
        begin
            $fscanf(file,"%c",imgData[7:0]);
            $fscanf(file,"%c",imgData[15:8]);
            $fscanf(file,"%c",imgData[23:16]);
            $fscanf(file1,"%c",imgDataRef[7:0]);
            $fscanf(file1,"%c",imgDataRef[15:8]);
            $fscanf(file1,"%c",imgDataRef[23:16]);
            if (imgData != imgDataRef)
            begin
                $display("[$display] MISMATCH imgData ", $time, ": %b, %b", imgData, imgDataRef);
            end
        end
        $display("[$display] Complete", $time);
        $fclose(file);
        $fclose(file1);
        $stop;
     end
 end
 
 greyscaleThreshold #(`numRow, `numCol) dut
(
    .axi_clk(clk),
    .axi_reset_n(resetn),
    //slave interface
    .s_axis_valid(imgDataValid),
    .s_axis_data(imgData),
    .s_axis_ready(inDataReady),
    //master interface
    .m_axis_valid(outDataValid),
    .m_axis_data(outData),
    .m_axis_ready(1'b1),
    //
    .dest_col(destCol),
    .dest_row(destRow),
    .start_col(startCol),
    .start_row(startRow),
    .dest_start_valid(destStartValid)
);

endmodule
