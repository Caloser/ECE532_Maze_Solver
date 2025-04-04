`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 04:34:30 PM
// Design Name: 
// Module Name: imageProc32x32TB
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
`define numRow 32
`define numCol 32
`define imageSize `numRow*`numCol

module imageProc32x32TB();

 reg clk;
 reg resetn;
 reg [31:0] imgData;
 reg [23:0] imgDataRef;
 integer file,file1,file2,i;
 reg imgDataValid;
 wire inDataReady;
 integer sentSize;
 wire outData;
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
    file = $fopen("maze32x32.bmp","rb");
    file1 = $fopen("maze16x16output.bmp","wb");
    file2 = $fopen("maze16x16reference.bmp","rb");
    for(i=0;i<`headerSize;i=i+1)
    begin
        $fscanf(file,"%c",imgData);
        $fscanf(file2,"%c",imgData);
        $fwrite(file1,"%c",imgData);
        $display("[$display] imgData ", $time, ": %b", imgData);
    end
    
    @(posedge inDataReady);
    
    for(i=0;i<`imageSize;i=i+1)
    begin
        @(negedge clk);
            if (inDataReady)
            begin
                $fscanf(file,"%c",imgData[7:0]);
                $fscanf(file,"%c",imgData[15:8]);
                $fscanf(file,"%c",imgData[23:16]);
                $fscanf(file,"%c",imgData[31:24]);
                $display("[$display] imgData ", $time, ": %b", imgData);
                imgDataValid <= 1'b1;
            end
            else
            begin
                imgDataValid <= 1'b0;
                i=i-1;
            end
    end
    @(posedge clk);
    imgDataValid <= 1'b0;
    $fclose(file);
    $fclose(file2);
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
     if(receivedData == `imageSize/4)
     begin
        $fclose(file1);
        file = $fopen("maze16x16output.bmp","rb");
        file1 = $fopen("maze16x16reference.bmp","rb");
        for(i=0;i<`headerSize;i=i+1)
        begin
            $fscanf(file,"%c",imgData);
            $fscanf(file1,"%c",imgDataRef);
        end
        for(i=0;i<`imageSize/4;i=i+1)
        begin
            $fscanf(file,"%c",imgData[7:0]);
            $fscanf(file,"%c",imgData[15:8]);
            $fscanf(file,"%c",imgData[23:16]);
            $fscanf(file1,"%c",imgDataRef[7:0]);
            $fscanf(file1,"%c",imgDataRef[15:8]);
            $fscanf(file1,"%c",imgDataRef[23:16]);
            if (imgData[23:0] != imgDataRef)
            begin
                $display("[$display] MISMATCH imgData ", $time, " %d: %b, %b", i, imgData, imgDataRef);
            end
        end
        $display("[$display] Complete", $time);
        $fclose(file);
        $fclose(file1);
        $stop;
     end
 end
 
 
 imageProc32x32 dut
(
    .axi_clk_0(clk),
    .axi_reset_n_0(resetn),
    //slave interface
    .s_axis_valid_0(imgDataValid),
    .s_axis_data_0(imgData),
    .s_axis_ready_0(inDataReady),
    //master interface
    .m_axis_valid_0(outDataValid),
    .m_axis_data_0(outData),
    .m_axis_ready_0(1'b1),
    //
    .dest_col_0(destCol),
    .dest_row_0(destRow),
    .start_col_0(startCol),
    .start_row_0(startRow),
    .dest_start_valid_0(destStartValid)
);

endmodule

