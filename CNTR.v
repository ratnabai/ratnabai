`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:16 04/29/2022 
// Design Name: 
// Module Name:    CNTR 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CNTR(dout,din,ld,dec,clk);
input [15:0] din;
input ld,dec,clk;
output reg [15:0] dout;
always @(posedge clk)
if (ld) dout<=din;
else  if (dec) dout <= dout-1;
endmodule

