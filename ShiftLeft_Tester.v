`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:50:44 06/01/2015
// Design Name:   ShiftLeft
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/ShiftLeft_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShiftLeft
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ShiftLeft_Tester;

	// Inputs
	reg [7:0] A;

	// Outputs
	wire [7:0] Out1;

	// Instantiate the Unit Under Test (UUT)
	ShiftLeft uut (
		.A(A), 
		.Out1(Out1)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A = 2;
		#100;
		// Add stimulus here

	end
      
endmodule

