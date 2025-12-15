// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Dec 15 14:57:57 2025
// Host        : zwfpc running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/source/VIVADOScource/CPU/CPU.srcs/sources_1/ip/FontRom/FontRom_sim_netlist.v
// Design      : FontRom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "FontRom,blk_mem_gen_v8_4_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module FontRom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [14:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [14:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [14:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "15" *) 
  (* C_ADDRB_WIDTH = "15" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "15" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     17.855444 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "FontRom.mem" *) 
  (* C_INIT_FILE_NAME = "FontRom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32768" *) 
  (* C_READ_DEPTH_B = "32768" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32768" *) 
  (* C_WRITE_DEPTH_B = "32768" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  FontRom_blk_mem_gen_v8_4_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[14:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[14:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module FontRom_bindec
   (ena_array,
    addra);
  output [5:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [5:0]ena_array;

  LUT3 #(
    .INIT(8'h01)) 
    ENOUT
       (.I0(addra[2]),
        .I1(addra[0]),
        .I2(addra[1]),
        .O(ena_array[0]));
  LUT3 #(
    .INIT(8'h04)) 
    ENOUT__0
       (.I0(addra[2]),
        .I1(addra[0]),
        .I2(addra[1]),
        .O(ena_array[1]));
  LUT3 #(
    .INIT(8'h04)) 
    ENOUT__1
       (.I0(addra[0]),
        .I1(addra[1]),
        .I2(addra[2]),
        .O(ena_array[2]));
  LUT3 #(
    .INIT(8'h08)) 
    ENOUT__2
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .O(ena_array[3]));
  LUT3 #(
    .INIT(8'h04)) 
    ENOUT__3
       (.I0(addra[0]),
        .I1(addra[2]),
        .I2(addra[1]),
        .O(ena_array[4]));
  LUT3 #(
    .INIT(8'h08)) 
    ENOUT__4
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(addra[0]),
        .O(ena_array[5]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module FontRom_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;
  wire [6:0]ena_array;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;

  FontRom_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[14:12]),
        .ena_array({ena_array[6],ena_array[4:0]}));
  FontRom_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .DOPADOP(\ramloop[10].ram.r_n_8 ),
        .addra(addra[14:12]),
        .clka(clka),
        .douta(douta[15:7]),
        .\douta[14] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\douta[14]_0 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\douta[14]_1 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[14]_2 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\douta[14]_3 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\douta[14]_4 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\douta[14]_5 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\douta[15] (\ramloop[9].ram.r_n_8 ),
        .\douta[15]_0 (\ramloop[8].ram.r_n_8 ),
        .\douta[15]_1 (\ramloop[7].ram.r_n_8 ),
        .\douta[15]_2 (\ramloop[14].ram.r_n_8 ),
        .\douta[15]_3 (\ramloop[13].ram.r_n_8 ),
        .\douta[15]_4 (\ramloop[12].ram.r_n_8 ),
        .\douta[15]_5 (\ramloop[11].ram.r_n_8 ));
  FontRom_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[0]));
  FontRom_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.DOADO({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .DOPADOP(\ramloop[10].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[3]));
  FontRom_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[11].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[4]));
  FontRom_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[12].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  FontRom_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[13].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[6]));
  FontRom_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[14].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  FontRom_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[1]));
  FontRom_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[2]));
  FontRom_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[3]));
  FontRom_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[4]));
  FontRom_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[5]));
  FontRom_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[6]));
  FontRom_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[0]));
  FontRom_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[1]));
  FontRom_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .ena_array(ena_array[2]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module FontRom_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOADO,
    \douta[14] ,
    \douta[14]_0 ,
    \douta[14]_1 ,
    \douta[14]_2 ,
    \douta[14]_3 ,
    \douta[14]_4 ,
    \douta[14]_5 ,
    DOPADOP,
    \douta[15] ,
    \douta[15]_0 ,
    \douta[15]_1 ,
    \douta[15]_2 ,
    \douta[15]_3 ,
    \douta[15]_4 ,
    \douta[15]_5 );
  output [8:0]douta;
  input [2:0]addra;
  input clka;
  input [7:0]DOADO;
  input [7:0]\douta[14] ;
  input [7:0]\douta[14]_0 ;
  input [7:0]\douta[14]_1 ;
  input [7:0]\douta[14]_2 ;
  input [7:0]\douta[14]_3 ;
  input [7:0]\douta[14]_4 ;
  input [7:0]\douta[14]_5 ;
  input [0:0]DOPADOP;
  input [0:0]\douta[15] ;
  input [0:0]\douta[15]_0 ;
  input [0:0]\douta[15]_1 ;
  input [0:0]\douta[15]_2 ;
  input [0:0]\douta[15]_3 ;
  input [0:0]\douta[15]_4 ;
  input [0:0]\douta[15]_5 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [2:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire [7:0]\douta[14] ;
  wire [7:0]\douta[14]_0 ;
  wire [7:0]\douta[14]_1 ;
  wire [7:0]\douta[14]_2 ;
  wire [7:0]\douta[14]_3 ;
  wire [7:0]\douta[14]_4 ;
  wire [7:0]\douta[14]_5 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire [0:0]\douta[15] ;
  wire [0:0]\douta[15]_0 ;
  wire [0:0]\douta[15]_1 ;
  wire [0:0]\douta[15]_2 ;
  wire [0:0]\douta[15]_3 ;
  wire [0:0]\douta[15]_4 ;
  wire [0:0]\douta[15]_5 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  MUXF7 \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(\douta[10]_INST_0_i_2_n_0 ),
        .O(douta[3]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_1 
       (.I0(DOADO[3]),
        .I1(\douta[14] [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [3]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[10]_INST_0_i_2 
       (.I0(\douta[14]_2 [3]),
        .I1(\douta[14]_3 [3]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [3]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [3]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  MUXF7 \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(\douta[11]_INST_0_i_2_n_0 ),
        .O(douta[4]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_1 
       (.I0(DOADO[4]),
        .I1(\douta[14] [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [4]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[11]_INST_0_i_2 
       (.I0(\douta[14]_2 [4]),
        .I1(\douta[14]_3 [4]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [4]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [4]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  MUXF7 \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(\douta[12]_INST_0_i_2_n_0 ),
        .O(douta[5]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[12]_INST_0_i_1 
       (.I0(DOADO[5]),
        .I1(\douta[14] [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [5]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[12]_INST_0_i_2 
       (.I0(\douta[14]_2 [5]),
        .I1(\douta[14]_3 [5]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [5]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [5]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  MUXF7 \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(\douta[13]_INST_0_i_2_n_0 ),
        .O(douta[6]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[13]_INST_0_i_1 
       (.I0(DOADO[6]),
        .I1(\douta[14] [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [6]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[13]_INST_0_i_2 
       (.I0(\douta[14]_2 [6]),
        .I1(\douta[14]_3 [6]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [6]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [6]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  MUXF7 \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(\douta[14]_INST_0_i_2_n_0 ),
        .O(douta[7]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[14]_INST_0_i_1 
       (.I0(DOADO[7]),
        .I1(\douta[14] [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [7]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[14]_INST_0_i_2 
       (.I0(\douta[14]_2 [7]),
        .I1(\douta[14]_3 [7]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [7]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [7]),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  MUXF7 \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .O(douta[8]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[15]_INST_0_i_1 
       (.I0(DOPADOP),
        .I1(\douta[15] ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[15]_0 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_1 ),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[15]_INST_0_i_2 
       (.I0(\douta[15]_2 ),
        .I1(\douta[15]_3 ),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[15]_4 ),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[15]_5 ),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  MUXF7 \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[0]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_1 
       (.I0(DOADO[0]),
        .I1(\douta[14] [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [0]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_2 
       (.I0(\douta[14]_2 [0]),
        .I1(\douta[14]_3 [0]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [0]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [0]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  MUXF7 \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[8]_INST_0_i_2_n_0 ),
        .O(douta[1]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_1 
       (.I0(DOADO[1]),
        .I1(\douta[14] [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [1]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_2 
       (.I0(\douta[14]_2 [1]),
        .I1(\douta[14]_3 [1]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [1]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [1]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  MUXF7 \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(\douta[9]_INST_0_i_2_n_0 ),
        .O(douta[2]),
        .S(sel_pipe_d1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_1 
       (.I0(DOADO[2]),
        .I1(\douta[14] [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_0 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_1 [2]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[9]_INST_0_i_2 
       (.I0(\douta[14]_2 [2]),
        .I1(\douta[14]_3 [2]),
        .I2(sel_pipe_d1[1]),
        .I3(\douta[14]_4 [2]),
        .I4(sel_pipe_d1[0]),
        .I5(\douta[14]_5 [2]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  FontRom_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized1
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized2
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized3
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized4
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized5
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module FontRom_blk_mem_gen_prim_width__parameterized9
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;

  FontRom_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .ena_array(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000003),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h4000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'h7FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFCFBFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'h7FFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_10(256'hFFFFFFFF8FFFFFFFFFFFFCFF8F1FE1F83187FFFFF03F1FFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFE3FFFFF8FFFE1FFFFFE07F8C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h7FFFFF83B9C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FE30FF1FF8FFE0),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_15(256'h783E1F0337FFFFFFFFFFF03F52EFDCF7DF625B88FDDFEFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hF5AE3458123A80E059178081F04E5EDBEEFFFFFFFFFFFFFE0F03A0247D174FE0),
    .INIT_17(256'h7FFFBFFFFF37FFC3FFFD7EDBFB366805E03A1F07C0E88280F04C0F00C0E32AEB),
    .INIT_18(256'h7FFFFF0DA9BDFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFDB7EC97ECFFA7FEF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_1A(256'hA6CD86E547FFFFFFFFFFE39E9097D4ECA2257522501D4FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hC6F34624E5161C58C23C561E6E444C6585BFFFFFFFFFFFF8B62CBECBB630E78B),
    .INIT_1C(256'hBFFC6FFFFE27FFBC7FFBBB53E7052FF4DE536C93715A397122C3C6A43834BF3C),
    .INIT_1D(256'h7FFFFF09A992FFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFF0A7BC53DE7E37FA0),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_1F(256'h8CC52D207BFFFFFFFFFBD8EE3603C4C38815BE3D4A5DCFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hC6528644A0D21A80C204455B823552F2B8FF1FFF3FFBFEF1E88ADFBA94387391),
    .INIT_21(256'h5F3C6FE7FC273FA9FFF35BEFECBB2DEB5F0E0D2978482812841251E32938A3BC),
    .INIT_22(256'h7FFFFE65A9B7783DFF7DFFB7FDF790F3FDFF3FDDF9FCFFDF115B453E77C341B6),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_24(256'h06F5AC0B1BFFFFFFFFF1CE646F33CEC376FE3D1E8B5DCFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hC236041CC0151E506C35B5181013C3DD30FE6FFE8FE1F875212330702C187B43),
    .INIT_26(256'hDC044180F02407F3FFE00B07D0C30E1010B9CD4D2E5C104456C4792853A136FC),
    .INIT_27(256'h7FFFFE53A9CB7008E2181F0388E2144060080700C070080315C3500F07030060),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_29(256'h542D24A70DFFFFFFFFC8EAFD1FBBDCE821C893E789DD8FFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hC293041CC01505906C34650622102207E3F8CFFD87C0F0359022703164186138),
    .INIT_2B(256'hE3D832796E20E3E7FFE60B5FC9F30A0058ADC15C465C1083644091A88100F6C8),
    .INIT_2C(256'h7FFFFC4FA9EF41CD4DC78C8555117A0C8BE4CA3027A30622124343E42433EEA6),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_2E(256'hCC9D48280DFFFFFFFFCEDF891F9DFFCBAAED773FDFFD8FFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hC2D704FCC82D00416C76D578681096B749F0A8024BC671D240AF03E004781848),
    .INIT_30(256'h9E18D84C0980D1FFFFC0A35F8DF32A7A2AFC6694BE5C53C2A8CE59C874E4F0CC),
    .INIT_31(256'h7FE60C4FA9EF5CD016FA80304A146ABFCE1595884412A396134543D43DABC140),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_33(256'h5AFD426148FFFC07FF3514099FD5F3EBAA6A3064B33D0FFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hC2E884FCC9C748ACE539957C4853AD4930630A1564CCF79290269DC431381A90),
    .INIT_35(256'hF29C377805CF5BFFFF84535F8DF33739AB40AB42565C539918C44718A465706C),
    .INIT_36(256'h7FFD31EFA9ECAE833CBA963CBB1C277542B5FDE22754BA3E13B6448C54474F8F),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_38(256'h697D494F50FFFDEBFEF5DCE83FC1FFA1D6D5D1583FFD0FFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hC2ED84FCC9AD4161E419957C4651F8A408462C0992EDFB31306A999BE0391850),
    .INIT_3A(256'hB05C62087C6F57FFFFFBF35F9BF33019A72C200D265C53362BE446B4A5E07D48),
    .INIT_3B(256'h7FA8740FA9E4D331E86862CD231DD4DB4855588674F07B7E13DF457C6DE718DF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_3D(256'hE1BD4BBF68FEF6C3FEDF431A3FD1FFB0D9452A74EFFD8FFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hC2C804FCC82D79E16C77557D029CCC62085777FBC573FC73600B4A9F2C063210),
    .INIT_3F(256'hC7FE643AA02FFBFFFFE38B5F7BF33A9D963CD145665C527C6EAC463CC54A7EC8),
    .INIT_40(256'h7F9D028FA9F0D0190B480F22C31DD4BEA29542C625323BC613EE457C6DE77740),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_42(256'hF0DD4B8C6F787E1FC79F7CF93FC1FFADF1521019AFFD2FFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hC2D9049CC815644E6FB755097010E4F42A782E052CE1FC73102E5C8838B9FCF7),
    .INIT_44(256'h9C38241A3C2FA5FFFFFFFB5F67F33D4EAE70B841285452D32AC54A30D4E77ED2),
    .INIT_45(256'h7FDA2F6FA9EF780ACB685ACCE31DD04F3E9502C624923BD613D5457C6DE33658),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_47(256'h62CB405576721C0F6B843FFB9FC5FFC55EEA7B3A3FFE6FFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'h0A240939F015799E68752D6328002DA62EE7480C4DDCF73300E16710C102E1C0),
    .INIT_49(256'h98C44E21C0AFE5FFFFFFFB5EC7F32046AD38070DC30552C04D470188730F7E12),
    .INIT_4A(256'h7FE0446FA9EF234CBAB85A46220C0C067E9518C668923BD614964579D1E31F98),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_4C(256'hF130454273B55FFF73CAFFFADFB1FFA204812815BFFCCFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'h0A2A08115C15789E44551D470941BF61257B4805B3CEF759AD6C6851248D9050),
    .INIT_4E(256'h9428FE040D2FE9FFFFFFFB5EC7F32136AD675B9752795329E64309E852E65456),
    .INIT_4F(256'h7FFFFC6FA9EF5975E5064B93D025A4581E95E91A68DA3BD7BD054575F5E31FD9),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_51(256'hD0CCC44AF1B4DFFF53E2FFFC4FA3FF0E01551F233FFC4FFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h06D21610C81510BE420C53632E12D331A57D8801A790F699CD88F390E80C0FB8),
    .INIT_53(256'h91283712AFC71DFFFFFFFB5C6FF32052A9531BD25B2B5308B8410BE813A26ED6),
    .INIT_54(256'h7FFFFC6FA9EF50E40205AA9691551198DE94DCBA089A3BD7B2334572C9E326D9),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_56(256'h6FDBF771F93DBFFF6DF1FFFD6F23FF7987A611E3BFFE2FFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hFEF671A7F4561C7EC7F71E5E67D6E6C9A9FEBFFE9FC17DBE363DF3E31C7ECFD7),
    .INIT_58(256'hDAD788BC75A7E3FF003FFB4C6FE32FEE6975A2DD38F7DB9F7791D7FBDF697EF2),
    .INIT_59(256'h7FFFFC6FA9EF5FF652D7DADB77EBEBD77FB52B1E561B39F3FF22CE07FDAF045E),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FE),
    .INIT_5B(256'h60080783FA1C7FFF36FFFFFEE6C7FFC0187339E47FFF1FFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'h018E7C18063880FF18078081F801F04771FF1FFF3FDE3C7F0703F8F83E071FE0),
    .INIT_5D(256'h3C0E01C1F81807FF001FFB0DDFC3200F1C380C387E0FC7E023880FF8E0E381F2),
    .INIT_5E(256'h7FFFFCC7A9CB600F4038C43C780607E03F85078660638912008E2A4802387EEE),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FE),
    .INIT_60(256'hFFFFFFFFFCDFFFFFB8FFFFFE50A7FFFFFFFFCDFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE677FFFFFFFFFEB3FFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFD3FA7FB70DFA83FFFFFFFFFFFFFFFFFFFFFD59FFFFFFFFFFF),
    .INIT_63(256'h7FFFFE89B9BE7FFF6CFFFFFFFFFFFFFFFFF67FE07FFFFFFFFFFFF733FFFF7E9F),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FE),
    .INIT_65(256'hFFFFFFFFFE3FFFFFCFFFFFFF26AFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE02FFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFD4047FB3A3FA83FFFFFFFFFFFFFFFFFFFFFEA1FFFFFFFFFFF),
    .INIT_68(256'h7FFFFF3991A0FFFFB2FFFFFFFFFFFFFFFFF37FE47FFFFFFFFFFFF927FFFF801F),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFF3FFFFFFCF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01FFFFFFFFFFFCFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFF001FFE07FFC0FFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFF),
    .INIT_6D(256'h7FFFFF83C7C3FFFFC1FFFFFFFFFFFFFFFFF8FFF8FFFFFFFFFFFFFC0FFFFFC03F),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'h3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h8000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'h7FFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h7FFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFF9FFFFFFFFFFFFCFFEFFFF1FC73D797FFF13F3FFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFBDFFBBFEFFDFFFFBEEFFFFFFFBFBFAFF8FFFFFFFFFFFFFFFFFFDFFBFEEFBFFF),
    .INIT_17(256'hFFFF3FFFFF9FFFF5FFFEFE2FF9E8F7FBFFFDFFFFFFF77DFFFFBFFFFFFFFFDDF7),
    .INIT_18(256'h7FFFFFD7D7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5FE79FF3FF8FFE1),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hF93E1FD7CFFFFFFFFFFFFF7FCF9FEFFCF3ABB79CF33FDFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hF9CF79FB173983E739CF8981FD8E3E53F5FFFFFFFFFFFFFF4F138125FDCF0FF5),
    .INIT_1C(256'h7FFEFFFFFFFFFFFBFFFC7F47F1F4F00BFA799F87E9E6C7ECFD0F0FD8F4F78CF3),
    .INIT_1D(256'h7FFFFFA3D7F1FFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFE8FFBDFF8FFBFFE0),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h7DDF0FB1CFFFFFFFFFFFFBFF3F9FEFF29A4EF9B4F97F5FFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFBC6BBFFB2B99BFFBDE75CDAE3AF1E25FEFFFFFFFFFFFFFDBE3F9FC67DE71FD7),
    .INIT_21(256'h7FFEFFFFFFFFFFCBFFF87FCFFDE2F7F1ED3C1F67DEE4EFBFF5AA4FFAACEB85D3),
    .INIT_22(256'h7FFFFFD7D7E7FFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFF1FFB4FF1FFBFFF8),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'hEF3FAE13DFFFFFFFFFFFF03EBFFFE5F8FB4A7DD3787F5FFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFBF6BFFFFEBC84FFDFD7FC8271AFAFA99FFF7FFF7FFFFFFA5A7DF07CDFF75FBF),
    .INIT_26(256'hBFFEFFFFFFFFFFFFFFFEBFBFF5FEF81CF249DF37E0FBFFEFAFA8921A972B731B),
    .INIT_27(256'h7FFFFF4FD7F9FFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFBFFBFFFFFFBFFFE),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hF7BF6EDEDFFFFFFFFFF1FEDE3FDFF9FB1D032A32743F5FFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFBE7BFFFFEBCF8FFDFD65CF981AD2D0F2FFE7FFF9FEBFAF9735ABFFEFFF74BF7),
    .INIT_2B(256'h9E1EC3C1F4FD17FFFFFDDFBFFFFEF1FB33A6DF1B80FBFFFC572663DAEE2BF157),
    .INIT_2C(256'h7FFFFF5FD7FDE818ED3C1FA3F0F60CE0F92A0F45E0F45A97FFD7B41F1F43C0F9),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFFFF7D10FBFFFFFFFFFDE83CBFFBFFFF5E2FD55EBFFF5FFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFBFFBFFFFE94FE3EDF957CFF59AE3EF5B7FFBFFF5FF3FCFFF787EFFFAF970FD7),
    .INIT_30(256'hDE5653A860F85FFFFFE57FBFFBFEFBFC6FEBD733A8FBFFFFDBA7EBBAFFEE3777),
    .INIT_31(256'h7FFFFF5FD7FDFBE9F6675FB7CEE6EF6D7FEBDF8CEC38EE6BFFE7B7EF978FADF0),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hF5FF7DECFFFFFFFFFFCCF31FFFE7FFEF3CD797977FFF5FFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFBFB3FFFFF8287A85E1FFCFE3E6F75FE59FAFC03C3EBFEFF63F7FFFCAC0703C9),
    .INIT_35(256'hE73AA7D2E377A7FFFFEFAFBFDFFEFA7C2FA35BEBD0FBFFF97A2FEA2A9E8F7797),
    .INIT_36(256'h7FFFAE7FD7FE70787F4B97D1F7EFCCF8F08B3FF6E229F83BFFE7B17FEE97D3FF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hF9FF7F8AF5FFFFFFFFF5B87EFFE3FFDF5B6F5B94FFFF5FFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFBFD3FFFFFA886A95E1FFCFE246ABC49F9EEF80BFFFFFFFC5B7FFFFF78BE0AF9),
    .INIT_3A(256'hF9EAFFFDFBF7FFFFFFFFFFBFDFFEFCFFFF8F4AFE10FBFFE7FFCFEA329F0B7723),
    .INIT_3B(256'h7FE0269FD7FFBE7F93FFC3944FEFEFED6B2BEEBABE2BB973FFF7B1FFFEFBAEFF),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hF9FF7DEEF9FFFED7FF5F3CFEFFF3FFD095EE3F57BFFF5FFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFBF2BFFFFE9496FEDF957CFE37253E33FDF4F807F9FFFFFEEE63FBC8317F1F97),
    .INIT_3F(256'hBBFEFAFEABF7EFFFFFFFFFBFCFFEFEFFBFFFBDB550FBFFF3FFC7EB7EFE87F563),
    .INIT_40(256'h7FEB58BFD7F8BCFFC7E3FC3FFFEFEFE67FABEAFEFF4BB9D3FFFBB1FFFEFFF4BF),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFCFF7E30F9FFFE1FFF9D7FFFFFE3FFEE3CBFBF137FFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFBF9BFFFFEBC8E3FDFD6BCFF6BACEDD1FBFFFBFFFDFFFFFB9E5FFFD7E57DFD6F),
    .INIT_44(256'hFC3EBAFEBBF6BBFFFFFFFFBFEFFEFE9F3FDDB3B4BAF3FFDFF3A5FBF25FEEF5F3),
    .INIT_45(256'h7FF3EE1FD7FA7F3E178BA17FDFEFEBE1FFABEAFEFE4BB9D3FFFFB1FFFEFBC67F),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFCDD7F62FBF8FFFFF7FDFFFDFFF7FFE6D9EFDFF9FFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hF3DAB0FECEBC94FFDF9674FFAFA63FF3F9F9780B87F9FE787E9DFFCBA8FCE18F),
    .INIT_49(256'hFF36D7FF637797FFFFFFFFBFEFFEFF7F3F23BCBFBFF7FFDFE62FF3FAFF2FF5F3),
    .INIT_4A(256'h7FFFFF7FD7FDFD7EFFA7E7BFBFFFFFB1FFAB7FFEFFABB9D3FBE7B1FE6EFBFEBF),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'h713D0ED1FBFC7FFFAFF9FFFEBFEBFFE357EA19D17FFE7FFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'hFB8EB6FA46BCB27FFF9710C77CAA4F57FEFF5807FFF9FAFFF636F9F29CF68FBF),
    .INIT_4E(256'hF9E26B8A64B77FFFFFFFFFBF7FFEF17F3E73DDBFBF13FFF7C72F63FAB667DDF2),
    .INIT_4F(256'h7FFFFF7FD7FDF64E7FBCADB9FEBB63D6BFABBFA6EDEBB9D373C7B1FECEFBC3BF),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'h40E8C78FFF7A7FFFDFFBFFFE3FEFFFEA51EF5CFFFFFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h07CEBC38C2BCB2FFFE0F32A1FA2BF5117EFF7FFFDFE7F87EC74BFFF4BD8F1FD8),
    .INIT_53(256'hFB26D590F7CF17FFFFFFFFBFDFFEE04F3FBE4DF87E27FFE8AF2E07FAE363EFF3),
    .INIT_54(256'h7FFFFF7FD7FDE8EF8E1985FC3FD69BD83FAA57FAD9EBB9D2B3A7B1FECEFBC63F),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'h601807C7FFFCFFFFBBFFFFFF5F97FFCC3CF381E6FFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'h039E7C3C067CC1FF9C07C0C3FC13F334F9FFBFFFBFF2FCFF8787FCF87F079FF0),
    .INIT_58(256'h7E1F23E1FC3D8FFFFFFFFFBEFFFEE00F3C7C8E7C7E1FCFF0679FDFF9F1E3DBF2),
    .INIT_59(256'h7FFFFF7FD7FDF01FDE7CCE7E7D8F0FF07F9B8FC2F0F399B3018E78FC073D80BE),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FF),
    .INIT_5B(256'hFFFFFFFFFEBFFFFFD3FFFFFF4FCFFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFFBEFFFEFFFFFFFFFFFFFFFFFFFFFFF6DFFFFFFFFFFF),
    .INIT_5E(256'h7FFFFFFFD7F5FFFF97FFFFFFFFFFFFFFFFFBFFFEFFFFFFFFFFFFFEFFFFFFF1BF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FF),
    .INIT_60(256'hFFFFFFFFFE7FFFFFF5FFFFFFDF1FFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7FFFFFFFFFFF87FFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFC07FFF167FC5FFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFF),
    .INIT_63(256'h7FFFFF9BD7CFFFFFEBFFFFFFFFFFFFFFFFFAFFF8FFFFFFFFFFFFF9EFFFFF91BF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFF7FFFFFEFFFDFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFF),
    .INIT_68(256'h7FFFFF93CFDFFFFFFDFFFFFFFFFFFFFFFFF9FFFBFFFFFFFFFFFFFCCFFFFFCFFF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'h3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h8000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'h7FFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h7FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_15(256'hFFFFFFFF9FFFFFFFFFFFFCFFFF7FF1FC73C7DFFFF13F3FFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFF3FFFFF9FFFF1FFFFFE0FF9E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'h7FFFFFC7CFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FE7FFF5FF8FFE1),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_1A(256'hFBBEDFBFBFFFFFFFFFFFFFFFFF5FE1FF7DD31FAAF4BF1FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hF5AEF7DBFEBABDEFDBF7BEBDFBEEDE03E3FFFFFFFFFFFFFEEF7BFFAEFFF76FEE),
    .INIT_1C(256'h7FFE7FFFFFCFFFE1FFFD7FA7F1CBEFE5F5FA5F77D7EBFEDEFBEEEFBEEEEFEAEB),
    .INIT_1D(256'h7FFFFFD3CFC9FFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFF4FF32FFCFFCFFEE),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_1F(256'hF23EDFC9CFFFFFFFFFFFEBDFFFFFE1FEF806019AFCFF1FFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFDA63C38423FA5E07817A3E5E44EDE21C4FFFFFFFFFFFFFE0641A0213C1FFFE8),
    .INIT_21(256'h7FFE7FFFFFCFFFCBFFF97F0FF3E5F805E1FFFF3FC0FC11807A4BA784B26373CF),
    .INIT_22(256'h7FFFFF07CFEBFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFE9FF34FFBFFCFFE3),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_24(256'h613E3F9FE7FFFFFFFFFFE01E3FE7E1FD393A81D8FCFF1FFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFDC639FF9E3BE1FF3FC61BE5E98F0C7987FF3FFF3FFFFFF843F1C07D1FCF8786),
    .INIT_26(256'h3FFE7FFFFFCFFFFFFFFD7F3FF1F9E01FFE153F0780E7E7CC218E2398F4230067),
    .INIT_27(256'h7FFFFFBFCFF9FFFFFFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFE7FF3FFFFFFCFFFE),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_29(256'hEFBEFE3CCFFFFFFFFFF9FDFFFFCFF9F7FE839880387F1FFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFDFF39FF9E3BFC3F3FC6BBFC3F8C5E088FFE1FFFFFE9FA7EEFB89FFF3FCFA39F),
    .INIT_2B(256'h3F0E07E3F44D17FFFFF39F3FE7F9FFF843613F13F0E7E7FFAF00FF388FE240C7),
    .INIT_2C(256'h7FFFFFBFCFFDE80CEC793F13F1E20041F16A1F48F1F48A5FE797340F8F4CC1FF),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_2E(256'hE7FEFC9FF3FFFFFFFFF9E81C3FF3FFFD1E53D9CCBFFF1FFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFDF939FF9E3BFFFF3FC47BFFA18D9E0D87FC7FFF7FEFFBFCEE0BF7FF8FCFE7C7),
    .INIT_30(256'h6F4E178A64094FFFFFE13F3FF3F9F8FFF7C7332F88E7E7FC2383E3383E664317),
    .INIT_31(256'h7FFFFFBFCFFDFDEFEE101FCFA8FAE34CE208CFC3F53C1C03E7F731EFDFC0D4EE),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_33(256'hF1FEFC1BE7FFFFFFFFF9E33CFFFBFFECBE4789E5FFFF1FFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFDF839FF9F01C2283E0CFBFFF00E653263FC7C03F3E9FE7CFF0FCFF48D1FFDC0),
    .INIT_35(256'h01F234DBFF89E7FFFFF3CF3FCFF9F87C4F933D6310E7E7F2FE03E3F87E048207),
    .INIT_36(256'h7FFFAF9FCFFCF0F8730D9591C9F3E7FC7EC9F27987E10843E7FF31FF9E18C730),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_38(256'hF5FEFC9DF1FFFC0FFF823CFDFFFFFFCE189FABE4FFFF1FFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFDFE39FF9F2BA2293E0CFBFFE008C4266DEAFC0BE1FFFFFEA387F3E30937F8E0),
    .INIT_3A(256'h3F1679FC73C91FFFFFFFFF3FE7F9FFFE0F9F2679F0E7E7CAFC03E2687F020363),
    .INIT_3B(256'h7FE0851FCFF9387E4387CF9B09F3E7FA7B09E77DCE23C993E7FB31FF9E7C8F3F),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_3D(256'hFFFEFCF1F7FFFF27FF20FCFDFFEFFFC6E2CFAF44FFFF1FFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFDFE39FF9E3B9E7F3FC47BFFFF8B0E3079E9FFFFFDFFFFFC078FE3C30F7FF9F7),
    .INIT_3F(256'h3C0678FE23C807FFFFFFFF3FCFF9FE3FFFC3A07B10E7E78BFD03E3403E018383),
    .INIT_40(256'h7FF0E17FCFF97FFCFFF3C83339F3E7F07F89E339CF03C933E7F831FF9E78EC3F),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_42(256'hFFFEFE33F9FFFE1FFF997FFCFFFFFFE0995E07007FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFDE139FF9E3B8FFF3FC63BFFA38F16D27DF0F807F5FFFFFC9EBCF9C7CEFE024F),
    .INIT_44(256'h3C2638FE33C983FFFFFFFF3F9FF9FE1FDF01B57038EFE7EFFF81E3F01E6483F3),
    .INIT_45(256'h7FFAEE1FCFFD7FFE0797D17C99F3E3F5FF89E339CE03C933E7FB31FF9E7CC97F),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_47(256'hFF5EFFB0FCFA7FFFD7F9FFFCFFFBFFF9BA1647E6FFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hFDC23FFF9E3B9C3F3FC7FBFC2381D04079F8FBF39FF5FD787E3EF3C38FFDBEFF),
    .INIT_49(256'h3FFA39FC7FC9FBFFFFFFFF3FCFF9FFBFDF5F8C7D7CFBE7EFE10CFFF8CFE383F3),
    .INIT_4A(256'h7FFFFF9FCFFDFF1F5F9182793873E787FF88E6799E23C933E7FF31FF9E7CF17F),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_4C(256'h6E7BB627F9FB7FFF9FFDFFFE3FE3FFEEA923ACCE7FFE1FFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'h0D963178263B85FF3C2747DCE207E78C70FFD8070FE7F9FC4788FAE8FD877F88),
    .INIT_4E(256'h39321095E20803FFFFFFFF3F3FF9EE8FDFF0E67838A3E788BF08B3F88B69A3F2),
    .INIT_4F(256'h7FFFFF9FCFFDF08E0FF09E7839430FC9BF8843E5FA23C93329F731FCA67CC17F),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_51(256'h4F0B3737FE79FFFFA7F7FFFFFFDFFFFDB2E7A0EC7FFE1FFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hF9FE39FF323BCDFF39FF4DDCF1CDF1CA70FF9FFF9FF9F9FEB7B1F9FB7D7FFFD7),
    .INIT_53(256'h3AC66B8DF4096FFFFFFFFF3F9FF9EFBFDC386C397CC7E7C7630CE7F8CD6B91F3),
    .INIT_54(256'h7FFFFF9FCFFDE71FCF9F9C3F39AE6BD73F88AFC5D663C9324CC731F9327C993F),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_56(256'h601807C7FCFCFFFF8FFFFFFF1F87FFCC3CF381E6FFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'h039E7C3C067CC1FF9C07C0C3FC13F3FCF9FFBFFFBFEBFCFF8787FCF87F079FF0),
    .INIT_58(256'h7E1F23E1FC3D8FFFFFFFFF3E7FF9E00F3C7C8E7C7E1FCFF0679FBFF9F1E3DBF2),
    .INIT_59(256'h7FFFFF9FCFFDF01F1E7CCE7E7D8F0FF07F998FC5F0F399B3018E78FC073DB17E),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_5B(256'hFFFFFFFFFE3FFFFFE7FFFFFF0FFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF79FFFFFFFFFFFB7FFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFF3F3FF9FFFFFFFFFFFFFFFFFFFFFFF21FFFFFFFFFFF),
    .INIT_5E(256'h7FFFFF3FCFF1FFFFF7FFFFFFFFFFFFFFFFF9FFF9FFFFFFFFFFFFFDCFFFFFCE3F),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_60(256'hFFFFFFFFFE7FFFFFE1FFFFFFBFFFFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33FFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFF801FFF967FC3FFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFF),
    .INIT_63(256'h7FFFFFABCFC1FFFFF1FFFFFFFFFFFFFFFFF8FFFFFFFFFFFFFFFFF81FFFFF807F),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFCF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFFDFFEFFFFDEFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF),
    .INIT_68(256'h7FFFFFBBD7DBFFFFEDFFFFFFFFFFFFFFFFFAFFFAFFFFFFFFFFFFFDEFFFFFDF7F),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'h3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h8000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h001F33803003830330306E8CC618081F0066198660D864C830078400C1863181),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0301810E04000000000C00030018001E6DE1B07F800080000000000000000000),
    .INITP_03(256'h0C198C00C1864180C03186019867FA4B040E00001800000601860C306603FF60),
    .INITP_04(256'h80198601986638000000018060060180C0FC7F8D861830600C6C1806C19E6C08),
    .INITP_05(256'h000E00C030060181B0387E86C61808380066198660D864C8300D8400C1861F01),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0181818606030000200C00030018001C69B13033000000000000000000000000),
    .INITP_08(256'h0C398C00C1864180C031860398661B6B000707F83008020201860C184601C060),
    .INITP_09(256'h8019C6031866180000000180600600C0C0CC7387861830600C661806619C6C08),
    .INITP_0A(256'h000000C0300600C1E07C7B878718186000631986619864C830198400C1860181),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h01C1C1CC06070000700C00018018001CED99F6330001C0000000000000000000),
    .INITP_0D(256'h0C318E40C1866700C030E66F1CEC19FB0E018000E01C070381CE0618C300C030),
    .INITP_0E(256'h8231EE670C67B80000000180C00600E0C18673878730307198673006731C6C08),
    .INITP_0F(256'h000000C0300400E0E0CC738387B838310063B8C6339864C830318400C1860181),
    .INIT_00(256'hAB5C464444443418CEC93444557A7D663495AC7D7754F8BD1B4544444434A5AB),
    .INIT_01(256'h44849B6D6644444444444434C6CDADAD2B454434F7BDE9344444444444443495),
    .INIT_02(256'h95AB4C56444434C6BD1B4528BDC9344464697D67A5ACEA44397D67A5ACEA4544),
    .INIT_03(256'h5544443434444434A6BD2B444407BDB944444417BDB9759B5D464444556A8D66),
    .INIT_04(256'h6AAD88345418BEB94444647A7D674444444444F7BDC944444444A63AACCEAD0A),
    .INIT_05(256'hA8648A9D7744444434959BDEFA344444959B1BB6ACBD0BC7ADEA344418BDB944),
    .INIT_06(256'h4444289D973444444444444444D7BCDE8D67444444757ABEA8344444444438AD),
    .INIT_07(256'h43454444444444444444757AAD6CCD6C87547A4C46C6CDCE7D76344444444444),
    .INIT_08(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_09(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_10(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_11(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_12(256'h7CA9354444444444444444444444448519973444444444444444444444444444),
    .INIT_13(256'h3437BEC9AC1B758A4C08CDA83434F7DD0B44696D55444444F76B9CAD6C6BBD9D),
    .INIT_14(256'h68444444444444444444446AAE87344444444444444444444434B6BCADCE1B45),
    .INIT_15(256'h4444343444444444656555B6BC3C6565655544444444344445444444445458AE),
    .INIT_16(256'h44444434E6CDEA34444444444534444444454444444565656565655544444444),
    .INIT_17(256'h4444444434857ABED934444444445449CEC934444434E7CDEA24344408CD7D56),
    .INIT_18(256'h84AB3C3595BC5D363444444444758ACEBDBDBDBDADBDEF0B85CC4C4534444444),
    .INIT_19(256'h556565454434C6CD6D563424A6BC5C45444434A5BC5C4644444406DEDA344434),
    .INIT_1A(256'h4434B69BADD945444444444434344444444444444444343444444444546A7D66),
    .INIT_1B(256'h56444444960987444444446539BD3B663444444465B7B7B7B7B7B7C797554444),
    .INIT_1C(256'h6D46C5CD2B344434D6CD0B2495ABCECECECECEDE0B759BFBA6ACDAB5BDEA396D),
    .INIT_1D(256'h38AE884444444444443428CEC914D7DD1B354444647A9E77444444444434A5BC),
    .INIT_1E(256'hBC4C46444434C6BD0B344444647A9E67D6CDEA344434647AAE98344444444444),
    .INIT_1F(256'h444444748B7D764444445459CEDA96BC1B443495AB5D464444444444444434B5),
    .INIT_20(256'h08CED93444444439CEB8A5BC2B9C3C45345A8D87489D7734655534A6BDCA3444),
    .INIT_21(256'h444444748ACEB903C6CD0B3417CECA3444444449CEB9344434556565D6BD2C34),
    .INIT_22(256'hCECA3434A6CD1B444444446A9D87344444859B6D6644444495BC7D6624444444),
    .INIT_23(256'h8A7D67444444445438CE0A18DE0B3534E69C2A9C0A295C2A9D78443407CDC918),
    .INIT_24(256'h54598D7744444444444444443429AD983444444444444418CEFA354444444474),
    .INIT_25(256'h4444444444444444444444444444444444444444444475AC3C55444444444444),
    .INIT_26(256'h3B4595AC3C45443495AB3C3554489D88558539CD1B4544444444444444444444),
    .INIT_27(256'h2C354444556565656565655ABE982408BDC934444417BDC9444444444434A6BD),
    .INIT_28(256'hAB5C464444443418CEC93444657A7D663454F7BCBEADCDBEDA4444444444A5AC),
    .INIT_29(256'h44849B6D66444444444434958B9DFAAC2B454434F7BDE9344444444444443495),
    .INIT_2A(256'h749B6D56444434C7CD0B4428BDC93444646A7D67A5ACEA44497D67A5ACEA4544),
    .INIT_2B(256'h4444444444444434B6BD2B444407BDC934444428BDB9648A7D564444656A8D66),
    .INIT_2C(256'hAC3C55445418BEB93444647A7D674444444444F7BDCA444444959BCE5BD96644),
    .INIT_2D(256'h0BC7BD2B4544444444F7BDCE6C773444747A3C1A8C4B6CF9ADB93434B5BC2BA6),
    .INIT_2E(256'h4444289D9734444444444444857B7DA865454444443495AC8D7734444444C6BC),
    .INIT_2F(256'h4345444444444444444444954A6B1A6634446565555565E7AC1B454444444444),
    .INIT_30(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_31(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_32(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_33(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_34(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_35(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_36(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_37(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_38(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_39(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3A(256'h34444444444444444444444444444454A6764444444444444444444444444444),
    .INIT_3B(256'h5469BED9ACBA03496D567A7D6624F7DDFB34387D454455454424289D56649B1B),
    .INIT_3C(256'hB934444444444444443494AB6D46444444444444444444444434647ADE4C3523),
    .INIT_3D(256'h446508E95544444444442495BC2B3434444444444444444444444444444417CE),
    .INIT_3E(256'h44444444649B6D564444444444A64A1A66444444444444444444444444444444),
    .INIT_3F(256'h444544343424646ABDD9444444344449CEB82334444495AC7D662434D6CD2B45),
    .INIT_40(256'hD6CDFB24648AAE98343434344465C709AC9DF9E8E8E8E887659B8D6634343434),
    .INIT_41(256'h353424344434D6DD3C35342485BC7D464444444449CEB9344444C6CD1B343424),
    .INIT_42(256'h44E7CD8DA83444444444448519D9454444444444447509D94544444434E7CDFA),
    .INIT_43(256'h5644444465A75544444444444408CD7D87344434B6CDCECECECECEDE4C554444),
    .INIT_44(256'h0B34A5BC5C553424C6CD0B24E6CD4CD8E8E8E89B7D76496CC7BC4CD7BDEA396D),
    .INIT_45(256'h38AE884444443434342418CEC924758BAEA83424547A9E7744554434346549DE),
    .INIT_46(256'hBC3C35344434C6BD0B344444647A9E67D6CDDA143444F7DD4C45444444444444),
    .INIT_47(256'h343424648B7D7644444428DE2B35A6BC1B4444748B8D772434445544453424A5),
    .INIT_48(256'hA5BC6D56243495AC8D67A5AC9DADB934445A8D87599D7734444434A6BDCA3434),
    .INIT_49(256'h444534D6DD4C4634D7CD0B24A5BC6D56343495AC9D77344444444434B5BD2C45),
    .INIT_4A(256'h9D87343485BC6C563434859B7D66444444859B6D6644444495AC6D5634343444),
    .INIT_4B(256'h8A7D6744444434D6CD7D56648BBEA824C69C8C9D88D69C8C7C67444495AC3C6B),
    .INIT_4C(256'hA5BC1B4544444444444444443429AD9834444434343434647AADA83444444474),
    .INIT_4D(256'h4444444444444444444444444444444444444444444475AC3C55444444444434),
    .INIT_4E(256'hDA34657A9D77242485AB3C355448BEB9342474AB7D6644444444444444444444),
    .INIT_4F(256'h2C354444444444342424859B8D763408CD6C77245469AE8834554434345439CE),
    .INIT_50(256'hAB4C253434443418CEC93444657A7D6644443485D8D8D76A7D6744444444A5AC),
    .INIT_51(256'h24749B6D562334444434858BBEB985AC3B454434F7BDE9344444444444442485),
    .INIT_52(256'h4459BEA824345439CED94428BDC93444646A7D67A5ACEA44497D67A5ACEA4534),
    .INIT_53(256'h4444444444444434B6BD2B4444F7CD6C7624545AAE983439BEB92434446A8D76),
    .INIT_54(256'hBDC934445418CE3B5624748B6D66444434344428BDB944444407CDFB24232444),
    .INIT_55(256'h7D6AADA934444444D6BC6C09BD3C563454499C8C2BC79C7C8D784444545A8D5A),
    .INIT_56(256'h4444289D973444444444443496BC0B3444444444343424B6AC4C56444444657A),
    .INIT_57(256'h4345444444444444444444443434344444444444444434747A6D554444444444),
    .INIT_58(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_59(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_60(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_61(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_62(256'h44444444444444444444444444443408CD5C6544444444444444444444444444),
    .INIT_63(256'h39DE5C869B5CB79B5C25A5CC1B35758BCE0A399DC9392B46443417AD87648A4C),
    .INIT_64(256'h2B344444444444444434D6DD1B34444444444444444444444434C6BCDE9DD9A6),
    .INIT_65(256'h4428DEBE88444444444434A6DD4C44444444444444444444444444444434B6CD),
    .INIT_66(256'h444444443417CEA9344444445469EEDEC9344444444444444444444444444444),
    .INIT_67(256'h764485E8E8E8D808ACBEC93475E8E87BCE2AD8E876444418DE5CA7F8BCAE8844),
    .INIT_68(256'h9B9D873434C6BCADFAA7A7A7654424548B7D36233434243444F7CD7DE9A7A7A7),
    .INIT_69(256'h7CF9A7A76634747ACE1AA7C76BDE1B4544444434B6CC5D564444656ACEFA86C7),
    .INIT_6A(256'h39CE4C773444444444444449EEAE7844444444444428EEBEB8344444445439CE),
    .INIT_6B(256'h5644445448CE1B35444444444434C6ACAEC94544557576767676767665454475),
    .INIT_6C(256'h66345449DE4CB89618CD0B3469BE882324243317CEA9A6ACCEAD8CCDAE98396D),
    .INIT_6D(256'h38AE88444475A7A7A7964ACEC93434C6BCBE2BA7B78B9E67A47B3BE8098BDE6D),
    .INIT_6E(256'hBC6DA8A77634C6CD0B344444647A9E67D6CD4C97B749CD9E9834444444444444),
    .INIT_6F(256'hA7A7A7C7AC7D764434D7CD6D5624A6BD1B44444418DE5CA7C74AD9345496A7F7),
    .INIT_70(256'h4428DE5CB7D78BCEEA34B5BCDE5C5644445A9D87599D7734444434A6CDFB5496),
    .INIT_71(256'h3A77547ACEB93434D7CD0B345428DE5CA7D79BDEFA45444444444444B6CD3C45),
    .INIT_72(256'h3C4544445438DE4CA7C77ADEFB4544444485AB7D664444444439DE6CC8A7B708),
    .INIT_73(256'h9A7D67444434758BBEB93434D6CD6D56B5ACCE6C45648BCE7D6744445469BDCD),
    .INIT_74(256'h28AD983444444444444444443429AD98344465D7E8E8E8D839CD5D6644444484),
    .INIT_75(256'h4444444444444444444444444444444444444444444475AC3C55444444444444),
    .INIT_76(256'h763444D6CD5CA896F8BD4C355448DEBD2BA718CD4C5644444444444444444444),
    .INIT_77(256'h2C35444444F76BD8A7E89BDEFA353408BDBD7DC818CD5C5644183BB7B74ADE7D),
    .INIT_78(256'hAC6DA8A786453418CEC93444657A8D663454969686A6E88B8D7744444444A5AC),
    .INIT_79(256'hA7D7AB8DB8A6965534857ACED92485AC3B454434F7BDE934444444444485A7E7),
    .INIT_7A(256'h34B6BC9DD9A739DD6C564428BEC93444646A7D67A5ACEA44498D67A5ACEB3575),
    .INIT_7B(256'hF955444444444434B6CD2B4444F7BDBD7DC818CD5C5634A6AC9DC896C78B8D76),
    .INIT_7C(256'h6C6744445418CECE5CB729CD2B454475A7A708BC9D77444444C6BC6DC8A6B719),
    .INIT_7D(256'hBDCD4C5644443495ABAE984449CEFA453418CDADC9646ACE7C66444444E6BDCD),
    .INIT_7E(256'h4444289D973444444444443496ACFB4544444475A7A7A7A649CE1B55444444F7),
    .INIT_7F(256'h434544444444444444444444444444444444444444444474795C554444444444),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire [5:5]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h1FE7F0F8030700007000000180300037C718FE130001C0000000000000000000),
    .INITP_02(256'hFC6187C7F1867E00C7F07E7E0FCC0C830E00C000C01C0300F0FC060F81F0C01F),
    .INITP_03(256'h83E1BC3E07C7F00000000180C0061FE0C386638303F0303F9863E0063E186C09),
    .INITP_04(256'h000000C030041FE0C186338386F1F01F8067F07E1F1864C9FE718407F9867F81),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h000000000300000060000000C030000000001000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000200000000001800000000000000000000),
    .INITP_08(256'h0000000000000000000001808006000000000000000000000000C00000000000),
    .INITP_09(256'h000000C030040000C00000000000000000060006000000000000040000006180),
    .INITP_0A(256'h00000000000000000000000000000000000000000000000000000000000FFC00),
    .INITP_0B(256'h000000000180000038000000C060000000001000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000600000000000E00000000000000000000),
    .INITP_0D(256'h0000000000000000000001818006000000000000000000000001C00000000000),
    .INITP_0E(256'h000000C0300C0000600000000000000000060006000000000000060000006180),
    .INITP_0F(256'h00000000000000000000000000000000000000000000000000000000000FFC00),
    .INIT_00(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_01(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_02(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_03(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_04(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_05(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_06(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_07(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_08(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_09(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0A(256'h45444444444444444444444444443407DD4C5544444444444444444444444444),
    .INIT_0B(256'hCE5C8734D6BCCE9DA8344418BDA834954ABDCEBDCEBD0B454434F6BDA853696D),
    .INIT_0C(256'hAE7734444444444444546ABE98444444444444444444444444959BAEF95ACDDE),
    .INIT_0D(256'h446ADE5C5644444444444475F8B844444444444444444444444444444444646A),
    .INIT_0E(256'h444444444485BC3C454444444407CD9D98344444444444444444444444444444),
    .INIT_0F(256'hFA24D6CDCECECECEBDDE1B25C6CDCECEBDCEDECEB934445408ACDECE7DB84444),
    .INIT_10(256'h7DA834444444B66ABDCEDECEB83444759B8D5644444444444454D78BCDCECECE),
    .INIT_11(256'h7BBDCECEC93444955ABDCECEAD1A5644444444444449CEC93444347549BDCECE),
    .INIT_12(256'h9C1B4534444444444444447BDE4C56444444444444F7CD8D87344444444454E7),
    .INIT_13(256'h3544445439DE1B4544444444444434957B4C56444434343434343434444444A5),
    .INIT_14(256'h3444446518ACCECECECEFA75AC7D6644444434B6CD2B34B609B896F8B8557A3C),
    .INIT_15(256'h38AE88443418EECECECECEBEC9344444A65ABDCECECE8D67746ACDCECEBD3B76),
    .INIT_16(256'hBDCDCEDEEA14C6CD0B344444647A9E77855ABDCECEBE4C974444444444444444),
    .INIT_17(256'hDECECECECE7D7634A6ACAE983434A6BD1B4444446428BDCECE9DB8346479DECE),
    .INIT_18(256'h345418ACCECE9DFA4534B5BCCEEA3444445A8D876A8D6644444434A6CDFB849B),
    .INIT_19(256'h6D67C6CD5C564434D7CD0B34446418ACCECEADFA5544444444444444B6CD3C45),
    .INIT_1A(256'hD9344444447528BDCECEAD0A664444444485AB6D66444444446518ACCECECECE),
    .INIT_1B(256'h9A7D6744445428DE2B4544445449CEFA95ABCEEA344438DE5C46444444F7CDBE),
    .INIT_1C(256'h9B3C454444444444444444443429AD983444A5BCDECECECECECDAEA834444484),
    .INIT_1D(256'h4444444444444444444444444444444444444444444475AC3C55444444444485),
    .INIT_1E(256'h44444454D79CCECECE9DEA3554489D2AACCECE6C973444444444444444444444),
    .INIT_1F(256'h2C35444444B67BCDCECE9DFA55443408ADF95ACECE6C873444D7ACCECEBE4B87),
    .INIT_20(256'hBDCDCEDE4C463418CEC93444657A7D665418BDDECECECECE1B4544444444A5AC),
    .INIT_21(256'hDECEBDBDCEDE6C56746ACE0A453496AC3B454434F7BDD934444444445438DECE),
    .INIT_22(256'h3444C67BCECEBE4B77345428BDC93444646A7D67A5ACEA44498D67A5ACEA3418),
    .INIT_23(256'h2B55444444444434B6CD2B444407BD0A6ACECE6C97344444B66BCDCECECE7D76),
    .INIT_24(256'h0A3544445428ADF98BCECE6C87343408DECECE8DD94544444444E79BCECECEBE),
    .INIT_25(256'h9BCED9344444756ACEEA3534858BBEC934F7CD8D773428DE5C55444444858BCE),
    .INIT_26(256'h4444289D973444444444443496ACFB4544444417DECECECEBDCE8D7744444485),
    .INIT_27(256'h434544444444444444444444444444444444444444444474795C554444444444),
    .INIT_28(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_29(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_30(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_31(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_32(256'h4544444444444444444444444444445586654444444444444444444444444444),
    .INIT_33(256'h865534444475967644444455967644345475F7BDFA6555444444658655447576),
    .INIT_34(256'hCD2C35444444444434E6DD2B4544444444444444444444444465967634548686),
    .INIT_35(256'h4428EEEB243444444444444424344444444444444444444444444444444434C6),
    .INIT_36(256'h44444444444438AE884444444455867645444444444444444444444444444444),
    .INIT_37(256'h6544658686868686868666456586868686868686554444444475868665344444),
    .INIT_38(256'h6534444444443454868686A76644445586864544444444444444346586868686),
    .INIT_39(256'h6586868665444434548686867645444444444444446596664544443454869686),
    .INIT_3A(256'h754544444444444444444449DEDA243444444444445586764544444444444434),
    .INIT_3B(256'h3444444465866544444444444444443465654444444444444444444444444444),
    .INIT_3C(256'h4444444444758686868665558676454444444455867645342434342413A5ACFA),
    .INIT_3D(256'h7586554444759686868686866544444434548686868686554465868686764534),
    .INIT_3E(256'h8686868665446586664444445475865544558686868655344444444444444444),
    .INIT_3F(256'h8686868686765544759676444444558676444444444485868676554454759686),
    .INIT_40(256'h4444447586867644444455868655444444758655758655444444445586665485),
    .INIT_41(256'h754575966644444465866644343434A5AB6D7744444544444444444455867645),
    .INIT_42(256'h5544444444444475868676454444444444548676554444444444447586868686),
    .INIT_43(256'h8576554444548686654444444465967655868655444465867645444444558686),
    .INIT_44(256'hBDC9344444444444444444443429AD9834445586868686868686865544444454),
    .INIT_45(256'h4444444444444444444444444444444444444444444475AC3C554444444434F7),
    .INIT_46(256'h4444444434658686867655445475764575868665444444444444444444444444),
    .INIT_47(256'h7645444444446586868676444444446586455486866544444444758686865534),
    .INIT_48(256'h86868686764544658665444455757644B6CC7DA88676965A8D98444444445586),
    .INIT_49(256'h9686868686867645659686454444558676454434E7CDEA244444344444759686),
    .INIT_4A(256'h4444346586868655344444758665444454758655558665447586555586654465),
    .INIT_4B(256'h6545444444444444558676444407BDB9548686654444444434658686967B8D76),
    .INIT_4C(256'h6544444444758645658686654444446586868676444444444444447586868686),
    .INIT_4D(256'h28CEEA3444446596865544444475967644658676454465867645444444447586),
    .INIT_4E(256'h4444289D973444444444443496ACFB4544444475868686868686765544444444),
    .INIT_4F(256'h434544444444444444444444444444444444444444444474795C454444444444),
    .INIT_50(256'h4444444444444444444444449E9E9E9E9E9E9E9E9E9E44444444444444444543),
    .INIT_51(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_52(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_53(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_54(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_55(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_56(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_57(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_58(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_59(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5A(256'h4444444444444444444444444444444434444444444444444444444444444444),
    .INIT_5B(256'h344444444434344444444444344444444424A5BCEA2444444444443444454434),
    .INIT_5C(256'h28CEEA4444444444A6BC7D664444444444444444444444444444343444443434),
    .INIT_5D(256'h44859BAD2AC85544444444444444444444444444444444444444444444444444),
    .INIT_5E(256'h444444444434B6CD1B3544444444343444444444444444444444444444444444),
    .INIT_5F(256'h4445443434343434343444444434343434343434444444444434343444444444),
    .INIT_60(256'h4444444444444444343434344444444434344444444444444444444434343434),
    .INIT_61(256'h4434343444444444443434343444444444444444444434444444444444343434),
    .INIT_62(256'h4444444444444444444444A59B9D1AB845444444444434444444444444444444),
    .INIT_63(256'h4444444444344444444444444444444444444444444444444444444444444444),
    .INIT_64(256'h44444444443434343434444434444444444444443444445575453434545A9D77),
    .INIT_65(256'h4434444444443434343434344444444444443434343434444444343434344444),
    .INIT_66(256'h3434343444444434444444444434344444443434343444444444444444444444),
    .INIT_67(256'h3434343434344445443434444444443444444444444434343444444444443434),
    .INIT_68(256'h4444443434343444444444343444444444443444343444444444444434444434),
    .INIT_69(256'h444444344444444444344455C7764407CD0B2444444444444444444444344444),
    .INIT_6A(256'h4444444444444434343434444444444444443434444444444444443434343434),
    .INIT_6B(256'h3434444444444434444444444444344444343444444444344444444444443434),
    .INIT_6C(256'h6D56444444444444444444342429AD9834444434343434343434344444444444),
    .INIT_6D(256'h4444444444444444444444444444444444444444444475AC3C4534444444747A),
    .INIT_6E(256'h4444444444443434344444444444344434343444444444444444444444444444),
    .INIT_6F(256'h4444444444444434343434444444444434444434344444444444343434344444),
    .INIT_70(256'h34343434444445443444444444343434B5BC6D5624243428DEFA344444444434),
    .INIT_71(256'h343434343434444444343444444444344444444495AC6D773475C78644443434),
    .INIT_72(256'h4444444434343444444444443444444444343444443444444434444434444444),
    .INIT_73(256'h4444444444444444443444444407BDB9343434444444444444443434546A8D76),
    .INIT_74(256'h4444444444443444443434444444444434343444444444444444444434343434),
    .INIT_75(256'h858B9DC945444434344444444444344444443434444444344444444444443434),
    .INIT_76(256'h4444289D973444444444444408CDDA4444444444343434343434344444444444),
    .INIT_77(256'h43454444444444444444444444444444444444444444446459AE983444444444),
    .INIT_78(256'h4444444444444444444444449E9E9E9E9E9E9E9E9E9E44444444444444444543),
    .INIT_79(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[14]),
        .I1(addra[12]),
        .I2(addra[13]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000001C00000060C0000000000000000000000000000000000000),
    .INITP_01(256'h000000000000000000000000000000FC00000000000700000000000000000000),
    .INITP_02(256'h0000000000000000FFC001E0001E00000000000000000000000F800000000000),
    .INITP_03(256'h00000070303C00003C000000000000000006000600000000000003E000007F80),
    .INITP_04(256'h00000000000000000000000000000000000000000000000000000000000FFC00),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000007800000000000000000000000000000000),
    .INITP_07(256'h0000000000000000FFC001E0001E000000000000000000000007000000000000),
    .INITP_08(256'h000000301018000018000000000000000002000200000000000001C000001E00),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_01(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_02(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_03(256'h4444444444444444444444444444444444445496764444444444444444444444),
    .INIT_04(256'h6459BEB8344444759B9E88344444444444444444444444444444444444444444),
    .INIT_05(256'h44447529AC4C5544444444444444444444444444444444444444444444444444),
    .INIT_06(256'h4444444444445496864544444444444444444444444444444444444444444444),
    .INIT_07(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_08(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_09(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0A(256'h4444444444444444444444448539AD1B55444444444444444444444444444444),
    .INIT_0B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0C(256'h444444444444444444444444444444444444444444444465496C3A3A8BADC934),
    .INIT_0D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_10(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_11(256'h4444444444444444444444858BAD9CCE6D774444444444444444444444444444),
    .INIT_12(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_13(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_14(256'h76444444444444444444F78C7CBDBEA834444444444444444444444444444444),
    .INIT_15(256'h8B8C8C8C8C8C8C8C9C6C87344444444444444444444475BCBE7C7CFA44446596),
    .INIT_16(256'h4444444444444444444444444444444444444444444444444444444444443496),
    .INIT_17(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_18(256'h444444444444444444444444444444445408ADAD7C7C8CBD6C87444444444444),
    .INIT_19(256'h444444444444444444444444444444444444444444F7BDAD8CAD9DA834444444),
    .INIT_1A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1B(256'h4444444444444444444444444418DECA444444444444444444444444658A9E76),
    .INIT_1C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1D(256'h34A69BCE9D3B6544444444444444444444444444444444444444444444444444),
    .INIT_1E(256'h444439BE983444444454289CCD6C764444444444444444444444444444444444),
    .INIT_1F(256'h434544444444444444444444444444444444444444444434C6BCBD7CE9444444),
    .INIT_20(256'h4444444444444444444444449E9E9E9E9E9E9E9E9E9E44444444444444444543),
    .INIT_21(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_22(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_23(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_24(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_25(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_26(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_27(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_28(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_29(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2B(256'h4444444444444444444444444444444444444434444444444444444444444444),
    .INIT_2C(256'h3475E87644444454D79834444444444444444444444444444444444444444444),
    .INIT_2D(256'h4444344444454444444444444444444444444444444444444444444444444444),
    .INIT_2E(256'h4444444444444434444444444444444444444444444444444444444444444444),
    .INIT_2F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_30(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_31(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_32(256'h4444444444444444444444443444444544444444444444444444444444444444),
    .INIT_33(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_34(256'h444444444444444444444444444444444444444444444444A6192A2A1A973444),
    .INIT_35(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_36(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_37(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_38(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_39(256'h44444444444444444444444496293A0976344444444444444444444444444444),
    .INIT_3A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3C(256'h34444444444444444444C63A3A2A097644444444444444444444444444444444),
    .INIT_3D(256'h293A3A3A3A3A3A3A3A1A76444444444444444444444465092A3A3AD844444434),
    .INIT_3E(256'h4444444444444444444444444444444444444444444444444444444444444485),
    .INIT_3F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_40(256'h444444444444444444444444444444444444A6193A3A2AF96644444444444444),
    .INIT_41(256'h44444444444444444444444444444444444444444444A6293A2AB84544444444),
    .INIT_42(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_43(256'h44444444444444444444444444B6198744444444444444444444444455F80965),
    .INIT_44(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_45(256'h443485083AF95544444444444444444444444444444444444444444444444444),
    .INIT_46(256'h4444C709764444444454F73A0976444444444444444444444444444444444444),
    .INIT_47(256'h43454444444444444444444444444444444444444444444444B6293AB8444444),
    .INIT_48(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_49(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_50(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_51(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_52(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_53(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_54(256'h4444344445444444343444444444444444444444444444444444444444444444),
    .INIT_55(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_56(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_57(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_58(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_59(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5C(256'h4444444444444444444444444444444444444444444444443434343434344444),
    .INIT_5D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_60(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_61(256'h4444444444444444444444443434243444444444444444444444444444444444),
    .INIT_62(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_63(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_64(256'h4444444444444444444534242424344445444444444444444444444444444444),
    .INIT_65(256'h3424242424242424243444454444444444444444444444342424243444444444),
    .INIT_66(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_67(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_68(256'h4444444444444444444444444444444444443434242434344444444444444444),
    .INIT_69(256'h4444444444444444444444444444444444444444444434342434344444444444),
    .INIT_6A(256'h4544444444444444444444444444444444444444444444444444444444444444),
    .INIT_6B(256'h4444444444444444444444444534344444444444444444444444444444343444),
    .INIT_6C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6D(256'h4444443424344444444444444444444444444444444444444444444444444444),
    .INIT_6E(256'h4444343444454444444434243444444444444444444444444444444444444444),
    .INIT_6F(256'h4345444444444444444444444444444444444444444444444434342434444444),
    .INIT_70(256'h4545454545454545454545444444444444454545454545454545454545454543),
    .INIT_71(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_72(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_73(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_74(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_75(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_76(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_77(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_78(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_79(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_7A(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_7B(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_7C(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_7D(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_7E(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_7F(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [14:0]addra;
  wire clka;
  wire [7:7]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_01(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_02(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_03(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_04(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_05(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_06(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_07(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_08(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_09(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0A(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0B(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0C(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0D(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0E(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0F(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_10(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_11(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_12(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_13(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_14(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_15(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_16(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_17(256'h4345454545454545454545454545454545454545454545454545454545454545),
    .INIT_18(256'h4343434343434343434343434343434343434343434343434343434343434342),
    .INIT_19(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1A(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1B(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1C(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1D(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1E(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1F(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_20(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_21(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_22(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_23(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_24(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_25(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_26(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_27(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_28(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_29(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_2A(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_2B(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_2C(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_2D(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_2E(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_2F(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_30(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_31(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_32(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_33(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_34(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_35(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_36(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_37(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_38(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_39(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_3A(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_3B(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_3C(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_3D(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_3E(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_3F(256'h3243434343434343434343434343434343434343434343434343434343434343),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(addra[14]),
        .I2(addra[12]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFFFFFFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_15(256'hFFFFFFFF9FFFFFFFFFFFFCFFCF3FF1FC73C7BFFFF13F3FFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_17(256'hFFFF3FFFFF9FFFF1FFFFFE0FF9E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hFFFFFFC7D7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FE79FF1FF8FFE1),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1A(256'hF83E1F87AFFFFFFFFFFFFCFFAF7FEDFBB5BB6788FCFFDFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hF18E7018063881E018078081F80E1EFBEEFFFFFFFFFFFFFE0F038020FC070FE0),
    .INIT_1C(256'h7FFEBFFFFFAFFFEDFFFC7EF7F7DEE001F0781F07C1E200C0F80E0F80E0E788E3),
    .INIT_1D(256'hFFFFFFBBD7DDFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFFFFFFFDEFEB6FF6FFAFFFF),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h77DEEF7DFFFFFFFFFFFFE09F5FAFEDF45E6AFDAAF4BFDFFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hF5B7B7DBFBBAFEEFDBFF7EBEEFEEFFADD8FFFFFFFFFFFFFDF6FDFFAFBFF76FDF),
    .INIT_21(256'hFFFEBFFFFFAFFFD3FFFBFE8FF5E2EFE7ECBA5FD7F6E9FEBF77E9F77E9F7B66DB),
    .INIT_22(256'hFFFFFF67D7E5FFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFD1FEB2FF5FFAFFE1),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_24(256'h6D5ED6D5D7FFFFFFFFFFEFDEFFD7EDF55A5627EAF4BFDFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hF5DFB5FF5FBA837F5FDEDA836DEEED7FB7FF3FFF3FFFFFFB5AB7A07CDFD777B6),
    .INIT_26(256'hBFFEBFFFFFAFFFFFFFFABEBFFDFAEC1AEAD75FDFB6EBD7CDADEB1ADEA5BBE75B),
    .INIT_27(256'hFFFFFF5FD7FFFFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFD7FEBFFFFFFAFFFF),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_29(256'hEBBEA7BAD7FFFFFFFFF5FB7EBFD7F5F55D6FAE7FB4BFDFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hF5EAB5FF5FBAFDBF5FDFBAFDABEDAD0ABFFEDFFF5FE5F97AEABEAFFF5FD75BAF),
    .INIT_2B(256'hBEEEFBDDF32CE7FFFFF55EBFEBFAF5FB5B4D5FCBA6EBD7FEAB66EABEEEBAA77B),
    .INIT_2C(256'hFFFFFF5FD7FBE7EAE0BA5F4BC2EAFF5EF609EF32EEF32923D7A6B3EF7732BEFE),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2E(256'hEBFEBDDAEBFFFFFFFFF5E7DDBFEBFFFADFBBE7333FFFDFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hF5F4B5FF5FBAFEBF5FDDFAFEADED2D76B7FDBFFF2FEDFB7AEAC5D7FFEFD74BF7),
    .INIT_30(256'h8DB6EDB76FEBB7FFFFED5EBFEBFAFEFD57BB53EBEEEBD7FDAFE5EEBE5EBFA4AB),
    .INIT_31(256'hFFFFFF5FD7FBF60AEAD67F4BBBEA1C536DEB377EDBB7EBFFD7DEB60F677EBB61),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_33(256'hFDFEBDEAEBFFFFFFFFF5E85D7FEBFFEDFE87BDD6FFFFDFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hF5FFB5FF5EFEBAE7DDF57AFEB7ED56495DFB7BFBDBE5FD7AEB7BD7F36CF755DE),
    .INIT_35(256'hF2EAF2D96B6AE7FFFFEBAEBFD7FAFB7DBFBB55AF76EBD7F77465EEBE5EDD24EB),
    .INIT_36(256'hFFFF4F5FD7FAF6FB6B65F15DAAEBEBFDEA6AEAB6B6AD6ECFD7EAB7FF5ED6F6AF),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_38(256'hF7FEBD32FDFFFC0FFF8C3FFD7FEBFFD5F85F73D7FFFFDFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hF5FBB5FF5ED6FAE6DDF57AFEAFEBD74967E4FBF3EDFFFFFB1B7BEBECEBC75EDE),
    .INIT_3A(256'hBA0ABAFDEBAA1FFFFFFFFEBFD7FAFD7EEFB74CB556EBD7DCFBE5EEC65FD925CF),
    .INIT_3B(256'hFFF9F4DFD7FA3B7D5BBBA5556AEBEBF9E36AEABAAEEFAF5FD7F4B7FF5EBABEBE),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_3D(256'hFAFEBD6EF5FFFDF7FF7FBCFD7FEBFFDBA72EDF3B3FFFDFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hF5F5B5FF5FBAFEBF5FDDFAFEABEA155D7FEDFFFFF7FFFFFBF6C5EFDB6A7F5AA7),
    .INIT_3F(256'hBBFABBFFBBABF7FFFFFFFEBFFFFAFFBF5FBBCEB5D6EBD7B3FA65EF3E5EDAA54F),
    .INIT_40(256'hFFEF53BFD7FBBD7D57DBA6F55AEBEBEF7FEAEEBAAFCFAF5FD7FFB7FF5EBAD5BE),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_42(256'hFD7EBFB6FFFFFE1FFF957FFD7FEBFFFEA4AF977FBFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hF5ECB5FF5FBAEEBF5FDFBAFEBBEBFDBD79F6F807E9FFFFFA9FBAF5DFAAFDFF2F),
    .INIT_44(256'hBC2AFBFFABAA9BFFFFFFFEBFAFFAFEDF5F6DCAB6FEEBD7AFF5E7EFF67EBAA5FF),
    .INIT_45(256'hFFF4EEDFD7FA7EBFB7BBAEBA5AEBEFD9FFEAEEBAAECFAF5FD7F4B7FF5EBADFFE),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_47(256'hFE9EBEB6FAF97FFFC7F5FFFD7FEBFFEDA697D7F5FFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hF5DBB5FF5FBAFDBF5FDEBAFDBBE6092D79FB7FFBB7F1FC7B7FBAF5DBEAFC40AF),
    .INIT_49(256'hBFEADAFDEBAAEBFFFFFFFEBFAFFAFF5F5FD5F7BABAEBD7AFED6AEBFEAEBDA5FF),
    .INIT_4A(256'hFFFFFF5FD7FBFFDEAFEDB9BAFB6BEBB7FFEB6ABAAEEFAF5FD7EAB7FF5EBAF0BE),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_4C(256'h60D8C6CDFAFBFFFFB7F5FFFFBFFBFFFC64BAD2D57FFEDFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'h05B7B618C7BAE37F5C1FE2A36C65EAF976FE98076FEDFB7D86C6FEEC5F075FB0),
    .INIT_4E(256'hBA1AE6A36C6B9BFFFFFFFEBF5FFAE06F5EB6B5BBBB1BD7B02B6B1BFEB1FDA5FE),
    .INIT_4F(256'hFFFFFF5FD7FBF06EEF56B5BBBB9B1BF03FEB9B42D1AFAF5F11DEB7FC46BAC0BE),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_51(256'hDFEFFF7BFD7B7FFFB7F3FFFEBFD7FFD3D76B7EF57FFEDFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'hFDAFBBDBFBBABEFF5BF73EBEF7E5FD0176FF5FFF5FEDFB7E7F7DFAF7BCF75FCF),
    .INIT_53(256'hB9F69DBEF3EAF7FFFFFFFEBF5FFAFFEF5DBB3DBBFDF7D7DFBB6DF7FEDE7FA5FE),
    .INIT_54(256'hFFFFFF5FD7FBEFEF6EDAB5BDBA76F3CFBFEB77BECF6FAF5EFEB6B7FBFABABFBE),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_56(256'h601807C7FD7CFFFFBFFFFFFFDFB7FFCC3CF399E6FFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'h039E7C3C067CC1FF9C07C0C3FC13F3FFF9FFBFFFBFEFFCFF8787FCF87F079FF0),
    .INIT_58(256'h7E1F23E1FC3D8FFFFFFFFEBEBFFAE00F3C7C8E7C7E1FCFF0679F5FF9F1E3DBF2),
    .INIT_59(256'hFFFFFF5FD7FBF01F7E7CCE7E7D8F0FF07F9A8FC2F0F399B3018E7EFC073DE0BE),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5B(256'hFFFFFFFFFFBFFFFFDBFFFFFF6FAFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AFFFFFFFFFFF47FFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFEBEBFFAFFFFFFFFFFFFFFFFFFFFFFF2DFFFFFFFFFFF),
    .INIT_5E(256'hFFFFFF5FD7F7FFFFA7FFFFFFFFFFFFFFFFFAFFFAFFFFFFFFFFFFFACFFFFFAEFF),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hFFFFFFFFFE7FFFFFEDFFFFFFAF5FFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4DFFFFFFFFFFFB7FFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFF7FDFFEE67FDEFFFFFFFFFFFFFFFFFFFFFFF7BFFFFFFFFFFF),
    .INIT_63(256'hFFFFFFF3D7DDFFFFDDFFFFFFFFFFFFFFFFFBFFFAFFFFFFFFFFFFFBEFFFFFBFBF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFFFFFFFFCF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFF001FFE0FFFC0FFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFF),
    .INIT_68(256'hFFFFFF83C7C3FFFFE1FFFFFFFFFFFFFFFFF8FFF8FFFFFFFFFFFFFC0FFFFFC07F),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_6F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_70(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_71(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_72(256'hBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_73(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_74(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_75(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_76(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_77(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized3
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000018000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000038000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h00000000600000000000030030C00E038C3860000EC0C0000000000000000000),
    .INIT_16(256'h0000000000000000000000000000007007000000000000000000000000000000),
    .INIT_17(256'h0000C0000060000E000001F0061F000000000000000000000000000000000000),
    .INIT_18(256'h0000003838180000000000000000000000000000000000003E018600E007001E),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h07C1E078700000000000030070E01E07CE7CF8770FC0E0000000000000000000),
    .INIT_1B(256'h0E718FE7F9C77E1FE7F87F7E07F1E1FC1F00000000000001F0FC7FDF03F8F01F),
    .INIT_1C(256'h8001C0000070001E000381F80E3F1FFE0F87E0F83E1DFF3F07F1F07F1F18771C),
    .INIT_1D(256'h0000007C383E00000000000000001C0000000000000000003F01CF00F007001F),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h8FE1F0FE3000000000001F60E0701E0FE7FDFE770FC0E0000000000000000000),
    .INIT_20(256'h0E79CFE7FDC77F1FE7F8FF7F1FF1E1DE3F00000000000003F9FE7FDFC3F8F03F),
    .INIT_21(256'h8001C0000070003C000781F00E1F1FFE1FC7E0F83F1FFF7F8FF7F8FF7F9CFF3C),
    .INIT_22(256'h000000F8381E00000000000000001C0000000000000000003E01CF00E007001F),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h9EE1F9EE3800000000001FE1C0381E0EE7EDFE370FC0E0000000000000000000),
    .INIT_25(256'h0E39CE00E1C77F80E039E77F9E71F3867800C000C0000007BDCE7F83E038F879),
    .INIT_26(256'hC001C000007000000007C1C00E071FE71DEEE0F87F1C3833DE77FDE77BDCFFBC),
    .INIT_27(256'h000000E0380600000000000000001C0000000000000000003801C00000070001),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h1C41D9C738000000000E0781C0380E0EE3FC77FFCFC0E0000000000000000000),
    .INIT_2A(256'h0E1DCE00E1C703C0E039C703DC73F3F77001E000E01E07871DC77000E038FC70),
    .INIT_2B(256'hC1F1FC3E0FF3F800000EE1C01C070E07BCFEE0FC7F1C3801DCFF1DC771DDFFBC),
    .INIT_2C(256'h000000E038061FF71FC7E0FC3F1DFFBF0FF7F0FF1F0FF7FC3879CFF0F8FF7F01),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h1C01C3E71C000000000E1FE3C01C0007E1FC3EFFC000E0000000000000000000),
    .INIT_2F(256'h0E0FCE00E1C701C0E03B8701DE73F3FB7803C000F01E07871DFE38007038FC38),
    .INIT_30(256'hF3F9FE7F9FF7F800001EE1C01C070703B87CECDC771C3803DC7E1DC7E1D9FFFC),
    .INIT_31(256'h000000E038060FF71DEFE0FC771DFFBF9FF7F8FF3FCFF7FC3839CFF0F8FF7F9F),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0E01C3F71C000000000E1FE3801C0013C1F87E3B0000E0000000000000000000),
    .INIT_34(256'h0E07CE00E1FF7DDFE3FB8701CFF3BBFFBE0787FC3C1E03871CFC380FF3F8EE3F),
    .INIT_35(256'hFF1DCF279CF71800001C71C038070783F07CEEDCEF1C380F8FFE1DC7E1FBFFFC),
    .INIT_36(256'h0000F0E038070F079CFE6EEE771C1C039DF71DCF79DEF7FC381DCE00E1EF39DF),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0E01C3FF0E0003F0007FC303801C003BE7E0FC3B0000E0000000000000000000),
    .INIT_39(256'h0E07CE00E1FF7DDFE3FB8701DFF73BFF9E1F07FC1E000007FCFC1C1FF7F8E73F),
    .INIT_3A(256'hC7FDC7039C77E000000001C038070381F078FFCEEF1C383F07FE1DFFE0FFFEFC),
    .INIT_3B(256'h001FFBE03807C783BC7C7EEEF71C1C079CF71DC771DC76EC380FCE00E1C771C1),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0701C39F0E0003F800FFC303801C003F7FF1F0FFC000E0000000000000000000),
    .INIT_3E(256'h0E0FCE00E1C761C0E03B8701DC77FBEF861E00000E000007F9FE1C3CF780E778),
    .INIT_3F(256'hC7FDC701DC77F800000001C0300701C0E07C7FCEEF1C387C07FE1CFFE1FF7EFC),
    .INIT_40(256'h001FBFC03807C383B83C7FCEE71C1C1F80771DC770FC76EC3807CE00E1C73BC1),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0381C1CF060001E0006E8003801C001F7FF1F8FFC000C0000000000000000000),
    .INIT_43(256'h0E1FCE00E1C771C0E039C701DC77FB6F860F07F81E00000761C70E387703FFF0),
    .INIT_44(256'hC3DDC701DC777C00000001C0700701E0E0FE7FCFC71C38700E7E1C0FE1DF7E0C),
    .INIT_45(256'h000F11E0380781C1F87C7FC7E71C1C3E00771DC771FC76EC380FCE00E1C73F81),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h01E1C1CF07078000380E0003801C001E7DF9B81B0000C0000000000000000000),
    .INIT_48(256'h0E3DCE00E1C763C0E039C703DC7FFFFF860787FC780E038781C70E3C7703FF70),
    .INIT_49(256'hC01DE7039C771C00000001C0700700E0E0EE7BC7C71C38701EF71C0771DE7E0C),
    .INIT_4A(256'h000000E0380600E1F07E7FC7C79C1C7800779DC771DC76EC381DCE00E1C70FC1),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h9FE7F9FE07078000780E0001C01C001FFFDDFF3B8001E0000000000000000000),
    .INIT_4D(256'hFE79CFE7F9C77F80E3F8FF7F9FFE1DFF8F01E7F8F01E0783F9FF071FE3F8E07F),
    .INIT_4E(256'hC7FDFF7F9FF7FC00000001C0E0071FF0E1CF7BC7C7FC387FDCF7FC077F9E7E0D),
    .INIT_4F(256'h000000E038060FF1F0EF7BC7C7FCFC3FC077FCFF3FDC76ECFE39CE03F9C73FC1),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'hBFF7F8FC03878000780C0001C038003FEF9CFF1B8001E0000000000000000000),
    .INIT_52(256'hFE71C7E7FDC77F00E7F8FF7F0FFE0EFF8F00E000E01E0781F8FE070FC3F8E03F),
    .INIT_53(256'hC7F9FE7F0FF7F800000001C0E0071FF0E3C7F3C783F8383FDCF3F8073F9C7E0D),
    .INIT_54(256'h000000E038061FF0F1E77BC3C7F9FC3FC077F87F3F9C76EDFF79CE07FDC77FC1),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h9FE7F8380383000070000000E0780033C30C7E190000C0000000000000000000),
    .INIT_57(256'hFC6183C3F9833E0063F83F3C03EC0C0306004000401C03007878030780F8600F),
    .INIT_58(256'h81E0DC1E03C27000000001C1C0071FF0C383718381E0300F9860E0060E1C240D),
    .INIT_59(256'h000000E038060FE0E18331818270F00F8067703F0F0C664CFE718703F8C27FC1),
    .INIT_5A(256'h00000000000000000000000000000000000000000000000000000000000FFC00),
    .INIT_5B(256'h0000000001C000003C000000F070000000001800000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000008700000000000F80000000000000000000),
    .INIT_5D(256'h0000000000000000000001C1C00700000000000000000000000DE00000000000),
    .INIT_5E(256'h000000E0380E00007800000000000000000700070000000000000730000071C0),
    .INIT_5F(256'h00000000000000000000000000000000000000000000000000000000000FFC00),
    .INIT_60(256'h00000000018000001E00000070E0000000001800000000000000000000000000),
    .INIT_61(256'h000000000000000000000000000000FE00000000000780000000000000000000),
    .INIT_62(256'h0000000000000000FFE001F9803F00000000000000000000000FC00000000000),
    .INIT_63(256'h0000007C383E00003E000000000000000007000700000000000007F000007FC0),
    .INIT_64(256'h00000000000000000000000000000000000000000000000000000000000FFC00),
    .INIT_65(256'h00000000000000000000000030C0000000000000000000000000000000000000),
    .INIT_66(256'h000000000000000000000000000000FC00000000000000000000000000000000),
    .INIT_67(256'h0000000000000000FFE001F0003F000000000000000000000007800000000000),
    .INIT_68(256'h0000007C383C00001E000000000000000007000700000000000003F000003F80),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000002),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h4000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized4
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000028000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'h3FFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_10(256'hFFFFFFFF9FFFFFFFFFFFFCFFBFFFFBFB73D7BFFFF7BFBFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFFDFFFFF9FFFF7FFFFFEEFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h3FFFFFD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDFE79FF3FF9FFED),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_15(256'hFCFC7FCF5FFFFFFFFFFFFEFF560FFBF2BD739F07E43E9FFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hFEFFF80003F8A5C00007A225F43C0E2BF5FFFFFFFFFFFFFF2F4BC0C2FA0BBFF2),
    .INIT_17(256'h7FFEFFFFFF4FFFE7FFFE7CDFF8C6F031FDF87FFBF7E70063FC3D3FC3F3FE3C77),
    .INIT_18(256'h3FFFFF87EFE1FFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFF8FCBEFF3FF2FFCC),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_1A(256'h7F9C9E3FA7FFFFFFFFFFF13ED67FEBEF09D5A97BF55C8FFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hF6B4FFE1287852D7E3C7BB1CE7CC0D8DEA7FFFFFFFFFFFFCF67DDF6CB9CA77F4),
    .INIT_1C(256'h3FFD3FFFFF0FFFF3FFFD3DFFE9E3C3E2F87BBE4B81F0CF2D75BAB6DABF6AF24F),
    .INIT_1D(256'h3FFFFF33FFF9FFFFFFFFFFFFFFFFEBFFFFFFFFFFFFFFFFFFF6F8697C1FF57FEE),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_1F(256'hBA2EB4F327FFFFFFFFFFDC6FEF9FD9F6E8B267A87E1D8FFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFF44CF2AD17EEBE9B45ACACB57CD6B1CC2FF7FFFBFFFFFF8380521D8966E9FAE),
    .INIT_21(256'hBFFCFFFFFE6FFFFDFFF57D2FE9CBFE77D56AED8F7FF6199D33F061539C658ACD),
    .INIT_22(256'h3FFFFE3FFFCBFFFFFFFFFFFFFFFFC5FFFFFFFFFFFFFFFFFFE7F8E77F4FF67FEF),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_24(256'hD7CF758CDBFFFFFFFFF3F50C7F5BCBFB10B76ECC6C1CCFFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hFAFFC8FDC879403F0FA079A4A56BF32005FFDFFE5FF3FCF1757818BFDFA67BEB),
    .INIT_26(256'hBC0CE3C1F1EC0FD7FFF83D2FDDF3F53B4D3F2DFF27F99B87671F9B39E177FD95),
    .INIT_27(256'h3FFFFE07FFF4F019F739BF27DDE516C0F01C0F01E0F01803F1C9F61F6F1A00E5),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_29(256'h797F109FBBFFFFFFFFDBEEED3FD7DBF15E4A7A42BDDDFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFA97C9FDC878621F0FE54962DC69DF48EFFF6FFC4FCCF03EECCDC8FD3FA66BC5),
    .INIT_2B(256'h3A4C57DD7BAFC7FFFFEB9D1FDFF7E112F4C46DA193F95FDC3F0EEF68F2F635A5),
    .INIT_2C(256'h3FFFFE0FFFE0E5AAFD108FE1226B78CEEAF1DEAE457F5AD1FBD5E98FEE6B24F3),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_2E(256'hF9BF1AB741FFFFFFFFC3E1CD3FBBE3E8DA917292527CBFFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hFAD6C8FFC8FCF1BF8F81B97856EE26AA91F53BF783F9FB7466DB53F66C86051D),
    .INIT_30(256'hBD781C6801078FFFFFCB2D1F8BF7E3791ABA8EE83BF99BE92F1AD5017FB11051),
    .INIT_31(256'h3FEEDE0FFFE8C9D350E0A579417A460EA5BDE124F8917679FBFFEE7E7334D799),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_33(256'h54FF3D54D1FFFFE7FF61893DBFC5FFDB5EAA38F9DFFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hFAF5C8FFCBF90DD2F2E1F97D0E819B5964EFE1E3DDF2F7231CD3DBF242EE3E99),
    .INIT_35(256'h994ED52E8C6EB7FFFFD5351FB3F7F4FBD73EC32DC3F99BD001B8DCADBC969D8D),
    .INIT_36(256'h3FCC140FFFE971F5A07616445068E390115D03BBDB8B864DFBABE2FEF1882441),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_38(256'h64FF3E72C3FFF93FFF50CB1BBFC3FFB71A94497B3FFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hFAE248FFCBFDBF76D2A1F97F848E8B1983FA61EB87F3FCE519ABD1E2B350225F),
    .INIT_3A(256'h0B48F81C712C4BFFFFCF8D1FEBF7FABF07B2665C63F99B9D6932CDBF7CBB81D3),
    .INIT_3B(256'h3FC8F1FFFFF470FFCFF078979869C5CA513C48233F2CE5C5FBD9E1FEED46D65C),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_3D(256'hF37F3A6CE7FFFDCFFE9E3FFC3FC7FF99FD1CF3F45FFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hFAD6C8FFC8CD4F9F8FE0F97C1FE84A6227FAEDEDEFFFFFFB5981DDA593F8AC57),
    .INIT_3F(256'h048EF6F921AD4BFFFFFFFD1F3FF7F9DDEF94512651F99BF6E6B8C6DBBC5F86B3),
    .INIT_40(256'h3FD9875FFFF29ABBF36D5C0E4069C5EB6E3C7C57754FC655FBF661FEED32BD7B),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_42(256'hF75F3B636AF0393FFFB83E793FF3FFB647514A4F5FFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hFAF3DAFFC8797DBF8FA0197EFCFA1764A6E3FC03DBFFFFFB0057DCA37278C54F),
    .INIT_44(256'h14A2F3F8B96F51FFFFFFFD1F17F7FD5E9ED1EEA42BFD9B13FB08C301AEFC8997),
    .INIT_45(256'h3FFCE05FFFF13A1F1F6B8C4EE0E9D1E97EBFFED34CAF07C5FBD1E1FEED36567C),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_47(256'h26B86E8AFF71BE1FF7BC7FFFBFE9FFCB5C69108DBFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'hF2E9F6D1A0797A5F8B84D9223EEC0906B1F2221183E3F87153066EAE10F2899F),
    .INIT_49(256'h1D24D5285F6CA5FFFFFFFD1E8FF7E2EEAD55F1946ED59B369088C9D816A50E92),
    .INIT_4A(256'h3FF6ED1FFFEF7C0CC66CE01B912DFDECFEBBC037DC6F07C4D593E1FC6536549C),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_4C(256'h92D2D428F4773FFF0BCFFFFAFFFFFF9934D0B63AFFFC2FFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'h8232E2C988798CBF8C5141E6B9573D322FFC740A0FFAF87CA6F6E459D35E1D59),
    .INIT_4E(256'h172A9A519C0FA1FFFFFFFD1ECFF7D146EC454E1F56D7BB939C96CBE19AAE54D3),
    .INIT_4F(256'h3FFFFE5FFFE8E12C54B6189790D93967FE992E2FF0A707C8273AE1FCC9367D5C),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_51(256'h18E48BF7F2F53FFF63F3FFFDFF93FFE35EAC549C7FFDAFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h8742FDBEDA79E9FF9F02A96F7D66D69A67FC48067FEEF0BE513DF6CC59220FEE),
    .INIT_53(256'h17C98F0BE04C77FFFFFFFD1E8FF7C84EAD974991BAF3BB8458956BE154795AD0),
    .INIT_54(256'h3FFFFEDFFFE8F4863EC84E5EB1B87BF47E9EB2A1158F07CE76F4E9F1C736B97C),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_56(256'hD08DC74BFE3B7FFF63FFFFFDAFE7FF9E9CEAF7D57FFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'h07BD7A3CCD7C17FF18075386F62DE45C7DFE7FFFDFD7F87F6E89FC68BD265FD8),
    .INIT_58(256'h3916F7D6F6BA97FFFFFFFD5C5FF7D0EFFC390CBA7D27D7C9A7DEB3F4D153FDEB),
    .INIT_59(256'h3FFFFECFFFE0F83E1659F73C7AD68FD9BFD5DF335B6FF76E325C28E8CA37661C),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FC),
    .INIT_5B(256'h20180F87FA3CFFFFFBFFFFFE5E37FFCC38F3C3EAFFFF3FFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'h029E7C3C0679C1FFBC0FC1C3F813F28879FFBFFF7FDB7CFF8F87FCF87F0F3FF0),
    .INIT_5D(256'h7E1F63C1F83D0FFF003FFD7F9FEBE01F3C7C8E7CFE1FCFE0678D8FF9E1E793F2),
    .INIT_5E(256'h3FFFFE9FFFE5F01F6278CE7C7D8F0FE07F948FDF70F399B3019E7364057890FE),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FC),
    .INIT_60(256'hFFFFFFFFFFBFFFFFEAFFFFFF2E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BFFFFFFFFFFF4FFFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFDC04FFEECFF9FFFFFFFFFFFFFFFFFFFFFFFE45FFFFFFFFFFF),
    .INIT_63(256'h3FFFFEAFC7DEFFFF62FFFFFFFFFFFFFFFFF27FF47FFFFFFFFFFFF10FFFFF98DF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FC),
    .INIT_65(256'hFFFFFFFFFE7FFFFFCBFFFFFF871FFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBFFFFFFFFFFF2FFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFF806FFEDE7FA77FFFFFFFFFFFFFFFFFFFFFF13FFFFFFFFFFF),
    .INIT_68(256'h3FFFFFAFD3CDFFFF95FFFFFFFFFFFFFFFFFAFFF3FFFFFFFFFFFFF97FFFFFAA7F),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFE77FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFFBFEFFF5FFF9E7FFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFF),
    .INIT_6D(256'h3FFFFFA7D3CBFFFFF7FFFFFFFFFFFFFFFFF2FFFB7FFFFFFFFFFFFDFFFFFFDF7F),
    .INIT_6E(256'h00000000000000000000000000000000000000000000000000000000001F8002),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000002),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'hC000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized5
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000038000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'h3FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_10(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FCFFEFBFFFFB7F7FFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_12(256'hFFFF5FFFFFFFFFFBFFFFFF1FFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_13(256'h3FFFFFEFD3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFFFFFFFFFF3),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_15(256'hF87D3F873FFFFFFFFFFFFCFFDE9FEDFE6BBF4751ED3FDFFFFFFFFFFFFFFFFFFF),
    .INIT_16(256'hF29E70240A7DC3D0240FC143F81D2F9FEDFFFFFFFFFFFFFE1F878051FC0B1FE1),
    .INIT_17(256'hFFFFFFFFFF2FFFEBFFFCFDCFFEE7E01BF27DBF0BC9F60141F81E1F81E1E69967),
    .INIT_18(256'h3FFFFFA7FBEBFFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFD8FD38FFDFF2FFDE),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_1A(256'h7FFE8FFFEFFFFFFFFFFFFC7F5E3FC5F4EE0E0B9AE43EFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hF31E67DDEE7FD9F7BBF79CDDF7CFDE27E1FFFFFFFFFFFFFCFFBF7F5FFFF66FFF),
    .INIT_1C(256'h7FFE1FFFFFBFFFD5FFFC7E4FFF825FC5EB7A1EAFA9F9FEFFF7FFCF3CFCC318E7),
    .INIT_1D(256'h3FFFFFAFEBCFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFC0FD3FFE9FF6FFC3),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_1F(256'hFA5DA685DFFFFFFFFFFFF15F3FD7FBF84B9C3342E2FF7FFFFFFFFFFFFFFFFFFF),
    .INIT_20(256'hFA23F5300FFADDC1E87748BFF96F5D2FC3FFBFFF7FFFFFF86F02DF1A3A7A37CD),
    .INIT_21(256'hFFFEDFFFFFDFFFC3FFFF7E8FF4F24DFFEE1CDF5BBFFB0168E35D56B441338213),
    .INIT_22(256'h3FFFFFBFEBF1FFFFFFFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFD3FDB7FE9FF4FFEE),
    .INIT_23(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_24(256'hF1DC6E19E7FFFFFFFFFFE5FF7FFFFBFA6934511A62FF3FFFFFFFFFFFFFFFFFFF),
    .INIT_25(256'hF7E97BFF5E7988FEBFE7D98B6A8E6C07F3FE5FFEFFFFFFF93A7918BDFFCA4F07),
    .INIT_26(256'hFFFEFFFFFE5FFFDFFFF51E1FE9E27136E88A5EB799EFA7FB9251EBE892789373),
    .INIT_27(256'h3FFFFFCFEBE4FFFFFFFFFFFFFFFDCDFFFFFFFFFFFFFFFFFFCBFCB9FF9FECFFF9),
    .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_29(256'hD1DCC4CCD7FFFFFFFFFBE94CDFA3E7F00E8167E3DEBF5FFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hF7D77AFF5E7899BEBFA119985D8D71D407FC5FFFBFF5FCFE7F4907FE2FCA0376),
    .INIT_2B(256'h2E0EC3C1FD5F2FFFFFFFDE7FF9FA60FEAF8A131F85EFE3F8105E1FD85E995827),
    .INIT_2C(256'h3FFFFFDFEBF4E477F6345F83C3E51AC1E9B80F98F27D16CDCFC0B84EDBDDF2E3),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_2E(256'hD1FC9FEACFFFFFFFFFE3EA197FFBE3F67FCFDF52327F5FFFFFFFFFFFFFFFFFFF),
    .INIT_2F(256'hF7ED7BFF5E840E113C2079FEC00E35E49BFFBC0FCFECF73BE18997F84F0A57D3),
    .INIT_30(256'hBD0E97C87D1F5BFFFFF2FE7FE7FA7AF96F89D60F85EFA7F14459E1312D1BBED3),
    .INIT_31(256'h3FFF3FDFEBF4ECE4FA41BB37B3F8FB8F74F51E8B663387B1CFCEBFFF171CA1DD),
    .INIT_32(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_33(256'hFDFC9BD473FFFC17FFBC71287FEFFFD8BBB7B343DFFFDFFFFFFFFFFFFFFFFFFF),
    .INIT_34(256'hF7EC7BFF5D7BE11BCCE239FE0F09FADB89F0B1EF43F5FBF40FC7A7FFAC5A51EC),
    .INIT_35(256'hC08488924C34F7FFFFDF7E7FD7FA79FE1FA70EBA0DEFA7F2E6F9FCC50EBF7F47),
    .INIT_36(256'h3FD79D9FEBF7759BE77A0CD9D1F32EA591162448038B0E35CFC2BD1FFBE86D97),
    .INIT_37(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_38(256'hFBFC9AA267FFFA1FFF946C1CFFE5FFF5781FC7CC7FFF9FFFFFFFFFFFFFFFFFFF),
    .INIT_39(256'hF7F77BFF5D0748506F0239FD1C821EF8CEE6F617CFF3FCF0428BE3F6A29E40D2),
    .INIT_3A(256'h03ECD5F94E55D3FFFFD7AE7FE7FA7A7F6F070DD26DEFA784F5B3FA7B8FF1A20F),
    .INIT_3B(256'h3FD6F63FEBF5F8F907FF3C2251F3FFEE4657EB9094CFCF85CFECBEFFDF507A20),
    .INIT_3C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_3D(256'hF4FC9C7E74FFF8F7FF1E5DFCFFF5FFE72CFC3F635FFF7FFFFFFFFFFFFFFFFFFF),
    .INIT_3E(256'hF7E77BFF5E8505313C40B9FF4B040C04E6E8EFFDCFFFFFF5FF63F3DC480969D1),
    .INIT_3F(256'h7BF8DAFD1755FFFFFFFFFE7FCFFA7DBEBF47B6D52DEFA79DFC71E7BB0E7625EF),
    .INIT_40(256'h3FDB747FEBFB78FF7FBF343559F3FFCAF797F8306F0F6F0DCFEABEFFDF1444BD),
    .INIT_41(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_42(256'hFAFC9DD5FDF7BBEFCF5BBD7E7FC5FFD855FDC7F41FFE7FFFFFFFFFFFFFFFFFFF),
    .INIT_43(256'hF7F969FF5E791E1EBFE1B9FB2F940C52F1E673F3BDF3FCF16C07FDEFF07AFCE7),
    .INIT_44(256'h73C09FFC87D65FFFFFFFFE7FEFFA7E5FCFA0C91E31EBA737FDD9E7B93C592C63),
    .INIT_45(256'h3FF7539FEBF8BEFD17C9C93B3973EBE9FF976B74962FAF1DCFFCBEFFDF14F27E),
    .INIT_46(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_47(256'hBAFCFC4EF8FF7FFFAFDFFFFAFFF7FFFFDAD1CCBB7FFFBFFFFFFFFFFFFFFFFFFF),
    .INIT_48(256'h078974546E7905FEBC2061BB7C1DF1F0F3F8F80F57F1FCFB0CC8F1DCDC087E70),
    .INIT_49(256'h7E1CCCB4D8541FFFFFFFFE7FEFFA7D5FDF322BF99A1BA701BC5D2BE8C294A5E7),
    .INIT_4A(256'h3FF9FE3FEBF5F0DD6FE1F93979270FADFF97A008524FAF1D0FE2BEFCEF14D33E),
    .INIT_4B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_4C(256'h6D385E69FCFBFFFFDFE3FFFCFFB7FFF7A5B864F9FFFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_4D(256'h078871598679567EBC4691D4E1D93050F8FA140A27E1F3BCC740F4C2EF0D50A0),
    .INIT_4E(256'h7F385E90F5357BFFFFFFFE7F5FFA5EDFDCB89C3F7CA3A789E359BBF04F75ADE2),
    .INIT_4F(256'h3FFFFFFFEBF4F19FEF82FEFDB85F1FACBFB778741BC7AF193EEFBEFD0B14D5FE),
    .INIT_50(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_51(256'hB0AA9747FD7F7FFF9FEBFFFE5FC7FFAE2D4D15F67FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_52(256'h820C7C66D47901FEA40743A5EC31E712F0FF1FFF2FE1FFFFDF4DF9F83F9E7FD9),
    .INIT_53(256'h792E47A2F0069FFFFFFFFE7EFFFA7047DEF97EBAFA37A7B00B5F3FF0F2B3A5E2),
    .INIT_54(256'h3FFFFFFFEBF4F0BFFD10B0F9BB1703D0BFB59F20E16FAF1F3291BEFED91440BE),
    .INIT_55(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_56(256'hCF423FFFFA787FFFCBF3FFFE1F77FFAD7EE3EDCE7FFE7FFFFFFFFFFFFFFFFFFF),
    .INIT_57(256'hF95C7F9F3C7F88FFFFFFCC99FDE1E12BF3FF7FFFBFE8F87E1FB3FA7BFF461FE7),
    .INIT_58(256'h3CDF2FE9F91CFFFFFFFFFE3FBFFA4F1F9DFA3D39FFCFC7F697119BF0FDCFC9E3),
    .INIT_59(256'h3FFFFFFFEBF4E7CF8DBE843FFC3F6FE6BF1EBF88E4F7C387CC2C37DF33F5403C),
    .INIT_5A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FD),
    .INIT_5B(256'hBFFFFFFFFCBFFFFF9DFFFFFF9F5FFFFFFFFF9BFBFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_5C(256'hFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEBBFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFF),
    .INIT_5D(256'hFFFFFFFFFFFFFFFFFFFFFE1F7FF27FFFFFFFFFFFFFFFFFFFFFEFBFFFFFFFFFFF),
    .INIT_5E(256'h3FFFFF2FEBF7FFFFA7FFFFFFFFFFFFFFFFFF7FE8FFFFFFFFFFFFF8BFFDFFD11F),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FD),
    .INIT_60(256'hFFFFFFFFFEBFFFFFDBFFFFFFD61FFFFFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_61(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEADFFFFFFFFFFFD7FFFFFFFFFFFFFFFFFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFEFF9FFF0D7FE07FFFFFFFFFFFFFFFFFFFFFEE3FFFFFFFFFFF),
    .INIT_63(256'h3FFFFFF7C3FFFFFFA7FFFFFFFFFFFFFFFFF8FFF5FFFFFFFFFFFFFDA7FFFF83FF),
    .INIT_64(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003FD),
    .INIT_65(256'hFFFFFFFFFFFFFFFFFBFFFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_66(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFFFFFF9FFC3FFFFBFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFFFFFFF),
    .INIT_68(256'h3FFFFFF7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFFF8FFFFFD5FF),
    .INIT_69(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD),
    .INIT_6A(256'hFFFFFFFFFFFFFFFFFFFFFFFFD7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFFFFFFFFFFFF002FFE0FFFA17FFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFFF),
    .INIT_6D(256'h3FFFFFCFEBE7FFFFE3FFFFFFFFFFFFFFFFF5FFFD7FFFFFFFFFFFFE1FFFFFE0FF),
    .INIT_6E(256'h00000000000000000000000000000000000000000000000000000000001F8001),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000001),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4343434343434343434343434343434343434343434343434343434343434342),
    .INIT_01(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_02(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_03(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_04(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_05(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_06(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_07(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_08(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_09(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_0A(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_0B(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_0C(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_0D(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_0E(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_0F(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_10(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_11(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_12(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_13(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_14(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_15(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_16(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_17(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_18(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_19(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1A(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1B(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1C(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1D(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1E(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_1F(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_20(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_21(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_22(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_23(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_24(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_25(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_26(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_27(256'h4243434343434343434343434343434343434343434343434343434343434343),
    .INIT_28(256'h4545454545454545454545454545454545454545454545454545454545454543),
    .INIT_29(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_2A(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_2B(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_2C(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_2D(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_2E(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_2F(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_30(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_31(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_32(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_33(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_34(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_35(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_36(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_37(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_38(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_39(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_3A(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_3B(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_3C(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_3D(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_3E(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_3F(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_40(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_41(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_42(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_43(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_44(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_45(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_46(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_47(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_48(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_49(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_4A(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_4B(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_4C(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_4D(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_4E(256'h4545343444454545454545454545454545454545454545454545454545454545),
    .INIT_4F(256'h4345454545454545454545454545454545454545454545454545454545454545),
    .INIT_50(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_51(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_52(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_53(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_54(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_55(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_56(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_57(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_58(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_59(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_5F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_60(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_61(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_62(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_63(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_64(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_65(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_66(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_67(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_68(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_69(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_70(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_71(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_72(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_73(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_74(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_75(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_76(256'h444485A765444444444444444444444444444444444444444444444444444444),
    .INIT_77(256'h4345444444444444444444444444444444444444444444444444444444444444),
    .INIT_78(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_79(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000030000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000002080000000004000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000030000000000000000000000000000000000000000000040000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h03008030600000000000020060C00C078C7860200D80C0000000000000000000),
    .INITP_0B(256'h004107C3F100380F83F03C3803C080F01E00000000000000C0707F0C03E0400E),
    .INITP_0C(256'h000180000060001C000001F0043E0FC0090200000401FE1C03C0C03C0C104410),
    .INITP_0D(256'h00000078303C0000000000000000000000000000000000003C018E00C006001F),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0FC1E0F82000000000001240C0600C0CC649FC260D80C0000000000000000000),
    .INIT_00(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_01(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_02(256'h4444444434344434344444444444444434444444444444444444444444444444),
    .INIT_03(256'h3444444434344444444434344444444444454444444444444444444444444444),
    .INIT_04(256'h4444444444444444444444444444444444444444343444444444444444343434),
    .INIT_05(256'h4444444444444444444444444444444444444444444434444444444444444444),
    .INIT_06(256'h4434344444444444444444444444444444444444444444444444444444444444),
    .INIT_07(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_08(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_09(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0B(256'h4444444434343444444444444444444444444444444444444444444444444444),
    .INIT_0C(256'h4444444444444444444444444444444444444444444444443434343444444444),
    .INIT_0D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_10(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_11(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_12(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_13(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_14(256'h4444444444344444444444343434344444444444444444444444444444444444),
    .INIT_15(256'h4444444444444444444444444444444444444444444444343434344444444444),
    .INIT_16(256'h4444444444444444443434444444444444444444444444444444444434344444),
    .INIT_17(256'h4444444444444444444444444444444434444544444444444444444444444444),
    .INIT_18(256'h4444444444444444444444444434344444444444444444444444443434343444),
    .INIT_19(256'h4444343434344444444444444444443444444444444444444444444444444444),
    .INIT_1A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1E(256'h444439AD98344444444434343444444444444444444444444444444444444444),
    .INIT_1F(256'h4345444444444444444444444444444444444444444444444444343444444444),
    .INIT_20(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_21(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_22(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_23(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_24(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_25(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_26(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_27(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_28(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_29(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_2A(256'h44444465969655859766444444444475A6764544444444444444444444444444),
    .INIT_2B(256'h76344455A67644444465A69655444434546AEA14344444444534244445343444),
    .INIT_2C(256'h34B54B874444446539DA35444444444444444475A68645444444444444759697),
    .INIT_2D(256'h4444444444444444444444444444444444444444446496664444444444444444),
    .INIT_2E(256'h5596864444444444444444444444444444444444444444444444444444444444),
    .INIT_2F(256'h4444444444342424344444444444453424344444444444444434242434444444),
    .INIT_30(256'h4444444444342424242424344445444434243444444444444444443424243434),
    .INIT_31(256'h2424344444444444342424243444444444242424242424243444453424243434),
    .INIT_32(256'h4444444444444444444444444444444444444444444444444444444444444434),
    .INIT_33(256'h4444443475969765444444444444444444444444444444444444444444444444),
    .INIT_34(256'h44444444343424242424344444444534243444454444444475A7A78634444444),
    .INIT_35(256'h2434444545342424242424244444444444342424242434444534242424344444),
    .INIT_36(256'h2424242444554424344444444434344444342424243444444444453424242424),
    .INIT_37(256'h4444444434344445443434444444442434444444342424242424444545342424),
    .INIT_38(256'h4444443424243444444444243444444534243444442434444544442434444444),
    .INIT_39(256'h4444444444342424242434444444343424243444444444444434242424243444),
    .INIT_3A(256'h4444243434243444444444343444442424242424242434444544342424243444),
    .INIT_3B(256'h4444444424343424344444444434243434344444444444443434343444454444),
    .INIT_3C(256'h4444444454967645444475A7A796965544444434242424242424344434344444),
    .INIT_3D(256'h44444444444444444444444444443434444444444444559696A6A77644444444),
    .INIT_3E(256'h44444444444444445596864544444444444444444444444444444455A6A76544),
    .INIT_3F(256'h4444444444444444444444444444447596654444444444444444444444444444),
    .INIT_40(256'hE7F96644444444444444444455868655444444444444444444446596A6968645),
    .INIT_41(256'h44549696A6A766454444444444445596764544448509B8454444444444444454),
    .INIT_42(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_43(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_44(256'h4444444444444444444444444444444444444434344444444444444444444444),
    .INIT_45(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_46(256'h4444289D97344444445485A78645444444444444444444444444444444444444),
    .INIT_47(256'h434544444444444444444444444444444444444444444444445596A776444444),
    .INIT_48(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_49(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_50(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_51(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_52(256'h444434C5CD7D8658DFEA3444444434F7ED3C4544444444444444444444444444),
    .INIT_53(256'h9DB834657A8D5634656ACECE2B454465F8BD7DFAA745444444A6095644F8C845),
    .INIT_54(256'h95ABAE97444444655ACEC93444444444444434D7EE5C454444444444B69BDEDE),
    .INIT_55(256'h444444444444444444444444444444444444444424A4ACDA2444444444444434),
    .INIT_56(256'h54699D6744444444444444444444444444444444444444444444444444444444),
    .INIT_57(256'h4544444454E71919D8554444444454C719B845344444443475F81909A7344444),
    .INIT_58(256'h3444444444B61919191919F976444465E819C84544444444444464E719190997),
    .INIT_59(256'h1919D85544444444B6091919D85544448508091919191919D94534A62919F997),
    .INIT_5A(256'h44444444444444444444444444444444444444444444444444444444443465E8),
    .INIT_5B(256'h444464089CCEBEA8344444444444444444444444444444444444444444444444),
    .INIT_5C(256'h4444444496F819191909A845444444A619F96644444434D79C9D8C9DFA454444),
    .INIT_5D(256'h19F9664444B72919191919098744443454C709191909E96644A6091919D85634),
    .INIT_5E(256'h0909191A97348509A844444454E7F96644B6091919E96634444454D62A191919),
    .INIT_5F(256'h44444464F8E965348509E95544447509B8444475F81919191919873454E72A19),
    .INIT_60(256'h443485F81919B84544448509A84544449619E9557519E95644448509E9654444),
    .INIT_61(256'h4444444465E719191909A744444485F81909B8454444443475E819191909B845),
    .INIT_62(256'h4465F8E9A609A844444454D7F956862919190909191909774485F8191919C855),
    .INIT_63(256'h4444447508E9B719B844444444D719B7D7D9454444444475F8D8F8D955444444),
    .INIT_64(256'h44444434E6CDEA34444418DECECE9D98344455F8091919191919E966F8F96644),
    .INIT_65(256'h4444444444444444444444444454F8E956444444444475ACCECDCE2B44444444),
    .INIT_66(256'h444444444444443495AC4C3544444444444444444444444444446549CE2B7644),
    .INIT_67(256'h56444444444444444444444444443408CEC93444444444444444444444444444),
    .INIT_68(256'hCCDFDA344444444444444444658A8D7644444444444444444444D6BDDECEAD0A),
    .INIT_69(256'h44848BDECECEDA3544444444444496BC3C45444428FE7D7644444444444434A6),
    .INIT_6A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6C(256'h44444444444444444444444444444444444444A6E86644444444444444444444),
    .INIT_6D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6E(256'h4444289D97344444446459DEAD0A554444444444444444444444444444444444),
    .INIT_6F(256'h434544444444444444444444444444444444444444444444855ACDCE0A344444),
    .INIT_70(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_71(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_72(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_73(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_74(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_75(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_76(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_77(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_78(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_79(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_7A(256'h444434A5BC6D7548CEC93444444434E5DD3C4544444444444444444444444444),
    .INIT_7B(256'hAC9D7724B5BD0B34F6CEB9F7BDB93449CEADBDBDBE1B554434E7CE79448B6D56),
    .INIT_7C(256'h7ABEA83444444434547AAE9734444444444434C6DD4C4444444444547ABEC9C7),
    .INIT_7D(256'h4444444444444444444444444444444444445418EA957BC9B63A774444444464),
    .INIT_7E(256'h34C6CDEA34444444444444444444444444444444444444444444444444444444),
    .INIT_7F(256'h7744446449DEADADCE5C874444445459EEBE4B87454434A69BDE9DBDBEFA4544),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0C718FC7F1867E1FC7F0FE7E0FE1C18C3800000000000003F0FC7F8F83F0E03F),
    .INITP_01(256'h0001800000600030000301800C061FEC1D86C0F03619FE3F0FE3F0FE3F18E638),
    .INITP_02(256'h000000E0300C00000000000000001800000000000000000030018600C0060003),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0C41F18C3000000000001FC180300C0CC6CC6C260D80C0000000000000000000),
    .INITP_05(256'h0C318C00C1864700C031C6471861E3043000000000000007198C6001C030F030),
    .INITP_06(256'h8001800000600000000781800C061C0618CCC090661830039C6731C66398E738),
    .INITP_07(256'h000000C030040000000000000000080000000000000000003001800000060001),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h18019186100000000008070180300C0CC3C866FF8C8080000000000000000000),
    .INITP_0A(256'h0C198C00C1860180C0318603986163066000C000C00C030619866000C030D860),
    .INITP_0B(256'h81E1F83C0761E000000CC18018060C0330CCC09866183001986619866199E738),
    .INITP_0C(256'h000000C030040FE6098640D82218FF3E0E43E0761E076368306187E0F0767E01),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h1801818618000000000C0F8180180007C1F82CFF800080000000000000000000),
    .INITP_0F(256'h0C0D8C00C1860180C0330601986322F230038000601C0706198C30006030D830),
    .INIT_00(256'h2B66444434F7AC9D9D9CCDBE973444759BEFBEA83444444434856ACEAD9CBD9D),
    .INIT_01(256'h9D9CCD4C663444F7BDCE9DADCE5C6634D5DDCEADBDBDBDCD4C4634E7AC9DBDBE),
    .INIT_02(256'h3444444444444444444444444444444444444444444444444444444444655ACE),
    .INIT_03(256'h445439DE7DD99655444444444444444434344444444444444444444444444444),
    .INIT_04(256'h344444C6ACCEAD9CBDEE1B3544445469FFDEB9344434B6BC1B6665E7BC1B4544),
    .INIT_05(256'hCDBE88443408AD9D9D9CCDDEC93434755ACDBE9D9CDEAE68A4BCCEBDCDDE7CA7),
    .INIT_06(256'hDECE9D9DC924C6DD1B344444648ABE68C5BCCEBDCDDE8DB834445428AD9D9D9C),
    .INIT_07(256'h44444474AB9E76346549DE0B4534B6DD2B4434A5BCDE9D9C9D8DB8346449ADAD),
    .INIT_08(256'h34B69CCE9DBDCE2B6634B5DD0C45445469FF9E77D6EECEB9343418FEAE773444),
    .INIT_09(256'h764444756ADEBD9CBDEE1B3444C69CDEBECDCE2B564444B68BCEAD9CADEE3C45),
    .INIT_0A(256'h34D6DD4CF7DD1B444444547ABE77B6AC9DADDECE9D9D8D9834F6BDAD9CADCE5C),
    .INIT_0B(256'h44444428EE2BA6BC9E773434A5CC9EA7798D4644444434C5CD3B7BBE87344444),
    .INIT_0C(256'h444444546A8D773444447586764AAD98344475BCEEADADBDBDCD5C6638EEFA34),
    .INIT_0D(256'h44444444444444444444444434E6DDCEDA344444444475AC5C97867644444444),
    .INIT_0E(256'h444444444444443495AB4C354444444444444444444444444444087CC9454444),
    .INIT_0F(256'hD9344444444444444444444444443408BDC83444444444444444444444444444),
    .INIT_10(256'h496CA8344444444444444444657A7D664444444444444444444495C896B67ACE),
    .INIT_11(256'h44849B8DA886654444444444444486AC3B454444D78B0A454444444444444475),
    .INIT_12(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_13(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_14(256'h4444444444444444444444444444444444444407CEC934444444444444444444),
    .INIT_15(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_16(256'h4444289D97344444445475966ABEB93444444444444444444444444444444444),
    .INIT_17(256'h43454444444444444444444444444444444444444444444428CE0A8665444444),
    .INIT_18(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_19(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_20(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_21(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_22(256'h34444495BC5D5538DEB93444444434E5CD2C4544444444444444444444444444),
    .INIT_23(256'h39CEB8343418BEA827AE4583AC0A34D7A8388DB739CEDA3424B6BDB923597D66),
    .INIT_24(256'hDEFA34444444444434A5BC5C45444444444434B6DD3C444444444454AB6D4513),
    .INIT_25(256'h44444444444444444444444434444444444464189D6B7C5B9C3B764444443407),
    .INIT_26(256'h44647A6D56444444444444444444444444444444444444444444444444444444),
    .INIT_27(256'h664434F7DE4C6654F79CB93444445449BE3A9BBEB934647ACEEA45957ACEB934),
    .INIT_28(256'hDD2B454444444444443439AE973444758BADAC7D6644444444F7DE3C663495E8),
    .INIT_29(256'h4544F7CD1B45648BAEB8346418DEFB3485AC6D8675767676654544444454A639),
    .INIT_2A(256'hC77634444444444444444444343444444444444444443434444444443418DE0A),
    .INIT_2B(256'h34C6CD5C563434444444444444444434A6A74544444444444444444444444455),
    .INIT_2C(256'h7734647ACEEA5534D6CD0B35443495AC8DBC2B454454597D46243424E7BDC934),
    .INIT_2D(256'h38AE884444444444443428CEC9345459DE3B8734647A9E778409B876A629CD8D),
    .INIT_2E(256'hBC4C46444434C6BD0B344444647A9E77A509B876A619BDAEA834444444444444),
    .INIT_2F(256'h444444748B7D7644345459CEC924A6BC1B443495AB5D464444444444444434A5),
    .INIT_30(256'h748BBEE9457549DE0B34B5BC0B4534C6ACBD7D76D6BDBD2B35747ABD8D773444),
    .INIT_31(256'h2B454407DE5C7624D7CD0B24759BBE0A86A66ADEFA35747ACE0A5534B5BD3C45),
    .INIT_32(256'h4439CEC9C6CD0B444444546AAD87344434859B6D663444444495A755446518CD),
    .INIT_33(256'h443495AC9D7724F7CD2C355459CEC944498D6744444434C6BCEAF7CDDA344444),
    .INIT_34(256'h444434B6BC1B3544444444342429AD9834445428CE0B667576767544859B8D77),
    .INIT_35(256'h444444444444444444444434859B3C397D773444444475AC3C45344444444444),
    .INIT_36(256'h444444443434342495AB3C354444343434343434444444444444554444444444),
    .INIT_37(256'h2B354444444444343434344444443408BDB82334344444444444343434344444),
    .INIT_38(256'h343434344444444444343434547A7D663434343434343444444444343424B6BC),
    .INIT_39(256'h44849B6D5634444444443444444486AC3B454444443434343434444444444444),
    .INIT_3A(256'h4444443434343434444444444434343444444444444434344434344434444444),
    .INIT_3B(256'h4444444434343434443444444444343434343444444444444434343444344444),
    .INIT_3C(256'h44443444444434444444444444444544343434E7BDC934444444443434343444),
    .INIT_3D(256'h4444444434444444344444444434444444344444444444444444444434444444),
    .INIT_3E(256'h4444289D9734444444443434A6BCFB4544444444343434343434444444443444),
    .INIT_3F(256'h434544444444444444444444444444444444444444444474797D573444444444),
    .INIT_40(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_41(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_42(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_43(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_44(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_45(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_46(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_47(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_48(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_49(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_4A(256'h4B7634647A2B45F78C784444444434E5DDFB3544444444444444444444444444),
    .INIT_4B(256'h6ABE983444647A6D08BDA9D7BDDA34343416AD6695DD3B946A9CBD9D7CADAD8C),
    .INIT_4C(256'h7D56444444444444444428CEB9344444444434A69C0A4444444444446AAE9844),
    .INIT_4D(256'h4444444444444444444434856AFA444444444424A57BDE9DC93434454434759B),
    .INIT_4E(256'h4434F7BDB9344444444444444444444444444444444444444444444444444444),
    .INIT_4F(256'h44444438CEB934444475454444445449CEB8754AB924C6CD4C353434A5BC4C45),
    .INIT_50(256'h39BEA83444444444443439AE973444758B7DD8BD1B3544444427CEA924443434),
    .INIT_51(256'h3434548A9D6674AB6D453424A5CD3C444428BEB9344444444444444444443434),
    .INIT_52(256'hBC7D873444444444444444C66B1A56444444444444B66B2B66444444748A8D67),
    .INIT_53(256'h4417CECA3444444444444444444444E7BD5C56444444444444444444444444A5),
    .INIT_54(256'h1B34759A8D463434D6CD0B354444F7CDFA698D6634859B1B6575765544596D46),
    .INIT_55(256'h38AE884444444444443428CEC924B6CC5D463434647A9E7734343444343418DE),
    .INIT_56(256'hBC4C46444434C6BD0B344444647A9E78343434443424E7DD4C46444444444444),
    .INIT_57(256'h444444748B7D76444434757AAE8795BC1B443495AB5D464444444444444434A5),
    .INIT_58(256'hE7DD1B344434749B9D67A5BC0B3544596D7B8D76F6AD5B8D77A6AC5C9D873444),
    .INIT_59(256'h6D465458BEA93434D7CD0B34E6DD2B353434759B8D66A5CC4C453434B5BD2C35),
    .INIT_5A(256'h748B9E77C6CD0B444444546AAD87344434849B6D6634444444443444442475AC),
    .INIT_5B(256'h344438DEFA34445459BEA9D7DD3C4544398D6744343434D6BDEA85BC4C554444),
    .INIT_5C(256'h44445438AD884444444444443429AD98344444758BAE88344444444434F7DD0B),
    .INIT_5D(256'h44444444444444444444444438AD87749B1B4544444475AC3C55444444444444),
    .INIT_5E(256'h44444454F77B7C1AC79B3C354444C65A7C7C5BD9554444444444444444444444),
    .INIT_5F(256'h2C1523344444954A7C7C3B8734443408BD8C7C7C2B87444444954A7C7C3BA844),
    .INIT_60(256'h496B8C7CC8344444B65A8C3BA76A7D65B67B6B6B7C7C4BA844444434242484AB),
    .INIT_61(256'h44849B6D6644444464187CC9353486AC3B454444C66B7C7C7C8C1B4644444485),
    .INIT_62(256'h443485297C8C4BB845444444C65A8C4BB8083B6644E77B1B96396CD939C94544),
    .INIT_63(256'h44444475187C7CE9964AF94444D75B5B7C7C3B8734444444C66B8C4BA7083B66),
    .INIT_64(256'h34C66BEA45E76BA8444464292B6634E78C7C7C9CBD9D8C2B4554297C7C7C3B97),
    .INIT_65(256'h444444D66BD965395C98344465396CA8E75B884444444454182BA74A1B564444),
    .INIT_66(256'h4444289D973444444444443496ACFB45444444A65B6B7C7C7C8C1A45855A1A55),
    .INIT_67(256'h434544444444444444444444444444444444444444444474797D574444444444),
    .INIT_68(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_69(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_70(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_71(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_72(256'h0A6644445555444555444444444434D5DDEB2544444444444444444444444444),
    .INIT_73(256'hCD2B35444434A5BC3B4ACECE5C56444434C5ADE849DEEA84195ABD7C2A7BBD4B),
    .INIT_74(256'h0B344444444444444434B5CC2B354444444444455555444444444434958B9D4B),
    .INIT_75(256'h4444444444444444444434A6CD3C4444444454D77B7C8C7C8CFA66444434D7DD),
    .INIT_76(256'h444475AC3C454444444444444444444444444444444444444444444444444444),
    .INIT_77(256'h44444428CEB934444444444444445449CEC924444434F7CDADFA5524648A8D67),
    .INIT_78(256'hA5BC0B3544443434342439AE973444758B7D5638BEA8344434C6BD2B45343444),
    .INIT_79(256'h4444546AAE673428BDFA66A67ABEB9443495BC5C464444444444444434343424),
    .INIT_7A(256'hD6ACAEC93444444444444459FECEA934444444445448FECEC9344434A5BC4C35),
    .INIT_7B(256'h33F7DE2B4534444444444444345428CD5C774444443434343434343434444454),
    .INIT_7C(256'h7D564428BEEA4514C6CD0B35444469AE77E7BDB92485ACEA59BDCD7D77D6ADA9),
    .INIT_7D(256'h28AE884444443434342418CEC92408DEFA344444647A9E7744444444443495AC),
    .INIT_7E(256'hBC4C46444434C6BD0A24342454699E78343434343434647AAE98344434343433),
    .INIT_7F(256'h444444748B7D7644444434959B6CC8AC1B443495AB5D564444444444444434B5),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module FontRom_blk_mem_gen_prim_wrapper_init__parameterized9
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h83F1FC7E0FE3F000000CC180180606033078C09866183003986C1986C1916D78),
    .INITP_01(256'h000000C030040FC618CE40D86618FE3F1FE7F0FE3F0FE7F8303187C0F0FE7F03),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0C0183E618000000000C1A430018000381803C32000080000000000000000000),
    .INITP_04(256'h0C078C00C1FE798FC3F306018FE332DB3C0707F8300C030618F8300FE1F0CC3E),
    .INITP_05(256'hF619860318E600000018618010060601E070CC88C618300F0C6C1986C0936DE8),
    .INITP_06(256'h0000C0C030060C0218EC44CC6618080198E6198E6188E4D830198400C18E319F),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0C0183360C000000001C020300180033C0C0F032000080000000000000000000),
    .INITP_09(256'h0C078C00C1FE798FC3F306018FE2325B0C0C07F01C00000738F8181FE3F0C63E),
    .INITP_0A(256'h86198601986600000000018030060301E030CC8CC618303C07EC0CCEC0936CC8),
    .INITP_0B(256'h0011E1803006060330786CCC6618080310661986609864C8300F8400C1862181),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0601831E0C0003F000FF8003001800366FE1F07F800080000000000000000000),
    .INITP_0E(256'h0C0F8C00C1864180C03306019866324B041C00000C000007F1CC18186600C660),
    .INITP_0F(256'h87F986019867F0000000018020060180C0785C8CC618307006EC187EC1966CC8),
    .INIT_00(256'h29CEB83444444428CEC9A5BCFB25B5BCEA4A8D76069DC89CFA388D089D883444),
    .INIT_01(256'h3C454428CEC92424D7CD0B4448BEA93444444438CEA9A6CC2C254444B6BD2C44),
    .INIT_02(256'hC6CD3C35D6CD0B444444546AAD87344444859B6D6644444444444444346529CD),
    .INIT_03(256'h7795BC7D66444434A5AC9D9C9D983434189D7844C7A734E7BDD9446A9D774434),
    .INIT_04(256'h444485AC3C454444444444443429AD9834444434C6CD5C564444444444758B9D),
    .INIT_05(256'h4444444444444444444444D6BD0B344407ADA844444475AC3C55444444444444),
    .INIT_06(256'h454444F7CD9D4BAC9DAD3C3534D6BCAD4B3A8CADB83444444444444444444444),
    .INIT_07(256'h6CD9E8A734A5ACAD3B3AAC8D87343408CD8D3B5ABD9DA83444389D4B5ABDBEEA),
    .INIT_08(256'hBCAE3B3AB83444A5ACBE4B8BADAC7D66954ACDCE5C3A9CADB83465D7E8E819AC),
    .INIT_09(256'h44849B6D6644444444A58BBEC92485AC3B454434F7DD7C3A3A4AE945444434A5),
    .INIT_0A(256'h34A59BCE6C4AACBEEA453495ACBE4B8BADAD7D67759BAD9C9CAD8C9CBDFB4544),
    .INIT_0B(256'h98345428CE7C5BAD8CBD3B444407DE7C2A3A9C9DA83434B6BCAE4B9CBDBD8D76),
    .INIT_0C(256'h5449DED93428DEC94444648A8D6734C74A3A3A7BBD6C3AF945655A6C3A4AAC9D),
    .INIT_0D(256'h44445459CEB934D7CD5C564418DE4C55F7CEC934343444849B6D6669BE983444),
    .INIT_0E(256'h4444289D973444444444443496ACFB45444444B6CCCE5C3A3A4AE945657AAE88),
    .INIT_0F(256'h434544444444444444444444444444343434344444444474797D574444444444),
    .INIT_10(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_11(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_12(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_13(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_14(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_15(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_16(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_17(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_18(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_19(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_1A(256'h234445444444444444444444444434B5CCFB3544444444444444444444444444),
    .INIT_1B(256'hCEEA344444342307ADC9A6B76644443444D7BCBDCE4C663424639B1B03D6BD77),
    .INIT_1C(256'h99344444444444444444749B6D56444444444444444444444444656544656AEE),
    .INIT_1D(256'h444444444444444434341385BC2B2424344454391BA66BD9E76C7744444438CE),
    .INIT_1E(256'h44444448BE883444444444444444444444444444444434343434343445444444),
    .INIT_1F(256'h444434D6CD2B35444444444444445449CEC93444443418BD8CCD6D974448AE78),
    .INIT_20(256'h19AC3C464444A63A6B6BBDBE973444758B8D46749B7D6644444407BD7C6B2B66),
    .INIT_21(256'h3424659B8D66345428CD9DBDAEC93444444428CEB934444444444464086B6B5B),
    .INIT_22(256'h34957BCEFA454444444444C68C3B66444444444444B68B4B66444434A6BC4C35),
    .INIT_23(256'h24756ACE7C4BA84444444434756ACE2B55344434966B6C6B6B6B6B7C0A554444),
    .INIT_24(256'hAE88246549CD7C6B8CCE0B354495AC4C35A5BC2B2496ACC9389DE99B4C969B0A),
    .INIT_25(256'hAC9D884434C66B6C6B6B9CBEB93428CEC9344444647A9E77444444444444747A),
    .INIT_26(256'hBC4C46444434C6BC9D6B6B6B7BBD9D67A54A6B7C3B663418CED924B67B6C6B6B),
    .INIT_27(256'h444444748B7D764444444434C6AC8DAD1B443495AB5D564444444444444434B5),
    .INIT_28(256'h59AEA834444434F8CDEA95BCFB44489D77498D7606AD87389DAC0BD7AD983444),
    .INIT_29(256'h974434A6AC9DB855E7CD0A4469AE883444444406CDDA759B8D873424A5BC2C64),
    .INIT_2A(256'h28CEDA34D6CD0B444444546AAD87344444859B6D6644444444444485199CDE7D),
    .INIT_2B(256'h1B49CEC9344444444408CDCEEA344434089D7885BC7D45E7BDC933F7CDEA3444),
    .INIT_2C(256'h4444F7BDB9344444444444443429AD98344444444428DEFA344444444434E6CD),
    .INIT_2D(256'h4444444444444444444465596C664444756A3B45444475AC3C55444444444444),
    .INIT_2E(256'h9834658B9D9724967BDE3B355448BEA913135496664444444444444444444444),
    .INIT_2F(256'hBDBDCE0B5549AE88131395AC4C553408BDC92434B6AC6D564486763434A69BAE),
    .INIT_30(256'hAB4C252344453407CDFA246549CE7D6624B5BC2C3523A6BC4C45859BCEBDBDBD),
    .INIT_31(256'h44849B6D664444444434858BBEB975AC3B454434F7BDC9133424344444443495),
    .INIT_32(256'h3449CEFA4524958AAD8834F7CDFB347449DE6D67A5ACEAC7CD7D8759CEEA4544),
    .INIT_33(256'h0B3575AB9E7734D69CCE2B444407BDB92424A5AC6D664449BED9247549CE7D76),
    .INIT_34(256'h95AB6D564418BEB94444647A7D674434242423E7BDB92334445565451423E7CD),
    .INIT_35(256'h3434A5AC5D56344418CD0AB6BC6D6624C7BDEA34F72A66959B2B35E6CD0B4534),
    .INIT_36(256'h4444289D973444444444444496BC1B343444444408BDFB242334344444E7CDFA),
    .INIT_37(256'h434544444444444444445565554434B65A6CFA55444424748A6D564444444444),
    .INIT_38(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_39(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3A(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3B(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3C(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3D(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3E(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_3F(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_40(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_41(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_42(256'h144444444444444444444444444434B5CCEB3544444444444444444444444444),
    .INIT_43(256'h7CBDD93454C7C8A77A6D4623444434956ACDCE7DD945444434336A3C0495BD89),
    .INIT_44(256'h67444444444444444444445AAE8734444444444444444444444437AD68648B9D),
    .INIT_45(256'h4444444444444444A6D8C808BD6CC8D8C865445534A4BCDA34554544445469AE),
    .INIT_46(256'h444434A6CD1B34444444444444444444444444444455C7D8D8D8D88644444444),
    .INIT_47(256'h4444445459CED9344444444444445449CEC93444443418BEB8E7BCBEFA5A9D78),
    .INIT_48(256'hACCE5C5634E7BCCE7C5B4B2A764434658B7D5624C6CD0B3544A57BBD6C5B2A66),
    .INIT_49(256'hC8C75ADE1B45347549DE9DADADC94444443495BC5D56444444445459CE7C3A5B),
    .INIT_4A(256'h44346539BD3B76444444444455454444444444444444554544444434A6ACBE2B),
    .INIT_4B(256'h454465E87BCED934444444B68BADD94544444434965A5B5B5B5B5B6BFA554444),
    .INIT_4C(256'hAE9834E7ACAD6C4B7BCE0B3534F7CDDA24546A8D5685ACB9F79D5707ADA86A3C),
    .INIT_4D(256'h9C9D884434B65A5B5B4B9CBEB93428BEB9344444647A9E774444444444446469),
    .INIT_4E(256'hBC4C46444434C6BC8D4B5B5B5BAC9D67D6DD8D5B2A662408CED924B66B5B5B5B),
    .INIT_4F(256'h444444748B7D764444444434B6BCBDBD1B443495AB5D564444444444444434B5),
    .INIT_50(256'h69AEA834444434F7CDEA95BCFB96AC2B345A8D8738AE77B6CDBE98D6BDA93444),
    .INIT_51(256'h34444434A68BCEBDBDCE0A446AAE8734444444E6CD0B34D7CD9DF9C718BD2B64),
    .INIT_52(256'h8B9D7734D6CD0B444444546AAD87344444859B6D66444444446529BDDE7CFA66),
    .INIT_53(256'hBECD5C564444444434E7CDBEB934443408AD88F7CDAD88E7BDB824A5BC4C3565),
    .INIT_54(256'h44647A6D56444444444444443429AD983444444444757AAE9834444444445459),
    .INIT_55(256'h4444444444444444444455655544444444556545444475AC3C55444444444444),
    .INIT_56(256'h0B3495AC4C454434A6BC3C355458AED9C7C78734344544444444444444444444),
    .INIT_57(256'h3C466545759B9DC8C7C7C77B9D872408BDC834444438AE98343434444434E7CD),
    .INIT_58(256'hAB5C464444443418CEC83434758B7D6634F6CDEA3434648B7D5644556555B6AC),
    .INIT_59(256'h44849B6D66444444444434957A9D0AAC2B454434F7BDE9344444444444443495),
    .INIT_5A(256'h748B7D66344434E7CDFA4428BDB93434748A7D67A5ACDA54697D57C6BDEA4544),
    .INIT_5B(256'hDA347529FA554434D7CD2B444407BDB944444439AD98648A7D674434658B8D66),
    .INIT_5C(256'hF7CD0B345418BEB94444647A7D674444444444F7BDC944444444343485C76ACE),
    .INIT_5D(256'h464418CEEA3444446449BD9C9DA83434B6AC0A548ACE99A6AC1B34858B7D5644),
    .INIT_5E(256'h4444289D973444444444444465598DE9B75544444439CEEA3444444444959B5C),
    .INIT_5F(256'h43454444444444444444C6ACEA34E7BDAD7BCDFA3575C729ADFA444444444444),
    .INIT_60(256'h4444444444444444444444444444444444444444444444444444444444444543),
    .INIT_61(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_62(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_63(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_64(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_65(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_66(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_67(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_68(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_69(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_6A(256'h4B9835444444444444444444444434B5CDEA3444444444444444444444444444),
    .INIT_6B(256'h759B8D7617CDCE8D19AC0B344444859BCE3B9B1B34444444E74AAC9D3B6BBD5C),
    .INIT_6C(256'h774444444444444444443449AE9734444444444444444444444417CEDA6ACEC9),
    .INIT_6D(256'h444444444444444439CECEBDBDBDBDCEAE9734444464C7764444444444547AAE),
    .INIT_6E(256'h444444546A9D67444444444444444444444444444465ACCEBDCDCE0A34444444),
    .INIT_6F(256'h44444444857ABEC93444444444445449CEC93444443408CEC923956ACDBD8D78),
    .INIT_70(256'hC6BC6D56748BBEC945343434445555859B8D66555439BEA8548AAEB845343444),
    .INIT_71(256'hBDBDAD1A55346469DE2B76967BBEC94444444438CEB934444434C6CD4C552434),
    .INIT_72(256'h44442495ABCEC9444444444444444444444444444444444444444434959B8D7B),
    .INIT_73(256'h56444424D7CDC93444445449EE2C353444444445341313131313131323444544),
    .INIT_74(256'h9E7785BC9DA83413C6CD0B255459BED9868629BEB875ACBAC7BD99C6BDD9396D),
    .INIT_75(256'h28AE884444443434342318CEC92408CED9344444647A9E77444444444444748A),
    .INIT_76(256'hBC4C46444434C6BD0A14342454699E67D6CDDA1434443418CEC9344434342433),
    .INIT_77(256'h444444748B7D7644444434858B9D09AC1B443495AB5D564444444444444434B5),
    .INIT_78(256'h49BEA83444443408CED995BCFB28AD98345A8D87389D77647A5C55D6BDB93444),
    .INIT_79(256'h44444434B69B8DD919CD0A4459AE883444444407CEEA3434C67BBDCDBDCE2B54),
    .INIT_7A(256'hBD4C4534D6CD0B444444546AAD87344444859B6D664444445439DE6CB8553444),
    .INIT_7B(256'hBCAEB83444444434858BBEBD6D664434F7ADC8599D8CFAF8AD9834646A9D77A5),
    .INIT_7C(256'h34D6BDEA34444444444444443429AD98344444444434B6CC5C564444444434B6),
    .INIT_7D(256'h4444444444444444444444444444444444444444444475AC3C55444444444444),
    .INIT_7E(256'h3C45B5BC1C45443495AB3C355448CEBDBDBDAD2B764444444444444444444444),
    .INIT_7F(256'h2C354434757BBDBDBDBDBDBDAD982408BDC834444407BDCA44444444443496BC),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module FontRom_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;

  FontRom_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "15" *) (* C_ADDRB_WIDTH = "15" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "15" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     17.855444 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "FontRom.mem" *) 
(* C_INIT_FILE_NAME = "FontRom.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "32768" *) (* C_READ_DEPTH_B = "32768" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "32768" *) 
(* C_WRITE_DEPTH_B = "32768" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module FontRom_blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [14:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [14:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [14:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [14:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FontRom_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module FontRom_blk_mem_gen_v8_4_3_synth
   (douta,
    clka,
    addra);
  output [15:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [15:0]douta;

  FontRom_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
