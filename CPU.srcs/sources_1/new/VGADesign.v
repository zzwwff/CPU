module VGADesign(
    input clk,
    input rst,
    input [7:0] char,                   //ASCII code of char to be displayed
    output h_sync,                      //VGA signal
    output v_sync,   
    output wire [3:0] rgb_r,
    output wire [3:0] rgb_b,
    output wire [3:0] rgb_g,
    output reg [4:0] charRow,               //position of character to be displayed
    output reg [5:0] charCol
    );
 
    parameter   h_a = 11'd96,
                h_b = 11'd48,
                h_c = 11'd640,
                h_d = 11'd16,
                h_all = 11'd800,
                v_a = 11'd2,
                v_b = 11'd33,
                v_c = 11'd480,
                v_d = 11'd10,
                v_all = 11'd525;
 
    reg [10:0] h_cnt, v_cnt;
    reg [4:0]  pixelRow, pixelCol;
 
    always @(posedge clk or posedge rst) begin
        if(rst) h_cnt <= 11'b0;
        else if(h_cnt == h_all - 11'b1) h_cnt <= 11'b0;
        else h_cnt <= h_cnt + 1'b1; 
    end
 
    always @(posedge clk or posedge rst) begin
        if(rst) v_cnt <= 11'b0;
        else if(v_cnt == v_all - 1'b1) v_cnt <= 11'b0;
        else if(h_cnt == h_all - 1'b1) v_cnt <= v_cnt + 1'b1; 
    end
 
    assign h_sync = (h_cnt >= h_a); 
    assign v_sync = (v_cnt >= v_a);
 
    parameter   width = 11'd640,
                height = 11'd480;
    wire en_picture;
    wire begin_picture;
    assign en_picture = (h_cnt >= h_a + h_b + (h_c - width) / 2 + 11'd1) && 
                        (h_cnt <= h_a + h_b + (h_c + width) / 2) &&
                        (v_cnt >= v_a + v_b + (v_c - height) / 2 + 11'd1) && 
                        (v_cnt <= v_a + v_b + (v_c + height) / 2);
    assign begin_picture = (h_cnt == h_a + h_b + (h_c - width) / 2 + 11'd1) && 
                           (v_cnt ==v_a + v_b + (v_c - height) / 2 + 11'd1);
    

    //set pixelRow/pixelCol/charCol/charRow
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pixelRow <= 9'b0;
            pixelCol <= 9'b0;
            charCol <= 0;
            charRow <= 0;
        end
        //beginning point of the screen
        else if(begin_picture) begin
            pixelRow <= 9'b0;
            pixelCol <= 9'b0;
            charCol <= 0;
            charRow <= 0;
        end
        //advance a stack
        else if(en_picture) begin
            //col++, if col == 9, display the char next to the current one
            if (pixelCol == 5'd9) begin
                pixelCol <= 0;
                //if charCol == 63, display the next pixel row
                ///leftmost and rightmost block will be omitted for better display effective
                if (charCol == 6'd63) begin
                    charCol <= 0;
                    //if pixelRow == 23, display the char in the next row
                    if (pixelRow == 5'd23) begin
                        pixelRow <= 0;
                        charRow <= charRow + 1;
                    end
                    else begin
                        pixelRow <= pixelRow + 1;
                        charRow <= charRow;
                    end
                end
                else begin
                    charCol <= charCol + 1;
                    pixelRow <= pixelRow;
                    charRow <= charRow;
                end
            end
            else begin
                pixelCol <= pixelCol + 1;
                charCol <= charCol;
                pixelRow <= pixelRow;
                charRow <= charRow;
            end
        end
        else begin
            pixelCol <= pixelCol;
            pixelRow <= pixelRow;
            charCol <= charCol;
            charRow <= charRow;
        end
        
    end 
    
    //in/out of FontRom
    wire[15:0] fontRgb;
    reg[14:0] fontAddr;
    
    reg[24:0] clks;
    always @(posedge clk or posedge rst) begin
        if (rst) clks <= 0;
        else clks <= clks + 1;
    end
    
    always @(*) begin
        if (char == 1 && clks[23]) begin
            fontAddr = pixelRow * 1280 + pixelCol + 0 * 10;
        end
        else 
        //position = (pixelRow, pixelCol + char * 10)
        //bmp width: 1280
            fontAddr = pixelRow * 1280 + pixelCol + char * 10;
    end
    
    FontRom fontrom(
        .clka(clk),
        .addra(fontAddr),
        .douta(fontRgb)
    );

    assign rgb_r = fontRgb[15:12];
    assign rgb_g = fontRgb[10:7];
    assign rgb_b = fontRgb[4:1];
endmodule