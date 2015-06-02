`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:30:20 06/01/2015 
// Design Name: 
// Module Name:    TinyCPU 
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
module TinyCPU(
    input [11:0] In,
    input Clk,
    output [7:0] Result
    );
	 wire [7:0] RegisterA_input;
	 wire [7:0] RegisterB_input;
	 wire [7:0] RegisterOut_output;
	 wire [3:0] Decoder_instruction;
	 wire CPU_Clear;
	 wire CPU_EnableA;
	 wire CPU_EnableB;
	 wire CPU_EnableOut;
	 wire CPU_S0;
	 wire CPU_S1;
	 wire CPU_S2;
	 wire CPU_S3;
	 // get input for RegisterA and Decoder
	 BusSplit BS (RegisterA_input, Decoder_instruction, In);
	 
	 //because all modules of this CPU will use outputs of Decoder
	 //we need to declare decoder first
	 InstructionDecoder I_D(Decoder_instruction, CPU_Clear, CPU_EnableA, 
								CPU_EnableB, CPU_EnableOut, CPU_S0,
								CPU_S1, CPU_S2, CPU_S3);
	 // registerB 							
	 Mux2To1 mux2to1(CPU_S0, RegisterA_input, RegisterOut_output, RegisterB_input);
	 //this will hold value of 8 bit data coming after bussplit
	 wire[7:0] ALU_inputA;
	 Register8bit RegA(CPU_Clear, RegisterA_input, ALU_inputA, Clk, CPU_EnableA);
	 wire[7:0] ALU_inputB;
	 Register8bit RegB(CPU_Clear, RegisterB_input, ALU_inputB, Clk, CPU_EnableB);
	 
	 //ALU Mux8To1 part
	 wire [7:0] Mux8To1_A;
	 Adder adder(ALU_inputA, ALU_inputB, Mux8To1_A);
	 wire [7:0] Mux8To1_B;
	 ShiftLeft sl(ALU_inputA, Mux8To1_B);
	 wire [7:0] Mux8To1_C;
	 ShiftRight sr(ALU_inputA, Mux8To1_C);
	 wire [7:0] Mux8To1_D;
	 Ander ander1(ALU_inputA, ALU_inputB, Mux8To1_D);
	 wire [7:0] Mux8To1_E;
	 Orer orer1 (ALU_inputA, ALU_inputB, Mux8To1_E);
	 wire [7:0] Mux8To1_F;
	 Xorer xorer1(ALU_inputA, ALU_inputB, Mux8To1_F);
	 wire [7:0] Mux8To1_G;
	 Nander nander1(ALU_inputA, ALU_inputB, Mux8To1_G);
	 wire [7:0] Mux8To1_H;
	 Comparator compar(ALU_inputA, ALU_inputB, Mux8To1_H);
	 wire [2:0] Mux8To1_Sel;
	 wire [7:0] Mux8To1_Output;
	 assign Mux8To1_Sel[0] = CPU_S1;
	 assign Mux8To1_Sel[1] = CPU_S2;
	 assign Mux8To1_Sel[2] = CPU_S3;
	 Mux8To1 ALU_Mux(Mux8To1_A, Mux8To1_B, Mux8To1_C,
							Mux8To1_D, Mux8To1_E, Mux8To1_F,
							Mux8To1_G, Mux8To1_H, Mux8To1_Sel, 
							Mux8To1_Output);

	 Register8bit RegOut(CPU_Clear, Mux8To1_Output, RegisterOut_output, Clk, CPU_EnableOut);
	 assign Result = RegisterOut_output;
endmodule
