`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/22/2025 04:15:08 PM
// Design Name: 
// Module Name: erosionTB
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

module erosionTB();

 reg clk;
 reg resetn;
 reg [23:0] imgData;
 reg [23:0] imgDataRef;
 reg [7:0] imgData2;
 integer file,file1,file2,file3,i;
 reg imgDataValid;
 wire inDataReady;
 wire outData;
 wire outDataValid;
 integer receivedData=0;
 

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
    
    @(posedge inDataReady);
    
    for(i=0;i<`imageSize;i=i+1)
    begin
        @(negedge clk);
        $fscanf(file,"%c",imgData[7:0]);
        $fscanf(file,"%c",imgData[15:8]);
        $fscanf(file,"%c",imgData[23:16]);
        if (imgData == 24'hffffff)
            imgData2 <= 8'h01;
        else 
            imgData2 <= 8'h00; 
        $display("[$display] imgData ", $time, ": %b", imgData2);
        imgDataValid <= 1'b1;
    end
    
    @(posedge clk);
    imgDataValid <= 1'b0;
    $fclose(file);
    
    file2 = $fopen("maze16x16_2.bmp","rb");
    file3 = $fopen("maze16x16_2output.bmp","wb");
    for(i=0;i<`headerSize;i=i+1)
    begin
        $fscanf(file2,"%c",imgData);
        $fwrite(file3,"%c",imgData);
        $display("[$display] imgData ", $time, ": %b", imgData);
    end
    
    @(posedge inDataReady);
    
    for(i=0;i<`imageSize;i=i+1)
    begin
        @(negedge clk);
        $fscanf(file2,"%c",imgData[7:0]);
        $fscanf(file2,"%c",imgData[15:8]);
        $fscanf(file2,"%c",imgData[23:16]);
        if (imgData == 24'hffffff)
            imgData2 <= 8'h01;
        else 
            imgData2 <= 8'h00; 
        $display("[$display] imgData ", $time, ": %b", imgData2);
        imgDataValid <= 1'b1;
    end
    
    @(posedge clk);
    imgDataValid <= 1'b0;
    $fclose(file2);
 end
 
 always @(negedge clk)
 begin
     if(outDataValid & receivedData < `imageSize)
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
     else if(outDataValid & receivedData >= `imageSize)
     begin
        if (outData == 1)
        begin
            $fwrite(file3,"%c",8'hff);
            $fwrite(file3,"%c",8'hff);
            $fwrite(file3,"%c",8'hff);
        end
        else
        begin
            $fwrite(file3,"%c",8'h00);
            $fwrite(file3,"%c",8'h00);
            $fwrite(file3,"%c",8'h00);
        end 
         $display("[$display] outData ", $time, " receivedData ", receivedData, ": %b", outData);
         receivedData = receivedData+1;
     end 
     if(receivedData == `imageSize)
     begin
        $fclose(file1);
     end
     if(receivedData == `imageSize*2)
     begin
        $fclose(file3);
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
                $display("[$display] MISMATCH imgData ", $time, " %d: %b, %b", i, imgData, imgDataRef);
            end
        end
        $fclose(file);
        $fclose(file1);
        file2 = $fopen("maze16x16_2output.bmp","rb");
        file3 = $fopen("maze16x16_2reference.bmp","rb");
        for(i=0;i<`headerSize;i=i+1)
        begin
            $fscanf(file,"%c",imgData);
            $fscanf(file1,"%c",imgDataRef);
        end
        for(i=0;i<`imageSize;i=i+1)
        begin
            $fscanf(file2,"%c",imgData[7:0]);
            $fscanf(file2,"%c",imgData[15:8]);
            $fscanf(file2,"%c",imgData[23:16]);
            $fscanf(file3,"%c",imgDataRef[7:0]);
            $fscanf(file3,"%c",imgDataRef[15:8]);
            $fscanf(file3,"%c",imgDataRef[23:16]);
            if (imgData != imgDataRef)
            begin
                $display("[$display] MISMATCH 2 imgData ", $time, " %d: %b, %b", i, imgData, imgDataRef);
            end
        end
        $display("[$display] Complete", $time);
        $fclose(file2);
        $fclose(file3);
        $stop;
     end
 end
 
 erosionTopLevel #(`numCol, `numRow) dut
(
    .axi_clk(clk),
    .axi_reset_n(resetn),
    //slave interface
    .s_axis_valid(imgDataValid),
    .s_axis_data(imgData2),
    .s_axis_ready(inDataReady),
    //master interface
    .m_axis_valid(outDataValid),
    .m_axis_data(outData),
    .m_axis_ready(1'b1)
);
endmodule
