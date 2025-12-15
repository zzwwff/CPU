`timescale 1ns / 1ps

module MemoryWriteback(
    input clk,
    input rst,
    input stall,
    input[`WIDTH - 1:0] mWriteData,
    input mWriteEnable,
    input[`REG_WIDTH - 1:0] mWriteAddr,
    input mWriteHiEnable,
    input [`WIDTH - 1:0] mWriteHiData,
    input mWriteLoEnable,
    input [`WIDTH - 1:0] mWriteLoData,
    output reg[`WIDTH - 1:0] wWriteData,
    output reg wWriteEnable,
    output reg[`REG_WIDTH - 1:0] wWriteAddr,
    output reg wWriteHiEnable,
    output reg [`WIDTH - 1:0] wWriteHiData,
    output reg wWriteLoEnable,
    output reg [`WIDTH - 1:0] wWriteLoData
    );
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wWriteData <= `EMPTY;
            wWriteEnable <= 0;
            wWriteAddr <= 0;
            wWriteHiEnable <= 0;
            wWriteHiData <= `EMPTY;
            wWriteLoEnable <= 0;
            wWriteLoData <= `EMPTY;
        end 
        else if (stall) begin
            wWriteData <= wWriteData;
            wWriteEnable <= wWriteEnable;
            wWriteAddr <= wWriteAddr;
            wWriteHiEnable <= wWriteHiEnable;
            wWriteHiData <= wWriteHiData;
            wWriteLoEnable <= wWriteLoEnable;
            wWriteLoData <= wWriteLoData;
        end
        else begin
            wWriteData <= mWriteData;
            wWriteEnable <= mWriteEnable;
            wWriteAddr <= mWriteAddr;
            wWriteHiEnable <= mWriteHiEnable;
            wWriteHiData <= mWriteHiData;
            wWriteLoEnable <= mWriteLoEnable;
            wWriteLoData <= mWriteLoData;
        end
    end
endmodule
