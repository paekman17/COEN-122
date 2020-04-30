`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/30/2020
//	Topic: COEN 122 - Lab #4
//	Description: Buffer that connects instruction decode and execution stages
//
//////////////////////////////////////////////////////////////////////////////////

module ID_EX(clk, RegWrt, MemToReg, PCtoReg, BranchNeg, BranchZero, ALUOP, MemRd, MemWrt, Jump, JumpMem, rs, rt,rd, adder, RegWrt_out, MemToReg_out, PCtoReg_out, BranchNeg_out, BranchZero_out, ALUOP_out, MemRd_out, MemWrt_out, Jump_out, JumpMem_out, rs_out, rt_out,rd_out, adder_out);

//initialize inputs
input clk;
input RegWrt;
input MemToReg;
input PCtoReg;
input BranchNeg;
input BranchZero;
input Jump;
input JumpMem;
input [3:0] ALUOP;
input MemRd;
input MemWrt;

input [31:0] rs;
input [31:0] rt;
input [5:0] rd;

input [31:0] adder;

//initialize outputs
output reg RegWrt_out;
output reg MemToReg_out;
output reg PCtoReg_out;
output reg BranchNeg_out;
output reg BranchZero_out;
output reg Jump_out;
output reg JumpMem_out;
output reg [3:0] ALUOP_out;
output reg MemRd_out;
output reg MemWrt_out;

output reg [31:0] rs_out;
output reg [31:0] rt_out;
output reg [5:0] rd_out;

output reg [31:0] adder_out;

always@ (posedge clk)
begin //assign inputs to the outputs
    RegWrt_out = RegWrt;
    MemToReg_out = MemToReg;
    PCtoReg_out = PCtoReg;
    BranchNeg_out = BranchNeg;
    BranchZero_out = BranchZero;
    Jump_out = Jump;
    JumpMem_out = JumpMem;
    ALUOP_out = ALUOP;
    MemRd_out = MemRd;
    MemWrt_out = MemWrt;

    rs_out = rs;
    rt_out = rt;
    rd_out = rd;

    adder_out = adder;
end
endmodule