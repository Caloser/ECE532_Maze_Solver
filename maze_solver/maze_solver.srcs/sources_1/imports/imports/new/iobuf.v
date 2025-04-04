`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2025 12:06:07 AM
// Design Name: 
// Module Name: iobuf
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


module iobuf(
    input T,
    input I,
    inout IO,
    output O
    );
    IOBUF iobuf_i(
        .T(T),
        .I(I),
        .IO(IO),
        .O(O)
    );
endmodule
