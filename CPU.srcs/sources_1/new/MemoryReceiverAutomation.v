`timescale 1ns / 1ps

`define IDLE 5'd1
`define SIZE0 5'd2
`define SIZE1 5'd3
`define SIZE2 5'd4
`define SIZE3 5'd5
`define DATA0 5'd6
`define DATA1 5'd7
`define DATA2 5'd8
`define DATA3 5'd9

module MemoryReceiverAutomation(
    input en,
    input clk,
    input rxDone,
    input [7:0] rxChar,
    output ready,
    output reg [`WIDTH - 1:0] rxMemData,
    output reg [`WIDTH - 1:0] rxMemAddr,
    output reg rxMemEnable,
    output [4:0] debug
    );
    
    reg [4:0] status;
    reg [4:0] nextStatus;
    assign ready = status == `IDLE;
    


    reg [`WIDTH - 1:0] size;
    reg [`WIDTH - 1:0] currentPos;
        assign debug = currentPos[4:0];

        //sequential logic block for automation
    always @(posedge clk or negedge en) begin
        if (~en) begin
            status <= `IDLE;
            size <= `EMPTY;
            rxMemEnable <= 0;
            currentPos <= `EMPTY;
            rxMemAddr <= `EMPTY;
            rxMemData <= `EMPTY;
        end
        else begin
            if (status != nextStatus) begin
                status <= nextStatus;
                if (status == `IDLE) begin
                    if (nextStatus == `SIZE0) begin
                        size[7:0] <= rxChar;
                    end
                    currentPos <= 0;
                end
                else if (status == `SIZE0) begin
                    size[15:8] <= rxChar;
                    currentPos <= 0;
                    rxMemEnable <= 0;
                end
                else if (status == `SIZE1) begin
                    size[23:16] <= rxChar;
                    rxMemEnable <= 0;
                    currentPos <= 0;
                end
                else if (status == `SIZE2) begin
                    size[31:24] <= rxChar;
                    rxMemEnable <= 0;
                    currentPos <= 0;
                end
                else if (status == `SIZE3) begin
                    if (nextStatus == `DATA0) begin
                        rxMemData[7:0] <= rxChar;
                        rxMemEnable <= 0;
                    end
                    else begin
                        rxMemEnable <= 0;
                    end
                    currentPos <= 0;
                end
                else if (status == `DATA0) begin
                    rxMemData[15:8] <= rxChar;
                    rxMemEnable <= 0;
                    currentPos <= currentPos;
                end
                else if (status == `DATA1) begin
                    rxMemData[23:16] <= rxChar;
                    rxMemEnable <= 0;
                    currentPos <= currentPos;
                end
                else if (status == `DATA2) begin    //will read the last part of a word
                    rxMemData[31:24] <= rxChar;
                    currentPos <= currentPos + 1;
                    rxMemEnable <= 1;
                    rxMemAddr <= { currentPos[`WIDTH - 1 - 2:0], 2'b0 };
                    
                end
                else if (status == `DATA3) begin    //read the first part of a new word
                    rxMemData[7:0] <= rxChar;
                    rxMemEnable <= 0;
                    currentPos <= currentPos;
                end
                else begin
                    rxMemEnable <= 0;
                    currentPos <= currentPos;
                end
            end
            else begin
                currentPos <= currentPos;
                rxMemEnable <= 0;
            end
        end
            
    end
    
    //combinational logic block for automation
    always @(*) begin
        if (~en) begin
            nextStatus = `IDLE;
        end
        else begin
            if (rxDone) begin   //new 8-bit information received
                //read the first word which means the length of information
                //size0 -> size1 -> size2 -> size3 -> (if size > 0) data
                if (status == `IDLE)
                    nextStatus = `SIZE0;
                else if (status == `SIZE0)
                    nextStatus = `SIZE1;
                else if (status == `SIZE1)
                    nextStatus = `SIZE2;
                else if (status == `SIZE2)
                    nextStatus = `SIZE3;
                else if (status == `SIZE3) begin
                    if (size != `EMPTY)             //size != 0, then receive data
                        nextStatus = `DATA0;
                    else nextStatus = `IDLE;        //size == 0, no information received
                end
                else if (status == `DATA0)
                    nextStatus = `DATA1;
                else if (status == `DATA1)
                    nextStatus = `DATA2;            //finish receiving this word, reach eof or turn to receive next word
                else if (status == `DATA2)
                    if (currentPos == size)     //reach eof
                        nextStatus = `IDLE;
                    else
                        nextStatus = `DATA3;        //next word
                else if (status == `DATA3) begin    //a new start
                    nextStatus = `DATA0;
                end
            end
            else begin
                if (status == `SIZE3 && size == `EMPTY) //this two transformation will happen whatever rxDone is
                    nextStatus = `IDLE;
                else if (status == `DATA3 && currentPos == size)
                    nextStatus = `IDLE;
                else nextStatus = status;    //nothing happen, all remain the same
            end 
        end
    end
    
endmodule
