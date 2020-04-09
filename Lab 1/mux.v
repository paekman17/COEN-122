`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/9/2020
//	Topic: COEN 122 - Lab #1
//	Description: Famliarize ourselves with Verilog and use it to create a 4:1 multiplexer
//
//////////////////////////////////////////////////////////////////////////////////

module mux(A,B,C,D,select,out);
input A,B,C,D;
input [1:0] select;
output reg out;

always@(A,B,C,D,select)
case(select)
    2'b00: out = A;
    2'b01: out = B;
    2'b10: out = C;
    2'b11: out = D;
endcase

endmodule