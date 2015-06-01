`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:01:40 06/01/2015 
// Design Name: 
// Module Name:    Register8bit 
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
module Register8bit(
    input CLR,
    input [7:0] D,
    output [7:0] Qout,
    input CLK,
	 input En
    );
	 reg[7:0] Qout;
	 always @(posedge CLK)
	 begin
		if(En)
		begin
			if(CLR)
				Qout <= 8'b00000000;
			else
				Qout <= D;
		end
	 end
endmodule
