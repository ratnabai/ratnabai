`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:30:35 04/06/2022 
// Design Name: 
// Module Name:    cla_tb 
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
module cla_tb;

   //inputs
   reg [3:0] a;
   reg [3:0] b;
   reg  cin;
	
	//outputs
	wire [3:0] sum;
	wire cout;
	
	//Instantiate the unit under test (uut)
	cla uut (
	    .a(a),
		 .b(b),
		 .cin(cin),
		 .sum(sum),
		 .cout(cout)
	);
	
	initial begin
	
	  a = 0000;
	  b = 0000;
	  cin = 0;
	  #100;
	  
	  a = 0001;
	  b = 0010;
	  cin = 0;	  
	  #100;
	  
	  a = 0111;
	  b = 0111;
	  cin = 0;
	  #100;
	  
	  a = 0101;
	  b = 0011;
	  cin = 0;
	  #100;
	  
	  a = 0100;
	  b = 0111;
	  cin = 0;
	  #100;
	  
	  a = 1110;
	  b = 1100;
	  cin = 0;
	  #100;
	  
	  a = 1111;
	  b = 1111;
	  cin = 0;
	  #100;
end	  
endmodule
