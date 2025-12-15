`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/29 10:19:11
// Design Name: 
// Module Name: USBReceiver
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*
module USBReceiver(
    input           clk,
    input           rst,
    input           rx,
    output reg      done,
    output reg[7:0] char
    );
    
    reg[4:0] status, nextStatus;
    
    reg[15:0] baudClks;
    reg       baudClk;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            baudClk <= 0;
            baudClks <= 0;
        end
        else begin
            //25Mhz / 9600 = 2604
            if (baudClks == 2604) begin
                baudClks <= 0;
                baudClk <= ~baudClk;
            end
            else begin
                baudClks <= baudClks + 1;
                baudClk <= baudClk;
            end
        end
    end
    
    //Mealy autonomous machine
    always @(*) begin
        if (rst)
            nextStatus = 0;
        else if (status == 0 && !rx)
            nextStatus = 1;
        else if (status == 0)
            nextStatus = 0;
        else if (status != 5'd11)
            nextStatus = status + 1;
        else nextStatus = 0;
    end
    
    always @(posedge baudClk or posedge rst) begin
        if (rst) begin
            status <= 0;
        end
        else begin
            status <= nextStatus;
            if (status != 5'd11) 
                done <= 0;
            else done <= 1;
            if (5'd2 <= status && status <= 5'd9) begin
                char[7:0] <= { rx, char[7:1] };
            end
        end
    end
    
    
endmodule
*/

module	USBReceiver(
	input			clk,
	input			rst,
	input			rx,
	
	output	reg[7:0]	char,
	output	reg		done
);
parameter			BPS		=		9600;
parameter			FREQ	=		25000000;
localparam			BPS_CNT	=		FREQ / BPS;
 
wire				start_flag;		
 
reg					uart_rxd_d0;
reg					uart_rxd_d1;
reg					rx_flag;		
reg		[3:0]		rx_cnt;			
reg		[15:0]		bps_cnt;		
reg		[7:0]		tx_data;		
 
assign	start_flag	=	uart_rxd_d1	&	(~uart_rxd_d0);		
 
always@(posedge	clk	or	posedge	rst)begin
	if(rst)begin
		uart_rxd_d0		<=		1'b0;
		uart_rxd_d1		<=		1'b0;
		end
	else	begin
		uart_rxd_d0		<=		rx;
		uart_rxd_d1		<=		uart_rxd_d0;
		end
end
 
always@(posedge	clk	or	posedge	rst)begin
	if(rst)
		rx_flag			<=		1'b0;
	else	
		if(start_flag)
			rx_flag		<=		1'b1;
		else if((bps_cnt == BPS_CNT/2)  &&	(rx_cnt	== 4'd9))  //接收了8个bit后，接收状态关闭
			rx_flag		<=		1'b0;
		else
			rx_flag		<=		rx_flag;
end
 
//进入接收过程后，启动系统时钟计数器与接收数据计数器
always@(posedge	clk	or	posedge	rst)begin
	if(rst)begin
		bps_cnt			<=		16'd0;
		rx_cnt			<=		4'd0;
		end
	else if(rx_flag)
		if(bps_cnt	<	BPS_CNT -1'b1)begin
			bps_cnt		<=		bps_cnt	+	1'b1;
			rx_cnt		<=		rx_cnt;
			end
		else	begin
			bps_cnt		<=		16'd0;
			rx_cnt		<=		rx_cnt	+	1'b1;
			end
	else	begin
		bps_cnt			<=		16'd0;
		rx_cnt			<=		4'd0;
		end
end
 
always@(posedge	clk	or	posedge	rst)begin
	if(rst)
		tx_data			<=		8'd0;
	else	if(rx_flag)		
			if(bps_cnt ==	BPS_CNT/2)begin
				case(rx_cnt)
					4'd1	:	tx_data[0]	<=	uart_rxd_d1;
					4'd2	:	tx_data[1]	<=	uart_rxd_d1;
					4'd3	:	tx_data[2]	<=	uart_rxd_d1;
					4'd4	:	tx_data[3]	<=	uart_rxd_d1;
					4'd5	:	tx_data[4]	<=	uart_rxd_d1;
					4'd6	:	tx_data[5]	<=	uart_rxd_d1;
					4'd7	:	tx_data[6]	<=	uart_rxd_d1;
					4'd8	:	tx_data[7]	<=	uart_rxd_d1;
					default	:	;
				endcase
				end
			else
				tx_data		<=		tx_data;
	else
		tx_data		<=		8'd0;
end
	
always@(posedge	clk	or	posedge rst)begin
	if(rst)begin
		done		<=		1'b0;
		char	<=		8'd0;
		end
	else	if(rx_cnt == 4'd9 && bps_cnt ==	BPS_CNT/2)begin
				done		<=		1'b1;
				char	<=		tx_data;
			end
	else	begin
			done		<=		1'b0;
			char	<=		8'd0;
			end
end
 
endmodule