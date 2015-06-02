`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:12 06/02/2015 
// Design Name: 
// Module Name:    Xorer 
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
module Xorer(
    input [7:0] xorer_input1,
    input [7:0] xorer_input2,
    output [7:0] xorer_output
    );
	 reg[7:0] xorer_output;
	 always @(*)
	 begin
		xorer_output <= xorer_input1 ^ xorer_input2;
	 end

endmodule
