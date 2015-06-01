`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:02 06/01/2015
// Design Name:   InstructionDecoder
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/InstructionDecoder_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstructionDecoder_Tester;

	// Inputs
	reg [3:0] instruction;

	// Outputs
	wire Clear;
	wire EnableA;
	wire EnableB;
	wire EnableOut;
	wire S0;
	wire S1;
	wire S2;
	wire S3;

	// Instantiate the Unit Under Test (UUT)
	InstructionDecoder uut (
		.instruction(instruction), 
		.Clear(Clear), 
		.EnableA(EnableA), 
		.EnableB(EnableB), 
		.EnableOut(EnableOut), 
		.S0(S0), 
		.S1(S1), 
		.S2(S2), 
		.S3(S3)
	);

	initial begin
		// Initialize Inputs
		instruction = 0;

		// Wait 50 ns for global reset to finish
		#50;
      instruction = 1;
		// Add stimulus here
		#50;
      instruction = 2;
		#50;
      instruction = 3;
		#50;
      instruction = 4;
		#50;
      instruction = 5;
		#50;
      instruction = 6;
		#50;
      instruction = 7;
		#50;
      instruction = 8;
		#50;
      instruction = 9;
		#50;
      instruction = 10;
		#50;
      instruction = 11;
		#50;
      instruction = 12;
		
		
				
	end
      
endmodule

