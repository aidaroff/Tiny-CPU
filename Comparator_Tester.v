`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:56:49 06/01/2015
// Design Name:   Comparator
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/Comparator_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Comparator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Comparator_Tester;

	// Inputs
	reg [7:0] comparator_input1;
	reg [7:0] comparator_input2;

	// Outputs
	wire [7:0] Out7;

	// Instantiate the Unit Under Test (UUT)
	Comparator uut (
		.comparator_input1(comparator_input1), 
		.comparator_input2(comparator_input2), 
		.Out7(Out7)
	);

	initial begin
		// Initialize Inputs
		comparator_input1 = 0;
		comparator_input2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      comparator_input1 = 1;
		comparator_input2 = 0;
		#100;
      comparator_input1 = 2;
		comparator_input2 = 8;		
		// Add stimulus here

	end
      
endmodule

