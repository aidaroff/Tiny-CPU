`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:06:53 06/01/2015
// Design Name:   Register8bit
// Module Name:   C:/Users/Alibek Aidarov/Downloads/Lab4/Lab4/Register_Tester.v
// Project Name:  Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_Tester;

	// Inputs
	reg CLR;
	reg [7:0] D;
	reg CLK;
	reg En;

	// Outputs
	wire [7:0] Qout;

	// Instantiate the Unit Under Test (UUT)
	Register8bit uut (
		.CLR(CLR), 
		.D(D), 
		.Qout(Qout), 
		.CLK(CLK), 
		.En(En)
	);

	initial begin
		// Initialize Inputs
		CLR = 0;
		D = 1;
		CLK = 1;
		En = 0;

		// Wait 100 ns for global reset to finish
		#50;
      CLK = 0;

		#50;
		CLK = 1;
		En = 1;
		CLR = 0;
		D = 5;
		
		#50;
		CLK = 0;
		
		#50;
		CLK = 1;
		En = 1;
		CLR = 1;
		// Add stimulus here

	end
      
endmodule

