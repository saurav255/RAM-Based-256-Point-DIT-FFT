-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Aug 22 08:49:46 2025
-- Host        : Saurav running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Vivado_Projects/FFT_FPGA/FFT_FPGA.gen/sources_1/bd/design_2/ip/design_2_top_0_0/design_2_top_0_0_stub.vhdl
-- Design      : design_2_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    vpp : in STD_LOGIC;
    vnn : in STD_LOGIC;
    wena_fifo : out STD_LOGIC_VECTOR ( 3 downto 0 );
    addr_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din_fifo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_2_top_0_0;

architecture stub of design_2_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,vpp,vnn,wena_fifo[3:0],addr_fifo[31:0],din_fifo[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2024.1";
begin
end;
