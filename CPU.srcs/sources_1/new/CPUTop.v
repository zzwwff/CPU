`timescale 1ns / 1ps

module CPUTop(
    input rst,
    input clk,
    input[`WIDTH - 1:0] inst,
    input[`WIDTH - 1:0] readMemData,
    input[`WIDTH - 1:0] getData,
    output[`WIDTH - 1:0] pc,
    output wire hlt,
    output writeMemEnable,
    output [`WIDTH - 1:0] writeMemAddr,
    output [`WIDTH - 1:0] writeMemData,
    output [`WIDTH - 1:0] readMemAddr,
    output [`TYPE_WIDTH - 1:0] readMemType,
    output [`TYPE_WIDTH - 1:0] writeMemType,
    output stdOutEnable,
    output [7:0] stdOutData,
    output [7:0] debug,
    output [`WIDTH - 1:0] rax,
    output clr,
    output [`WIDTH - 1:0] getType
    );

    //Control module
    wire hltRequest;
    wire loadRequest;
    wire executeRequest;
    wire[`STALL_WIDTH - 1:0] stall;
    Control control(.rst(rst),
                    .clk(clk),
                    .hltRequest(hltRequest),
                    .loadRequest(loadRequest),
                    .executeRequest(executeRequest),
                    .stall(stall),
                    .hlt(hlt));

    //connect Decode->Fetch
    //for jump and branch
    wire branchEnable;
    wire[`WIDTH - 1:0] branchAddr;

    Fetch fetch(.rst(rst),
                .clk(clk),
                .branchEnable(branchEnable),
                .branchAddr(branchAddr),
                .stall(stall[0]),
                .pc(pc));
                
    
    //connect FD->Decode
    wire[`WIDTH - 1:0] dPc;
    wire[`WIDTH - 1:0] dInst;



    FetchDecode fetchDecode
                (.clk(clk),
                .rst(rst),
                .fPc(pc),
                .fInst(inst),
                .dPc(dPc),
                .dInst(dInst),
                .branchEnable(branchEnable),
                .stall(stall[1]));

    //connect Register <-> Decode
    wire[`WIDTH - 1:0] regData1;
    wire[`WIDTH - 1:0] regData2;
    wire[`REG_WIDTH - 1:0] regAddr1;
    wire regEnable1;
    wire[`REG_WIDTH - 1:0] regAddr2;
    wire regEnable2;
    //connect W -> Register
    wire[`WIDTH - 1:0] wWriteData;
    wire[`REG_WIDTH - 1:0] wWriteAddr;
    wire wWriteEnable;

    RegisterFile registerFile(.rst(rst),
                              .clk(clk),
                              .regAddr1(regAddr1),
                              .regAddr2(regAddr2),
                              .regEnable1(regEnable1),
                              .regEnable2(regEnable2),
                              .writeAddr(wWriteAddr),
                              .writeEnable(wWriteEnable),
                              .writeData(wWriteData),
                              .regData1(regData1),
                              .regData2(regData2),
                              .rax(rax));


     //connect Decode -> DE          
    wire[`ALU_OP_WIDTH - 1:0] dAluOp;
    wire [`ALU_SEL_WIDTH - 1:0] dAluSel;    
    wire[`WIDTH - 1:0] dDataSource1;
    wire[`WIDTH - 1:0] dDataSource2;   
    wire[`REG_WIDTH - 1:0] dRegTarget;
    wire dRegWriteEnable;
    wire[`WIDTH - 1:0] dOffset;

    //mWriteData connects EM and Memory
    //whereas mmWriteData connects Memory and MW, mmWriteData is a forwarding source
    //Memory -> MW, needed for data forwarding
    wire[`WIDTH - 1:0] mmWriteData;
    wire mmWriteEnable;
    wire[`REG_WIDTH - 1:0] mmWriteAddr;  
    //Execute -> EM, needed for data forwarding
    wire[`WIDTH - 1:0] eWriteData;
    wire eWriteEnable;
    wire[`REG_WIDTH - 1:0] eWriteAddr;
    
    //DE -> Decode and execute as well
    //for solving load-conflict
    //if eAluOp is kind of load and source register of current instruciton in Decode 
    //needs the value loaded just prior to it, the pipeline has to stall for 1 tick
    wire[`ALU_OP_WIDTH - 1:0] eAluOp;
    wire[`REG_WIDTH - 1:0] eRegTarget;     

    Decode decode(.rst(rst),
                  .pc(dPc),
                  .inst(dInst),
                  .regData1(regData1),
                  .regData2(regData2),
                  .eWriteData(eWriteData),
                  .eWriteEnable(eWriteEnable),
                  .eWriteAddr(eWriteAddr),
                  .mWriteData(mmWriteData),
                  .mWriteAddr(mmWriteAddr),
                  .mWriteEnable(mmWriteEnable),
                  .eAluOp(eAluOp),
                  .eRegTarget(eRegTarget),
                  .aluOp(dAluOp),
                  .aluSel(dAluSel),
                  .dataSource1(dDataSource1),
                  .dataSource2(dDataSource2),
                  .regTarget(dRegTarget),
                  .regWriteEnable(dRegWriteEnable),
                  .regAddr1(regAddr1),
                  .regEnable1(regEnable1),
                  .regAddr2(regAddr2),
                  .regEnable2(regEnable2),
                  .branchEnable(branchEnable),
                  .branchAddr(branchAddr),
                  .hlt(hltRequest),
                  .offset(dOffset),
                  .loadRequest(loadRequest));
    
    //DE -> Execute
    wire[`ALU_SEL_WIDTH - 1:0] eAluSel;
    wire[`WIDTH - 1:0] eDataSource1;
    wire[`WIDTH - 1:0] eDataSource2;
    wire eRegWriteEnable;
    wire[`WIDTH - 1:0] eOffset;
    //eAluOp and eRegTarget are defined in front of decode module because it needs them to solve load-conflict

    DecodeExecute decodeExecute(.rst(rst),
                                .clk(clk),
                                .stall(stall[2]),
                                .dAluOp(dAluOp),
                                .dAluSel(dAluSel),
                                .dDataSource1(dDataSource1),
                                .dDataSource2(dDataSource2),
                                .dRegTarget(dRegTarget),
                                .dRegWriteEnable(dRegWriteEnable),
                                .dOffset(dOffset),
                                .eAluOp(eAluOp),
                                .eAluSel(eAluSel),
                                .eDataSource1(eDataSource1),
                                .eDataSource2(eDataSource2),
                                .eRegTarget(eRegTarget),
                                .eRegWriteEnable(eRegWriteEnable),
                                .eOffset(eOffset));

    //HiLo -> Execute
    wire [`WIDTH - 1:0] hiData;
    wire [`WIDTH - 1:0] loData;
    //MWB -> Execute, needed for data forwarding
    wire wHiDataEnable;
    wire [`WIDTH - 1:0] wHiData;
    wire wLoDataEnable;
    wire [`WIDTH - 1:0] wLoData;
    //Memory -> Execute, needed for data forwarding
    wire mHiDataEnable;
    wire [`WIDTH - 1:0] mHiData;
    wire mLoDataEnable;
    wire [`WIDTH - 1:0] mLoData;

    //Execute -> EM
    wire eWriteHiEnable;
    wire [`WIDTH - 1:0] eWriteHiData;
    wire eWriteLoEnable;
    wire [`WIDTH - 1:0] eWriteLoData; 
    wire eWriteMemEnable;
    wire [`WIDTH - 1:0] eWriteMemAddr;
    wire [`ALU_OP_WIDTH - 1:0] eeAluOp;

    //Division <-> Execute
    wire [`WIDTH - 1:0] divData1;
    wire [`WIDTH - 1:0] divData2;
    wire divStart;
    wire [`WIDTH - 1:0] resultDiv;
    wire [`WIDTH - 1:0] resultRem;
    wire resultReady;
    wire [1:0] divStatus;

    Division division(.clk(clk),
                      .rst(rst),
                      .rawData1(divData1),
                      .rawData2(divData2),
                      .start(divStart),
                      .resultDiv(resultDiv),
                      .resultRem(resultRem),
                      .resultReady(resultReady),
                      .status(divStatus)
    );    


    Execute execute(.rst(rst),
                    .aluOp(eAluOp),
                    .aluSel(eAluSel),
                    .dataSource1(eDataSource1),
                    .dataSource2(eDataSource2),
                    .regTarget(eRegTarget),
                    .regWriteEnable(eRegWriteEnable),
                    .hiData(hiData),
                    .loData(loData),
                    .wHiDataEnable(wHiDataEnable),
                    .wHiData(wHiData),
                    .wLoDataEnable(wLoDataEnable),
                    .wLoData(wLoData),
                    .mHiDataEnable(mHiDataEnable),
                    .mHiData(mHiData),
                    .mLoDataEnable(mLoDataEnable),
                    .mLoData(mLoData),
                    .offset(eOffset),
                    .divData1(divData1),
                    .divData2(divData2),
                    .divStart(divStart),
                    .resultDiv(resultDiv),
                    .resultRem(resultRem),
                    .resultReady(resultReady),
                    .divStatus(divStatus),
                    .writeData(eWriteData),
                    .writeEnable(eWriteEnable),
                    .writeAddr(eWriteAddr),
                    .writeHiEnable(eWriteHiEnable),
                    .writeHiData(eWriteHiData),
                    .writeLoEnable(eWriteLoEnable),
                    .writeLoData(eWriteLoData),
                    .writeMemAddr(eWriteMemAddr),
                    .writeMemEnable(eWriteMemEnable),
                    .eAluOp(eeAluOp),
                    .executeRequest(executeRequest));

    //EM -> Memory
    wire[`WIDTH - 1:0] mWriteData;
    wire mWriteEnable;
    wire[`REG_WIDTH - 1:0] mWriteAddr;
    wire mWriteHiEnable;                                        //this four wires are not forwarding source
    wire [`WIDTH - 1:0] mWriteHiData;
    wire mWriteLoEnable;
    wire [`WIDTH - 1:0] mWriteLoData;
    wire mWriteMemEnable;
    wire [`WIDTH - 1:0] mWriteMemAddr;
    wire [`ALU_OP_WIDTH - 1:0] mAluOp;

    ExecuteMemory excuteMemory(.clk(clk),
                               .rst(rst),
                               .stall(stall[3]),
                               .eWriteData(eWriteData),
                               .eWriteEnable(eWriteEnable),
                               .eWriteAddr(eWriteAddr),
                               .eWriteHiEnable(eWriteHiEnable),
                               .eWriteHiData(eWriteHiData),
                               .eWriteLoEnable(eWriteLoEnable),
                               .eWriteLoData(eWriteLoData),
                               .eWriteMemAddr(eWriteMemAddr),
                               .eWriteMemEnable(eWriteMemEnable),
                               .eAluOp(eeAluOp),
                               .mWriteData(mWriteData),
                               .mWriteEnable(mWriteEnable),
                               .mWriteAddr(mWriteAddr),
                               .mWriteLoEnable(mWriteLoEnable),
                               .mWriteLoData(mWriteLoData),
                               .mWriteHiEnable(mWriteHiEnable),
                               .mWriteHiData(mWriteHiData),
                               .mWriteMemAddr(mWriteMemAddr),
                               .mWriteMemEnable(mWriteMemEnable),
                               .mAluOp(mAluOp));
