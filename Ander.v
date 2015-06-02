`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:31 06/02/2015 
// Design Name: 
// Module Name:    Ander 
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
module Ander(
    input [7:0] ander_input1,
    input [7:0] ander_input2,
    output [7:0] ander_output
    );
	 reg[7:0] ander_output;
	 always @ (*)
	 begin
		ander_output <= ander_input1 & ander_input2;
	 end
endmodule
