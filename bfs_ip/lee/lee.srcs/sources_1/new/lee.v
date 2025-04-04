`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2025 12:06:20 PM
// Design Name: 
// Module Name: lee
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


module lee(
    input aclk,
    input aresetn,

    // AXI-Lite slave interface
    input [31:0]  S_AXI_AWADDR,
    input         S_AXI_AWVALID,
    output        S_AXI_AWREADY,

    input [31:0]  S_AXI_WDATA,
    input [3:0]   S_AXI_WSTRB,
    input         S_AXI_WVALID,
    output        S_AXI_WREADY,

    output [1:0]  S_AXI_BRESP,
    output        S_AXI_BVALID,
    input         S_AXI_BREADY,

    input [31:0]  S_AXI_ARADDR,
    input         S_AXI_ARVALID,
    output        S_AXI_ARREADY,

    output [31:0] S_AXI_RDATA,
    output [1:0]  S_AXI_RRESP,
    output        S_AXI_RVALID,
    input         S_AXI_RREADY,

    // AXI-Lite master interface
    output [31:0] M_AXI_AWADDR,
    output        M_AXI_AWVALID,
    input         M_AXI_AWREADY,

    output [31:0] M_AXI_WDATA,
    output [3:0]  M_AXI_WSTRB,
    output        M_AXI_WVALID,
    input         M_AXI_WREADY,

    input [1:0]   M_AXI_BRESP,
    input         M_AXI_BVALID,
    output        M_AXI_BREADY
);
endmodule
