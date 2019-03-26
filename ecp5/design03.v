module top
(
  input clk_25mhz,
  input [6:0] btn,
  output [7:0] led,
  output [3:0] gpdi_dp, gpdi_dn,
  output wifi_gpio0
);
    parameter C_ddr = 1'b1; // 0:SDR 1:DDR

    // wifi_gpio0=1 keeps board from rebooting
    // hold btn0 to let ESP32 take control over the board
    assign wifi_gpio0 = btn[0];

    // clock generator
    wire clk_shift, clk_pixel, clk_locked;
    clk_25_shift_pixel
    clock_instance
    (
      .clki(clk_25mhz),
      .clko(clk_shift),
      .clks1(clk_pixel),
      .locked(clk_locked)
    );
    
    // LED blinky
    localparam counter_width = 28;
    wire [7:0] countblink;
    blink
    #(
      .bits(counter_width)
    )
    blink_instance
    (
      .clk(clk_pixel),
      .led(countblink)
    );
    assign led[0] = btn[1];
    assign led[7:1] = countblink[7:1];

    // VGA signal generator
    wire [7:0] vga_r, vga_g, vga_b;
    wire pre_hsync, pre_vsync, pre_blank;
    wire vga_hsync, vga_vsync, vga_blank;
    wire [11:0] x;
    wire [10:0] y;
    vga
    #(
      .C_resolution_x(1920),
      .C_hsync_front_porch(88),
      .C_hsync_pulse(44),
      .C_hsync_back_porch(148),
      .C_resolution_y(1080),
      .C_vsync_front_porch(4),
      .C_vsync_pulse(5),
      .C_vsync_back_porch(36)
    )
    vga_instance
    (
      .clk_pixel(clk_pixel),
      .test_picture(1'b1), // enable test picture generation
      //.vga_r(vga_r),
      //.vga_g(vga_g),
      //.vga_b(vga_b),
      .beam_x(x),
      .beam_y(y),
      .vga_hsync(pre_hsync),
      .vga_vsync(pre_vsync),
      .vga_blank(pre_blank)
    );
    textcon con_i (
      .clk(clk_pixel),
      .x(x), .y(y),
      .r(vga_r), .g(vga_g), .b(vga_b),
      .hs_in(pre_hsync), .vs_in(pre_vsync), .blk_in(pre_blank),
      .hs_out(vga_hsync), .vs_out(vga_vsync), .blk_out(vga_blank)
    );
    // VGA to digital video converter
    wire [1:0] tmds[3:0];
    vga2dvid
    #(
      .C_ddr(C_ddr)
    )
    vga2dvid_instance
    (
      .clk_pixel(clk_pixel),
      .clk_shift(clk_shift),
      .in_red(vga_r),
      .in_green(vga_g),
      .in_blue(vga_b),
      .in_hsync(vga_hsync),
      .in_vsync(vga_vsync),
      .in_blank(vga_blank),
      .out_clock(tmds[3]),
      .out_red(tmds[2]),
      .out_green(tmds[1]),
      .out_blue(tmds[0])
    );

    // output TMDS SDR/DDR data to fake differential lanes
    fake_differential
    #(
      .C_ddr(C_ddr)
    )
    fake_differential_instance
    (
      .clk_shift(clk_shift),
      .in_clock(tmds[3]),
      .in_red(tmds[2]),
      .in_green(tmds[1]),
      .in_blue(tmds[0]),
      .out_p(gpdi_dp),
      .out_n(gpdi_dn)
    );

