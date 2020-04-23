`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/23/2020
//	Topic: COEN 122 - Lab #3
//	Description: This code represents data memory that uses 16-bit addressing so as 
//	to not crash Vivado due to simulating a large amount of 32-bit addresses
//
//////////////////////////////////////////////////////////////////////////////////

module data_memory(clk, wrt, read, address, datain, dataout);
//initialization of variables
input clk;
input wrt;
input read;
reg [31:0] data[65535:0];

input [31:0] address;
input [31:0] datain;

output reg [31:0] dataout;

always@(posedge clk)
begin
   if (read == 1) //reading data from data[i] to dataout
        dataout = data[address[15:0]];
   if (wrt == 1) //writing data from the address to data[i]
        data[address[15:0]] = datain;
end
endmodule