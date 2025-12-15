`timescale 1ns / 1ps
/*
Pattern:
else if (pc == 32'd%addr00 ) 
    inst = 32'b%data31%data30%data29%data28%data27%data26%data25%data24_%data23%data22%data21%data20%data19%data18%data17%data16_%data15%data14%data13%data12%data11%data10%data09%data08_%data07%data06%data05%data04%data03%data02%data01%data00;


*/
module MemTestBench;

    reg rst;
    reg clk;
    wire hlt;
   
    
    initial begin
        rst = 1;
        #35;
        rst = 0;
    end
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    

    
    reg [11:0] rAddrA;
    wire [31:0] rDataA;
    always @(posedge clk or posedge rst) begin
        if (rst) rAddrA <= 0;
        else if (clk == 20) rAddrA <= 0;
        else rAddrA <= rAddrA + 1;
    end
    
    ram ram1(
        .addra(rAddrA),
        .clka(clk),
        .dina(0),
        .douta(rDataA),
        .ena(1),
        .wea(0)
       
    );

endmodule
