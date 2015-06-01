`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:18:51 06/01/2015 
// Design Name: 
// Module Name:    InstructionDecoder 
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
module InstructionDecoder(
    input [3:0] instruction,
    output Clear,
    output EnableA,
    output EnableB,
    output EnableOut,
    output S0,
    output S1,
    output S2,
    output S3
    );
	 reg Clear, EnableA, EnableB, EnableOut, S0, S1, S2, S3;
	 always @(instruction)
	 begin
		if(instruction == 4'b0000)
		begin
			Clear <= 1'b1;
			EnableA <= 1'b1;
			EnableB <= 1'b1;
			EnableOut <= 1'b1;
			S0 <= 1'bx;
			 S1 <= 1'bx;
			 S2 <= 1'bx;
			 S3 <= 1'bx;
		end
		else if(instruction == 4'b0001)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b1;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b0;
			 S0 <= 1'bx;
			 S1 <= 1'bx;
			 S2 <= 1'bx;
			 S3 <= 1'bx;
		end
		else if(instruction == 4'b0010)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b1;
			 EnableOut <= 1'b0;
			 S0 <= 1'b0;
			 S1 <= 1'bx;
			 S2 <= 1'bx;
			 S3 <= 1'bx;
		end
		else if(instruction == 4'b0011)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b1;
			 EnableOut <= 1'b0;
			 S0 <= 1'b1;
			 S1 <= 1'bx;
			 S2 <= 1'bx;
			 S3 <= 1'bx;
		end
		else if(instruction == 4'b0100)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b0;
			 S2 <= 1'b0;
			 S3 <= 1'b0;
		end
		else if(instruction == 4'b0101)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b0;
			 S2 <= 1'b0;
			 S3 <= 1'b1;
		end
		else if(instruction == 4'b0110)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b0;
			 S2 <= 1'b1;
			 S3 <= 1'b0;
		end
		else if(instruction == 4'b0111)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b0;
			 S2 <= 1'b1;
			 S3 <= 1'b1;
		end
		else if(instruction == 4'b1000)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b1;
			 S2 <= 1'b0;
			 S3 <= 1'b0;
		end
		else if(instruction == 4'b1001)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b1;
			 S2 <= 1'b0;
			 S3 <= 1'b1;
		end
		else if(instruction == 4'b1010)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b1;
			 S2 <= 1'b1;
			 S3 <= 1'b0;
		end
		else if(instruction == 4'b1011)
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b1;
			 S0 <= 1'bx;
			 S1 <= 1'b1;
			 S2 <= 1'b1;
			 S3 <= 1'b1;
		end
		else
		begin
			 Clear <= 1'b0;
			 EnableA <= 1'b0;
			 EnableB <= 1'b0;
			 EnableOut <= 1'b0;
			 S0 <= 1'bx;
			 S1 <= 1'bx;
			 S2 <= 1'bx;
			 S3 <= 1'bx;
		end
	 end

endmodule
