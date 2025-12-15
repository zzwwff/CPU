`timescale 1ns / 1ps

module CPURam(
    input clk,
    input rst,
    input [`WIDTH - 1:0] rAddrA,
    input [`WIDTH - 1:0] rAddrB,
    input [`WIDTH - 1:0] wAddrB,
    input [`WIDTH - 1:0] wDataB,
    input wEnableB,
    input [`TYPE_WIDTH - 1:0] readMemType,
    input [`TYPE_WIDTH - 1:0] writeMemType,
    output [`WIDTH - 1:0] rDataA,
    output reg [`WIDTH - 1:0] rDataB
    );

    wire [`WIDTH - 1:0] addrB;
    assign addrB = wEnableB? wAddrB : rAddrB;

    wire [`WIDTH - 1:0] rawDataB;

    reg [`BYTE_WIDTH - 1:0] writeEnableB;
    reg [`WIDTH - 1:0] writeDataB;

    ram ram1(
        .addra(rAddrA[2 + `ADDR_WIDTH - 1:2]),
        .clka(clk),
        .dina(`EMPTY),
        .douta(rDataA),
        .ena(1'b1),
        .wea(1'b0),
        .addrb(addrB[2 + `ADDR_WIDTH - 1:2]),
        .clkb(clk),
        .dinb(writeDataB),
        .doutb(rawDataB),
        .enb(1'b1),
        .web(writeEnableB)
    );

    always @(*) begin
        if (rst) begin
            rDataB = 0;
            writeEnableB = 0;
            writeDataB = 0;
        end
        else if (!wEnableB) begin
            //read mode
            writeEnableB = 0;
            if (readMemType == `WORD)
                rDataB = rawDataB;
            else if (readMemType == `HALFWORD) begin
                if (addrB[1])
                    rDataB = { `HALFWORD_EMPTY, rawDataB[`WIDTH - 1:`WIDTH - `HALFWORD_WIDTH] };
                else
                    rDataB = { `HALFWORD_EMPTY, rawDataB[`HALFWORD_WIDTH - 1:0] };
            end
            else begin
                if (addrB[1:0] == 2'b0)
                    rDataB = { `HALFWORD_EMPTY, `BYTE_EMPTY, rawDataB[7:0] };
                else if (addrB[1:0] == 2'b1)
                    rDataB = { `HALFWORD_EMPTY, `BYTE_EMPTY, rawDataB[15:8] };
                else if (addrB[1:0] == 2'b10)
                    rDataB = { `HALFWORD_EMPTY, `BYTE_EMPTY, rawDataB[23:16] };
                else
                    rDataB = { `HALFWORD_EMPTY, `BYTE_EMPTY, rawDataB[31:24] };
            end
        end
        else begin
            //write mode
            if (writeMemType == `WORD) begin
                writeEnableB = 4'b1111;
                writeDataB = wDataB;
            end
            else if (writeMemType == `HALFWORD) begin
                if (addrB[1]) begin
                    writeEnableB = 4'b1100;
                    writeDataB = wDataB << (`WIDTH / 2);
                end
                else begin
                    writeEnableB = 4'b0011;
                    writeDataB = wDataB;
                end
            end
            else begin
                if (addrB[1:0] == 2'b0) begin
                    writeEnableB = 4'b0001;
                    writeDataB = wDataB;
                end
                else if (addrB[1:0] == 2'b1) begin
                    writeEnableB = 4'b0010;
                    writeDataB = wDataB << 8;
                end
                else if (addrB[1:0] == 2'b10) begin
                    writeEnableB = 4'b0100;
                    writeDataB = wDataB << 16;
                end
                else  begin
                    writeEnableB = 4'b1000;
                    writeDataB = wDataB << 24;
                end
            end
        end
    end

endmodule
