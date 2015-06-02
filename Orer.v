`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:06 06/02/2015 
// Design Name: 
// Module Name:    Orer 
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
module Orer(
    input [7:0] orer_input1,
    input [7:0] orer_input2,
    output [7:0] orer_output
    );
	 reg[7:0] orer_output;
	 always @(*)
	 begin
		orer_output <= orer_input1 | orer_input2;
	 end

endmodule
