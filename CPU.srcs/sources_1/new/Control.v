`timescale 1ns / 1ps
module Control(
    input clk,
    input rst,
    input loadRequest,
    input hltRequest,
    input executeRequest,
    output reg [`STALL_WIDTH - 1:0] stall,
    output reg hlt
    );

    //stallRequest are for:
    //Fetch,
    //FetchDecode,
    //DecodeExecute,
    //ExecuteMemory,
    //MemoryWriteback
    //respectively
    reg lastLoadRequest;
    reg [2:0] hltClk;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            lastLoadRequest <= 0;
            hltClk <= 3'b0;
        end
        else if (hltRequest && hltClk == 0)
            hltClk <= 3'b1;
        else begin
            lastLoadRequest <= loadRequest;
            if (hltClk == 3'b1 || hltClk == 3'b10 )
                hltClk <= hltClk + 1;
        end
    end

    
    always @(*) begin
        if (rst) begin
            stall = 0;
            hlt = 0;
        end
        else begin
            if (loadRequest && ~lastLoadRequest) begin
                stall = 5'b00111;
                hlt = 0;
            end
            else if (executeRequest) begin
                stall = 5'b01111;
                hlt = 0;
            end
            else if (hltRequest && hltClk == 3'b0) begin
                stall = 5'b00011;
                hlt = 0;
            end
            else if (hltClk == 3'b1) begin
                stall = 5'b00111;
                hlt = 0;
            end
            else if (hltClk == 3'b10) begin
                stall = 5'b01111;
                hlt = 0;
            end
            else if (hltClk == 3'b11) begin
                stall = 5'b11111;
                hlt = 1;
            end
            else stall = 0;
        end
    end

endmodule
