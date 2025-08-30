`timescale 1ns/1ps

module fft_tb;

  reg clk = 0, rst = 0, trig = 0;
  wire [39:0] douta, doutb, dout_tw;
  wire [7:0] addra, addrb;
  wire [10:0] addr_tw;
  wire wr, done;
  
  wire [23:0]d_fifo_ram;
  wire       wr_fifo_ram; 
  wire [7:0] addr_fifo_ram;

  parameter WIDTH = 20;

  // Clock generation
  always #5 clk = ~clk;

  // Instantiate DUT
  fft_ver2 #(.WIDTH(WIDTH)) fft_inst (
    .clk(clk),
    .rst(rst),
    .trig(trig),
    .douta(douta),
    .doutb(doutb),
    .dout_tw(dout_tw),
    .addr_tw(addr_tw),
    .addra(addra),
    .addrb(addrb),
    .wr(wr),
    .done(done),
    .d_fifo_ram(d_fifo_ram),   
    .wr_fifo_ram(wr_fifo_ram),  
    .addr_fifo_ram(addr_fifo_ram)
  );

  // Instantiate sample dual-port RAM
  sample_ram ram_inst (
    .clk(clk),
    .wr(wr),
    .addra(addra),
    .addrb(addrb),
    .dina(douta),
    .doutb(doutb)
  );

  // Instantiate twiddle ROM
  twiddle_rom_256 rom_inst (
    .clk(clk),
    .addr(addr_tw),
    .dout(dout_tw)
  );
  
    // FIFO RAM
  fifo_ram fifo_inst(
  .clk(clk),
  .wr(wr_fifo_ram),
  .addra(addr_fifo_ram),
  .dina(d_fifo_ram)
);

  // ------------------------ Initial Setup --------------------------
  integer i;
  initial begin
    $dumpfile("fft.vcd");
    $dumpvars(0, fft_tb);
 
    // Reset
    rst = 1;
    #20 rst = 0;

    // Trigger FFT
    #10 trig = 1;
    #10 trig = 0;
    
    if($time == 10285) begin
        $writememh("mem_dump.hex", ram_inst.mem);
    end
    
    if($time == 20535) begin
        $writememh("mem_dump.hex", ram_inst.mem);
    end

    // Wait for `done`
    wait(done);

    // Done
    #20;
    $display("FFT Done. Sample RAM contents:");
    for (i = 0; i < 256; i = i + 1)
      $display("sample_ram[%0d] = %h", i, fifo_inst.mem[i]);

    #100 $finish;
  end

endmodule

module fifo_ram (
  input wire clk,
  input wire wr,
  input wire [7:0] addra,
  input wire [23:0] dina
);
  reg [23:0] mem [0:255];
  
  integer i;
  initial begin
    for(i = 0; i<256; i = i + 1) begin
        mem[i] = 0;
    end
  end
  
  always@(posedge clk) begin
    if (wr) begin
      mem[addra] <= dina;
    end
  end
endmodule 

module sample_ram #(parameter WIDTH = 20)(
  input wire clk,
  input wire wr,
  input wire [7:0] addra, addrb,
  input wire [WIDTH*2 - 1:0] dina,
  output reg [WIDTH*2 - 1:0] doutb
);
  reg [WIDTH*2 - 1 : 0] mem [0:255];

  // Preload with impulse signal

    initial begin
         mem[0] = {20'sd0     , 20'sd1218};
    mem[1] = {20'sd0     , 20'sd1609};
    mem[2] = {20'sd0     , 20'sd781};
    mem[3] = {20'sd0     , 20'sd861};
    mem[4] = {20'sd0     , 20'sd893};
    mem[5] = {20'sd0     , 20'sd617};
    mem[6] = {20'sd0     , 20'sd542};
    mem[7] = {20'sd0     , 20'sd688};
    mem[8] = {20'sd0     , 20'sd1341};
    mem[9] = {20'sd0     , 20'sd119};
    mem[10] = {20'sd0     , -20'sd712};
    mem[11] = {20'sd0     , -20'sd327};
    mem[12] = {20'sd0     , 20'sd218};
    mem[13] = {20'sd0     , 20'sd889};
    mem[14] = {20'sd0     , 20'sd1498};
    mem[15] = {20'sd0     , 20'sd1192};
    mem[16] = {20'sd0     , 20'sd1232};
    mem[17] = {20'sd0     , 20'sd1491};
    mem[18] = {20'sd0     , 20'sd1400};
    mem[19] = {20'sd0     , 20'sd322};
    mem[20] = {20'sd0     , -20'sd313};
    mem[21] = {20'sd0     , -20'sd17};
    mem[22] = {20'sd0     , 20'sd175};
    mem[23] = {20'sd0     , 20'sd340};
    mem[24] = {20'sd0     , 20'sd684};
    mem[25] = {20'sd0     , 20'sd911};
    mem[26] = {20'sd0     , 20'sd419};
    mem[27] = {20'sd0     , 20'sd216};
    mem[28] = {20'sd0     , 20'sd682};
    mem[29] = {20'sd0     , 20'sd1523};
    mem[30] = {20'sd0     , 20'sd1674};
    mem[31] = {20'sd0     , 20'sd1420};
    mem[32] = {20'sd0     , 20'sd817};
    mem[33] = {20'sd0     , -20'sd52};
    mem[34] = {20'sd0     , -20'sd22};
    mem[35] = {20'sd0     , -20'sd24};
    mem[36] = {20'sd0     , -20'sd113};
    mem[37] = {20'sd0     ,  -20'sd2};
    mem[38] = {20'sd0     , 20'sd930};
    mem[39] = {20'sd0     , 20'sd1267};
    mem[40] = {20'sd0     , 20'sd1135};
    mem[41] = {20'sd0     , 20'sd1124};
    mem[42] = {20'sd0     , 20'sd1335};
    mem[43] = {20'sd0     , 20'sd871};
    mem[44] = {20'sd0     ,  20'sd35};
    mem[45] = {20'sd0     , 20'sd526};
    mem[46] = {20'sd0     , 20'sd928};
    mem[47] = {20'sd0     , 20'sd782};
    mem[48] = {20'sd0     , 20'sd501};
    mem[49] = {20'sd0     , -20'sd377};
    mem[50] = {20'sd0     , -20'sd725};
    mem[51] = {20'sd0     , 20'sd508};
    mem[52] = {20'sd0     , 20'sd1198};
    mem[53] = {20'sd0     , 20'sd1220};
    mem[54] = {20'sd0     , 20'sd1592};
    mem[55] = {20'sd0     , 20'sd1576};
    mem[56] = {20'sd0     , 20'sd935};
    mem[57] = {20'sd0     , 20'sd208};
    mem[58] = {20'sd0     , -20'sd84};
    mem[59] = {20'sd0     , 20'sd345};
    mem[60] = {20'sd0     , 20'sd143};
    mem[61] = {20'sd0     , -20'sd348};
    mem[62] = {20'sd0     ,  20'sd46};
    mem[63] = {20'sd0     , 20'sd804};
    mem[64] = {20'sd0     , 20'sd786};
    mem[65] = {20'sd0     , 20'sd778};
    mem[66] = {20'sd0     , 20'sd232};
    mem[67] = {20'sd0     , 20'sd292};
    mem[68] = {20'sd0     , 20'sd1139};
    mem[69] = {20'sd0     , 20'sd1979};
    mem[70] = {20'sd0     , 20'sd957};
    mem[71] = {20'sd0     , 20'sd118};
    mem[72] = {20'sd0     , 20'sd199};
    mem[73] = {20'sd0     , -20'sd516};
    mem[74] = {20'sd0     , -20'sd660};
    mem[75] = {20'sd0     , -20'sd215};
    mem[76] = {20'sd0     , 20'sd1015};
    mem[77] = {20'sd0     , 20'sd1027};
    mem[78] = {20'sd0     , 20'sd715};
    mem[79] = {20'sd0     , 20'sd920};
    mem[80] = {20'sd0     , 20'sd1049};
    mem[81] = {20'sd0     , 20'sd743};
    mem[82] = {20'sd0     , 20'sd603};
    mem[83] = {20'sd0     , 20'sd197};
    mem[84] = {20'sd0     , -20'sd210};
    mem[85] = {20'sd0     , 20'sd583};
    mem[86] = {20'sd0     , 20'sd583};
    mem[87] = {20'sd0     ,  20'sd43};
    mem[88] = {20'sd0     , -20'sd429};
    mem[89] = {20'sd0     , -20'sd303};
    mem[90] = {20'sd0     , 20'sd287};
    mem[91] = {20'sd0     , 20'sd592};
    mem[92] = {20'sd0     , 20'sd1098};
    mem[93] = {20'sd0     , 20'sd1882};
    mem[94] = {20'sd0     , 20'sd1461};
    mem[95] = {20'sd0     , 20'sd235};
    mem[96] = {20'sd0     , -20'sd286};
    mem[97] = {20'sd0     , -20'sd284};
    mem[98] = {20'sd0     , -20'sd40};
    mem[99] = {20'sd0     , 20'sd112};
    mem[100] = {20'sd0     , -20'sd180};
    mem[101] = {20'sd0     , -20'sd164};
    mem[102] = {20'sd0     , 20'sd583};
    mem[103] = {20'sd0     , 20'sd975};
    mem[104] = {20'sd0     , 20'sd538};
    mem[105] = {20'sd0     , 20'sd344};
    mem[106] = {20'sd0     , 20'sd351};
    mem[107] = {20'sd0     , 20'sd999};
    mem[108] = {20'sd0     , 20'sd743};
    mem[109] = {20'sd0     , 20'sd526};
    mem[110] = {20'sd0     , 20'sd607};
    mem[111] = {20'sd0     , -20'sd102};
    mem[112] = {20'sd0     , -20'sd1147};
    mem[113] = {20'sd0     , -20'sd976};
    mem[114] = {20'sd0     ,  20'sd72};
    mem[115] = {20'sd0     , 20'sd601};
    mem[116] = {20'sd0     , 20'sd1517};
    mem[117] = {20'sd0     , 20'sd1311};
    mem[118] = {20'sd0     , 20'sd430};
    mem[119] = {20'sd0     , 20'sd847};
    mem[120] = {20'sd0     , 20'sd876};
    mem[121] = {20'sd0     , 20'sd416};
    mem[122] = {20'sd0     , 20'sd142};
    mem[123] = {20'sd0     , 20'sd254};
    mem[124] = {20'sd0     , 20'sd200};
    mem[125] = {20'sd0     , -20'sd76};
    mem[126] = {20'sd0     , -20'sd263};
    mem[127] = {20'sd0     , 20'sd509};
    mem[128] = {20'sd0     , 20'sd496};
    mem[129] = {20'sd0     ,  20'sd72};
    mem[130] = {20'sd0     , 20'sd723};
    mem[131] = {20'sd0     , 20'sd1499};
    mem[132] = {20'sd0     , 20'sd2047};
    mem[133] = {20'sd0     , 20'sd1392};
    mem[134] = {20'sd0     , 20'sd614};
    mem[135] = {20'sd0     , -20'sd597};
    mem[136] = {20'sd0     , -20'sd348};
    mem[137] = {20'sd0     , 20'sd201};
    mem[138] = {20'sd0     , 20'sd238};
    mem[139] = {20'sd0     , 20'sd476};
    mem[140] = {20'sd0     , 20'sd863};
    mem[141] = {20'sd0     , 20'sd1024};
    mem[142] = {20'sd0     , 20'sd765};
    mem[143] = {20'sd0     , 20'sd524};
    mem[144] = {20'sd0     , 20'sd1201};
    mem[145] = {20'sd0     , 20'sd1495};
    mem[146] = {20'sd0     , 20'sd653};
    mem[147] = {20'sd0     , 20'sd756};
    mem[148] = {20'sd0     , 20'sd1022};
    mem[149] = {20'sd0     , 20'sd569};
    mem[150] = {20'sd0     , 20'sd361};
    mem[151] = {20'sd0     , -20'sd484};
    mem[152] = {20'sd0     , -20'sd733};
    mem[153] = {20'sd0     ,  20'sd83};
    mem[154] = {20'sd0     , 20'sd1505};
    mem[155] = {20'sd0     , 20'sd1658};
    mem[156] = {20'sd0     , 20'sd1494};
    mem[157] = {20'sd0     , 20'sd1497};
    mem[158] = {20'sd0     , 20'sd840};
    mem[159] = {20'sd0     , 20'sd555};
    mem[160] = {20'sd0     , 20'sd275};
    mem[161] = {20'sd0     , 20'sd877};
    mem[162] = {20'sd0     , 20'sd1037};
    mem[163] = {20'sd0     , 20'sd162};
    mem[164] = {20'sd0     , 20'sd233};
    mem[165] = {20'sd0     , 20'sd127};
    mem[166] = {20'sd0     , 20'sd631};
    mem[167] = {20'sd0     , 20'sd848};
    mem[168] = {20'sd0     , 20'sd1039};
    mem[169] = {20'sd0     , 20'sd928};
    mem[170] = {20'sd0     , 20'sd1306};
    mem[171] = {20'sd0     , 20'sd2007};
    mem[172] = {20'sd0     , 20'sd1150};
    mem[173] = {20'sd0     , 20'sd155};
    mem[174] = {20'sd0     , -20'sd243};
    mem[175] = {20'sd0     , -20'sd427};
    mem[176] = {20'sd0     , -20'sd327};
    mem[177] = {20'sd0     , -20'sd18};
    mem[178] = {20'sd0     , 20'sd1077};
    mem[179] = {20'sd0     , 20'sd1360};
    mem[180] = {20'sd0     , 20'sd527};
    mem[181] = {20'sd0     , 20'sd239};
    mem[182] = {20'sd0     , 20'sd889};
    mem[183] = {20'sd0     , 20'sd1169};
    mem[184] = {20'sd0     , 20'sd1224};
    mem[185] = {20'sd0     , 20'sd1169};
    mem[186] = {20'sd0     , 20'sd357};
    mem[187] = {20'sd0     , 20'sd561};
    mem[188] = {20'sd0     , 20'sd344};
    mem[189] = {20'sd0     , -20'sd136};
    mem[190] = {20'sd0     , -20'sd677};
    mem[191] = {20'sd0     , -20'sd390};
    mem[192] = {20'sd0     , 20'sd424};
    mem[193] = {20'sd0     , 20'sd925};
    mem[194] = {20'sd0     , 20'sd1277};
    mem[195] = {20'sd0     , 20'sd1674};
    mem[196] = {20'sd0     , 20'sd1553};
    mem[197] = {20'sd0     , 20'sd355};
    mem[198] = {20'sd0     , -20'sd607};
    mem[199] = {20'sd0     ,  20'sd34};
    mem[200] = {20'sd0     , 20'sd620};
    mem[201] = {20'sd0     , 20'sd386};
    mem[202] = {20'sd0     , 20'sd204};
    mem[203] = {20'sd0     , -20'sd501};
    mem[204] = {20'sd0     , -20'sd155};
    mem[205] = {20'sd0     , 20'sd562};
    mem[206] = {20'sd0     , 20'sd529};
    mem[207] = {20'sd0     , 20'sd479};
    mem[208] = {20'sd0     , 20'sd985};
    mem[209] = {20'sd0     , 20'sd1158};
    mem[210] = {20'sd0     , 20'sd1034};
    mem[211] = {20'sd0     , 20'sd542};
    mem[212] = {20'sd0     , 20'sd175};
    mem[213] = {20'sd0     ,  20'sd31};
    mem[214] = {20'sd0     , -20'sd773};
    mem[215] = {20'sd0     , -20'sd1054};
    mem[216] = {20'sd0     ,  20'sd81};
    mem[217] = {20'sd0     , 20'sd905};
    mem[218] = {20'sd0     , 20'sd1158};
    mem[219] = {20'sd0     , 20'sd812};
    mem[220] = {20'sd0     ,  20'sd19};
    mem[221] = {20'sd0     , 20'sd237};
    mem[222] = {20'sd0     , 20'sd1063};
    mem[223] = {20'sd0     , 20'sd1068};
    mem[224] = {20'sd0     , 20'sd280};
    mem[225] = {20'sd0     , 20'sd229};
    mem[226] = {20'sd0     , 20'sd124};
    mem[227] = {20'sd0     , -20'sd469};
    mem[228] = {20'sd0     , -20'sd774};
    mem[229] = {20'sd0     , -20'sd306};
    mem[230] = {20'sd0     , 20'sd509};
    mem[231] = {20'sd0     , 20'sd357};
    mem[232] = {20'sd0     , 20'sd504};
    mem[233] = {20'sd0     , 20'sd1335};
    mem[234] = {20'sd0     , 20'sd1716};
    mem[235] = {20'sd0     , 20'sd1196};
    mem[236] = {20'sd0     , 20'sd273};
    mem[237] = {20'sd0     , -20'sd417};
    mem[238] = {20'sd0     , -20'sd548};
    mem[239] = {20'sd0     , 20'sd276};
    mem[240] = {20'sd0     , 20'sd446};
    mem[241] = {20'sd0     , 20'sd191};
    mem[242] = {20'sd0     , -20'sd59};
    mem[243] = {20'sd0     ,  20'sd78};
    mem[244] = {20'sd0     , 20'sd130};
    mem[245] = {20'sd0     , 20'sd377};
    mem[246] = {20'sd0     , 20'sd1007};
    mem[247] = {20'sd0     , 20'sd1770};
    mem[248] = {20'sd0     , 20'sd1452};
    mem[249] = {20'sd0     , 20'sd335};
    mem[250] = {20'sd0     , 20'sd471};
    mem[251] = {20'sd0     , 20'sd166};
    mem[252] = {20'sd0     , -20'sd260};
    mem[253] = {20'sd0     , -20'sd287};
    mem[254] = {20'sd0     , -20'sd216};
    mem[255] = {20'sd0     , 20'sd132};
end





  always @(posedge clk) begin
    if (wr)
      mem[addra] <= dina;
    doutb <= mem[addrb];
  end
endmodule



module twiddle_rom_256 (
  input wire clk,
  input wire [9:0] addr,
  output reg [23:0] dout
);

  // Pre-calculated twiddle factors W^k where W = e^(-j2π/256)
  // Format: 24'h[imag][real] (12-bit signed each)
  function [23:0] W_k; 
    input [6:0] k; // k ranges 0-127
    begin
      case(k)
    0:   W_k = 24'h0007ff;   // W^0 = 1.0000 + j0.0000
    1:   W_k = 24'hfce7fe;   // W^1 = 0.9997 + j-0.0245
    2:   W_k = 24'hf9c7fd;   // W^2 = 0.9988 + j-0.0491
    3:   W_k = 24'hf697f9;   // W^3 = 0.9973 + j-0.0736
    4:   W_k = 24'hf377f5;   // W^4 = 0.9952 + j-0.0980
    5:   W_k = 24'hf057f0;   // W^5 = 0.9925 + j-0.1224
    6:   W_k = 24'hed37e9;   // W^6 = 0.9892 + j-0.1467
    7:   W_k = 24'hea27e1;   // W^7 = 0.9853 + j-0.1710
    8:   W_k = 24'he707d8;   // W^8 = 0.9808 + j-0.1951
    9:   W_k = 24'he3f7cd;   // W^9 = 0.9757 + j-0.2191
    10:   W_k = 24'he0e7c2;   // W^10 = 0.9700 + j-0.2430
    11:   W_k = 24'hdde7b5;   // W^11 = 0.9638 + j-0.2667
    12:   W_k = 24'hdad7a7;   // W^12 = 0.9569 + j-0.2903
    13:   W_k = 24'hd7e798;   // W^13 = 0.9495 + j-0.3137
    14:   W_k = 24'hd4e787;   // W^14 = 0.9415 + j-0.3369
    15:   W_k = 24'hd1f776;   // W^15 = 0.9330 + j-0.3599
    16:   W_k = 24'hcf0763;   // W^16 = 0.9239 + j-0.3827
    17:   W_k = 24'hcc274f;   // W^17 = 0.9142 + j-0.4052
    18:   W_k = 24'hc9473a;   // W^18 = 0.9040 + j-0.4276
    19:   W_k = 24'hc67724;   // W^19 = 0.8932 + j-0.4496
    20:   W_k = 24'hc3b70d;   // W^20 = 0.8819 + j-0.4714
    21:   W_k = 24'hc0f6f5;   // W^21 = 0.8701 + j-0.4929
    22:   W_k = 24'hbe36dc;   // W^22 = 0.8577 + j-0.5141
    23:   W_k = 24'hbb86c1;   // W^23 = 0.8449 + j-0.5350
    24:   W_k = 24'hb8e6a6;   // W^24 = 0.8315 + j-0.5556
    25:   W_k = 24'hb6568a;   // W^25 = 0.8176 + j-0.5758
    26:   W_k = 24'hb3c66c;   // W^26 = 0.8032 + j-0.5957
    27:   W_k = 24'hb1464e;   // W^27 = 0.7883 + j-0.6152
    28:   W_k = 24'haed62e;   // W^28 = 0.7730 + j-0.6344
    29:   W_k = 24'hac660e;   // W^29 = 0.7572 + j-0.6532
    30:   W_k = 24'haa15ed;   // W^30 = 0.7410 + j-0.6716
    31:   W_k = 24'ha7c5cb;   // W^31 = 0.7242 + j-0.6895
    32:   W_k = 24'ha585a7;   // W^32 = 0.7071 + j-0.7071
    33:   W_k = 24'ha35583;   // W^33 = 0.6895 + j-0.7242
    34:   W_k = 24'ha1355f;   // W^34 = 0.6716 + j-0.7410
    35:   W_k = 24'h9f1539;   // W^35 = 0.6532 + j-0.7572
    36:   W_k = 24'h9d1513;   // W^36 = 0.6344 + j-0.7730
    37:   W_k = 24'h9b14eb;   // W^37 = 0.6152 + j-0.7883
    38:   W_k = 24'h9934c3;   // W^38 = 0.5957 + j-0.8032
    39:   W_k = 24'h97649b;   // W^39 = 0.5758 + j-0.8176
    40:   W_k = 24'h959471;   // W^40 = 0.5556 + j-0.8315
    41:   W_k = 24'h93e447;   // W^41 = 0.5350 + j-0.8449
    42:   W_k = 24'h92341c;   // W^42 = 0.5141 + j-0.8577
    43:   W_k = 24'h90a3f1;   // W^43 = 0.4929 + j-0.8701
    44:   W_k = 24'h8f23c5;   // W^44 = 0.4714 + j-0.8819
    45:   W_k = 24'h8db398;   // W^45 = 0.4496 + j-0.8932
    46:   W_k = 24'h8c536b;   // W^46 = 0.4276 + j-0.9040
    47:   W_k = 24'h8b033e;   // W^47 = 0.4052 + j-0.9142
    48:   W_k = 24'h89c30f;   // W^48 = 0.3827 + j-0.9239
    49:   W_k = 24'h8892e1;   // W^49 = 0.3599 + j-0.9330
    50:   W_k = 24'h8782b2;   // W^50 = 0.3369 + j-0.9415
    51:   W_k = 24'h867282;   // W^51 = 0.3137 + j-0.9495
    52:   W_k = 24'h858252;   // W^52 = 0.2903 + j-0.9569
    53:   W_k = 24'h84a222;   // W^53 = 0.2667 + j-0.9638
    54:   W_k = 24'h83d1f1;   // W^54 = 0.2430 + j-0.9700
    55:   W_k = 24'h8321c1;   // W^55 = 0.2191 + j-0.9757
    56:   W_k = 24'h82718f;   // W^56 = 0.1951 + j-0.9808
    57:   W_k = 24'h81e15e;   // W^57 = 0.1710 + j-0.9853
    58:   W_k = 24'h81612c;   // W^58 = 0.1467 + j-0.9892
    59:   W_k = 24'h80f0fb;   // W^59 = 0.1224 + j-0.9925
    60:   W_k = 24'h80a0c9;   // W^60 = 0.0980 + j-0.9952
    61:   W_k = 24'h806097;   // W^61 = 0.0736 + j-0.9973
    62:   W_k = 24'h802064;   // W^62 = 0.0491 + j-0.9988
    63:   W_k = 24'h801032;   // W^63 = 0.0245 + j-0.9997
    64:   W_k = 24'h800000;   // W^64 = 0.0000 + j-1.0000
    65:   W_k = 24'h801fce;   // W^65 = -0.0245 + j-0.9997
    66:   W_k = 24'h802f9c;   // W^66 = -0.0491 + j-0.9988
    67:   W_k = 24'h806f69;   // W^67 = -0.0736 + j-0.9973
    68:   W_k = 24'h80af37;   // W^68 = -0.0980 + j-0.9952
    69:   W_k = 24'h80ff05;   // W^69 = -0.1224 + j-0.9925
    70:   W_k = 24'h816ed3;   // W^70 = -0.1467 + j-0.9892
    71:   W_k = 24'h81eea2;   // W^71 = -0.1710 + j-0.9853
    72:   W_k = 24'h827e70;   // W^72 = -0.1951 + j-0.9808
    73:   W_k = 24'h832e3f;   // W^73 = -0.2191 + j-0.9757
    74:   W_k = 24'h83de0e;   // W^74 = -0.2430 + j-0.9700
    75:   W_k = 24'h84adde;   // W^75 = -0.2667 + j-0.9638
    76:   W_k = 24'h858dad;   // W^76 = -0.2903 + j-0.9569
    77:   W_k = 24'h867d7e;   // W^77 = -0.3137 + j-0.9495
    78:   W_k = 24'h878d4e;   // W^78 = -0.3369 + j-0.9415
    79:   W_k = 24'h889d1f;   // W^79 = -0.3599 + j-0.9330
    80:   W_k = 24'h89ccf0;   // W^80 = -0.3827 + j-0.9239
    81:   W_k = 24'h8b0cc2;   // W^81 = -0.4052 + j-0.9142
    82:   W_k = 24'h8c5c94;   // W^82 = -0.4276 + j-0.9040
    83:   W_k = 24'h8dbc67;   // W^83 = -0.4496 + j-0.8932
    84:   W_k = 24'h8f2c3b;   // W^84 = -0.4714 + j-0.8819
    85:   W_k = 24'h90ac0f;   // W^85 = -0.4929 + j-0.8701
    86:   W_k = 24'h923be3;   // W^86 = -0.5141 + j-0.8577
    87:   W_k = 24'h93ebb8;   // W^87 = -0.5350 + j-0.8449
    88:   W_k = 24'h959b8e;   // W^88 = -0.5556 + j-0.8315
    89:   W_k = 24'h976b65;   // W^89 = -0.5758 + j-0.8176
    90:   W_k = 24'h993b3c;   // W^90 = -0.5957 + j-0.8032
    91:   W_k = 24'h9b1b14;   // W^91 = -0.6152 + j-0.7883
    92:   W_k = 24'h9d1aed;   // W^92 = -0.6344 + j-0.7730
    93:   W_k = 24'h9f1ac6;   // W^93 = -0.6532 + j-0.7572
    94:   W_k = 24'ha13aa1;   // W^94 = -0.6716 + j-0.7410
    95:   W_k = 24'ha35a7c;   // W^95 = -0.6895 + j-0.7242
    96:   W_k = 24'ha58a58;   // W^96 = -0.7071 + j-0.7071
    97:   W_k = 24'ha7ca35;   // W^97 = -0.7242 + j-0.6895
    98:   W_k = 24'haa1a13;   // W^98 = -0.7410 + j-0.6716
    99:   W_k = 24'hac69f1;   // W^99 = -0.7572 + j-0.6532
    100:   W_k = 24'haed9d1;   // W^100 = -0.7730 + j-0.6344
    101:   W_k = 24'hb149b1;   // W^101 = -0.7883 + j-0.6152
    102:   W_k = 24'hb3c993;   // W^102 = -0.8032 + j-0.5957
    103:   W_k = 24'hb65976;   // W^103 = -0.8176 + j-0.5758
    104:   W_k = 24'hb8e959;   // W^104 = -0.8315 + j-0.5556
    105:   W_k = 24'hbb893e;   // W^105 = -0.8449 + j-0.5350
    106:   W_k = 24'hbe3923;   // W^106 = -0.8577 + j-0.5141
    107:   W_k = 24'hc0f90a;   // W^107 = -0.8701 + j-0.4929
    108:   W_k = 24'hc3b8f2;   // W^108 = -0.8819 + j-0.4714
    109:   W_k = 24'hc678db;   // W^109 = -0.8932 + j-0.4496
    110:   W_k = 24'hc948c5;   // W^110 = -0.9040 + j-0.4276
    111:   W_k = 24'hcc28b0;   // W^111 = -0.9142 + j-0.4052
    112:   W_k = 24'hcf089c;   // W^112 = -0.9239 + j-0.3827
    113:   W_k = 24'hd1f889;   // W^113 = -0.9330 + j-0.3599
    114:   W_k = 24'hd4e878;   // W^114 = -0.9415 + j-0.3369
    115:   W_k = 24'hd7e867;   // W^115 = -0.9495 + j-0.3137
    116:   W_k = 24'hdad858;   // W^116 = -0.9569 + j-0.2903
    117:   W_k = 24'hdde84a;   // W^117 = -0.9638 + j-0.2667
    118:   W_k = 24'he0e83d;   // W^118 = -0.9700 + j-0.2430
    119:   W_k = 24'he3f832;   // W^119 = -0.9757 + j-0.2191
    120:   W_k = 24'he70827;   // W^120 = -0.9808 + j-0.1951
    121:   W_k = 24'hea281e;   // W^121 = -0.9853 + j-0.1710
    122:   W_k = 24'hed3816;   // W^122 = -0.9892 + j-0.1467
    123:   W_k = 24'hf0580f;   // W^123 = -0.9925 + j-0.1224
    124:   W_k = 24'hf3780a;   // W^124 = -0.9952 + j-0.0980
    125:   W_k = 24'hf69806;   // W^125 = -0.9973 + j-0.0736
    126:   W_k = 24'hf9c802;   // W^126 = -0.9988 + j-0.0491
    127:   W_k = 24'hfce801;   // W^127 = -0.9997 + j-0.0245
        default: W_k = 24'h000000; // Shouldn't happen
      endcase
    end
  endfunction

  reg [23:0] rom [0:1023];
    integer i;
    integer j;
  initial begin
    // Stage 0: All W^0 (128 entries)
    for ( i=0; i<128; i = i + 1) begin
      rom[i] = W_k(0);
    end

    // Stage 1: W^0, W^64 alternating (128 entries)
    for ( i=0; i<64; i = i + 1) begin
      rom[128 + 2*i] = W_k(0);
      rom[128 + 2*i + 1] = W_k(64);
    end

    // Stage 2: W^0, W^32, W^64, W^96 (128 entries)
    for ( i=0; i<32; i = i + 1) begin
      rom[256 + 4*i] = W_k(0);
      rom[256 + 4*i + 1] = W_k(32);
      rom[256 + 4*i + 2] = W_k(64);
      rom[256 + 4*i + 3] = W_k(96);
    end

    // Stage 3: W^0, W^16, W^32, ..., W^112 (128 entries)
    for ( i=0; i<16; i = i + 1) begin
      rom[384 + 8*i] = W_k(0);
      rom[384 + 8*i + 1] = W_k(16);
      rom[384 + 8*i + 2] = W_k(32);
      rom[384 + 8*i + 3] = W_k(48);
      rom[384 + 8*i + 4] = W_k(64);
      rom[384 + 8*i + 5] = W_k(80);
      rom[384 + 8*i + 6] = W_k(96);
      rom[384 + 8*i + 7] = W_k(112);
    end

    // Stage 4: W^0, W^8, W^16, ..., W^120 (128 entries)
    for ( i=0; i<8; i = i + 1) begin
      for ( j=0; j<16; j = j + 1) begin
        rom[512 + 16*i + j] = W_k(j*8);
      end
    end

    // Stage 5: W^0, W^4, W^8, ..., W^124 (128 entries)
    for ( i=0; i<4; i = i + 1) begin
      for ( j=0; j<32; j = j + 1) begin
        rom[640 + 32*i + j] = W_k(j*4);
      end
    end

    // Stage 6: W^0, W^2, W^4, ..., W^126 (128 entries)
    for ( i=0; i<2; i = i + 1) begin
      for ( j=0; j<64; j = j + 1) begin
        rom[768 + 64*i + j] = W_k(j*2);
      end
    end

    // Stage 7: W^0, W^1, W^2, ..., W^127 (128 entries)
    for ( j=0; j<128; j = j + 1) begin
      rom[896 + j] = W_k(j);
    end
  end

    always@(posedge clk) begin
        dout <= rom[addr];
    end

endmodule