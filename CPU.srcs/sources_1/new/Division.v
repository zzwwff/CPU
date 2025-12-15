`timescale 1ns / 1ps

module Division(
    input rst,
    input clk,
    input [`WIDTH - 1:0] rawData1,
    input [`WIDTH - 1:0] rawData2,
    input start,
    output reg [`WIDTH - 1:0] resultDiv,
    output reg [`WIDTH - 1:0] resultRem,
    output reg resultReady,
    output reg[1:0] status
    );

    reg sign;

    reg[`WIDTH - 1:0] num;

    reg[`WIDTH - 1:0] data1;
    reg[`WIDTH - 1:0] data2;


    reg[1:0] nextStatus;
    reg[4:0] currentDigit;

    always @(*) begin
        if (rst) begin
            nextStatus = `DIV_END;
        end
        else if (status == `DIV_END)
            nextStatus = `DIV_FREE;
        else if (status == `DIV_ZERO)
            nextStatus = `DIV_FREE;
        else if (status == `DIV_FREE) begin
            if (start) begin
                if (rawData2 == 32'b0)
                    nextStatus = `DIV_ZERO;
                else 
                    nextStatus = `DIV_WORK;
            end
            else nextStatus = `DIV_FREE;
        end
        else if (status == `DIV_WORK) begin
            if (currentDigit == 5'd0)
                nextStatus = `DIV_END;
            else nextStatus = `DIV_WORK;
        end
        else nextStatus = `DIV_FREE;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            status <= 0;
            data1 <= `EMPTY;
            data2 <= `EMPTY;
            resultDiv <= `EMPTY;
            resultRem <= `EMPTY;
            resultReady <= 0;
            sign <= 0;
        end
        else begin
            status <= nextStatus;
            if (status == `DIV_FREE) begin
                // something divided by 0
                if (nextStatus == `DIV_ZERO) begin
                    resultDiv <= `EMPTY;
                    resultRem <= `EMPTY;
                    resultReady <= 1;
                end
                //division start
                else begin
                    resultDiv <= `EMPTY;
                    resultRem <= `EMPTY;
                    sign <= rawData1[`WIDTH - 1] ^ rawData2[`WIDTH - 1];
                    if (rawData1[`WIDTH - 1]) 
                        data1 <= ~rawData1 + 1;
                    else data1 <= rawData1;
                    if (rawData2[`WIDTH - 1]) 
                        data2 <= ~rawData2 + 1;
                    else data2 <= rawData2;
                    num <= `EMPTY;
                    resultReady <= 0;
                    currentDigit <= 5'd31;
                end
            end
            else if (status == `DIV_WORK) begin
                resultReady <= 0;
                //under work
                if (nextStatus == `DIV_WORK) begin
                    if (num >= data2) begin
                        resultDiv[currentDigit] <= 1;
                        num <= ((num - data2) << 1) + data1[currentDigit - 1];
                    end
                    else begin
                        resultDiv[currentDigit] <= 0;
                        num <= (num << 1) + data1[currentDigit - 1];
                    end
                    currentDigit <= currentDigit - 1;
                end
                else begin
                    if (num >= data2) begin
                        resultDiv[currentDigit] <= 1;
                        num <= num - data2;
                    end
                    else begin
                        resultDiv[currentDigit] <= 0;
                        num <= num;
                    end
                end
            end
            else if (status == `DIV_END) begin
                resultReady <= 1;
                if (sign) begin
                    resultRem <= num;
                    resultDiv <= ~resultDiv + 1;
                end
                else begin
                    resultRem <= num;
                    resultDiv <= resultDiv;
                end
            end
        end
    end

endmodule
