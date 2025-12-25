`timescale 1ns / 1ps

module SOC(
    input rst,
    input read,
    input CLK,
    input rx,
    input leftButton,
    input rightButton,
    input middleButton,
    input upButton,
    input downButton,
    output tx,
    output hlt,
    output ready,
    output [3:0] rgb_g,
    output [3:0] rgb_r,
    output [3:0] rgb_b,
    output h_sync,
    output v_sync,
    output [7:0] debug,
    output [3:0] segAn,              //segAn decide which number to show
    output [7:0] segSeg              //segSeg returns the 7-segment code of that number
);
    wire clk;
    VGAClock clk60(
        .clk_in1(CLK),
        .clk_out1(clk)
    );
    reg [21:0] clks;
    always @(posedge clk or posedge rst) begin
        if (rst) clks <= 2'b0;
        else clks = clks + 1;
    end

    wire[`WIDTH - 1:0] inst;
    wire[`WIDTH - 1:0] readMemData;
    wire[`WIDTH - 1:0] pc;
    wire writeMemEnable;
    wire [`WIDTH - 1:0] writeMemAddr;
    wire [`WIDTH - 1:0] writeMemData;
    wire [`WIDTH - 1:0] readMemAddr;
    wire [`TYPE_WIDTH - 1:0] readMemType;
    wire [`TYPE_WIDTH - 1:0] writeMemType;
    wire clr;

    wire [`WIDTH - 1:0] rxMemData;
    wire [`WIDTH - 1:0] rxMemAddr;
    wire rxMemEnable;    

    wire stdOutEnable;
    wire [7:0] stdOutData;
    wire [`WIDTH - 1:0] rax;
    
    wire [`WIDTH - 1:0] ms;
    TimeClock timeClock(.rst(rst),
                        .clk(clk),
                        .ms(ms));
                        
    reg [`WIDTH - 1:0] getData;
    wire [`WIDTH - 1:0] getType;
    
    always @(*) begin
        if (rst) getData = `EMPTY;
        else begin
            if (getType == `GET_CLOCK)
                getData = ms;
            else if (getType == `GET_UP_BUTTON)
                getData = { 31'b0, upButton };
            else if (getType == `GET_DOWN_BUTTON)
                getData = { 31'b0, downButton };
            else if (getType == `GET_MIDDLE_BUTTON)
                getData = { 31'b0, middleButton };
            else if (getType == `GET_RIGHT_BUTTON)
                getData = { 31'b0, rightButton };
            else if (getType == `GET_LEFT_BUTTON)
                getData = { 31'b0, leftButton };
            else getData = `EMPTY;
        end
    end
    
    TimeDisplay timeDisplay(
        .clk(clks[15]),
        .rst_n(~rst),
        .n1(rax / 1000 % 10),
        .n2(rax / 100 % 10),
        .n3(rax / 10 % 10),
        .n4(rax % 10),
        .seg_an(segAn),
        .seg_seg(segSeg)
    );
    
    CPUTop cpuTop(
        .rst(rst | read),
        .clk(clks[2]),
        .inst(inst),
        .readMemData(readMemData),
        .getData(getData),
        .pc(pc),
        .hlt(hlt),
        .writeMemEnable(writeMemEnable),
        .writeMemAddr(writeMemAddr),
        .writeMemData(writeMemData),
        .readMemAddr(readMemAddr),
        .readMemType(readMemType),
        .writeMemType(writeMemType),
        .stdOutData(stdOutData),
        .stdOutEnable(stdOutEnable),
        .rax(rax),
        .debug(debug),
        .clr(clr),
        .getType(getType)
    );

    CPURam cpuRam(
        .clk(clk),
        .rst(rst),
        .rAddrA(pc),
        .rAddrB(readMemAddr),
        .wAddrB(read ? rxMemAddr : writeMemAddr),
        .wDataB(read ? rxMemData : writeMemData),
        .wEnableB(read ? rxMemEnable : writeMemEnable),
        .rDataA(inst),
        .rDataB(readMemData),
        .readMemType(readMemType),
        .writeMemType(read ? `WORD : writeMemType)
    );
    MemoryTransmitter memoryTransmitter(
        .clk(clk),
        .en(read),
        .rx(rx),
        .tx(tx),
        .ready(ready),
        .rxMemData(rxMemData),
        .rxMemAddr(rxMemAddr),
        .rxMemEnable(rxMemEnable)
    );

    wire [`STD_OUT_WIDTH - 1:0] stdOutReadAddr;
    wire [7:0] stdOutReadData;
    wire [`STD_OUT_WIDTH - 1:0] outEOF;
    
    StdOutRam stdOutRam(
        .clk(clk),
        .slowClk(clks[2]),
        .rst(rst | read | clr),
        .stdOutEnable(stdOutEnable),
        .stdOutData(stdOutData),
        .readAddr(stdOutReadAddr),
        .readData(stdOutReadData),
        .outEOF(outEOF)
    );

    Console console(
        .clk(clk),
        .rst(rst | read | clr),
        .posthChar(stdOutReadData),
        .eof(outEOF),
        .pos(stdOutReadAddr),
        .rgb_g(rgb_g),
        .rgb_r(rgb_r),
        .rgb_b(rgb_b),
        .h_sync(h_sync),
        .v_sync(v_sync)
    );
    




endmodule
