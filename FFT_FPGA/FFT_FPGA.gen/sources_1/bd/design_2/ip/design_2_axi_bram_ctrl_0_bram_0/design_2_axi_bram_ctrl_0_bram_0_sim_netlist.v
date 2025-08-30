// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Aug 22 08:51:59 2025
// Host        : Saurav running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado_Projects/FFT_FPGA/FFT_FPGA.gen/sources_1/bd/design_2/ip/design_2_axi_bram_ctrl_0_bram_0/design_2_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_2_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_2_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_2_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_8 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57824)
`pragma protect data_block
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
bHnrzESOcYIB3ghjkBH485JgfkqGbiYvrgw=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
