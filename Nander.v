`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:44 06/02/2015 
// Design Name: 
// Module Name:    Nander 
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
module Nander(
    input [7:0] nander_input1,
    input [7:0] nander_input2,
    output [7:0] nander_output
    );
	 reg[7:0] nander_output;
	 always @(*)
	 begin
		nander_output <= ~(nander_input1 & nander_input2);
	 end
endmodule
