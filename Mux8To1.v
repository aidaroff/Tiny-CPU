`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:32:27 06/01/2015 
// Design Name: 
// Module Name:    Mux8To1 
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
module Mux8To1(
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    input [7:0] E,
    input [7:0] F,
    input [7:0] G,
    input [7:0] H,
    input [2:0] Sel,
    output [7:0] Y
    );
	 reg [7:0] Y;
	 always @ (A or B or C or D or E or F or G or H or Sel) 
	 begin
		if(Sel == 3'b000) begin
			Y = A; end
		else if(Sel == 3'b001) begin
			Y = B; end
		else if(Sel == 3'b010) begin
			Y = C; end
		else if(Sel == 3'b011) begin
			Y = D; end
		else if(Sel == 3'b100) begin
			Y = E; end
		else if(Sel == 3'b101) begin
			Y = F; end
		else if(Sel == 3'b110) begin
			Y = G; end
		else begin 
			Y = H; end
	 end
endmodule
