// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Aug 22 08:49:46 2025
// Host        : Saurav running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Vivado_Projects/FFT_FPGA/FFT_FPGA.gen/sources_1/bd/design_2/ip/design_2_top_0_0/design_2_top_0_0_sim_netlist.v
// Design      : design_2_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_2_top_0_0
   (clk,
    rst,
    vpp,
    vnn,
    wena_fifo,
    addr_fifo,
    din_fifo);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input vpp;
  input vnn;
  output [3:0]wena_fifo;
  output [31:0]addr_fifo;
  output [31:0]din_fifo;

  wire \<const0> ;
  wire [7:0]\^addr_fifo ;
  wire clk;
  wire rst;
  wire vnn;
  wire vpp;
  wire [3:0]wena_fifo;
  wire [31:8]NLW_inst_addr_fifo_UNCONNECTED;
  wire [31:0]NLW_inst_din_fifo_UNCONNECTED;

  assign addr_fifo[31] = \<const0> ;
  assign addr_fifo[30] = \<const0> ;
  assign addr_fifo[29] = \<const0> ;
  assign addr_fifo[28] = \<const0> ;
  assign addr_fifo[27] = \<const0> ;
  assign addr_fifo[26] = \<const0> ;
  assign addr_fifo[25] = \<const0> ;
  assign addr_fifo[24] = \<const0> ;
  assign addr_fifo[23] = \<const0> ;
  assign addr_fifo[22] = \<const0> ;
  assign addr_fifo[21] = \<const0> ;
  assign addr_fifo[20] = \<const0> ;
  assign addr_fifo[19] = \<const0> ;
  assign addr_fifo[18] = \<const0> ;
  assign addr_fifo[17] = \<const0> ;
  assign addr_fifo[16] = \<const0> ;
  assign addr_fifo[15] = \<const0> ;
  assign addr_fifo[14] = \<const0> ;
  assign addr_fifo[13] = \<const0> ;
  assign addr_fifo[12] = \<const0> ;
  assign addr_fifo[11] = \<const0> ;
  assign addr_fifo[10] = \<const0> ;
  assign addr_fifo[9] = \<const0> ;
  assign addr_fifo[8] = \<const0> ;
  assign addr_fifo[7:0] = \^addr_fifo [7:0];
  assign din_fifo[31] = \<const0> ;
  assign din_fifo[30] = \<const0> ;
  assign din_fifo[29] = \<const0> ;
  assign din_fifo[28] = \<const0> ;
  assign din_fifo[27] = \<const0> ;
  assign din_fifo[26] = \<const0> ;
  assign din_fifo[25] = \<const0> ;
  assign din_fifo[24] = \<const0> ;
  assign din_fifo[23] = \<const0> ;
  assign din_fifo[22] = \<const0> ;
  assign din_fifo[21] = \<const0> ;
  assign din_fifo[20] = \<const0> ;
  assign din_fifo[19] = \<const0> ;
  assign din_fifo[18] = \<const0> ;
  assign din_fifo[17] = \<const0> ;
  assign din_fifo[16] = \<const0> ;
  assign din_fifo[15] = \<const0> ;
  assign din_fifo[14] = \<const0> ;
  assign din_fifo[13] = \<const0> ;
  assign din_fifo[12] = \<const0> ;
  assign din_fifo[11] = \<const0> ;
  assign din_fifo[10] = \<const0> ;
  assign din_fifo[9] = \<const0> ;
  assign din_fifo[8] = \<const0> ;
  assign din_fifo[7] = \<const0> ;
  assign din_fifo[6] = \<const0> ;
  assign din_fifo[5] = \<const0> ;
  assign din_fifo[4] = \<const0> ;
  assign din_fifo[3] = \<const0> ;
  assign din_fifo[2] = \<const0> ;
  assign din_fifo[1] = \<const0> ;
  assign din_fifo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_2_top_0_0_top inst
       (.addr_fifo({NLW_inst_addr_fifo_UNCONNECTED[31:8],\^addr_fifo }),
        .clk(clk),
        .din_fifo(NLW_inst_din_fifo_UNCONNECTED[31:0]),
        .rst(rst),
        .vnn(vnn),
        .vpp(vpp),
        .wena_fifo(wena_fifo));
endmodule

