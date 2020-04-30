`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/30/2020
//	Topic: COEN 122 - Lab #4
//	Description: Buffer that connects execution and write-back/memory stages 
//
//////////////////////////////////////////////////////////////////////////////////

module EX_WB(clk, N, Z, RegWrt, MemToReg, PCtoReg, BranchNeg, BranchZero, Jump, JumpMem, ALU, DataMem, rd, adder, N_out, Z_out, RegWrt_out, MemToReg_out, PCtoReg_out, BranchNeg_out, BranchZero_out, Jump_out, JumpMem_out, ALU_out, DataMem_out, rd_out, adder_out);

//initialize nputs
input clk;
input N;
input Z;
input RegWrt;
input MemToReg;
input PCtoReg;
input BranchNeg;
input BranchZero;
input Jump;
input JumpMem;

input [31:0] ALU; //rs + rt
input [31:0] DataMem;
input [5:0] rd;
input [31:0] adder;

//intitialize outputs
output reg N_out;
output reg Z_out;
output reg RegWrt_out;
output reg MemToReg_out;
output reg PCtoReg_out;
output reg BranchNeg_out;
output reg BranchZero_out;
output reg Jump_out;
output reg JumpMem_out;

output reg [31:0] ALU_out;
output reg [31:0] DataMem_out;
output reg [5:0] rd_out;
output reg [31:0] adder_out;

always@ (posedge clk)
begin //assigning the inputs to the outputs
    N_out = N;
    Z_out = Z;
    RegWrt_out = RegWrt;
    MemToReg_out = MemToReg;
    PCtoReg_out = PCtoReg;
    BranchNeg_out = BranchNeg;
    BranchZero_out = BranchZero;
    Jump_out = Jump;
    JumpMem_out = JumpMem;

    ALU_out = ALU;
    DataMem_out = DataMem;
    rd_out = rd;
    adder_out = adder;   
end
endmodule