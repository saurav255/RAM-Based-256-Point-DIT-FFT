`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2025 00:03:23
// Design Name: 
// Module Name: top
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


module top( input clk, rst, vpp, vnn, output [3:0]wena_fifo, output [31:0]addr_fifo, [31:0]din_fifo);

// Sample RAM signals 
wire [7:0]addra_smpl;
wire [7:0]addrb_smpl;
wire wena_smpl;
wire [11:0]din_smpl;
wire [11:0]dout_smpl;
// Sample RAM instantiation 
          blk_mem_gen_0 smpl_ram (
                .clka(clk),
                .wea(wena_smpl),
                .addra(addr),
                .dina(d_smpl),
                .clkb(clk),
                .addrb(addrb_smpl),
                .doutb(dout_smpl)
            );

wire wena_fifo_t;     
wire [7:0]addr_fifo_t;
wire [23:0]din_fifo_t;

assign wena_fifo = {4{wena_fifo_t}};
assign addr_fifo = {24'b0, addr_fifo_t};
assign din_fifo = {8'b0, din_fifo};

// Twiddle ROM instantiation 
wire [9:0]addr_twiddle;
wire [23:0]dout_twiddle;
blk_mem_gen_2 my_bram (
    .clka(clk),
    .addra(addr_twiddle),
    .douta(dout_twiddle)
);

wire fft_done, fft_trig;
sampler smpl_inst( .clk(clk), .rst(~rst), .trig(fft_done), .vpp(vpp), .vnn(vnn), .done(fft_trig), .addr(addra_smpl), .wena(wena_smpl), .d_smpl(din_smpl));

fft_ver2 fft_inst(.clk(clk), .rst(~rst), .trig(fft_trig), .doutb(din_smpl), .dout_tw(dout_twiddle), .douta(din_smpl), .addr_tw(addr_twiddle), 
                  .addrb(addrb_smpl), .addra(addra_smpl), .wr(wena_smpl), .done(fft_done), .d_fifo_ram(din_fifo_t), .wr_fifo_ram(wena_fifo_t), .addr_fifo_ram(addr_fifo_t));

endmodule