(* ORIG_REF_NAME = "fft_ver2" *) 
module design_2_top_0_0_fft_ver2
   (AR,
    addr_fifo,
    wena_fifo,
    rst,
    clk);
  output [0:0]AR;
  output [7:0]addr_fifo;
  output [0:0]wena_fifo;
  input rst;
  input clk;

  wire [0:0]AR;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire [7:0]addr_fifo;
  wire \addr_fifo_ram[0]_i_1_n_0 ;
  wire \addr_fifo_ram[1]_i_1_n_0 ;
  wire \addr_fifo_ram[1]_i_2_n_0 ;
  wire \addr_fifo_ram[2]_i_1_n_0 ;
  wire \addr_fifo_ram[2]_i_2_n_0 ;
  wire \addr_fifo_ram[3]_i_1_n_0 ;
  wire \addr_fifo_ram[3]_i_2_n_0 ;
  wire \addr_fifo_ram[4]_i_1_n_0 ;
  wire \addr_fifo_ram[4]_i_2_n_0 ;
  wire \addr_fifo_ram[5]_i_1_n_0 ;
  wire \addr_fifo_ram[6]_i_1_n_0 ;
  wire \addr_fifo_ram[6]_i_2_n_0 ;
  wire \addr_fifo_ram[6]_i_3_n_0 ;
  wire \addr_fifo_ram[7]_i_1_n_0 ;
  wire \addr_fifo_ram[7]_i_2_n_0 ;
  wire clk;
  wire \flipper[0]_i_1_n_0 ;
  wire \flipper[0]_i_2_n_0 ;
  wire \flipper[1]_i_1_n_0 ;
  wire \flipper[1]_i_2_n_0 ;
  wire \flipper[2]_i_1_n_0 ;
  wire \flipper[2]_i_2_n_0 ;
  wire \flipper[2]_i_3_n_0 ;
  wire \flipper[2]_i_4_n_0 ;
  wire \flipper_reg_n_0_[0] ;
  wire \flipper_reg_n_0_[1] ;
  wire \flipper_reg_n_0_[2] ;
  wire latency_ctrl_i_1_n_0;
  wire latency_ctrl_reg_n_0;
  wire rst;
  wire st_ctr;
  wire \st_ctr[0]_i_1_n_0 ;
  wire \st_ctr[1]_i_1_n_0 ;
  wire \st_ctr[2]_i_1_n_0 ;
  wire \st_ctr[3]_i_1_n_0 ;
  wire \st_ctr[4]_i_1_n_0 ;
  wire \st_ctr[5]_i_1_n_0 ;
  wire \st_ctr[5]_i_2_n_0 ;
  wire \st_ctr[6]_i_1_n_0 ;
  wire \st_ctr[7]_i_1_n_0 ;
  wire \st_ctr[8]_i_2_n_0 ;
  wire \st_ctr[8]_i_3_n_0 ;
  wire \st_ctr[8]_i_4_n_0 ;
  wire \st_ctr_reg_n_0_[0] ;
  wire \st_ctr_reg_n_0_[1] ;
  wire \st_ctr_reg_n_0_[2] ;
  wire \st_ctr_reg_n_0_[3] ;
  wire \st_ctr_reg_n_0_[4] ;
  wire \st_ctr_reg_n_0_[5] ;
  wire \st_ctr_reg_n_0_[6] ;
  wire \st_ctr_reg_n_0_[7] ;
  wire \st_ctr_reg_n_0_[8] ;
  wire \st_ctr_reg_rep_n_0_[0] ;
  wire \st_ctr_reg_rep_n_0_[1] ;
  wire \st_ctr_reg_rep_n_0_[2] ;
  wire \st_ctr_reg_rep_n_0_[3] ;
  wire \st_ctr_reg_rep_n_0_[4] ;
  wire \st_ctr_reg_rep_n_0_[5] ;
  wire \st_ctr_reg_rep_n_0_[6] ;
  wire \st_ctr_reg_rep_n_0_[7] ;
  wire [3:0]state;
  wire [3:0]state__0;
  wire [0:0]wena_fifo;
  wire wr_fifo_ram_i_1_n_0;
  wire wr_fifo_ram_i_3_n_0;
  wire wr_fifo_ram_i_4_n_0;
  wire wr_fifo_ram_i_5_n_0;
  wire wr_fifo_ram_i_6_n_0;
  wire wr_fifo_ram_i_7_n_0;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(state__0[2]));
  LUT5 #(
    .INIT(32'h0A0A3AA8)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\st_ctr_reg_n_0_[8] ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3380)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .O(state__0[3]));
  (* FSM_ENCODED_STATES = "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(state__0[2]),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "STAGE3:0011,STAGE4:0100,STAGE2:0010,CLEANUP:1010,STAGE1:0001,IDLE:0000,BIT_FLIP_STAGE:1001,STAGE7:0111,STAGE8:1000,STAGE6:0110,STAGE5:0101" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(state__0[3]),
        .Q(state[3]));
  LUT6 #(
    .INIT(64'hFFF8888F88888888)) 
    \addr_fifo_ram[0]_i_1 
       (.I0(\st_ctr_reg_rep_n_0_[7] ),
        .I1(\addr_fifo_ram[6]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[6] ),
        .I3(\addr_fifo_ram[1]_i_2_n_0 ),
        .I4(\st_ctr_reg_n_0_[7] ),
        .I5(\addr_fifo_ram[6]_i_3_n_0 ),
        .O(\addr_fifo_ram[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \addr_fifo_ram[1]_i_1 
       (.I0(\st_ctr_reg_rep_n_0_[6] ),
        .I1(\addr_fifo_ram[6]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[6] ),
        .I3(\addr_fifo_ram[1]_i_2_n_0 ),
        .I4(\addr_fifo_ram[6]_i_3_n_0 ),
        .O(\addr_fifo_ram[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \addr_fifo_ram[1]_i_2 
       (.I0(\st_ctr_reg_n_0_[4] ),
        .I1(\st_ctr_reg_n_0_[2] ),
        .I2(\st_ctr_reg_n_0_[0] ),
        .I3(\st_ctr_reg_n_0_[1] ),
        .I4(\st_ctr_reg_n_0_[3] ),
        .I5(\st_ctr_reg_n_0_[5] ),
        .O(\addr_fifo_ram[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \addr_fifo_ram[2]_i_1 
       (.I0(\st_ctr_reg_rep_n_0_[5] ),
        .I1(\addr_fifo_ram[6]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[5] ),
        .I3(\addr_fifo_ram[2]_i_2_n_0 ),
        .I4(\addr_fifo_ram[6]_i_3_n_0 ),
        .O(\addr_fifo_ram[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \addr_fifo_ram[2]_i_2 
       (.I0(\st_ctr_reg_n_0_[3] ),
        .I1(\st_ctr_reg_n_0_[1] ),
        .I2(\st_ctr_reg_n_0_[0] ),
        .I3(\st_ctr_reg_n_0_[2] ),
        .I4(\st_ctr_reg_n_0_[4] ),
        .O(\addr_fifo_ram[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \addr_fifo_ram[3]_i_1 
       (.I0(\st_ctr_reg_rep_n_0_[4] ),
        .I1(\addr_fifo_ram[6]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[4] ),
        .I3(\addr_fifo_ram[3]_i_2_n_0 ),
        .I4(\addr_fifo_ram[6]_i_3_n_0 ),
        .O(\addr_fifo_ram[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr_fifo_ram[3]_i_2 
       (.I0(\st_ctr_reg_n_0_[2] ),
        .I1(\st_ctr_reg_n_0_[0] ),
        .I2(\st_ctr_reg_n_0_[1] ),
        .I3(\st_ctr_reg_n_0_[3] ),
        .O(\addr_fifo_ram[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \addr_fifo_ram[4]_i_1 
       (.I0(\st_ctr_reg_rep_n_0_[3] ),
        .I1(\addr_fifo_ram[6]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[3] ),
        .I3(\addr_fifo_ram[4]_i_2_n_0 ),
        .I4(\addr_fifo_ram[6]_i_3_n_0 ),
        .O(\addr_fifo_ram[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \addr_fifo_ram[4]_i_2 
       (.I0(\st_ctr_reg_n_0_[1] ),
        .I1(\st_ctr_reg_n_0_[0] ),
        .I2(\st_ctr_reg_n_0_[2] ),
        .O(\addr_fifo_ram[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F88F88888888)) 
    \addr_fifo_ram[5]_i_1 
       (.I0(\st_ctr_reg_rep_n_0_[2] ),
        .I1(\addr_fifo_ram[6]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[2] ),
        .I3(\st_ctr_reg_n_0_[0] ),
        .I4(\st_ctr_reg_n_0_[1] ),
        .I5(\addr_fifo_ram[6]_i_3_n_0 ),
        .O(\addr_fifo_ram[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \addr_fifo_ram[6]_i_1 
       (.I0(\st_ctr_reg_rep_n_0_[1] ),
        .I1(\addr_fifo_ram[6]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[1] ),
        .I3(\st_ctr_reg_n_0_[0] ),
        .I4(\addr_fifo_ram[6]_i_3_n_0 ),
        .O(\addr_fifo_ram[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000EF)) 
    \addr_fifo_ram[6]_i_2 
       (.I0(\flipper_reg_n_0_[0] ),
        .I1(\flipper_reg_n_0_[1] ),
        .I2(\flipper_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(state[1]),
        .O(\addr_fifo_ram[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \addr_fifo_ram[6]_i_3 
       (.I0(\flipper_reg_n_0_[0] ),
        .I1(\flipper_reg_n_0_[1] ),
        .I2(\flipper_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(state[1]),
        .O(\addr_fifo_ram[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0C00000040)) 
    \addr_fifo_ram[7]_i_1 
       (.I0(\st_ctr_reg_n_0_[8] ),
        .I1(state[3]),
        .I2(state[0]),
        .I3(wr_fifo_ram_i_6_n_0),
        .I4(state[2]),
        .I5(state[1]),
        .O(\addr_fifo_ram[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA3AAAA)) 
    \addr_fifo_ram[7]_i_2 
       (.I0(\st_ctr_reg_rep_n_0_[0] ),
        .I1(\st_ctr_reg_n_0_[0] ),
        .I2(\flipper_reg_n_0_[0] ),
        .I3(\flipper_reg_n_0_[1] ),
        .I4(\flipper_reg_n_0_[2] ),
        .I5(wr_fifo_ram_i_3_n_0),
        .O(\addr_fifo_ram[7]_i_2_n_0 ));
  FDCE \addr_fifo_ram_reg[0] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[0]_i_1_n_0 ),
        .Q(addr_fifo[0]));
  FDCE \addr_fifo_ram_reg[1] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[1]_i_1_n_0 ),
        .Q(addr_fifo[1]));
  FDCE \addr_fifo_ram_reg[2] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[2]_i_1_n_0 ),
        .Q(addr_fifo[2]));
  FDCE \addr_fifo_ram_reg[3] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[3]_i_1_n_0 ),
        .Q(addr_fifo[3]));
  FDCE \addr_fifo_ram_reg[4] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[4]_i_1_n_0 ),
        .Q(addr_fifo[4]));
  FDCE \addr_fifo_ram_reg[5] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[5]_i_1_n_0 ),
        .Q(addr_fifo[5]));
  FDCE \addr_fifo_ram_reg[6] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[6]_i_1_n_0 ),
        .Q(addr_fifo[6]));
  FDCE \addr_fifo_ram_reg[7] 
       (.C(clk),
        .CE(\addr_fifo_ram[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\addr_fifo_ram[7]_i_2_n_0 ),
        .Q(addr_fifo[7]));
  LUT6 #(
    .INIT(64'hABAABBBBA8AA8888)) 
    \flipper[0]_i_1 
       (.I0(\flipper[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[3]_i_1_n_0 ),
        .I2(\flipper[2]_i_3_n_0 ),
        .I3(wr_fifo_ram_i_6_n_0),
        .I4(\flipper[2]_i_4_n_0 ),
        .I5(\flipper_reg_n_0_[0] ),
        .O(\flipper[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000131313)) 
    \flipper[0]_i_2 
       (.I0(\flipper_reg_n_0_[1] ),
        .I1(\flipper_reg_n_0_[0] ),
        .I2(\flipper_reg_n_0_[2] ),
        .I3(state[3]),
        .I4(state[1]),
        .I5(\st_ctr_reg_n_0_[8] ),
        .O(\flipper[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABA8BB88BB88)) 
    \flipper[1]_i_1 
       (.I0(\flipper[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[3]_i_1_n_0 ),
        .I2(\flipper[2]_i_3_n_0 ),
        .I3(\flipper_reg_n_0_[1] ),
        .I4(\flipper_reg_n_0_[2] ),
        .I5(\flipper[2]_i_4_n_0 ),
        .O(\flipper[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000700070000)) 
    \flipper[1]_i_2 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(\st_ctr_reg_n_0_[8] ),
        .I3(\flipper_reg_n_0_[2] ),
        .I4(\flipper_reg_n_0_[0] ),
        .I5(\flipper_reg_n_0_[1] ),
        .O(\flipper[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAA8A8BBBB8888)) 
    \flipper[2]_i_1 
       (.I0(\flipper[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state[3]_i_1_n_0 ),
        .I2(\flipper[2]_i_3_n_0 ),
        .I3(\flipper_reg_n_0_[1] ),
        .I4(\flipper_reg_n_0_[2] ),
        .I5(\flipper[2]_i_4_n_0 ),
        .O(\flipper[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0007000000000700)) 
    \flipper[2]_i_2 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(\st_ctr_reg_n_0_[8] ),
        .I3(\flipper_reg_n_0_[2] ),
        .I4(\flipper_reg_n_0_[1] ),
        .I5(\flipper_reg_n_0_[0] ),
        .O(\flipper[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \flipper[2]_i_3 
       (.I0(latency_ctrl_reg_n_0),
        .I1(\flipper_reg_n_0_[0] ),
        .I2(\flipper_reg_n_0_[2] ),
        .O(\flipper[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h333E)) 
    \flipper[2]_i_4 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[2]),
        .O(\flipper[2]_i_4_n_0 ));
  FDCE \flipper_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\flipper[0]_i_1_n_0 ),
        .Q(\flipper_reg_n_0_[0] ));
  FDCE \flipper_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\flipper[1]_i_1_n_0 ),
        .Q(\flipper_reg_n_0_[1] ));
  FDCE \flipper_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\flipper[2]_i_1_n_0 ),
        .Q(\flipper_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h0000FCFFAAAA0200)) 
    latency_ctrl_i_1
       (.I0(\st_ctr[8]_i_3_n_0 ),
        .I1(\flipper_reg_n_0_[0] ),
        .I2(\flipper_reg_n_0_[2] ),
        .I3(\flipper[2]_i_4_n_0 ),
        .I4(\FSM_sequential_state[3]_i_1_n_0 ),
        .I5(latency_ctrl_reg_n_0),
        .O(latency_ctrl_i_1_n_0));
  FDCE latency_ctrl_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(latency_ctrl_i_1_n_0),
        .Q(latency_ctrl_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000155)) 
    \st_ctr[0]_i_1 
       (.I0(\st_ctr_reg_n_0_[8] ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .I4(\st_ctr_reg_n_0_[0] ),
        .O(\st_ctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005700570000)) 
    \st_ctr[1]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\st_ctr_reg_n_0_[8] ),
        .I4(\st_ctr_reg_n_0_[0] ),
        .I5(\st_ctr_reg_n_0_[1] ),
        .O(\st_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \st_ctr[2]_i_1 
       (.I0(\st_ctr[8]_i_3_n_0 ),
        .I1(\st_ctr_reg_n_0_[1] ),
        .I2(\st_ctr_reg_n_0_[0] ),
        .I3(\st_ctr_reg_n_0_[2] ),
        .O(\st_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \st_ctr[3]_i_1 
       (.I0(\st_ctr_reg_n_0_[1] ),
        .I1(\st_ctr_reg_n_0_[0] ),
        .I2(\st_ctr_reg_n_0_[2] ),
        .I3(\st_ctr[8]_i_3_n_0 ),
        .I4(\st_ctr_reg_n_0_[3] ),
        .O(\st_ctr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \st_ctr[4]_i_1 
       (.I0(\st_ctr_reg_n_0_[2] ),
        .I1(\st_ctr_reg_n_0_[0] ),
        .I2(\st_ctr_reg_n_0_[1] ),
        .I3(\st_ctr_reg_n_0_[3] ),
        .I4(\st_ctr[8]_i_3_n_0 ),
        .I5(\st_ctr_reg_n_0_[4] ),
        .O(\st_ctr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \st_ctr[5]_i_1 
       (.I0(\st_ctr_reg_n_0_[3] ),
        .I1(\st_ctr[5]_i_2_n_0 ),
        .I2(\st_ctr_reg_n_0_[2] ),
        .I3(\st_ctr_reg_n_0_[4] ),
        .I4(\st_ctr[8]_i_3_n_0 ),
        .I5(\st_ctr_reg_n_0_[5] ),
        .O(\st_ctr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \st_ctr[5]_i_2 
       (.I0(\st_ctr_reg_n_0_[0] ),
        .I1(\st_ctr_reg_n_0_[1] ),
        .O(\st_ctr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002222200011111)) 
    \st_ctr[6]_i_1 
       (.I0(\st_ctr[8]_i_4_n_0 ),
        .I1(\st_ctr_reg_n_0_[8] ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(\st_ctr_reg_n_0_[6] ),
        .O(\st_ctr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \st_ctr[7]_i_1 
       (.I0(\st_ctr[8]_i_4_n_0 ),
        .I1(\st_ctr_reg_n_0_[6] ),
        .I2(\st_ctr[8]_i_3_n_0 ),
        .I3(\st_ctr_reg_n_0_[7] ),
        .O(\st_ctr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00003E00)) 
    \st_ctr[8]_i_1 
       (.I0(state[0]),
        .I1(state[3]),
        .I2(wr_fifo_ram_i_3_n_0),
        .I3(\flipper_reg_n_0_[0] ),
        .I4(\flipper_reg_n_0_[1] ),
        .I5(\FSM_sequential_state[3]_i_1_n_0 ),
        .O(st_ctr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \st_ctr[8]_i_2 
       (.I0(\st_ctr_reg_n_0_[7] ),
        .I1(\st_ctr[8]_i_3_n_0 ),
        .I2(\st_ctr_reg_n_0_[6] ),
        .I3(\st_ctr[8]_i_4_n_0 ),
        .O(\st_ctr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \st_ctr[8]_i_3 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\st_ctr_reg_n_0_[8] ),
        .O(\st_ctr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \st_ctr[8]_i_4 
       (.I0(\st_ctr_reg_n_0_[4] ),
        .I1(\st_ctr_reg_n_0_[2] ),
        .I2(\st_ctr_reg_n_0_[0] ),
        .I3(\st_ctr_reg_n_0_[1] ),
        .I4(\st_ctr_reg_n_0_[3] ),
        .I5(\st_ctr_reg_n_0_[5] ),
        .O(\st_ctr[8]_i_4_n_0 ));
  FDCE \st_ctr_reg[0] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[0]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[0] ));
  FDCE \st_ctr_reg[1] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[1]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[1] ));
  FDCE \st_ctr_reg[2] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[2]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[2] ));
  FDCE \st_ctr_reg[3] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[3]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[3] ));
  FDCE \st_ctr_reg[4] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[4]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[4] ));
  FDCE \st_ctr_reg[5] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[5]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[5] ));
  FDCE \st_ctr_reg[6] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[6]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[6] ));
  FDCE \st_ctr_reg[7] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[7]_i_1_n_0 ),
        .Q(\st_ctr_reg_n_0_[7] ));
  FDCE \st_ctr_reg[8] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[8]_i_2_n_0 ),
        .Q(\st_ctr_reg_n_0_[8] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[0] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[0]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[0] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[1] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[1]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[1] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[2] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[2]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[2] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[3] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[3]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[3] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[4] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[4]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[4] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[5] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[5]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[5] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[6] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[6]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[6] ));
  (* equivalent_register_removal = "no" *) 
  FDCE \st_ctr_reg_rep[7] 
       (.C(clk),
        .CE(st_ctr),
        .CLR(AR),
        .D(\st_ctr[7]_i_1_n_0 ),
        .Q(\st_ctr_reg_rep_n_0_[7] ));
  LUT6 #(
    .INIT(64'h0705373704050404)) 
    wr_fifo_ram_i_1
       (.I0(wr_fifo_ram_i_3_n_0),
        .I1(wr_fifo_ram_i_4_n_0),
        .I2(wr_fifo_ram_i_5_n_0),
        .I3(wr_fifo_ram_i_6_n_0),
        .I4(wr_fifo_ram_i_7_n_0),
        .I5(wena_fifo),
        .O(wr_fifo_ram_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wr_fifo_ram_i_2
       (.I0(rst),
        .O(AR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wr_fifo_ram_i_3
       (.I0(state[1]),
        .I1(state[2]),
        .O(wr_fifo_ram_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    wr_fifo_ram_i_4
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[1]),
        .O(wr_fifo_ram_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    wr_fifo_ram_i_5
       (.I0(\st_ctr_reg_n_0_[8] ),
        .I1(\flipper_reg_n_0_[2] ),
        .I2(\flipper_reg_n_0_[0] ),
        .O(wr_fifo_ram_i_5_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    wr_fifo_ram_i_6
       (.I0(\flipper_reg_n_0_[1] ),
        .I1(\flipper_reg_n_0_[2] ),
        .O(wr_fifo_ram_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    wr_fifo_ram_i_7
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(wr_fifo_ram_i_7_n_0));
  FDCE wr_fifo_ram_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(AR),
        .D(wr_fifo_ram_i_1_n_0),
        .Q(wena_fifo));
endmodule

(* ORIG_REF_NAME = "sampler" *) 
module design_2_top_0_0_sampler
   (clk,
    AR,
    vpp,
    vnn);
  input clk;
  input [0:0]AR;
  input vpp;
  input vnn;

  wire [0:0]AR;
  wire clk;
  wire eoc;
  wire vnn;
  wire vpp;
  wire NLW_xadc_inst_alarm_out_UNCONNECTED;
  wire NLW_xadc_inst_busy_out_UNCONNECTED;
  wire NLW_xadc_inst_drdy_out_UNCONNECTED;
  wire NLW_xadc_inst_eos_out_UNCONNECTED;
  wire [4:0]NLW_xadc_inst_channel_out_UNCONNECTED;
  wire [15:0]NLW_xadc_inst_do_out_UNCONNECTED;

  design_2_top_0_0_xadc_wiz_0 xadc_inst
       (.alarm_out(NLW_xadc_inst_alarm_out_UNCONNECTED),
        .busy_out(NLW_xadc_inst_busy_out_UNCONNECTED),
        .channel_out(NLW_xadc_inst_channel_out_UNCONNECTED[4:0]),
        .daddr_in({1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1}),
        .dclk_in(clk),
        .den_in(eoc),
        .di_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .do_out(NLW_xadc_inst_do_out_UNCONNECTED[15:0]),
        .drdy_out(NLW_xadc_inst_drdy_out_UNCONNECTED),
        .dwe_in(1'b0),
        .eoc_out(eoc),
        .eos_out(NLW_xadc_inst_eos_out_UNCONNECTED),
        .reset_in(AR),
        .vauxn8(vnn),
        .vauxp8(vpp),
        .vn_in(1'b0),
        .vp_in(1'b0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_2_top_0_0_top
   (clk,
    rst,
    vpp,
    vnn,
    wena_fifo,
    addr_fifo,
    din_fifo);
  input clk;
  input rst;
  input vpp;
  input vnn;
  output [3:0]wena_fifo;
  output [31:0]addr_fifo;
  output [31:0]din_fifo;

  wire \<const0> ;
  wire [7:0]\^addr_fifo ;
  wire clk;
  wire fft_inst_n_0;
  wire rst;
  wire vnn;
  wire vpp;
  wire [3:3]\^wena_fifo ;

  assign addr_fifo[31] = \<const0> ;
  assign addr_fifo[30] = \<const0> ;
  assign addr_fifo[29] = \<const0> ;
  assign addr_fifo[28] = \<const0> ;
  assign addr_fifo[27] = \<const0> ;
  assign addr_fifo[26] = \<const0> ;
  assign addr_fifo[25] = \<const0> ;
  assign addr_fifo[24] = \<const0> ;
  assign addr_fifo[23] = \<const0> ;
  assign addr_fifo[22] = \<const0> ;
  assign addr_fifo[21] = \<const0> ;
  assign addr_fifo[20] = \<const0> ;
  assign addr_fifo[19] = \<const0> ;
  assign addr_fifo[18] = \<const0> ;
  assign addr_fifo[17] = \<const0> ;
  assign addr_fifo[16] = \<const0> ;
  assign addr_fifo[15] = \<const0> ;
  assign addr_fifo[14] = \<const0> ;
  assign addr_fifo[13] = \<const0> ;
  assign addr_fifo[12] = \<const0> ;
  assign addr_fifo[11] = \<const0> ;
  assign addr_fifo[10] = \<const0> ;
  assign addr_fifo[9] = \<const0> ;
  assign addr_fifo[8] = \<const0> ;
  assign addr_fifo[7:0] = \^addr_fifo [7:0];
  assign din_fifo[31] = \<const0> ;
  assign din_fifo[30] = \<const0> ;
  assign din_fifo[29] = \<const0> ;
  assign din_fifo[28] = \<const0> ;
  assign din_fifo[27] = \<const0> ;
  assign din_fifo[26] = \<const0> ;
  assign din_fifo[25] = \<const0> ;
  assign din_fifo[24] = \<const0> ;
  assign din_fifo[23] = \<const0> ;
  assign din_fifo[22] = \<const0> ;
  assign din_fifo[21] = \<const0> ;
  assign din_fifo[20] = \<const0> ;
  assign din_fifo[19] = \<const0> ;
  assign din_fifo[18] = \<const0> ;
  assign din_fifo[17] = \<const0> ;
  assign din_fifo[16] = \<const0> ;
  assign din_fifo[15] = \<const0> ;
  assign din_fifo[14] = \<const0> ;
  assign din_fifo[13] = \<const0> ;
  assign din_fifo[12] = \<const0> ;
  assign din_fifo[11] = \<const0> ;
  assign din_fifo[10] = \<const0> ;
  assign din_fifo[9] = \<const0> ;
  assign din_fifo[8] = \<const0> ;
  assign din_fifo[7] = \<const0> ;
  assign din_fifo[6] = \<const0> ;
  assign din_fifo[5] = \<const0> ;
  assign din_fifo[4] = \<const0> ;
  assign din_fifo[3] = \<const0> ;
  assign din_fifo[2] = \<const0> ;
  assign din_fifo[1] = \<const0> ;
  assign din_fifo[0] = \<const0> ;
  assign wena_fifo[3] = \^wena_fifo [3];
  assign wena_fifo[2] = \^wena_fifo [3];
  assign wena_fifo[1] = \^wena_fifo [3];
  assign wena_fifo[0] = \^wena_fifo [3];
  GND GND
       (.G(\<const0> ));
  design_2_top_0_0_fft_ver2 fft_inst
       (.AR(fft_inst_n_0),
        .addr_fifo(\^addr_fifo ),
        .clk(clk),
        .rst(rst),
        .wena_fifo(\^wena_fifo ));
  design_2_top_0_0_sampler smpl_inst
       (.AR(fft_inst_n_0),
        .clk(clk),
        .vnn(vnn),
        .vpp(vpp));
endmodule

(* ORIG_REF_NAME = "xadc_wiz_0" *) 
module design_2_top_0_0_xadc_wiz_0
   (daddr_in,
    dclk_in,
    den_in,
    di_in,
    dwe_in,
    reset_in,
    vauxp8,
    vauxn8,
    busy_out,
    channel_out,
    do_out,
    drdy_out,
    eoc_out,
    eos_out,
    alarm_out,
    vp_in,
    vn_in);
  input [6:0]daddr_in;
  input dclk_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  input reset_in;
  input vauxp8;
  input vauxn8;
  output busy_out;
  output [4:0]channel_out;
  output [15:0]do_out;
  output drdy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;

  wire \<const0> ;
  wire [6:0]daddr_in;
  wire dclk_in;
  wire den_in;
  wire [15:0]di_in;
  wire dwe_in;
  wire eoc_out;
  wire inst_n_0;
  wire inst_n_1;
  wire inst_n_10;
  wire inst_n_11;
  wire inst_n_12;
  wire inst_n_13;
  wire inst_n_14;
  wire inst_n_15;
  wire inst_n_16;
  wire inst_n_17;
  wire inst_n_18;
  wire inst_n_19;
  wire inst_n_20;
  wire inst_n_21;
  wire inst_n_22;
  wire inst_n_23;
  wire inst_n_24;
  wire inst_n_25;
  wire inst_n_26;
  wire inst_n_27;
  wire inst_n_28;
  wire inst_n_3;
  wire inst_n_34;
  wire inst_n_8;
  wire inst_n_9;
  wire reset_in;
  wire vauxn8;
  wire vauxp8;
  wire vn_in;
  wire vp_in;
  wire NLW_inst_JTAGBUSY_UNCONNECTED;
  wire NLW_inst_JTAGLOCKED_UNCONNECTED;
  wire NLW_inst_JTAGMODIFIED_UNCONNECTED;
  wire NLW_inst_OT_UNCONNECTED;
  wire [6:0]NLW_inst_ALM_UNCONNECTED;
  wire [4:0]NLW_inst_MUXADDR_UNCONNECTED;

  assign alarm_out = \<const0> ;
  assign busy_out = \<const0> ;
  assign channel_out[4] = \<const0> ;
  assign channel_out[3] = \<const0> ;
  assign channel_out[2] = \<const0> ;
  assign channel_out[1] = \<const0> ;
  assign channel_out[0] = \<const0> ;
  assign do_out[15] = \<const0> ;
  assign do_out[14] = \<const0> ;
  assign do_out[13] = \<const0> ;
  assign do_out[12] = \<const0> ;
  assign do_out[11] = \<const0> ;
  assign do_out[10] = \<const0> ;
  assign do_out[9] = \<const0> ;
  assign do_out[8] = \<const0> ;
  assign do_out[7] = \<const0> ;
  assign do_out[6] = \<const0> ;
  assign do_out[5] = \<const0> ;
  assign do_out[4] = \<const0> ;
  assign do_out[3] = \<const0> ;
  assign do_out[2] = \<const0> ;
  assign do_out[1] = \<const0> ;
  assign do_out[0] = \<const0> ;
  assign drdy_out = \<const0> ;
  assign eos_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* box_type = "PRIMITIVE" *) 
  XADC #(
    .INIT_40(16'h0018),
    .INIT_41(16'h31AF),
    .INIT_42(16'h0400),
    .INIT_43(16'h0000),
    .INIT_44(16'h0000),
    .INIT_45(16'h0000),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h0100),
    .INIT_49(16'h0000),
    .INIT_4A(16'h0000),
    .INIT_4B(16'h0000),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'h0000),
    .INIT_50(16'hB5ED),
    .INIT_51(16'h57E4),
    .INIT_52(16'hA147),
    .INIT_53(16'hCA33),
    .INIT_54(16'hA93A),
    .INIT_55(16'h52C6),
    .INIT_56(16'h9555),
    .INIT_57(16'hAE4E),
    .INIT_58(16'h5999),
    .INIT_59(16'h5555),
    .INIT_5A(16'h9999),
    .INIT_5B(16'h6AAA),
    .INIT_5C(16'h5111),
    .INIT_5D(16'h5111),
    .INIT_5E(16'h91EB),
    .INIT_5F(16'h6666),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_DEVICE("ZYNQ"),
    .SIM_MONITOR_FILE("design.txt")) 
    inst
       (.ALM({inst_n_34,NLW_inst_ALM_UNCONNECTED[6:0]}),
        .BUSY(inst_n_0),
        .CHANNEL({inst_n_24,inst_n_25,inst_n_26,inst_n_27,inst_n_28}),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR(daddr_in),
        .DCLK(dclk_in),
        .DEN(den_in),
        .DI(di_in),
        .DO({inst_n_8,inst_n_9,inst_n_10,inst_n_11,inst_n_12,inst_n_13,inst_n_14,inst_n_15,inst_n_16,inst_n_17,inst_n_18,inst_n_19,inst_n_20,inst_n_21,inst_n_22,inst_n_23}),
        .DRDY(inst_n_1),
        .DWE(dwe_in),
        .EOC(eoc_out),
        .EOS(inst_n_3),
        .JTAGBUSY(NLW_inst_JTAGBUSY_UNCONNECTED),
        .JTAGLOCKED(NLW_inst_JTAGLOCKED_UNCONNECTED),
        .JTAGMODIFIED(NLW_inst_JTAGMODIFIED_UNCONNECTED),
        .MUXADDR(NLW_inst_MUXADDR_UNCONNECTED[4:0]),
        .OT(NLW_inst_OT_UNCONNECTED),
        .RESET(reset_in),
        .VAUXN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vauxn8,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VAUXP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vauxp8,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VN(vn_in),
        .VP(vp_in));
endmodule
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
