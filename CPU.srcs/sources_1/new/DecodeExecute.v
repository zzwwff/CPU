`timescale 1ns / 1ps
module DecodeExecute(
    input rst,
    input clk,
    input stall,
    input[`ALU_OP_WIDTH - 1:0] dAluOp,
    input[`ALU_SEL_WIDTH - 1:0] dAluSel,
    input[`WIDTH - 1:0] dDataSource1,
    input[`WIDTH - 1:0] dDataSource2,
    input[`REG_WIDTH - 1:0] dRegTarget,         
    input dRegWriteEnable,
    input[`WIDTH - 1:0] dOffset,
    output reg[`ALU_OP_WIDTH - 1:0] eAluOp,
    output reg[`ALU_SEL_WIDTH - 1:0] eAluSel,
    output reg[`WIDTH - 1:0] eDataSource1,
    output reg[`WIDTH - 1:0] eDataSource2,
    output reg[`REG_WIDTH - 1:0] eRegTarget,         
    output reg eRegWriteEnable,
    output reg[`WIDTH - 1:0] eOffset
    );
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            eAluOp <= 0;
            eAluSel <= 0;
            eDataSource1 <= `EMPTY;
            eDataSource2 <= `EMPTY;
            eRegTarget <= 0;
            eRegWriteEnable <= 0;
            eOffset <= `EMPTY;
        end
        else if (stall) begin
            eAluOp <= 0;
            eAluSel <= 0;
            eDataSource1 <= `EMPTY;
            eDataSource2 <= `EMPTY;
            eRegTarget <= 0;
            eRegWriteEnable <= 0;
            eOffset <= `EMPTY;
        end
        else begin
            eAluOp <= dAluOp;
            eAluSel <= dAluSel;
            eDataSource1 <= dDataSource1;
            eDataSource2 <= dDataSource2;
            eRegTarget <= dRegTarget;
            eRegWriteEnable <= dRegWriteEnable;
            eOffset <= dOffset;
        end
    end
    
endmodule
