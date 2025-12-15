`timescale 1ns / 1ps

module Forwarding(
    input rst,
    input regEnable,                    //whether read data from register
    input [`REG_WIDTH - 1:0] regAddr,
    input [`WIDTH - 1:0] regData,
    //forwarding 3 * 2 = 6 inputs
    //forwarding source 1, after executing
    input [`WIDTH - 1:0] eWriteData,
    input eWriteEnable,
    input [`REG_WIDTH - 1:0] eWriteAddr,
    //forwarding source 2, after memory
    input [`WIDTH - 1:0] mWriteData,
    input mWriteEnable,
    input [`REG_WIDTH - 1:0] mWriteAddr,
    output reg[`WIDTH - 1:0] data
    );
    
    always @(*) begin  
        if (rst)
            data = `EMPTY;
        else begin
            //forwading only happens if regEnable && writeEnable && regAddr == writeAddr
            if (~regEnable)
                data = regData;
            else if (eWriteEnable && regAddr == eWriteAddr)
                data = eWriteData;
            else if (mWriteEnable && regAddr == mWriteAddr)
                data = mWriteData;
            else data = regData;
        end
            
    end
endmodule
