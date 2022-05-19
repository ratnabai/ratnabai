`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:47 05/18/2022 
// Design Name: 
// Module Name:    dice_game_tb 
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
module dice_game_tb();
reg clk,reset,rb;
reg [3:0]sum;
reg [3:0]eq_point;
wire roll,win,lose;
reg [2:0]next_state;
reg [3:0]count1,count2;