`timescale 1ns / 1ps

module Execute(
    input rst,
    input[`ALU_OP_WIDTH - 1:0] aluOp,                       //to decide the type of operation
    input[`ALU_SEL_WIDTH - 1:0] aluSel,
    input[`WIDTH - 1:0] dataSource1,                        //number to be computed
    input[`WIDTH - 1:0] dataSource2,
    input[`REG_WIDTH - 1:0] regTarget,                      //whether to write register in writeback and where the data to be written  
    input regWriteEnable,

    //Data forwarding for special register hi and lo
    //HiLo -> Execute
    input [`WIDTH - 1:0] hiData,
    input [`WIDTH - 1:0] loData,
    //MWB -> Execute, needed for data forwarding
    input wHiDataEnable,
    input [`WIDTH - 1:0] wHiData,
    input wLoDataEnable,
    input [`WIDTH - 1:0] wLoData,
    //Memory -> Execute, needed for data forwarding
    input mHiDataEnable,
    input [`WIDTH - 1:0] mHiData,
    input mLoDataEnable,
    input [`WIDTH - 1:0] mLoData,

    input [`WIDTH - 1:0] offset,

    //With Division
    input [1:0] divStatus,
    input [`WIDTH - 1:0] resultDiv,
    input [`WIDTH - 1:0] resultRem,
    input resultReady,
    output reg [`WIDTH - 1:0] divData1,
    output reg [`WIDTH - 1:0] divData2,
    output reg divStart,


    output reg[`ALU_OP_WIDTH - 1:0] eAluOp,
    output reg[`WIDTH - 1:0] writeData,                       //whether to write register, also where and what to be written
    output reg writeEnable,
    output reg[`REG_WIDTH - 1:0] writeAddr,
    output reg[`WIDTH - 1:0] writeHiData,                     //whether to write hi and lo register and the data to be written
    output reg writeHiEnable,
    output reg[`WIDTH - 1:0] writeLoData,
    output reg writeLoEnable,
    output reg writeMemEnable,                                //whether and where to write memory and 
    output reg[`WIDTH - 1:0] writeMemAddr,
    output reg executeRequest                                 //stop due to division module
    );
    

    always @(*) begin
        if (rst) begin
            writeData = `EMPTY;
            writeEnable = 0;
            writeAddr = 0;
            writeHiData = `EMPTY;
            writeLoData = `EMPTY;
            writeHiEnable = 0;
            writeLoEnable = 0;
            writeMemEnable = 0;
            writeMemAddr = `EMPTY;
            eAluOp = 0;
            divStart = 0;
            executeRequest = 0;
            divData1 = `EMPTY;
            divData2 = `EMPTY;
        end
        //you have to set
        //1. the result number: writeData
        //2. whether to update register in writeback: writeEnable
        //3. whether to update lo and hi
        //4. if updating, which register will be updated: writeAddr
        //5. whether and where to update memory
        //6. whether to start division: divStart
        else begin
            eAluOp = aluOp;
            //wait for div processed
            if (divStatus != `DIV_FREE && !resultReady) begin
                    writeData = `EMPTY;
                    writeEnable = 0;
                    writeAddr = 0;
                    writeHiEnable = 0;
                    writeLoEnable = 0;   
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 1;
            end
            //div finished
            else if (resultReady) begin
                    writeData = `EMPTY;
                    writeEnable = 0;
                    writeAddr = 0;
                    writeHiEnable = 1;
                    writeLoEnable = 1;  
                    writeHiData = resultRem;
                    writeLoData = resultDiv; 
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
            end
            else begin
            case (aluOp) 
                `OP_ORI: begin
                    writeData = dataSource1 | dataSource2;
                    writeEnable = 1;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_ANDI: begin
                    writeData = dataSource1 & dataSource2;
                    writeEnable = 1;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_XORI: begin
                    writeData = dataSource1 ^ dataSource2;
                    writeEnable = 1;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_ADDI: begin
                    //signed add
                    writeData = dataSource1 + dataSource2;
                    writeEnable = 1;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_MUL: begin
                    writeData = dataSource1 * dataSource2;
                    writeEnable = 1;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0; 
                    writeMemEnable = 0;   
                    divStart = 0; 
                    executeRequest = 0;  
                end
                `OP_JAL: begin
                    //address of next ins is store in dataSource2
                    //dataSource1 is not used here
                    writeData = dataSource2;
                    writeEnable = 1;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_SB: begin
                    //write dataSource2 into mem[dataSource1 + offset]
                    writeEnable = 0;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 1;
                    writeData = dataSource2;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_SH: begin
                    //write dataSource2 into mem[dataSource1 + offset]
                    writeEnable = 0;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 1;
                    writeData = dataSource2;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_SW: begin
                    //write dataSource2 into mem[dataSource1 + offset]
                    writeEnable = 0;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 1;
                    writeData = dataSource2;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end      
                `OP_GET: begin
                    //get
                    writeEnable = 1;
                    writeData = `EMPTY;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    writeMemAddr = dataSource1;
                    divStart = 0;
                    executeRequest = 0;
                end       
                `OP_LW: begin
                    //load regTarget from mem[dataSource1 + offset]
                    writeEnable = 1;
                    writeData = `EMPTY;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end       
                `OP_LH: begin
                    //load regTarget from mem[dataSource1 + offset]
                    writeEnable = 1;
                    writeData = `EMPTY;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_LHU: begin
                    //load regTarget from mem[dataSource1 + offset]
                    writeEnable = 1;
                    writeData = `EMPTY;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_LB: begin
                    //load regTarget from mem[dataSource1 + offset]
                    writeEnable = 1;
                    writeData = `EMPTY;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end
                `OP_LBU: begin
                    //load regTarget from mem[dataSource1 + offset]
                    writeEnable = 1;
                    writeData = `EMPTY;
                    writeAddr = regTarget;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    writeMemAddr = dataSource1 + offset;
                    divStart = 0;
                    executeRequest = 0;
                end         
                `OP_OUT: begin
                    writeEnable = 0;
                    writeData = dataSource1;
                    writeHiEnable = 0;
                    writeLoEnable = 0;
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
                end       
                `OP_CLR: begin
                    writeData = `EMPTY;
                    writeEnable = 0;
                    writeAddr = 0;
                    writeHiEnable = 0;
                    writeLoEnable = 0;  
                    writeMemEnable = 0;       
                    divStart = 0;      
                    executeRequest = 0;  
                end  
                //OP_NON: need to identify the operation specifically by aluSel
                `OP_NON: begin
                    case (aluSel)
                    `SEL_OR: begin
                        writeData = dataSource1 | dataSource2;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0;  
                        writeMemEnable = 0;           
                        divStart = 0; 
                        executeRequest = 0;     
                    end
                    `SEL_AND: begin
                        writeData = dataSource1 & dataSource2;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0; 
                        writeMemEnable = 0;     
                        divStart = 0;      
                        executeRequest = 0;           
                    end
                    `SEL_XOR: begin
                        writeData = dataSource1 ^ dataSource2;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0;    
                        writeMemEnable = 0;   
                        divStart = 0;   
                        executeRequest = 0;             
                    end
                    `SEL_ADD: begin
                        //signed add
                        writeData = dataSource1 + dataSource2;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0; 
                        writeMemEnable = 0;   
                        divStart = 0;   
                        executeRequest = 0;
                            
                    end
                    `SEL_SUB: begin
                        //signed sub
                        writeData = dataSource1 - dataSource2;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0; 
                        writeMemEnable = 0;    
                        divStart = 0;   
                        executeRequest = 0;          
                    end
                    `SEL_DIV: begin
                        writeData = `EMPTY;
                        writeEnable = 0;
                        writeAddr = 0;
                        writeHiEnable = 0;
                        writeLoEnable = 0;  
                        writeMemEnable = 0;   
                        divData1 = dataSource1;
                        divData2 = dataSource2;
                        divStart = 1;      
                        executeRequest = 1;  
                            
                    end
                    `SEL_SLT: begin
                        writeData = (dataSource1 < dataSource2) ? 32'b1 : 32'b0;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0; 
                        writeMemEnable = 0;      
                        divStart = 0;       
                        executeRequest = 0;    
                    end
                    `SEL_NOT: begin
                        writeData = ~dataSource1;
                        writeEnable = 1;
                        writeAddr = regTarget;
                         writeHiEnable = 0;
                        writeLoEnable = 0;    
                        writeMemEnable = 0; 
                        divStart = 0;    
                        executeRequest = 0;             
                    end
                    `SEL_MFHI: begin
                        //choose forwarding source of hi
                        if (mHiDataEnable)
                            writeData = mHiData;
                        else if (wHiDataEnable)
                            writeData = wHiData;
                        else writeData = hiData;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0;
                        writeMemEnable = 0;
                        divStart = 0;
                        executeRequest = 0;
                    end
                    `SEL_MFLO: begin
                        //choose forwarding source of lo
                        if (mLoDataEnable)
                            writeData = mLoData;
                        else if (wLoDataEnable)
                            writeData = wLoData;
                        else writeData = loData;
                        writeEnable = 1;
                        writeAddr = regTarget;
                        writeHiEnable = 0;
                        writeLoEnable = 0;
                        writeMemEnable = 0;
                        divStart = 0;
                        executeRequest = 0;
                    end
                    `SEL_MTHI: begin
                        //hi and lo are not general registers, so writeEnable = 0
                        writeEnable = 0;
                        writeHiEnable = 1;
                        writeHiData = dataSource1;
                        writeLoEnable = 0;
                        writeMemEnable = 0;
                        divStart = 0;
                        executeRequest = 0;
                    end
                    `SEL_MTLO: begin
                        writeEnable = 0;
                        writeLoEnable = 1;
                        writeLoData = dataSource1;
                        writeHiEnable = 0;
                        writeMemEnable = 0;
                        divStart = 0;
                        executeRequest = 0;
                    end
                    `SEL_MOVZ: begin
                        writeEnable = (dataSource1 == 0);
                        writeData = dataSource2;
                        writeAddr = regTarget;
                        writeLoEnable = 0;
                        writeHiEnable = 0;
                        writeMemEnable = 0;
                        divStart = 0;
                        executeRequest = 0;
                        
                    end
                    `SEL_JR: begin
                        writeData = `EMPTY;
                        writeEnable = 0;
                        writeAddr = 0;
                        writeHiEnable = 0;
                        writeLoEnable = 0;  
                        writeMemEnable = 0;
                        divStart = 0;
                        executeRequest = 0;
                    end
                    default:begin
                        writeData = `EMPTY;
                        writeEnable = 0;
                        writeAddr = 0;
                        writeHiEnable = 0;
                        writeLoEnable = 0;  
                        writeMemEnable = 0;       
                        divStart = 0;      
                        executeRequest = 0;       
                    end

                    endcase
                end               
                default: begin
                    writeData = `EMPTY;
                    writeEnable = 0;
                    writeAddr = 0;
                    writeHiEnable = 0;
                    writeLoEnable = 0;   
                    writeMemEnable = 0;
                    divStart = 0;
                    executeRequest = 0;
                end
            endcase
            end
        end
    end
    
endmodule
