`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:19 06/01/2015 
// Design Name: 
// Module Name:    Comparator 
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
module Comparator(
    input [7:0] comparator_input1,
    input [7:0] comparator_input2,
    output [7:0] Out7
    );

	 reg[7:0] Out7;
	 always @(comparator_input1 or comparator_input2)
	 begin
		if(comparator_input1 >= comparator_input2)
			Out7 <= 8'b11111111;
		else
			Out7 <= 8'b00000000;
	 end
endmodule
