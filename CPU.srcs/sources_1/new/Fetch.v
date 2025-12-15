`timescale 1ns / 1ps
`include "Define.v"

module Fetch(
    input rst,
    input clk,
    input stall,
    input branchEnable,
    input [`WIDTH - 1:0] branchAddr,
    output reg[`WIDTH - 1:0] pc
    );
    
    reg[`WIDTH - 1:0] currentPc;
    reg on;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            currentPc <= 0;
            on <= 0;
        end
        else begin
            currentPc <= pc;
            on <= 1;
        end
    end

    always @(*) begin
        if (rst) pc = 0;
        else if (stall) begin
            pc = currentPc;
        end
        else if (branchEnable) begin
            pc = branchAddr;
        end
        else if (on) begin
            pc = currentPc + `BYTE_WIDTH;
        end
        else pc = currentPc;
    end
    
endmodule
