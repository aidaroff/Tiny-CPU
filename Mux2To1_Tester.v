`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:36:38 06/02/2015
// Design Name:   Mux2To1
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/Mux2To1_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux2To1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux2To1_Tester;

	// Inputs
	reg Mux_sel;
	reg [7:0] mux2to1_input1;
	reg [7:0] mux2to1_input2;

	// Outputs
	wire [7:0] mux2to1_output;

	// Instantiate the Unit Under Test (UUT)
	Mux2To1 uut (
		.Mux_sel(Mux_sel), 
		.mux2to1_input1(mux2to1_input1), 
		.mux2to1_input2(mux2to1_input2), 
		.mux2to1_output(mux2to1_output)
	);

	initial begin
		// Initialize Inputs
		Mux_sel = 0;
		mux2to1_input1 = 1;
		mux2to1_input2 = 2;

		// Wait 100 ns for global reset to finish
		#100;
     	Mux_sel = 1;
		mux2to1_input1 = 0;
		mux2to1_input2 = 1;   
		// Add stimulus here

	end
      
endmodule

