// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Aug 22 08:49:21 2025
// Host        : Saurav running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Vivado_Projects/FFT_FPGA/FFT_FPGA.gen/sources_1/bd/design_2/ip/design_2_c_rsample_0_0/design_2_c_rsample_0_0_stub.v
// Design      : design_2_c_rsample_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "c_rsample,Vivado 2024.1" *)
module design_2_c_rsample_0_0(aclk, aresetn, s_axis_video_tdata, 
  s_axis_video_tlast, s_axis_video_tready, s_axis_video_tuser, s_axis_video_tvalid, 
  m_axis_video_tdata, m_axis_video_tlast, m_axis_video_tready, m_axis_video_tuser, 
  m_axis_video_tvalid)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_axis_video_tdata[23:0],s_axis_video_tlast,s_axis_video_tready,s_axis_video_tuser,s_axis_video_tvalid,m_axis_video_tdata[15:0],m_axis_video_tlast,m_axis_video_tready,m_axis_video_tuser,m_axis_video_tvalid" */
/* synthesis syn_force_seq_prim="aclk" */;
  input aclk /* synthesis syn_isclock = 1 */;
  input aresetn;
  input [23:0]s_axis_video_tdata;
  input s_axis_video_tlast;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tvalid;
  output [15:0]m_axis_video_tdata;
  output m_axis_video_tlast;
  input m_axis_video_tready;
  output m_axis_video_tuser;
  output m_axis_video_tvalid;
endmodule
