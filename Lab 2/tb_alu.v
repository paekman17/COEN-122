`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/16/2020
//	Topic: COEN 122 - Lab #2
//	Description: Testbench for ALU
//
//////////////////////////////////////////////////////////////////////////////////

module ALU_test();
//initialize our variables, similar to "alu.v"
reg [31:0] A;
reg [31:0] B;
reg [3:0] opcode;
wire [31:0] result;
wire negative;
wire zero;
ALU test(A,B,opcode,result,negative,zero);

initial
begin
	//testing addition
	A = 0;
	B = 1;
	opcode = 4'b0000;
	#50
	A = 1;
	B = 0;
	opcode = 4'b0000;
	#50
	A = 1;
	B = 1;
	opcode = 4'b0000;
	#50
	A = 2;
	B = 2;
	opcode = 4'b0000;
	#50
	
	//testing increment
	A = 0;
	B = 1;
	opcode = 4'b0001;
	#50
	A = 1;
	B = 0;
	opcode = 4'b0001;
	#50
	A = 1;
	B = 1;
	opcode = 4'b0001;
	#50
	A = 2;
	B = 2;
	opcode = 4'b0001;
	#50
	
	//testing negation
	A = 0;
	B = 1;
	opcode = 4'b0010;
	#50
	A = 1;
	B = 0;
	opcode = 4'b0010;
	#50
	A = 1;
	B = 1;
	opcode = 4'b0010;
	#50
	A = 2;
	B = 2;
	opcode = 4'b0010;
	#50
	
	//testing subtraction
	A = 0;
	B = 1;
	opcode = 4'b0011;
	#50
	A = 1;
	B = 0;
	opcode = 4'b0011;
	#50
	A = 1;
	B = 1;
	opcode = 4'b0011;
	#50
	A = 2;
	B = 2;
	opcode = 4'b0011;
	#50
	
	//testing passing A
	A = 0;
	B = 1;
	opcode = 4'b0100;
	#50
	A = 1;
	B = 0;
	opcode = 4'b0100;
	#50
	A = 1;
	B = 1;
	opcode = 4'b0100;
	#50
	A = 2;
	B = 2;
	opcode = 4'b0100;
	#50
	
$finish;
end
endmodule