set_property IOSTANDARD LVCMOS33 [get_ports {rgb_b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {rgb_r[0]}]

set_property PACKAGE_PIN J18 [get_ports {rgb_b[3]}]
set_property PACKAGE_PIN K18 [get_ports {rgb_b[2]}]
set_property PACKAGE_PIN L18 [get_ports {rgb_b[1]}]
set_property PACKAGE_PIN N18 [get_ports {rgb_b[0]}]
set_property PACKAGE_PIN D17 [get_ports {rgb_g[3]}]
set_property PACKAGE_PIN G17 [get_ports {rgb_g[2]}]
set_property PACKAGE_PIN H17 [get_ports {rgb_g[1]}]
set_property PACKAGE_PIN J17 [get_ports {rgb_g[0]}]
set_property PACKAGE_PIN N19 [get_ports {rgb_r[3]}]
set_property PACKAGE_PIN J19 [get_ports {rgb_r[2]}]
set_property PACKAGE_PIN H19 [get_ports {rgb_r[1]}]
set_property PACKAGE_PIN G19 [get_ports {rgb_r[0]}]

set_property PACKAGE_PIN W5 [get_ports CLK]
    set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property PACKAGE_PIN P19 [get_ports h_sync]
    set_property IOSTANDARD LVCMOS33 [get_ports h_sync]

set_property PACKAGE_PIN R19 [get_ports v_sync]
    set_property IOSTANDARD LVCMOS33 [get_ports v_sync]

## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
#set_property PACKAGE_PIN W5 [get_ports clk]							
	#set_property IOSTANDARD LVCMOS33 [get_ports clk]
	#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports rst]
    set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN V16 [get_ports {read}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {read}]
#set_property PACKAGE_PIN W16 [get_ports {sel}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sel}]
#set_property PACKAGE_PIN W17 [get_ports {sw[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
#set_property PACKAGE_PIN W15 [get_ports {sw[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property PACKAGE_PIN W14 [get_ports {l9}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {l9}]
#set_property PACKAGE_PIN W13 [get_ports {l8}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {l8}]
#set_property PACKAGE_PIN V2 [get_ports {l7}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {l7}]
#set_property PACKAGE_PIN T3 [get_ports {l6}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {l6}]
#set_property PACKAGE_PIN T2 [get_ports {l5}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {l5}]
#set_property PACKAGE_PIN R3 [get_ports {l4}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {l4}]
#set_property PACKAGE_PIN W2 [get_ports {l3}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {l3}]
#set_property PACKAGE_PIN U1 [get_ports {D0}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {D0}]
#set_property PACKAGE_PIN T1 [get_ports {D1}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {D1}]
#set_property PACKAGE_PIN R2 [get_ports {EN}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {EN}]
 

## LEDs
set_property PACKAGE_PIN U16 [get_ports {hlt}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {hlt}]
set_property PACKAGE_PIN E19 [get_ports {ready}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ready}]
#set_property PACKAGE_PIN U19 [get_ports {out}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {out}]
#set_property PACKAGE_PIN V19 [get_ports {led[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
#set_property PACKAGE_PIN W18 [get_ports {led[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
#set_property PACKAGE_PIN U15 [get_ports {led[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
#set_property PACKAGE_PIN U14 [get_ports {led[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
#set_property PACKAGE_PIN V14 [get_ports {led[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property PACKAGE_PIN V13 [get_ports {debug[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[0]}]
set_property PACKAGE_PIN V3 [get_ports {debug[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[1]}]
set_property PACKAGE_PIN W3 [get_ports {debug[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[2]}]
set_property PACKAGE_PIN U3 [get_ports {debug[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[3]}]
set_property PACKAGE_PIN P3 [get_ports {debug[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[4]}]
set_property PACKAGE_PIN N3 [get_ports {debug[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[5]}]
set_property PACKAGE_PIN P1 [get_ports {debug[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[6]}]
set_property PACKAGE_PIN L1 [get_ports {debug[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {debug[7]}]
	
	
##7 segment display
set_property PACKAGE_PIN W7 [get_ports {segSeg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segSeg[0]}]
set_property PACKAGE_PIN W6 [get_ports {segSeg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segSeg[1]}]
set_property PACKAGE_PIN U8 [get_ports {segSeg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segSeg[2]}]
set_property PACKAGE_PIN V8 [get_ports {segSeg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segSeg[3]}]
set_property PACKAGE_PIN U5 [get_ports {segSeg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segSeg[4]}]
set_property PACKAGE_PIN V5 [get_ports {segSeg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segSeg[5]}]
set_property PACKAGE_PIN U7 [get_ports {segSeg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segSeg[6]}]

set_property PACKAGE_PIN V7 [get_ports segSeg[7]]							
	set_property IOSTANDARD LVCMOS33 [get_ports segSeg[7]]

set_property PACKAGE_PIN U2 [get_ports {segAn[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segAn[0]}]
set_property PACKAGE_PIN U4 [get_ports {segAn[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segAn[1]}]
set_property PACKAGE_PIN V4 [get_ports {segAn[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segAn[2]}]
set_property PACKAGE_PIN W4 [get_ports {segAn[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {segAn[3]}]


##Buttons
set_property PACKAGE_PIN U18 [get_ports middleButton]						
	set_property IOSTANDARD LVCMOS33 [get_ports middleButton]
set_property PACKAGE_PIN T18 [get_ports upButton]						
	set_property IOSTANDARD LVCMOS33 [get_ports upButton]
set_property PACKAGE_PIN W19 [get_ports leftButton]						
	set_property IOSTANDARD LVCMOS33 [get_ports leftButton]
set_property PACKAGE_PIN T17 [get_ports rightButton]						
	set_property IOSTANDARD LVCMOS33 [get_ports rightButton]
set_property PACKAGE_PIN U17 [get_ports downButton]						
	set_property IOSTANDARD LVCMOS33 [get_ports downButton]
 


##Pmod Header JA
##Sch name = JA1
#set_property PACKAGE_PIN J1 [get_ports {JA[0]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]
##Sch name = JA2
#set_property PACKAGE_PIN L2 [get_ports {JA[1]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]
##Sch name = JA3
#set_property PACKAGE_PIN J2 [get_ports {JA[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[2]}]
##Sch name = JA4
#set_property PACKAGE_PIN G2 [get_ports {JA[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[3]}]
##Sch name = JA7
#set_property PACKAGE_PIN H1 [get_ports {JA[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]
##Sch name = JA8
#set_property PACKAGE_PIN K2 [get_ports {JA[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]
##Sch name = JA9
#set_property PACKAGE_PIN H2 [get_ports {JA[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]
##Sch name = JA10
#set_property PACKAGE_PIN G3 [get_ports {JA[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]



##Pmod Header JB
##Sch name = JB1
#set_property PACKAGE_PIN A14 [get_ports {JB[0]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[0]}]
##Sch name = JB2
#set_property PACKAGE_PIN A16 [get_ports {JB[1]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[1]}]
##Sch name = JB3
#set_property PACKAGE_PIN B15 [get_ports {JB[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[2]}]
##Sch name = JB4
#set_property PACKAGE_PIN B16 [get_ports {JB[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[3]}]
##Sch name = JB7
#set_property PACKAGE_PIN A15 [get_ports {JB[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[4]}]
##Sch name = JB8
#set_property PACKAGE_PIN A17 [get_ports {JB[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[5]}]
##Sch name = JB9
#set_property PACKAGE_PIN C15 [get_ports {JB[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[6]}]
##Sch name = JB10 
#set_property PACKAGE_PIN C16 [get_ports {JB[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[7]}]
 


##Pmod Header JC
##Sch name = JC1
#set_property PACKAGE_PIN K17 [get_ports {JC[0]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[0]}]
##Sch name = JC2
#set_property PACKAGE_PIN M18 [get_ports {JC[1]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[1]}]
##Sch name = JC3
#set_property PACKAGE_PIN N17 [get_ports {JC[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[2]}]
##Sch name = JC4
#set_property PACKAGE_PIN P18 [get_ports {JC[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[3]}]
##Sch name = JC7
#set_property PACKAGE_PIN L17 [get_ports {JC[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[4]}]
##Sch name = JC8
#set_property PACKAGE_PIN M19 [get_ports {JC[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[5]}]
##Sch name = JC9
#set_property PACKAGE_PIN P17 [get_ports {JC[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[6]}]
##Sch name = JC10
#set_property PACKAGE_PIN R18 [get_ports {JC[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[7]}]


##Pmod Header JXADC
##Sch name = XA1_P
#set_property PACKAGE_PIN J3 [get_ports {JXADC[0]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[0]}]
##Sch name = XA2_P
#set_property PACKAGE_PIN L3 [get_ports {JXADC[1]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[1]}]
##Sch name = XA3_P
#set_property PACKAGE_PIN M2 [get_ports {JXADC[2]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[2]}]
##Sch name = XA4_P
#set_property PACKAGE_PIN N2 [get_ports {JXADC[3]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[3]}]
##Sch name = XA1_N
#set_property PACKAGE_PIN K3 [get_ports {JXADC[4]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[4]}]
##Sch name = XA2_N
#set_property PACKAGE_PIN M3 [get_ports {JXADC[5]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[5]}]
##Sch name = XA3_N
#set_property PACKAGE_PIN M1 [get_ports {JXADC[6]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[6]}]
##Sch name = XA4_N
#set_property PACKAGE_PIN N1 [get_ports {JXADC[7]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[7]}]




##USB-RS232 Interface
set_property PACKAGE_PIN A18 [get_ports tx]
    set_property IOSTANDARD LVCMOS33 [get_ports tx]
set_property PACKAGE_PIN B18 [get_ports rx]
    set_property IOSTANDARD LVCMOS33 [get_ports rx]


##USB HID (PS/2)
#set_property PACKAGE_PIN C17 [get_ports PS2Clk]						
	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Clk]
	#set_property PULLUP true [get_ports PS2Clk]
#set_property PACKAGE_PIN B17 [get_ports PS2Data]					
	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Data]	
	#set_property PULLUP true [get_ports PS2Data]


##Quad SPI Flash
##Note that CCLK_0 cannot be placed in 7 series devices. You can access it using the
##STARTUPE2 primitive.
#set_property PACKAGE_PIN D18 [get_ports {QspiDB[0]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[0]}]
#set_property PACKAGE_PIN D19 [get_ports {QspiDB[1]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[1]}]
#set_property PACKAGE_PIN G18 [get_ports {QspiDB[2]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[2]}]
#set_property PACKAGE_PIN F18 [get_ports {QspiDB[3]}]				
	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[3]}]
#set_property PACKAGE_PIN K19 [get_ports QspiCSn]					
	#set_property IOSTANDARD LVCMOS33 [get_ports QspiCSn]

