`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:46:14 06/01/2015
// Design Name:   Mux8To1
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/Mux_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux8To1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_Tester;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [7:0] C;
	reg [7:0] D;
	reg [7:0] E;
	reg [7:0] F;
	reg [7:0] G;
	reg [7:0] H;
	reg [2:0] Sel;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Mux8To1 uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.H(H), 
		.Sel(Sel), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 1;
		C = 2;
		D = 3;
		E = 4;
		F = 5;
		G = 6;
		H = 7;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
      Sel = 1;  
		// Add stimulus here
		#100;
      Sel = 7;  
	end
      
endmodule

