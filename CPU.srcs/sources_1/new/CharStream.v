`timescale 1ns / 1ps

module CharStream(
    input clk,
    input rst,
    input [10:0]      eof,          //end of file
    input [7:0]       posthChar,    //the character at pos
    input[5:0]        col,
    input[4:0]        row,
    output reg [10:0] pos,   
    output reg[7:0]   char          //fetch char at chars[row][col]
    );
    
    parameter WIDTH = 64, HEIGHT = 20;
    
    reg[7:0]       chars[31:0][63:0];

    reg[10:0]      curEof;
    reg[5:0]       curCol;
    reg[4:0]       curRow;
    
    reg            lastEdit;
    
    always @(*) begin
        if (rst) begin
            char = 0;         
        end
        else if (row == curRow && col == curCol)
            char = 1;   
        else if (row > curRow || (row == curRow && col > curCol))
            char = 0;
        else char = chars[row][col];
    end
    
    //because read char takes 2 clk periods, so slow down the clk x2
    reg[23:0] clks;
    always @(posedge clk or posedge rst) begin
        if (rst) clks <= 0;
        else clks <= clks + 1;
    end
    
    always @(posedge clks[2] or posedge rst) begin
        if (rst) begin
            curEof <= 0;
            curCol <= 0;
            curRow <= 0;
            lastEdit <= 0;
            pos <= 0;
            if (clks[4:0] <= HEIGHT - 1 && clks[10:5] <= WIDTH - 1)
                chars[clks[4:0]][clks[10:5]] <= 0;
        end
        else begin
            if (lastEdit) begin
                chars[curRow][curCol] <= posthChar;
                //'\n' or touch the end of a row
                if (posthChar == 8'd13 || curCol == WIDTH - 1) begin
                    curRow <= curRow + 1;
                    curCol <= 0;
                end
                else begin
                    curRow <= curRow;
                    curCol <= curCol + 1;
                end
            end
            //eat a character
            if (curEof != eof) begin
                lastEdit <= 1;
                pos <= curEof;
                curEof <= curEof + 1;
            end
            //all characters eaten up
            else begin
                lastEdit <= 0;
                pos <= pos;
                curEof <= curEof;
            end
        end
    end
    
endmodule
