`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/23/2020
//	Topic: COEN 122 - Lab #3
//	Description: Instruction cache holds a number of 32=bit instructions. Instructions
//  are fetched from here and passed forward to be decoded and executed
//
//////////////////////////////////////////////////////////////////////////////////

module instruction_memory(clk, address, inst);
//initialization of variables
input clk;
input [7:0] address;
output reg [31:0] inst;
wire[31:0] instructions [255:0];

//hard code instruction values for test bench 
assign instructions[100] = 10;
assign instructions[101] = 11;

always@(posedge clk)
begin
    inst = instructions[address]; //reading instructions[i] into the output inst
end
endmodule