`timescale 1ns / 1ps

//this module is a part of the vending mathinc
//it's used to display 4-digit numbers in LEDs
//by showing each number respectively in series repeatedly

module TimeDisplay(
    input wire clk,
    input wire rst_n,
    //4 numbers in a row
    input wire[3:0] n1,
    input wire[3:0] n2,
    input wire[3:0] n3,
    input wire[3:0] n4,
    //seg_an decide which number to show
    output reg[3:0] seg_an,
    //seg_seg returns the 7-segment code of that number
    output reg[7:0] seg_seg
    );
    
    reg[1:0] clk_count;
    //number stores the current number to show
    reg[3:0] number;
    wire digit_point;
    assign digit_point = 1;
    //sequential logic, endlessly revolve around num1 ~ num4
    always @(posedge clk) begin
        if (!rst_n) begin
            clk_count = 0;
            number = 0;
            seg_an = 4'b1111;
        end
        else begin
            clk_count = clk_count + 1;
            if (clk_count == 2'b00) begin
                seg_an = 4'b1110;
                number = n4;
            end
            else if (clk_count == 2'b01) begin
                seg_an = 4'b1101;
                number = n3;
            end
            else if (clk_count == 2'b10) begin
                seg_an = 4'b1011;
                number = n2;
            end
            else if (clk_count == 2'b11) begin
                seg_an = 4'b0111;
                number = n1;
            end
            else begin
                seg_an = 4'b1111;
                number = 4'd0;
            end
        
        end
    end
    
    //combinational logic
    //encode the 7-segment code of each number
    always @(*) begin
        if (!rst_n) 
            seg_seg = 8'b11111111;
        else if (number == 4'd0) 
            seg_seg = { digit_point, 7'b1000000 };
        else if (number == 4'd1)
            seg_seg = { digit_point, 7'b1111001 };
        else if (number == 4'd2)
            seg_seg = { digit_point, 7'b0100100 };
        else if (number == 4'd3)
            seg_seg = { digit_point, 7'b0110000 };
        else if (number == 4'd4)
            seg_seg = { digit_point, 7'b0011001 };
        else if (number == 4'd5)
            seg_seg = { digit_point, 7'b0010010 };
        else if (number == 4'd6)
            seg_seg = { digit_point, 7'b0000010 };
        else if (number == 4'd7)
            seg_seg = { digit_point, 7'b1111000 };
        else if (number == 4'd8)    
            seg_seg = { digit_point, 7'b0000000 };
        else
            seg_seg = { digit_point, 7'b0010000 };     
    end
    
    
endmodule
