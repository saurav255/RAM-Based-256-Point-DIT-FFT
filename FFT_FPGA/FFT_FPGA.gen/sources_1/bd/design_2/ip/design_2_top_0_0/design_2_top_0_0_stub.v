// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Aug 22 08:49:46 2025
// Host        : Saurav running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vivado_Projects/FFT_FPGA/FFT_FPGA.gen/sources_1/bd/design_2/ip/design_2_top_0_0/design_2_top_0_0_stub.v
// Design      : design_2_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2024.1" *)
module design_2_top_0_0(clk, rst, vpp, vnn, wena_fifo, addr_fifo, din_fifo)
/* synthesis syn_black_box black_box_pad_pin="rst,vpp,vnn,wena_fifo[3:0],addr_fifo[31:0],din_fifo[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input rst;
  input vpp;
  input vnn;
  output [3:0]wena_fifo;
  output [31:0]addr_fifo;
  output [31:0]din_fifo;
endmodule
