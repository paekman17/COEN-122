`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/30/2020
//	Topic: COEN 122 - Lab #4
//	Description: Buffer that connects instruction fetch and instruction decode stages
//
//////////////////////////////////////////////////////////////////////////////////

module IF_ID(clk, pc_in, instr_in, pc_out, instr_out);

//initialize inputs
input clk;
input [7:0] pc_in;
input [31:0] instr_in;

//initialize outputs
output reg [7:0] pc_out;
output reg [31:0] instr_out;

always@(posedge clk)
begin //assigning inputs to outputs
    pc_out = pc_in;
    instr_out = instr_in;
end
endmodule