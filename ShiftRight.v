`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:33:34 06/01/2015 
// Design Name: 
// Module Name:    ShiftRight 
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
module ShiftRight(
    input [7:0] shiftright_input,
    output [7:0] Out2
    );
	 
	 assign Out2 = shiftright_input >> 1;

endmodule
