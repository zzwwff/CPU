`timescale 1ns / 1ps


module Padding(
    input rst,
    input[`WIDTH - 1:0] din,
    input[`PAD_WIDTH - 1:0] type,
    output reg[`WIDTH - 1:0] dout
    );
    
    integer all1 = 32'b11111111_11111111_11111111_11111111;
    
    always @(*) begin
        if (rst) begin
            dout = `EMPTY;
        end
        else if (type == `PAD_U8) begin
            dout = { 24'b0, din[7:0] };
        end
        else if (type == `PAD_U16) begin
            dout = { 16'b0, din[15:0] };
        end
        else if (type == `PAD_U32) begin
            dout = din;
        end
        else if (type == `PAD_S8) begin
            if (din[7])
                dout = { all1[23:0], din[7:0] };
            else dout = { 24'b0, din[7:0] };
        end
        else if (type == `PAD_S16) begin
            if (din[15])
                dout = { all1[15:0], din[15:0] };
            else dout = { 16'b0, din[15:0] };
        end
        else if (type == `PAD_INS) begin
            dout = { 4'b0000, din[25:0], 2'b00 };
        end
        else if (type == `PAD_OFFSET) begin
            if (din[`IMMEDIATE_WIDTH - 1])
                dout = { all1[13:0], din[`IMMEDIATE_WIDTH - 1:0], 2'b00 };
            else 
                dout = { 14'b0000, din[`IMMEDIATE_WIDTH - 1:0], 2'b00 };
        end
        else dout = din;
    end
    
endmodule
