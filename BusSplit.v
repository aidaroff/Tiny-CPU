`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:49:34 06/01/2015 
// Design Name: 
// Module Name:    BusSplit 
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
module BusSplit(
    output [7:0] data,
    output [3:0] instruction,
    input [11:0] bussplit_input
    );

	 assign data = bussplit_input[7:0];
	 assign instruction = bussplit_input[11:8];
	 
endmodule
