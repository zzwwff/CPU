`timescale 1ns / 1ps


module HiLo(
    input rst,
    input clk,
    input writeHiEnable,
    input writeLoEnable,
    input [`WIDTH - 1:0] writeHiData,
    input [`WIDTH - 1:0] writeLoData,
    output reg[`WIDTH - 1:0] hiData,
    output reg[`WIDTH - 1:0] loData
    );


    always @(posedge clk or posedge rst) begin
        if (rst) begin
            hiData <= `EMPTY;
            loData <= `EMPTY;
        end
        else begin
            if (writeHiEnable)
                hiData <= writeHiData;
            if (writeLoEnable)
                loData <= writeLoData;
        end
    end

endmodule
