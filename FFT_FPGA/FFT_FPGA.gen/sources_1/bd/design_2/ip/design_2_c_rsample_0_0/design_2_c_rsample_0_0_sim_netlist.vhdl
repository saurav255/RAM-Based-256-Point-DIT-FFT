-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Aug 22 08:49:21 2025
-- Host        : Saurav running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Vivado_Projects/FFT_FPGA/FFT_FPGA.gen/sources_1/bd/design_2/ip/design_2_c_rsample_0_0/design_2_c_rsample_0_0_sim_netlist.vhdl
-- Design      : design_2_c_rsample_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_c_rsample_0_0_c_rsample is
  port (
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_video_tready : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_2_c_rsample_0_0_c_rsample : entity is "c_rsample";
end design_2_c_rsample_0_0_c_rsample;

architecture STRUCTURE of design_2_c_rsample_0_0_c_rsample is
  signal toggle : STD_LOGIC;
  signal toggle_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_video_tdata[10]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[11]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[12]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[13]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[14]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[15]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[8]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_video_tdata[9]_INST_0\ : label is "soft_lutpair0";
begin
\m_axis_video_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(10),
      I1 => toggle,
      I2 => s_axis_video_tdata(2),
      O => m_axis_video_tdata(2)
    );
\m_axis_video_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(11),
      I1 => toggle,
      I2 => s_axis_video_tdata(3),
      O => m_axis_video_tdata(3)
    );
\m_axis_video_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(12),
      I1 => toggle,
      I2 => s_axis_video_tdata(4),
      O => m_axis_video_tdata(4)
    );
\m_axis_video_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(13),
      I1 => toggle,
      I2 => s_axis_video_tdata(5),
      O => m_axis_video_tdata(5)
    );
\m_axis_video_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(14),
      I1 => toggle,
      I2 => s_axis_video_tdata(6),
      O => m_axis_video_tdata(6)
    );
\m_axis_video_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(15),
      I1 => toggle,
      I2 => s_axis_video_tdata(7),
      O => m_axis_video_tdata(7)
    );
\m_axis_video_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(8),
      I1 => toggle,
      I2 => s_axis_video_tdata(0),
      O => m_axis_video_tdata(0)
    );
\m_axis_video_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_video_tdata(9),
      I1 => toggle,
      I2 => s_axis_video_tdata(1),
      O => m_axis_video_tdata(1)
    );
toggle_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => m_axis_video_tready,
      I1 => s_axis_video_tvalid,
      I2 => toggle,
      O => toggle_i_1_n_0
    );
toggle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => toggle_i_1_n_0,
      Q => toggle,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_c_rsample_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_video_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_video_tlast : in STD_LOGIC;
    s_axis_video_tready : out STD_LOGIC;
    s_axis_video_tuser : in STD_LOGIC;
    s_axis_video_tvalid : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_video_tlast : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tvalid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_c_rsample_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_c_rsample_0_0 : entity is "design_2_c_rsample_0_0,c_rsample,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_2_c_rsample_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_2_c_rsample_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_2_c_rsample_0_0 : entity is "c_rsample,Vivado 2024.1";
end design_2_c_rsample_0_0;

architecture STRUCTURE of design_2_c_rsample_0_0 is
  signal \^m_axis_video_tdata\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \^m_axis_video_tready\ : STD_LOGIC;
  signal \^s_axis_video_tdata\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^s_axis_video_tlast\ : STD_LOGIC;
  signal \^s_axis_video_tuser\ : STD_LOGIC;
  signal \^s_axis_video_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis_video:s_axis_video, ASSOCIATED_RESET aresetn, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_video TLAST";
  attribute X_INTERFACE_INFO of m_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_video TREADY";
  attribute X_INTERFACE_INFO of m_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 m_axis_video TUSER";
  attribute X_INTERFACE_INFO of m_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_video TVALID";
  attribute X_INTERFACE_PARAMETER of m_axis_video_tvalid : signal is "XIL_INTERFACENAME m_axis_video, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_video_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_video TLAST";
  attribute X_INTERFACE_INFO of s_axis_video_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_video TREADY";
  attribute X_INTERFACE_INFO of s_axis_video_tuser : signal is "xilinx.com:interface:axis:1.0 s_axis_video TUSER";
  attribute X_INTERFACE_INFO of s_axis_video_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_video TVALID";
  attribute X_INTERFACE_PARAMETER of s_axis_video_tvalid : signal is "XIL_INTERFACENAME s_axis_video, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148500000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_video TDATA";
  attribute X_INTERFACE_INFO of s_axis_video_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_video TDATA";
begin
  \^m_axis_video_tready\ <= m_axis_video_tready;
  \^s_axis_video_tdata\(23 downto 0) <= s_axis_video_tdata(23 downto 0);
  \^s_axis_video_tlast\ <= s_axis_video_tlast;
  \^s_axis_video_tuser\ <= s_axis_video_tuser;
  \^s_axis_video_tvalid\ <= s_axis_video_tvalid;
  m_axis_video_tdata(15 downto 8) <= \^m_axis_video_tdata\(15 downto 8);
  m_axis_video_tdata(7 downto 0) <= \^s_axis_video_tdata\(7 downto 0);
  m_axis_video_tlast <= \^s_axis_video_tlast\;
  m_axis_video_tuser <= \^s_axis_video_tuser\;
  m_axis_video_tvalid <= \^s_axis_video_tvalid\;
  s_axis_video_tready <= \^m_axis_video_tready\;
inst: entity work.design_2_c_rsample_0_0_c_rsample
     port map (
      aclk => aclk,
      m_axis_video_tdata(7 downto 0) => \^m_axis_video_tdata\(15 downto 8),
      m_axis_video_tready => \^m_axis_video_tready\,
      s_axis_video_tdata(15 downto 0) => \^s_axis_video_tdata\(23 downto 8),
      s_axis_video_tvalid => \^s_axis_video_tvalid\
    );
end STRUCTURE;
