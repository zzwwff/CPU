//MemoryTransmitter is used to refresh memory of CPU
//MmoeryTransmitter is enabled when ena = 1, it will receive data from USB serieal information channel
//rx and tx are signals used by USB channel
//ready means whether data transmission is over
//rxMemData, rxMemAddr, rxMemEnable shows how to refresh RAM

module MemoryTransmitter(
    input clk,
    input en,
    input rx,
    output tx,
    output ready,
    output [`WIDTH - 1:0] rxMemData,
    output [`WIDTH - 1:0] rxMemAddr,
    output rxMemEnable,
    output reg [7:0] debug
    );
        
    //temporary used
    //wire [`WIDTH - 1:0] rxMemData;
    //wire [`WIDTH - 1:0] rxMemAddr;
    //wire rxMemEnable;
   
    reg rxMemEnabled;
    always @(posedge clk or negedge en) begin
        if (~en)
            rxMemEnabled <= 0;
        else if (rxMemEnable)
            rxMemEnabled <= 1;
          
    end
    
    //assign debug[7] = en;
    //assign debug[6] = rxMemEnabled;
    //for debug only
    
    always @(posedge clk or negedge en) begin
        if (~en)
            debug <= 0;
        else if (en) begin
            if (rxMemEnable)
                debug <= debug + rxMemData * rxMemAddr;
            else debug <= debug;
        end
            
    end
    
    reg[23:0] clks;
    always @(posedge clk or negedge en) begin
        if (~en)            //not en means reset
            clks <= 0;
        else
            clks <= clks + 1;
    end
    
    wire rxDone;
    wire [7:0] rxChar;

    //An automation shows how to receive size and data specifically
    MemoryReceiverAutomation memoryReceiverAutomation(
        .en(en),
        .clk(clk),
        .rxDone(rxDone),
        .rxChar(rxChar),
        .ready(ready),
        .rxMemData(rxMemData),
        .rxMemAddr(rxMemAddr),
        .rxMemEnable(rxMemEnable)//,
        //.debug(debug[5:1])
    );
    
    USBReceiver usbReceiver(
        .clk(clk),
        .rst(~en),      //en == 0 means reset
        .rx(rx),
        .done(rxDone),
        .char(rxChar)
    );
 
endmodule