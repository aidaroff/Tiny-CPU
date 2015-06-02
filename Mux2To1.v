`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:33:42 06/02/2015 
// Design Name: 
// Module Name:    Mux2To1 
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
module Mux2To1(
    input Mux_sel,
    input [7:0] mux2to1_input1,
    input [7:0] mux2to1_input2,
    output [7:0] mux2to1_output
    );
	 reg [7:0] mux2to1_output;
	 always @(*)
	 begin
		if(Mux_sel == 1'b0)
			mux2to1_output <= mux2to1_input1;
		else if(Mux_sel == 1'b1)
			mux2to1_output <= mux2to1_input2;
		else
			mux2to1_output <= 1'bx; 
	 end


endmodule
