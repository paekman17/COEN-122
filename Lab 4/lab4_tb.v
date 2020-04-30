`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//	Name: Ethan Paek
//	Date: 4/30/2020
//	Topic: COEN 122 - Lab #4
//	Description: Test bench for pipeline buffers
//
//////////////////////////////////////////////////////////////////////////////////

module pipeline_buffer_test();

    //initialize the clock, one register and 3 wires
    reg clk;
    reg [31:0] IF;
    wire [31:0] ID;
    wire [31:0] EX;
    wire [31:0] WB;
	
    //test cases
    IF_ID test_if_id (clk, IF,IF,ID,ID);
    ID_EX test_id_ex (clk, ID,ID,ID,ID,ID,ID,ID,ID,ID,ID,ID,ID,ID,ID, EX,EX,EX,EX,EX,EX,EX,EX,EX,EX,EX,EX,EX,EX);
    EX_WB test_ex_wb (clk, EX,EX,EX,EX,EX,EX,EX,EX,EX,EX,EX,EX,EX, WB,WB,WB,WB,WB,WB,WB,WB,WB,WB,WB,WB,WB);
    
    initial
    begin //initialization of the clock
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial
    begin //switch the values of instruction fetch every 50 units of our timescale
        IF = 1;
        #50;
        
        IF = 2;
        #50;
        
        IF = 3;
        #50;
        
        IF = 4;
        #50
        
        IF = 5;
        #50
    $finish;
    end
endmodule