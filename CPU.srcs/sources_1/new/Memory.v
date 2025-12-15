`timescale 1ns / 1ps


module Memory(
    input rst,
    input[`ALU_OP_WIDTH - 1:0] aluOp,
    input[`WIDTH - 1:0] mWriteData,
    input mWriteEnable,
    input [`REG_WIDTH - 1:0] mWriteAddr,
    input mWriteHiEnable,
    input [`WIDTH - 1:0] mWriteHiData,
    input mWriteLoEnable,
    input [`WIDTH - 1:0] mWriteLoData,
    input mWriteMemEnable,
    input [`WIDTH - 1:0] mWriteMemAddr,
    input [`WIDTH - 1:0] readMemData,
    output wire[`WIDTH - 1:0] writeData,            //loaded from padding
    output reg writeEnable,
    output reg[`REG_WIDTH - 1:0] writeAddr,
    output reg writeHiEnable,
    output reg [`WIDTH - 1:0] writeHiData,
    output reg writeLoEnable,
    output reg [`WIDTH - 1:0] writeLoData,
    output reg writeMemEnable,
    output reg [`WIDTH - 1:0] writeMemAddr,
    output reg [`WIDTH - 1:0] readMemAddr,
    output reg [`TYPE_WIDTH - 1:0] readMemType,
    output reg [`TYPE_WIDTH - 1:0] writeMemType,
    output reg stdOutEnable,
    output reg [7:0] stdOutData
    );

    reg [`PAD_WIDTH - 1:0] padType;
    reg [`WIDTH - 1:0] padIn;
    Padding padding(
        .rst(rst),
        .din(padIn),
        .dout(writeData),
        .type(padType)
    );
    
    
    always @(*) begin
        if (rst) begin
            //writeData = `EMPTY;  writeData is wire type
            writeEnable = 0;
            writeAddr = 0;
            writeHiEnable = 0;
            writeHiData = `EMPTY;
            writeLoEnable = 0;
            writeLoData = `EMPTY;
            writeMemAddr = `EMPTY;
            writeMemEnable = 0;
            readMemAddr = `EMPTY;
            readMemType = 0;
            writeMemType = 0;
            padType = `PAD_S32;
            padIn = 0;
            stdOutEnable = 0;
            stdOutData = 0;
        end 
        else begin
            if (aluOp == `OP_OUT) begin
                stdOutEnable = 1;
                stdOutData = mWriteData[7:0];
                writeEnable = mWriteEnable;
                writeAddr = mWriteAddr;
                writeHiEnable = mWriteHiEnable;
                writeHiData = mWriteHiData;
                writeLoEnable = mWriteLoEnable;
                writeLoData = mWriteLoData;
                writeMemEnable = mWriteMemEnable;
                writeMemAddr = mWriteMemAddr;
                padType = `PAD_S32;
                padIn = mWriteData;
            end
            else begin
                stdOutEnable = 0;
                if (aluOp == `OP_LW) begin
                    //writeData is data read from memory
                    //writeData is auto set by module padding
                    //writeData = readMemData;
                    padIn = readMemData;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    readMemAddr = mWriteMemAddr;
                    readMemType = `WORD;
                    padType = `PAD_S32;
                end
                else if (aluOp == `OP_LHU) begin
                    //writeData is data read from memory
                    //writeData = readMemData;
                    padIn = readMemData;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    readMemAddr = mWriteMemAddr;
                    readMemType = `HALFWORD;
                    padType = `PAD_U16;
                end
                else if (aluOp == `OP_LH) begin
                    //writeData is data read from memory
                    //writeData = readMemData;
                    padIn = readMemData;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    readMemAddr = mWriteMemAddr;
                    readMemType = `HALFWORD;
                    padType = `PAD_S16;
                end
                else if (aluOp == `OP_LB) begin
                    //writeData is data read from memory
                    //writeData = readMemData;
                    padIn = readMemData;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    readMemAddr = mWriteMemAddr;
                    readMemType = `BYTE;
                    padType = `PAD_S8;
                end
                else if (aluOp == `OP_LBU) begin
                    //writeData is data read from memory
                    //writeData = readMemData;
                    padIn = readMemData;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    readMemAddr = mWriteMemAddr;
                    readMemType = `BYTE;
                    padType = `PAD_U8;
                end
                else if (aluOp == `OP_SW) begin
                    //writeData = mWriteData;
                    padIn = mWriteData;
                    padType = `PAD_S32;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    writeMemType = `WORD;
                end
                else if (aluOp == `OP_SH) begin
                    //writeData = mWriteData;
                    padIn = mWriteData;
                    padType = `PAD_S32;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    writeMemType = `HALFWORD;
                end
                else if (aluOp == `OP_SB) begin
                    //writeData = mWriteData;
                    padIn = mWriteData;
                    padType = `PAD_S32;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    writeMemType = `BYTE;
                end
                else begin 
                    //writeData = mWriteData;
                    writeEnable = mWriteEnable;
                    writeAddr = mWriteAddr;
                    writeHiEnable = mWriteHiEnable;
                    writeHiData = mWriteHiData;
                    writeLoEnable = mWriteLoEnable;
                    writeLoData = mWriteLoData;
                    writeMemEnable = mWriteMemEnable;
                    writeMemAddr = mWriteMemAddr;
                    padType = `PAD_S32;
                    padIn = mWriteData;
                end

            end
        end
    end
endmodule
