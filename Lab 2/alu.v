`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/16/2020
//	Topic: COEN 122 - Lab #2
//	Description: Continue learning Verilog and apply it to a more complicated CPU component to create an ALU
//
//////////////////////////////////////////////////////////////////////////////////

module ALU(A,B,opcode,result,negative,zero);

//initialize our variables

//A and B are on 32-bit buses
input [31:0] A;
input [31:0] B;

//opcode is on a 4-bit bus
input [3:0] opcode;

//create our outputs based on diagram
output reg[31:0] result;
output reg negative;
output reg zero;

//run a loop to read in our opcode (which is a 4-bit value); run the appropriate operation
always@(A,B,opcode)
case(opcode)
	//check for addition
	4'b0000: result = A + B;
	//check for increment
	4'b0001: result = A + 1;
	//check for negation
	4'b0010: result = (~A) + 1;
	//check for subtraction
	4'b0011: result = A + ((~B) + 1);
	//check for passing A
	4'b0100: result = A;
endcase

always@(result)
begin
	//check if result is zero
	zero = 0;
	if(result == 0)
		zero = 1;
		
	//check if result is negative by seeing if MSB is equal to 1)
	negative = 0;
	if(result[31] == 1)
		negative = 1;
end
endmodule