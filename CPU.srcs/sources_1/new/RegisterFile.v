`timescale 1ns / 1ps

module RegisterFile(
    input rst,
    input clk,
    input [`REG_WIDTH - 1:0] regAddr1,
    input regEnable1,
    input [`REG_WIDTH - 1:0] regAddr2,
    input regEnable2,
    input [`REG_WIDTH - 1:0] writeAddr,
    input writeEnable,
    input [`WIDTH - 1:0] writeData,
    output reg[`WIDTH - 1:0] regData1,
    output reg[`WIDTH - 1:0] regData2,
    output [`WIDTH - 1:0] rax
    );
    
    integer i = 0;
    reg[`WIDTH - 1:0] regs[`REG_SIZE - 1:0];
    assign rax = regs[3];
    
    always @(*) begin
        if (rst) begin
            regData1 = `EMPTY;
            regData2 = `EMPTY;

        end
        else begin
            if (regEnable1) begin
                //if read and write happen simultaneously, forwarding written data to read
                if (writeEnable && regAddr1 == writeAddr) 
                    regData1 = writeData;
                else if (regAddr1 == 5'b11111)
                    regData1 = regs[`RET];
                else regData1 = regs[regAddr1];
            end
            else regData1 = `EMPTY;
            if (regEnable2) begin
                //if read and write happen simultaneously, forwarding written data to read
                if (writeEnable && regAddr2 == writeAddr) 
                    regData2 = writeData;
                else if (regAddr2 == 5'b11111)
                    regData2 = regs[`RET];
                else regData2 = regs[regAddr2];
            end
            else regData2 = `EMPTY;
        end
    end
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < `REG_SIZE; i = i + 1) begin
                if (i != `RSP && i != `RFP)
                    regs[i] <= `EMPTY;
            end
            regs[`RSP] <= `STACK_TOP;
            regs[`RFP] <= `STACK_TOP;
        end
        else begin
            if (writeEnable && writeAddr != 5'b11111)
                regs[writeAddr] <= writeData;
            else if (writeEnable) regs[`RET] <= writeData;
        end
    end
    
endmodule
