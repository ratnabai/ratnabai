`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:41 05/16/2022 
// Design Name: 
// Module Name:    dice_game 
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
module dice_game(clk,reset,rb,win,lose,sum,count1,count2 );
input clk, reset,rb;
output reg win, lose;
output reg [3:0]sum,count1,count2;
reg [2:0]state;
reg [3:0]eq_point;
reg sp,roll;
reg [2:0]next_state;
parameter s0= 3'b000,s1= 3'b001,s2= 3'b010,s3= 3'b011,s4= 3'b100,s5= 3'b101,s6= 3'b110;
initial @(rb or reset or state)
begin
roll = 0;
win = 0;
lose = 0;
sp = 0;
next_state = s0;
sum = 0;
end
always@(rb or reset or state)
begin
case(state)
s0:
if(rb == 1)
next_state = s1;
else
next_state = s0;
s1:
begin
if(rb == 1)
roll = 1;
if(roll == 1)
begin
count1 =$urandom_range(1,6);
count2 =$urandom_range(1,6);
$display("count1=%0d,count2=%0d",count1,count2);
sum = count1 + count2;
eq_point = sum;
if(sum == 12)
begin
win = 1;
next_state = s2;
end                
else if(sum == 2)
begin
lose = 1;
next_state = s3;
end
else
next_state = s4;
end
end
s2:
begin
win = 1;
next_state = s6;
end
s3:
begin
lose = 1;
next_state = s6;          
end
s4:
begin
if(rb == 1)
next_state = s5;
end
s5:
begin
if(rb == 1)
roll = 1;
if(roll == 1)
begin
count1 =$urandom_range(1,6);
count2 =$urandom_range(1,6);
$display("count1=%0d,count2=%0d",count1,count2);
sum = count1 + count2;
if(sum == eq_point)
begin
win = 1;
next_state = s2;
end
else if(sum == 6)
begin
lose = 0;
next_state= s3;
end              
else
next_state= s4;
end
end
s6:
begin
if(reset == 1)
begin
win = 0;
lose = 0;
sum = 0;roll = 0;
eq_point = 0;
next_state = s0;
end
else
next_state = next_state;
end      
endcase
end
always@(clk)
state = next_state;
endmodule

