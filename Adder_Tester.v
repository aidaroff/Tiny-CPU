`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:43 06/01/2015
// Design Name:   Adder
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/Adder_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_Tester;

	// Inputs
	reg [7:0] adder_input1;
	reg [7:0] adder_input2;

	// Outputs
	wire [7:0] adder_output;

	// Instantiate the Unit Under Test (UUT)
	Adder uut (
		.adder_input1(adder_input1), 
		.adder_input2(adder_input2), 
		.adder_output(adder_output)
	);

	initial begin
		// Initialize Inputs
		adder_input1 = 0;
		adder_input2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
      adder_input1 = 1;
		adder_input2 = 0;
		#100;
      adder_input1 = 1;
		adder_input2 = 1;
		#100;
      adder_input1 = 5;
		adder_input2 = 5;
		// Add stimulus here

	end
      
endmodule

