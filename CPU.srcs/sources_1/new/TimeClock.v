`timescale 1ns / 1ps
//millisecond clock for SOC

module TimeClock(
    input clk,
    input rst,
    output reg [`WIDTH - 1:0] ms
    );
    
    reg[`WIDTH - 1:0] tick;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ms <= `EMPTY;
            tick <= `EMPTY;
        end
        else begin
            if (tick + 1 == `FREQ / 1000) begin
                tick <= 0;
                ms <= ms + 1;
            end
            else begin
                tick <= tick + 1;
                ms <= ms;
            end
        end
    end
    
endmodule