wire clred;

    Memory memory(.rst(rst),
                  .aluOp(mAluOp),
                  .mWriteData(mWriteData),
                  .mWriteAddr(mWriteAddr),
                  .mWriteEnable(mWriteEnable),
                  .mWriteLoEnable(mWriteLoEnable),              //input 4 wires of lo/hi are not forwarding sources
                  .mWriteLoData(mWriteLoData),
                  .mWriteHiEnable(mWriteHiEnable),
                  .mWriteHiData(mWriteHiData),
                  .mWriteMemEnable(mWriteMemEnable),
                  .mWriteMemAddr(mWriteMemAddr),
                  .readMemData(readMemData),
                  .getData(getData),
                  .writeData(mmWriteData),
                  .writeEnable(mmWriteEnable),
                  .writeAddr(mmWriteAddr),  
                  .writeHiData(mHiData),                        //output 4 wires of lo/hi are forwarding sources
                  .writeHiEnable(mHiDataEnable),
                  .writeLoData(mLoData),
                  .writeLoEnable(mLoDataEnable),
                  .writeMemAddr(writeMemAddr),
                  .writeMemEnable(writeMemEnable),
                  .readMemAddr(readMemAddr),
                  .readMemType(readMemType),
                  .writeMemType(writeMemType),
                  .stdOutEnable(stdOutEnable),
                  .stdOutData(stdOutData),
                  .clr(clr),
                  .getType(getType));  
    assign writeMemData = mmWriteData;     

    MemoryWriteback memoryWriteback(.clk(clk),                  
                                    .rst(rst),
                                    .stall(stall[4]),
                                    .mWriteData(mmWriteData),
                                    .mWriteAddr(mmWriteAddr),
                                    .mWriteEnable(mmWriteEnable),
                                    .mWriteLoEnable(mLoDataEnable), //input and output 8 wires of hi/lo are all forwarding sources
                                    .mWriteLoData(mLoData),
                                    .mWriteHiEnable(mHiDataEnable),
                                    .mWriteHiData(mHiData),
                                    .wWriteData(wWriteData),
                                    .wWriteEnable(wWriteEnable),
                                    .wWriteAddr(wWriteAddr),
                                    .wWriteHiEnable(wHiDataEnable),
                                    .wWriteHiData(wHiData),
                                    .wWriteLoEnable(wLoDataEnable),
                                    .wWriteLoData(wLoData));

    HiLo hilo(.rst(rst),
              .clk(clk),
              .writeHiEnable(wHiDataEnable),
              .writeHiData(wHiData),
              .writeLoEnable(wLoDataEnable),
              .writeLoData(wLoData),
              .hiData(hiData),
              .loData(loData));
    /*
    //WB -> HiLo
    wire writeHiEnable;
    wire writeLoEnable;
    wire [`WIDTH - 1:0] writeHiData;
    wire [`WIDTH - 1:0] writeLoData;
    No boday knows why they are here
    */
endmodule
