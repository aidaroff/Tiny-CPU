`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:00:08 06/01/2015 
// Design Name: 
// Module Name:    Adder 
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
module Adder(
    input [7:0] adder_input1,
    input [7:0] adder_input2,
    output [7:0] adder_output
    );
	 reg [7:0] adder_output;
	 always @ (adder_input1 or adder_input2)
	 begin
		adder_output <= adder_input1 + adder_input2;
	 end

endmodule
