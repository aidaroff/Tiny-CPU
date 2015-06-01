`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:50:32 06/01/2015
// Design Name:   BusSplit
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/BusSplit_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BusSplit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BusSplit_Tester;

	// Inputs
	reg [11:0] bussplit_input;

	// Outputs
	wire [7:0] data;
	wire [3:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	BusSplit uut (
		.data(data), 
		.instruction(instruction), 
		.bussplit_input(bussplit_input)
	);

	initial begin
		// Initialize Inputs
		bussplit_input = 0;

		// Wait 100 ns for global reset to finish
		#100;
      bussplit_input = 12'b111100000000;
		#100;
      bussplit_input = 12'b111100000011;		
		// Add stimulus here

	end
      
endmodule

