`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/9/2020
//	Topic: COEN 122 - Lab #1
//	Description: Test bench for 4:1 multiplexer
//
//////////////////////////////////////////////////////////////////////////////////

module tb_mux();
reg D1,D2,D3,D4;
reg [1:0] sel;
wire dataOut;
mux test(D1,D2,D3,D4,sel,dataOut);
initial
begin
    D1=1;
    D2=0;
    D3=0;
    D4=1;
    sel = 2'b00;
    #50
    sel = 2'b01;
    #50
    sel = 2'b10;
    #50
    sel = 2'b11;
    #50
$finish;
end

endmodule