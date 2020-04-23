`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/23/2020
//	Topic: COEN 122 - Lab #3
//	Description: Acts as testbench for COEN 122 Lab 3
//
//////////////////////////////////////////////////////////////////////////////////

module test();
reg clock;

reg [7:0] address;
wire [31:0] inst;
instruction_memory testi(clock,address,inst);

reg write;
reg [5:0] rs;
reg [5:0] rt;
reg [5:0] rd;
reg [31:0] reg_datain;
wire [31:0] rsout;
wire [31:0] rtout;
register_file testr(clock,write,rs,rt,rd,reg_datain,rsout,rtout);

reg data_write;
reg read;
reg [31:0] data_address;
reg [31:0] data_datain;
wire [31:0] dataout;
data_memory testd(clock,data_write,read,data_address,data_datain,dataout);

initial
begin
	//continuously flip the clock edge
    clock = 0;
    forever #5 clock = ~clock;
end

initial
begin
//data testd(clock,data_write,read,data_address,data_datain,dataout);
    data_write = 1;
    read = 0;
    data_address = 2;
    data_datain = 7;
    
    #50
    data_write = 0;
    read = 1;
//instruction testi(clock,address,inst);   
    #50
    address = 100;
    
    #50
    address = 101;

//register testr(clock,write,rs,rt,rd,reg_datain,rsout,rtout);
    #50 
    write = 1;
    reg_datain = 10;
    rd = 10;
    
    #50
    reg_datain = 11;
    rd = 11;
    
    #50
    write = 0;
    rs = 10;
    rt = 11;
    
end
endmodule