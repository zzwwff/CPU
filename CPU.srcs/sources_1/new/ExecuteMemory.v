`timescale 1ns / 1ps


module ExecuteMemory(
    input clk,
    input rst,
    input stall,
    input[`ALU_OP_WIDTH - 1:0] eAluOp,
    input[`WIDTH - 1:0] eWriteData,
    input eWriteEnable,
    input[`REG_WIDTH - 1:0] eWriteAddr,
    input eWriteHiEnable,
    input [`WIDTH - 1:0] eWriteHiData,
    input eWriteLoEnable,
    input [`WIDTH - 1:0] eWriteLoData,
    input [`WIDTH - 1:0] eWriteMemAddr,
    input eWriteMemEnable,
    output reg[`WIDTH - 1:0] mWriteData,
    output reg mWriteEnable,
    output reg[`REG_WIDTH - 1:0] mWriteAddr,
    output reg mWriteHiEnable,
    output reg [`WIDTH - 1:0] mWriteHiData,
    output reg mWriteLoEnable,
    output reg [`WIDTH - 1:0] mWriteLoData,
    output reg [`WIDTH - 1:0] mWriteMemAddr,
    output reg mWriteMemEnable,
    output reg [`ALU_OP_WIDTH - 1:0] mAluOp
    );
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mWriteData <= `EMPTY;
            mWriteEnable <= 0;
            mWriteAddr <= 0;
            mWriteHiData <= `EMPTY;
            mWriteHiEnable <= 0;
            mWriteLoData <= `EMPTY;
            mWriteLoEnable <= 0;
            mWriteMemAddr <= `EMPTY;
            mWriteMemEnable <= 0;
            mAluOp <= 0;
        end 
        else if (stall) begin
            mWriteData <= mWriteData;
            mWriteEnable <= mWriteEnable;
            mWriteAddr <= mWriteAddr;
            mWriteHiData <= mWriteHiData;
            mWriteHiEnable <= mWriteHiEnable;
            mWriteLoData <= mWriteLoData;
            mWriteLoEnable <= mWriteLoEnable;
            mWriteMemAddr <= mWriteMemAddr;
            mWriteMemEnable <= mWriteMemEnable;
            mAluOp <= mAluOp;
        end
        else begin
            mWriteData <= eWriteData;
            mWriteEnable <= eWriteEnable;
            mWriteAddr <= eWriteAddr;
            mWriteHiData <= eWriteHiData;
            mWriteHiEnable <= eWriteHiEnable;
            mWriteLoData <= eWriteLoData;
            mWriteLoEnable <= eWriteLoEnable;
            mWriteMemAddr <= eWriteMemAddr;
            mWriteMemEnable <= eWriteMemEnable;
            mAluOp <= eAluOp;
        end
    end
    
endmodule
