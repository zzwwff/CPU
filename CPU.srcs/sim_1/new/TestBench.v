`timescale 1ns / 1ps
/*
Pattern:
else if (pc == 32'd%addr00 ) 
    inst = 32'b%data31%data30%data29%data28%data27%data26%data25%data24_%data23%data22%data21%data20%data19%data18%data17%data16_%data15%data14%data13%data12%data11%data10%data09%data08_%data07%data06%data05%data04%data03%data02%data01%data00;


*/
module TestBench;

    reg rst;
    reg clk;
    wire hlt;
    
    wire cbutton;
    assign cbutton = 1;
    SOC soc(
          .CLK(clk),
          .rst(rst),
          .hlt(hlt),
          .read(0),
          .middleButton(1)
    );
    
    initial begin
        rst = 1;
        #35;
        rst = 0;
    end
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    /*
    integer i;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 64; i = i + 1)
                mem[i] = 0;
        end
        else begin
            if (writeMemEnable) begin
                { mem[writeMemAddr + 3][7:0], 
                  mem[writeMemAddr + 2][7:0], 
                  mem[writeMemAddr + 1][7:0], 
                  mem[writeMemAddr][7:0] } = writeMemData;
            end
        end
    end
    
    always @(*) begin
        if (rst) begin
            readMemData = 32'b0;
        end
        else readMemData = { mem[readMemAddr + 3][7:0], 
                  mem[readMemAddr + 2][7:0], 
                  mem[readMemAddr + 1][7:0], 
                  mem[readMemAddr][7:0] };
    end
    
    always @(*) begin
if (rst || hlt) begin
    inst = 32'b0;
end


////// COPY HERE!!!!!! ////
else if (pc == 32'd0 ) 
    inst = 32'b00001100_00000000_00000000_00000010;
else if (pc == 32'd4 ) 
    inst = 32'b00000100_00000000_00000000_00000000;
else if (pc == 32'd8 ) 
    inst = 32'b00100000_00100001_11111111_11111100;
else if (pc == 32'd12 ) 
    inst = 32'b00100000_00000011_00000000_00000011;
else if (pc == 32'd16 ) 
    inst = 32'b10101100_00100011_00000000_00000000;
else if (pc == 32'd20 ) 
    inst = 32'b00100000_00100001_11111111_11111100;
else if (pc == 32'd24 ) 
    inst = 32'b00100000_00000011_11111111_11110111;
else if (pc == 32'd28 ) 
    inst = 32'b00100000_00100001_00000000_00000100;
else if (pc == 32'd32 ) 
    inst = 32'b10001100_00100100_00000000_00000000;
else if (pc == 32'd36 ) 
    inst = 32'b00000000_01100100_00000000_00011010;
else if (pc == 32'd40 ) 
    inst = 32'b00000000_00000000_00011000_00010010;
else if (pc == 32'd44 ) 
    inst = 32'b10101100_01000011_00000000_00000000;
else if (pc == 32'd48 ) 
    inst = 32'b10001100_01000011_00000000_00000000;
else if (pc == 32'd52 ) 
    inst = 32'b00100000_00100001_00000000_00000100;
else if (pc == 32'd56 ) 
    inst = 32'b00000011_11100000_00000000_00001000;


///////////////////////////
        else inst = 32'b0;
    end
    */
endmodule
