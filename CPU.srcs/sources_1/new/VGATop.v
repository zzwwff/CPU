module Console(
    input clk,
    input rst,
    input [7:0]  posthChar,
    input [10:0] eof,
    output [10:0] pos,
    output [3:0] rgb_g,
    output [3:0] rgb_r,
    output [3:0] rgb_b,
    output h_sync,
    output v_sync,
    output [7:0] debug
    );
     

    reg[23:0] clks;
    always @(posedge clk or posedge rst) begin
        if (rst)
            clks <= 0;
        else
            clks <= clks + 1;
    end
    
    wire[7:0] char;
    wire[4:0] charRow;
    wire[5:0] charCol;
    
    VGADesign design1(
        .clk(clk),
        .rst(rst),
        .char(char),
        .rgb_r(rgb_r),
        .rgb_g(rgb_g),
        .rgb_b(rgb_b),
        .h_sync(h_sync),
        .v_sync(v_sync),
        .charRow(charRow),
        .charCol(charCol)
    );
    
    
    assign debug = eof[7:0];
    
    CharStream stream(
        .clk(clk),
        .rst(rst),
        .eof(eof),
        .col(charCol),
        .row(charRow),
        .char(char),
        .posthChar(posthChar),
        .pos(pos)
    );
   

   
 
endmodule