endmodule
module clk_25_shift_pixel(input clki, 
    output clks1,
    output locked,
    output clko
);
wire clkfb;
wire clkos;
wire clkop;
(* ICP_CURRENT="12" *) (* LPF_RESISTOR="8" *) (* MFG_ENABLE_FILTEROPAMP="1" *) (* MFG_GMCREF_SEL="2" *)
EHXPLLL #(
        .PLLRST_ENA("DISABLED"),
        .INTFB_WAKE("DISABLED"),
        .STDBY_ENABLE("DISABLED"),
        .DPHASE_SOURCE("DISABLED"),
        .CLKOP_FPHASE(0),
        .CLKOP_CPHASE(0),
        .OUTDIVIDER_MUXA("DIVA"),
        .CLKOP_ENABLE("ENABLED"),
        .CLKOP_DIV(2),
        .CLKOS_ENABLE("ENABLED"),
        .CLKOS_DIV(10),
        .CLKOS_CPHASE(0),
        .CLKOS_FPHASE(0),
        .CLKFB_DIV(15),
        .CLKI_DIV(1),
        .FEEDBK_PATH("INT_OP")
    ) pll_i (
        .CLKI(clki),
        .CLKFB(clkfb),
        .CLKINTFB(clkfb),
        .CLKOP(clkop),
        .CLKOS(clks1),
        .RST(1'b0),
        .STDBY(1'b0),
        .PHASESEL0(1'b0),
        .PHASESEL1(1'b0),
        .PHASEDIR(1'b0),
        .PHASESTEP(1'b0),
        .PLLWAKESYNC(1'b0),
        .ENCLKOP(1'b0),
        .LOCK(locked)
	);
assign clko = clkop;
endmodule
// DDR mode uses Lattice ECP5 vendor-specific module ODDRX1F

module fake_differential
(
  input clk_shift, // used only in DDR mode
  // [1:0]:DDR [0]:SDR TMDS
  input [1:0] in_clock, in_red, in_green, in_blue,
  // [3]:clock [2]:red [1]:green [0]:blue 
  output [3:0] out_p, out_n
);
    parameter C_ddr = 1'b0; // 0:SDR 1:DDR

    wire [1:0] tmds[3:0];
    assign tmds[3] = in_clock;
    assign tmds[2] = in_red;
    assign tmds[1] = in_green;
    assign tmds[0] = in_blue;

    // register stage to improve timing of the fake differential
    reg [1:0] R_tmds_p[3:0], R_tmds_n[3:0];
    generate
      genvar i;
      for(i = 0; i < 4; i++)
      begin : TMDS_pn_registers
        always @(posedge clk_shift) R_tmds_p[i] <=  tmds[i];
        always @(posedge clk_shift) R_tmds_n[i] <= ~tmds[i];
      end
    endgenerate

    // output SDR/DDR to fake differential
    generate
      genvar i;
      if(C_ddr == 1'b1)
        for(i = 0; i < 4; i++)
        begin : DDR_output_mode
          ODDRX1F
          ddr_p_instance
          (
            .D0(R_tmds_p[i][0]),
            .D1(R_tmds_p[i][1]),
            .Q(out_p[i]),
            .SCLK(clk_shift),
            .RST(0)
          );
          ODDRX1F
          ddr_n_instance
          (
            .D0(R_tmds_n[i][0]),
            .D1(R_tmds_n[i][1]),
            .Q(out_n[i]),
            .SCLK(clk_shift),
            .RST(0)
          );
        end
      else
        for(i = 0; i < 4; i++)
        begin : SDR_output_mode
          assign out_p[i] = R_tmds_p[i][0];
          assign out_n[i] = R_tmds_n[i][0];
        end
    endgenerate

endmodule
module textcon(
	input clk,
	input [11:0] x,
	input [10:0] y,
	input hs_in, vs_in, blk_in,
	output reg [7:0] r, g, b,
	output hs_out, vs_out, blk_out
);

wire [11:0] rom_addr = {x[10:3], y[3:0]};

reg [7:0] font_rom[0:4095];
initial $readmemh("design03-data0.hex", font_rom);

reg [7:0] rom_data;

reg [7:0] font_r, font_g, font_b;
reg [10:0] x_next;

reg [2:0] ctrl_del1, ctrl_del2;

wire pixel = rom_data[3'd7 - x_next[2:0]];

always @(posedge clk) begin
	rom_data <= font_rom[rom_addr];
	case (y[6:4])
		3'b000: begin font_r = 8'hFF; font_g = 8'hFF; font_b = 8'hFF; end
		3'b001: begin font_r = 8'hFF; font_g = 8'h00; font_b = 8'h00; end
		3'b010: begin font_r = 8'h00; font_g = 8'hFF; font_b = 8'h00; end
		3'b011: begin font_r = 8'h00; font_g = 8'h00; font_b = 8'hFF; end
		3'b100: begin font_r = 8'hFF; font_g = 8'hFF; font_b = 8'h00; end
		3'b101: begin font_r = 8'h00; font_g = 8'hFF; font_b = 8'hFF; end
		3'b110: begin font_r = 8'hFF; font_g = 8'h00; font_b = 8'hFF; end
		3'b111: begin font_r = 8'h7F; font_g = 8'h7F; font_b = 8'h7F; end
	endcase

	x_next <= x;
	r <= pixel ? font_r : 8'h00;
	g <= pixel ? font_g : 8'h00;
	b <= pixel ? font_b : 8'h00;
	// Delay hs, vs, blank by same amount as video data
	ctrl_del1 <= {hs_in, vs_in, blk_in};
	ctrl_del2 <= ctrl_del1;
end

assign {hs_out, vs_out, blk_out} = ctrl_del2;

endmodule// File hdl/blink.vhd translated with vhd2vl v3.0 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 2001

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002-2017 Larry Doolittle
//     http://doolittle.icarus.com/~larry/vhd2vl/
//   Modifications (C) 2017 Rodrigo A. Melo
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

// (c)EMARD
// License=BSD
// no timescale needed

module blink(
input wire clk,
output wire [7:0] led
);

parameter [31:0] bits=23;
// main clock input from 25MHz clock source



reg [bits - 1:0] R_blink;

  always @(posedge clk) begin
    R_blink <= R_blink + 1;
  end

  assign led = R_blink[(bits - 1):((bits - 1)) - 7];

endmodule
// File hdl/vga.vhd translated with vhd2vl v3.0 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 2001

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002-2017 Larry Doolittle
//     http://doolittle.icarus.com/~larry/vhd2vl/
//   Modifications (C) 2017 Rodrigo A. Melo
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

//
// Copyright (c) 2015 Davor Jadrijevic
// All rights reserved.
//
// LICENSE=BSD
//
// Generates VGA picture from sequential bitmap data from pixel clock
// synchronous FIFO.
// the pixel data in *_byte registers
// should be present ahead of time
// signal 'fetch_next' is set high for 1 clk_pixel
// period as soon as current pixel data is consumed
// fifo should be fast enough to fetch new data for
// new pixel
// use ieee.math_real.all; -- to calculate log2 bit size
// no timescale needed

module vga(
input wire clk_pixel,
input wire test_picture,
output wire fetch_next,
output wire line_repeat,
output wire [11:0] beam_x,
output wire [10:0] beam_y,
input wire [7:0] red_byte,
input wire [7:0] green_byte,
input wire [7:0] blue_byte,
output wire [7:0] vga_r,
output wire [7:0] vga_g,
output wire [7:0] vga_b,
output wire vga_hsync,
output wire vga_vsync,
output wire vga_vblank,
output wire vga_blank
);

parameter [31:0] C_resolution_x=640;
parameter [31:0] C_hsync_front_porch=16;
parameter [31:0] C_hsync_pulse=96;
parameter [31:0] C_hsync_back_porch=44;
parameter [31:0] C_resolution_y=480;
parameter [31:0] C_vsync_front_porch=10;
parameter [31:0] C_vsync_pulse=2;
parameter [31:0] C_vsync_back_porch=31;
parameter [31:0] C_dbl_x=0;
parameter [31:0] C_dbl_y=0;
// 0-normal X, 1-double X
// pixel clock, 25 MHz for 640x480
// show test picture
// request FIFO to fetch next pixel data
// request FIFO to repeat previous scan line content (used in y-doublescan)
// pixel data from FIFO
// 8-bit VGA video signal out
// VGA sync
// V blank for CPU interrupts and H+V blank for digital encoder (HDMI)



// function integer ceiling log2
// returns how many bits are needed to represent a number of states
// example ceil_log2(255) = 8,  ceil_log2(256) = 8, ceil_log2(257) = 9
//  function ceil_log2(x: integer) return integer is
//  begin
//    return integer(ceil((log2(real(x)+1.0E-6))-1.0E-6));
//  end ceil_log2;
parameter C_frame_x = C_resolution_x + C_hsync_front_porch + C_hsync_pulse + C_hsync_back_porch;  // frame_x = 640 + 16 + 96 + 48 = 800;
parameter C_frame_y = C_resolution_y + C_vsync_front_porch + C_vsync_pulse + C_vsync_back_porch;  // frame_y = 480 + 10 + 2 + 33 = 525;
// refresh_rate = pixel_clock/(frame_x*frame_y) = 25MHz / (800*525) = 59.52Hz
parameter C_synclen = 3;  // >=2, bit length of the clock synchronizer shift register
parameter C_bits_x = 12;  // ceil_log2(C_frame_x-1)
parameter C_bits_y = 11;  // ceil_log2(C_frame_y-1)
reg [C_bits_x - 1:0] CounterX;  // (9 downto 0) is good for up to 1023 frame timing width (resolution 640x480)
reg [C_bits_y - 1:0] CounterY;  // (9 downto 0) is good for up to 1023 frame timing width (resolution 640x480)
reg hSync; reg vSync; reg vBlank; reg DrawArea; wire fetcharea;
wire [C_synclen - 1:0] clksync;  // fifo to clock synchronizer shift register
wire [7:0] shift_red; wire [7:0] shift_green; wire [7:0] shift_blue;  // RENAME shift_ -> latch_
// test picture generation
wire [7:0] W; wire [7:0] A; wire [7:0] T; reg [7:0] test_red; reg [7:0] test_green; reg [7:0] test_blue;
wire [5:0] Z;

  // wire fetcharea; // when to fetch data, must be 1 byte earlier than draw area
  assign fetcharea = CounterX < C_resolution_x && CounterY < C_resolution_y ? 1'b1 : 1'b0;
  // output request to fetch new data every pixel
  assign fetch_next = fetcharea;
  // increment and wraparound X and Y counters
  always @(posedge clk_pixel) begin
    // DrawArea is fetcharea delayed one clock later
    DrawArea <= fetcharea;
    // on end of each X line, reset CounterX
    // and increment Y counter, also reset Y at bottom of screen
    if(CounterX == (C_frame_x - 1)) begin
      CounterX <= {(((C_bits_x - 1))-((0))+1){1'b0}};
      if(CounterY == (C_frame_y - 1)) begin
        CounterY <= {(((C_bits_y - 1))-((0))+1){1'b0}};
      end
      else begin
        CounterY <= CounterY + 1;
      end
    end
    else begin
      CounterX <= CounterX + 1;
    end
  end

  assign beam_x = CounterX;
  assign beam_y = CounterY;
  assign vga_blank =  ~fetcharea;
  // Sync and VBlank generation
  always @(posedge clk_pixel) begin
    if(CounterX == (C_resolution_x + C_hsync_front_porch)) begin
      hSync <= 1'b1;
      if(CounterY == (C_resolution_y + C_vsync_front_porch - 1)) begin
        vSync <= 1'b1;
      end
      if(CounterY == (C_resolution_y + C_vsync_front_porch + C_vsync_pulse - 1)) begin
        vSync <= 1'b0;
      end
    end
    if(CounterX == (C_resolution_x + C_hsync_front_porch + C_hsync_pulse)) begin
      hSync <= 1'b0;
    end
    if(CounterY == (C_resolution_y - 1)) begin
      vBlank <= 1'b1;
    end
    if(CounterY == (C_frame_y - 1)) begin
      vBlank <= 1'b0;
    end
  end

  assign vga_hsync = hSync;
  assign vga_vsync = vSync;
  assign vga_vblank = vBlank;
  assign line_repeat = C_dbl_y == 0 ? 1'b0 : hSync &  ~CounterY[0];
  // test picture generator
  assign A = CounterX[7:5] == 3'b010 && CounterY[7:5] == 3'b010 ? {8{1'b1}} : {8{1'b0}};
  assign W = CounterX[7:0] == CounterY[7:0] ? {8{1'b1}} : {8{1'b0}};
  assign Z = CounterY[4:3] == ( ~CounterX[4:3]) ? {6{1'b1}} : {6{1'b0}};
  assign T = {8{CounterY[6]}};
  always @(posedge clk_pixel) begin
    test_red <= (({CounterX[5:0] & Z,2'b00}) | W) &  ~A;
    test_green <= ((CounterX[7:0] & T) | W) &  ~A;
    test_blue <= CounterY[7:0] | W | A;
  end

  // output multiplexer: bitmap graphics or test picture
  assign vga_r = DrawArea == 1'b0 ? {8{1'b0}} : test_picture == 1'b0 ? red_byte : test_red;
  assign vga_g = DrawArea == 1'b0 ? {8{1'b0}} : test_picture == 1'b0 ? green_byte : test_green;
  assign vga_b = DrawArea == 1'b0 ? {8{1'b0}} : test_picture == 1'b0 ? blue_byte : test_blue;

endmodule
// File hdl/vga2dvid.vhd translated with vhd2vl v3.0 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 2001

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002-2017 Larry Doolittle
//     http://doolittle.icarus.com/~larry/vhd2vl/
//   Modifications (C) 2017 Rodrigo A. Melo
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

//------------------------------------------------------------------------------
// Engineer:		Mike Field <hamster@snap.net.nz>
// Description:	Converts VGA signals into DVID bitstreams.
//
//	'clk_shift' 10x clk_pixel for SDR
//      'clk_shift'  5x clk_pixel for DDR
//
//	'blank' should be asserted during the non-display 
//	portions of the frame
//------------------------------------------------------------------------------
// See: http://hamsterworks.co.nz/mediawiki/index.php/Dvid_test
//		http://hamsterworks.co.nz/mediawiki/index.php/FPGA_Projects
//
// Copyright (c) 2012 Mike Field <hamster@snap.net.nz>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
// takes VGA input and prepares output
// for SDR buffer, which send 1 bit per 1 clock period output out_red(0), out_green(0), ... etc.
// for DDR buffers, which send 2 bits per 1 clock period output out_red(1 downto 0), ...
// EMARD unified SDR and DDR into one module
// no timescale needed

module vga2dvid(
input wire clk_pixel,
input wire clk_shift,
input wire [C_depth - 1:0] in_red,
input wire [C_depth - 1:0] in_green,
input wire [C_depth - 1:0] in_blue,
input wire in_blank,
input wire in_hsync,
input wire in_vsync,
output wire [9:0] outp_red,
output wire [9:0] outp_green,
output wire [9:0] outp_blue,
output wire [1:0] out_red,
output wire [1:0] out_green,
output wire [1:0] out_blue,
output wire [1:0] out_clock
);

parameter C_shift_clock_synchronizer=1'b1;
parameter C_parallel=1'b1;
parameter C_serial=1'b1;
parameter C_ddr=1'b0;
parameter [31:0] C_depth=8;
// VGA pixel clock, 25 MHz for 640x480
// SDR: 10x clk_pixel, DDR: 5x clk_pixel, in phase with clk_pixel
// parallel outputs
// serial outputs



wire [9:0] encoded_red; wire [9:0] encoded_green; wire [9:0] encoded_blue;
reg [9:0] latched_red = 1'b0; reg [9:0] latched_green = 1'b0; reg [9:0] latched_blue = 1'b0;
reg [9:0] shift_red = 1'b0; reg [9:0] shift_green = 1'b0; reg [9:0] shift_blue = 1'b0;
parameter C_shift_clock_initial = 10'b0000011111;
reg [9:0] shift_clock = C_shift_clock_initial;
reg R_shift_clock_off_sync = 1'b0;
reg [7:0] R_shift_clock_synchronizer = 1'b0;
reg [6:0] R_sync_fail;  // counts sync fails, after too many, reinitialize shift_clock
parameter c_red = 1'b0;
parameter c_green = 1'b0;
wire [1:0] c_blue;
wire [7:0] red_d;
wire [7:0] green_d;
wire [7:0] blue_d;

  assign c_blue = {in_vsync,in_hsync};
  assign red_d[7:8 - C_depth] = in_red[C_depth - 1:0];
  assign green_d[7:8 - C_depth] = in_green[C_depth - 1:0];
  assign blue_d[7:8 - C_depth] = in_blue[C_depth - 1:0];
  // fill vacant low bits with value repeated (so min/max value is always 0 or 255)
  genvar i;
  generate for (i=8 - C_depth - 1; i >= 0; i = i - 1) begin: G_bits
        //	red_d(i)   <= in_red(0);
    //	green_d(i) <= in_green(0);
    //	blue_d(i)  <= in_blue(0);
  end
  endgenerate
  generate if (C_shift_clock_synchronizer == 1'b1) begin: G_shift_clock_synchronizer
      // sampler verifies is shift_clock state synchronous with pixel_clock
    always @(posedge clk_pixel) begin
      // does 0 to 1 transition at bits 5 downto 4 happen at rising_edge of clk_pixel?
      // if shift_clock = C_shift_clock_initial then
      if(shift_clock[5:4] == C_shift_clock_initial[5:4]) begin
        // same as above line but simplified 
        R_shift_clock_off_sync <= 1'b0;
      end
      else begin
        R_shift_clock_off_sync <= 1'b1;
      end
    end

    // every N cycles of clk_shift: signal to skip 1 cycle in order to get in sync
    always @(posedge clk_shift) begin
      if(R_shift_clock_off_sync == 1'b1) begin
        if(R_shift_clock_synchronizer[(7)] == 1'b1) begin
          R_shift_clock_synchronizer <= {8{1'b0}};
        end
        else begin
          R_shift_clock_synchronizer <= R_shift_clock_synchronizer + 1;
        end
      end
      else begin
        R_shift_clock_synchronizer <= {8{1'b0}};
      end
    end

  end
  endgenerate
  // shift_clock_synchronizer
  tmds_encoder u21(
      .clk(clk_pixel),
    .data(red_d),
    .c(c_red),
    .blank(in_blank),
    .encoded(encoded_red));

  tmds_encoder u22(
      .clk(clk_pixel),
    .data(green_d),
    .c(c_green),
    .blank(in_blank),
    .encoded(encoded_green));

  tmds_encoder u23(
      .clk(clk_pixel),
    .data(blue_d),
    .c(c_blue),
    .blank(in_blank),
    .encoded(encoded_blue));

  always @(posedge clk_pixel) begin
    latched_red <= encoded_red;
    latched_green <= encoded_green;
    latched_blue <= encoded_blue;
  end

  generate if (C_parallel == 1'b1) begin: G_parallel
      assign outp_red = latched_red;
    assign outp_green = latched_green;
    assign outp_blue = latched_blue;
  end
  endgenerate
  generate if ((C_serial &  ~C_ddr) == 1'b1) begin: G_SDR
      always @(posedge clk_shift) begin
      //if shift_clock = "0000011111" then
      if(shift_clock[5:4] == C_shift_clock_initial[5:4]) begin
        // same as above line but simplified
        shift_red <= latched_red;
        shift_green <= latched_green;
        shift_blue <= latched_blue;
      end
      else begin
        shift_red <= {1'b0,shift_red[9:1]};
        shift_green <= {1'b0,shift_green[9:1]};
        shift_blue <= {1'b0,shift_blue[9:1]};
      end
      if(R_shift_clock_synchronizer[(7)] == 1'b0) begin
        shift_clock <= {shift_clock[0],shift_clock[9:1]};
      end
      else begin
        // synchronization failed.
        // after too many fails, reinitialize shift_clock
        if(R_sync_fail[(6)] == 1'b1) begin
          shift_clock <= C_shift_clock_initial;
          R_sync_fail <= {7{1'b0}};
        end
        else begin
          R_sync_fail <= R_sync_fail + 1;
        end
      end
    end

  end
  endgenerate
  generate if ((C_serial & C_ddr) == 1'b1) begin: G_DDR
      always @(posedge clk_shift) begin
      //if shift_clock = "0000011111" then
      if(shift_clock[5:4] == C_shift_clock_initial[5:4]) begin
        // same as above line but simplified
        shift_red <= latched_red;
        shift_green <= latched_green;
        shift_blue <= latched_blue;
      end
      else begin
        shift_red <= {2'b00,shift_red[9:2]};
        shift_green <= {2'b00,shift_green[9:2]};
        shift_blue <= {2'b00,shift_blue[9:2]};
      end
      if(R_shift_clock_synchronizer[(7)] == 1'b0) begin
        shift_clock <= {shift_clock[1:0],shift_clock[9:2]};
      end
      else begin
        // synchronization failed.
        // after too many fails, reinitialize shift_clock
        if(R_sync_fail[(6)] == 1'b1) begin
          shift_clock <= C_shift_clock_initial;
          R_sync_fail <= {7{1'b0}};
        end
        else begin
          R_sync_fail <= R_sync_fail + 1;
        end
      end
    end

  end
  endgenerate
  // SDR: use only bit 0 from each out_* channel 
  // DDR: 2 bits per 1 clock period,
  // (one bit output on rising edge, other on falling edge of clk_shift)
  generate if (C_serial == 1'b1) begin: G_serial
      assign out_red = shift_red[1:0];
    assign out_green = shift_green[1:0];
    assign out_blue = shift_blue[1:0];
    assign out_clock = shift_clock[1:0];
  end
  endgenerate

endmodule
// File hdl/tmds_encoder.vhd translated with vhd2vl v3.0 VHDL to Verilog RTL translator
// vhd2vl settings:
//  * Verilog Module Declaration Style: 2001

// vhd2vl is Free (libre) Software:
//   Copyright (C) 2001 Vincenzo Liguori - Ocean Logic Pty Ltd
//     http://www.ocean-logic.com
//   Modifications Copyright (C) 2006 Mark Gonzales - PMC Sierra Inc
//   Modifications (C) 2010 Shankar Giri
//   Modifications Copyright (C) 2002-2017 Larry Doolittle
//     http://doolittle.icarus.com/~larry/vhd2vl/
//   Modifications (C) 2017 Rodrigo A. Melo
//
//   vhd2vl comes with ABSOLUTELY NO WARRANTY.  Always check the resulting
//   Verilog for correctness, ideally with a formal verification tool.
//
//   You are welcome to redistribute vhd2vl under certain conditions.
//   See the license (GPLv2) file included with the source for details.

// The result of translation follows.  Its copyright status should be
// considered unchanged from the original VHDL.

//--------------------------------------------------------------------------------
// Engineer: Mike Field <hamster@snap.net.nz>
// 
// Description: TMDS Encoder 
//     8 bits colour, 2 control bits and one blanking bits in
//       10 bits of TMDS encoded data out
//     Clocked at the pixel clock
//
//--------------------------------------------------------------------------------
// See: http://hamsterworks.co.nz/mediawiki/index.php/Dvid_test
//      http://hamsterworks.co.nz/mediawiki/index.php/FPGA_Projects
//
// Copyright (c) 2012 Mike Field <hamster@snap.net.nz>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
// no timescale needed

module tmds_encoder(
input wire clk,
input wire [7:0] data,
input wire [1:0] c,
input wire blank,
output reg [9:0] encoded
);




wire [8:0] xored;
wire [8:0] xnored;
wire [3:0] ones;
reg [8:0] data_word;
reg [8:0] data_word_inv;
wire [3:0] data_word_disparity;
reg [3:0] dc_bias = 1'b0;

  // Work our the two different encodings for the byte
  assign xored[0] = data[0];
  assign xored[1] = data[1] ^ xored[0];
  assign xored[2] = data[2] ^ xored[1];
  assign xored[3] = data[3] ^ xored[2];
  assign xored[4] = data[4] ^ xored[3];
  assign xored[5] = data[5] ^ xored[4];
  assign xored[6] = data[6] ^ xored[5];
  assign xored[7] = data[7] ^ xored[6];
  assign xored[8] = 1'b1;
  assign xnored[0] = data[0];
  assign xnored[1] =  ~(data[1] ^ xnored[0]);
  assign xnored[2] =  ~(data[2] ^ xnored[1]);
  assign xnored[3] =  ~(data[3] ^ xnored[2]);
  assign xnored[4] =  ~(data[4] ^ xnored[3]);
  assign xnored[5] =  ~(data[5] ^ xnored[4]);
  assign xnored[6] =  ~(data[6] ^ xnored[5]);
  assign xnored[7] =  ~(data[7] ^ xnored[6]);
  assign xnored[8] = 1'b0;
  // Count how many ones are set in data
  assign ones = 4'b0000 + data[0] + data[1] + data[2] + data[3] + data[4] + data[5] + data[6] + data[7];
  // Decide which encoding to use
  always @(ones, data[0], xnored, xored) begin
    if(ones > 4 || (ones == 4 && data[0] == 1'b0)) begin
      data_word <= xnored;
      data_word_inv <=  ~(xnored);
    end
    else begin
      data_word <= xored;
      data_word_inv <=  ~(xored);
    end
  end

  // Work out the DC bias of the dataword;
  assign data_word_disparity = 4'b1100 + data_word[0] + data_word[1] + data_word[2] + data_word[3] + data_word[4] + data_word[5] + data_word[6] + data_word[7];
  // Now work out what the output should be
  always @(posedge clk) begin
    if(blank == 1'b1) begin
      // In the control periods, all values have and have balanced bit count
      case(c)
      2'b00 : begin
        encoded <= 10'b1101010100;
      end
      2'b01 : begin
        encoded <= 10'b0010101011;
      end
      2'b10 : begin
        encoded <= 10'b0101010100;
      end
      default : begin
        encoded <= 10'b1010101011;
      end
      endcase
      dc_bias <= {4{1'b0}};
    end
    else begin
      if(dc_bias == 5'b00000 || data_word_disparity == 0) begin
        // dataword has no disparity
        if(data_word[8] == 1'b1) begin
          encoded <= {2'b01,data_word[7:0]};
          dc_bias <= dc_bias + data_word_disparity;
        end
        else begin
          encoded <= {2'b10,data_word_inv[7:0]};
          dc_bias <= dc_bias - data_word_disparity;
        end
      end
      else if((dc_bias[3] == 1'b0 && data_word_disparity[3] == 1'b0) || (dc_bias[3] == 1'b1 && data_word_disparity[3] == 1'b1)) begin
        encoded <= {1'b1,data_word[8],data_word_inv[7:0]};
        dc_bias <= dc_bias + data_word[8] - data_word_disparity;
      end
      else begin
        encoded <= {1'b0,data_word};
        dc_bias <= dc_bias - data_word_inv[8] + data_word_disparity;
      end
    end
  end


endmodule
