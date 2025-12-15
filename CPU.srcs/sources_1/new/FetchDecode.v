`timescale 1ns / 1ps

module FetchDecode(
    input clk,
    input rst,
    input[`WIDTH - 1:0] fPc,
    input[`WIDTH - 1:0] fInst,
    input branchEnable,
    input stall,
    output reg[`WIDTH - 1:0] dPc,
    output reg[`WIDTH - 1:0] dInst
    );
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            dPc <= `EMPTY;
            dInst <= `EMPTY;
        end
        else begin
            if (stall) begin
                dPc <= dPc;
                dInst <= dInst;
            end
            else begin
                dPc <= fPc;
                dInst <= fInst;
            end
        end
    end
    
endmodule
