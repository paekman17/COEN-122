`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/23/2020
//	Topic: COEN 122 - Lab #3
//	Description: This code represents a register file that has 64 32-bit registers 
//  and can read and wrt on the same clk cycle
//
//////////////////////////////////////////////////////////////////////////////////

module register_file(clk, wrt, rs, rt, rd, datain, rsout,rtout);
//initialization of variables
input clk;
input wrt;

//register source, register target, and register destination
input[5:0] rs;
input[5:0] rt;
input[5:0] rd;

input [31:0] datain;

reg[31:0] registers[63:0];

output reg [31:0] rsout;
output reg [31:0] rtout;

always@(posedge clk)
begin
    if (wrt == 1) //checking if we need to write the datain into the registers
        registers[rd] = datain;
        rsout = registers[rs];
        rtout = registers[rt];
end
endmodule