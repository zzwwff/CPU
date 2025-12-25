`timescale 1ns / 1ps
module Decode(
    input rst,
    input [`WIDTH - 1:0] pc,
    input [`WIDTH - 1:0] inst,
    input [`WIDTH - 1:0] regData1,                  //read register from regAddr1
    input [`WIDTH - 1:0] regData2,                  //read register from regAddr2

    //forwarding 3 * 2 = 6 inputs
    //forwarding source 1, after executing
    input [`WIDTH - 1:0] eWriteData,
    input eWriteEnable,
    input [`REG_WIDTH - 1:0] eWriteAddr,
    //forwarding source 2, after memory
    input [`WIDTH - 1:0] mWriteData,
    input mWriteEnable,
    input [`REG_WIDTH - 1:0] mWriteAddr,

    //aluOp from Execute, for solving load-conflict
    input [`ALU_OP_WIDTH - 1:0] eAluOp,
    input [`REG_WIDTH - 1:0] eRegTarget,

    output reg[`ALU_OP_WIDTH - 1:0] aluOp,          //type of arithmatic operation  
    output reg[`ALU_SEL_WIDTH - 1:0] aluSel,        //type of arithmatic operation
    output wire[`WIDTH - 1:0] dataSource1,          //data1 to be executed
    output wire[`WIDTH - 1:0] dataSource2,          //data2 to be executed
    output reg[`REG_WIDTH - 1:0] regTarget,         //register that will be written in
    output reg regWriteEnable,                      //whether regTarget will be wrritten
    output reg[`REG_WIDTH - 1:0] regAddr1,          //get regData1 from regAddr1
    output reg regEnable1,
    output reg[`REG_WIDTH - 1:0] regAddr2,          //get regData1 from regAddr1
    output reg regEnable2,
    output reg branchEnable,                        //whether and where to jump
    output reg [`WIDTH - 1:0] branchAddr,
    output reg hlt,                                  //whether encounters hlt
    output wire [`WIDTH - 1:0] offset,
    output reg loadRequest
    );

    //solving load conlict, if eAluOp is kind of a load and $rs or $rt is just the target of load, we should stall the pipeline
    reg rsLoaded, rtLoaded; //whether $rs or $rt is the target reg of load in Execute
    always @(*) begin
        if (rst) begin
            rsLoaded = 0;
            rtLoaded = 0;
        end
        else begin
            if (eAluOp == `OP_LW || eAluOp == `OP_GET) begin
                if (eRegTarget == inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1])
                    rsLoaded = 1;
                else rsLoaded = 0;
                if (eRegTarget == inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1])
                    rtLoaded = 1;
                else rtLoaded = 0;
            end
            else begin
                rsLoaded = 0;
                rtLoaded = 0;
            end
        end
    end
    
    //signed or unsigned padding
    reg[`PAD_WIDTH - 1:0] padType1;
    reg[`WIDTH - 1:0] padIn1;
    reg[`PAD_WIDTH - 1:0] padType2;
    reg[`WIDTH - 1:0] padIn2;
    wire[`WIDTH - 1:0] padOut1;
    wire[`WIDTH - 1:0] padOut2;
    Padding pad1(.rst(rst),
                 .din(padIn1),
                 .dout(padOut1),
                 .type(padType1));
    Padding pad2(.rst(rst),
                 .din(padIn2),
                 .dout(padOut2),
                 .type(padType2)); 
    //offset padding
    //padOffset can process offset of memory-related operation or beq, it is 2 in 1
    //note that dout of padOffset is out port offset, because it doesn't need forwarding
    reg[`PAD_WIDTH - 1:0] padTypeOffset;
    reg[`WIDTH - 1:0] padInOffset;
    Padding padOffset(.rst(rst),
                      .din(padInOffset),
                      .dout(offset),
                      .type(padTypeOffset));
    
    //data forwading, dataSource may come from padOut or forwarding source
    Forwarding forward1(.rst(rst),
                        .regAddr(regAddr1),
                        .regData(padOut1),
                        .regEnable(regEnable1),
                        .eWriteData(eWriteData),
                        .eWriteAddr(eWriteAddr),
                        .eWriteEnable(eWriteEnable),
                        .mWriteData(mWriteData),
                        .mWriteAddr(mWriteAddr),
                        .mWriteEnable(mWriteEnable),  
                        .data(dataSource1));
    Forwarding forward2(.rst(rst),
                        .regAddr(regAddr2),
                        .regData(padOut2),
                        .regEnable(regEnable2),
                        .eWriteData(eWriteData),
                        .eWriteAddr(eWriteAddr),
                        .eWriteEnable(eWriteEnable),
                        .mWriteData(mWriteData),
                        .mWriteAddr(mWriteAddr),
                        .mWriteEnable(mWriteEnable),  
                        .data(dataSource2));   
    //data: immediate/regData --pading-->  padOut --forwarding--> dataSource                  
    //you have to decided padIn and other related parameters and data will be directly channeled into dataSource


    //all combinational logic
    always @(*) begin
        if (rst) begin
            regAddr1 = 0;
            regAddr2 = 0;
            regEnable1 = 0;
            regEnable2 = 0;
            aluOp = 0;
            aluSel = 0;
            regWriteEnable = 0;
            regTarget = 0;
            branchEnable = 0;
            branchAddr = `EMPTY;
            hlt = 0;
            padType1 = 0;
            padIn1 = `EMPTY;
            padType2 = 0;
            padIn2 = `EMPTY;
            padTypeOffset = 0;
            padInOffset = `EMPTY;
            loadRequest = 0; 
        end
        else begin
            //hlt is set if only hlt met
            //aluOp and aluSel are auto selected even though aluSel may be invalid
            //so you have to make sure that you check aluOp first then check aluSel
            aluOp[`ALU_OP_WIDTH - 1:0] = inst[`ALU_OP_BEGIN:`ALU_OP_BEGIN - `ALU_OP_WIDTH + 1];
            aluSel[`ALU_SEL_WIDTH - 1:0] = inst[`ALU_SEL_BEGIN:`ALU_SEL_BEGIN - `ALU_SEL_WIDTH + 1];
            //in all cases, you have to clearly set:
            //1. whether to read data from register file -- set 2 * (regAddr and regEnable)
            //2. If you read data from register, according to register from which you read -- set loadRequest 
            //3. If you fetch data from immediate or register -- set 2 * (padIn and padType)
            //4. To decide whether to write back register file -- set regTarget and regWriteEnable
            //5. To decide whether and where to jump    -- set branchEnable and branchAddr
            case (aluOp)
                `OP_HLT: begin
                    regEnable1 = 0;
                    regEnable2 = 0;
                    regWriteEnable = 0;
                    branchEnable = 0;
                    hlt = 1;
                    loadRequest = 0;
                end
                `OP_ORI: begin
                    //ori $rt $rs imm
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regEnable2 = 0;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_U16;
                    padIn2[`IMMEDIATE_WIDTH - 1:0] = inst[`IMMEDIATE_BEGIN: `IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regWriteEnable = 1;
                    branchEnable = 0;
                    loadRequest = rsLoaded;
                    hlt = 0;
                end
                `OP_ANDI: begin
                    //andi $rt $rs imm
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regEnable2 = 0;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_U16;
                    padIn2[`IMMEDIATE_WIDTH - 1:0] = inst[`IMMEDIATE_BEGIN: `IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regWriteEnable = 1;
                    branchEnable = 0;
                    loadRequest = rsLoaded;
                    hlt = 0;
                end
                `OP_XORI: begin
                    //xori $rt $rs imm
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regEnable2 = 0;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_U16;
                    padIn2[`IMMEDIATE_WIDTH - 1:0] = inst[`IMMEDIATE_BEGIN: `IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regWriteEnable = 1;
                    branchEnable = 0;
                    loadRequest = rsLoaded;
                    hlt = 0;
                end
                `OP_ADDI: begin
                    //addi $rt $rs imm
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regEnable2 = 0;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_S16;
                    padIn2[`IMMEDIATE_WIDTH - 1:0] = inst[`IMMEDIATE_BEGIN: `IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regWriteEnable = 1;
                    branchEnable = 0;
                    loadRequest = rsLoaded;
                    hlt = 0;
                end
                `OP_MUL: begin
                    //mul $rd $rs $rt
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regEnable2 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_S32;
                    padIn2 = regData2;
                    regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                    regWriteEnable = 1;
                    branchEnable = 0;
                    loadRequest = rsLoaded || rtLoaded; 
                    hlt = 0;
                end
                `OP_JAL: begin
                    //jal imm
                    //pad1 processes ins, and send it in branchAddr
                    //pad2 prpcesses current ins + 4, and sent it into dataSource 2 and will be store in writeback phrases
                    regEnable1 = 0;
                    regEnable2 = 0;
                    padType1 = `PAD_INS;
                    padIn1 = inst[`INS_BEGIN:`INS_BEGIN - `INS_WIDTH + 1];
                    //store the next instruction in ret
                    padType2 = `PAD_S32;
                    padIn2 = pc + 4;
                    regTarget = 5'b11111;           //$ret will be written
                    regWriteEnable = 1;
                    branchEnable = 1;
                    branchAddr = dataSource1;     //dataSource1 is padded ins
                    hlt = 0;
                end
                `OP_BEQ: begin
                    //beq $rs $rt offset
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;  
                        padIn1 = regData1;
                        padType1 = `PAD_S32;
                        padIn2 = regData2;
                        padType2 = `PAD_S32;
                        padTypeOffset = `PAD_OFFSET; 
                        padInOffset = inst[`IMMEDIATE_BEGIN: `IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                        regWriteEnable = 0;
                        if (dataSource1 == dataSource2) begin
                            branchAddr = offset + `BYTE_WIDTH + pc; //offset is the output of padOffset 
                                                                    //it is borrowed here to process destination
                            branchEnable = 1;
                        end       
                        else begin
                            branchEnable = 0;
                        end       
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                end
                `OP_SW: begin
                    //sw $rt (offset)$rs
                    //mem[offset + $rs] = $rt
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regEnable2 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_S32;
                    padIn2 = regData2;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 0;
                    branchEnable = 0;
                    loadRequest = rsLoaded || rtLoaded; 
                    hlt = 0;
                end     
                `OP_SH: begin
                    //sh $rt (offset)$rs
                    //mem[offset + $rs] = $rt
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regEnable2 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_S32;
                    padIn2 = regData2;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 0;
                    branchEnable = 0;
                    loadRequest = rsLoaded || rtLoaded; 
                    hlt = 0;
                end    
                `OP_SB: begin
                    //sb $rt (offset)$rs
                    //mem[offset + $rs] = $rt
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regEnable2 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padType2 = `PAD_S32;
                    padIn2 = regData2;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 0;
                    branchEnable = 0;
                    loadRequest = rsLoaded || rtLoaded; 
                    hlt = 0;
                end    
                `OP_GET: begin
                    //get $rt $rs
                    //$rt = get[$rs]
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    regEnable2 = 0;
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    regWriteEnable = 1;
                    branchEnable = 0;
                    loadRequest = rsLoaded; 
                    hlt = 0;
                end          
                `OP_LW: begin
                    //lw $rt (offset)$rs
                    //$rt = mem[offset + $rs]
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 1;
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    branchEnable = 0;
                    loadRequest = rsLoaded; 
                    hlt = 0;
                end   
                `OP_LH: begin
                    //lh $rt (offset)$rs
                    //$rt = mem[offset + $rs]
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    padType1 = `PAD_S32;//watch out that padType here is irrelevent to the type of this instruction
                                        //pad strategy is set in Memory status
                    padIn1 = regData1;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 1;
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    branchEnable = 0;
                    loadRequest = rsLoaded; 
                    hlt = 0;
                end 
                `OP_LHU: begin
                    //lhu $rt (offset)$rs
                    //$rt = mem[offset + $rs]
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 1;
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    branchEnable = 0;
                    loadRequest = rsLoaded; 
                    hlt = 0;
                end 
                `OP_LB: begin
                    //lb $rt (offset)$rs
                    //$rt = mem[offset + $rs]
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 1;
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    branchEnable = 0;
                    loadRequest = rsLoaded; 
                    hlt = 0;
                end 
                `OP_LBU: begin
                    //lbu $rt (offset)$rs
                    //$rt = mem[offset + $rs]
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    padType1 = `PAD_S32;
                    padIn1 = regData1;
                    padTypeOffset = `PAD_S16;
                    padInOffset = inst[`IMMEDIATE_BEGIN:`IMMEDIATE_BEGIN - `IMMEDIATE_WIDTH + 1];
                    regWriteEnable = 1;
                    regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                    branchEnable = 0;
                    loadRequest = rsLoaded; 
                    hlt = 0;
                end           
                `OP_OUT: begin
                    //output $rs
                    regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                    regEnable1 = 1;
                    padType1 = `PAD_U8;
                    padIn1 = regData1;
                    regWriteEnable = 0;
                    branchEnable = 0;   
                    loadRequest = rsLoaded;
                    hlt = 0;
                end  
                `OP_CLR: begin
                    regEnable1 = 0;
                    regEnable2 = 0;
                    regWriteEnable = 0;
                    branchEnable = 0;
                    loadRequest = 0;
                    hlt = 0;
                end                                             
                `OP_NON: begin
                    case(aluSel) 
                    `SEL_AND: begin
                        //and $rd $rs $rt
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                    end
                    `SEL_OR: begin
                        //or $rd $rs $rt
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                    end
                    `SEL_XOR: begin
                        //xor $rd $rs $rt
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                    end
                    `SEL_NOT: begin
                        //not $rt $rs
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regEnable2 = 0;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = `EMPTY;
                        regTarget = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded; 
                        hlt = 0;
                    end
                    `SEL_ADD: begin
                        //add $rd $rs $rt
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                    end
                    `SEL_SUB: begin
                        //sub $rd $rs $rt
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                    end
                    `SEL_DIV: begin
                        //div $rs $rt
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regWriteEnable = 0;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                    end            
                    `SEL_SLT: begin
                        //slt $rd $rs $rt
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded; 
                        hlt = 0;
                    end                         
                    `SEL_MFHI: begin
                        //mfhi $rd
                        regEnable1 = 0;
                        regEnable2 = 0;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = 0;
                        hlt = 0;
                    end
                    `SEL_MFLO: begin
                        //mflo $rd
                        regEnable1 = 0;
                        regEnable2 = 0;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = 0;
                        hlt = 0;
                    end
                    `SEL_MTLO: begin
                        //mtlo $rs
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        regWriteEnable = 0;
                        branchEnable = 0;   
                        loadRequest = rsLoaded;
                        hlt = 0;
                    end
                    `SEL_MTHI: begin
                        //mthi $rs
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        regWriteEnable = 0;
                        branchEnable = 0;
                        loadRequest = rsLoaded;
                        hlt = 0;
                    end
                    `SEL_MOVZ: begin
                        //add $rd $rs $rt   if $rt==0 $rd <- $rs
                        regAddr1 = inst[`REG_RT_BEGIN:`REG_RT_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1;
                        regAddr2 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable2 = 1;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        padType2 = `PAD_S32;
                        padIn2 = regData2;
                        regTarget = inst[`REG_RD_BEGIN:`REG_RD_BEGIN - `REG_WIDTH + 1];
                        regWriteEnable = 1;
                        branchEnable = 0;
                        loadRequest = rsLoaded || rtLoaded;
                        hlt = 0;
                    end 
                    `SEL_JR: begin
                        //jr $rs
                        regAddr1 = inst[`REG_RS_BEGIN:`REG_RS_BEGIN - `REG_WIDTH + 1];
                        regEnable1 = 1; 
                        regEnable2 = 0;
                        padType1 = `PAD_S32;
                        padIn1 = regData1;
                        regWriteEnable = 0;
                        branchEnable = 1;
                        branchAddr = dataSource1;  
                        loadRequest = rsLoaded;
                        hlt = 0;
                    end
                    default: begin
                        regEnable1 = 0;
                        regEnable2 = 0;
                        regWriteEnable = 0;
                        branchEnable = 0;
                        loadRequest = 0;
                        hlt = 0;
                    end                                                                      
                    endcase
                end
                default: begin
                    regEnable1 = 0;
                    regEnable2 = 0;
                    regWriteEnable = 0;
                    branchEnable = 0;
                    loadRequest = 0;
                    hlt = 0;
                end
            endcase
        end
    end
    
endmodule
