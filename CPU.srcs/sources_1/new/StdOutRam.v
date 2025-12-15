`timescale 1ns / 1ps
`define STD_OUT_WIDTH 11
module StdOutRam(
        input clk,
        input slowClk,
        input rst,
        input stdOutEnable,
        input [7:0] stdOutData,
        input [`STD_OUT_WIDTH - 1:0] readAddr,
        output [7:0] readData,
        output reg [`STD_OUT_WIDTH - 1:0] outEOF
    );
    reg localStdOutEnable;
    reg [4:0] clks;
    

    always @(posedge slowClk or posedge rst) begin
        if (rst) begin
            outEOF <= 0;
            localStdOutEnable <= 0;
        end
        else if (stdOutEnable) begin
            outEOF <= outEOF + 1;
        end
        else 
            outEOF <= outEOF;
    end
    
    ram8 stdOutRam(
        .addra(outEOF),
        .clka(clk),
        .dina(stdOutData),
        .ena(stdOutEnable),
        .wea(stdOutEnable),
        .addrb(readAddr),
        .clkb(clk),
        .doutb(readData),
        .enb(1)
    );

endmodule
